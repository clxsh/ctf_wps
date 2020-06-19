
welpwn:     file format elf64-x86-64


Disassembly of section .init:

0000000000400570 <_init>:
  400570:	48 83 ec 08          	sub    $0x8,%rsp
  400574:	48 8b 05 7d 0a 20 00 	mov    0x200a7d(%rip),%rax        # 600ff8 <__gmon_start__>
  40057b:	48 85 c0             	test   %rax,%rax
  40057e:	74 05                	je     400585 <_init+0x15>
  400580:	e8 8b 00 00 00       	callq  400610 <__gmon_start__@plt>
  400585:	48 83 c4 08          	add    $0x8,%rsp
  400589:	c3                   	retq   

Disassembly of section .plt:

0000000000400590 <.plt>:
  400590:	ff 35 72 0a 20 00    	pushq  0x200a72(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400596:	ff 25 74 0a 20 00    	jmpq   *0x200a74(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40059c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005a0 <puts@plt>:
  4005a0:	ff 25 72 0a 20 00    	jmpq   *0x200a72(%rip)        # 601018 <puts@GLIBC_2.2.5>
  4005a6:	68 00 00 00 00       	pushq  $0x0
  4005ab:	e9 e0 ff ff ff       	jmpq   400590 <.plt>

00000000004005b0 <write@plt>:
  4005b0:	ff 25 6a 0a 20 00    	jmpq   *0x200a6a(%rip)        # 601020 <write@GLIBC_2.2.5>
  4005b6:	68 01 00 00 00       	pushq  $0x1
  4005bb:	e9 d0 ff ff ff       	jmpq   400590 <.plt>

00000000004005c0 <printf@plt>:
  4005c0:	ff 25 62 0a 20 00    	jmpq   *0x200a62(%rip)        # 601028 <printf@GLIBC_2.2.5>
  4005c6:	68 02 00 00 00       	pushq  $0x2
  4005cb:	e9 c0 ff ff ff       	jmpq   400590 <.plt>

00000000004005d0 <alarm@plt>:
  4005d0:	ff 25 5a 0a 20 00    	jmpq   *0x200a5a(%rip)        # 601030 <alarm@GLIBC_2.2.5>
  4005d6:	68 03 00 00 00       	pushq  $0x3
  4005db:	e9 b0 ff ff ff       	jmpq   400590 <.plt>

00000000004005e0 <read@plt>:
  4005e0:	ff 25 52 0a 20 00    	jmpq   *0x200a52(%rip)        # 601038 <read@GLIBC_2.2.5>
  4005e6:	68 04 00 00 00       	pushq  $0x4
  4005eb:	e9 a0 ff ff ff       	jmpq   400590 <.plt>

00000000004005f0 <__libc_start_main@plt>:
  4005f0:	ff 25 4a 0a 20 00    	jmpq   *0x200a4a(%rip)        # 601040 <__libc_start_main@GLIBC_2.2.5>
  4005f6:	68 05 00 00 00       	pushq  $0x5
  4005fb:	e9 90 ff ff ff       	jmpq   400590 <.plt>

0000000000400600 <strcmp@plt>:
  400600:	ff 25 42 0a 20 00    	jmpq   *0x200a42(%rip)        # 601048 <strcmp@GLIBC_2.2.5>
  400606:	68 06 00 00 00       	pushq  $0x6
  40060b:	e9 80 ff ff ff       	jmpq   400590 <.plt>

0000000000400610 <__gmon_start__@plt>:
  400610:	ff 25 3a 0a 20 00    	jmpq   *0x200a3a(%rip)        # 601050 <__gmon_start__>
  400616:	68 07 00 00 00       	pushq  $0x7
  40061b:	e9 70 ff ff ff       	jmpq   400590 <.plt>

0000000000400620 <fflush@plt>:
  400620:	ff 25 32 0a 20 00    	jmpq   *0x200a32(%rip)        # 601058 <fflush@GLIBC_2.2.5>
  400626:	68 08 00 00 00       	pushq  $0x8
  40062b:	e9 60 ff ff ff       	jmpq   400590 <.plt>

Disassembly of section .text:

0000000000400630 <_start>:
  400630:	31 ed                	xor    %ebp,%ebp
  400632:	49 89 d1             	mov    %rdx,%r9
  400635:	5e                   	pop    %rsi
  400636:	48 89 e2             	mov    %rsp,%rdx
  400639:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40063d:	50                   	push   %rax
  40063e:	54                   	push   %rsp
  40063f:	49 c7 c0 b0 08 40 00 	mov    $0x4008b0,%r8
  400646:	48 c7 c1 40 08 40 00 	mov    $0x400840,%rcx
  40064d:	48 c7 c7 cd 07 40 00 	mov    $0x4007cd,%rdi
  400654:	e8 97 ff ff ff       	callq  4005f0 <__libc_start_main@plt>
  400659:	f4                   	hlt    
  40065a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400660 <deregister_tm_clones>:
  400660:	b8 77 10 60 00       	mov    $0x601077,%eax
  400665:	55                   	push   %rbp
  400666:	48 2d 70 10 60 00    	sub    $0x601070,%rax
  40066c:	48 83 f8 0e          	cmp    $0xe,%rax
  400670:	48 89 e5             	mov    %rsp,%rbp
  400673:	77 02                	ja     400677 <deregister_tm_clones+0x17>
  400675:	5d                   	pop    %rbp
  400676:	c3                   	retq   
  400677:	b8 00 00 00 00       	mov    $0x0,%eax
  40067c:	48 85 c0             	test   %rax,%rax
  40067f:	74 f4                	je     400675 <deregister_tm_clones+0x15>
  400681:	5d                   	pop    %rbp
  400682:	bf 70 10 60 00       	mov    $0x601070,%edi
  400687:	ff e0                	jmpq   *%rax
  400689:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400690 <register_tm_clones>:
  400690:	b8 70 10 60 00       	mov    $0x601070,%eax
  400695:	55                   	push   %rbp
  400696:	48 2d 70 10 60 00    	sub    $0x601070,%rax
  40069c:	48 c1 f8 03          	sar    $0x3,%rax
  4006a0:	48 89 e5             	mov    %rsp,%rbp
  4006a3:	48 89 c2             	mov    %rax,%rdx
  4006a6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4006aa:	48 01 d0             	add    %rdx,%rax
  4006ad:	48 d1 f8             	sar    %rax
  4006b0:	75 02                	jne    4006b4 <register_tm_clones+0x24>
  4006b2:	5d                   	pop    %rbp
  4006b3:	c3                   	retq   
  4006b4:	ba 00 00 00 00       	mov    $0x0,%edx
  4006b9:	48 85 d2             	test   %rdx,%rdx
  4006bc:	74 f4                	je     4006b2 <register_tm_clones+0x22>
  4006be:	5d                   	pop    %rbp
  4006bf:	48 89 c6             	mov    %rax,%rsi
  4006c2:	bf 70 10 60 00       	mov    $0x601070,%edi
  4006c7:	ff e2                	jmpq   *%rdx
  4006c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006d0 <__do_global_dtors_aux>:
  4006d0:	80 3d a1 09 20 00 00 	cmpb   $0x0,0x2009a1(%rip)        # 601078 <completed.6973>
  4006d7:	75 11                	jne    4006ea <__do_global_dtors_aux+0x1a>
  4006d9:	55                   	push   %rbp
  4006da:	48 89 e5             	mov    %rsp,%rbp
  4006dd:	e8 7e ff ff ff       	callq  400660 <deregister_tm_clones>
  4006e2:	5d                   	pop    %rbp
  4006e3:	c6 05 8e 09 20 00 01 	movb   $0x1,0x20098e(%rip)        # 601078 <completed.6973>
  4006ea:	f3 c3                	repz retq 
  4006ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006f0 <frame_dummy>:
  4006f0:	48 83 3d 28 07 20 00 	cmpq   $0x0,0x200728(%rip)        # 600e20 <__JCR_END__>
  4006f7:	00 
  4006f8:	74 1e                	je     400718 <frame_dummy+0x28>
  4006fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4006ff:	48 85 c0             	test   %rax,%rax
  400702:	74 14                	je     400718 <frame_dummy+0x28>
  400704:	55                   	push   %rbp
  400705:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40070a:	48 89 e5             	mov    %rsp,%rbp
  40070d:	ff d0                	callq  *%rax
  40070f:	5d                   	pop    %rbp
  400710:	e9 7b ff ff ff       	jmpq   400690 <register_tm_clones>
  400715:	0f 1f 00             	nopl   (%rax)
  400718:	e9 73 ff ff ff       	jmpq   400690 <register_tm_clones>

000000000040071d <echo>:
  40071d:	55                   	push   %rbp
  40071e:	48 89 e5             	mov    %rsp,%rbp
  400721:	48 83 ec 20          	sub    $0x20,%rsp
  400725:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400729:	c7 05 49 09 20 00 00 	movl   $0x0,0x200949(%rip)        # 60107c <i>
  400730:	00 00 00 
  400733:	eb 2e                	jmp    400763 <echo+0x46>
  400735:	8b 05 41 09 20 00    	mov    0x200941(%rip),%eax        # 60107c <i>
  40073b:	8b 15 3b 09 20 00    	mov    0x20093b(%rip),%edx        # 60107c <i>
  400741:	48 63 ca             	movslq %edx,%rcx
  400744:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400748:	48 01 ca             	add    %rcx,%rdx
  40074b:	0f b6 12             	movzbl (%rdx),%edx
  40074e:	48 98                	cltq   
  400750:	88 54 05 f0          	mov    %dl,-0x10(%rbp,%rax,1)
  400754:	8b 05 22 09 20 00    	mov    0x200922(%rip),%eax        # 60107c <i>
  40075a:	83 c0 01             	add    $0x1,%eax
  40075d:	89 05 19 09 20 00    	mov    %eax,0x200919(%rip)        # 60107c <i>
  400763:	8b 05 13 09 20 00    	mov    0x200913(%rip),%eax        # 60107c <i>
  400769:	48 63 d0             	movslq %eax,%rdx
  40076c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400770:	48 01 d0             	add    %rdx,%rax
  400773:	0f b6 00             	movzbl (%rax),%eax
  400776:	84 c0                	test   %al,%al
  400778:	75 bb                	jne    400735 <echo+0x18>
  40077a:	8b 05 fc 08 20 00    	mov    0x2008fc(%rip),%eax        # 60107c <i>
  400780:	48 98                	cltq   
  400782:	c6 44 05 f0 00       	movb   $0x0,-0x10(%rbp,%rax,1)
  400787:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  40078b:	48 89 c6             	mov    %rax,%rsi
  40078e:	bf c4 08 40 00       	mov    $0x4008c4,%edi
  400793:	e8 68 fe ff ff       	callq  400600 <strcmp@plt>
  400798:	85 c0                	test   %eax,%eax
  40079a:	75 19                	jne    4007b5 <echo+0x98>
  40079c:	bf c9 08 40 00       	mov    $0x4008c9,%edi
  4007a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4007a6:	e8 15 fe ff ff       	callq  4005c0 <printf@plt>
  4007ab:	bf d7 08 40 00       	mov    $0x4008d7,%edi
  4007b0:	e8 eb fd ff ff       	callq  4005a0 <puts@plt>
  4007b5:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  4007b9:	48 89 c6             	mov    %rax,%rsi
  4007bc:	bf e4 08 40 00       	mov    $0x4008e4,%edi
  4007c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4007c6:	e8 f5 fd ff ff       	callq  4005c0 <printf@plt>
  4007cb:	c9                   	leaveq 
  4007cc:	c3                   	retq   

00000000004007cd <main>:
  4007cd:	55                   	push   %rbp
  4007ce:	48 89 e5             	mov    %rsp,%rbp
  4007d1:	48 81 ec 00 04 00 00 	sub    $0x400,%rsp
  4007d8:	90                   	nop
  4007d9:	90                   	nop
  4007da:	90                   	nop
  4007db:	90                   	nop
  4007dc:	90                   	nop
  4007dd:	90                   	nop
  4007de:	90                   	nop
  4007df:	90                   	nop
  4007e0:	90                   	nop
  4007e1:	90                   	nop
  4007e2:	ba 10 00 00 00       	mov    $0x10,%edx
  4007e7:	be e7 08 40 00       	mov    $0x4008e7,%esi
  4007ec:	bf 01 00 00 00       	mov    $0x1,%edi
  4007f1:	e8 ba fd ff ff       	callq  4005b0 <write@plt>
  4007f6:	48 8b 05 73 08 20 00 	mov    0x200873(%rip),%rax        # 601070 <stdout@@GLIBC_2.2.5>
  4007fd:	48 89 c7             	mov    %rax,%rdi
  400800:	e8 1b fe ff ff       	callq  400620 <fflush@plt>
  400805:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
  40080c:	ba 00 04 00 00       	mov    $0x400,%edx
  400811:	48 89 c6             	mov    %rax,%rsi
  400814:	bf 00 00 00 00       	mov    $0x0,%edi
  400819:	e8 c2 fd ff ff       	callq  4005e0 <read@plt>
  40081e:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
  400825:	48 89 c7             	mov    %rax,%rdi
  400828:	e8 f0 fe ff ff       	callq  40071d <echo>
  40082d:	b8 00 00 00 00       	mov    $0x0,%eax
  400832:	c9                   	leaveq 
  400833:	c3                   	retq   
  400834:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40083b:	00 00 00 
  40083e:	66 90                	xchg   %ax,%ax

0000000000400840 <__libc_csu_init>:
  400840:	41 57                	push   %r15
  400842:	41 89 ff             	mov    %edi,%r15d
  400845:	41 56                	push   %r14
  400847:	49 89 f6             	mov    %rsi,%r14
  40084a:	41 55                	push   %r13
  40084c:	49 89 d5             	mov    %rdx,%r13
  40084f:	41 54                	push   %r12
  400851:	4c 8d 25 b8 05 20 00 	lea    0x2005b8(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400858:	55                   	push   %rbp
  400859:	48 8d 2d b8 05 20 00 	lea    0x2005b8(%rip),%rbp        # 600e18 <__do_global_dtors_aux_fini_array_entry>
  400860:	53                   	push   %rbx
  400861:	4c 29 e5             	sub    %r12,%rbp
  400864:	31 db                	xor    %ebx,%ebx
  400866:	48 c1 fd 03          	sar    $0x3,%rbp
  40086a:	48 83 ec 08          	sub    $0x8,%rsp
  40086e:	e8 fd fc ff ff       	callq  400570 <_init>
  400873:	48 85 ed             	test   %rbp,%rbp
  400876:	74 1e                	je     400896 <__libc_csu_init+0x56>
  400878:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40087f:	00 
  400880:	4c 89 ea             	mov    %r13,%rdx
  400883:	4c 89 f6             	mov    %r14,%rsi
  400886:	44 89 ff             	mov    %r15d,%edi
  400889:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40088d:	48 83 c3 01          	add    $0x1,%rbx
  400891:	48 39 eb             	cmp    %rbp,%rbx
  400894:	75 ea                	jne    400880 <__libc_csu_init+0x40>
  400896:	48 83 c4 08          	add    $0x8,%rsp
  40089a:	5b                   	pop    %rbx
  40089b:	5d                   	pop    %rbp
  40089c:	41 5c                	pop    %r12
  40089e:	41 5d                	pop    %r13
  4008a0:	41 5e                	pop    %r14
  4008a2:	41 5f                	pop    %r15
  4008a4:	c3                   	retq   
  4008a5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4008ac:	00 00 00 00 

00000000004008b0 <__libc_csu_fini>:
  4008b0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004008b4 <_fini>:
  4008b4:	48 83 ec 08          	sub    $0x8,%rsp
  4008b8:	48 83 c4 08          	add    $0x8,%rsp
  4008bc:	c3                   	retq   
