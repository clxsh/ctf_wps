
guess_number:     file format elf64-x86-64


Disassembly of section .init:

0000000000000960 <.init>:
 960:	48 83 ec 08          	sub    $0x8,%rsp
 964:	48 8b 05 75 16 20 00 	mov    0x201675(%rip),%rax        # 201fe0 <__cxa_finalize@plt+0x201568>
 96b:	48 85 c0             	test   %rax,%rax
 96e:	74 05                	je     975 <puts@plt-0x1b>
 970:	e8 fb 00 00 00       	callq  a70 <__gmon_start__@plt>
 975:	48 83 c4 08          	add    $0x8,%rsp
 979:	c3                   	retq   

Disassembly of section .plt:

0000000000000980 <puts@plt-0x10>:
 980:	ff 35 82 16 20 00    	pushq  0x201682(%rip)        # 202008 <__cxa_finalize@plt+0x201590>
 986:	ff 25 84 16 20 00    	jmpq   *0x201684(%rip)        # 202010 <__cxa_finalize@plt+0x201598>
 98c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000990 <puts@plt>:
 990:	ff 25 82 16 20 00    	jmpq   *0x201682(%rip)        # 202018 <__cxa_finalize@plt+0x2015a0>
 996:	68 00 00 00 00       	pushq  $0x0
 99b:	e9 e0 ff ff ff       	jmpq   980 <puts@plt-0x10>

00000000000009a0 <__stack_chk_fail@plt>:
 9a0:	ff 25 7a 16 20 00    	jmpq   *0x20167a(%rip)        # 202020 <__cxa_finalize@plt+0x2015a8>
 9a6:	68 01 00 00 00       	pushq  $0x1
 9ab:	e9 d0 ff ff ff       	jmpq   980 <puts@plt-0x10>

00000000000009b0 <setbuf@plt>:
 9b0:	ff 25 72 16 20 00    	jmpq   *0x201672(%rip)        # 202028 <__cxa_finalize@plt+0x2015b0>
 9b6:	68 02 00 00 00       	pushq  $0x2
 9bb:	e9 c0 ff ff ff       	jmpq   980 <puts@plt-0x10>

00000000000009c0 <system@plt>:
 9c0:	ff 25 6a 16 20 00    	jmpq   *0x20166a(%rip)        # 202030 <__cxa_finalize@plt+0x2015b8>
 9c6:	68 03 00 00 00       	pushq  $0x3
 9cb:	e9 b0 ff ff ff       	jmpq   980 <puts@plt-0x10>

00000000000009d0 <printf@plt>:
 9d0:	ff 25 62 16 20 00    	jmpq   *0x201662(%rip)        # 202038 <__cxa_finalize@plt+0x2015c0>
 9d6:	68 04 00 00 00       	pushq  $0x4
 9db:	e9 a0 ff ff ff       	jmpq   980 <puts@plt-0x10>

00000000000009e0 <close@plt>:
 9e0:	ff 25 5a 16 20 00    	jmpq   *0x20165a(%rip)        # 202040 <__cxa_finalize@plt+0x2015c8>
 9e6:	68 05 00 00 00       	pushq  $0x5
 9eb:	e9 90 ff ff ff       	jmpq   980 <puts@plt-0x10>

00000000000009f0 <read@plt>:
 9f0:	ff 25 52 16 20 00    	jmpq   *0x201652(%rip)        # 202048 <__cxa_finalize@plt+0x2015d0>
 9f6:	68 06 00 00 00       	pushq  $0x6
 9fb:	e9 80 ff ff ff       	jmpq   980 <puts@plt-0x10>

0000000000000a00 <__libc_start_main@plt>:
 a00:	ff 25 4a 16 20 00    	jmpq   *0x20164a(%rip)        # 202050 <__cxa_finalize@plt+0x2015d8>
 a06:	68 07 00 00 00       	pushq  $0x7
 a0b:	e9 70 ff ff ff       	jmpq   980 <puts@plt-0x10>

0000000000000a10 <srand@plt>:
 a10:	ff 25 42 16 20 00    	jmpq   *0x201642(%rip)        # 202058 <__cxa_finalize@plt+0x2015e0>
 a16:	68 08 00 00 00       	pushq  $0x8
 a1b:	e9 60 ff ff ff       	jmpq   980 <puts@plt-0x10>

0000000000000a20 <gets@plt>:
 a20:	ff 25 3a 16 20 00    	jmpq   *0x20163a(%rip)        # 202060 <__cxa_finalize@plt+0x2015e8>
 a26:	68 09 00 00 00       	pushq  $0x9
 a2b:	e9 50 ff ff ff       	jmpq   980 <puts@plt-0x10>

0000000000000a30 <open@plt>:
 a30:	ff 25 32 16 20 00    	jmpq   *0x201632(%rip)        # 202068 <__cxa_finalize@plt+0x2015f0>
 a36:	68 0a 00 00 00       	pushq  $0xa
 a3b:	e9 40 ff ff ff       	jmpq   980 <puts@plt-0x10>

0000000000000a40 <__isoc99_scanf@plt>:
 a40:	ff 25 2a 16 20 00    	jmpq   *0x20162a(%rip)        # 202070 <__cxa_finalize@plt+0x2015f8>
 a46:	68 0b 00 00 00       	pushq  $0xb
 a4b:	e9 30 ff ff ff       	jmpq   980 <puts@plt-0x10>

0000000000000a50 <exit@plt>:
 a50:	ff 25 22 16 20 00    	jmpq   *0x201622(%rip)        # 202078 <__cxa_finalize@plt+0x201600>
 a56:	68 0c 00 00 00       	pushq  $0xc
 a5b:	e9 20 ff ff ff       	jmpq   980 <puts@plt-0x10>

0000000000000a60 <rand@plt>:
 a60:	ff 25 1a 16 20 00    	jmpq   *0x20161a(%rip)        # 202080 <__cxa_finalize@plt+0x201608>
 a66:	68 0d 00 00 00       	pushq  $0xd
 a6b:	e9 10 ff ff ff       	jmpq   980 <puts@plt-0x10>

Disassembly of section .plt.got:

0000000000000a70 <__gmon_start__@plt>:
 a70:	ff 25 6a 15 20 00    	jmpq   *0x20156a(%rip)        # 201fe0 <__cxa_finalize@plt+0x201568>
 a76:	66 90                	xchg   %ax,%ax

0000000000000a78 <__cxa_finalize@plt>:
 a78:	ff 25 7a 15 20 00    	jmpq   *0x20157a(%rip)        # 201ff8 <__cxa_finalize@plt+0x201580>
 a7e:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000a80 <.text>:
 a80:	31 ed                	xor    %ebp,%ebp
 a82:	49 89 d1             	mov    %rdx,%r9
 a85:	5e                   	pop    %rsi
 a86:	48 89 e2             	mov    %rsp,%rdx
 a89:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 a8d:	50                   	push   %rax
 a8e:	54                   	push   %rsp
 a8f:	4c 8d 05 fa 03 00 00 	lea    0x3fa(%rip),%r8        # e90 <__cxa_finalize@plt+0x418>
 a96:	48 8d 0d 83 03 00 00 	lea    0x383(%rip),%rcx        # e20 <__cxa_finalize@plt+0x3a8>
 a9d:	48 8d 3d c2 01 00 00 	lea    0x1c2(%rip),%rdi        # c66 <__cxa_finalize@plt+0x1ee>
 aa4:	e8 57 ff ff ff       	callq  a00 <__libc_start_main@plt>
 aa9:	f4                   	hlt    
 aaa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ab0:	48 8d 3d e1 15 20 00 	lea    0x2015e1(%rip),%rdi        # 202098 <_edata@@Base>
 ab7:	48 8d 05 e1 15 20 00 	lea    0x2015e1(%rip),%rax        # 20209f <_edata@@Base+0x7>
 abe:	55                   	push   %rbp
 abf:	48 29 f8             	sub    %rdi,%rax
 ac2:	48 89 e5             	mov    %rsp,%rbp
 ac5:	48 83 f8 0e          	cmp    $0xe,%rax
 ac9:	76 15                	jbe    ae0 <__cxa_finalize@plt+0x68>
 acb:	48 8b 05 06 15 20 00 	mov    0x201506(%rip),%rax        # 201fd8 <__cxa_finalize@plt+0x201560>
 ad2:	48 85 c0             	test   %rax,%rax
 ad5:	74 09                	je     ae0 <__cxa_finalize@plt+0x68>
 ad7:	5d                   	pop    %rbp
 ad8:	ff e0                	jmpq   *%rax
 ada:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 ae0:	5d                   	pop    %rbp
 ae1:	c3                   	retq   
 ae2:	0f 1f 40 00          	nopl   0x0(%rax)
 ae6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 aed:	00 00 00 
 af0:	48 8d 3d a1 15 20 00 	lea    0x2015a1(%rip),%rdi        # 202098 <_edata@@Base>
 af7:	48 8d 35 9a 15 20 00 	lea    0x20159a(%rip),%rsi        # 202098 <_edata@@Base>
 afe:	55                   	push   %rbp
 aff:	48 29 fe             	sub    %rdi,%rsi
 b02:	48 89 e5             	mov    %rsp,%rbp
 b05:	48 c1 fe 03          	sar    $0x3,%rsi
 b09:	48 89 f0             	mov    %rsi,%rax
 b0c:	48 c1 e8 3f          	shr    $0x3f,%rax
 b10:	48 01 c6             	add    %rax,%rsi
 b13:	48 d1 fe             	sar    %rsi
 b16:	74 18                	je     b30 <__cxa_finalize@plt+0xb8>
 b18:	48 8b 05 d1 14 20 00 	mov    0x2014d1(%rip),%rax        # 201ff0 <__cxa_finalize@plt+0x201578>
 b1f:	48 85 c0             	test   %rax,%rax
 b22:	74 0c                	je     b30 <__cxa_finalize@plt+0xb8>
 b24:	5d                   	pop    %rbp
 b25:	ff e0                	jmpq   *%rax
 b27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 b2e:	00 00 
 b30:	5d                   	pop    %rbp
 b31:	c3                   	retq   
 b32:	0f 1f 40 00          	nopl   0x0(%rax)
 b36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b3d:	00 00 00 
 b40:	80 3d 81 15 20 00 00 	cmpb   $0x0,0x201581(%rip)        # 2020c8 <stderr@@GLIBC_2.2.5+0x8>
 b47:	75 27                	jne    b70 <__cxa_finalize@plt+0xf8>
 b49:	48 83 3d a7 14 20 00 	cmpq   $0x0,0x2014a7(%rip)        # 201ff8 <__cxa_finalize@plt+0x201580>
 b50:	00 
 b51:	55                   	push   %rbp
 b52:	48 89 e5             	mov    %rsp,%rbp
 b55:	74 0c                	je     b63 <__cxa_finalize@plt+0xeb>
 b57:	48 8b 3d 32 15 20 00 	mov    0x201532(%rip),%rdi        # 202090 <__cxa_finalize@plt+0x201618>
 b5e:	e8 15 ff ff ff       	callq  a78 <__cxa_finalize@plt>
 b63:	e8 48 ff ff ff       	callq  ab0 <__cxa_finalize@plt+0x38>
 b68:	5d                   	pop    %rbp
 b69:	c6 05 58 15 20 00 01 	movb   $0x1,0x201558(%rip)        # 2020c8 <stderr@@GLIBC_2.2.5+0x8>
 b70:	f3 c3                	repz retq 
 b72:	0f 1f 40 00          	nopl   0x0(%rax)
 b76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b7d:	00 00 00 
 b80:	48 8d 3d 69 12 20 00 	lea    0x201269(%rip),%rdi        # 201df0 <__cxa_finalize@plt+0x201378>
 b87:	48 83 3f 00          	cmpq   $0x0,(%rdi)
 b8b:	75 0b                	jne    b98 <__cxa_finalize@plt+0x120>
 b8d:	e9 5e ff ff ff       	jmpq   af0 <__cxa_finalize@plt+0x78>
 b92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 b98:	48 8b 05 49 14 20 00 	mov    0x201449(%rip),%rax        # 201fe8 <__cxa_finalize@plt+0x201570>
 b9f:	48 85 c0             	test   %rax,%rax
 ba2:	74 e9                	je     b8d <__cxa_finalize@plt+0x115>
 ba4:	55                   	push   %rbp
 ba5:	48 89 e5             	mov    %rsp,%rbp
 ba8:	ff d0                	callq  *%rax
 baa:	5d                   	pop    %rbp
 bab:	e9 40 ff ff ff       	jmpq   af0 <__cxa_finalize@plt+0x78>
 bb0:	55                   	push   %rbp
 bb1:	48 89 e5             	mov    %rsp,%rbp
 bb4:	48 83 ec 20          	sub    $0x20,%rsp
 bb8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 bbf:	00 00 
 bc1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 bc5:	31 c0                	xor    %eax,%eax
 bc7:	be 00 00 00 00       	mov    $0x0,%esi
 bcc:	48 8d 3d d5 02 00 00 	lea    0x2d5(%rip),%rdi        # ea8 <__cxa_finalize@plt+0x430>
 bd3:	b8 00 00 00 00       	mov    $0x0,%eax
 bd8:	e8 53 fe ff ff       	callq  a30 <open@plt>
 bdd:	89 45 ec             	mov    %eax,-0x14(%rbp)
 be0:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
 be4:	78 1f                	js     c05 <__cxa_finalize@plt+0x18d>
 be6:	48 8d 4d f0          	lea    -0x10(%rbp),%rcx
 bea:	8b 45 ec             	mov    -0x14(%rbp),%eax
 bed:	ba 08 00 00 00       	mov    $0x8,%edx
 bf2:	48 89 ce             	mov    %rcx,%rsi
 bf5:	89 c7                	mov    %eax,%edi
 bf7:	b8 00 00 00 00       	mov    $0x0,%eax
 bfc:	e8 ef fd ff ff       	callq  9f0 <read@plt>
 c01:	85 c0                	test   %eax,%eax
 c03:	79 0a                	jns    c0f <__cxa_finalize@plt+0x197>
 c05:	bf 01 00 00 00       	mov    $0x1,%edi
 c0a:	e8 41 fe ff ff       	callq  a50 <exit@plt>
 c0f:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
 c13:	7e 0f                	jle    c24 <__cxa_finalize@plt+0x1ac>
 c15:	8b 45 ec             	mov    -0x14(%rbp),%eax
 c18:	89 c7                	mov    %eax,%edi
 c1a:	b8 00 00 00 00       	mov    $0x0,%eax
 c1f:	e8 bc fd ff ff       	callq  9e0 <close@plt>
 c24:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 c28:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 c2c:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
 c33:	00 00 
 c35:	74 05                	je     c3c <__cxa_finalize@plt+0x1c4>
 c37:	e8 64 fd ff ff       	callq  9a0 <__stack_chk_fail@plt>
 c3c:	c9                   	leaveq 
 c3d:	c3                   	retq   
 c3e:	55                   	push   %rbp
 c3f:	48 89 e5             	mov    %rsp,%rbp
 c42:	48 8d 3d 6f 02 00 00 	lea    0x26f(%rip),%rdi        # eb8 <__cxa_finalize@plt+0x440>
 c49:	b8 00 00 00 00       	mov    $0x0,%eax
 c4e:	e8 7d fd ff ff       	callq  9d0 <printf@plt>
 c53:	48 8d 3d 84 02 00 00 	lea    0x284(%rip),%rdi        # ede <__cxa_finalize@plt+0x466>
 c5a:	e8 61 fd ff ff       	callq  9c0 <system@plt>
 c5f:	b8 00 00 00 00       	mov    $0x0,%eax
 c64:	5d                   	pop    %rbp
 c65:	c3                   	retq   


 // main
 c66:	55                   	push   %rbp
 c67:	48 89 e5             	mov    %rsp,%rbp
 c6a:	48 83 ec 40          	sub    $0x40,%rsp
 c6e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 c75:	00 00 
 c77:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 c7b:	31 c0                	xor    %eax,%eax
 c7d:	48 8b 05 2c 14 20 00 	mov    0x20142c(%rip),%rax        # 2020b0 <stdin@@GLIBC_2.2.5>
 c84:	be 00 00 00 00       	mov    $0x0,%esi
 c89:	48 89 c7             	mov    %rax,%rdi
 c8c:	e8 1f fd ff ff       	callq  9b0 <setbuf@plt>
 c91:	48 8b 05 08 14 20 00 	mov    0x201408(%rip),%rax        # 2020a0 <stdout@@GLIBC_2.2.5>
 c98:	be 00 00 00 00       	mov    $0x0,%esi
 c9d:	48 89 c7             	mov    %rax,%rdi
 ca0:	e8 0b fd ff ff       	callq  9b0 <setbuf@plt>
 ca5:	48 8b 05 14 14 20 00 	mov    0x201414(%rip),%rax        # 2020c0 <stderr@@GLIBC_2.2.5>
 cac:	be 00 00 00 00       	mov    $0x0,%esi
 cb1:	48 89 c7             	mov    %rax,%rdi
 cb4:	e8 f7 fc ff ff       	callq  9b0 <setbuf@plt>
 cb9:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
 cc0:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
 cc7:	b8 00 00 00 00       	mov    $0x0,%eax
 ccc:	e8 df fe ff ff       	callq  bb0 <__cxa_finalize@plt+0x138>   
 cd1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)             // seed
 cd5:	48 8d 3d 0c 02 00 00 	lea    0x20c(%rip),%rdi        # ee8 <__cxa_finalize@plt+0x470>
 cdc:	e8 af fc ff ff       	callq  990 <puts@plt>
 ce1:	48 8d 3d 20 02 00 00 	lea    0x220(%rip),%rdi        # f08 <__cxa_finalize@plt+0x490>
 ce8:	e8 a3 fc ff ff       	callq  990 <puts@plt>
 ced:	48 8d 3d f4 01 00 00 	lea    0x1f4(%rip),%rdi        # ee8 <__cxa_finalize@plt+0x470>
 cf4:	e8 97 fc ff ff       	callq  990 <puts@plt>
 cf9:	48 8d 3d 28 02 00 00 	lea    0x228(%rip),%rdi        # f28 <__cxa_finalize@plt+0x4b0>
 d00:	e8 8b fc ff ff       	callq  990 <puts@plt>
 d05:	48 8d 3d 3a 02 00 00 	lea    0x23a(%rip),%rdi        # f46 <__cxa_finalize@plt+0x4ce>
 d0c:	b8 00 00 00 00       	mov    $0x0,%eax
 d11:	e8 ba fc ff ff       	callq  9d0 <printf@plt>
 d16:	48 8d 45 d0          	lea    -0x30(%rbp),%rax     // &v7
 d1a:	48 89 c7             	mov    %rax,%rdi
 d1d:	b8 00 00 00 00       	mov    $0x0,%eax
 d22:	e8 f9 fc ff ff       	callq  a20 <gets@plt>
 d27:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 d2b:	89 c7                	mov    %eax,%edi
 d2d:	e8 de fc ff ff       	callq  a10 <srand@plt>
 d32:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
 d39:	e9 a7 00 00 00       	jmpq   de5 <__cxa_finalize@plt+0x36d>
 d3e:	e8 1d fd ff ff       	callq  a60 <rand@plt>
 d43:	89 c1                	mov    %eax,%ecx
 d45:	ba ab aa aa 2a       	mov    $0x2aaaaaab,%edx
 d4a:	89 c8                	mov    %ecx,%eax
 d4c:	f7 ea                	imul   %edx
 d4e:	89 c8                	mov    %ecx,%eax
 d50:	c1 f8 1f             	sar    $0x1f,%eax
 d53:	29 c2                	sub    %eax,%edx
 d55:	89 d0                	mov    %edx,%eax
 d57:	01 c0                	add    %eax,%eax
 d59:	01 d0                	add    %edx,%eax
 d5b:	01 c0                	add    %eax,%eax
 d5d:	29 c1                	sub    %eax,%ecx
 d5f:	89 ca                	mov    %ecx,%edx
 d61:	8d 42 01             	lea    0x1(%rdx),%eax
 d64:	89 45 cc             	mov    %eax,-0x34(%rbp)
 d67:	8b 45 c8             	mov    -0x38(%rbp),%eax
 d6a:	83 c0 01             	add    $0x1,%eax
 d6d:	89 c6                	mov    %eax,%esi
 d6f:	48 8d 3d e2 01 00 00 	lea    0x1e2(%rip),%rdi        # f58 <__cxa_finalize@plt+0x4e0>
 d76:	b8 00 00 00 00       	mov    $0x0,%eax
 d7b:	e8 50 fc ff ff       	callq  9d0 <printf@plt>
 d80:	48 8d 3d f9 01 00 00 	lea    0x1f9(%rip),%rdi        # f80 <__cxa_finalize@plt+0x508>
 d87:	b8 00 00 00 00       	mov    $0x0,%eax
 d8c:	e8 3f fc ff ff       	callq  9d0 <printf@plt>
 d91:	48 8d 45 c4          	lea    -0x3c(%rbp),%rax
 d95:	48 89 c6             	mov    %rax,%rsi
 d98:	48 8d 3d 01 02 00 00 	lea    0x201(%rip),%rdi        # fa0 <__cxa_finalize@plt+0x528>
 d9f:	b8 00 00 00 00       	mov    $0x0,%eax
 da4:	e8 97 fc ff ff       	callq  a40 <__isoc99_scanf@plt>
 da9:	48 8d 3d f8 01 00 00 	lea    0x1f8(%rip),%rdi        # fa8 <__cxa_finalize@plt+0x530>
 db0:	e8 db fb ff ff       	callq  990 <puts@plt>
 db5:	8b 45 c4             	mov    -0x3c(%rbp),%eax
 db8:	3b 45 cc             	cmp    -0x34(%rbp),%eax
 dbb:	75 0e                	jne    dcb <__cxa_finalize@plt+0x353>
 dbd:	48 8d 3d 06 02 00 00 	lea    0x206(%rip),%rdi        # fca <__cxa_finalize@plt+0x552>
 dc4:	e8 c7 fb ff ff       	callq  990 <puts@plt>
 dc9:	eb 16                	jmp    de1 <__cxa_finalize@plt+0x369>
 dcb:	48 8d 3d 01 02 00 00 	lea    0x201(%rip),%rdi        # fd3 <__cxa_finalize@plt+0x55b>
 dd2:	e8 b9 fb ff ff       	callq  990 <puts@plt>
 dd7:	bf 01 00 00 00       	mov    $0x1,%edi
 ddc:	e8 6f fc ff ff       	callq  a50 <exit@plt>
 de1:	83 45 c8 01          	addl   $0x1,-0x38(%rbp)
 de5:	83 7d c8 09          	cmpl   $0x9,-0x38(%rbp)
 de9:	0f 8e 4f ff ff ff    	jle    d3e <__cxa_finalize@plt+0x2c6>
 def:	b8 00 00 00 00       	mov    $0x0,%eax
 df4:	e8 45 fe ff ff       	callq  c3e <__cxa_finalize@plt+0x1c6>
 df9:	b8 00 00 00 00       	mov    $0x0,%eax
 dfe:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
 e02:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
 e09:	00 00 
 e0b:	74 05                	je     e12 <__cxa_finalize@plt+0x39a>
 e0d:	e8 8e fb ff ff       	callq  9a0 <__stack_chk_fail@plt>
 e12:	c9                   	leaveq 
 e13:	c3                   	retq   
 e14:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 e1b:	00 00 00 
 e1e:	66 90                	xchg   %ax,%ax
 e20:	41 57                	push   %r15
 e22:	41 56                	push   %r14
 e24:	41 89 ff             	mov    %edi,%r15d
 e27:	41 55                	push   %r13
 e29:	41 54                	push   %r12
 e2b:	4c 8d 25 ae 0f 20 00 	lea    0x200fae(%rip),%r12        # 201de0 <__cxa_finalize@plt+0x201368>
 e32:	55                   	push   %rbp
 e33:	48 8d 2d ae 0f 20 00 	lea    0x200fae(%rip),%rbp        # 201de8 <__cxa_finalize@plt+0x201370>
 e3a:	53                   	push   %rbx
 e3b:	49 89 f6             	mov    %rsi,%r14
 e3e:	49 89 d5             	mov    %rdx,%r13
 e41:	4c 29 e5             	sub    %r12,%rbp
 e44:	48 83 ec 08          	sub    $0x8,%rsp
 e48:	48 c1 fd 03          	sar    $0x3,%rbp
 e4c:	e8 0f fb ff ff       	callq  960 <puts@plt-0x30>
 e51:	48 85 ed             	test   %rbp,%rbp
 e54:	74 20                	je     e76 <__cxa_finalize@plt+0x3fe>
 e56:	31 db                	xor    %ebx,%ebx
 e58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 e5f:	00 
 e60:	4c 89 ea             	mov    %r13,%rdx
 e63:	4c 89 f6             	mov    %r14,%rsi
 e66:	44 89 ff             	mov    %r15d,%edi
 e69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 e6d:	48 83 c3 01          	add    $0x1,%rbx
 e71:	48 39 eb             	cmp    %rbp,%rbx
 e74:	75 ea                	jne    e60 <__cxa_finalize@plt+0x3e8>
 e76:	48 83 c4 08          	add    $0x8,%rsp
 e7a:	5b                   	pop    %rbx
 e7b:	5d                   	pop    %rbp
 e7c:	41 5c                	pop    %r12
 e7e:	41 5d                	pop    %r13
 e80:	41 5e                	pop    %r14
 e82:	41 5f                	pop    %r15
 e84:	c3                   	retq   
 e85:	90                   	nop
 e86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 e8d:	00 00 00 
 e90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000e94 <.fini>:
 e94:	48 83 ec 08          	sub    $0x8,%rsp
 e98:	48 83 c4 08          	add    $0x8,%rsp
 e9c:	c3                   	retq   
