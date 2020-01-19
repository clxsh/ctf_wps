
cgpwn2:     file format elf32-i386


Disassembly of section .init:

080483a0 <_init>:
 80483a0:	53                   	push   %ebx
 80483a1:	83 ec 08             	sub    $0x8,%esp
 80483a4:	e8 d7 00 00 00       	call   8048480 <__x86.get_pc_thunk.bx>
 80483a9:	81 c3 57 1c 00 00    	add    $0x1c57,%ebx
 80483af:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80483b5:	85 c0                	test   %eax,%eax
 80483b7:	74 05                	je     80483be <_init+0x1e>
 80483b9:	e8 72 00 00 00       	call   8048430 <__gmon_start__@plt>
 80483be:	83 c4 08             	add    $0x8,%esp
 80483c1:	5b                   	pop    %ebx
 80483c2:	c3                   	ret    

Disassembly of section .plt:

080483d0 <.plt>:
 80483d0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80483d6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80483dc:	00 00                	add    %al,(%eax)
	...

080483e0 <setbuf@plt>:
 80483e0:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 80483e6:	68 00 00 00 00       	push   $0x0
 80483eb:	e9 e0 ff ff ff       	jmp    80483d0 <.plt>

080483f0 <gets@plt>:
 80483f0:	ff 25 10 a0 04 08    	jmp    *0x804a010
 80483f6:	68 08 00 00 00       	push   $0x8
 80483fb:	e9 d0 ff ff ff       	jmp    80483d0 <.plt>

08048400 <fgets@plt>:
 8048400:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048406:	68 10 00 00 00       	push   $0x10
 804840b:	e9 c0 ff ff ff       	jmp    80483d0 <.plt>

08048410 <puts@plt>:
 8048410:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048416:	68 18 00 00 00       	push   $0x18
 804841b:	e9 b0 ff ff ff       	jmp    80483d0 <.plt>

08048420 <system@plt>:
 8048420:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048426:	68 20 00 00 00       	push   $0x20
 804842b:	e9 a0 ff ff ff       	jmp    80483d0 <.plt>

08048430 <__gmon_start__@plt>:
 8048430:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048436:	68 28 00 00 00       	push   $0x28
 804843b:	e9 90 ff ff ff       	jmp    80483d0 <.plt>

08048440 <__libc_start_main@plt>:
 8048440:	ff 25 24 a0 04 08    	jmp    *0x804a024
 8048446:	68 30 00 00 00       	push   $0x30
 804844b:	e9 80 ff ff ff       	jmp    80483d0 <.plt>

Disassembly of section .text:

08048450 <_start>:
 8048450:	31 ed                	xor    %ebp,%ebp
 8048452:	5e                   	pop    %esi
 8048453:	89 e1                	mov    %esp,%ecx
 8048455:	83 e4 f0             	and    $0xfffffff0,%esp
 8048458:	50                   	push   %eax
 8048459:	54                   	push   %esp
 804845a:	52                   	push   %edx
 804845b:	68 e0 86 04 08       	push   $0x80486e0
 8048460:	68 70 86 04 08       	push   $0x8048670
 8048465:	51                   	push   %ecx
 8048466:	56                   	push   %esi
 8048467:	68 04 86 04 08       	push   $0x8048604
 804846c:	e8 cf ff ff ff       	call   8048440 <__libc_start_main@plt>
 8048471:	f4                   	hlt    
 8048472:	66 90                	xchg   %ax,%ax
 8048474:	66 90                	xchg   %ax,%ax
 8048476:	66 90                	xchg   %ax,%ax
 8048478:	66 90                	xchg   %ax,%ax
 804847a:	66 90                	xchg   %ax,%ax
 804847c:	66 90                	xchg   %ax,%ax
 804847e:	66 90                	xchg   %ax,%ax

08048480 <__x86.get_pc_thunk.bx>:
 8048480:	8b 1c 24             	mov    (%esp),%ebx
 8048483:	c3                   	ret    
 8048484:	66 90                	xchg   %ax,%ax
 8048486:	66 90                	xchg   %ax,%ax
 8048488:	66 90                	xchg   %ax,%ax
 804848a:	66 90                	xchg   %ax,%ax
 804848c:	66 90                	xchg   %ax,%ax
 804848e:	66 90                	xchg   %ax,%ax

08048490 <deregister_tm_clones>:
 8048490:	b8 33 a0 04 08       	mov    $0x804a033,%eax
 8048495:	2d 30 a0 04 08       	sub    $0x804a030,%eax
 804849a:	83 f8 06             	cmp    $0x6,%eax
 804849d:	77 01                	ja     80484a0 <deregister_tm_clones+0x10>
 804849f:	c3                   	ret    
 80484a0:	b8 00 00 00 00       	mov    $0x0,%eax
 80484a5:	85 c0                	test   %eax,%eax
 80484a7:	74 f6                	je     804849f <deregister_tm_clones+0xf>
 80484a9:	55                   	push   %ebp
 80484aa:	89 e5                	mov    %esp,%ebp
 80484ac:	83 ec 18             	sub    $0x18,%esp
 80484af:	c7 04 24 30 a0 04 08 	movl   $0x804a030,(%esp)
 80484b6:	ff d0                	call   *%eax
 80484b8:	c9                   	leave  
 80484b9:	c3                   	ret    
 80484ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

080484c0 <register_tm_clones>:
 80484c0:	b8 30 a0 04 08       	mov    $0x804a030,%eax
 80484c5:	2d 30 a0 04 08       	sub    $0x804a030,%eax
 80484ca:	c1 f8 02             	sar    $0x2,%eax
 80484cd:	89 c2                	mov    %eax,%edx
 80484cf:	c1 ea 1f             	shr    $0x1f,%edx
 80484d2:	01 d0                	add    %edx,%eax
 80484d4:	d1 f8                	sar    %eax
 80484d6:	75 01                	jne    80484d9 <register_tm_clones+0x19>
 80484d8:	c3                   	ret    
 80484d9:	ba 00 00 00 00       	mov    $0x0,%edx
 80484de:	85 d2                	test   %edx,%edx
 80484e0:	74 f6                	je     80484d8 <register_tm_clones+0x18>
 80484e2:	55                   	push   %ebp
 80484e3:	89 e5                	mov    %esp,%ebp
 80484e5:	83 ec 18             	sub    $0x18,%esp
 80484e8:	89 44 24 04          	mov    %eax,0x4(%esp)
 80484ec:	c7 04 24 30 a0 04 08 	movl   $0x804a030,(%esp)
 80484f3:	ff d2                	call   *%edx
 80484f5:	c9                   	leave  
 80484f6:	c3                   	ret    
 80484f7:	89 f6                	mov    %esi,%esi
 80484f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048500 <__do_global_dtors_aux>:
 8048500:	80 3d 64 a0 04 08 00 	cmpb   $0x0,0x804a064
 8048507:	75 13                	jne    804851c <__do_global_dtors_aux+0x1c>
 8048509:	55                   	push   %ebp
 804850a:	89 e5                	mov    %esp,%ebp
 804850c:	83 ec 08             	sub    $0x8,%esp
 804850f:	e8 7c ff ff ff       	call   8048490 <deregister_tm_clones>
 8048514:	c6 05 64 a0 04 08 01 	movb   $0x1,0x804a064
 804851b:	c9                   	leave  
 804851c:	f3 c3                	repz ret 
 804851e:	66 90                	xchg   %ax,%ax

08048520 <frame_dummy>:
 8048520:	a1 10 9f 04 08       	mov    0x8049f10,%eax
 8048525:	85 c0                	test   %eax,%eax
 8048527:	74 1f                	je     8048548 <frame_dummy+0x28>
 8048529:	b8 00 00 00 00       	mov    $0x0,%eax
 804852e:	85 c0                	test   %eax,%eax
 8048530:	74 16                	je     8048548 <frame_dummy+0x28>
 8048532:	55                   	push   %ebp
 8048533:	89 e5                	mov    %esp,%ebp
 8048535:	83 ec 18             	sub    $0x18,%esp
 8048538:	c7 04 24 10 9f 04 08 	movl   $0x8049f10,(%esp)
 804853f:	ff d0                	call   *%eax
 8048541:	c9                   	leave  
 8048542:	e9 79 ff ff ff       	jmp    80484c0 <register_tm_clones>
 8048547:	90                   	nop
 8048548:	e9 73 ff ff ff       	jmp    80484c0 <register_tm_clones>

0804854d <pwn>:
 804854d:	55                   	push   %ebp
 804854e:	89 e5                	mov    %esp,%ebp
 8048550:	83 ec 18             	sub    $0x18,%esp
 8048553:	c7 04 24 00 87 04 08 	movl   $0x8048700,(%esp)
 804855a:	e8 c1 fe ff ff       	call   8048420 <system@plt>
 804855f:	90                   	nop
 8048560:	c9                   	leave  
 8048561:	c3                   	ret    

08048562 <hello>:
 8048562:	55                   	push   %ebp
 8048563:	89 e5                	mov    %esp,%ebp
 8048565:	56                   	push   %esi
 8048566:	53                   	push   %ebx
 8048567:	83 ec 30             	sub    $0x30,%esp
 804856a:	8d 45 da             	lea    -0x26(%ebp),%eax
 804856d:	bb 1e 00 00 00       	mov    $0x1e,%ebx
 8048572:	ba 00 00 00 00       	mov    $0x0,%edx
 8048577:	89 c1                	mov    %eax,%ecx
 8048579:	83 e1 02             	and    $0x2,%ecx
 804857c:	85 c9                	test   %ecx,%ecx
 804857e:	74 09                	je     8048589 <hello+0x27>
 8048580:	66 89 10             	mov    %dx,(%eax)
 8048583:	83 c0 02             	add    $0x2,%eax
 8048586:	83 eb 02             	sub    $0x2,%ebx
 8048589:	89 de                	mov    %ebx,%esi
 804858b:	83 e6 fc             	and    $0xfffffffc,%esi
 804858e:	b9 00 00 00 00       	mov    $0x0,%ecx
 8048593:	89 14 08             	mov    %edx,(%eax,%ecx,1)
 8048596:	83 c1 04             	add    $0x4,%ecx
 8048599:	39 f1                	cmp    %esi,%ecx
 804859b:	72 f6                	jb     8048593 <hello+0x31>
 804859d:	01 c8                	add    %ecx,%eax
 804859f:	89 d9                	mov    %ebx,%ecx
 80485a1:	83 e1 02             	and    $0x2,%ecx
 80485a4:	85 c9                	test   %ecx,%ecx
 80485a6:	74 06                	je     80485ae <hello+0x4c>
 80485a8:	66 89 10             	mov    %dx,(%eax)
 80485ab:	83 c0 02             	add    $0x2,%eax
 80485ae:	83 e3 01             	and    $0x1,%ebx
 80485b1:	89 d9                	mov    %ebx,%ecx
 80485b3:	85 c9                	test   %ecx,%ecx
 80485b5:	74 05                	je     80485bc <hello+0x5a>
 80485b7:	88 10                	mov    %dl,(%eax)
 80485b9:	83 c0 01             	add    $0x1,%eax
 80485bc:	c7 04 24 0c 87 04 08 	movl   $0x804870c,(%esp)
 80485c3:	e8 48 fe ff ff       	call   8048410 <puts@plt>
 80485c8:	a1 44 a0 04 08       	mov    0x804a044,%eax
 80485cd:	89 44 24 08          	mov    %eax,0x8(%esp)
 80485d1:	c7 44 24 04 32 00 00 	movl   $0x32,0x4(%esp)
 80485d8:	00 
 80485d9:	c7 04 24 80 a0 04 08 	movl   $0x804a080,(%esp)
 80485e0:	e8 1b fe ff ff       	call   8048400 <fgets@plt>
 80485e5:	c7 04 24 28 87 04 08 	movl   $0x8048728,(%esp)
 80485ec:	e8 1f fe ff ff       	call   8048410 <puts@plt>
 80485f1:	8d 45 da             	lea    -0x26(%ebp),%eax
 80485f4:	89 04 24             	mov    %eax,(%esp)
 80485f7:	e8 f4 fd ff ff       	call   80483f0 <gets@plt>
 80485fc:	90                   	nop
 80485fd:	83 c4 30             	add    $0x30,%esp
 8048600:	5b                   	pop    %ebx
 8048601:	5e                   	pop    %esi
 8048602:	5d                   	pop    %ebp
 8048603:	c3                   	ret    

08048604 <main>:
 8048604:	55                   	push   %ebp
 8048605:	89 e5                	mov    %esp,%ebp
 8048607:	83 e4 f0             	and    $0xfffffff0,%esp
 804860a:	83 ec 10             	sub    $0x10,%esp
 804860d:	a1 44 a0 04 08       	mov    0x804a044,%eax
 8048612:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048619:	00 
 804861a:	89 04 24             	mov    %eax,(%esp)
 804861d:	e8 be fd ff ff       	call   80483e0 <setbuf@plt>
 8048622:	a1 60 a0 04 08       	mov    0x804a060,%eax
 8048627:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804862e:	00 
 804862f:	89 04 24             	mov    %eax,(%esp)
 8048632:	e8 a9 fd ff ff       	call   80483e0 <setbuf@plt>
 8048637:	a1 40 a0 04 08       	mov    0x804a040,%eax
 804863c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048643:	00 
 8048644:	89 04 24             	mov    %eax,(%esp)
 8048647:	e8 94 fd ff ff       	call   80483e0 <setbuf@plt>
 804864c:	e8 11 ff ff ff       	call   8048562 <hello>
 8048651:	c7 04 24 4f 87 04 08 	movl   $0x804874f,(%esp)
 8048658:	e8 b3 fd ff ff       	call   8048410 <puts@plt>
 804865d:	b8 00 00 00 00       	mov    $0x0,%eax
 8048662:	c9                   	leave  
 8048663:	c3                   	ret    
 8048664:	66 90                	xchg   %ax,%ax
 8048666:	66 90                	xchg   %ax,%ax
 8048668:	66 90                	xchg   %ax,%ax
 804866a:	66 90                	xchg   %ax,%ax
 804866c:	66 90                	xchg   %ax,%ax
 804866e:	66 90                	xchg   %ax,%ax

08048670 <__libc_csu_init>:
 8048670:	55                   	push   %ebp
 8048671:	57                   	push   %edi
 8048672:	31 ff                	xor    %edi,%edi
 8048674:	56                   	push   %esi
 8048675:	53                   	push   %ebx
 8048676:	e8 05 fe ff ff       	call   8048480 <__x86.get_pc_thunk.bx>
 804867b:	81 c3 85 19 00 00    	add    $0x1985,%ebx
 8048681:	83 ec 1c             	sub    $0x1c,%esp
 8048684:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8048688:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804868e:	e8 0d fd ff ff       	call   80483a0 <_init>
 8048693:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048699:	29 c6                	sub    %eax,%esi
 804869b:	c1 fe 02             	sar    $0x2,%esi
 804869e:	85 f6                	test   %esi,%esi
 80486a0:	74 27                	je     80486c9 <__libc_csu_init+0x59>
 80486a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80486a8:	8b 44 24 38          	mov    0x38(%esp),%eax
 80486ac:	89 2c 24             	mov    %ebp,(%esp)
 80486af:	89 44 24 08          	mov    %eax,0x8(%esp)
 80486b3:	8b 44 24 34          	mov    0x34(%esp),%eax
 80486b7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80486bb:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80486c2:	83 c7 01             	add    $0x1,%edi
 80486c5:	39 f7                	cmp    %esi,%edi
 80486c7:	75 df                	jne    80486a8 <__libc_csu_init+0x38>
 80486c9:	83 c4 1c             	add    $0x1c,%esp
 80486cc:	5b                   	pop    %ebx
 80486cd:	5e                   	pop    %esi
 80486ce:	5f                   	pop    %edi
 80486cf:	5d                   	pop    %ebp
 80486d0:	c3                   	ret    
 80486d1:	eb 0d                	jmp    80486e0 <__libc_csu_fini>
 80486d3:	90                   	nop
 80486d4:	90                   	nop
 80486d5:	90                   	nop
 80486d6:	90                   	nop
 80486d7:	90                   	nop
 80486d8:	90                   	nop
 80486d9:	90                   	nop
 80486da:	90                   	nop
 80486db:	90                   	nop
 80486dc:	90                   	nop
 80486dd:	90                   	nop
 80486de:	90                   	nop
 80486df:	90                   	nop

080486e0 <__libc_csu_fini>:
 80486e0:	f3 c3                	repz ret 

Disassembly of section .fini:

080486e4 <_fini>:
 80486e4:	53                   	push   %ebx
 80486e5:	83 ec 08             	sub    $0x8,%esp
 80486e8:	e8 93 fd ff ff       	call   8048480 <__x86.get_pc_thunk.bx>
 80486ed:	81 c3 13 19 00 00    	add    $0x1913,%ebx
 80486f3:	83 c4 08             	add    $0x8,%esp
 80486f6:	5b                   	pop    %ebx
 80486f7:	c3                   	ret    
