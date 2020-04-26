
b00ks:     file format elf64-x86-64


Disassembly of section .init:

0000000000000808 <.init>:
 808:	48 83 ec 08          	sub    $0x8,%rsp
 80c:	48 8b 05 cd 17 20 00 	mov    0x2017cd(%rip),%rax        # 201fe0 <__cxa_finalize@plt+0x201710>
 813:	48 85 c0             	test   %rax,%rax
 816:	74 05                	je     81d <free@plt-0x23>
 818:	e8 73 00 00 00       	callq  890 <__gmon_start__@plt>
 81d:	48 83 c4 08          	add    $0x8,%rsp
 821:	c3                   	retq   

Disassembly of section .plt:

0000000000000830 <free@plt-0x10>:
 830:	ff 35 32 17 20 00    	pushq  0x201732(%rip)        # 201f68 <__cxa_finalize@plt+0x201698>
 836:	ff 25 34 17 20 00    	jmpq   *0x201734(%rip)        # 201f70 <__cxa_finalize@plt+0x2016a0>
 83c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000840 <free@plt>:
 840:	ff 25 32 17 20 00    	jmpq   *0x201732(%rip)        # 201f78 <__cxa_finalize@plt+0x2016a8>
 846:	68 00 00 00 00       	pushq  $0x0
 84b:	e9 e0 ff ff ff       	jmpq   830 <free@plt-0x10>

0000000000000850 <puts@plt>:
 850:	ff 25 2a 17 20 00    	jmpq   *0x20172a(%rip)        # 201f80 <__cxa_finalize@plt+0x2016b0>
 856:	68 01 00 00 00       	pushq  $0x1
 85b:	e9 d0 ff ff ff       	jmpq   830 <free@plt-0x10>

0000000000000860 <printf@plt>:
 860:	ff 25 22 17 20 00    	jmpq   *0x201722(%rip)        # 201f88 <__cxa_finalize@plt+0x2016b8>
 866:	68 02 00 00 00       	pushq  $0x2
 86b:	e9 c0 ff ff ff       	jmpq   830 <free@plt-0x10>

0000000000000870 <read@plt>:
 870:	ff 25 1a 17 20 00    	jmpq   *0x20171a(%rip)        # 201f90 <__cxa_finalize@plt+0x2016c0>
 876:	68 03 00 00 00       	pushq  $0x3
 87b:	e9 b0 ff ff ff       	jmpq   830 <free@plt-0x10>

0000000000000880 <__libc_start_main@plt>:
 880:	ff 25 12 17 20 00    	jmpq   *0x201712(%rip)        # 201f98 <__cxa_finalize@plt+0x2016c8>
 886:	68 04 00 00 00       	pushq  $0x4
 88b:	e9 a0 ff ff ff       	jmpq   830 <free@plt-0x10>

0000000000000890 <__gmon_start__@plt>:
 890:	ff 25 0a 17 20 00    	jmpq   *0x20170a(%rip)        # 201fa0 <__cxa_finalize@plt+0x2016d0>
 896:	68 05 00 00 00       	pushq  $0x5
 89b:	e9 90 ff ff ff       	jmpq   830 <free@plt-0x10>

00000000000008a0 <malloc@plt>:
 8a0:	ff 25 02 17 20 00    	jmpq   *0x201702(%rip)        # 201fa8 <__cxa_finalize@plt+0x2016d8>
 8a6:	68 06 00 00 00       	pushq  $0x6
 8ab:	e9 80 ff ff ff       	jmpq   830 <free@plt-0x10>

00000000000008b0 <setvbuf@plt>:
 8b0:	ff 25 fa 16 20 00    	jmpq   *0x2016fa(%rip)        # 201fb0 <__cxa_finalize@plt+0x2016e0>
 8b6:	68 07 00 00 00       	pushq  $0x7
 8bb:	e9 70 ff ff ff       	jmpq   830 <free@plt-0x10>

00000000000008c0 <__isoc99_scanf@plt>:
 8c0:	ff 25 f2 16 20 00    	jmpq   *0x2016f2(%rip)        # 201fb8 <__cxa_finalize@plt+0x2016e8>
 8c6:	68 08 00 00 00       	pushq  $0x8
 8cb:	e9 60 ff ff ff       	jmpq   830 <free@plt-0x10>

00000000000008d0 <__cxa_finalize@plt>:
 8d0:	ff 25 ea 16 20 00    	jmpq   *0x2016ea(%rip)        # 201fc0 <__cxa_finalize@plt+0x2016f0>
 8d6:	68 09 00 00 00       	pushq  $0x9
 8db:	e9 50 ff ff ff       	jmpq   830 <free@plt-0x10>

Disassembly of section .text:

00000000000008e0 <.text>:
     8e0:	31 ed                	xor    %ebp,%ebp
     8e2:	49 89 d1             	mov    %rdx,%r9
     8e5:	5e                   	pop    %rsi
     8e6:	48 89 e2             	mov    %rsp,%rdx
     8e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     8ed:	50                   	push   %rax
     8ee:	54                   	push   %rsp
     8ef:	4c 8d 05 5a 0a 00 00 	lea    0xa5a(%rip),%r8        # 1350 <__cxa_finalize@plt+0xa80>
     8f6:	48 8d 0d e3 09 00 00 	lea    0x9e3(%rip),%rcx        # 12e0 <__cxa_finalize@plt+0xa10>
     8fd:	48 8d 3d cb 08 00 00 	lea    0x8cb(%rip),%rdi        # 11cf <__cxa_finalize@plt+0x8ff>
     904:	e8 77 ff ff ff       	callq  880 <__libc_start_main@plt>
     909:	f4                   	hlt    
     90a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     910:	48 8d 05 10 17 20 00 	lea    0x201710(%rip),%rax        # 202027 <__bss_start@@Base+0x7>
     917:	48 8d 3d 02 17 20 00 	lea    0x201702(%rip),%rdi        # 202020 <__bss_start@@Base>
     91e:	55                   	push   %rbp
     91f:	48 29 f8             	sub    %rdi,%rax
     922:	48 89 e5             	mov    %rsp,%rbp
     925:	48 83 f8 0e          	cmp    $0xe,%rax
     929:	77 02                	ja     92d <__cxa_finalize@plt+0x5d>
     92b:	5d                   	pop    %rbp
     92c:	c3                   	retq   
     92d:	48 8b 05 94 16 20 00 	mov    0x201694(%rip),%rax        # 201fc8 <__cxa_finalize@plt+0x2016f8>
     934:	48 85 c0             	test   %rax,%rax
     937:	74 f2                	je     92b <__cxa_finalize@plt+0x5b>
     939:	5d                   	pop    %rbp
     93a:	ff e0                	jmpq   *%rax
     93c:	0f 1f 40 00          	nopl   0x0(%rax)
     940:	48 8d 05 d9 16 20 00 	lea    0x2016d9(%rip),%rax        # 202020 <__bss_start@@Base>
     947:	48 8d 3d d2 16 20 00 	lea    0x2016d2(%rip),%rdi        # 202020 <__bss_start@@Base>
     94e:	55                   	push   %rbp
     94f:	48 29 f8             	sub    %rdi,%rax
     952:	48 89 e5             	mov    %rsp,%rbp
     955:	48 c1 f8 03          	sar    $0x3,%rax
     959:	48 89 c2             	mov    %rax,%rdx
     95c:	48 c1 ea 3f          	shr    $0x3f,%rdx
     960:	48 01 d0             	add    %rdx,%rax
     963:	48 d1 f8             	sar    %rax
     966:	75 02                	jne    96a <__cxa_finalize@plt+0x9a>
     968:	5d                   	pop    %rbp
     969:	c3                   	retq   
     96a:	48 8b 15 7f 16 20 00 	mov    0x20167f(%rip),%rdx        # 201ff0 <__cxa_finalize@plt+0x201720>
     971:	48 85 d2             	test   %rdx,%rdx
     974:	74 f2                	je     968 <__cxa_finalize@plt+0x98>
     976:	5d                   	pop    %rbp
     977:	48 89 c6             	mov    %rax,%rsi
     97a:	ff e2                	jmpq   *%rdx
     97c:	0f 1f 40 00          	nopl   0x0(%rax)
     980:	80 3d 99 16 20 00 00 	cmpb   $0x0,0x201699(%rip)        # 202020 <__bss_start@@Base>
     987:	75 27                	jne    9b0 <__cxa_finalize@plt+0xe0>
     989:	48 83 3d 67 16 20 00 	cmpq   $0x0,0x201667(%rip)        # 201ff8 <__cxa_finalize@plt+0x201728>
     990:	00 
     991:	55                   	push   %rbp
     992:	48 89 e5             	mov    %rsp,%rbp
     995:	74 0c                	je     9a3 <__cxa_finalize@plt+0xd3>
     997:	48 8b 3d 6a 16 20 00 	mov    0x20166a(%rip),%rdi        # 202008 <__cxa_finalize@plt+0x201738>
     99e:	e8 2d ff ff ff       	callq  8d0 <__cxa_finalize@plt>
     9a3:	e8 68 ff ff ff       	callq  910 <__cxa_finalize@plt+0x40>
     9a8:	5d                   	pop    %rbp
     9a9:	c6 05 70 16 20 00 01 	movb   $0x1,0x201670(%rip)        # 202020 <__bss_start@@Base>
     9b0:	f3 c3                	repz retq 
     9b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
     9b9:	1f 84 00 00 00 00 00 
     9c0:	48 83 3d a0 13 20 00 	cmpq   $0x0,0x2013a0(%rip)        # 201d68 <__cxa_finalize@plt+0x201498>
     9c7:	00 
     9c8:	74 26                	je     9f0 <__cxa_finalize@plt+0x120>
     9ca:	48 8b 05 17 16 20 00 	mov    0x201617(%rip),%rax        # 201fe8 <__cxa_finalize@plt+0x201718>
     9d1:	48 85 c0             	test   %rax,%rax
     9d4:	74 1a                	je     9f0 <__cxa_finalize@plt+0x120>
     9d6:	55                   	push   %rbp
     9d7:	48 8d 3d 8a 13 20 00 	lea    0x20138a(%rip),%rdi        # 201d68 <__cxa_finalize@plt+0x201498>
     9de:	48 89 e5             	mov    %rsp,%rbp
     9e1:	ff d0                	callq  *%rax
     9e3:	5d                   	pop    %rbp
     9e4:	e9 57 ff ff ff       	jmpq   940 <__cxa_finalize@plt+0x70>
     9e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     9f0:	e9 4b ff ff ff       	jmpq   940 <__cxa_finalize@plt+0x70>
     9f5:	55                   	push   %rbp
     9f6:	48 89 e5             	mov    %rsp,%rbp
     9f9:	48 83 ec 20          	sub    $0x20,%rsp
     9fd:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     a01:	89 75 e4             	mov    %esi,-0x1c(%rbp)
     a04:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
     a08:	7f 07                	jg     a11 <__cxa_finalize@plt+0x141>
     a0a:	b8 00 00 00 00       	mov    $0x0,%eax
     a0f:	eb 64                	jmp    a75 <__cxa_finalize@plt+0x1a5>
     a11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     a15:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     a19:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
     a20:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     a24:	ba 01 00 00 00       	mov    $0x1,%edx
     a29:	48 89 c6             	mov    %rax,%rsi
     a2c:	bf 00 00 00 00       	mov    $0x0,%edi
     a31:	b8 00 00 00 00       	mov    $0x0,%eax
     a36:	e8 35 fe ff ff       	callq  870 <read@plt>
     a3b:	83 f8 01             	cmp    $0x1,%eax
     a3e:	74 07                	je     a47 <__cxa_finalize@plt+0x177>
     a40:	b8 01 00 00 00       	mov    $0x1,%eax
     a45:	eb 2e                	jmp    a75 <__cxa_finalize@plt+0x1a5>
     a47:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     a4b:	0f b6 00             	movzbl (%rax),%eax
     a4e:	3c 0a                	cmp    $0xa,%al
     a50:	75 02                	jne    a54 <__cxa_finalize@plt+0x184>
     a52:	eb 15                	jmp    a69 <__cxa_finalize@plt+0x199>
     a54:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
     a59:	8b 45 f4             	mov    -0xc(%rbp),%eax
     a5c:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
     a5f:	75 02                	jne    a63 <__cxa_finalize@plt+0x193>
     a61:	eb 06                	jmp    a69 <__cxa_finalize@plt+0x199>
     a63:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
     a67:	eb b7                	jmp    a20 <__cxa_finalize@plt+0x150>
     a69:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     a6d:	c6 00 00             	movb   $0x0,(%rax)
     a70:	b8 00 00 00 00       	mov    $0x0,%eax
     a75:	c9                   	leaveq 
     a76:	c3                   	retq   
     a77:	55                   	push   %rbp
     a78:	48 89 e5             	mov    %rsp,%rbp
     a7b:	48 8d 3d e6 08 00 00 	lea    0x8e6(%rip),%rdi        # 1368 <__cxa_finalize@plt+0xa98>
     a82:	e8 c9 fd ff ff       	callq  850 <puts@plt>
     a87:	5d                   	pop    %rbp
     a88:	c3                   	retq   
     a89:	55                   	push   %rbp
     a8a:	48 89 e5             	mov    %rsp,%rbp
     a8d:	48 83 ec 10          	sub    $0x10,%rsp
     a91:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
     a98:	48 8d 3d e9 08 00 00 	lea    0x8e9(%rip),%rdi        # 1388 <__cxa_finalize@plt+0xab8>
     a9f:	e8 ac fd ff ff       	callq  850 <puts@plt>
     aa4:	48 8d 3d ef 08 00 00 	lea    0x8ef(%rip),%rdi        # 139a <__cxa_finalize@plt+0xaca>
     aab:	e8 a0 fd ff ff       	callq  850 <puts@plt>
     ab0:	48 8d 3d f4 08 00 00 	lea    0x8f4(%rip),%rdi        # 13ab <__cxa_finalize@plt+0xadb>
     ab7:	e8 94 fd ff ff       	callq  850 <puts@plt>
     abc:	48 8d 3d f7 08 00 00 	lea    0x8f7(%rip),%rdi        # 13ba <__cxa_finalize@plt+0xaea>
     ac3:	e8 88 fd ff ff       	callq  850 <puts@plt>
     ac8:	48 8d 3d 00 09 00 00 	lea    0x900(%rip),%rdi        # 13cf <__cxa_finalize@plt+0xaff>
     acf:	e8 7c fd ff ff       	callq  850 <puts@plt>
     ad4:	48 8d 3d 12 09 00 00 	lea    0x912(%rip),%rdi        # 13ed <__cxa_finalize@plt+0xb1d>
     adb:	e8 70 fd ff ff       	callq  850 <puts@plt>
     ae0:	48 8d 3d 0e 09 00 00 	lea    0x90e(%rip),%rdi        # 13f5 <__cxa_finalize@plt+0xb25>
     ae7:	b8 00 00 00 00       	mov    $0x0,%eax
     aec:	e8 6f fd ff ff       	callq  860 <printf@plt>
     af1:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
     af5:	48 89 c6             	mov    %rax,%rsi
     af8:	48 8d 3d f9 08 00 00 	lea    0x8f9(%rip),%rdi        # 13f8 <__cxa_finalize@plt+0xb28>
     aff:	b8 00 00 00 00       	mov    $0x0,%eax
     b04:	e8 b7 fd ff ff       	callq  8c0 <__isoc99_scanf@plt>
     b09:	8b 45 fc             	mov    -0x4(%rbp),%eax
     b0c:	83 f8 06             	cmp    $0x6,%eax
     b0f:	7f 07                	jg     b18 <__cxa_finalize@plt+0x248>
     b11:	8b 45 fc             	mov    -0x4(%rbp),%eax
     b14:	85 c0                	test   %eax,%eax
     b16:	7f 07                	jg     b1f <__cxa_finalize@plt+0x24f>
     b18:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     b1d:	eb 03                	jmp    b22 <__cxa_finalize@plt+0x252>
     b1f:	8b 45 fc             	mov    -0x4(%rbp),%eax
     b22:	c9                   	leaveq 
     b23:	c3                   	retq   
     b24:	55                   	push   %rbp
     b25:	48 89 e5             	mov    %rsp,%rbp
     b28:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     b2f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     b36:	eb 28                	jmp    b60 <__cxa_finalize@plt+0x290>
     b38:	48 8d 05 d1 14 20 00 	lea    0x2014d1(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     b3f:	48 8b 00             	mov    (%rax),%rax
     b42:	8b 55 fc             	mov    -0x4(%rbp),%edx
     b45:	48 63 d2             	movslq %edx,%rdx
     b48:	48 c1 e2 03          	shl    $0x3,%rdx
     b4c:	48 01 d0             	add    %rdx,%rax
     b4f:	48 8b 00             	mov    (%rax),%rax
     b52:	48 85 c0             	test   %rax,%rax
     b55:	75 05                	jne    b5c <__cxa_finalize@plt+0x28c>
     b57:	8b 45 fc             	mov    -0x4(%rbp),%eax
     b5a:	eb 0f                	jmp    b6b <__cxa_finalize@plt+0x29b>
     b5c:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     b60:	83 7d fc 13          	cmpl   $0x13,-0x4(%rbp)
     b64:	7e d2                	jle    b38 <__cxa_finalize@plt+0x268>
     b66:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     b6b:	5d                   	pop    %rbp
     b6c:	c3                   	retq   
     b6d:	55                   	push   %rbp
     b6e:	48 89 e5             	mov    %rsp,%rbp
     b71:	48 8d 3d 83 08 00 00 	lea    0x883(%rip),%rdi        # 13fb <__cxa_finalize@plt+0xb2b>
     b78:	b8 00 00 00 00       	mov    $0x0,%eax
     b7d:	e8 de fc ff ff       	callq  860 <printf@plt>
     b82:	48 8d 05 8f 14 20 00 	lea    0x20148f(%rip),%rax        # 202018 <__cxa_finalize@plt+0x201748>
     b89:	48 8b 00             	mov    (%rax),%rax
     b8c:	be 20 00 00 00       	mov    $0x20,%esi
     b91:	48 89 c7             	mov    %rax,%rdi
     b94:	e8 5c fe ff ff       	callq  9f5 <__cxa_finalize@plt+0x125>
     b99:	85 c0                	test   %eax,%eax
     b9b:	74 19                	je     bb6 <__cxa_finalize@plt+0x2e6>
     b9d:	48 8d 3d 6b 08 00 00 	lea    0x86b(%rip),%rdi        # 140f <__cxa_finalize@plt+0xb3f>
     ba4:	b8 00 00 00 00       	mov    $0x0,%eax
     ba9:	e8 b2 fc ff ff       	callq  860 <printf@plt>
     bae:	90                   	nop
     baf:	b8 01 00 00 00       	mov    $0x1,%eax
     bb4:	eb 05                	jmp    bbb <__cxa_finalize@plt+0x2eb>
     bb6:	b8 00 00 00 00       	mov    $0x0,%eax
     bbb:	5d                   	pop    %rbp
     bbc:	c3                   	retq   
     bbd:	55                   	push   %rbp
     bbe:	48 89 e5             	mov    %rsp,%rbp
     bc1:	48 83 ec 10          	sub    $0x10,%rsp
     bc5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     bcc:	48 8d 3d 55 08 00 00 	lea    0x855(%rip),%rdi        # 1428 <__cxa_finalize@plt+0xb58>
     bd3:	b8 00 00 00 00       	mov    $0x0,%eax
     bd8:	e8 83 fc ff ff       	callq  860 <printf@plt>
     bdd:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
     be1:	48 89 c6             	mov    %rax,%rsi
     be4:	48 8d 3d 0d 08 00 00 	lea    0x80d(%rip),%rdi        # 13f8 <__cxa_finalize@plt+0xb28>
     beb:	b8 00 00 00 00       	mov    $0x0,%eax
     bf0:	e8 cb fc ff ff       	callq  8c0 <__isoc99_scanf@plt>
     bf5:	8b 45 f8             	mov    -0x8(%rbp),%eax
     bf8:	85 c0                	test   %eax,%eax
     bfa:	7f 16                	jg     c12 <__cxa_finalize@plt+0x342>
     bfc:	48 8d 3d 4c 08 00 00 	lea    0x84c(%rip),%rdi        # 144f <__cxa_finalize@plt+0xb7f>
     c03:	b8 00 00 00 00       	mov    $0x0,%eax
     c08:	e8 53 fc ff ff       	callq  860 <printf@plt>
     c0d:	e9 06 01 00 00       	jmpq   d18 <__cxa_finalize@plt+0x448>
     c12:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     c19:	eb 48                	jmp    c63 <__cxa_finalize@plt+0x393>
     c1b:	48 8d 05 ee 13 20 00 	lea    0x2013ee(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     c22:	48 8b 00             	mov    (%rax),%rax
     c25:	8b 55 fc             	mov    -0x4(%rbp),%edx
     c28:	48 63 d2             	movslq %edx,%rdx
     c2b:	48 c1 e2 03          	shl    $0x3,%rdx
     c2f:	48 01 d0             	add    %rdx,%rax
     c32:	48 8b 00             	mov    (%rax),%rax
     c35:	48 85 c0             	test   %rax,%rax
     c38:	74 25                	je     c5f <__cxa_finalize@plt+0x38f>
     c3a:	48 8d 05 cf 13 20 00 	lea    0x2013cf(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     c41:	48 8b 00             	mov    (%rax),%rax
     c44:	8b 55 fc             	mov    -0x4(%rbp),%edx
     c47:	48 63 d2             	movslq %edx,%rdx
     c4a:	48 c1 e2 03          	shl    $0x3,%rdx
     c4e:	48 01 d0             	add    %rdx,%rax
     c51:	48 8b 00             	mov    (%rax),%rax
     c54:	8b 10                	mov    (%rax),%edx
     c56:	8b 45 f8             	mov    -0x8(%rbp),%eax
     c59:	39 c2                	cmp    %eax,%edx
     c5b:	75 02                	jne    c5f <__cxa_finalize@plt+0x38f>
     c5d:	eb 0a                	jmp    c69 <__cxa_finalize@plt+0x399>
     c5f:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     c63:	83 7d fc 13          	cmpl   $0x13,-0x4(%rbp)
     c67:	7e b2                	jle    c1b <__cxa_finalize@plt+0x34b>
     c69:	83 7d fc 14          	cmpl   $0x14,-0x4(%rbp)
     c6d:	75 16                	jne    c85 <__cxa_finalize@plt+0x3b5>
     c6f:	48 8d 3d e2 07 00 00 	lea    0x7e2(%rip),%rdi        # 1458 <__cxa_finalize@plt+0xb88>
     c76:	b8 00 00 00 00       	mov    $0x0,%eax
     c7b:	e8 e0 fb ff ff       	callq  860 <printf@plt>
     c80:	e9 93 00 00 00       	jmpq   d18 <__cxa_finalize@plt+0x448>
     c85:	48 8d 05 84 13 20 00 	lea    0x201384(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     c8c:	48 8b 00             	mov    (%rax),%rax
     c8f:	8b 55 fc             	mov    -0x4(%rbp),%edx
     c92:	48 63 d2             	movslq %edx,%rdx
     c95:	48 c1 e2 03          	shl    $0x3,%rdx
     c99:	48 01 d0             	add    %rdx,%rax
     c9c:	48 8b 00             	mov    (%rax),%rax
     c9f:	48 8b 40 08          	mov    0x8(%rax),%rax
     ca3:	48 89 c7             	mov    %rax,%rdi
     ca6:	e8 95 fb ff ff       	callq  840 <free@plt>
     cab:	48 8d 05 5e 13 20 00 	lea    0x20135e(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     cb2:	48 8b 00             	mov    (%rax),%rax
     cb5:	8b 55 fc             	mov    -0x4(%rbp),%edx
     cb8:	48 63 d2             	movslq %edx,%rdx
     cbb:	48 c1 e2 03          	shl    $0x3,%rdx
     cbf:	48 01 d0             	add    %rdx,%rax
     cc2:	48 8b 00             	mov    (%rax),%rax
     cc5:	48 8b 40 10          	mov    0x10(%rax),%rax
     cc9:	48 89 c7             	mov    %rax,%rdi
     ccc:	e8 6f fb ff ff       	callq  840 <free@plt>
     cd1:	48 8d 05 38 13 20 00 	lea    0x201338(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     cd8:	48 8b 00             	mov    (%rax),%rax
     cdb:	8b 55 fc             	mov    -0x4(%rbp),%edx
     cde:	48 63 d2             	movslq %edx,%rdx
     ce1:	48 c1 e2 03          	shl    $0x3,%rdx
     ce5:	48 01 d0             	add    %rdx,%rax
     ce8:	48 8b 00             	mov    (%rax),%rax
     ceb:	48 89 c7             	mov    %rax,%rdi
     cee:	e8 4d fb ff ff       	callq  840 <free@plt>
     cf3:	48 8d 05 16 13 20 00 	lea    0x201316(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     cfa:	48 8b 00             	mov    (%rax),%rax
     cfd:	8b 55 fc             	mov    -0x4(%rbp),%edx
     d00:	48 63 d2             	movslq %edx,%rdx
     d03:	48 c1 e2 03          	shl    $0x3,%rdx
     d07:	48 01 d0             	add    %rdx,%rax
     d0a:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
     d11:	b8 00 00 00 00       	mov    $0x0,%eax
     d16:	eb 05                	jmp    d1d <__cxa_finalize@plt+0x44d>
     d18:	b8 01 00 00 00       	mov    $0x1,%eax
     d1d:	c9                   	leaveq 
     d1e:	c3                   	retq   
     d1f:	55                   	push   %rbp
     d20:	48 89 e5             	mov    %rsp,%rbp
     d23:	48 83 ec 10          	sub    $0x10,%rsp
     d27:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     d2e:	e9 d8 00 00 00       	jmpq   e0b <__cxa_finalize@plt+0x53b>
     d33:	48 8d 05 d6 12 20 00 	lea    0x2012d6(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     d3a:	48 8b 00             	mov    (%rax),%rax
     d3d:	8b 55 fc             	mov    -0x4(%rbp),%edx
     d40:	48 63 d2             	movslq %edx,%rdx
     d43:	48 c1 e2 03          	shl    $0x3,%rdx
     d47:	48 01 d0             	add    %rdx,%rax
     d4a:	48 8b 00             	mov    (%rax),%rax
     d4d:	48 85 c0             	test   %rax,%rax
     d50:	0f 84 b1 00 00 00    	je     e07 <__cxa_finalize@plt+0x537>
     d56:	48 8d 05 b3 12 20 00 	lea    0x2012b3(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     d5d:	48 8b 00             	mov    (%rax),%rax
     d60:	8b 55 fc             	mov    -0x4(%rbp),%edx
     d63:	48 63 d2             	movslq %edx,%rdx
     d66:	48 c1 e2 03          	shl    $0x3,%rdx
     d6a:	48 01 d0             	add    %rdx,%rax
     d6d:	48 8b 00             	mov    (%rax),%rax
     d70:	8b 00                	mov    (%rax),%eax
     d72:	89 c6                	mov    %eax,%esi
     d74:	48 8d 3d f7 06 00 00 	lea    0x6f7(%rip),%rdi        # 1472 <__cxa_finalize@plt+0xba2>
     d7b:	b8 00 00 00 00       	mov    $0x0,%eax
     d80:	e8 db fa ff ff       	callq  860 <printf@plt>
     d85:	48 8d 05 84 12 20 00 	lea    0x201284(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     d8c:	48 8b 00             	mov    (%rax),%rax
     d8f:	8b 55 fc             	mov    -0x4(%rbp),%edx
     d92:	48 63 d2             	movslq %edx,%rdx
     d95:	48 c1 e2 03          	shl    $0x3,%rdx
     d99:	48 01 d0             	add    %rdx,%rax
     d9c:	48 8b 00             	mov    (%rax),%rax
     d9f:	48 8b 40 08          	mov    0x8(%rax),%rax
     da3:	48 89 c6             	mov    %rax,%rsi
     da6:	48 8d 3d cd 06 00 00 	lea    0x6cd(%rip),%rdi        # 147a <__cxa_finalize@plt+0xbaa>
     dad:	b8 00 00 00 00       	mov    $0x0,%eax
     db2:	e8 a9 fa ff ff       	callq  860 <printf@plt>
     db7:	48 8d 05 52 12 20 00 	lea    0x201252(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     dbe:	48 8b 00             	mov    (%rax),%rax
     dc1:	8b 55 fc             	mov    -0x4(%rbp),%edx
     dc4:	48 63 d2             	movslq %edx,%rdx
     dc7:	48 c1 e2 03          	shl    $0x3,%rdx
     dcb:	48 01 d0             	add    %rdx,%rax
     dce:	48 8b 00             	mov    (%rax),%rax
     dd1:	48 8b 40 10          	mov    0x10(%rax),%rax
     dd5:	48 89 c6             	mov    %rax,%rsi
     dd8:	48 8d 3d a5 06 00 00 	lea    0x6a5(%rip),%rdi        # 1484 <__cxa_finalize@plt+0xbb4>
     ddf:	b8 00 00 00 00       	mov    $0x0,%eax
     de4:	e8 77 fa ff ff       	callq  860 <printf@plt>
     de9:	48 8d 05 28 12 20 00 	lea    0x201228(%rip),%rax        # 202018 <__cxa_finalize@plt+0x201748>
     df0:	48 8b 00             	mov    (%rax),%rax
     df3:	48 89 c6             	mov    %rax,%rsi
     df6:	48 8d 3d 98 06 00 00 	lea    0x698(%rip),%rdi        # 1495 <__cxa_finalize@plt+0xbc5>
     dfd:	b8 00 00 00 00       	mov    $0x0,%eax
     e02:	e8 59 fa ff ff       	callq  860 <printf@plt>
     e07:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     e0b:	83 7d fc 13          	cmpl   $0x13,-0x4(%rbp)
     e0f:	0f 8e 1e ff ff ff    	jle    d33 <__cxa_finalize@plt+0x463>
     e15:	c9                   	leaveq 
     e16:	c3                   	retq   
     e17:	55                   	push   %rbp
     e18:	48 89 e5             	mov    %rsp,%rbp
     e1b:	48 83 ec 10          	sub    $0x10,%rsp
     e1f:	48 8d 3d 82 06 00 00 	lea    0x682(%rip),%rdi        # 14a8 <__cxa_finalize@plt+0xbd8>
     e26:	b8 00 00 00 00       	mov    $0x0,%eax
     e2b:	e8 30 fa ff ff       	callq  860 <printf@plt>
     e30:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
     e34:	48 89 c6             	mov    %rax,%rsi
     e37:	48 8d 3d ba 05 00 00 	lea    0x5ba(%rip),%rdi        # 13f8 <__cxa_finalize@plt+0xb28>
     e3e:	b8 00 00 00 00       	mov    $0x0,%eax
     e43:	e8 78 fa ff ff       	callq  8c0 <__isoc99_scanf@plt>
     e48:	8b 45 f8             	mov    -0x8(%rbp),%eax
     e4b:	85 c0                	test   %eax,%eax
     e4d:	7f 16                	jg     e65 <__cxa_finalize@plt+0x595>
     e4f:	48 8d 3d f9 05 00 00 	lea    0x5f9(%rip),%rdi        # 144f <__cxa_finalize@plt+0xb7f>
     e56:	b8 00 00 00 00       	mov    $0x0,%eax
     e5b:	e8 00 fa ff ff       	callq  860 <printf@plt>
     e60:	e9 e9 00 00 00       	jmpq   f4e <__cxa_finalize@plt+0x67e>
     e65:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     e6c:	eb 48                	jmp    eb6 <__cxa_finalize@plt+0x5e6>
     e6e:	48 8d 05 9b 11 20 00 	lea    0x20119b(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     e75:	48 8b 00             	mov    (%rax),%rax
     e78:	8b 55 fc             	mov    -0x4(%rbp),%edx
     e7b:	48 63 d2             	movslq %edx,%rdx
     e7e:	48 c1 e2 03          	shl    $0x3,%rdx
     e82:	48 01 d0             	add    %rdx,%rax
     e85:	48 8b 00             	mov    (%rax),%rax
     e88:	48 85 c0             	test   %rax,%rax
     e8b:	74 25                	je     eb2 <__cxa_finalize@plt+0x5e2>
     e8d:	48 8d 05 7c 11 20 00 	lea    0x20117c(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     e94:	48 8b 00             	mov    (%rax),%rax
     e97:	8b 55 fc             	mov    -0x4(%rbp),%edx
     e9a:	48 63 d2             	movslq %edx,%rdx
     e9d:	48 c1 e2 03          	shl    $0x3,%rdx
     ea1:	48 01 d0             	add    %rdx,%rax
     ea4:	48 8b 00             	mov    (%rax),%rax
     ea7:	8b 10                	mov    (%rax),%edx
     ea9:	8b 45 f8             	mov    -0x8(%rbp),%eax
     eac:	39 c2                	cmp    %eax,%edx
     eae:	75 02                	jne    eb2 <__cxa_finalize@plt+0x5e2>
     eb0:	eb 0a                	jmp    ebc <__cxa_finalize@plt+0x5ec>
     eb2:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     eb6:	83 7d fc 13          	cmpl   $0x13,-0x4(%rbp)
     eba:	7e b2                	jle    e6e <__cxa_finalize@plt+0x59e>
     ebc:	83 7d fc 14          	cmpl   $0x14,-0x4(%rbp)
     ec0:	75 13                	jne    ed5 <__cxa_finalize@plt+0x605>
     ec2:	48 8d 3d 8f 05 00 00 	lea    0x58f(%rip),%rdi        # 1458 <__cxa_finalize@plt+0xb88>
     ec9:	b8 00 00 00 00       	mov    $0x0,%eax
     ece:	e8 8d f9 ff ff       	callq  860 <printf@plt>
     ed3:	eb 79                	jmp    f4e <__cxa_finalize@plt+0x67e>
     ed5:	48 8d 3d f1 05 00 00 	lea    0x5f1(%rip),%rdi        # 14cd <__cxa_finalize@plt+0xbfd>
     edc:	b8 00 00 00 00       	mov    $0x0,%eax
     ee1:	e8 7a f9 ff ff       	callq  860 <printf@plt>
     ee6:	48 8d 05 23 11 20 00 	lea    0x201123(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     eed:	48 8b 00             	mov    (%rax),%rax
     ef0:	8b 55 fc             	mov    -0x4(%rbp),%edx
     ef3:	48 63 d2             	movslq %edx,%rdx
     ef6:	48 c1 e2 03          	shl    $0x3,%rdx
     efa:	48 01 d0             	add    %rdx,%rax
     efd:	48 8b 00             	mov    (%rax),%rax
     f00:	8b 40 18             	mov    0x18(%rax),%eax
     f03:	83 e8 01             	sub    $0x1,%eax
     f06:	89 c2                	mov    %eax,%edx
     f08:	48 8d 05 01 11 20 00 	lea    0x201101(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
     f0f:	48 8b 00             	mov    (%rax),%rax
     f12:	8b 4d fc             	mov    -0x4(%rbp),%ecx
     f15:	48 63 c9             	movslq %ecx,%rcx
     f18:	48 c1 e1 03          	shl    $0x3,%rcx
     f1c:	48 01 c8             	add    %rcx,%rax
     f1f:	48 8b 00             	mov    (%rax),%rax
     f22:	48 8b 40 10          	mov    0x10(%rax),%rax
     f26:	89 d6                	mov    %edx,%esi
     f28:	48 89 c7             	mov    %rax,%rdi
     f2b:	e8 c5 fa ff ff       	callq  9f5 <__cxa_finalize@plt+0x125>
     f30:	85 c0                	test   %eax,%eax
     f32:	74 13                	je     f47 <__cxa_finalize@plt+0x677>
     f34:	48 8d 3d b5 05 00 00 	lea    0x5b5(%rip),%rdi        # 14f0 <__cxa_finalize@plt+0xc20>
     f3b:	b8 00 00 00 00       	mov    $0x0,%eax
     f40:	e8 1b f9 ff ff       	callq  860 <printf@plt>
     f45:	eb 07                	jmp    f4e <__cxa_finalize@plt+0x67e>
     f47:	b8 00 00 00 00       	mov    $0x0,%eax
     f4c:	eb 05                	jmp    f53 <__cxa_finalize@plt+0x683>
     f4e:	b8 01 00 00 00       	mov    $0x1,%eax
     f53:	c9                   	leaveq 
     f54:	c3                   	retq   
     f55:	55                   	push   %rbp
     f56:	48 89 e5             	mov    %rsp,%rbp
     f59:	48 83 ec 20          	sub    $0x20,%rsp
     f5d:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
     f64:	48 8d 3d a4 05 00 00 	lea    0x5a4(%rip),%rdi        # 150f <__cxa_finalize@plt+0xc3f>
     f6b:	b8 00 00 00 00       	mov    $0x0,%eax
     f70:	e8 eb f8 ff ff       	callq  860 <printf@plt>
     f75:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
     f79:	48 89 c6             	mov    %rax,%rsi
     f7c:	48 8d 3d 75 04 00 00 	lea    0x475(%rip),%rdi        # 13f8 <__cxa_finalize@plt+0xb28>
     f83:	b8 00 00 00 00       	mov    $0x0,%eax
     f88:	e8 33 f9 ff ff       	callq  8c0 <__isoc99_scanf@plt>
     f8d:	8b 45 e0             	mov    -0x20(%rbp),%eax
     f90:	85 c0                	test   %eax,%eax
     f92:	79 16                	jns    faa <__cxa_finalize@plt+0x6da>
     f94:	48 8d 3d 8c 05 00 00 	lea    0x58c(%rip),%rdi        # 1527 <__cxa_finalize@plt+0xc57>
     f9b:	b8 00 00 00 00       	mov    $0x0,%eax
     fa0:	e8 bb f8 ff ff       	callq  860 <printf@plt>
     fa5:	e9 e5 01 00 00       	jmpq   118f <__cxa_finalize@plt+0x8bf>
     faa:	48 8d 3d 87 05 00 00 	lea    0x587(%rip),%rdi        # 1538 <__cxa_finalize@plt+0xc68>
     fb1:	b8 00 00 00 00       	mov    $0x0,%eax
     fb6:	e8 a5 f8 ff ff       	callq  860 <printf@plt>
     fbb:	8b 45 e0             	mov    -0x20(%rbp),%eax
     fbe:	48 98                	cltq   
     fc0:	48 89 c7             	mov    %rax,%rdi
     fc3:	e8 d8 f8 ff ff       	callq  8a0 <malloc@plt>
     fc8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     fcc:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
     fd1:	75 16                	jne    fe9 <__cxa_finalize@plt+0x719>
     fd3:	48 8d 3d 86 05 00 00 	lea    0x586(%rip),%rdi        # 1560 <__cxa_finalize@plt+0xc90>
     fda:	b8 00 00 00 00       	mov    $0x0,%eax
     fdf:	e8 7c f8 ff ff       	callq  860 <printf@plt>
     fe4:	e9 a6 01 00 00       	jmpq   118f <__cxa_finalize@plt+0x8bf>
     fe9:	8b 45 e0             	mov    -0x20(%rbp),%eax
     fec:	8d 50 ff             	lea    -0x1(%rax),%edx
     fef:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     ff3:	89 d6                	mov    %edx,%esi
     ff5:	48 89 c7             	mov    %rax,%rdi
     ff8:	e8 f8 f9 ff ff       	callq  9f5 <__cxa_finalize@plt+0x125>
     ffd:	85 c0                	test   %eax,%eax
     fff:	74 16                	je     1017 <__cxa_finalize@plt+0x747>
    1001:	48 8d 3d 78 05 00 00 	lea    0x578(%rip),%rdi        # 1580 <__cxa_finalize@plt+0xcb0>
    1008:	b8 00 00 00 00       	mov    $0x0,%eax
    100d:	e8 4e f8 ff ff       	callq  860 <printf@plt>
    1012:	e9 78 01 00 00       	jmpq   118f <__cxa_finalize@plt+0x8bf>
    1017:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    101e:	48 8d 3d 73 05 00 00 	lea    0x573(%rip),%rdi        # 1598 <__cxa_finalize@plt+0xcc8>
    1025:	b8 00 00 00 00       	mov    $0x0,%eax
    102a:	e8 31 f8 ff ff       	callq  860 <printf@plt>
    102f:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1033:	48 89 c6             	mov    %rax,%rsi
    1036:	48 8d 3d bb 03 00 00 	lea    0x3bb(%rip),%rdi        # 13f8 <__cxa_finalize@plt+0xb28>
    103d:	b8 00 00 00 00       	mov    $0x0,%eax
    1042:	e8 79 f8 ff ff       	callq  8c0 <__isoc99_scanf@plt>
    1047:	8b 45 e0             	mov    -0x20(%rbp),%eax
    104a:	85 c0                	test   %eax,%eax
    104c:	79 16                	jns    1064 <__cxa_finalize@plt+0x794>
    104e:	48 8d 3d d2 04 00 00 	lea    0x4d2(%rip),%rdi        # 1527 <__cxa_finalize@plt+0xc57>
    1055:	b8 00 00 00 00       	mov    $0x0,%eax
    105a:	e8 01 f8 ff ff       	callq  860 <printf@plt>
    105f:	e9 2b 01 00 00       	jmpq   118f <__cxa_finalize@plt+0x8bf>
    1064:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1067:	48 98                	cltq   
    1069:	48 89 c7             	mov    %rax,%rdi
    106c:	e8 2f f8 ff ff       	callq  8a0 <malloc@plt>
    1071:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1075:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    107a:	75 16                	jne    1092 <__cxa_finalize@plt+0x7c2>
    107c:	48 8d 3d 34 05 00 00 	lea    0x534(%rip),%rdi        # 15b7 <__cxa_finalize@plt+0xce7>
    1083:	b8 00 00 00 00       	mov    $0x0,%eax
    1088:	e8 d3 f7 ff ff       	callq  860 <printf@plt>
    108d:	e9 fd 00 00 00       	jmpq   118f <__cxa_finalize@plt+0x8bf>
    1092:	48 8d 3d 36 05 00 00 	lea    0x536(%rip),%rdi        # 15cf <__cxa_finalize@plt+0xcff>
    1099:	b8 00 00 00 00       	mov    $0x0,%eax
    109e:	e8 bd f7 ff ff       	callq  860 <printf@plt>
    10a3:	8b 45 e0             	mov    -0x20(%rbp),%eax
    10a6:	8d 50 ff             	lea    -0x1(%rax),%edx
    10a9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    10ad:	89 d6                	mov    %edx,%esi
    10af:	48 89 c7             	mov    %rax,%rdi
    10b2:	e8 3e f9 ff ff       	callq  9f5 <__cxa_finalize@plt+0x125>
    10b7:	85 c0                	test   %eax,%eax
    10b9:	74 16                	je     10d1 <__cxa_finalize@plt+0x801>
    10bb:	48 8d 3d 26 05 00 00 	lea    0x526(%rip),%rdi        # 15e8 <__cxa_finalize@plt+0xd18>
    10c2:	b8 00 00 00 00       	mov    $0x0,%eax
    10c7:	e8 94 f7 ff ff       	callq  860 <printf@plt>
    10cc:	e9 be 00 00 00       	jmpq   118f <__cxa_finalize@plt+0x8bf>
    10d1:	b8 00 00 00 00       	mov    $0x0,%eax
    10d6:	e8 49 fa ff ff       	callq  b24 <__cxa_finalize@plt+0x254>
    10db:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    10de:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%rbp)
    10e2:	75 16                	jne    10fa <__cxa_finalize@plt+0x82a>
    10e4:	48 8d 3d 18 05 00 00 	lea    0x518(%rip),%rdi        # 1603 <__cxa_finalize@plt+0xd33>
    10eb:	b8 00 00 00 00       	mov    $0x0,%eax
    10f0:	e8 6b f7 ff ff       	callq  860 <printf@plt>
    10f5:	e9 95 00 00 00       	jmpq   118f <__cxa_finalize@plt+0x8bf>
    10fa:	bf 20 00 00 00       	mov    $0x20,%edi
    10ff:	e8 9c f7 ff ff       	callq  8a0 <malloc@plt>
    1104:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1108:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    110d:	75 13                	jne    1122 <__cxa_finalize@plt+0x852>
    110f:	48 8d 3d 02 05 00 00 	lea    0x502(%rip),%rdi        # 1618 <__cxa_finalize@plt+0xd48>
    1116:	b8 00 00 00 00       	mov    $0x0,%eax
    111b:	e8 40 f7 ff ff       	callq  860 <printf@plt>
    1120:	eb 6d                	jmp    118f <__cxa_finalize@plt+0x8bf>
    1122:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1125:	89 c2                	mov    %eax,%edx
    1127:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    112b:	89 50 18             	mov    %edx,0x18(%rax)
    112e:	48 8d 05 db 0e 20 00 	lea    0x200edb(%rip),%rax        # 202010 <__cxa_finalize@plt+0x201740>
    1135:	48 8b 00             	mov    (%rax),%rax
    1138:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    113b:	48 63 d2             	movslq %edx,%rdx
    113e:	48 c1 e2 03          	shl    $0x3,%rdx
    1142:	48 01 c2             	add    %rax,%rdx
    1145:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1149:	48 89 02             	mov    %rax,(%rdx)
    114c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1150:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1154:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1158:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    115c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1160:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1164:	48 8d 05 b9 0e 20 00 	lea    0x200eb9(%rip),%rax        # 202024 <__bss_start@@Base+0x4>
    116b:	8b 00                	mov    (%rax),%eax
    116d:	8d 50 01             	lea    0x1(%rax),%edx
    1170:	48 8d 05 ad 0e 20 00 	lea    0x200ead(%rip),%rax        # 202024 <__bss_start@@Base+0x4>
    1177:	89 10                	mov    %edx,(%rax)
    1179:	48 8d 05 a4 0e 20 00 	lea    0x200ea4(%rip),%rax        # 202024 <__bss_start@@Base+0x4>
    1180:	8b 10                	mov    (%rax),%edx
    1182:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1186:	89 10                	mov    %edx,(%rax)
    1188:	b8 00 00 00 00       	mov    $0x0,%eax
    118d:	eb 3e                	jmp    11cd <__cxa_finalize@plt+0x8fd>
    118f:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    1194:	74 0c                	je     11a2 <__cxa_finalize@plt+0x8d2>
    1196:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    119a:	48 89 c7             	mov    %rax,%rdi
    119d:	e8 9e f6 ff ff       	callq  840 <free@plt>
    11a2:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    11a7:	74 0c                	je     11b5 <__cxa_finalize@plt+0x8e5>
    11a9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11ad:	48 89 c7             	mov    %rax,%rdi
    11b0:	e8 8b f6 ff ff       	callq  840 <free@plt>
    11b5:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    11ba:	74 0c                	je     11c8 <__cxa_finalize@plt+0x8f8>
    11bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11c0:	48 89 c7             	mov    %rax,%rdi
    11c3:	e8 78 f6 ff ff       	callq  840 <free@plt>
    11c8:	b8 01 00 00 00       	mov    $0x1,%eax
    11cd:	c9                   	leaveq 
    11ce:	c3                   	retq   
    11cf:	55                   	push   %rbp
    11d0:	48 89 e5             	mov    %rsp,%rbp
    11d3:	48 83 ec 20          	sub    $0x20,%rsp
    11d7:	89 7d ec             	mov    %edi,-0x14(%rbp)
    11da:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    11de:	48 8b 05 eb 0d 20 00 	mov    0x200deb(%rip),%rax        # 201fd0 <__cxa_finalize@plt+0x201700>
    11e5:	48 8b 00             	mov    (%rax),%rax
    11e8:	b9 00 00 00 00       	mov    $0x0,%ecx
    11ed:	ba 02 00 00 00       	mov    $0x2,%edx
    11f2:	be 00 00 00 00       	mov    $0x0,%esi
    11f7:	48 89 c7             	mov    %rax,%rdi
    11fa:	e8 b1 f6 ff ff       	callq  8b0 <setvbuf@plt>
    11ff:	48 8b 05 d2 0d 20 00 	mov    0x200dd2(%rip),%rax        # 201fd8 <__cxa_finalize@plt+0x201708>
    1206:	48 8b 00             	mov    (%rax),%rax
    1209:	b9 00 00 00 00       	mov    $0x0,%ecx
    120e:	ba 01 00 00 00       	mov    $0x1,%edx
    1213:	be 00 00 00 00       	mov    $0x0,%esi
    1218:	48 89 c7             	mov    %rax,%rdi
    121b:	e8 90 f6 ff ff       	callq  8b0 <setvbuf@plt>
    1220:	b8 00 00 00 00       	mov    $0x0,%eax
    1225:	e8 4d f8 ff ff       	callq  a77 <__cxa_finalize@plt+0x1a7>
    122a:	b8 00 00 00 00       	mov    $0x0,%eax
    122f:	e8 39 f9 ff ff       	callq  b6d <__cxa_finalize@plt+0x29d>
    1234:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
    123b:	b8 00 00 00 00       	mov    $0x0,%eax
    1240:	e8 44 f8 ff ff       	callq  a89 <__cxa_finalize@plt+0x1b9>
    1245:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1248:	83 7d fc 06          	cmpl   $0x6,-0x4(%rbp)
    124c:	75 02                	jne    1250 <__cxa_finalize@plt+0x980>
    124e:	eb 78                	jmp    12c8 <__cxa_finalize@plt+0x9f8>
    1250:	83 7d fc 05          	cmpl   $0x5,-0x4(%rbp)
    1254:	77 60                	ja     12b6 <__cxa_finalize@plt+0x9e6>
    1256:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1259:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1260:	00 
    1261:	48 8d 05 04 04 00 00 	lea    0x404(%rip),%rax        # 166c <__cxa_finalize@plt+0xd9c>
    1268:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    126b:	48 63 d0             	movslq %eax,%rdx
    126e:	48 8d 05 f7 03 00 00 	lea    0x3f7(%rip),%rax        # 166c <__cxa_finalize@plt+0xd9c>
    1275:	48 01 d0             	add    %rdx,%rax
    1278:	ff e0                	jmpq   *%rax
    127a:	b8 00 00 00 00       	mov    $0x0,%eax
    127f:	e8 d1 fc ff ff       	callq  f55 <__cxa_finalize@plt+0x685>
    1284:	eb 3d                	jmp    12c3 <__cxa_finalize@plt+0x9f3>
    1286:	b8 00 00 00 00       	mov    $0x0,%eax
    128b:	e8 87 fb ff ff       	callq  e17 <__cxa_finalize@plt+0x547>
    1290:	eb 31                	jmp    12c3 <__cxa_finalize@plt+0x9f3>
    1292:	b8 00 00 00 00       	mov    $0x0,%eax
    1297:	e8 21 f9 ff ff       	callq  bbd <__cxa_finalize@plt+0x2ed>
    129c:	eb 25                	jmp    12c3 <__cxa_finalize@plt+0x9f3>
    129e:	b8 00 00 00 00       	mov    $0x0,%eax
    12a3:	e8 77 fa ff ff       	callq  d1f <__cxa_finalize@plt+0x44f>
    12a8:	eb 19                	jmp    12c3 <__cxa_finalize@plt+0x9f3>
    12aa:	b8 00 00 00 00       	mov    $0x0,%eax
    12af:	e8 b9 f8 ff ff       	callq  b6d <__cxa_finalize@plt+0x29d>
    12b4:	eb 0d                	jmp    12c3 <__cxa_finalize@plt+0x9f3>
    12b6:	48 8d 3d 7a 03 00 00 	lea    0x37a(%rip),%rdi        # 1637 <__cxa_finalize@plt+0xd67>
    12bd:	e8 8e f5 ff ff       	callq  850 <puts@plt>
    12c2:	90                   	nop
    12c3:	e9 73 ff ff ff       	jmpq   123b <__cxa_finalize@plt+0x96b>
    12c8:	48 8d 3d 79 03 00 00 	lea    0x379(%rip),%rdi        # 1648 <__cxa_finalize@plt+0xd78>
    12cf:	e8 7c f5 ff ff       	callq  850 <puts@plt>
    12d4:	b8 00 00 00 00       	mov    $0x0,%eax
    12d9:	c9                   	leaveq 
    12da:	c3                   	retq   
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    12e0:	41 57                	push   %r15
    12e2:	41 89 ff             	mov    %edi,%r15d
    12e5:	41 56                	push   %r14
    12e7:	49 89 f6             	mov    %rsi,%r14
    12ea:	41 55                	push   %r13
    12ec:	49 89 d5             	mov    %rdx,%r13
    12ef:	41 54                	push   %r12
    12f1:	4c 8d 25 60 0a 20 00 	lea    0x200a60(%rip),%r12        # 201d58 <__cxa_finalize@plt+0x201488>
    12f8:	55                   	push   %rbp
    12f9:	48 8d 2d 60 0a 20 00 	lea    0x200a60(%rip),%rbp        # 201d60 <__cxa_finalize@plt+0x201490>
    1300:	53                   	push   %rbx
    1301:	4c 29 e5             	sub    %r12,%rbp
    1304:	31 db                	xor    %ebx,%ebx
    1306:	48 c1 fd 03          	sar    $0x3,%rbp
    130a:	48 83 ec 08          	sub    $0x8,%rsp
    130e:	e8 f5 f4 ff ff       	callq  808 <free@plt-0x38>
    1313:	48 85 ed             	test   %rbp,%rbp
    1316:	74 1e                	je     1336 <__cxa_finalize@plt+0xa66>
    1318:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    131f:	00 
    1320:	4c 89 ea             	mov    %r13,%rdx
    1323:	4c 89 f6             	mov    %r14,%rsi
    1326:	44 89 ff             	mov    %r15d,%edi
    1329:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    132d:	48 83 c3 01          	add    $0x1,%rbx
    1331:	48 39 eb             	cmp    %rbp,%rbx
    1334:	75 ea                	jne    1320 <__cxa_finalize@plt+0xa50>
    1336:	48 83 c4 08          	add    $0x8,%rsp
    133a:	5b                   	pop    %rbx
    133b:	5d                   	pop    %rbp
    133c:	41 5c                	pop    %r12
    133e:	41 5d                	pop    %r13
    1340:	41 5e                	pop    %r14
    1342:	41 5f                	pop    %r15
    1344:	c3                   	retq   
    1345:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    134c:	00 00 00 00 
    1350:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000001354 <.fini>:
    1354:	48 83 ec 08          	sub    $0x8,%rsp
    1358:	48 83 c4 08          	add    $0x8,%rsp
    135c:	c3                   	retq   
