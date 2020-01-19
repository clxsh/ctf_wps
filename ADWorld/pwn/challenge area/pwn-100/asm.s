
pwn-100:     file format elf64-x86-64


Disassembly of section .init:

00000000004004c8 <.init>:
  4004c8:	48 83 ec 08          	sub    $0x8,%rsp
  4004cc:	48 8b 05 25 0b 20 00 	mov    0x200b25(%rip),%rax        # 600ff8 <__gmon_start__@plt+0x200ab8>
  4004d3:	48 85 c0             	test   %rax,%rax
  4004d6:	74 05                	je     4004dd <puts@plt-0x23>
  4004d8:	e8 63 00 00 00       	callq  400540 <__gmon_start__@plt>
  4004dd:	48 83 c4 08          	add    $0x8,%rsp
  4004e1:	c3                   	retq   

Disassembly of section .plt:

00000000004004f0 <puts@plt-0x10>:
  4004f0:	ff 35 12 0b 20 00    	pushq  0x200b12(%rip)        # 601008 <__gmon_start__@plt+0x200ac8>
  4004f6:	ff 25 14 0b 20 00    	jmpq   *0x200b14(%rip)        # 601010 <__gmon_start__@plt+0x200ad0>
  4004fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400500 <puts@plt>:
  400500:	ff 25 12 0b 20 00    	jmpq   *0x200b12(%rip)        # 601018 <__gmon_start__@plt+0x200ad8>
  400506:	68 00 00 00 00       	pushq  $0x0
  40050b:	e9 e0 ff ff ff       	jmpq   4004f0 <puts@plt-0x10>

0000000000400510 <setbuf@plt>:
  400510:	ff 25 0a 0b 20 00    	jmpq   *0x200b0a(%rip)        # 601020 <__gmon_start__@plt+0x200ae0>
  400516:	68 01 00 00 00       	pushq  $0x1
  40051b:	e9 d0 ff ff ff       	jmpq   4004f0 <puts@plt-0x10>

0000000000400520 <read@plt>:
  400520:	ff 25 02 0b 20 00    	jmpq   *0x200b02(%rip)        # 601028 <__gmon_start__@plt+0x200ae8>
  400526:	68 02 00 00 00       	pushq  $0x2
  40052b:	e9 c0 ff ff ff       	jmpq   4004f0 <puts@plt-0x10>

0000000000400530 <__libc_start_main@plt>:
  400530:	ff 25 fa 0a 20 00    	jmpq   *0x200afa(%rip)        # 601030 <__gmon_start__@plt+0x200af0>
  400536:	68 03 00 00 00       	pushq  $0x3
  40053b:	e9 b0 ff ff ff       	jmpq   4004f0 <puts@plt-0x10>

0000000000400540 <__gmon_start__@plt>:
  400540:	ff 25 f2 0a 20 00    	jmpq   *0x200af2(%rip)        # 601038 <__gmon_start__@plt+0x200af8>
  400546:	68 04 00 00 00       	pushq  $0x4
  40054b:	e9 a0 ff ff ff       	jmpq   4004f0 <puts@plt-0x10>

Disassembly of section .text:

0000000000400550 <.text>:
  400550:	31 ed                	xor    %ebp,%ebp
  400552:	49 89 d1             	mov    %rdx,%r9
  400555:	5e                   	pop    %rsi
  400556:	48 89 e2             	mov    %rsp,%rdx
  400559:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40055d:	50                   	push   %rax
  40055e:	54                   	push   %rsp
  40055f:	49 c7 c0 70 07 40 00 	mov    $0x400770,%r8
  400566:	48 c7 c1 00 07 40 00 	mov    $0x400700,%rcx
  40056d:	48 c7 c7 b8 06 40 00 	mov    $0x4006b8,%rdi
  400574:	e8 b7 ff ff ff       	callq  400530 <__libc_start_main@plt>
  400579:	f4                   	hlt    
  40057a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400580:	b8 57 10 60 00       	mov    $0x601057,%eax
  400585:	55                   	push   %rbp
  400586:	48 2d 50 10 60 00    	sub    $0x601050,%rax
  40058c:	48 83 f8 0e          	cmp    $0xe,%rax
  400590:	48 89 e5             	mov    %rsp,%rbp
  400593:	77 02                	ja     400597 <__gmon_start__@plt+0x57>
  400595:	5d                   	pop    %rbp
  400596:	c3                   	retq   
  400597:	b8 00 00 00 00       	mov    $0x0,%eax
  40059c:	48 85 c0             	test   %rax,%rax
  40059f:	74 f4                	je     400595 <__gmon_start__@plt+0x55>
  4005a1:	5d                   	pop    %rbp
  4005a2:	bf 50 10 60 00       	mov    $0x601050,%edi
  4005a7:	ff e0                	jmpq   *%rax
  4005a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4005b0:	b8 50 10 60 00       	mov    $0x601050,%eax
  4005b5:	55                   	push   %rbp
  4005b6:	48 2d 50 10 60 00    	sub    $0x601050,%rax
  4005bc:	48 c1 f8 03          	sar    $0x3,%rax
  4005c0:	48 89 e5             	mov    %rsp,%rbp
  4005c3:	48 89 c2             	mov    %rax,%rdx
  4005c6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4005ca:	48 01 d0             	add    %rdx,%rax
  4005cd:	48 d1 f8             	sar    %rax
  4005d0:	75 02                	jne    4005d4 <__gmon_start__@plt+0x94>
  4005d2:	5d                   	pop    %rbp
  4005d3:	c3                   	retq   
  4005d4:	ba 00 00 00 00       	mov    $0x0,%edx
  4005d9:	48 85 d2             	test   %rdx,%rdx
  4005dc:	74 f4                	je     4005d2 <__gmon_start__@plt+0x92>
  4005de:	5d                   	pop    %rbp
  4005df:	48 89 c6             	mov    %rax,%rsi
  4005e2:	bf 50 10 60 00       	mov    $0x601050,%edi
  4005e7:	ff e2                	jmpq   *%rdx
  4005e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4005f0:	80 3d 69 0a 20 00 00 	cmpb   $0x0,0x200a69(%rip)        # 601060 <stdin@@GLIBC_2.2.5+0x8>
  4005f7:	75 11                	jne    40060a <__gmon_start__@plt+0xca>
  4005f9:	55                   	push   %rbp
  4005fa:	48 89 e5             	mov    %rsp,%rbp
  4005fd:	e8 7e ff ff ff       	callq  400580 <__gmon_start__@plt+0x40>
  400602:	5d                   	pop    %rbp
  400603:	c6 05 56 0a 20 00 01 	movb   $0x1,0x200a56(%rip)        # 601060 <stdin@@GLIBC_2.2.5+0x8>
  40060a:	f3 c3                	repz retq 
  40060c:	0f 1f 40 00          	nopl   0x0(%rax)
  400610:	48 83 3d 08 08 20 00 	cmpq   $0x0,0x200808(%rip)        # 600e20 <__gmon_start__@plt+0x2008e0>
  400617:	00 
  400618:	74 1e                	je     400638 <__gmon_start__@plt+0xf8>
  40061a:	b8 00 00 00 00       	mov    $0x0,%eax
  40061f:	48 85 c0             	test   %rax,%rax
  400622:	74 14                	je     400638 <__gmon_start__@plt+0xf8>
  400624:	55                   	push   %rbp
  400625:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40062a:	48 89 e5             	mov    %rsp,%rbp
  40062d:	ff d0                	callq  *%rax
  40062f:	5d                   	pop    %rbp
  400630:	e9 7b ff ff ff       	jmpq   4005b0 <__gmon_start__@plt+0x70>
  400635:	0f 1f 00             	nopl   (%rax)
  400638:	e9 73 ff ff ff       	jmpq   4005b0 <__gmon_start__@plt+0x70>
  40063d:	55                   	push   %rbp
  40063e:	48 89 e5             	mov    %rsp,%rbp
  400641:	48 83 ec 20          	sub    $0x20,%rsp
  400645:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400649:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  40064c:	89 d0                	mov    %edx,%eax
  40064e:	88 45 e0             	mov    %al,-0x20(%rbp)
  400651:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400658:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40065f:	eb 23                	jmp    400684 <__gmon_start__@plt+0x144>
  400661:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400664:	48 63 d0             	movslq %eax,%rdx
  400667:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40066b:	48 01 d0             	add    %rdx,%rax
  40066e:	ba 01 00 00 00       	mov    $0x1,%edx
  400673:	48 89 c6             	mov    %rax,%rsi
  400676:	bf 00 00 00 00       	mov    $0x0,%edi
  40067b:	e8 a0 fe ff ff       	callq  400520 <read@plt>
  400680:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400684:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400687:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  40068a:	7c d5                	jl     400661 <__gmon_start__@plt+0x121>
  40068c:	c9                   	leaveq 
  40068d:	c3                   	retq   
  40068e:	55                   	push   %rbp
  40068f:	48 89 e5             	mov    %rsp,%rbp
  400692:	48 83 ec 40          	sub    $0x40,%rsp
  400696:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  40069a:	ba 0a 00 00 00       	mov    $0xa,%edx
  40069f:	be c8 00 00 00       	mov    $0xc8,%esi
  4006a4:	48 89 c7             	mov    %rax,%rdi
  4006a7:	e8 91 ff ff ff       	callq  40063d <__gmon_start__@plt+0xfd>
  4006ac:	bf 84 07 40 00       	mov    $0x400784,%edi
  4006b1:	e8 4a fe ff ff       	callq  400500 <puts@plt>
  4006b6:	c9                   	leaveq 
  4006b7:	c3                   	retq 
  
   
  4006b8:	55                   	push   %rbp
  4006b9:	48 89 e5             	mov    %rsp,%rbp
  4006bc:	48 83 ec 10          	sub    $0x10,%rsp
  4006c0:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4006c3:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4006c7:	48 8b 05 8a 09 20 00 	mov    0x20098a(%rip),%rax        # 601058 <stdin@@GLIBC_2.2.5>
  4006ce:	be 00 00 00 00       	mov    $0x0,%esi
  4006d3:	48 89 c7             	mov    %rax,%rdi
  4006d6:	e8 35 fe ff ff       	callq  400510 <setbuf@plt>
  4006db:	48 8b 05 6e 09 20 00 	mov    0x20096e(%rip),%rax        # 601050 <stdout@@GLIBC_2.2.5>
  4006e2:	be 00 00 00 00       	mov    $0x0,%esi
  4006e7:	48 89 c7             	mov    %rax,%rdi
  4006ea:	e8 21 fe ff ff       	callq  400510 <setbuf@plt>
  4006ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4006f4:	e8 95 ff ff ff       	callq  40068e <__gmon_start__@plt+0x14e>
  4006f9:	b8 00 00 00 00       	mov    $0x0,%eax
  4006fe:	c9                   	leaveq 
  4006ff:	c3                   	retq   
  400700:	41 57                	push   %r15
  400702:	41 89 ff             	mov    %edi,%r15d
  400705:	41 56                	push   %r14
  400707:	49 89 f6             	mov    %rsi,%r14
  40070a:	41 55                	push   %r13
  40070c:	49 89 d5             	mov    %rdx,%r13
  40070f:	41 54                	push   %r12
  400711:	4c 8d 25 f8 06 20 00 	lea    0x2006f8(%rip),%r12        # 600e10 <__gmon_start__@plt+0x2008d0>
  400718:	55                   	push   %rbp
  400719:	48 8d 2d f8 06 20 00 	lea    0x2006f8(%rip),%rbp        # 600e18 <__gmon_start__@plt+0x2008d8>
  400720:	53                   	push   %rbx
  400721:	4c 29 e5             	sub    %r12,%rbp
  400724:	31 db                	xor    %ebx,%ebx
  400726:	48 c1 fd 03          	sar    $0x3,%rbp
  40072a:	48 83 ec 08          	sub    $0x8,%rsp
  40072e:	e8 95 fd ff ff       	callq  4004c8 <puts@plt-0x38>
  400733:	48 85 ed             	test   %rbp,%rbp
  400736:	74 1e                	je     400756 <__gmon_start__@plt+0x216>
  400738:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40073f:	00 
  400740:	4c 89 ea             	mov    %r13,%rdx
  400743:	4c 89 f6             	mov    %r14,%rsi
  400746:	44 89 ff             	mov    %r15d,%edi
  400749:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40074d:	48 83 c3 01          	add    $0x1,%rbx
  400751:	48 39 eb             	cmp    %rbp,%rbx
  400754:	75 ea                	jne    400740 <__gmon_start__@plt+0x200>
  400756:	48 83 c4 08          	add    $0x8,%rsp
  40075a:	5b                   	pop    %rbx
  40075b:	5d                   	pop    %rbp
  40075c:	41 5c                	pop    %r12
  40075e:	41 5d                	pop    %r13
  400760:	41 5e                	pop    %r14
  400762:	41 5f                	pop    %r15
  400764:	c3                   	retq   
  400765:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40076c:	00 00 00 00 
  400770:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400774 <.fini>:
  400774:	48 83 ec 08          	sub    $0x8,%rsp
  400778:	48 83 c4 08          	add    $0x8,%rsp
  40077c:	c3                   	retq   
