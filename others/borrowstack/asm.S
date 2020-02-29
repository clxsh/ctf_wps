
borrowstack:     file format elf64-x86-64


Disassembly of section .init:

00000000004004b0 <_init>:
  4004b0:	48 83 ec 08          	sub    $0x8,%rsp
  4004b4:	48 8b 05 3d 0b 20 00 	mov    0x200b3d(%rip),%rax        # 600ff8 <__gmon_start__>
  4004bb:	48 85 c0             	test   %rax,%rax
  4004be:	74 05                	je     4004c5 <_init+0x15>
  4004c0:	e8 5b 00 00 00       	callq  400520 <__gmon_start__@plt>
  4004c5:	48 83 c4 08          	add    $0x8,%rsp
  4004c9:	c3                   	retq   

Disassembly of section .plt:

00000000004004d0 <.plt>:
  4004d0:	ff 35 32 0b 20 00    	pushq  0x200b32(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004d6:	ff 25 34 0b 20 00    	jmpq   *0x200b34(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004e0 <puts@plt>:
  4004e0:	ff 25 32 0b 20 00    	jmpq   *0x200b32(%rip)        # 601018 <puts@GLIBC_2.2.5>
  4004e6:	68 00 00 00 00       	pushq  $0x0
  4004eb:	e9 e0 ff ff ff       	jmpq   4004d0 <.plt>

00000000004004f0 <setbuf@plt>:
  4004f0:	ff 25 2a 0b 20 00    	jmpq   *0x200b2a(%rip)        # 601020 <setbuf@GLIBC_2.2.5>
  4004f6:	68 01 00 00 00       	pushq  $0x1
  4004fb:	e9 d0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400500 <read@plt>:
  400500:	ff 25 22 0b 20 00    	jmpq   *0x200b22(%rip)        # 601028 <read@GLIBC_2.2.5>
  400506:	68 02 00 00 00       	pushq  $0x2
  40050b:	e9 c0 ff ff ff       	jmpq   4004d0 <.plt>

0000000000400510 <__libc_start_main@plt>:
  400510:	ff 25 1a 0b 20 00    	jmpq   *0x200b1a(%rip)        # 601030 <__libc_start_main@GLIBC_2.2.5>
  400516:	68 03 00 00 00       	pushq  $0x3
  40051b:	e9 b0 ff ff ff       	jmpq   4004d0 <.plt>

Disassembly of section .plt.got:

0000000000400520 <__gmon_start__@plt>:
  400520:	ff 25 d2 0a 20 00    	jmpq   *0x200ad2(%rip)        # 600ff8 <__gmon_start__>
  400526:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400530 <_start>:
  400530:	31 ed                	xor    %ebp,%ebp
  400532:	49 89 d1             	mov    %rdx,%r9
  400535:	5e                   	pop    %rsi
  400536:	48 89 e2             	mov    %rsp,%rdx
  400539:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40053d:	50                   	push   %rax
  40053e:	54                   	push   %rsp
  40053f:	49 c7 c0 10 07 40 00 	mov    $0x400710,%r8
  400546:	48 c7 c1 a0 06 40 00 	mov    $0x4006a0,%rcx
  40054d:	48 c7 c7 26 06 40 00 	mov    $0x400626,%rdi
  400554:	e8 b7 ff ff ff       	callq  400510 <__libc_start_main@plt>
  400559:	f4                   	hlt    
  40055a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400560 <deregister_tm_clones>:
  400560:	b8 4f 10 60 00       	mov    $0x60104f,%eax
  400565:	55                   	push   %rbp
  400566:	48 2d 48 10 60 00    	sub    $0x601048,%rax
  40056c:	48 83 f8 0e          	cmp    $0xe,%rax
  400570:	48 89 e5             	mov    %rsp,%rbp
  400573:	76 1b                	jbe    400590 <deregister_tm_clones+0x30>
  400575:	b8 00 00 00 00       	mov    $0x0,%eax
  40057a:	48 85 c0             	test   %rax,%rax
  40057d:	74 11                	je     400590 <deregister_tm_clones+0x30>
  40057f:	5d                   	pop    %rbp
  400580:	bf 48 10 60 00       	mov    $0x601048,%edi
  400585:	ff e0                	jmpq   *%rax
  400587:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40058e:	00 00 
  400590:	5d                   	pop    %rbp
  400591:	c3                   	retq   
  400592:	0f 1f 40 00          	nopl   0x0(%rax)
  400596:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40059d:	00 00 00 

00000000004005a0 <register_tm_clones>:
  4005a0:	be 48 10 60 00       	mov    $0x601048,%esi
  4005a5:	55                   	push   %rbp
  4005a6:	48 81 ee 48 10 60 00 	sub    $0x601048,%rsi
  4005ad:	48 c1 fe 03          	sar    $0x3,%rsi
  4005b1:	48 89 e5             	mov    %rsp,%rbp
  4005b4:	48 89 f0             	mov    %rsi,%rax
  4005b7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4005bb:	48 01 c6             	add    %rax,%rsi
  4005be:	48 d1 fe             	sar    %rsi
  4005c1:	74 15                	je     4005d8 <register_tm_clones+0x38>
  4005c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005c8:	48 85 c0             	test   %rax,%rax
  4005cb:	74 0b                	je     4005d8 <register_tm_clones+0x38>
  4005cd:	5d                   	pop    %rbp
  4005ce:	bf 48 10 60 00       	mov    $0x601048,%edi
  4005d3:	ff e0                	jmpq   *%rax
  4005d5:	0f 1f 00             	nopl   (%rax)
  4005d8:	5d                   	pop    %rbp
  4005d9:	c3                   	retq   
  4005da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005e0 <__do_global_dtors_aux>:
  4005e0:	80 3d 91 0a 20 00 00 	cmpb   $0x0,0x200a91(%rip)        # 601078 <completed.7594>
  4005e7:	75 11                	jne    4005fa <__do_global_dtors_aux+0x1a>
  4005e9:	55                   	push   %rbp
  4005ea:	48 89 e5             	mov    %rsp,%rbp
  4005ed:	e8 6e ff ff ff       	callq  400560 <deregister_tm_clones>
  4005f2:	5d                   	pop    %rbp
  4005f3:	c6 05 7e 0a 20 00 01 	movb   $0x1,0x200a7e(%rip)        # 601078 <completed.7594>
  4005fa:	f3 c3                	repz retq 
  4005fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400600 <frame_dummy>:
  400600:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400605:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400609:	75 05                	jne    400610 <frame_dummy+0x10>
  40060b:	eb 93                	jmp    4005a0 <register_tm_clones>
  40060d:	0f 1f 00             	nopl   (%rax)
  400610:	b8 00 00 00 00       	mov    $0x0,%eax
  400615:	48 85 c0             	test   %rax,%rax
  400618:	74 f1                	je     40060b <frame_dummy+0xb>
  40061a:	55                   	push   %rbp
  40061b:	48 89 e5             	mov    %rsp,%rbp
  40061e:	ff d0                	callq  *%rax
  400620:	5d                   	pop    %rbp
  400621:	e9 7a ff ff ff       	jmpq   4005a0 <register_tm_clones>

0000000000400626 <main>:
  400626:	55                   	push   %rbp
  400627:	48 89 e5             	mov    %rsp,%rbp
  40062a:	48 83 ec 60          	sub    $0x60,%rsp
  40062e:	48 8b 05 3b 0a 20 00 	mov    0x200a3b(%rip),%rax        # 601070 <stdin@@GLIBC_2.2.5>
  400635:	be 00 00 00 00       	mov    $0x0,%esi
  40063a:	48 89 c7             	mov    %rax,%rdi
  40063d:	e8 ae fe ff ff       	callq  4004f0 <setbuf@plt>
  400642:	48 8b 05 17 0a 20 00 	mov    0x200a17(%rip),%rax        # 601060 <stdout@@GLIBC_2.2.5>
  400649:	be 00 00 00 00       	mov    $0x0,%esi
  40064e:	48 89 c7             	mov    %rax,%rdi
  400651:	e8 9a fe ff ff       	callq  4004f0 <setbuf@plt>
  400656:	bf 28 07 40 00       	mov    $0x400728,%edi
  40065b:	e8 80 fe ff ff       	callq  4004e0 <puts@plt>
  400660:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  400664:	ba 70 00 00 00       	mov    $0x70,%edx
  400669:	48 89 c6             	mov    %rax,%rsi
  40066c:	bf 00 00 00 00       	mov    $0x0,%edi
  400671:	e8 8a fe ff ff       	callq  400500 <read@plt>
  400676:	bf 58 07 40 00       	mov    $0x400758,%edi
  40067b:	e8 60 fe ff ff       	callq  4004e0 <puts@plt>
  400680:	ba 00 01 00 00       	mov    $0x100,%edx
  400685:	be 80 10 60 00       	mov    $0x601080,%esi
  40068a:	bf 00 00 00 00       	mov    $0x0,%edi
  40068f:	e8 6c fe ff ff       	callq  400500 <read@plt>
  400694:	b8 00 00 00 00       	mov    $0x0,%eax
  400699:	c9                   	leaveq 
  40069a:	c3                   	retq   
  40069b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004006a0 <__libc_csu_init>:
  4006a0:	41 57                	push   %r15
  4006a2:	41 56                	push   %r14
  4006a4:	41 89 ff             	mov    %edi,%r15d
  4006a7:	41 55                	push   %r13
  4006a9:	41 54                	push   %r12
  4006ab:	4c 8d 25 5e 07 20 00 	lea    0x20075e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4006b2:	55                   	push   %rbp
  4006b3:	48 8d 2d 5e 07 20 00 	lea    0x20075e(%rip),%rbp        # 600e18 <__init_array_end>
  4006ba:	53                   	push   %rbx
  4006bb:	49 89 f6             	mov    %rsi,%r14
  4006be:	49 89 d5             	mov    %rdx,%r13
  4006c1:	4c 29 e5             	sub    %r12,%rbp
  4006c4:	48 83 ec 08          	sub    $0x8,%rsp
  4006c8:	48 c1 fd 03          	sar    $0x3,%rbp
  4006cc:	e8 df fd ff ff       	callq  4004b0 <_init>
  4006d1:	48 85 ed             	test   %rbp,%rbp
  4006d4:	74 20                	je     4006f6 <__libc_csu_init+0x56>
  4006d6:	31 db                	xor    %ebx,%ebx
  4006d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4006df:	00 
  4006e0:	4c 89 ea             	mov    %r13,%rdx
  4006e3:	4c 89 f6             	mov    %r14,%rsi
  4006e6:	44 89 ff             	mov    %r15d,%edi
  4006e9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4006ed:	48 83 c3 01          	add    $0x1,%rbx
  4006f1:	48 39 eb             	cmp    %rbp,%rbx
  4006f4:	75 ea                	jne    4006e0 <__libc_csu_init+0x40>
  4006f6:	48 83 c4 08          	add    $0x8,%rsp
  4006fa:	5b                   	pop    %rbx
  4006fb:	5d                   	pop    %rbp
  4006fc:	41 5c                	pop    %r12
  4006fe:	41 5d                	pop    %r13
  400700:	41 5e                	pop    %r14
  400702:	41 5f                	pop    %r15
  400704:	c3                   	retq   
  400705:	90                   	nop
  400706:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40070d:	00 00 00 

0000000000400710 <__libc_csu_fini>:
  400710:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400714 <_fini>:
  400714:	48 83 ec 08          	sub    $0x8,%rsp
  400718:	48 83 c4 08          	add    $0x8,%rsp
  40071c:	c3                   	retq   
