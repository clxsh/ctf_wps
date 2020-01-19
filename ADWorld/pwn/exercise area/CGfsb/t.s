
t:     file format elf32-i386


Disassembly of section .init:

0804840c <_init>:
 804840c:	53                   	push   %ebx
 804840d:	83 ec 08             	sub    $0x8,%esp
 8048410:	e8 eb 00 00 00       	call   8048500 <__x86.get_pc_thunk.bx>
 8048415:	81 c3 eb 1b 00 00    	add    $0x1beb,%ebx
 804841b:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048421:	85 c0                	test   %eax,%eax
 8048423:	74 05                	je     804842a <_init+0x1e>
 8048425:	e8 86 00 00 00       	call   80484b0 <__gmon_start__@plt>
 804842a:	83 c4 08             	add    $0x8,%esp
 804842d:	5b                   	pop    %ebx
 804842e:	c3                   	ret    

Disassembly of section .plt:

08048430 <.plt>:
 8048430:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048436:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804843c:	00 00                	add    %al,(%eax)
	...

08048440 <setbuf@plt>:
 8048440:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048446:	68 00 00 00 00       	push   $0x0
 804844b:	e9 e0 ff ff ff       	jmp    8048430 <.plt>

08048450 <read@plt>:
 8048450:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048456:	68 08 00 00 00       	push   $0x8
 804845b:	e9 d0 ff ff ff       	jmp    8048430 <.plt>

08048460 <printf@plt>:
 8048460:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048466:	68 10 00 00 00       	push   $0x10
 804846b:	e9 c0 ff ff ff       	jmp    8048430 <.plt>

08048470 <fgets@plt>:
 8048470:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048476:	68 18 00 00 00       	push   $0x18
 804847b:	e9 b0 ff ff ff       	jmp    8048430 <.plt>

08048480 <__stack_chk_fail@plt>:
 8048480:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048486:	68 20 00 00 00       	push   $0x20
 804848b:	e9 a0 ff ff ff       	jmp    8048430 <.plt>

08048490 <puts@plt>:
 8048490:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048496:	68 28 00 00 00       	push   $0x28
 804849b:	e9 90 ff ff ff       	jmp    8048430 <.plt>

080484a0 <system@plt>:
 80484a0:	ff 25 24 a0 04 08    	jmp    *0x804a024
 80484a6:	68 30 00 00 00       	push   $0x30
 80484ab:	e9 80 ff ff ff       	jmp    8048430 <.plt>

080484b0 <__gmon_start__@plt>:
 80484b0:	ff 25 28 a0 04 08    	jmp    *0x804a028
 80484b6:	68 38 00 00 00       	push   $0x38
 80484bb:	e9 70 ff ff ff       	jmp    8048430 <.plt>

080484c0 <__libc_start_main@plt>:
 80484c0:	ff 25 2c a0 04 08    	jmp    *0x804a02c
 80484c6:	68 40 00 00 00       	push   $0x40
 80484cb:	e9 60 ff ff ff       	jmp    8048430 <.plt>

Disassembly of section .text:

080484d0 <_start>:
 80484d0:	31 ed                	xor    %ebp,%ebp
 80484d2:	5e                   	pop    %esi
 80484d3:	89 e1                	mov    %esp,%ecx
 80484d5:	83 e4 f0             	and    $0xfffffff0,%esp
 80484d8:	50                   	push   %eax
 80484d9:	54                   	push   %esp
 80484da:	52                   	push   %edx
 80484db:	68 a0 87 04 08       	push   $0x80487a0
 80484e0:	68 30 87 04 08       	push   $0x8048730
 80484e5:	51                   	push   %ecx
 80484e6:	56                   	push   %esi
 80484e7:	68 cd 85 04 08       	push   $0x80485cd
 80484ec:	e8 cf ff ff ff       	call   80484c0 <__libc_start_main@plt>
 80484f1:	f4                   	hlt    
 80484f2:	66 90                	xchg   %ax,%ax
 80484f4:	66 90                	xchg   %ax,%ax
 80484f6:	66 90                	xchg   %ax,%ax
 80484f8:	66 90                	xchg   %ax,%ax
 80484fa:	66 90                	xchg   %ax,%ax
 80484fc:	66 90                	xchg   %ax,%ax
 80484fe:	66 90                	xchg   %ax,%ax

08048500 <__x86.get_pc_thunk.bx>:
 8048500:	8b 1c 24             	mov    (%esp),%ebx
 8048503:	c3                   	ret    
 8048504:	66 90                	xchg   %ax,%ax
 8048506:	66 90                	xchg   %ax,%ax
 8048508:	66 90                	xchg   %ax,%ax
 804850a:	66 90                	xchg   %ax,%ax
 804850c:	66 90                	xchg   %ax,%ax
 804850e:	66 90                	xchg   %ax,%ax

08048510 <deregister_tm_clones>:
 8048510:	b8 3b a0 04 08       	mov    $0x804a03b,%eax
 8048515:	2d 38 a0 04 08       	sub    $0x804a038,%eax
 804851a:	83 f8 06             	cmp    $0x6,%eax
 804851d:	77 01                	ja     8048520 <deregister_tm_clones+0x10>
 804851f:	c3                   	ret    
 8048520:	b8 00 00 00 00       	mov    $0x0,%eax
 8048525:	85 c0                	test   %eax,%eax
 8048527:	74 f6                	je     804851f <deregister_tm_clones+0xf>
 8048529:	55                   	push   %ebp
 804852a:	89 e5                	mov    %esp,%ebp
 804852c:	83 ec 18             	sub    $0x18,%esp
 804852f:	c7 04 24 38 a0 04 08 	movl   $0x804a038,(%esp)
 8048536:	ff d0                	call   *%eax
 8048538:	c9                   	leave  
 8048539:	c3                   	ret    
 804853a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048540 <register_tm_clones>:
 8048540:	b8 38 a0 04 08       	mov    $0x804a038,%eax
 8048545:	2d 38 a0 04 08       	sub    $0x804a038,%eax
 804854a:	c1 f8 02             	sar    $0x2,%eax
 804854d:	89 c2                	mov    %eax,%edx
 804854f:	c1 ea 1f             	shr    $0x1f,%edx
 8048552:	01 d0                	add    %edx,%eax
 8048554:	d1 f8                	sar    %eax
 8048556:	75 01                	jne    8048559 <register_tm_clones+0x19>
 8048558:	c3                   	ret    
 8048559:	ba 00 00 00 00       	mov    $0x0,%edx
 804855e:	85 d2                	test   %edx,%edx
 8048560:	74 f6                	je     8048558 <register_tm_clones+0x18>
 8048562:	55                   	push   %ebp
 8048563:	89 e5                	mov    %esp,%ebp
 8048565:	83 ec 18             	sub    $0x18,%esp
 8048568:	89 44 24 04          	mov    %eax,0x4(%esp)
 804856c:	c7 04 24 38 a0 04 08 	movl   $0x804a038,(%esp)
 8048573:	ff d2                	call   *%edx
 8048575:	c9                   	leave  
 8048576:	c3                   	ret    
 8048577:	89 f6                	mov    %esi,%esi
 8048579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048580 <__do_global_dtors_aux>:
 8048580:	80 3d 64 a0 04 08 00 	cmpb   $0x0,0x804a064
 8048587:	75 13                	jne    804859c <__do_global_dtors_aux+0x1c>
 8048589:	55                   	push   %ebp
 804858a:	89 e5                	mov    %esp,%ebp
 804858c:	83 ec 08             	sub    $0x8,%esp
 804858f:	e8 7c ff ff ff       	call   8048510 <deregister_tm_clones>
 8048594:	c6 05 64 a0 04 08 01 	movb   $0x1,0x804a064
 804859b:	c9                   	leave  
 804859c:	f3 c3                	repz ret 
 804859e:	66 90                	xchg   %ax,%ax

080485a0 <frame_dummy>:
 80485a0:	a1 10 9f 04 08       	mov    0x8049f10,%eax
 80485a5:	85 c0                	test   %eax,%eax
 80485a7:	74 1f                	je     80485c8 <frame_dummy+0x28>
 80485a9:	b8 00 00 00 00       	mov    $0x0,%eax
 80485ae:	85 c0                	test   %eax,%eax
 80485b0:	74 16                	je     80485c8 <frame_dummy+0x28>
 80485b2:	55                   	push   %ebp
 80485b3:	89 e5                	mov    %esp,%ebp
 80485b5:	83 ec 18             	sub    $0x18,%esp
 80485b8:	c7 04 24 10 9f 04 08 	movl   $0x8049f10,(%esp)
 80485bf:	ff d0                	call   *%eax
 80485c1:	c9                   	leave  
 80485c2:	e9 79 ff ff ff       	jmp    8048540 <register_tm_clones>
 80485c7:	90                   	nop
 80485c8:	e9 73 ff ff ff       	jmp    8048540 <register_tm_clones>

080485cd <main>:
 80485cd:	55                   	push   %ebp
 80485ce:	89 e5                	mov    %esp,%ebp
 80485d0:	57                   	push   %edi
 80485d1:	56                   	push   %esi
 80485d2:	53                   	push   %ebx
 80485d3:	83 e4 f0             	and    $0xfffffff0,%esp
 80485d6:	81 ec 90 00 00 00    	sub    $0x90,%esp
 80485dc:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80485e2:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%esp)
 80485e9:	31 c0                	xor    %eax,%eax
 80485eb:	a1 44 a0 04 08       	mov    0x804a044,%eax
 80485f0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 80485f7:	00 
 80485f8:	89 04 24             	mov    %eax,(%esp)
 80485fb:	e8 40 fe ff ff       	call   8048440 <setbuf@plt>
 8048600:	a1 60 a0 04 08       	mov    0x804a060,%eax
 8048605:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804860c:	00 
 804860d:	89 04 24             	mov    %eax,(%esp)
 8048610:	e8 2b fe ff ff       	call   8048440 <setbuf@plt>
 8048615:	a1 40 a0 04 08       	mov    0x804a040,%eax
 804861a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048621:	00 
 8048622:	89 04 24             	mov    %eax,(%esp)
 8048625:	e8 16 fe ff ff       	call   8048440 <setbuf@plt>
 804862a:	c7 44 24 1e 00 00 00 	movl   $0x0,0x1e(%esp)
 8048631:	00 
 8048632:	c7 44 24 22 00 00 00 	movl   $0x0,0x22(%esp)
 8048639:	00 
 804863a:	66 c7 44 24 26 00 00 	movw   $0x0,0x26(%esp)
 8048641:	8d 5c 24 28          	lea    0x28(%esp),%ebx
 8048645:	b8 00 00 00 00       	mov    $0x0,%eax
 804864a:	ba 19 00 00 00       	mov    $0x19,%edx
 804864f:	89 df                	mov    %ebx,%edi
 8048651:	89 d1                	mov    %edx,%ecx
 8048653:	f3 ab                	rep stos %eax,%es:(%edi)
 8048655:	c7 04 24 c0 87 04 08 	movl   $0x80487c0,(%esp)
 804865c:	e8 2f fe ff ff       	call   8048490 <puts@plt>
 8048661:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 8048668:	00 
 8048669:	8d 44 24 1e          	lea    0x1e(%esp),%eax
 804866d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048671:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048678:	e8 d3 fd ff ff       	call   8048450 <read@plt>
 804867d:	c7 04 24 da 87 04 08 	movl   $0x80487da,(%esp)
 8048684:	e8 07 fe ff ff       	call   8048490 <puts@plt>
 8048689:	a1 44 a0 04 08       	mov    0x804a044,%eax
 804868e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048692:	c7 44 24 04 64 00 00 	movl   $0x64,0x4(%esp)
 8048699:	00 
 804869a:	8d 44 24 28          	lea    0x28(%esp),%eax
 804869e:	89 04 24             	mov    %eax,(%esp)
 80486a1:	e8 ca fd ff ff       	call   8048470 <fgets@plt>
 80486a6:	8d 44 24 1e          	lea    0x1e(%esp),%eax
 80486aa:	89 44 24 04          	mov    %eax,0x4(%esp)
 80486ae:	c7 04 24 f5 87 04 08 	movl   $0x80487f5,(%esp)
 80486b5:	e8 a6 fd ff ff       	call   8048460 <printf@plt>
 80486ba:	c7 04 24 fe 87 04 08 	movl   $0x80487fe,(%esp)
 80486c1:	e8 ca fd ff ff       	call   8048490 <puts@plt>
 80486c6:	8d 44 24 28          	lea    0x28(%esp),%eax
 80486ca:	89 04 24             	mov    %eax,(%esp)
 80486cd:	e8 8e fd ff ff       	call   8048460 <printf@plt>
 80486d2:	a1 68 a0 04 08       	mov    0x804a068,%eax
 80486d7:	83 f8 08             	cmp    $0x8,%eax
 80486da:	75 1a                	jne    80486f6 <main+0x129>
 80486dc:	c7 04 24 10 88 04 08 	movl   $0x8048810,(%esp)
 80486e3:	e8 a8 fd ff ff       	call   8048490 <puts@plt>
 80486e8:	c7 04 24 32 88 04 08 	movl   $0x8048832,(%esp)
 80486ef:	e8 ac fd ff ff       	call   80484a0 <system@plt>
 80486f4:	eb 0c                	jmp    8048702 <main+0x135>
 80486f6:	c7 04 24 3b 88 04 08 	movl   $0x804883b,(%esp)
 80486fd:	e8 8e fd ff ff       	call   8048490 <puts@plt>
 8048702:	b8 00 00 00 00       	mov    $0x0,%eax
 8048707:	8b b4 24 8c 00 00 00 	mov    0x8c(%esp),%esi
 804870e:	65 33 35 14 00 00 00 	xor    %gs:0x14,%esi
 8048715:	74 05                	je     804871c <main+0x14f>
 8048717:	e8 64 fd ff ff       	call   8048480 <__stack_chk_fail@plt>
 804871c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804871f:	5b                   	pop    %ebx
 8048720:	5e                   	pop    %esi
 8048721:	5f                   	pop    %edi
 8048722:	5d                   	pop    %ebp
 8048723:	c3                   	ret    
 8048724:	66 90                	xchg   %ax,%ax
 8048726:	66 90                	xchg   %ax,%ax
 8048728:	66 90                	xchg   %ax,%ax
 804872a:	66 90                	xchg   %ax,%ax
 804872c:	66 90                	xchg   %ax,%ax
 804872e:	66 90                	xchg   %ax,%ax

08048730 <__libc_csu_init>:
 8048730:	55                   	push   %ebp
 8048731:	57                   	push   %edi
 8048732:	31 ff                	xor    %edi,%edi
 8048734:	56                   	push   %esi
 8048735:	53                   	push   %ebx
 8048736:	e8 c5 fd ff ff       	call   8048500 <__x86.get_pc_thunk.bx>
 804873b:	81 c3 c5 18 00 00    	add    $0x18c5,%ebx
 8048741:	83 ec 1c             	sub    $0x1c,%esp
 8048744:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8048748:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804874e:	e8 b9 fc ff ff       	call   804840c <_init>
 8048753:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048759:	29 c6                	sub    %eax,%esi
 804875b:	c1 fe 02             	sar    $0x2,%esi
 804875e:	85 f6                	test   %esi,%esi
 8048760:	74 27                	je     8048789 <__libc_csu_init+0x59>
 8048762:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048768:	8b 44 24 38          	mov    0x38(%esp),%eax
 804876c:	89 2c 24             	mov    %ebp,(%esp)
 804876f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048773:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048777:	89 44 24 04          	mov    %eax,0x4(%esp)
 804877b:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8048782:	83 c7 01             	add    $0x1,%edi
 8048785:	39 f7                	cmp    %esi,%edi
 8048787:	75 df                	jne    8048768 <__libc_csu_init+0x38>
 8048789:	83 c4 1c             	add    $0x1c,%esp
 804878c:	5b                   	pop    %ebx
 804878d:	5e                   	pop    %esi
 804878e:	5f                   	pop    %edi
 804878f:	5d                   	pop    %ebp
 8048790:	c3                   	ret    
 8048791:	eb 0d                	jmp    80487a0 <__libc_csu_fini>
 8048793:	90                   	nop
 8048794:	90                   	nop
 8048795:	90                   	nop
 8048796:	90                   	nop
 8048797:	90                   	nop
 8048798:	90                   	nop
 8048799:	90                   	nop
 804879a:	90                   	nop
 804879b:	90                   	nop
 804879c:	90                   	nop
 804879d:	90                   	nop
 804879e:	90                   	nop
 804879f:	90                   	nop

080487a0 <__libc_csu_fini>:
 80487a0:	f3 c3                	repz ret 

Disassembly of section .fini:

080487a4 <_fini>:
 80487a4:	53                   	push   %ebx
 80487a5:	83 ec 08             	sub    $0x8,%esp
 80487a8:	e8 53 fd ff ff       	call   8048500 <__x86.get_pc_thunk.bx>
 80487ad:	81 c3 53 18 00 00    	add    $0x1853,%ebx
 80487b3:	83 c4 08             	add    $0x8,%esp
 80487b6:	5b                   	pop    %ebx
 80487b7:	c3                   	ret    
