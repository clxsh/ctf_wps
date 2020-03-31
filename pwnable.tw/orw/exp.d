
exp.o:     file format elf32-i386


Disassembly of section .text:

00000000 <.text>:
   0:	b8 05 00 00 00       	mov    $0x5,%eax
   5:	bb ef be ad de       	mov    $0xdeadbeef,%ebx
   a:	b9 00 00 00 00       	mov    $0x0,%ecx
   f:	ba 00 00 00 00       	mov    $0x0,%edx
  14:	cd 80                	int    $0x80
  16:	89 c3                	mov    %eax,%ebx
  18:	b8 03 00 00 00       	mov    $0x3,%eax
  1d:	b9 ef be ad de       	mov    $0xdeadbeef,%ecx
  22:	ba 20 00 00 00       	mov    $0x20,%edx
  27:	cd 80                	int    $0x80
  29:	b8 04 00 00 00       	mov    $0x4,%eax
  2e:	bb 01 00 00 00       	mov    $0x1,%ebx
  33:	b9 ef be ad de       	mov    $0xdeadbeef,%ecx
  38:	ba 20 00 00 00       	mov    $0x20,%edx
  3d:	cd 80                	int    $0x80
