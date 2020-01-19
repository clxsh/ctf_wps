
level0:     file format elf64-x86-64


Disassembly of section .init:

0000000000400418 <_init>:
  400418:	48 83 ec 08          	sub    $0x8,%rsp
  40041c:	48 8b 05 dd 05 20 00 	mov    0x2005dd(%rip),%rax        # 600a00 <__gmon_start__>
  400423:	48 85 c0             	test   %rax,%rax
  400426:	74 05                	je     40042d <_init+0x15>
  400428:	e8 63 00 00 00       	callq  400490 <__gmon_start__@plt>
  40042d:	48 83 c4 08          	add    $0x8,%rsp
  400431:	c3                   	retq   

Disassembly of section .plt:

0000000000400440 <.plt>:
  400440:	ff 35 ca 05 20 00    	pushq  0x2005ca(%rip)        # 600a10 <_GLOBAL_OFFSET_TABLE_+0x8>
  400446:	ff 25 cc 05 20 00    	jmpq   *0x2005cc(%rip)        # 600a18 <_GLOBAL_OFFSET_TABLE_+0x10>
  40044c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400450 <write@plt>:
  400450:	ff 25 ca 05 20 00    	jmpq   *0x2005ca(%rip)        # 600a20 <write@GLIBC_2.2.5>
  400456:	68 00 00 00 00       	pushq  $0x0
  40045b:	e9 e0 ff ff ff       	jmpq   400440 <.plt>

0000000000400460 <system@plt>:
  400460:	ff 25 c2 05 20 00    	jmpq   *0x2005c2(%rip)        # 600a28 <system@GLIBC_2.2.5>
  400466:	68 01 00 00 00       	pushq  $0x1
  40046b:	e9 d0 ff ff ff       	jmpq   400440 <.plt>

0000000000400470 <read@plt>:
  400470:	ff 25 ba 05 20 00    	jmpq   *0x2005ba(%rip)        # 600a30 <read@GLIBC_2.2.5>
  400476:	68 02 00 00 00       	pushq  $0x2
  40047b:	e9 c0 ff ff ff       	jmpq   400440 <.plt>

0000000000400480 <__libc_start_main@plt>:
  400480:	ff 25 b2 05 20 00    	jmpq   *0x2005b2(%rip)        # 600a38 <__libc_start_main@GLIBC_2.2.5>
  400486:	68 03 00 00 00       	pushq  $0x3
  40048b:	e9 b0 ff ff ff       	jmpq   400440 <.plt>

0000000000400490 <__gmon_start__@plt>:
  400490:	ff 25 aa 05 20 00    	jmpq   *0x2005aa(%rip)        # 600a40 <__gmon_start__>
  400496:	68 04 00 00 00       	pushq  $0x4
  40049b:	e9 a0 ff ff ff       	jmpq   400440 <.plt>

Disassembly of section .text:

00000000004004a0 <_start>:
  4004a0:	31 ed                	xor    %ebp,%ebp
  4004a2:	49 89 d1             	mov    %rdx,%r9
  4004a5:	5e                   	pop    %rsi
  4004a6:	48 89 e2             	mov    %rsp,%rdx
  4004a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004ad:	50                   	push   %rax
  4004ae:	54                   	push   %rsp
  4004af:	49 c7 c0 70 06 40 00 	mov    $0x400670,%r8
  4004b6:	48 c7 c1 00 06 40 00 	mov    $0x400600,%rcx
  4004bd:	48 c7 c7 c6 05 40 00 	mov    $0x4005c6,%rdi
  4004c4:	e8 b7 ff ff ff       	callq  400480 <__libc_start_main@plt>
  4004c9:	f4                   	hlt    
  4004ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004d0 <deregister_tm_clones>:
  4004d0:	b8 5f 0a 60 00       	mov    $0x600a5f,%eax
  4004d5:	55                   	push   %rbp
  4004d6:	48 2d 58 0a 60 00    	sub    $0x600a58,%rax
  4004dc:	48 83 f8 0e          	cmp    $0xe,%rax
  4004e0:	48 89 e5             	mov    %rsp,%rbp
  4004e3:	76 1b                	jbe    400500 <deregister_tm_clones+0x30>
  4004e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4004ea:	48 85 c0             	test   %rax,%rax
  4004ed:	74 11                	je     400500 <deregister_tm_clones+0x30>
  4004ef:	5d                   	pop    %rbp
  4004f0:	bf 58 0a 60 00       	mov    $0x600a58,%edi
  4004f5:	ff e0                	jmpq   *%rax
  4004f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4004fe:	00 00 
  400500:	5d                   	pop    %rbp
  400501:	c3                   	retq   
  400502:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400509:	1f 84 00 00 00 00 00 

0000000000400510 <register_tm_clones>:
  400510:	be 58 0a 60 00       	mov    $0x600a58,%esi
  400515:	55                   	push   %rbp
  400516:	48 81 ee 58 0a 60 00 	sub    $0x600a58,%rsi
  40051d:	48 c1 fe 03          	sar    $0x3,%rsi
  400521:	48 89 e5             	mov    %rsp,%rbp
  400524:	48 89 f0             	mov    %rsi,%rax
  400527:	48 c1 e8 3f          	shr    $0x3f,%rax
  40052b:	48 01 c6             	add    %rax,%rsi
  40052e:	48 d1 fe             	sar    %rsi
  400531:	74 15                	je     400548 <register_tm_clones+0x38>
  400533:	b8 00 00 00 00       	mov    $0x0,%eax
  400538:	48 85 c0             	test   %rax,%rax
  40053b:	74 0b                	je     400548 <register_tm_clones+0x38>
  40053d:	5d                   	pop    %rbp
  40053e:	bf 58 0a 60 00       	mov    $0x600a58,%edi
  400543:	ff e0                	jmpq   *%rax
  400545:	0f 1f 00             	nopl   (%rax)
  400548:	5d                   	pop    %rbp
  400549:	c3                   	retq   
  40054a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400550 <__do_global_dtors_aux>:
  400550:	80 3d 01 05 20 00 00 	cmpb   $0x0,0x200501(%rip)        # 600a58 <__TMC_END__>
  400557:	75 11                	jne    40056a <__do_global_dtors_aux+0x1a>
  400559:	55                   	push   %rbp
  40055a:	48 89 e5             	mov    %rsp,%rbp
  40055d:	e8 6e ff ff ff       	callq  4004d0 <deregister_tm_clones>
  400562:	5d                   	pop    %rbp
  400563:	c6 05 ee 04 20 00 01 	movb   $0x1,0x2004ee(%rip)        # 600a58 <__TMC_END__>
  40056a:	f3 c3                	repz retq 
  40056c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400570 <frame_dummy>:
  400570:	bf 28 08 60 00       	mov    $0x600828,%edi
  400575:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400579:	75 05                	jne    400580 <frame_dummy+0x10>
  40057b:	eb 93                	jmp    400510 <register_tm_clones>
  40057d:	0f 1f 00             	nopl   (%rax)
  400580:	b8 00 00 00 00       	mov    $0x0,%eax
  400585:	48 85 c0             	test   %rax,%rax
  400588:	74 f1                	je     40057b <frame_dummy+0xb>
  40058a:	55                   	push   %rbp
  40058b:	48 89 e5             	mov    %rsp,%rbp
  40058e:	ff d0                	callq  *%rax
  400590:	5d                   	pop    %rbp
  400591:	e9 7a ff ff ff       	jmpq   400510 <register_tm_clones>

0000000000400596 <callsystem>:
  400596:	55                   	push   %rbp
  400597:	48 89 e5             	mov    %rsp,%rbp
  40059a:	bf 84 06 40 00       	mov    $0x400684,%edi
  40059f:	e8 bc fe ff ff       	callq  400460 <system@plt>
  4005a4:	5d                   	pop    %rbp
  4005a5:	c3                   	retq   

00000000004005a6 <vulnerable_function>:
  4005a6:	55                   	push   %rbp
  4005a7:	48 89 e5             	mov    %rsp,%rbp
  4005aa:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  4005ae:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  4005b2:	ba 00 02 00 00       	mov    $0x200,%edx
  4005b7:	48 89 c6             	mov    %rax,%rsi
  4005ba:	bf 00 00 00 00       	mov    $0x0,%edi
  4005bf:	e8 ac fe ff ff       	callq  400470 <read@plt>
  4005c4:	c9                   	leaveq 
  4005c5:	c3                   	retq   

00000000004005c6 <main>:
  4005c6:	55                   	push   %rbp
  4005c7:	48 89 e5             	mov    %rsp,%rbp
  4005ca:	48 83 ec 10          	sub    $0x10,%rsp
  4005ce:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4005d1:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4005d5:	ba 0d 00 00 00       	mov    $0xd,%edx
  4005da:	be 8c 06 40 00       	mov    $0x40068c,%esi
  4005df:	bf 01 00 00 00       	mov    $0x1,%edi
  4005e4:	e8 67 fe ff ff       	callq  400450 <write@plt>
  4005e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4005ee:	e8 b3 ff ff ff       	callq  4005a6 <vulnerable_function>
  4005f3:	c9                   	leaveq 
  4005f4:	c3                   	retq   
  4005f5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005fc:	00 00 00 
  4005ff:	90                   	nop

0000000000400600 <__libc_csu_init>:
  400600:	41 57                	push   %r15
  400602:	41 89 ff             	mov    %edi,%r15d
  400605:	41 56                	push   %r14
  400607:	49 89 f6             	mov    %rsi,%r14
  40060a:	41 55                	push   %r13
  40060c:	49 89 d5             	mov    %rdx,%r13
  40060f:	41 54                	push   %r12
  400611:	4c 8d 25 00 02 20 00 	lea    0x200200(%rip),%r12        # 600818 <__frame_dummy_init_array_entry>
  400618:	55                   	push   %rbp
  400619:	48 8d 2d 00 02 20 00 	lea    0x200200(%rip),%rbp        # 600820 <__init_array_end>
  400620:	53                   	push   %rbx
  400621:	4c 29 e5             	sub    %r12,%rbp
  400624:	31 db                	xor    %ebx,%ebx
  400626:	48 c1 fd 03          	sar    $0x3,%rbp
  40062a:	48 83 ec 08          	sub    $0x8,%rsp
  40062e:	e8 e5 fd ff ff       	callq  400418 <_init>
  400633:	48 85 ed             	test   %rbp,%rbp
  400636:	74 1e                	je     400656 <__libc_csu_init+0x56>
  400638:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40063f:	00 
  400640:	4c 89 ea             	mov    %r13,%rdx
  400643:	4c 89 f6             	mov    %r14,%rsi
  400646:	44 89 ff             	mov    %r15d,%edi
  400649:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40064d:	48 83 c3 01          	add    $0x1,%rbx
  400651:	48 39 eb             	cmp    %rbp,%rbx
  400654:	75 ea                	jne    400640 <__libc_csu_init+0x40>
  400656:	48 83 c4 08          	add    $0x8,%rsp
  40065a:	5b                   	pop    %rbx
  40065b:	5d                   	pop    %rbp
  40065c:	41 5c                	pop    %r12
  40065e:	41 5d                	pop    %r13
  400660:	41 5e                	pop    %r14
  400662:	41 5f                	pop    %r15
  400664:	c3                   	retq   
  400665:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40066c:	00 00 00 00 

0000000000400670 <__libc_csu_fini>:
  400670:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400674 <_fini>:
  400674:	48 83 ec 08          	sub    $0x8,%rsp
  400678:	48 83 c4 08          	add    $0x8,%rsp
  40067c:	c3                   	retq   
