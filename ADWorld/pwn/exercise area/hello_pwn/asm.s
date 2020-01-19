
hello_pwn:     file format elf64-x86-64


Disassembly of section .init:

00000000004004e8 <.init>:
  4004e8:	48 83 ec 08          	sub    $0x8,%rsp
  4004ec:	48 8b 05 05 0b 20 00 	mov    0x200b05(%rip),%rax        # 600ff8 <__gmon_start__@plt+0x200a78>
  4004f3:	48 85 c0             	test   %rax,%rax
  4004f6:	74 05                	je     4004fd <puts@plt-0x23>
  4004f8:	e8 83 00 00 00       	callq  400580 <__gmon_start__@plt>
  4004fd:	48 83 c4 08          	add    $0x8,%rsp
  400501:	c3                   	retq   

Disassembly of section .plt:

0000000000400510 <puts@plt-0x10>:
  400510:	ff 35 f2 0a 20 00    	pushq  0x200af2(%rip)        # 601008 <__gmon_start__@plt+0x200a88>
  400516:	ff 25 f4 0a 20 00    	jmpq   *0x200af4(%rip)        # 601010 <__gmon_start__@plt+0x200a90>
  40051c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400520 <puts@plt>:
  400520:	ff 25 f2 0a 20 00    	jmpq   *0x200af2(%rip)        # 601018 <__gmon_start__@plt+0x200a98>
  400526:	68 00 00 00 00       	pushq  $0x0
  40052b:	e9 e0 ff ff ff       	jmpq   400510 <puts@plt-0x10>

0000000000400530 <setbuf@plt>:
  400530:	ff 25 ea 0a 20 00    	jmpq   *0x200aea(%rip)        # 601020 <__gmon_start__@plt+0x200aa0>
  400536:	68 01 00 00 00       	pushq  $0x1
  40053b:	e9 d0 ff ff ff       	jmpq   400510 <puts@plt-0x10>

0000000000400540 <system@plt>:
  400540:	ff 25 e2 0a 20 00    	jmpq   *0x200ae2(%rip)        # 601028 <__gmon_start__@plt+0x200aa8>
  400546:	68 02 00 00 00       	pushq  $0x2
  40054b:	e9 c0 ff ff ff       	jmpq   400510 <puts@plt-0x10>

0000000000400550 <alarm@plt>:
  400550:	ff 25 da 0a 20 00    	jmpq   *0x200ada(%rip)        # 601030 <__gmon_start__@plt+0x200ab0>
  400556:	68 03 00 00 00       	pushq  $0x3
  40055b:	e9 b0 ff ff ff       	jmpq   400510 <puts@plt-0x10>

0000000000400560 <read@plt>:
  400560:	ff 25 d2 0a 20 00    	jmpq   *0x200ad2(%rip)        # 601038 <__gmon_start__@plt+0x200ab8>
  400566:	68 04 00 00 00       	pushq  $0x4
  40056b:	e9 a0 ff ff ff       	jmpq   400510 <puts@plt-0x10>

0000000000400570 <__libc_start_main@plt>:
  400570:	ff 25 ca 0a 20 00    	jmpq   *0x200aca(%rip)        # 601040 <__gmon_start__@plt+0x200ac0>
  400576:	68 05 00 00 00       	pushq  $0x5
  40057b:	e9 90 ff ff ff       	jmpq   400510 <puts@plt-0x10>

Disassembly of section .plt.got:

0000000000400580 <__gmon_start__@plt>:
  400580:	ff 25 72 0a 20 00    	jmpq   *0x200a72(%rip)        # 600ff8 <__gmon_start__@plt+0x200a78>
  400586:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400590 <.text>:
  400590:	31 ed                	xor    %ebp,%ebp
  400592:	49 89 d1             	mov    %rdx,%r9
  400595:	5e                   	pop    %rsi
  400596:	48 89 e2             	mov    %rsp,%rdx
  400599:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40059d:	50                   	push   %rax
  40059e:	54                   	push   %rsp
  40059f:	49 c7 c0 80 07 40 00 	mov    $0x400780,%r8
  4005a6:	48 c7 c1 10 07 40 00 	mov    $0x400710,%rcx
  4005ad:	48 c7 c7 9b 06 40 00 	mov    $0x40069b,%rdi
  4005b4:	e8 b7 ff ff ff       	callq  400570 <__libc_start_main@plt>
  4005b9:	f4                   	hlt    
  4005ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4005c0:	b8 5f 10 60 00       	mov    $0x60105f,%eax
  4005c5:	55                   	push   %rbp
  4005c6:	48 2d 58 10 60 00    	sub    $0x601058,%rax
  4005cc:	48 83 f8 0e          	cmp    $0xe,%rax
  4005d0:	48 89 e5             	mov    %rsp,%rbp
  4005d3:	76 1b                	jbe    4005f0 <__gmon_start__@plt+0x70>
  4005d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4005da:	48 85 c0             	test   %rax,%rax
  4005dd:	74 11                	je     4005f0 <__gmon_start__@plt+0x70>
  4005df:	5d                   	pop    %rbp
  4005e0:	bf 58 10 60 00       	mov    $0x601058,%edi
  4005e5:	ff e0                	jmpq   *%rax
  4005e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4005ee:	00 00 
  4005f0:	5d                   	pop    %rbp
  4005f1:	c3                   	retq   
  4005f2:	0f 1f 40 00          	nopl   0x0(%rax)
  4005f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005fd:	00 00 00 
  400600:	be 58 10 60 00       	mov    $0x601058,%esi
  400605:	55                   	push   %rbp
  400606:	48 81 ee 58 10 60 00 	sub    $0x601058,%rsi
  40060d:	48 c1 fe 03          	sar    $0x3,%rsi
  400611:	48 89 e5             	mov    %rsp,%rbp
  400614:	48 89 f0             	mov    %rsi,%rax
  400617:	48 c1 e8 3f          	shr    $0x3f,%rax
  40061b:	48 01 c6             	add    %rax,%rsi
  40061e:	48 d1 fe             	sar    %rsi
  400621:	74 15                	je     400638 <__gmon_start__@plt+0xb8>
  400623:	b8 00 00 00 00       	mov    $0x0,%eax
  400628:	48 85 c0             	test   %rax,%rax
  40062b:	74 0b                	je     400638 <__gmon_start__@plt+0xb8>
  40062d:	5d                   	pop    %rbp
  40062e:	bf 58 10 60 00       	mov    $0x601058,%edi
  400633:	ff e0                	jmpq   *%rax
  400635:	0f 1f 00             	nopl   (%rax)
  400638:	5d                   	pop    %rbp
  400639:	c3                   	retq   
  40063a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400640:	80 3d 19 0a 20 00 00 	cmpb   $0x0,0x200a19(%rip)        # 601060 <stdout@@GLIBC_2.2.5+0x8>
  400647:	75 11                	jne    40065a <__gmon_start__@plt+0xda>
  400649:	55                   	push   %rbp
  40064a:	48 89 e5             	mov    %rsp,%rbp
  40064d:	e8 6e ff ff ff       	callq  4005c0 <__gmon_start__@plt+0x40>
  400652:	5d                   	pop    %rbp
  400653:	c6 05 06 0a 20 00 01 	movb   $0x1,0x200a06(%rip)        # 601060 <stdout@@GLIBC_2.2.5+0x8>
  40065a:	f3 c3                	repz retq 
  40065c:	0f 1f 40 00          	nopl   0x0(%rax)
  400660:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400665:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400669:	75 05                	jne    400670 <__gmon_start__@plt+0xf0>
  40066b:	eb 93                	jmp    400600 <__gmon_start__@plt+0x80>
  40066d:	0f 1f 00             	nopl   (%rax)
  400670:	b8 00 00 00 00       	mov    $0x0,%eax
  400675:	48 85 c0             	test   %rax,%rax
  400678:	74 f1                	je     40066b <__gmon_start__@plt+0xeb>
  40067a:	55                   	push   %rbp
  40067b:	48 89 e5             	mov    %rsp,%rbp
  40067e:	ff d0                	callq  *%rax
  400680:	5d                   	pop    %rbp
  400681:	e9 7a ff ff ff       	jmpq   400600 <__gmon_start__@plt+0x80>

  // jmpfun
  400686:	55                   	push   %rbp
  400687:	48 89 e5             	mov    %rsp,%rbp
  40068a:	bf 94 07 40 00       	mov    $0x400794,%edi
  40068f:	e8 ac fe ff ff       	callq  400540 <system@plt>
  400694:	b8 00 00 00 00       	mov    $0x0,%eax
  400699:	5d                   	pop    %rbp
  40069a:	c3                   	retq

  // main   
  40069b:	55                   	push   %rbp
  40069c:	48 89 e5             	mov    %rsp,%rbp
  40069f:	bf 3c 00 00 00       	mov    $0x3c,%edi
  4006a4:	e8 a7 fe ff ff       	callq  400550 <alarm@plt>
  4006a9:	48 8b 05 a8 09 20 00 	mov    0x2009a8(%rip),%rax        # 601058 <stdout@@GLIBC_2.2.5>
  4006b0:	be 00 00 00 00       	mov    $0x0,%esi
  4006b5:	48 89 c7             	mov    %rax,%rdi
  4006b8:	e8 73 fe ff ff       	callq  400530 <setbuf@plt>
  4006bd:	bf a1 07 40 00       	mov    $0x4007a1,%edi
  4006c2:	e8 59 fe ff ff       	callq  400520 <puts@plt>
  4006c7:	bf bb 07 40 00       	mov    $0x4007bb,%edi
  4006cc:	e8 4f fe ff ff       	callq  400520 <puts@plt>
  4006d1:	ba 10 00 00 00       	mov    $0x10,%edx
  4006d6:	be 68 10 60 00       	mov    $0x601068,%esi
  4006db:	bf 00 00 00 00       	mov    $0x0,%edi
  4006e0:	e8 7b fe ff ff       	callq  400560 <read@plt>
  4006e5:	8b 05 81 09 20 00    	mov    0x200981(%rip),%eax        # 60106c <stdout@@GLIBC_2.2.5+0x14>
  4006eb:	3d 61 61 75 6e       	cmp    $0x6e756161,%eax
  4006f0:	75 0a                	jne    4006fc <__gmon_start__@plt+0x17c>
  4006f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4006f7:	e8 8a ff ff ff       	callq  400686 <__gmon_start__@plt+0x106>

  // 
  4006fc:	b8 00 00 00 00       	mov    $0x0,%eax
  400701:	5d                   	pop    %rbp
  400702:	c3                   	retq

  400703:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40070a:	00 00 00 
  40070d:	0f 1f 00             	nopl   (%rax)
  400710:	41 57                	push   %r15
  400712:	41 56                	push   %r14
  400714:	41 89 ff             	mov    %edi,%r15d
  400717:	41 55                	push   %r13
  400719:	41 54                	push   %r12
  40071b:	4c 8d 25 ee 06 20 00 	lea    0x2006ee(%rip),%r12        # 600e10 <__gmon_start__@plt+0x200890>
  400722:	55                   	push   %rbp
  400723:	48 8d 2d ee 06 20 00 	lea    0x2006ee(%rip),%rbp        # 600e18 <__gmon_start__@plt+0x200898>
  40072a:	53                   	push   %rbx
  40072b:	49 89 f6             	mov    %rsi,%r14
  40072e:	49 89 d5             	mov    %rdx,%r13
  400731:	4c 29 e5             	sub    %r12,%rbp
  400734:	48 83 ec 08          	sub    $0x8,%rsp
  400738:	48 c1 fd 03          	sar    $0x3,%rbp
  40073c:	e8 a7 fd ff ff       	callq  4004e8 <puts@plt-0x38>
  400741:	48 85 ed             	test   %rbp,%rbp
  400744:	74 20                	je     400766 <__gmon_start__@plt+0x1e6>
  400746:	31 db                	xor    %ebx,%ebx
  400748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40074f:	00 
  400750:	4c 89 ea             	mov    %r13,%rdx
  400753:	4c 89 f6             	mov    %r14,%rsi
  400756:	44 89 ff             	mov    %r15d,%edi
  400759:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40075d:	48 83 c3 01          	add    $0x1,%rbx
  400761:	48 39 eb             	cmp    %rbp,%rbx
  400764:	75 ea                	jne    400750 <__gmon_start__@plt+0x1d0>
  400766:	48 83 c4 08          	add    $0x8,%rsp
  40076a:	5b                   	pop    %rbx
  40076b:	5d                   	pop    %rbp
  40076c:	41 5c                	pop    %r12
  40076e:	41 5d                	pop    %r13
  400770:	41 5e                	pop    %r14
  400772:	41 5f                	pop    %r15
  400774:	c3                   	retq   
  400775:	90                   	nop
  400776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40077d:	00 00 00 
  400780:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400784 <.fini>:
  400784:	48 83 ec 08          	sub    $0x8,%rsp
  400788:	48 83 c4 08          	add    $0x8,%rsp
  40078c:	c3                   	retq   
