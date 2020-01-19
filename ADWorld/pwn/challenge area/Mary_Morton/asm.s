
Mary_Morton:     file format elf64-x86-64


Disassembly of section .init:

0000000000400648 <.init>:
  400648:	48 83 ec 08          	sub    $0x8,%rsp
  40064c:	48 8b 05 a5 09 20 00 	mov    0x2009a5(%rip),%rax        # 600ff8 <__gmon_start__@plt+0x2008d8>
  400653:	48 85 c0             	test   %rax,%rax
  400656:	74 05                	je     40065d <puts@plt-0x23>
  400658:	e8 c3 00 00 00       	callq  400720 <__gmon_start__@plt>
  40065d:	48 83 c4 08          	add    $0x8,%rsp
  400661:	c3                   	retq   

Disassembly of section .plt:

0000000000400670 <puts@plt-0x10>:
  400670:	ff 35 92 09 20 00    	pushq  0x200992(%rip)        # 601008 <__gmon_start__@plt+0x2008e8>
  400676:	ff 25 94 09 20 00    	jmpq   *0x200994(%rip)        # 601010 <__gmon_start__@plt+0x2008f0>
  40067c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400680 <puts@plt>:
  400680:	ff 25 92 09 20 00    	jmpq   *0x200992(%rip)        # 601018 <__gmon_start__@plt+0x2008f8>
  400686:	68 00 00 00 00       	pushq  $0x0
  40068b:	e9 e0 ff ff ff       	jmpq   400670 <puts@plt-0x10>

0000000000400690 <__stack_chk_fail@plt>:
  400690:	ff 25 8a 09 20 00    	jmpq   *0x20098a(%rip)        # 601020 <__gmon_start__@plt+0x200900>
  400696:	68 01 00 00 00       	pushq  $0x1
  40069b:	e9 d0 ff ff ff       	jmpq   400670 <puts@plt-0x10>

00000000004006a0 <system@plt>:
  4006a0:	ff 25 82 09 20 00    	jmpq   *0x200982(%rip)        # 601028 <__gmon_start__@plt+0x200908>
  4006a6:	68 02 00 00 00       	pushq  $0x2
  4006ab:	e9 c0 ff ff ff       	jmpq   400670 <puts@plt-0x10>

00000000004006b0 <printf@plt>:
  4006b0:	ff 25 7a 09 20 00    	jmpq   *0x20097a(%rip)        # 601030 <__gmon_start__@plt+0x200910>
  4006b6:	68 03 00 00 00       	pushq  $0x3
  4006bb:	e9 b0 ff ff ff       	jmpq   400670 <puts@plt-0x10>

00000000004006c0 <alarm@plt>:
  4006c0:	ff 25 72 09 20 00    	jmpq   *0x200972(%rip)        # 601038 <__gmon_start__@plt+0x200918>
  4006c6:	68 04 00 00 00       	pushq  $0x4
  4006cb:	e9 a0 ff ff ff       	jmpq   400670 <puts@plt-0x10>

00000000004006d0 <read@plt>:
  4006d0:	ff 25 6a 09 20 00    	jmpq   *0x20096a(%rip)        # 601040 <__gmon_start__@plt+0x200920>
  4006d6:	68 05 00 00 00       	pushq  $0x5
  4006db:	e9 90 ff ff ff       	jmpq   400670 <puts@plt-0x10>

00000000004006e0 <__libc_start_main@plt>:
  4006e0:	ff 25 62 09 20 00    	jmpq   *0x200962(%rip)        # 601048 <__gmon_start__@plt+0x200928>
  4006e6:	68 06 00 00 00       	pushq  $0x6
  4006eb:	e9 80 ff ff ff       	jmpq   400670 <puts@plt-0x10>

00000000004006f0 <setvbuf@plt>:
  4006f0:	ff 25 5a 09 20 00    	jmpq   *0x20095a(%rip)        # 601050 <__gmon_start__@plt+0x200930>
  4006f6:	68 07 00 00 00       	pushq  $0x7
  4006fb:	e9 70 ff ff ff       	jmpq   400670 <puts@plt-0x10>

0000000000400700 <__isoc99_scanf@plt>:
  400700:	ff 25 52 09 20 00    	jmpq   *0x200952(%rip)        # 601058 <__gmon_start__@plt+0x200938>
  400706:	68 08 00 00 00       	pushq  $0x8
  40070b:	e9 60 ff ff ff       	jmpq   400670 <puts@plt-0x10>

0000000000400710 <exit@plt>:
  400710:	ff 25 4a 09 20 00    	jmpq   *0x20094a(%rip)        # 601060 <__gmon_start__@plt+0x200940>
  400716:	68 09 00 00 00       	pushq  $0x9
  40071b:	e9 50 ff ff ff       	jmpq   400670 <puts@plt-0x10>

Disassembly of section .plt.got:

0000000000400720 <__gmon_start__@plt>:
  400720:	ff 25 d2 08 20 00    	jmpq   *0x2008d2(%rip)        # 600ff8 <__gmon_start__@plt+0x2008d8>
  400726:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400730 <.text>:
  400730:	31 ed                	xor    %ebp,%ebp
  400732:	49 89 d1             	mov    %rdx,%r9
  400735:	5e                   	pop    %rsi
  400736:	48 89 e2             	mov    %rsp,%rdx
  400739:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40073d:	50                   	push   %rax
  40073e:	54                   	push   %rsp
  40073f:	49 c7 c0 c0 0a 40 00 	mov    $0x400ac0,%r8
  400746:	48 c7 c1 50 0a 40 00 	mov    $0x400a50,%rcx
  40074d:	48 c7 c7 26 08 40 00 	mov    $0x400826,%rdi
  400754:	e8 87 ff ff ff       	callq  4006e0 <__libc_start_main@plt>
  400759:	f4                   	hlt    
  40075a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400760:	b8 7f 10 60 00       	mov    $0x60107f,%eax
  400765:	55                   	push   %rbp
  400766:	48 2d 78 10 60 00    	sub    $0x601078,%rax
  40076c:	48 83 f8 0e          	cmp    $0xe,%rax
  400770:	48 89 e5             	mov    %rsp,%rbp
  400773:	76 1b                	jbe    400790 <__gmon_start__@plt+0x70>
  400775:	b8 00 00 00 00       	mov    $0x0,%eax
  40077a:	48 85 c0             	test   %rax,%rax
  40077d:	74 11                	je     400790 <__gmon_start__@plt+0x70>
  40077f:	5d                   	pop    %rbp
  400780:	bf 78 10 60 00       	mov    $0x601078,%edi
  400785:	ff e0                	jmpq   *%rax
  400787:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40078e:	00 00 
  400790:	5d                   	pop    %rbp
  400791:	c3                   	retq   
  400792:	0f 1f 40 00          	nopl   0x0(%rax)
  400796:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40079d:	00 00 00 
  4007a0:	be 78 10 60 00       	mov    $0x601078,%esi
  4007a5:	55                   	push   %rbp
  4007a6:	48 81 ee 78 10 60 00 	sub    $0x601078,%rsi
  4007ad:	48 c1 fe 03          	sar    $0x3,%rsi
  4007b1:	48 89 e5             	mov    %rsp,%rbp
  4007b4:	48 89 f0             	mov    %rsi,%rax
  4007b7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4007bb:	48 01 c6             	add    %rax,%rsi
  4007be:	48 d1 fe             	sar    %rsi
  4007c1:	74 15                	je     4007d8 <__gmon_start__@plt+0xb8>
  4007c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4007c8:	48 85 c0             	test   %rax,%rax
  4007cb:	74 0b                	je     4007d8 <__gmon_start__@plt+0xb8>
  4007cd:	5d                   	pop    %rbp
  4007ce:	bf 78 10 60 00       	mov    $0x601078,%edi
  4007d3:	ff e0                	jmpq   *%rax
  4007d5:	0f 1f 00             	nopl   (%rax)
  4007d8:	5d                   	pop    %rbp
  4007d9:	c3                   	retq   
  4007da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4007e0:	80 3d b1 08 20 00 00 	cmpb   $0x0,0x2008b1(%rip)        # 601098 <stdin@@GLIBC_2.2.5+0x8>
  4007e7:	75 11                	jne    4007fa <__gmon_start__@plt+0xda>
  4007e9:	55                   	push   %rbp
  4007ea:	48 89 e5             	mov    %rsp,%rbp
  4007ed:	e8 6e ff ff ff       	callq  400760 <__gmon_start__@plt+0x40>
  4007f2:	5d                   	pop    %rbp
  4007f3:	c6 05 9e 08 20 00 01 	movb   $0x1,0x20089e(%rip)        # 601098 <stdin@@GLIBC_2.2.5+0x8>
  4007fa:	f3 c3                	repz retq 
  4007fc:	0f 1f 40 00          	nopl   0x0(%rax)
  400800:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400805:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400809:	75 05                	jne    400810 <__gmon_start__@plt+0xf0>
  40080b:	eb 93                	jmp    4007a0 <__gmon_start__@plt+0x80>
  40080d:	0f 1f 00             	nopl   (%rax)
  400810:	b8 00 00 00 00       	mov    $0x0,%eax
  400815:	48 85 c0             	test   %rax,%rax
  400818:	74 f1                	je     40080b <__gmon_start__@plt+0xeb>
  40081a:	55                   	push   %rbp
  40081b:	48 89 e5             	mov    %rsp,%rbp
  40081e:	ff d0                	callq  *%rax
  400820:	5d                   	pop    %rbp
  400821:	e9 7a ff ff ff       	jmpq   4007a0 <__gmon_start__@plt+0x80>

  // main
  400826:	55                   	push   %rbp
  400827:	48 89 e5             	mov    %rsp,%rbp
  40082a:	48 83 ec 30          	sub    $0x30,%rsp
  40082e:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400831:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400835:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  400839:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400840:	00 00 
  400842:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400846:	31 c0                	xor    %eax,%eax
  400848:	b8 00 00 00 00       	mov    $0x0,%eax
  40084d:	e8 ad 01 00 00       	callq  4009ff <__gmon_start__@plt+0x2df>
  400852:	bf d4 0a 40 00       	mov    $0x400ad4,%edi
  400857:	e8 24 fe ff ff       	callq  400680 <puts@plt>
  40085c:	bf ed 0a 40 00       	mov    $0x400aed,%edi
  400861:	e8 1a fe ff ff       	callq  400680 <puts@plt>
  400866:	bf 08 0b 40 00       	mov    $0x400b08,%edi
  40086b:	e8 10 fe ff ff       	callq  400680 <puts@plt>
  400870:	b8 00 00 00 00       	mov    $0x0,%eax
  400875:	e8 60 01 00 00       	callq  4009da <__gmon_start__@plt+0x2ba>
  40087a:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
  40087e:	48 89 c6             	mov    %rax,%rsi
  400881:	bf 1c 0b 40 00       	mov    $0x400b1c,%edi
  400886:	b8 00 00 00 00       	mov    $0x0,%eax
  40088b:	e8 70 fe ff ff       	callq  400700 <__isoc99_scanf@plt>
  400890:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400893:	83 f8 02             	cmp    $0x2,%eax
  400896:	74 16                	je     4008ae <__gmon_start__@plt+0x18e>
  400898:	83 f8 03             	cmp    $0x3,%eax
  40089b:	74 1d                	je     4008ba <__gmon_start__@plt+0x19a>
  40089d:	83 f8 01             	cmp    $0x1,%eax
  4008a0:	75 2c                	jne    4008ce <__gmon_start__@plt+0x1ae>
  4008a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4008a7:	e8 b4 00 00 00       	callq  400960 <__gmon_start__@plt+0x240>
  4008ac:	eb 2a                	jmp    4008d8 <__gmon_start__@plt+0x1b8>
  4008ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4008b3:	e8 33 00 00 00       	callq  4008eb <__gmon_start__@plt+0x1cb>
  4008b8:	eb 1e                	jmp    4008d8 <__gmon_start__@plt+0x1b8>
  4008ba:	bf 1f 0b 40 00       	mov    $0x400b1f,%edi
  4008bf:	e8 bc fd ff ff       	callq  400680 <puts@plt>
  4008c4:	bf 00 00 00 00       	mov    $0x0,%edi
  4008c9:	e8 42 fe ff ff       	callq  400710 <exit@plt>
  4008ce:	bf 24 0b 40 00       	mov    $0x400b24,%edi
  4008d3:	e8 a8 fd ff ff       	callq  400680 <puts@plt>
  4008d8:	eb 96                	jmp    400870 <__gmon_start__@plt+0x150>
  4008da:	55                   	push   %rbp
  4008db:	48 89 e5             	mov    %rsp,%rbp
  4008de:	bf 2b 0b 40 00       	mov    $0x400b2b,%edi
  4008e3:	e8 b8 fd ff ff       	callq  4006a0 <system@plt>
  4008e8:	90                   	nop
  4008e9:	5d                   	pop    %rbp
  4008ea:	c3                   	retq   
  4008eb:	55                   	push   %rbp
  4008ec:	48 89 e5             	mov    %rsp,%rbp
  4008ef:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  4008f6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4008fd:	00 00 
  4008ff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400903:	31 c0                	xor    %eax,%eax
  400905:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
  40090c:	b8 00 00 00 00       	mov    $0x0,%eax
  400911:	b9 10 00 00 00       	mov    $0x10,%ecx
  400916:	48 89 d7             	mov    %rdx,%rdi
  400919:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40091c:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  400923:	ba 7f 00 00 00       	mov    $0x7f,%edx
  400928:	48 89 c6             	mov    %rax,%rsi
  40092b:	bf 00 00 00 00       	mov    $0x0,%edi
  400930:	e8 9b fd ff ff       	callq  4006d0 <read@plt>
  400935:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  40093c:	48 89 c7             	mov    %rax,%rdi
  40093f:	b8 00 00 00 00       	mov    $0x0,%eax
  400944:	e8 67 fd ff ff       	callq  4006b0 <printf@plt>
  400949:	90                   	nop
  40094a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40094e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  400955:	00 00 
  400957:	74 05                	je     40095e <__gmon_start__@plt+0x23e>
  400959:	e8 32 fd ff ff       	callq  400690 <__stack_chk_fail@plt>
  40095e:	c9                   	leaveq 
  40095f:	c3                   	retq   
  400960:	55                   	push   %rbp
  400961:	48 89 e5             	mov    %rsp,%rbp
  400964:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  40096b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400972:	00 00 
  400974:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400978:	31 c0                	xor    %eax,%eax
  40097a:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
  400981:	b8 00 00 00 00       	mov    $0x0,%eax
  400986:	b9 10 00 00 00       	mov    $0x10,%ecx
  40098b:	48 89 d7             	mov    %rdx,%rdi
  40098e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  400991:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  400998:	ba 00 01 00 00       	mov    $0x100,%edx
  40099d:	48 89 c6             	mov    %rax,%rsi
  4009a0:	bf 00 00 00 00       	mov    $0x0,%edi
  4009a5:	e8 26 fd ff ff       	callq  4006d0 <read@plt>
  4009aa:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  4009b1:	48 89 c6             	mov    %rax,%rsi
  4009b4:	bf 3b 0b 40 00       	mov    $0x400b3b,%edi
  4009b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4009be:	e8 ed fc ff ff       	callq  4006b0 <printf@plt>
  4009c3:	90                   	nop
  4009c4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009c8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4009cf:	00 00 
  4009d1:	74 05                	je     4009d8 <__gmon_start__@plt+0x2b8>
  4009d3:	e8 b8 fc ff ff       	callq  400690 <__stack_chk_fail@plt>
  4009d8:	c9                   	leaveq 
  4009d9:	c3                   	retq

  //    
  4009da:	55                   	push   %rbp
  4009db:	48 89 e5             	mov    %rsp,%rbp
  4009de:	bf 42 0b 40 00       	mov    $0x400b42,%edi
  4009e3:	e8 98 fc ff ff       	callq  400680 <puts@plt>
  4009e8:	bf 5f 0b 40 00       	mov    $0x400b5f,%edi
  4009ed:	e8 8e fc ff ff       	callq  400680 <puts@plt>
  4009f2:	bf 75 0b 40 00       	mov    $0x400b75,%edi
  4009f7:	e8 84 fc ff ff       	callq  400680 <puts@plt>
  4009fc:	90                   	nop
  4009fd:	5d                   	pop    %rbp
  4009fe:	c3                   	retq 
  
    
  4009ff:	55                   	push   %rbp
  400a00:	48 89 e5             	mov    %rsp,%rbp
  400a03:	48 8b 05 86 06 20 00 	mov    0x200686(%rip),%rax        # 601090 <stdin@@GLIBC_2.2.5>
  400a0a:	b9 00 00 00 00       	mov    $0x0,%ecx
  400a0f:	ba 01 00 00 00       	mov    $0x1,%edx
  400a14:	be 00 00 00 00       	mov    $0x0,%esi
  400a19:	48 89 c7             	mov    %rax,%rdi
  400a1c:	e8 cf fc ff ff       	callq  4006f0 <setvbuf@plt>
  400a21:	48 8b 05 58 06 20 00 	mov    0x200658(%rip),%rax        # 601080 <stdout@@GLIBC_2.2.5>
  400a28:	b9 00 00 00 00       	mov    $0x0,%ecx
  400a2d:	ba 02 00 00 00       	mov    $0x2,%edx
  400a32:	be 00 00 00 00       	mov    $0x0,%esi
  400a37:	48 89 c7             	mov    %rax,%rdi
  400a3a:	e8 b1 fc ff ff       	callq  4006f0 <setvbuf@plt>
  400a3f:	bf 14 00 00 00       	mov    $0x14,%edi
  400a44:	e8 77 fc ff ff       	callq  4006c0 <alarm@plt>
  400a49:	90                   	nop
  400a4a:	5d                   	pop    %rbp
  400a4b:	c3                   	retq   
  400a4c:	0f 1f 40 00          	nopl   0x0(%rax)
  400a50:	41 57                	push   %r15
  400a52:	41 56                	push   %r14
  400a54:	41 89 ff             	mov    %edi,%r15d
  400a57:	41 55                	push   %r13
  400a59:	41 54                	push   %r12
  400a5b:	4c 8d 25 ae 03 20 00 	lea    0x2003ae(%rip),%r12        # 600e10 <__gmon_start__@plt+0x2006f0>
  400a62:	55                   	push   %rbp
  400a63:	48 8d 2d ae 03 20 00 	lea    0x2003ae(%rip),%rbp        # 600e18 <__gmon_start__@plt+0x2006f8>
  400a6a:	53                   	push   %rbx
  400a6b:	49 89 f6             	mov    %rsi,%r14
  400a6e:	49 89 d5             	mov    %rdx,%r13
  400a71:	4c 29 e5             	sub    %r12,%rbp
  400a74:	48 83 ec 08          	sub    $0x8,%rsp
  400a78:	48 c1 fd 03          	sar    $0x3,%rbp
  400a7c:	e8 c7 fb ff ff       	callq  400648 <puts@plt-0x38>
  400a81:	48 85 ed             	test   %rbp,%rbp
  400a84:	74 20                	je     400aa6 <__gmon_start__@plt+0x386>
  400a86:	31 db                	xor    %ebx,%ebx
  400a88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a8f:	00 
  400a90:	4c 89 ea             	mov    %r13,%rdx
  400a93:	4c 89 f6             	mov    %r14,%rsi
  400a96:	44 89 ff             	mov    %r15d,%edi
  400a99:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400a9d:	48 83 c3 01          	add    $0x1,%rbx
  400aa1:	48 39 eb             	cmp    %rbp,%rbx
  400aa4:	75 ea                	jne    400a90 <__gmon_start__@plt+0x370>
  400aa6:	48 83 c4 08          	add    $0x8,%rsp
  400aaa:	5b                   	pop    %rbx
  400aab:	5d                   	pop    %rbp
  400aac:	41 5c                	pop    %r12
  400aae:	41 5d                	pop    %r13
  400ab0:	41 5e                	pop    %r14
  400ab2:	41 5f                	pop    %r15
  400ab4:	c3                   	retq   
  400ab5:	90                   	nop
  400ab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400abd:	00 00 00 
  400ac0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400ac4 <.fini>:
  400ac4:	48 83 ec 08          	sub    $0x8,%rsp
  400ac8:	48 83 c4 08          	add    $0x8,%rsp
  400acc:	c3                   	retq   
