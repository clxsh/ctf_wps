
stack2:     file format elf32-i386


Disassembly of section .init:

080483e4 <_init>:
 80483e4:	53                   	push   %ebx
 80483e5:	83 ec 08             	sub    $0x8,%esp
 80483e8:	e8 e3 00 00 00       	call   80484d0 <__x86.get_pc_thunk.bx>
 80483ed:	81 c3 13 1c 00 00    	add    $0x1c13,%ebx
 80483f3:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80483f9:	85 c0                	test   %eax,%eax
 80483fb:	74 05                	je     8048402 <_init+0x1e>
 80483fd:	e8 8e 00 00 00       	call   8048490 <__gmon_start__@plt>
 8048402:	83 c4 08             	add    $0x8,%esp
 8048405:	5b                   	pop    %ebx
 8048406:	c3                   	ret    

Disassembly of section .plt:

08048410 <.plt>:
 8048410:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048416:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804841c:	00 00                	add    %al,(%eax)
	...

08048420 <printf@plt>:
 8048420:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048426:	68 00 00 00 00       	push   $0x0
 804842b:	e9 e0 ff ff ff       	jmp    8048410 <.plt>

08048430 <__stack_chk_fail@plt>:
 8048430:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048436:	68 08 00 00 00       	push   $0x8
 804843b:	e9 d0 ff ff ff       	jmp    8048410 <.plt>

08048440 <puts@plt>:
 8048440:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048446:	68 10 00 00 00       	push   $0x10
 804844b:	e9 c0 ff ff ff       	jmp    8048410 <.plt>

08048450 <system@plt>:
 8048450:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048456:	68 18 00 00 00       	push   $0x18
 804845b:	e9 b0 ff ff ff       	jmp    8048410 <.plt>

08048460 <__libc_start_main@plt>:
 8048460:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048466:	68 20 00 00 00       	push   $0x20
 804846b:	e9 a0 ff ff ff       	jmp    8048410 <.plt>

08048470 <setvbuf@plt>:
 8048470:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048476:	68 28 00 00 00       	push   $0x28
 804847b:	e9 90 ff ff ff       	jmp    8048410 <.plt>

08048480 <__isoc99_scanf@plt>:
 8048480:	ff 25 24 a0 04 08    	jmp    *0x804a024
 8048486:	68 30 00 00 00       	push   $0x30
 804848b:	e9 80 ff ff ff       	jmp    8048410 <.plt>

Disassembly of section .plt.got:

08048490 <__gmon_start__@plt>:
 8048490:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048496:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

080484a0 <_start>:
 80484a0:	31 ed                	xor    %ebp,%ebp
 80484a2:	5e                   	pop    %esi
 80484a3:	89 e1                	mov    %esp,%ecx
 80484a5:	83 e4 f0             	and    $0xfffffff0,%esp
 80484a8:	50                   	push   %eax
 80484a9:	54                   	push   %esp
 80484aa:	52                   	push   %edx
 80484ab:	68 60 89 04 08       	push   $0x8048960
 80484b0:	68 00 89 04 08       	push   $0x8048900
 80484b5:	51                   	push   %ecx
 80484b6:	56                   	push   %esi
 80484b7:	68 d0 85 04 08       	push   $0x80485d0
 80484bc:	e8 9f ff ff ff       	call   8048460 <__libc_start_main@plt>
 80484c1:	f4                   	hlt    
 80484c2:	66 90                	xchg   %ax,%ax
 80484c4:	66 90                	xchg   %ax,%ax
 80484c6:	66 90                	xchg   %ax,%ax
 80484c8:	66 90                	xchg   %ax,%ax
 80484ca:	66 90                	xchg   %ax,%ax
 80484cc:	66 90                	xchg   %ax,%ax
 80484ce:	66 90                	xchg   %ax,%ax

080484d0 <__x86.get_pc_thunk.bx>:
 80484d0:	8b 1c 24             	mov    (%esp),%ebx
 80484d3:	c3                   	ret    
 80484d4:	66 90                	xchg   %ax,%ax
 80484d6:	66 90                	xchg   %ax,%ax
 80484d8:	66 90                	xchg   %ax,%ax
 80484da:	66 90                	xchg   %ax,%ax
 80484dc:	66 90                	xchg   %ax,%ax
 80484de:	66 90                	xchg   %ax,%ax

080484e0 <deregister_tm_clones>:
 80484e0:	b8 33 a0 04 08       	mov    $0x804a033,%eax
 80484e5:	2d 30 a0 04 08       	sub    $0x804a030,%eax
 80484ea:	83 f8 06             	cmp    $0x6,%eax
 80484ed:	76 1a                	jbe    8048509 <deregister_tm_clones+0x29>
 80484ef:	b8 00 00 00 00       	mov    $0x0,%eax
 80484f4:	85 c0                	test   %eax,%eax
 80484f6:	74 11                	je     8048509 <deregister_tm_clones+0x29>
 80484f8:	55                   	push   %ebp
 80484f9:	89 e5                	mov    %esp,%ebp
 80484fb:	83 ec 14             	sub    $0x14,%esp
 80484fe:	68 30 a0 04 08       	push   $0x804a030
 8048503:	ff d0                	call   *%eax
 8048505:	83 c4 10             	add    $0x10,%esp
 8048508:	c9                   	leave  
 8048509:	f3 c3                	repz ret 
 804850b:	90                   	nop
 804850c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048510 <register_tm_clones>:
 8048510:	b8 30 a0 04 08       	mov    $0x804a030,%eax
 8048515:	2d 30 a0 04 08       	sub    $0x804a030,%eax
 804851a:	c1 f8 02             	sar    $0x2,%eax
 804851d:	89 c2                	mov    %eax,%edx
 804851f:	c1 ea 1f             	shr    $0x1f,%edx
 8048522:	01 d0                	add    %edx,%eax
 8048524:	d1 f8                	sar    %eax
 8048526:	74 1b                	je     8048543 <register_tm_clones+0x33>
 8048528:	ba 00 00 00 00       	mov    $0x0,%edx
 804852d:	85 d2                	test   %edx,%edx
 804852f:	74 12                	je     8048543 <register_tm_clones+0x33>
 8048531:	55                   	push   %ebp
 8048532:	89 e5                	mov    %esp,%ebp
 8048534:	83 ec 10             	sub    $0x10,%esp
 8048537:	50                   	push   %eax
 8048538:	68 30 a0 04 08       	push   $0x804a030
 804853d:	ff d2                	call   *%edx
 804853f:	83 c4 10             	add    $0x10,%esp
 8048542:	c9                   	leave  
 8048543:	f3 c3                	repz ret 
 8048545:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048549:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048550 <__do_global_dtors_aux>:
 8048550:	80 3d 48 a0 04 08 00 	cmpb   $0x0,0x804a048
 8048557:	75 13                	jne    804856c <__do_global_dtors_aux+0x1c>
 8048559:	55                   	push   %ebp
 804855a:	89 e5                	mov    %esp,%ebp
 804855c:	83 ec 08             	sub    $0x8,%esp
 804855f:	e8 7c ff ff ff       	call   80484e0 <deregister_tm_clones>
 8048564:	c6 05 48 a0 04 08 01 	movb   $0x1,0x804a048
 804856b:	c9                   	leave  
 804856c:	f3 c3                	repz ret 
 804856e:	66 90                	xchg   %ax,%ax

08048570 <frame_dummy>:
 8048570:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048575:	8b 10                	mov    (%eax),%edx
 8048577:	85 d2                	test   %edx,%edx
 8048579:	75 05                	jne    8048580 <frame_dummy+0x10>
 804857b:	eb 93                	jmp    8048510 <register_tm_clones>
 804857d:	8d 76 00             	lea    0x0(%esi),%esi
 8048580:	ba 00 00 00 00       	mov    $0x0,%edx
 8048585:	85 d2                	test   %edx,%edx
 8048587:	74 f2                	je     804857b <frame_dummy+0xb>
 8048589:	55                   	push   %ebp
 804858a:	89 e5                	mov    %esp,%ebp
 804858c:	83 ec 14             	sub    $0x14,%esp
 804858f:	50                   	push   %eax
 8048590:	ff d2                	call   *%edx
 8048592:	83 c4 10             	add    $0x10,%esp
 8048595:	c9                   	leave  
 8048596:	e9 75 ff ff ff       	jmp    8048510 <register_tm_clones>

0804859b <hackhere>:
 804859b:	55                   	push   %ebp
 804859c:	89 e5                	mov    %esp,%ebp
 804859e:	83 ec 18             	sub    $0x18,%esp
 80485a1:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80485a7:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80485aa:	31 c0                	xor    %eax,%eax
 80485ac:	83 ec 0c             	sub    $0xc,%esp
 80485af:	68 80 89 04 08       	push   $0x8048980
 80485b4:	e8 97 fe ff ff       	call   8048450 <system@plt>
 80485b9:	83 c4 10             	add    $0x10,%esp
 80485bc:	90                   	nop
 80485bd:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80485c0:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 80485c7:	74 05                	je     80485ce <hackhere+0x33>
 80485c9:	e8 62 fe ff ff       	call   8048430 <__stack_chk_fail@plt>
 80485ce:	c9                   	leave  
 80485cf:	c3                   	ret    

080485d0 <main>:
 80485d0:	8d 4c 24 04          	lea    0x4(%esp),%ecx           esp = 0xffffd2dc
 80485d4:	83 e4 f0             	and    $0xfffffff0,%esp         esp = 0xffffd2d0
 80485d7:	ff 71 fc             	pushl  -0x4(%ecx)               esp = 0xffffd2cc

 
 80485da:	55                   	push   %ebp
 80485db:	89 e5                	mov    %esp,%ebp
 80485dd:	51                   	push   %ecx
 80485de:	81 ec a4 00 00 00    	sub    $0xa4,%esp
 80485e4:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80485ea:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80485ed:	31 c0                	xor    %eax,%eax
 80485ef:	a1 40 a0 04 08       	mov    0x804a040,%eax
 80485f4:	6a 00                	push   $0x0
 80485f6:	6a 02                	push   $0x2
 80485f8:	6a 00                	push   $0x0
 80485fa:	50                   	push   %eax
 80485fb:	e8 70 fe ff ff       	call   8048470 <setvbuf@plt>
 8048600:	83 c4 10             	add    $0x10,%esp
 8048603:	a1 44 a0 04 08       	mov    0x804a044,%eax
 8048608:	6a 00                	push   $0x0
 804860a:	6a 02                	push   $0x2
 804860c:	6a 00                	push   $0x0
 804860e:	50                   	push   %eax
 804860f:	e8 5c fe ff ff       	call   8048470 <setvbuf@plt>
 8048614:	83 c4 10             	add    $0x10,%esp
 8048617:	c7 45 80 00 00 00 00 	movl   $0x0,-0x80(%ebp)
 804861e:	83 ec 0c             	sub    $0xc,%esp
 8048621:	68 8c 89 04 08       	push   $0x804898c
 8048626:	e8 15 fe ff ff       	call   8048440 <puts@plt>
 804862b:	83 c4 10             	add    $0x10,%esp
 804862e:	83 ec 0c             	sub    $0xc,%esp
 8048631:	68 c8 89 04 08       	push   $0x80489c8
 8048636:	e8 05 fe ff ff       	call   8048440 <puts@plt>
 804863b:	83 c4 10             	add    $0x10,%esp
 804863e:	83 ec 0c             	sub    $0xc,%esp
 8048641:	68 04 8a 04 08       	push   $0x8048a04
 8048646:	e8 f5 fd ff ff       	call   8048440 <puts@plt>
 804864b:	83 c4 10             	add    $0x10,%esp
 804864e:	83 ec 0c             	sub    $0xc,%esp
 8048651:	68 40 8a 04 08       	push   $0x8048a40
 8048656:	e8 e5 fd ff ff       	call   8048440 <puts@plt>
 804865b:	83 c4 10             	add    $0x10,%esp
 804865e:	83 ec 0c             	sub    $0xc,%esp
 8048661:	68 8c 89 04 08       	push   $0x804898c
 8048666:	e8 d5 fd ff ff       	call   8048440 <puts@plt>
 804866b:	83 c4 10             	add    $0x10,%esp
 804866e:	83 ec 0c             	sub    $0xc,%esp
 8048671:	68 7c 8a 04 08       	push   $0x8048a7c
 8048676:	e8 c5 fd ff ff       	call   8048440 <puts@plt>
 804867b:	83 c4 10             	add    $0x10,%esp
 804867e:	83 ec 08             	sub    $0x8,%esp
 8048681:	8d 85 70 ff ff ff    	lea    -0x90(%ebp),%eax
 8048687:	50                   	push   %eax
 8048688:	68 97 8a 04 08       	push   $0x8048a97
 804868d:	e8 ee fd ff ff       	call   8048480 <__isoc99_scanf@plt>
 8048692:	83 c4 10             	add    $0x10,%esp
 8048695:	83 ec 0c             	sub    $0xc,%esp
 8048698:	68 9a 8a 04 08       	push   $0x8048a9a
 804869d:	e8 9e fd ff ff       	call   8048440 <puts@plt>
 80486a2:	83 c4 10             	add    $0x10,%esp
 80486a5:	c7 45 84 00 00 00 00 	movl   $0x0,-0x7c(%ebp)
 80486ac:	eb 2d                	jmp    80486db <main+0x10b>
 80486ae:	83 ec 08             	sub    $0x8,%esp
 80486b1:	8d 85 78 ff ff ff    	lea    -0x88(%ebp),%eax
 80486b7:	50                   	push   %eax
 80486b8:	68 97 8a 04 08       	push   $0x8048a97
 80486bd:	e8 be fd ff ff       	call   8048480 <__isoc99_scanf@plt>
 80486c2:	83 c4 10             	add    $0x10,%esp
 80486c5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 80486cb:	89 c1                	mov    %eax,%ecx
 80486cd:	8d 55 90             	lea    -0x70(%ebp),%edx
 80486d0:	8b 45 84             	mov    -0x7c(%ebp),%eax
 80486d3:	01 d0                	add    %edx,%eax
 80486d5:	88 08                	mov    %cl,(%eax)
 80486d7:	83 45 84 01          	addl   $0x1,-0x7c(%ebp)
 80486db:	8b 55 84             	mov    -0x7c(%ebp),%edx
 80486de:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
 80486e4:	39 c2                	cmp    %eax,%edx
 80486e6:	73 06                	jae    80486ee <main+0x11e>
 80486e8:	83 7d 84 63          	cmpl   $0x63,-0x7c(%ebp)
 80486ec:	7e c0                	jle    80486ae <main+0xde>
 80486ee:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
 80486f4:	89 85 7c ff ff ff    	mov    %eax,-0x84(%ebp)
 80486fa:	83 ec 0c             	sub    $0xc,%esp
 80486fd:	68 b0 8a 04 08       	push   $0x8048ab0
 8048702:	e8 39 fd ff ff       	call   8048440 <puts@plt>
 8048707:	83 c4 10             	add    $0x10,%esp
 804870a:	83 ec 08             	sub    $0x8,%esp
 804870d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
 8048713:	50                   	push   %eax
 8048714:	68 97 8a 04 08       	push   $0x8048a97
 8048719:	e8 62 fd ff ff       	call   8048480 <__isoc99_scanf@plt>
 804871e:	83 c4 10             	add    $0x10,%esp
 8048721:	8b 85 74 ff ff ff    	mov    -0x8c(%ebp),%eax
 8048727:	83 f8 02             	cmp    $0x2,%eax
 804872a:	74 75                	je     80487a1 <main+0x1d1>
 804872c:	83 f8 02             	cmp    $0x2,%eax
 804872f:	77 0a                	ja     804873b <main+0x16b>
 8048731:	83 f8 01             	cmp    $0x1,%eax
 8048734:	74 1c                	je     8048752 <main+0x182>
 8048736:	e9 92 01 00 00       	jmp    80488cd <main+0x2fd>
 804873b:	83 f8 03             	cmp    $0x3,%eax
 804873e:	0f 84 af 00 00 00    	je     80487f3 <main+0x223>
 8048744:	83 f8 04             	cmp    $0x4,%eax
 8048747:	0f 84 09 01 00 00    	je     8048856 <main+0x286>
 804874d:	e9 7b 01 00 00       	jmp    80488cd <main+0x2fd>
 8048752:	83 ec 0c             	sub    $0xc,%esp
 8048755:	68 f6 8a 04 08       	push   $0x8048af6
 804875a:	e8 e1 fc ff ff       	call   8048440 <puts@plt>
 804875f:	83 c4 10             	add    $0x10,%esp
 8048762:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%ebp)
 8048769:	eb 26                	jmp    8048791 <main+0x1c1>
 804876b:	8d 55 90             	lea    -0x70(%ebp),%edx
 804876e:	8b 45 88             	mov    -0x78(%ebp),%eax
 8048771:	01 d0                	add    %edx,%eax
 8048773:	0f b6 00             	movzbl (%eax),%eax
 8048776:	0f be c0             	movsbl %al,%eax
 8048779:	83 ec 04             	sub    $0x4,%esp
 804877c:	50                   	push   %eax
 804877d:	ff 75 88             	pushl  -0x78(%ebp)
 8048780:	68 01 8b 04 08       	push   $0x8048b01
 8048785:	e8 96 fc ff ff       	call   8048420 <printf@plt>
 804878a:	83 c4 10             	add    $0x10,%esp
 804878d:	83 45 88 01          	addl   $0x1,-0x78(%ebp)
 8048791:	8b 45 88             	mov    -0x78(%ebp),%eax
 8048794:	3b 85 7c ff ff ff    	cmp    -0x84(%ebp),%eax
 804879a:	72 cf                	jb     804876b <main+0x19b>
 804879c:	e9 40 01 00 00       	jmp    80488e1 <main+0x311>
 80487a1:	83 ec 0c             	sub    $0xc,%esp
 80487a4:	68 09 8b 04 08       	push   $0x8048b09
 80487a9:	e8 92 fc ff ff       	call   8048440 <puts@plt>
 80487ae:	83 c4 10             	add    $0x10,%esp
 80487b1:	83 ec 08             	sub    $0x8,%esp
 80487b4:	8d 85 78 ff ff ff    	lea    -0x88(%ebp),%eax
 80487ba:	50                   	push   %eax
 80487bb:	68 97 8a 04 08       	push   $0x8048a97
 80487c0:	e8 bb fc ff ff       	call   8048480 <__isoc99_scanf@plt>
 80487c5:	83 c4 10             	add    $0x10,%esp
 80487c8:	83 bd 7c ff ff ff 63 	cmpl   $0x63,-0x84(%ebp)
 80487cf:	0f 87 0b 01 00 00    	ja     80488e0 <main+0x310>
 80487d5:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 80487db:	8d 50 01             	lea    0x1(%eax),%edx
 80487de:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
 80487e4:	8b 95 78 ff ff ff    	mov    -0x88(%ebp),%edx
 80487ea:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
 80487ee:	e9 ed 00 00 00       	jmp    80488e0 <main+0x310>
 80487f3:	83 ec 0c             	sub    $0xc,%esp
 80487f6:	68 1d 8b 04 08       	push   $0x8048b1d
 80487fb:	e8 40 fc ff ff       	call   8048440 <puts@plt>
 8048800:	83 c4 10             	add    $0x10,%esp
 8048803:	83 ec 08             	sub    $0x8,%esp
 8048806:	8d 85 70 ff ff ff    	lea    -0x90(%ebp),%eax
 804880c:	50                   	push   %eax
 804880d:	68 97 8a 04 08       	push   $0x8048a97
 8048812:	e8 69 fc ff ff       	call   8048480 <__isoc99_scanf@plt>
 8048817:	83 c4 10             	add    $0x10,%esp
 804881a:	83 ec 0c             	sub    $0xc,%esp
 804881d:	68 35 8b 04 08       	push   $0x8048b35
 8048822:	e8 19 fc ff ff       	call   8048440 <puts@plt>
 8048827:	83 c4 10             	add    $0x10,%esp
 804882a:	83 ec 08             	sub    $0x8,%esp
 804882d:	8d 85 78 ff ff ff    	lea    -0x88(%ebp),%eax
 8048833:	50                   	push   %eax
 8048834:	68 97 8a 04 08       	push   $0x8048a97
 8048839:	e8 42 fc ff ff       	call   8048480 <__isoc99_scanf@plt>
 804883e:	83 c4 10             	add    $0x10,%esp
 8048841:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
 8048847:	8b 95 78 ff ff ff    	mov    -0x88(%ebp),%edx
 804884d:	88 54 05 90          	mov    %dl,-0x70(%ebp,%eax,1)
 8048851:	e9 8b 00 00 00       	jmp    80488e1 <main+0x311>
 8048856:	c7 45 80 00 00 00 00 	movl   $0x0,-0x80(%ebp)
 804885d:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
 8048864:	eb 15                	jmp    804887b <main+0x2ab>
 8048866:	8d 55 90             	lea    -0x70(%ebp),%edx
 8048869:	8b 45 8c             	mov    -0x74(%ebp),%eax
 804886c:	01 d0                	add    %edx,%eax
 804886e:	0f b6 00             	movzbl (%eax),%eax
 8048871:	0f be c0             	movsbl %al,%eax
 8048874:	01 45 80             	add    %eax,-0x80(%ebp)
 8048877:	83 45 8c 01          	addl   $0x1,-0x74(%ebp)
 804887b:	8b 45 8c             	mov    -0x74(%ebp),%eax
 804887e:	3b 85 7c ff ff ff    	cmp    -0x84(%ebp),%eax
 8048884:	72 e0                	jb     8048866 <main+0x296>
 8048886:	db 45 80             	fildl  -0x80(%ebp)
 8048889:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
 804888f:	ba 00 00 00 00       	mov    $0x0,%edx
 8048894:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
 804889a:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
 80488a0:	df ad 58 ff ff ff    	fildll -0xa8(%ebp)
 80488a6:	dd 9d 60 ff ff ff    	fstpl  -0xa0(%ebp)
 80488ac:	dd 85 60 ff ff ff    	fldl   -0xa0(%ebp)
 80488b2:	de f9                	fdivrp %st,%st(1)
 80488b4:	83 ec 04             	sub    $0x4,%esp
 80488b7:	8d 64 24 f8          	lea    -0x8(%esp),%esp
 80488bb:	dd 1c 24             	fstpl  (%esp)
 80488be:	68 41 8b 04 08       	push   $0x8048b41
 80488c3:	e8 58 fb ff ff       	call   8048420 <printf@plt>
 80488c8:	83 c4 10             	add    $0x10,%esp
 80488cb:	eb 14                	jmp    80488e1 <main+0x311>
 80488cd:	b8 00 00 00 00       	mov    $0x0,%eax
 80488d2:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 80488d5:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 80488dc:	74 0d                	je     80488eb <main+0x31b>
 80488de:	eb 06                	jmp    80488e6 <main+0x316>
 80488e0:	90                   	nop
 80488e1:	e9 14 fe ff ff       	jmp    80486fa <main+0x12a>
 80488e6:	e8 45 fb ff ff       	call   8048430 <__stack_chk_fail@plt>
 80488eb:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80488ee:	c9                   	leave  
 80488ef:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80488f2:	c3                   	ret    
 80488f3:	66 90                	xchg   %ax,%ax
 80488f5:	66 90                	xchg   %ax,%ax
 80488f7:	66 90                	xchg   %ax,%ax
 80488f9:	66 90                	xchg   %ax,%ax
 80488fb:	66 90                	xchg   %ax,%ax
 80488fd:	66 90                	xchg   %ax,%ax
 80488ff:	90                   	nop

08048900 <__libc_csu_init>:
 8048900:	55                   	push   %ebp
 8048901:	57                   	push   %edi
 8048902:	56                   	push   %esi
 8048903:	53                   	push   %ebx
 8048904:	e8 c7 fb ff ff       	call   80484d0 <__x86.get_pc_thunk.bx>
 8048909:	81 c3 f7 16 00 00    	add    $0x16f7,%ebx
 804890f:	83 ec 0c             	sub    $0xc,%esp
 8048912:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 8048916:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804891c:	e8 c3 fa ff ff       	call   80483e4 <_init>
 8048921:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048927:	29 c6                	sub    %eax,%esi
 8048929:	c1 fe 02             	sar    $0x2,%esi
 804892c:	85 f6                	test   %esi,%esi
 804892e:	74 25                	je     8048955 <__libc_csu_init+0x55>
 8048930:	31 ff                	xor    %edi,%edi
 8048932:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048938:	83 ec 04             	sub    $0x4,%esp
 804893b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804893f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048943:	55                   	push   %ebp
 8048944:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804894b:	83 c7 01             	add    $0x1,%edi
 804894e:	83 c4 10             	add    $0x10,%esp
 8048951:	39 f7                	cmp    %esi,%edi
 8048953:	75 e3                	jne    8048938 <__libc_csu_init+0x38>
 8048955:	83 c4 0c             	add    $0xc,%esp
 8048958:	5b                   	pop    %ebx
 8048959:	5e                   	pop    %esi
 804895a:	5f                   	pop    %edi
 804895b:	5d                   	pop    %ebp
 804895c:	c3                   	ret    
 804895d:	8d 76 00             	lea    0x0(%esi),%esi

08048960 <__libc_csu_fini>:
 8048960:	f3 c3                	repz ret 

Disassembly of section .fini:

08048964 <_fini>:
 8048964:	53                   	push   %ebx
 8048965:	83 ec 08             	sub    $0x8,%esp
 8048968:	e8 63 fb ff ff       	call   80484d0 <__x86.get_pc_thunk.bx>
 804896d:	81 c3 93 16 00 00    	add    $0x1693,%ebx
 8048973:	83 c4 08             	add    $0x8,%esp
 8048976:	5b                   	pop    %ebx
 8048977:	c3                   	ret    
