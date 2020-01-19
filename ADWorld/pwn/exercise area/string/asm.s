
string:     file format elf64-x86-64


Disassembly of section .init:

00000000004007e0 <.init>:
  4007e0:	48 83 ec 08          	sub    $0x8,%rsp
  4007e4:	48 8b 05 e5 27 20 00 	mov    0x2027e5(%rip),%rax        # 602fd0 <rand@plt+0x202740>
  4007eb:	48 85 c0             	test   %rax,%rax
  4007ee:	74 05                	je     4007f5 <puts@plt-0x1b>
  4007f0:	e8 73 00 00 00       	callq  400868 <__gmon_start__@plt>
  4007f5:	48 83 c4 08          	add    $0x8,%rsp
  4007f9:	c3                   	retq   

Disassembly of section .plt:

0000000000400800 <.plt>:
  400800:	ff 35 62 27 20 00    	pushq  0x202762(%rip)        # 602f68 <rand@plt+0x2026d8>
  400806:	ff 25 64 27 20 00    	jmpq   *0x202764(%rip)        # 602f70 <rand@plt+0x2026e0>
  40080c:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

0000000000400810 <puts@plt>:
  400810:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602f78 <rand@plt+0x2026e8>
  400816:	66 90                	xchg   %ax,%ax

0000000000400818 <strlen@plt>:
  400818:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602f80 <rand@plt+0x2026f0>
  40081e:	66 90                	xchg   %ax,%ax

0000000000400820 <__stack_chk_fail@plt>:
  400820:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602f88 <rand@plt+0x2026f8>
  400826:	66 90                	xchg   %ax,%ax

0000000000400828 <mmap@plt>:
  400828:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602f90 <rand@plt+0x202700>
  40082e:	66 90                	xchg   %ax,%ax

0000000000400830 <setbuf@plt>:
  400830:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602f98 <rand@plt+0x202708>
  400836:	66 90                	xchg   %ax,%ax

0000000000400838 <printf@plt>:
  400838:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602fa0 <rand@plt+0x202710>
  40083e:	66 90                	xchg   %ax,%ax

0000000000400840 <alarm@plt>:
  400840:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602fa8 <rand@plt+0x202718>
  400846:	66 90                	xchg   %ax,%ax

0000000000400848 <read@plt>:
  400848:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602fb0 <rand@plt+0x202720>
  40084e:	66 90                	xchg   %ax,%ax

0000000000400850 <__libc_start_main@plt>:
  400850:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602fb8 <rand@plt+0x202728>
  400856:	66 90                	xchg   %ax,%ax

0000000000400858 <srand@plt>:
  400858:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602fc0 <rand@plt+0x202730>
  40085e:	66 90                	xchg   %ax,%ax

0000000000400860 <strcmp@plt>:
  400860:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602fc8 <rand@plt+0x202738>
  400866:	66 90                	xchg   %ax,%ax

0000000000400868 <__gmon_start__@plt>:
  400868:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602fd0 <rand@plt+0x202740>
  40086e:	66 90                	xchg   %ax,%ax

0000000000400870 <time@plt>:
  400870:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602fd8 <rand@plt+0x202748>
  400876:	66 90                	xchg   %ax,%ax

0000000000400878 <malloc@plt>:
  400878:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602fe0 <rand@plt+0x202750>
  40087e:	66 90                	xchg   %ax,%ax

0000000000400880 <__isoc99_scanf@plt>:
  400880:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602fe8 <rand@plt+0x202758>
  400886:	66 90                	xchg   %ax,%ax

0000000000400888 <exit@plt>:
  400888:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602ff0 <rand@plt+0x202760>
  40088e:	66 90                	xchg   %ax,%ax

0000000000400890 <rand@plt>:
  400890:	ff 25 62 27 20 00    	jmpq   *0x202762(%rip)        # 602ff8 <rand@plt+0x202768>
  400896:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000004008a0 <.text>:
  4008a0:	31 ed                	xor    %ebp,%ebp
  4008a2:	49 89 d1             	mov    %rdx,%r9
  4008a5:	5e                   	pop    %rsi
  4008a6:	48 89 e2             	mov    %rsp,%rdx                   # error
  4008a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4008ad:	50                   	push   %rax
  4008ae:	54                   	push   %rsp
  4008af:	49 c7 c0 80 0f 40 00 	mov    $0x400f80,%r8
  4008b6:	48 c7 c1 10 0f 40 00 	mov    $0x400f10,%rcx
  4008bd:	48 c7 c7 0b 0e 40 00 	mov    $0x400e0b,%rdi
  4008c4:	e8 87 ff ff ff       	callq  400850 <__libc_start_main@plt>
  4008c9:	f4                   	hlt    
  4008ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)


  4008d0:	b8 1f 30 60 00       	mov    $0x60301f,%eax
  4008d5:	55                   	push   %rbp
  4008d6:	48 2d 18 30 60 00    	sub    $0x603018,%rax
  4008dc:	48 83 f8 0e          	cmp    $0xe,%rax
  4008e0:	48 89 e5             	mov    %rsp,%rbp
  4008e3:	76 1b                	jbe    400900 <rand@plt+0x70>
  4008e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4008ea:	48 85 c0             	test   %rax,%rax
  4008ed:	74 11                	je     400900 <rand@plt+0x70>
  4008ef:	5d                   	pop    %rbp
  4008f0:	bf 18 30 60 00       	mov    $0x603018,%edi
  4008f5:	ff e0                	jmpq   *%rax
  4008f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4008fe:	00 00 
  400900:	5d                   	pop    %rbp
  400901:	c3                   	retq   
  400902:	0f 1f 40 00          	nopl   0x0(%rax)
  400906:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40090d:	00 00 00 
  400910:	be 18 30 60 00       	mov    $0x603018,%esi
  400915:	55                   	push   %rbp
  400916:	48 81 ee 18 30 60 00 	sub    $0x603018,%rsi
  40091d:	48 c1 fe 03          	sar    $0x3,%rsi
  400921:	48 89 e5             	mov    %rsp,%rbp
  400924:	48 89 f0             	mov    %rsi,%rax
  400927:	48 c1 e8 3f          	shr    $0x3f,%rax
  40092b:	48 01 c6             	add    %rax,%rsi
  40092e:	48 d1 fe             	sar    %rsi
  400931:	74 15                	je     400948 <rand@plt+0xb8>
  400933:	b8 00 00 00 00       	mov    $0x0,%eax
  400938:	48 85 c0             	test   %rax,%rax
  40093b:	74 0b                	je     400948 <rand@plt+0xb8>
  40093d:	5d                   	pop    %rbp
  40093e:	bf 18 30 60 00       	mov    $0x603018,%edi
  400943:	ff e0                	jmpq   *%rax
  400945:	0f 1f 00             	nopl   (%rax)
  400948:	5d                   	pop    %rbp
  400949:	c3                   	retq   
  40094a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400950:	80 3d c9 26 20 00 00 	cmpb   $0x0,0x2026c9(%rip)        # 603020 <stdout@@GLIBC_2.2.5+0x8>


  400957:	75 11                	jne    40096a <rand@plt+0xda>
  400959:	55                   	push   %rbp
  40095a:	48 89 e5             	mov    %rsp,%rbp
  40095d:	e8 6e ff ff ff       	callq  4008d0 <rand@plt+0x40>
  400962:	5d                   	pop    %rbp
  400963:	c6 05 b6 26 20 00 01 	movb   $0x1,0x2026b6(%rip)        # 603020 <stdout@@GLIBC_2.2.5+0x8>
  40096a:	f3 c3                	repz retq 
  40096c:	0f 1f 40 00          	nopl   0x0(%rax)
  400970:	bf 98 2d 60 00       	mov    $0x602d98,%edi


  400975:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400979:	75 05                	jne    400980 <rand@plt+0xf0>
  40097b:	eb 93                	jmp    400910 <rand@plt+0x80>
  40097d:	0f 1f 00             	nopl   (%rax)
  400980:	b8 00 00 00 00       	mov    $0x0,%eax
  400985:	48 85 c0             	test   %rax,%rax
  400988:	74 f1                	je     40097b <rand@plt+0xeb>
  40098a:	55                   	push   %rbp
  40098b:	48 89 e5             	mov    %rsp,%rbp
  40098e:	ff d0                	callq  *%rax
  400990:	5d                   	pop    %rbp
  400991:	e9 7a ff ff ff       	jmpq   400910 <rand@plt+0x80>
  400996:	55                   	push   %rbp


  400997:	48 89 e5             	mov    %rsp,%rbp
  40099a:	48 83 ec 10          	sub    $0x10,%rsp
  40099e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4009a5:	00 00 
  4009a7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4009ab:	31 c0                	xor    %eax,%eax
  4009ad:	bf 1f 17 40 00       	mov    $0x40171f,%edi
  4009b2:	e8 59 fe ff ff       	callq  400810 <puts@plt>
  4009b7:	48 8b 05 52 26 20 00 	mov    0x202652(%rip),%rax        # 603010 <rand@plt+0x202780>
  4009be:	48 89 c7             	mov    %rax,%rdi
  4009c1:	e8 4a fe ff ff       	callq  400810 <puts@plt>
  4009c6:	90                   	nop
  4009c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009cb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4009d2:	00 00 
  4009d4:	74 05                	je     4009db <rand@plt+0x14b>
  4009d6:	e8 45 fe ff ff       	callq  400820 <__stack_chk_fail@plt>
  4009db:	c9                   	leaveq 
  4009dc:	c3                   	retq   
  4009dd:	55                   	push   %rbp
  4009de:	48 89 e5             	mov    %rsp,%rbp
  4009e1:	48 83 ec 10          	sub    $0x10,%rsp
  4009e5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4009ec:	00 00 
  4009ee:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4009f2:	31 c0                	xor    %eax,%eax
  4009f4:	bf 38 17 40 00       	mov    $0x401738,%edi
  4009f9:	e8 12 fe ff ff       	callq  400810 <puts@plt>
  4009fe:	bf 70 17 40 00       	mov    $0x401770,%edi
  400a03:	e8 08 fe ff ff       	callq  400810 <puts@plt>
  400a08:	bf 00 00 00 00       	mov    $0x0,%edi
  400a0d:	e8 5e fe ff ff       	callq  400870 <time@plt>
  400a12:	89 c7                	mov    %eax,%edi
  400a14:	e8 3f fe ff ff       	callq  400858 <srand@plt>
  400a19:	e8 72 fe ff ff       	callq  400890 <rand@plt>
  400a1e:	89 c2                	mov    %eax,%edx
  400a20:	89 d0                	mov    %edx,%eax
  400a22:	c1 f8 1f             	sar    $0x1f,%eax
  400a25:	c1 e8 1f             	shr    $0x1f,%eax
  400a28:	01 c2                	add    %eax,%edx
  400a2a:	83 e2 01             	and    $0x1,%edx
  400a2d:	29 c2                	sub    %eax,%edx
  400a2f:	89 d0                	mov    %edx,%eax
  400a31:	89 45 f4             	mov    %eax,-0xc(%rbp)
  400a34:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  400a38:	48 89 c6             	mov    %rax,%rsi
  400a3b:	bf 9a 17 40 00       	mov    $0x40179a,%edi
  400a40:	b8 00 00 00 00       	mov    $0x0,%eax
  400a45:	e8 36 fe ff ff       	callq  400880 <__isoc99_scanf@plt>
  400a4a:	8b 45 f0             	mov    -0x10(%rbp),%eax
  400a4d:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  400a50:	75 16                	jne    400a68 <rand@plt+0x1d8>
  400a52:	bf a0 17 40 00       	mov    $0x4017a0,%edi
  400a57:	e8 b4 fd ff ff       	callq  400810 <puts@plt>
  400a5c:	bf 70 17 40 00       	mov    $0x401770,%edi
  400a61:	e8 aa fd ff ff       	callq  400810 <puts@plt>
  400a66:	eb b1                	jmp    400a19 <rand@plt+0x189>
  400a68:	90                   	nop
  400a69:	bf c7 17 40 00       	mov    $0x4017c7,%edi
  400a6e:	e8 9d fd ff ff       	callq  400810 <puts@plt>
  400a73:	bf 00 00 00 00       	mov    $0x0,%edi
  400a78:	e8 0b fe ff ff       	callq  400888 <exit@plt>
  400a7d:	55                   	push   %rbp
  400a7e:	48 89 e5             	mov    %rsp,%rbp
  400a81:	48 83 ec 10          	sub    $0x10,%rsp
  400a85:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400a8c:	00 00 
  400a8e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a92:	31 c0                	xor    %eax,%eax
  400a94:	bf d8 17 40 00       	mov    $0x4017d8,%edi
  400a99:	e8 72 fd ff ff       	callq  400810 <puts@plt>
  400a9e:	bf 20 18 40 00       	mov    $0x401820,%edi
  400aa3:	e8 68 fd ff ff       	callq  400810 <puts@plt>
  400aa8:	bf 68 18 40 00       	mov    $0x401868,%edi
  400aad:	e8 5e fd ff ff       	callq  400810 <puts@plt>
  400ab2:	bf b8 18 40 00       	mov    $0x4018b8,%edi
  400ab7:	e8 54 fd ff ff       	callq  400810 <puts@plt>
  400abc:	bf 08 19 40 00       	mov    $0x401908,%edi
  400ac1:	e8 4a fd ff ff       	callq  400810 <puts@plt>
  400ac6:	bf 58 19 40 00       	mov    $0x401958,%edi
  400acb:	e8 40 fd ff ff       	callq  400810 <puts@plt>
  400ad0:	bf a0 19 40 00       	mov    $0x4019a0,%edi
  400ad5:	e8 36 fd ff ff       	callq  400810 <puts@plt>
  400ada:	bf f0 19 40 00       	mov    $0x4019f0,%edi
  400adf:	e8 2c fd ff ff       	callq  400810 <puts@plt>
  400ae4:	bf 18 1a 40 00       	mov    $0x401a18,%edi
  400ae9:	e8 22 fd ff ff       	callq  400810 <puts@plt>
  400aee:	bf 40 1a 40 00       	mov    $0x401a40,%edi
  400af3:	e8 18 fd ff ff       	callq  400810 <puts@plt>
  400af8:	bf 68 1a 40 00       	mov    $0x401a68,%edi
  400afd:	e8 0e fd ff ff       	callq  400810 <puts@plt>
  400b02:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  400b06:	48 89 c6             	mov    %rax,%rsi
  400b09:	bf 8b 1a 40 00       	mov    $0x401a8b,%edi
  400b0e:	b8 00 00 00 00       	mov    $0x0,%eax
  400b13:	e8 68 fd ff ff       	callq  400880 <__isoc99_scanf@plt>
  400b18:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  400b1c:	be 8e 1a 40 00       	mov    $0x401a8e,%esi
  400b21:	48 89 c7             	mov    %rax,%rdi
  400b24:	e8 37 fd ff ff       	callq  400860 <strcmp@plt>
  400b29:	85 c0                	test   %eax,%eax
  400b2b:	74 2b                	je     400b58 <rand@plt+0x2c8>
  400b2d:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  400b31:	be 8e 1a 40 00       	mov    $0x401a8e,%esi
  400b36:	48 89 c7             	mov    %rax,%rdi
  400b39:	e8 22 fd ff ff       	callq  400860 <strcmp@plt>
  400b3e:	85 c0                	test   %eax,%eax
  400b40:	74 16                	je     400b58 <rand@plt+0x2c8>
  400b42:	bf 93 1a 40 00       	mov    $0x401a93,%edi
  400b47:	e8 c4 fc ff ff       	callq  400810 <puts@plt>
  400b4c:	bf a5 1a 40 00       	mov    $0x401aa5,%edi
  400b51:	e8 ba fc ff ff       	callq  400810 <puts@plt>
  400b56:	eb aa                	jmp    400b02 <rand@plt+0x272>
  400b58:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  400b5c:	be 8e 1a 40 00       	mov    $0x401a8e,%esi
  400b61:	48 89 c7             	mov    %rax,%rdi
  400b64:	e8 f7 fc ff ff       	callq  400860 <strcmp@plt>
  400b69:	85 c0                	test   %eax,%eax
  400b6b:	74 35                	je     400ba2 <rand@plt+0x312>
  400b6d:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  400b71:	be bd 1a 40 00       	mov    $0x401abd,%esi
  400b76:	48 89 c7             	mov    %rax,%rdi
  400b79:	e8 e2 fc ff ff       	callq  400860 <strcmp@plt>
  400b7e:	85 c0                	test   %eax,%eax
  400b80:	75 0c                	jne    400b8e <rand@plt+0x2fe>
  400b82:	b8 00 00 00 00       	mov    $0x0,%eax
  400b87:	e8 51 fe ff ff       	callq  4009dd <rand@plt+0x14d>
  400b8c:	eb 15                	jmp    400ba3 <rand@plt+0x313>
  400b8e:	bf c0 1a 40 00       	mov    $0x401ac0,%edi
  400b93:	e8 78 fc ff ff       	callq  400810 <puts@plt>
  400b98:	bf 00 00 00 00       	mov    $0x0,%edi
  400b9d:	e8 e6 fc ff ff       	callq  400888 <exit@plt>
  400ba2:	90                   	nop
  400ba3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400ba7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  400bae:	00 00 
  400bb0:	74 05                	je     400bb7 <rand@plt+0x327>
  400bb2:	e8 69 fc ff ff       	callq  400820 <__stack_chk_fail@plt>
  400bb7:	c9                   	leaveq 
  400bb8:	c3                   	retq   

  400bb9:	55                   	push   %rbp
  400bba:	48 89 e5             	mov    %rsp,%rbp
  400bbd:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  400bc1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400bc8:	00 00 
  400bca:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400bce:	31 c0                	xor    %eax,%eax
  400bd0:	48 c7 45 88 00 00 00 	movq   $0x0,-0x78(%rbp)
  400bd7:	00 
  400bd8:	bf d8 1a 40 00       	mov    $0x401ad8,%edi
  400bdd:	e8 2e fc ff ff       	callq  400810 <puts@plt>
  400be2:	bf 20 1b 40 00       	mov    $0x401b20,%edi
  400be7:	e8 24 fc ff ff       	callq  400810 <puts@plt>
  400bec:	bf 60 1b 40 00       	mov    $0x401b60,%edi
  400bf1:	e8 1a fc ff ff       	callq  400810 <puts@plt>
  400bf6:	bf b0 1b 40 00       	mov    $0x401bb0,%edi
  400bfb:	e8 10 fc ff ff       	callq  400810 <puts@plt>
  400c00:	48 8d 45 84          	lea    -0x7c(%rbp),%rax
  400c04:	48 89 c6             	mov    %rax,%rsi
  400c07:	bf 9a 17 40 00       	mov    $0x40179a,%edi
  400c0c:	b8 00 00 00 00       	mov    $0x0,%eax
  400c11:	e8 6a fc ff ff       	callq  400880 <__isoc99_scanf@plt>
  400c16:	8b 45 84             	mov    -0x7c(%rbp),%eax
  400c19:	83 f8 01             	cmp    $0x1,%eax
  400c1c:	75 71                	jne    400c8f <rand@plt+0x3ff>
  400c1e:	bf d0 1b 40 00       	mov    $0x401bd0,%edi
  400c23:	e8 e8 fb ff ff       	callq  400810 <puts@plt>
  400c28:	bf eb 1b 40 00       	mov    $0x401beb,%edi
  400c2d:	e8 de fb ff ff       	callq  400810 <puts@plt>
  400c32:	48 8d 45 88          	lea    -0x78(%rbp),%rax
  400c36:	48 89 c6             	mov    %rax,%rsi
  400c39:	bf 00 1c 40 00       	mov    $0x401c00,%edi
  400c3e:	b8 00 00 00 00       	mov    $0x0,%eax
  400c43:	e8 38 fc ff ff       	callq  400880 <__isoc99_scanf@plt>
  400c48:	bf 04 1c 40 00       	mov    $0x401c04,%edi
  400c4d:	e8 be fb ff ff       	callq  400810 <puts@plt>
  400c52:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  400c56:	48 89 c6             	mov    %rax,%rsi
  400c59:	bf 8b 1a 40 00       	mov    $0x401a8b,%edi
  400c5e:	b8 00 00 00 00       	mov    $0x0,%eax
  400c63:	e8 18 fc ff ff       	callq  400880 <__isoc99_scanf@plt>
  400c68:	bf 16 1c 40 00       	mov    $0x401c16,%edi
  400c6d:	e8 9e fb ff ff       	callq  400810 <puts@plt>
  400c72:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  400c76:	48 89 c7             	mov    %rax,%rdi
  400c79:	b8 00 00 00 00       	mov    $0x0,%eax
  400c7e:	e8 b5 fb ff ff       	callq  400838 <printf@plt>
  400c83:	bf 23 1c 40 00       	mov    $0x401c23,%edi
  400c88:	e8 83 fb ff ff       	callq  400810 <puts@plt>
  400c8d:	eb 01                	jmp    400c90 <rand@plt+0x400>
  400c8f:	90                   	nop
  400c90:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400c94:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  400c9b:	00 00 
  400c9d:	74 05                	je     400ca4 <rand@plt+0x414>
  400c9f:	e8 7c fb ff ff       	callq  400820 <__stack_chk_fail@plt>
  400ca4:	c9                   	leaveq 
  400ca5:	c3                   	retq   
  400ca6:	55                   	push   %rbp
  400ca7:	48 89 e5             	mov    %rsp,%rbp
  400caa:	48 83 ec 20          	sub    $0x20,%rsp
  400cae:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400cb2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400cb9:	00 00 
  400cbb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400cbf:	31 c0                	xor    %eax,%eax
  400cc1:	bf 40 1c 40 00       	mov    $0x401c40,%edi
  400cc6:	e8 45 fb ff ff       	callq  400810 <puts@plt>
  400ccb:	bf 70 1c 40 00       	mov    $0x401c70,%edi
  400cd0:	e8 3b fb ff ff       	callq  400810 <puts@plt>
  400cd5:	bf a8 1c 40 00       	mov    $0x401ca8,%edi
  400cda:	e8 31 fb ff ff       	callq  400810 <puts@plt>
  400cdf:	bf e8 1c 40 00       	mov    $0x401ce8,%edi
  400ce4:	e8 27 fb ff ff       	callq  400810 <puts@plt>
  400ce9:	bf 10 1d 40 00       	mov    $0x401d10,%edi
  400cee:	e8 1d fb ff ff       	callq  400810 <puts@plt>
  400cf3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400cf7:	8b 10                	mov    (%rax),%edx
  400cf9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400cfd:	48 83 c0 04          	add    $0x4,%rax
  400d01:	8b 00                	mov    (%rax),%eax
  400d03:	39 c2                	cmp    %eax,%edx
  400d05:	75 54                	jne    400d5b <rand@plt+0x4cb>
  400d07:	bf 58 1d 40 00       	mov    $0x401d58,%edi
  400d0c:	e8 ff fa ff ff       	callq  400810 <puts@plt>
  400d11:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  400d17:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  400d1d:	b9 21 00 00 00       	mov    $0x21,%ecx
  400d22:	ba 07 00 00 00       	mov    $0x7,%edx
  400d27:	be 00 10 00 00       	mov    $0x1000,%esi
  400d2c:	bf 00 00 00 00       	mov    $0x0,%edi
  400d31:	e8 f2 fa ff ff       	callq  400828 <mmap@plt>
  400d36:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400d3a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d3e:	ba 00 01 00 00       	mov    $0x100,%edx
  400d43:	48 89 c6             	mov    %rax,%rsi
  400d46:	bf 00 00 00 00       	mov    $0x0,%edi
  400d4b:	e8 f8 fa ff ff       	callq  400848 <read@plt>
  400d50:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d54:	bf 00 00 00 00       	mov    $0x0,%edi
  400d59:	ff d0                	callq  *%rax
  400d5b:	90                   	nop
  400d5c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400d60:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  400d67:	00 00 
  400d69:	74 05                	je     400d70 <rand@plt+0x4e0>
  400d6b:	e8 b0 fa ff ff       	callq  400820 <__stack_chk_fail@plt>
  400d70:	c9                   	leaveq 
  400d71:	c3                   	retq   
  
  400d72:	55                   	push   %rbp
  400d73:	48 89 e5             	mov    %rsp,%rbp
  400d76:	48 83 ec 30          	sub    $0x30,%rsp
  400d7a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400d7e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400d85:	00 00 
  400d87:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400d8b:	31 c0                	xor    %eax,%eax
  400d8d:	bf 80 1d 40 00       	mov    $0x401d80,%edi
  400d92:	e8 79 fa ff ff       	callq  400810 <puts@plt>
  400d97:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400d9b:	48 89 c6             	mov    %rax,%rsi
  400d9e:	bf 8b 1a 40 00       	mov    $0x401a8b,%edi
  400da3:	b8 00 00 00 00       	mov    $0x0,%eax
  400da8:	e8 d3 fa ff ff       	callq  400880 <__isoc99_scanf@plt>
  400dad:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400db1:	48 89 c7             	mov    %rax,%rdi
  400db4:	e8 5f fa ff ff       	callq  400818 <strlen@plt>
  400db9:	48 83 f8 0c          	cmp    $0xc,%rax
  400dbd:	76 0c                	jbe    400dcb <rand@plt+0x53b>
  400dbf:	bf a6 1d 40 00       	mov    $0x401da6,%edi
  400dc4:	e8 47 fa ff ff       	callq  400810 <puts@plt>
  400dc9:	eb 2a                	jmp    400df5 <rand@plt+0x565>
  400dcb:	bf b6 1d 40 00       	mov    $0x401db6,%edi
  400dd0:	e8 3b fa ff ff       	callq  400810 <puts@plt>
  400dd5:	b8 00 00 00 00       	mov    $0x0,%eax
  400dda:	e8 9e fc ff ff       	callq  400a7d <rand@plt+0x1ed>
  400ddf:	b8 00 00 00 00       	mov    $0x0,%eax
  400de4:	e8 d0 fd ff ff       	callq  400bb9 <rand@plt+0x329>
  400de9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400ded:	48 89 c7             	mov    %rax,%rdi
  400df0:	e8 b1 fe ff ff       	callq  400ca6 <rand@plt+0x416>
  400df5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400df9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  400e00:	00 00 
  400e02:	74 05                	je     400e09 <rand@plt+0x579>
  400e04:	e8 17 fa ff ff       	callq  400820 <__stack_chk_fail@plt>
  400e09:	c9                   	leaveq 
  400e0a:	c3                   	retq
  
     
  400e0b:	55                   	push   %rbp
  400e0c:	48 89 e5             	mov    %rsp,%rbp
  400e0f:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  400e16:	89 bd 7c ff ff ff    	mov    %edi,-0x84(%rbp)
  400e1c:	48 89 b5 70 ff ff ff 	mov    %rsi,-0x90(%rbp)
  400e23:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400e2a:	00 00 
  400e2c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400e30:	31 c0                	xor    %eax,%eax
  400e32:	48 8b 05 df 21 20 00 	mov    0x2021df(%rip),%rax        # 603018 <stdout@@GLIBC_2.2.5>
  400e39:	be 00 00 00 00       	mov    $0x0,%esi
  400e3e:	48 89 c7             	mov    %rax,%rdi
  400e41:	e8 ea f9 ff ff       	callq  400830 <setbuf@plt>
  400e46:	bf 3c 00 00 00       	mov    $0x3c,%edi
  400e4b:	e8 f0 f9 ff ff       	callq  400840 <alarm@plt>
  400e50:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
  400e57:	00 
  400e58:	b8 00 00 00 00       	mov    $0x0,%eax
  400e5d:	e8 34 fb ff ff       	callq  400996 <rand@plt+0x106>
  400e62:	bf 08 00 00 00       	mov    $0x8,%edi
  400e67:	e8 0c fa ff ff       	callq  400878 <malloc@plt>
  400e6c:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  400e70:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  400e74:	c7 00 44 00 00 00    	movl   $0x44,(%rax)
  400e7a:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  400e7e:	48 83 c0 04          	add    $0x4,%rax
  400e82:	c7 00 55 00 00 00    	movl   $0x55,(%rax)
  400e88:	bf d0 1d 40 00       	mov    $0x401dd0,%edi
  400e8d:	e8 7e f9 ff ff       	callq  400810 <puts@plt>
  400e92:	bf 20 1e 40 00       	mov    $0x401e20,%edi
  400e97:	e8 74 f9 ff ff       	callq  400810 <puts@plt>
  400e9c:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  400ea0:	48 89 c6             	mov    %rax,%rsi
  400ea3:	bf 40 1e 40 00       	mov    $0x401e40,%edi
  400ea8:	b8 00 00 00 00       	mov    $0x0,%eax
  400ead:	e8 86 f9 ff ff       	callq  400838 <printf@plt>
  400eb2:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  400eb6:	48 83 c0 04          	add    $0x4,%rax
  400eba:	48 89 c6             	mov    %rax,%rsi
  400ebd:	bf 51 1e 40 00       	mov    $0x401e51,%edi
  400ec2:	b8 00 00 00 00       	mov    $0x0,%eax
  400ec7:	e8 6c f9 ff ff       	callq  400838 <printf@plt>
  400ecc:	bf 62 1e 40 00       	mov    $0x401e62,%edi
  400ed1:	e8 3a f9 ff ff       	callq  400810 <puts@plt>
  400ed6:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  400eda:	48 89 c7             	mov    %rax,%rdi
  400edd:	e8 90 fe ff ff       	callq  400d72 <rand@plt+0x4e2>
  400ee2:	bf 76 1e 40 00       	mov    $0x401e76,%edi
  400ee7:	e8 24 f9 ff ff       	callq  400810 <puts@plt>
  400eec:	b8 00 00 00 00       	mov    $0x0,%eax
  400ef1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400ef5:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  400efc:	00 00 
  400efe:	74 05                	je     400f05 <rand@plt+0x675>
  400f00:	e8 1b f9 ff ff       	callq  400820 <__stack_chk_fail@plt>
  400f05:	c9                   	leaveq 
  400f06:	c3                   	retq   
  400f07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400f0e:	00 00 
  400f10:	41 57                	push   %r15
  400f12:	41 56                	push   %r14
  400f14:	41 89 ff             	mov    %edi,%r15d
  400f17:	41 55                	push   %r13
  400f19:	41 54                	push   %r12
  400f1b:	4c 8d 25 66 1e 20 00 	lea    0x201e66(%rip),%r12        # 602d88 <rand@plt+0x2024f8>
  400f22:	55                   	push   %rbp
  400f23:	48 8d 2d 66 1e 20 00 	lea    0x201e66(%rip),%rbp        # 602d90 <rand@plt+0x202500>
  400f2a:	53                   	push   %rbx
  400f2b:	49 89 f6             	mov    %rsi,%r14
  400f2e:	49 89 d5             	mov    %rdx,%r13
  400f31:	4c 29 e5             	sub    %r12,%rbp
  400f34:	48 83 ec 08          	sub    $0x8,%rsp
  400f38:	48 c1 fd 03          	sar    $0x3,%rbp
  400f3c:	e8 9f f8 ff ff       	callq  4007e0 <puts@plt-0x30>
  400f41:	48 85 ed             	test   %rbp,%rbp
  400f44:	74 20                	je     400f66 <rand@plt+0x6d6>
  400f46:	31 db                	xor    %ebx,%ebx
  400f48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400f4f:	00 
  400f50:	4c 89 ea             	mov    %r13,%rdx
  400f53:	4c 89 f6             	mov    %r14,%rsi
  400f56:	44 89 ff             	mov    %r15d,%edi
  400f59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400f5d:	48 83 c3 01          	add    $0x1,%rbx
  400f61:	48 39 eb             	cmp    %rbp,%rbx
  400f64:	75 ea                	jne    400f50 <rand@plt+0x6c0>
  400f66:	48 83 c4 08          	add    $0x8,%rsp
  400f6a:	5b                   	pop    %rbx
  400f6b:	5d                   	pop    %rbp
  400f6c:	41 5c                	pop    %r12
  400f6e:	41 5d                	pop    %r13
  400f70:	41 5e                	pop    %r14
  400f72:	41 5f                	pop    %r15
  400f74:	c3                   	retq   
  400f75:	90                   	nop
  400f76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f7d:	00 00 00 
  400f80:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400f84 <.fini>:
  400f84:	48 83 ec 08          	sub    $0x8,%rsp
  400f88:	48 83 c4 08          	add    $0x8,%rsp
  400f8c:	c3                   	retq   
