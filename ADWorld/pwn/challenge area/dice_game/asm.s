
dice_game:     file format elf64-x86-64


Disassembly of section .init:

0000000000000850 <.init>:
 850:	48 83 ec 08          	sub    $0x8,%rsp
 854:	48 8b 05 5d 17 20 00 	mov    0x20175d(%rip),%rax        # 201fb8 <rand@plt+0x2016d0>
 85b:	48 85 c0             	test   %rax,%rax
 85e:	74 05                	je     865 <puts@plt-0x1b>
 860:	e8 53 00 00 00       	callq  8b8 <__gmon_start__@plt>
 865:	48 83 c4 08          	add    $0x8,%rsp
 869:	c3                   	retq   

Disassembly of section .plt:

0000000000000870 <.plt>:
 870:	ff 35 ea 16 20 00    	pushq  0x2016ea(%rip)        # 201f60 <rand@plt+0x201678>
 876:	ff 25 ec 16 20 00    	jmpq   *0x2016ec(%rip)        # 201f68 <rand@plt+0x201680>
 87c:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

0000000000000880 <puts@plt>:
 880:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201f80 <rand@plt+0x201698>
 886:	66 90                	xchg   %ax,%ax

0000000000000888 <printf@plt>:
 888:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201f88 <rand@plt+0x2016a0>
 88e:	66 90                	xchg   %ax,%ax

0000000000000890 <__assert_fail@plt>:
 890:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201f90 <rand@plt+0x2016a8>
 896:	66 90                	xchg   %ax,%ax

0000000000000898 <read@plt>:
 898:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201f98 <rand@plt+0x2016b0>
 89e:	66 90                	xchg   %ax,%ax

00000000000008a0 <__libc_start_main@plt>:
 8a0:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201fa0 <rand@plt+0x2016b8>
 8a6:	66 90                	xchg   %ax,%ax

00000000000008a8 <srand@plt>:
 8a8:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201fa8 <rand@plt+0x2016c0>
 8ae:	66 90                	xchg   %ax,%ax

00000000000008b0 <fgets@plt>:
 8b0:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201fb0 <rand@plt+0x2016c8>
 8b6:	66 90                	xchg   %ax,%ax

00000000000008b8 <__gmon_start__@plt>:
 8b8:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201fb8 <rand@plt+0x2016d0>
 8be:	66 90                	xchg   %ax,%ax

00000000000008c0 <time@plt>:
 8c0:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201fc0 <rand@plt+0x2016d8>
 8c6:	66 90                	xchg   %ax,%ax

00000000000008c8 <fflush@plt>:
 8c8:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201fc8 <rand@plt+0x2016e0>
 8ce:	66 90                	xchg   %ax,%ax

00000000000008d0 <fopen@plt>:
 8d0:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201fd0 <rand@plt+0x2016e8>
 8d6:	66 90                	xchg   %ax,%ax

00000000000008d8 <__isoc99_scanf@plt>:
 8d8:	ff 25 02 17 20 00    	jmpq   *0x201702(%rip)        # 201fe0 <rand@plt+0x2016f8>
 8de:	66 90                	xchg   %ax,%ax

00000000000008e0 <__cxa_finalize@plt>:
 8e0:	ff 25 0a 17 20 00    	jmpq   *0x20170a(%rip)        # 201ff0 <rand@plt+0x201708>
 8e6:	66 90                	xchg   %ax,%ax

00000000000008e8 <rand@plt>:
 8e8:	ff 25 0a 17 20 00    	jmpq   *0x20170a(%rip)        # 201ff8 <rand@plt+0x201710>
 8ee:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000008f0 <.text>:
 8f0:	31 ed                	xor    %ebp,%ebp
 8f2:	49 89 d1             	mov    %rdx,%r9
 8f5:	5e                   	pop    %rsi
 8f6:	48 89 e2             	mov    %rsp,%rdx
 8f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 8fd:	50                   	push   %rax
 8fe:	54                   	push   %rsp
 8ff:	4c 8d 05 3a 04 00 00 	lea    0x43a(%rip),%r8        # d40 <rand@plt+0x458>
 906:	48 8d 0d c3 03 00 00 	lea    0x3c3(%rip),%rcx        # cd0 <rand@plt+0x3e8>
 90d:	48 8d 3d 85 02 00 00 	lea    0x285(%rip),%rdi        # b99 <rand@plt+0x2b1>
 914:	e8 87 ff ff ff       	callq  8a0 <__libc_start_main@plt>
 919:	f4                   	hlt    
 91a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 920:	48 8d 3d e9 16 20 00 	lea    0x2016e9(%rip),%rdi        # 202010 <_edata@@Base>
 927:	48 8d 05 e9 16 20 00 	lea    0x2016e9(%rip),%rax        # 202017 <_edata@@Base+0x7>
 92e:	55                   	push   %rbp
 92f:	48 29 f8             	sub    %rdi,%rax
 932:	48 89 e5             	mov    %rsp,%rbp
 935:	48 83 f8 0e          	cmp    $0xe,%rax
 939:	76 15                	jbe    950 <rand@plt+0x68>
 93b:	48 8b 05 2e 16 20 00 	mov    0x20162e(%rip),%rax        # 201f70 <rand@plt+0x201688>
 942:	48 85 c0             	test   %rax,%rax
 945:	74 09                	je     950 <rand@plt+0x68>
 947:	5d                   	pop    %rbp
 948:	ff e0                	jmpq   *%rax
 94a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 950:	5d                   	pop    %rbp
 951:	c3                   	retq   
 952:	0f 1f 40 00          	nopl   0x0(%rax)
 956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 95d:	00 00 00 
 960:	48 8d 3d a9 16 20 00 	lea    0x2016a9(%rip),%rdi        # 202010 <_edata@@Base>
 967:	48 8d 35 a2 16 20 00 	lea    0x2016a2(%rip),%rsi        # 202010 <_edata@@Base>
 96e:	55                   	push   %rbp
 96f:	48 29 fe             	sub    %rdi,%rsi
 972:	48 89 e5             	mov    %rsp,%rbp
 975:	48 c1 fe 03          	sar    $0x3,%rsi
 979:	48 89 f0             	mov    %rsi,%rax
 97c:	48 c1 e8 3f          	shr    $0x3f,%rax
 980:	48 01 c6             	add    %rax,%rsi
 983:	48 d1 fe             	sar    %rsi
 986:	74 18                	je     9a0 <rand@plt+0xb8>
 988:	48 8b 05 59 16 20 00 	mov    0x201659(%rip),%rax        # 201fe8 <rand@plt+0x201700>
 98f:	48 85 c0             	test   %rax,%rax
 992:	74 0c                	je     9a0 <rand@plt+0xb8>
 994:	5d                   	pop    %rbp
 995:	ff e0                	jmpq   *%rax
 997:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 99e:	00 00 
 9a0:	5d                   	pop    %rbp
 9a1:	c3                   	retq   
 9a2:	0f 1f 40 00          	nopl   0x0(%rax)
 9a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ad:	00 00 00 
 9b0:	80 3d 59 16 20 00 00 	cmpb   $0x0,0x201659(%rip)        # 202010 <_edata@@Base>
 9b7:	75 27                	jne    9e0 <rand@plt+0xf8>
 9b9:	48 83 3d 2f 16 20 00 	cmpq   $0x0,0x20162f(%rip)        # 201ff0 <rand@plt+0x201708>
 9c0:	00 
 9c1:	55                   	push   %rbp
 9c2:	48 89 e5             	mov    %rsp,%rbp
 9c5:	74 0c                	je     9d3 <rand@plt+0xeb>
 9c7:	48 8b 3d 3a 16 20 00 	mov    0x20163a(%rip),%rdi        # 202008 <rand@plt+0x201720>
 9ce:	e8 0d ff ff ff       	callq  8e0 <__cxa_finalize@plt>
 9d3:	e8 48 ff ff ff       	callq  920 <rand@plt+0x38>
 9d8:	5d                   	pop    %rbp
 9d9:	c6 05 30 16 20 00 01 	movb   $0x1,0x201630(%rip)        # 202010 <_edata@@Base>
 9e0:	f3 c3                	repz retq 
 9e2:	0f 1f 40 00          	nopl   0x0(%rax)
 9e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9ed:	00 00 00 
 9f0:	48 8d 3d 99 13 20 00 	lea    0x201399(%rip),%rdi        # 201d90 <rand@plt+0x2014a8>
 9f7:	48 83 3f 00          	cmpq   $0x0,(%rdi)
 9fb:	75 0b                	jne    a08 <rand@plt+0x120>
 9fd:	e9 5e ff ff ff       	jmpq   960 <rand@plt+0x78>
 a02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a08:	48 8b 05 c9 15 20 00 	mov    0x2015c9(%rip),%rax        # 201fd8 <rand@plt+0x2016f0>
 a0f:	48 85 c0             	test   %rax,%rax
 a12:	74 e9                	je     9fd <rand@plt+0x115>
 a14:	55                   	push   %rbp
 a15:	48 89 e5             	mov    %rsp,%rbp
 a18:	ff d0                	callq  *%rax
 a1a:	5d                   	pop    %rbp
 a1b:	e9 40 ff ff ff       	jmpq   960 <rand@plt+0x78>
 a20:	55                   	push   %rbp
 a21:	48 89 e5             	mov    %rsp,%rbp
 a24:	48 83 ec 10          	sub    $0x10,%rsp
 a28:	48 8d 3d 29 03 00 00 	lea    0x329(%rip),%rdi        # d58 <rand@plt+0x470>
 a2f:	b8 00 00 00 00       	mov    $0x0,%eax
 a34:	e8 4f fe ff ff       	callq  888 <printf@plt>
 a39:	48 8b 05 38 15 20 00 	mov    0x201538(%rip),%rax        # 201f78 <rand@plt+0x201690>
 a40:	48 8b 00             	mov    (%rax),%rax
 a43:	48 89 c7             	mov    %rax,%rdi
 a46:	e8 7d fe ff ff       	callq  8c8 <fflush@plt>
 a4b:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
 a4f:	48 89 c6             	mov    %rax,%rsi
 a52:	48 8d 3d 18 03 00 00 	lea    0x318(%rip),%rdi        # d71 <rand@plt+0x489>
 a59:	b8 00 00 00 00       	mov    $0x0,%eax
 a5e:	e8 75 fe ff ff       	callq  8d8 <__isoc99_scanf@plt>
 a63:	0f b7 45 fc          	movzwl -0x4(%rbp),%eax
 a67:	66 85 c0             	test   %ax,%ax
 a6a:	7e 0a                	jle    a76 <rand@plt+0x18e>
 a6c:	0f b7 45 fc          	movzwl -0x4(%rbp),%eax
 a70:	66 83 f8 06          	cmp    $0x6,%ax
 a74:	7e 16                	jle    a8c <rand@plt+0x1a4>
 a76:	48 8d 3d f8 02 00 00 	lea    0x2f8(%rip),%rdi        # d75 <rand@plt+0x48d>
 a7d:	e8 fe fd ff ff       	callq  880 <puts@plt>
 a82:	b8 00 00 00 00       	mov    $0x0,%eax
 a87:	e9 9a 00 00 00       	jmpq   b26 <rand@plt+0x23e>
 a8c:	e8 57 fe ff ff       	callq  8e8 <rand@plt>
 a91:	89 c1                	mov    %eax,%ecx
 a93:	ba ab aa aa 2a       	mov    $0x2aaaaaab,%edx
 a98:	89 c8                	mov    %ecx,%eax
 a9a:	f7 ea                	imul   %edx
 a9c:	89 c8                	mov    %ecx,%eax
 a9e:	c1 f8 1f             	sar    $0x1f,%eax
 aa1:	29 c2                	sub    %eax,%edx
 aa3:	89 d0                	mov    %edx,%eax
 aa5:	01 c0                	add    %eax,%eax
 aa7:	01 d0                	add    %edx,%eax
 aa9:	01 c0                	add    %eax,%eax
 aab:	29 c1                	sub    %eax,%ecx
 aad:	89 ca                	mov    %ecx,%edx
 aaf:	89 d0                	mov    %edx,%eax
 ab1:	83 c0 01             	add    $0x1,%eax
 ab4:	66 89 45 fe          	mov    %ax,-0x2(%rbp)
 ab8:	0f b7 45 fc          	movzwl -0x4(%rbp),%eax
 abc:	66 85 c0             	test   %ax,%ax
 abf:	7e 18                	jle    ad9 <rand@plt+0x1f1>
 ac1:	0f b7 45 fc          	movzwl -0x4(%rbp),%eax
 ac5:	66 83 f8 06          	cmp    $0x6,%ax
 ac9:	7f 0e                	jg     ad9 <rand@plt+0x1f1>
 acb:	66 83 7d fe 00       	cmpw   $0x0,-0x2(%rbp)
 ad0:	7e 07                	jle    ad9 <rand@plt+0x1f1>
 ad2:	66 83 7d fe 06       	cmpw   $0x6,-0x2(%rbp)
 ad7:	7e 1f                	jle    af8 <rand@plt+0x210>
 ad9:	48 8d 0d 68 03 00 00 	lea    0x368(%rip),%rcx        # e48 <rand@plt+0x560>
 ae0:	ba 18 00 00 00       	mov    $0x18,%edx
 ae5:	48 8d 35 98 02 00 00 	lea    0x298(%rip),%rsi        # d84 <rand@plt+0x49c>
 aec:	48 8d 3d 9d 02 00 00 	lea    0x29d(%rip),%rdi        # d90 <rand@plt+0x4a8>
 af3:	e8 98 fd ff ff       	callq  890 <__assert_fail@plt>
 af8:	0f b7 45 fc          	movzwl -0x4(%rbp),%eax
 afc:	66 3b 45 fe          	cmp    -0x2(%rbp),%ax
 b00:	75 13                	jne    b15 <rand@plt+0x22d>
 b02:	48 8d 3d ba 02 00 00 	lea    0x2ba(%rip),%rdi        # dc3 <rand@plt+0x4db>
 b09:	e8 72 fd ff ff       	callq  880 <puts@plt>
 b0e:	b8 01 00 00 00       	mov    $0x1,%eax
 b13:	eb 11                	jmp    b26 <rand@plt+0x23e>
 b15:	48 8d 3d b0 02 00 00 	lea    0x2b0(%rip),%rdi        # dcc <rand@plt+0x4e4>
 b1c:	e8 5f fd ff ff       	callq  880 <puts@plt>
 b21:	b8 00 00 00 00       	mov    $0x0,%eax
 b26:	c9                   	leaveq 
 b27:	c3                   	retq   
 b28:	55                   	push   %rbp
 b29:	48 89 e5             	mov    %rsp,%rbp
 b2c:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
 b30:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
 b34:	48 8b 45 88          	mov    -0x78(%rbp),%rax
 b38:	48 89 c6             	mov    %rax,%rsi
 b3b:	48 8d 3d 94 02 00 00 	lea    0x294(%rip),%rdi        # dd6 <rand@plt+0x4ee>
 b42:	b8 00 00 00 00       	mov    $0x0,%eax
 b47:	e8 3c fd ff ff       	callq  888 <printf@plt>
 b4c:	48 8d 35 90 02 00 00 	lea    0x290(%rip),%rsi        # de3 <rand@plt+0x4fb>
 b53:	48 8d 3d 8b 02 00 00 	lea    0x28b(%rip),%rdi        # de5 <rand@plt+0x4fd>
 b5a:	e8 71 fd ff ff       	callq  8d0 <fopen@plt>
 b5f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 b63:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 b67:	48 8d 45 90          	lea    -0x70(%rbp),%rax
 b6b:	be 64 00 00 00       	mov    $0x64,%esi
 b70:	48 89 c7             	mov    %rax,%rdi
 b73:	e8 38 fd ff ff       	callq  8b0 <fgets@plt>
 b78:	48 8d 45 90          	lea    -0x70(%rbp),%rax
 b7c:	48 89 c7             	mov    %rax,%rdi
 b7f:	e8 fc fc ff ff       	callq  880 <puts@plt>
 b84:	48 8b 05 ed 13 20 00 	mov    0x2013ed(%rip),%rax        # 201f78 <rand@plt+0x201690>
 b8b:	48 8b 00             	mov    (%rax),%rax
 b8e:	48 89 c7             	mov    %rax,%rdi
 b91:	e8 32 fd ff ff       	callq  8c8 <fflush@plt>
 b96:	90                   	nop
 b97:	c9                   	leaveq 
 b98:	c3                   	retq   
 b99:	55                   	push   %rbp
 b9a:	48 89 e5             	mov    %rsp,%rbp
 b9d:	48 83 ec 50          	sub    $0x50,%rsp
 ba1:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
 ba5:	b8 00 00 00 00       	mov    $0x0,%eax
 baa:	b9 06 00 00 00       	mov    $0x6,%ecx
 baf:	48 89 d7             	mov    %rdx,%rdi
 bb2:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 bb5:	bf 00 00 00 00       	mov    $0x0,%edi
 bba:	e8 01 fd ff ff       	callq  8c0 <time@plt>
 bbf:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 bc3:	48 8d 3d 26 02 00 00 	lea    0x226(%rip),%rdi        # df0 <rand@plt+0x508>
 bca:	b8 00 00 00 00       	mov    $0x0,%eax
 bcf:	e8 b4 fc ff ff       	callq  888 <printf@plt>
 bd4:	48 8b 05 9d 13 20 00 	mov    0x20139d(%rip),%rax        # 201f78 <rand@plt+0x201690>
 bdb:	48 8b 00             	mov    (%rax),%rax
 bde:	48 89 c7             	mov    %rax,%rdi
 be1:	e8 e2 fc ff ff       	callq  8c8 <fflush@plt>
 be6:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 bea:	ba 50 00 00 00       	mov    $0x50,%edx
 bef:	48 89 c6             	mov    %rax,%rsi
 bf2:	bf 00 00 00 00       	mov    $0x0,%edi
 bf7:	e8 9c fc ff ff       	callq  898 <read@plt>
 bfc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 c00:	48 83 7d e8 31       	cmpq   $0x31,-0x18(%rbp)
 c05:	7f 0d                	jg     c14 <rand@plt+0x32c>
 c07:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 c0b:	48 83 e8 01          	sub    $0x1,%rax
 c0f:	c6 44 05 b0 00       	movb   $0x0,-0x50(%rbp,%rax,1)
 c14:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 c18:	48 89 c6             	mov    %rax,%rsi
 c1b:	48 8d 3d ef 01 00 00 	lea    0x1ef(%rip),%rdi        # e11 <rand@plt+0x529>
 c22:	b8 00 00 00 00       	mov    $0x0,%eax
 c27:	e8 5c fc ff ff       	callq  888 <printf@plt>
 c2c:	48 8b 05 45 13 20 00 	mov    0x201345(%rip),%rax        # 201f78 <rand@plt+0x201690>
 c33:	48 8b 00             	mov    (%rax),%rax
 c36:	48 89 c7             	mov    %rax,%rdi
 c39:	e8 8a fc ff ff       	callq  8c8 <fflush@plt>
 c3e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 c42:	89 c7                	mov    %eax,%edi
 c44:	e8 5f fc ff ff       	callq  8a8 <srand@plt>
 c49:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
 c50:	c6 45 e7 00          	movb   $0x0,-0x19(%rbp)
 c54:	8b 45 fc             	mov    -0x4(%rbp),%eax
 c57:	89 c6                	mov    %eax,%esi
 c59:	48 8d 3d cd 01 00 00 	lea    0x1cd(%rip),%rdi        # e2d <rand@plt+0x545>
 c60:	b8 00 00 00 00       	mov    $0x0,%eax
 c65:	e8 1e fc ff ff       	callq  888 <printf@plt>
 c6a:	b8 00 00 00 00       	mov    $0x0,%eax
 c6f:	e8 ac fd ff ff       	callq  a20 <rand@plt+0x138>
 c74:	88 45 e7             	mov    %al,-0x19(%rbp)
 c77:	48 8b 05 fa 12 20 00 	mov    0x2012fa(%rip),%rax        # 201f78 <rand@plt+0x201690>
 c7e:	48 8b 00             	mov    (%rax),%rax
 c81:	48 89 c7             	mov    %rax,%rdi
 c84:	e8 3f fc ff ff       	callq  8c8 <fflush@plt>
 c89:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
 c8d:	83 f0 01             	xor    $0x1,%eax
 c90:	84 c0                	test   %al,%al
 c92:	75 20                	jne    cb4 <rand@plt+0x3cc>
 c94:	80 7d e7 00          	cmpb   $0x0,-0x19(%rbp)
 c98:	74 ba                	je     c54 <rand@plt+0x36c>
 c9a:	83 7d fc 32          	cmpl   $0x32,-0x4(%rbp)
 c9e:	75 0e                	jne    cae <rand@plt+0x3c6>
 ca0:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 ca4:	48 89 c7             	mov    %rax,%rdi
 ca7:	e8 7c fe ff ff       	callq  b28 <rand@plt+0x240>
 cac:	eb 07                	jmp    cb5 <rand@plt+0x3cd>
 cae:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 cb2:	eb a0                	jmp    c54 <rand@plt+0x36c>
 cb4:	90                   	nop
 cb5:	48 8d 3d 7d 01 00 00 	lea    0x17d(%rip),%rdi        # e39 <rand@plt+0x551>
 cbc:	e8 bf fb ff ff       	callq  880 <puts@plt>
 cc1:	b8 00 00 00 00       	mov    $0x0,%eax
 cc6:	c9                   	leaveq 
 cc7:	c3                   	retq   
 cc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 ccf:	00 
 cd0:	41 57                	push   %r15
 cd2:	41 56                	push   %r14
 cd4:	41 89 ff             	mov    %edi,%r15d
 cd7:	41 55                	push   %r13
 cd9:	41 54                	push   %r12
 cdb:	4c 8d 25 9e 10 20 00 	lea    0x20109e(%rip),%r12        # 201d80 <rand@plt+0x201498>
 ce2:	55                   	push   %rbp
 ce3:	48 8d 2d 9e 10 20 00 	lea    0x20109e(%rip),%rbp        # 201d88 <rand@plt+0x2014a0>
 cea:	53                   	push   %rbx
 ceb:	49 89 f6             	mov    %rsi,%r14
 cee:	49 89 d5             	mov    %rdx,%r13
 cf1:	4c 29 e5             	sub    %r12,%rbp
 cf4:	48 83 ec 08          	sub    $0x8,%rsp
 cf8:	48 c1 fd 03          	sar    $0x3,%rbp
 cfc:	e8 4f fb ff ff       	callq  850 <puts@plt-0x30>
 d01:	48 85 ed             	test   %rbp,%rbp
 d04:	74 20                	je     d26 <rand@plt+0x43e>
 d06:	31 db                	xor    %ebx,%ebx
 d08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 d0f:	00 
 d10:	4c 89 ea             	mov    %r13,%rdx
 d13:	4c 89 f6             	mov    %r14,%rsi
 d16:	44 89 ff             	mov    %r15d,%edi
 d19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 d1d:	48 83 c3 01          	add    $0x1,%rbx
 d21:	48 39 eb             	cmp    %rbp,%rbx
 d24:	75 ea                	jne    d10 <rand@plt+0x428>
 d26:	48 83 c4 08          	add    $0x8,%rsp
 d2a:	5b                   	pop    %rbx
 d2b:	5d                   	pop    %rbp
 d2c:	41 5c                	pop    %r12
 d2e:	41 5d                	pop    %r13
 d30:	41 5e                	pop    %r14
 d32:	41 5f                	pop    %r15
 d34:	c3                   	retq   
 d35:	90                   	nop
 d36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 d3d:	00 00 00 
 d40:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000d44 <.fini>:
 d44:	48 83 ec 08          	sub    $0x8,%rsp
 d48:	48 83 c4 08          	add    $0x8,%rsp
 d4c:	c3                   	retq   
