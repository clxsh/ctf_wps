
orw:     file format elf32-i386


Disassembly of section .init:

08048330 <_init>:
 8048330:	53                   	push   %ebx
 8048331:	83 ec 08             	sub    $0x8,%esp
 8048334:	e8 c7 00 00 00       	call   8048400 <__x86.get_pc_thunk.bx>
 8048339:	81 c3 c7 1c 00 00    	add    $0x1cc7,%ebx
 804833f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048345:	85 c0                	test   %eax,%eax
 8048347:	74 05                	je     804834e <_init+0x1e>
 8048349:	e8 72 00 00 00       	call   80483c0 <__gmon_start__@plt>
 804834e:	83 c4 08             	add    $0x8,%esp
 8048351:	5b                   	pop    %ebx
 8048352:	c3                   	ret    

Disassembly of section .plt:

08048360 <.plt>:
 8048360:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048366:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804836c:	00 00                	add    %al,(%eax)
	...

08048370 <read@plt>:
 8048370:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048376:	68 00 00 00 00       	push   $0x0
 804837b:	e9 e0 ff ff ff       	jmp    8048360 <.plt>

08048380 <printf@plt>:
 8048380:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048386:	68 08 00 00 00       	push   $0x8
 804838b:	e9 d0 ff ff ff       	jmp    8048360 <.plt>

08048390 <__stack_chk_fail@plt>:
 8048390:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048396:	68 10 00 00 00       	push   $0x10
 804839b:	e9 c0 ff ff ff       	jmp    8048360 <.plt>

080483a0 <__libc_start_main@plt>:
 80483a0:	ff 25 18 a0 04 08    	jmp    *0x804a018
 80483a6:	68 18 00 00 00       	push   $0x18
 80483ab:	e9 b0 ff ff ff       	jmp    8048360 <.plt>

080483b0 <prctl@plt>:
 80483b0:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 80483b6:	68 20 00 00 00       	push   $0x20
 80483bb:	e9 a0 ff ff ff       	jmp    8048360 <.plt>

Disassembly of section .plt.got:

080483c0 <__gmon_start__@plt>:
 80483c0:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 80483c6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080483d0 <_start>:
 80483d0:	31 ed                	xor    %ebp,%ebp
 80483d2:	5e                   	pop    %esi
 80483d3:	89 e1                	mov    %esp,%ecx
 80483d5:	83 e4 f0             	and    $0xfffffff0,%esp
 80483d8:	50                   	push   %eax
 80483d9:	54                   	push   %esp
 80483da:	52                   	push   %edx
 80483db:	68 00 86 04 08       	push   $0x8048600
 80483e0:	68 a0 85 04 08       	push   $0x80485a0
 80483e5:	51                   	push   %ecx
 80483e6:	56                   	push   %esi
 80483e7:	68 48 85 04 08       	push   $0x8048548
 80483ec:	e8 af ff ff ff       	call   80483a0 <__libc_start_main@plt>
 80483f1:	f4                   	hlt    
 80483f2:	66 90                	xchg   %ax,%ax
 80483f4:	66 90                	xchg   %ax,%ax
 80483f6:	66 90                	xchg   %ax,%ax
 80483f8:	66 90                	xchg   %ax,%ax
 80483fa:	66 90                	xchg   %ax,%ax
 80483fc:	66 90                	xchg   %ax,%ax
 80483fe:	66 90                	xchg   %ax,%ax

08048400 <__x86.get_pc_thunk.bx>:
 8048400:	8b 1c 24             	mov    (%esp),%ebx
 8048403:	c3                   	ret    
 8048404:	66 90                	xchg   %ax,%ax
 8048406:	66 90                	xchg   %ax,%ax
 8048408:	66 90                	xchg   %ax,%ax
 804840a:	66 90                	xchg   %ax,%ax
 804840c:	66 90                	xchg   %ax,%ax
 804840e:	66 90                	xchg   %ax,%ax

08048410 <deregister_tm_clones>:
 8048410:	b8 2b a0 04 08       	mov    $0x804a02b,%eax
 8048415:	2d 28 a0 04 08       	sub    $0x804a028,%eax
 804841a:	83 f8 06             	cmp    $0x6,%eax
 804841d:	76 1a                	jbe    8048439 <deregister_tm_clones+0x29>
 804841f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048424:	85 c0                	test   %eax,%eax
 8048426:	74 11                	je     8048439 <deregister_tm_clones+0x29>
 8048428:	55                   	push   %ebp
 8048429:	89 e5                	mov    %esp,%ebp
 804842b:	83 ec 14             	sub    $0x14,%esp
 804842e:	68 28 a0 04 08       	push   $0x804a028
 8048433:	ff d0                	call   *%eax
 8048435:	83 c4 10             	add    $0x10,%esp
 8048438:	c9                   	leave  
 8048439:	f3 c3                	repz ret 
 804843b:	90                   	nop
 804843c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048440 <register_tm_clones>:
 8048440:	b8 28 a0 04 08       	mov    $0x804a028,%eax
 8048445:	2d 28 a0 04 08       	sub    $0x804a028,%eax
 804844a:	c1 f8 02             	sar    $0x2,%eax
 804844d:	89 c2                	mov    %eax,%edx
 804844f:	c1 ea 1f             	shr    $0x1f,%edx
 8048452:	01 d0                	add    %edx,%eax
 8048454:	d1 f8                	sar    %eax
 8048456:	74 1b                	je     8048473 <register_tm_clones+0x33>
 8048458:	ba 00 00 00 00       	mov    $0x0,%edx
 804845d:	85 d2                	test   %edx,%edx
 804845f:	74 12                	je     8048473 <register_tm_clones+0x33>
 8048461:	55                   	push   %ebp
 8048462:	89 e5                	mov    %esp,%ebp
 8048464:	83 ec 10             	sub    $0x10,%esp
 8048467:	50                   	push   %eax
 8048468:	68 28 a0 04 08       	push   $0x804a028
 804846d:	ff d2                	call   *%edx
 804846f:	83 c4 10             	add    $0x10,%esp
 8048472:	c9                   	leave  
 8048473:	f3 c3                	repz ret 
 8048475:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048479:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048480 <__do_global_dtors_aux>:
 8048480:	80 3d 40 a0 04 08 00 	cmpb   $0x0,0x804a040
 8048487:	75 13                	jne    804849c <__do_global_dtors_aux+0x1c>
 8048489:	55                   	push   %ebp
 804848a:	89 e5                	mov    %esp,%ebp
 804848c:	83 ec 08             	sub    $0x8,%esp
 804848f:	e8 7c ff ff ff       	call   8048410 <deregister_tm_clones>
 8048494:	c6 05 40 a0 04 08 01 	movb   $0x1,0x804a040
 804849b:	c9                   	leave  
 804849c:	f3 c3                	repz ret 
 804849e:	66 90                	xchg   %ax,%ax

080484a0 <frame_dummy>:
 80484a0:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 80484a5:	8b 10                	mov    (%eax),%edx
 80484a7:	85 d2                	test   %edx,%edx
 80484a9:	75 05                	jne    80484b0 <frame_dummy+0x10>
 80484ab:	eb 93                	jmp    8048440 <register_tm_clones>
 80484ad:	8d 76 00             	lea    0x0(%esi),%esi
 80484b0:	ba 00 00 00 00       	mov    $0x0,%edx
 80484b5:	85 d2                	test   %edx,%edx
 80484b7:	74 f2                	je     80484ab <frame_dummy+0xb>
 80484b9:	55                   	push   %ebp
 80484ba:	89 e5                	mov    %esp,%ebp
 80484bc:	83 ec 14             	sub    $0x14,%esp
 80484bf:	50                   	push   %eax
 80484c0:	ff d2                	call   *%edx
 80484c2:	83 c4 10             	add    $0x10,%esp
 80484c5:	c9                   	leave  
 80484c6:	e9 75 ff ff ff       	jmp    8048440 <register_tm_clones>

080484cb <orw_seccomp>:
 80484cb:	55                   	push   %ebp
 80484cc:	89 e5                	mov    %esp,%ebp
 80484ce:	57                   	push   %edi
 80484cf:	56                   	push   %esi
 80484d0:	53                   	push   %ebx
 80484d1:	83 ec 7c             	sub    $0x7c,%esp
 80484d4:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80484da:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 80484dd:	31 c0                	xor    %eax,%eax
 80484df:	8d 45 84             	lea    -0x7c(%ebp),%eax
 80484e2:	bb 40 86 04 08       	mov    $0x8048640,%ebx
 80484e7:	ba 18 00 00 00       	mov    $0x18,%edx
 80484ec:	89 c7                	mov    %eax,%edi
 80484ee:	89 de                	mov    %ebx,%esi
 80484f0:	89 d1                	mov    %edx,%ecx
 80484f2:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 80484f4:	66 c7 85 7c ff ff ff 	movw   $0xc,-0x84(%ebp)
 80484fb:	0c 00 
 80484fd:	8d 45 84             	lea    -0x7c(%ebp),%eax
 8048500:	89 45 80             	mov    %eax,-0x80(%ebp)
 8048503:	83 ec 0c             	sub    $0xc,%esp
 8048506:	6a 00                	push   $0x0
 8048508:	6a 00                	push   $0x0
 804850a:	6a 00                	push   $0x0
 804850c:	6a 01                	push   $0x1
 804850e:	6a 26                	push   $0x26
 8048510:	e8 9b fe ff ff       	call   80483b0 <prctl@plt>
 8048515:	83 c4 20             	add    $0x20,%esp
 8048518:	83 ec 04             	sub    $0x4,%esp
 804851b:	8d 85 7c ff ff ff    	lea    -0x84(%ebp),%eax
 8048521:	50                   	push   %eax
 8048522:	6a 02                	push   $0x2
 8048524:	6a 16                	push   $0x16
 8048526:	e8 85 fe ff ff       	call   80483b0 <prctl@plt>
 804852b:	83 c4 10             	add    $0x10,%esp
 804852e:	90                   	nop
 804852f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048532:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048539:	74 05                	je     8048540 <orw_seccomp+0x75>
 804853b:	e8 50 fe ff ff       	call   8048390 <__stack_chk_fail@plt>
 8048540:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048543:	5b                   	pop    %ebx
 8048544:	5e                   	pop    %esi
 8048545:	5f                   	pop    %edi
 8048546:	5d                   	pop    %ebp
 8048547:	c3                   	ret    

08048548 <main>:
 8048548:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 804854c:	83 e4 f0             	and    $0xfffffff0,%esp
 804854f:	ff 71 fc             	pushl  -0x4(%ecx)
 8048552:	55                   	push   %ebp
 8048553:	89 e5                	mov    %esp,%ebp
 8048555:	51                   	push   %ecx
 8048556:	83 ec 04             	sub    $0x4,%esp
 8048559:	e8 6d ff ff ff       	call   80484cb <orw_seccomp>
 804855e:	83 ec 0c             	sub    $0xc,%esp
 8048561:	68 a0 86 04 08       	push   $0x80486a0
 8048566:	e8 15 fe ff ff       	call   8048380 <printf@plt>
 804856b:	83 c4 10             	add    $0x10,%esp
 804856e:	83 ec 04             	sub    $0x4,%esp
 8048571:	68 c8 00 00 00       	push   $0xc8
 8048576:	68 60 a0 04 08       	push   $0x804a060
 804857b:	6a 00                	push   $0x0
 804857d:	e8 ee fd ff ff       	call   8048370 <read@plt>
 8048582:	83 c4 10             	add    $0x10,%esp
 8048585:	b8 60 a0 04 08       	mov    $0x804a060,%eax
 804858a:	ff d0                	call   *%eax
 804858c:	b8 00 00 00 00       	mov    $0x0,%eax
 8048591:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 8048594:	c9                   	leave  
 8048595:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048598:	c3                   	ret    
 8048599:	66 90                	xchg   %ax,%ax
 804859b:	66 90                	xchg   %ax,%ax
 804859d:	66 90                	xchg   %ax,%ax
 804859f:	90                   	nop

080485a0 <__libc_csu_init>:
 80485a0:	55                   	push   %ebp
 80485a1:	57                   	push   %edi
 80485a2:	56                   	push   %esi
 80485a3:	53                   	push   %ebx
 80485a4:	e8 57 fe ff ff       	call   8048400 <__x86.get_pc_thunk.bx>
 80485a9:	81 c3 57 1a 00 00    	add    $0x1a57,%ebx
 80485af:	83 ec 0c             	sub    $0xc,%esp
 80485b2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80485b6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80485bc:	e8 6f fd ff ff       	call   8048330 <_init>
 80485c1:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80485c7:	29 c6                	sub    %eax,%esi
 80485c9:	c1 fe 02             	sar    $0x2,%esi
 80485cc:	85 f6                	test   %esi,%esi
 80485ce:	74 25                	je     80485f5 <__libc_csu_init+0x55>
 80485d0:	31 ff                	xor    %edi,%edi
 80485d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80485d8:	83 ec 04             	sub    $0x4,%esp
 80485db:	ff 74 24 2c          	pushl  0x2c(%esp)
 80485df:	ff 74 24 2c          	pushl  0x2c(%esp)
 80485e3:	55                   	push   %ebp
 80485e4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80485eb:	83 c7 01             	add    $0x1,%edi
 80485ee:	83 c4 10             	add    $0x10,%esp
 80485f1:	39 f7                	cmp    %esi,%edi
 80485f3:	75 e3                	jne    80485d8 <__libc_csu_init+0x38>
 80485f5:	83 c4 0c             	add    $0xc,%esp
 80485f8:	5b                   	pop    %ebx
 80485f9:	5e                   	pop    %esi
 80485fa:	5f                   	pop    %edi
 80485fb:	5d                   	pop    %ebp
 80485fc:	c3                   	ret    
 80485fd:	8d 76 00             	lea    0x0(%esi),%esi

08048600 <__libc_csu_fini>:
 8048600:	f3 c3                	repz ret 

Disassembly of section .fini:

08048604 <_fini>:
 8048604:	53                   	push   %ebx
 8048605:	83 ec 08             	sub    $0x8,%esp
 8048608:	e8 f3 fd ff ff       	call   8048400 <__x86.get_pc_thunk.bx>
 804860d:	81 c3 f3 19 00 00    	add    $0x19f3,%ebx
 8048613:	83 c4 08             	add    $0x8,%esp
 8048616:	5b                   	pop    %ebx
 8048617:	c3                   	ret    
