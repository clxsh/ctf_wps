
forgot:     file format elf32-i386


Disassembly of section .init:

08048400 <.init>:
 8048400:	53                   	push   %ebx
 8048401:	83 ec 08             	sub    $0x8,%esp
 8048404:	e8 07 01 00 00       	call   8048510 <__isoc99_scanf@plt+0x40>
 8048409:	81 c3 f7 2b 00 00    	add    $0x2bf7,%ebx
 804840f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048415:	85 c0                	test   %eax,%eax
 8048417:	74 05                	je     804841e <printf@plt-0x22>
 8048419:	e8 72 00 00 00       	call   8048490 <__gmon_start__@plt>
 804841e:	83 c4 08             	add    $0x8,%esp
 8048421:	5b                   	pop    %ebx
 8048422:	c3                   	ret    

Disassembly of section .plt:

08048430 <printf@plt-0x10>:
 8048430:	ff 35 04 b0 04 08    	pushl  0x804b004
 8048436:	ff 25 08 b0 04 08    	jmp    *0x804b008
 804843c:	00 00                	add    %al,(%eax)
	...

08048440 <printf@plt>:
 8048440:	ff 25 0c b0 04 08    	jmp    *0x804b00c
 8048446:	68 00 00 00 00       	push   $0x0
 804844b:	e9 e0 ff ff ff       	jmp    8048430 <printf@plt-0x10>

08048450 <fflush@plt>:
 8048450:	ff 25 10 b0 04 08    	jmp    *0x804b010
 8048456:	68 08 00 00 00       	push   $0x8
 804845b:	e9 d0 ff ff ff       	jmp    8048430 <printf@plt-0x10>

08048460 <fgets@plt>:
 8048460:	ff 25 14 b0 04 08    	jmp    *0x804b014
 8048466:	68 10 00 00 00       	push   $0x10
 804846b:	e9 c0 ff ff ff       	jmp    8048430 <printf@plt-0x10>

08048470 <puts@plt>:
 8048470:	ff 25 18 b0 04 08    	jmp    *0x804b018
 8048476:	68 18 00 00 00       	push   $0x18
 804847b:	e9 b0 ff ff ff       	jmp    8048430 <printf@plt-0x10>

08048480 <system@plt>:
 8048480:	ff 25 1c b0 04 08    	jmp    *0x804b01c
 8048486:	68 20 00 00 00       	push   $0x20
 804848b:	e9 a0 ff ff ff       	jmp    8048430 <printf@plt-0x10>

08048490 <__gmon_start__@plt>:
 8048490:	ff 25 20 b0 04 08    	jmp    *0x804b020
 8048496:	68 28 00 00 00       	push   $0x28
 804849b:	e9 90 ff ff ff       	jmp    8048430 <printf@plt-0x10>

080484a0 <strlen@plt>:
 80484a0:	ff 25 24 b0 04 08    	jmp    *0x804b024
 80484a6:	68 30 00 00 00       	push   $0x30
 80484ab:	e9 80 ff ff ff       	jmp    8048430 <printf@plt-0x10>

080484b0 <__libc_start_main@plt>:
 80484b0:	ff 25 28 b0 04 08    	jmp    *0x804b028
 80484b6:	68 38 00 00 00       	push   $0x38
 80484bb:	e9 70 ff ff ff       	jmp    8048430 <printf@plt-0x10>

080484c0 <snprintf@plt>:
 80484c0:	ff 25 2c b0 04 08    	jmp    *0x804b02c
 80484c6:	68 40 00 00 00       	push   $0x40
 80484cb:	e9 60 ff ff ff       	jmp    8048430 <printf@plt-0x10>

080484d0 <__isoc99_scanf@plt>:
 80484d0:	ff 25 30 b0 04 08    	jmp    *0x804b030
 80484d6:	68 48 00 00 00       	push   $0x48
 80484db:	e9 50 ff ff ff       	jmp    8048430 <printf@plt-0x10>

Disassembly of section .text:

080484e0 <.text>:
 80484e0:	31 ed                	xor    %ebp,%ebp
 80484e2:	5e                   	pop    %esi
 80484e3:	89 e1                	mov    %esp,%ecx
 80484e5:	83 e4 f0             	and    $0xfffffff0,%esp
 80484e8:	50                   	push   %eax
 80484e9:	54                   	push   %esp
 80484ea:	52                   	push   %edx
 80484eb:	68 f0 8a 04 08       	push   $0x8048af0
 80484f0:	68 80 8a 04 08       	push   $0x8048a80
 80484f5:	51                   	push   %ecx
 80484f6:	56                   	push   %esi
 80484f7:	68 aa 87 04 08       	push   $0x80487aa
 80484fc:	e8 af ff ff ff       	call   80484b0 <__libc_start_main@plt>
 8048501:	f4                   	hlt    
 8048502:	66 90                	xchg   %ax,%ax
 8048504:	66 90                	xchg   %ax,%ax
 8048506:	66 90                	xchg   %ax,%ax
 8048508:	66 90                	xchg   %ax,%ax
 804850a:	66 90                	xchg   %ax,%ax
 804850c:	66 90                	xchg   %ax,%ax
 804850e:	66 90                	xchg   %ax,%ax
 8048510:	8b 1c 24             	mov    (%esp),%ebx
 8048513:	c3                   	ret    
 8048514:	66 90                	xchg   %ax,%ax
 8048516:	66 90                	xchg   %ax,%ax
 8048518:	66 90                	xchg   %ax,%ax
 804851a:	66 90                	xchg   %ax,%ax
 804851c:	66 90                	xchg   %ax,%ax
 804851e:	66 90                	xchg   %ax,%ax
 8048520:	b8 3f b0 04 08       	mov    $0x804b03f,%eax
 8048525:	2d 3c b0 04 08       	sub    $0x804b03c,%eax
 804852a:	83 f8 06             	cmp    $0x6,%eax
 804852d:	77 01                	ja     8048530 <__isoc99_scanf@plt+0x60>
 804852f:	c3                   	ret    
 8048530:	b8 00 00 00 00       	mov    $0x0,%eax
 8048535:	85 c0                	test   %eax,%eax
 8048537:	74 f6                	je     804852f <__isoc99_scanf@plt+0x5f>
 8048539:	55                   	push   %ebp
 804853a:	89 e5                	mov    %esp,%ebp
 804853c:	83 ec 18             	sub    $0x18,%esp
 804853f:	c7 04 24 3c b0 04 08 	movl   $0x804b03c,(%esp)
 8048546:	ff d0                	call   *%eax
 8048548:	c9                   	leave  
 8048549:	c3                   	ret    
 804854a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048550:	b8 3c b0 04 08       	mov    $0x804b03c,%eax
 8048555:	2d 3c b0 04 08       	sub    $0x804b03c,%eax
 804855a:	c1 f8 02             	sar    $0x2,%eax
 804855d:	89 c2                	mov    %eax,%edx
 804855f:	c1 ea 1f             	shr    $0x1f,%edx
 8048562:	01 d0                	add    %edx,%eax
 8048564:	d1 f8                	sar    %eax
 8048566:	75 01                	jne    8048569 <__isoc99_scanf@plt+0x99>
 8048568:	c3                   	ret    
 8048569:	ba 00 00 00 00       	mov    $0x0,%edx
 804856e:	85 d2                	test   %edx,%edx
 8048570:	74 f6                	je     8048568 <__isoc99_scanf@plt+0x98>
 8048572:	55                   	push   %ebp
 8048573:	89 e5                	mov    %esp,%ebp
 8048575:	83 ec 18             	sub    $0x18,%esp
 8048578:	89 44 24 04          	mov    %eax,0x4(%esp)
 804857c:	c7 04 24 3c b0 04 08 	movl   $0x804b03c,(%esp)
 8048583:	ff d2                	call   *%edx
 8048585:	c9                   	leave  
 8048586:	c3                   	ret    
 8048587:	89 f6                	mov    %esi,%esi
 8048589:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8048590:	80 3d 64 b0 04 08 00 	cmpb   $0x0,0x804b064
 8048597:	75 13                	jne    80485ac <__isoc99_scanf@plt+0xdc>
 8048599:	55                   	push   %ebp
 804859a:	89 e5                	mov    %esp,%ebp
 804859c:	83 ec 08             	sub    $0x8,%esp
 804859f:	e8 7c ff ff ff       	call   8048520 <__isoc99_scanf@plt+0x50>
 80485a4:	c6 05 64 b0 04 08 01 	movb   $0x1,0x804b064
 80485ab:	c9                   	leave  
 80485ac:	f3 c3                	repz ret 
 80485ae:	66 90                	xchg   %ax,%ax
 80485b0:	a1 10 af 04 08       	mov    0x804af10,%eax
 80485b5:	85 c0                	test   %eax,%eax
 80485b7:	74 1f                	je     80485d8 <__isoc99_scanf@plt+0x108>
 80485b9:	b8 00 00 00 00       	mov    $0x0,%eax
 80485be:	85 c0                	test   %eax,%eax
 80485c0:	74 16                	je     80485d8 <__isoc99_scanf@plt+0x108>
 80485c2:	55                   	push   %ebp
 80485c3:	89 e5                	mov    %esp,%ebp
 80485c5:	83 ec 18             	sub    $0x18,%esp
 80485c8:	c7 04 24 10 af 04 08 	movl   $0x804af10,(%esp)
 80485cf:	ff d0                	call   *%eax
 80485d1:	c9                   	leave  
 80485d2:	e9 79 ff ff ff       	jmp    8048550 <__isoc99_scanf@plt+0x80>
 80485d7:	90                   	nop
 80485d8:	e9 73 ff ff ff       	jmp    8048550 <__isoc99_scanf@plt+0x80>
 80485dd:	55                   	push   %ebp
 80485de:	89 e5                	mov    %esp,%ebp
 80485e0:	83 ec 18             	sub    $0x18,%esp
 80485e3:	8b 45 08             	mov    0x8(%ebp),%eax
 80485e6:	89 44 24 04          	mov    %eax,0x4(%esp)
 80485ea:	c7 04 24 10 8b 04 08 	movl   $0x8048b10,(%esp)
 80485f1:	e8 4a fe ff ff       	call   8048440 <printf@plt>
 80485f6:	c7 04 24 18 8b 04 08 	movl   $0x8048b18,(%esp)
 80485fd:	e8 6e fe ff ff       	call   8048470 <puts@plt>
 8048602:	c9                   	leave  
 8048603:	c3                   	ret    
 8048604:	55                   	push   %ebp
 8048605:	89 e5                	mov    %esp,%ebp
 8048607:	83 ec 18             	sub    $0x18,%esp
 804860a:	c7 04 24 cc 8b 04 08 	movl   $0x8048bcc,(%esp)
 8048611:	e8 5a fe ff ff       	call   8048470 <puts@plt>
 8048616:	c9                   	leave  
 8048617:	c3                   	ret    
 8048618:	55                   	push   %ebp
 8048619:	89 e5                	mov    %esp,%ebp
 804861b:	83 ec 18             	sub    $0x18,%esp
 804861e:	c7 04 24 24 8c 04 08 	movl   $0x8048c24,(%esp)
 8048625:	e8 46 fe ff ff       	call   8048470 <puts@plt>
 804862a:	c9                   	leave  
 804862b:	c3                   	ret    
 804862c:	55                   	push   %ebp
 804862d:	89 e5                	mov    %esp,%ebp
 804862f:	83 ec 18             	sub    $0x18,%esp
 8048632:	c7 04 24 50 8c 04 08 	movl   $0x8048c50,(%esp)
 8048639:	e8 32 fe ff ff       	call   8048470 <puts@plt>
 804863e:	c9                   	leave  
 804863f:	c3                   	ret    
 8048640:	55                   	push   %ebp
 8048641:	89 e5                	mov    %esp,%ebp
 8048643:	83 ec 18             	sub    $0x18,%esp
 8048646:	c7 04 24 90 8c 04 08 	movl   $0x8048c90,(%esp)
 804864d:	e8 1e fe ff ff       	call   8048470 <puts@plt>
 8048652:	c9                   	leave  
 8048653:	c3                   	ret    
 8048654:	55                   	push   %ebp
 8048655:	89 e5                	mov    %esp,%ebp
 8048657:	83 ec 18             	sub    $0x18,%esp
 804865a:	c7 04 24 e0 8c 04 08 	movl   $0x8048ce0,(%esp)
 8048661:	e8 0a fe ff ff       	call   8048470 <puts@plt>
 8048666:	c9                   	leave  
 8048667:	c3                   	ret    
 8048668:	55                   	push   %ebp
 8048669:	89 e5                	mov    %esp,%ebp
 804866b:	83 ec 18             	sub    $0x18,%esp
 804866e:	c7 04 24 10 8d 04 08 	movl   $0x8048d10,(%esp)
 8048675:	e8 f6 fd ff ff       	call   8048470 <puts@plt>
 804867a:	c9                   	leave  
 804867b:	c3                   	ret    
 804867c:	55                   	push   %ebp
 804867d:	89 e5                	mov    %esp,%ebp
 804867f:	83 ec 18             	sub    $0x18,%esp
 8048682:	c7 04 24 69 8d 04 08 	movl   $0x8048d69,(%esp)
 8048689:	e8 e2 fd ff ff       	call   8048470 <puts@plt>
 804868e:	c9                   	leave  
 804868f:	c3                   	ret    
 8048690:	55                   	push   %ebp
 8048691:	89 e5                	mov    %esp,%ebp
 8048693:	83 ec 18             	sub    $0x18,%esp
 8048696:	c7 04 24 69 8d 04 08 	movl   $0x8048d69,(%esp)
 804869d:	e8 ce fd ff ff       	call   8048470 <puts@plt>
 80486a2:	c9                   	leave  
 80486a3:	c3                   	ret    
 80486a4:	55                   	push   %ebp
 80486a5:	89 e5                	mov    %esp,%ebp
 80486a7:	83 ec 18             	sub    $0x18,%esp
 80486aa:	c7 04 24 69 8d 04 08 	movl   $0x8048d69,(%esp)
 80486b1:	e8 ba fd ff ff       	call   8048470 <puts@plt>
 80486b6:	c9                   	leave  
 80486b7:	c3                   	ret    
 80486b8:	55                   	push   %ebp
 80486b9:	89 e5                	mov    %esp,%ebp
 80486bb:	83 ec 18             	sub    $0x18,%esp
 80486be:	c7 04 24 78 8d 04 08 	movl   $0x8048d78,(%esp)
 80486c5:	e8 a6 fd ff ff       	call   8048470 <puts@plt>
 80486ca:	c9                   	leave  
 80486cb:	c3                   	ret    
 80486cc:	55                   	push   %ebp
 80486cd:	89 e5                	mov    %esp,%ebp
 80486cf:	83 ec 58             	sub    $0x58,%esp
 80486d2:	c7 44 24 0c 9f 8d 04 	movl   $0x8048d9f,0xc(%esp)
 80486d9:	08 
 80486da:	c7 44 24 08 a6 8d 04 	movl   $0x8048da6,0x8(%esp)
 80486e1:	08 
 80486e2:	c7 44 24 04 32 00 00 	movl   $0x32,0x4(%esp)
 80486e9:	00 
 80486ea:	8d 45 c6             	lea    -0x3a(%ebp),%eax
 80486ed:	89 04 24             	mov    %eax,(%esp)
 80486f0:	e8 cb fd ff ff       	call   80484c0 <snprintf@plt>
 80486f5:	8d 45 c6             	lea    -0x3a(%ebp),%eax
 80486f8:	89 04 24             	mov    %eax,(%esp)
 80486fb:	e8 80 fd ff ff       	call   8048480 <system@plt>
 8048700:	c9                   	leave  
 8048701:	c3                   	ret    
 8048702:	55                   	push   %ebp
 8048703:	89 e5                	mov    %esp,%ebp
 8048705:	83 ec 04             	sub    $0x4,%esp
 8048708:	8b 45 08             	mov    0x8(%ebp),%eax
 804870b:	88 45 fc             	mov    %al,-0x4(%ebp)
 804870e:	80 7d fc 60          	cmpb   $0x60,-0x4(%ebp)
 8048712:	7e 06                	jle    804871a <__isoc99_scanf@plt+0x24a>
 8048714:	80 7d fc 7a          	cmpb   $0x7a,-0x4(%ebp)
 8048718:	7e 24                	jle    804873e <__isoc99_scanf@plt+0x26e>
 804871a:	80 7d fc 2f          	cmpb   $0x2f,-0x4(%ebp)
 804871e:	7e 06                	jle    8048726 <__isoc99_scanf@plt+0x256>
 8048720:	80 7d fc 39          	cmpb   $0x39,-0x4(%ebp)
 8048724:	7e 18                	jle    804873e <__isoc99_scanf@plt+0x26e>
 8048726:	80 7d fc 5f          	cmpb   $0x5f,-0x4(%ebp)
 804872a:	74 12                	je     804873e <__isoc99_scanf@plt+0x26e>
 804872c:	80 7d fc 2d          	cmpb   $0x2d,-0x4(%ebp)
 8048730:	74 0c                	je     804873e <__isoc99_scanf@plt+0x26e>
 8048732:	80 7d fc 2b          	cmpb   $0x2b,-0x4(%ebp)
 8048736:	74 06                	je     804873e <__isoc99_scanf@plt+0x26e>
 8048738:	80 7d fc 2e          	cmpb   $0x2e,-0x4(%ebp)
 804873c:	75 07                	jne    8048745 <__isoc99_scanf@plt+0x275>
 804873e:	b8 01 00 00 00       	mov    $0x1,%eax
 8048743:	eb 05                	jmp    804874a <__isoc99_scanf@plt+0x27a>
 8048745:	b8 00 00 00 00       	mov    $0x0,%eax
 804874a:	c9                   	leave  
 804874b:	c3                   	ret    
 804874c:	55                   	push   %ebp
 804874d:	89 e5                	mov    %esp,%ebp
 804874f:	83 ec 04             	sub    $0x4,%esp
 8048752:	8b 45 08             	mov    0x8(%ebp),%eax
 8048755:	88 45 fc             	mov    %al,-0x4(%ebp)
 8048758:	80 7d fc 60          	cmpb   $0x60,-0x4(%ebp)
 804875c:	7e 06                	jle    8048764 <__isoc99_scanf@plt+0x294>
 804875e:	80 7d fc 7a          	cmpb   $0x7a,-0x4(%ebp)
 8048762:	7e 12                	jle    8048776 <__isoc99_scanf@plt+0x2a6>
 8048764:	80 7d fc 2f          	cmpb   $0x2f,-0x4(%ebp)
 8048768:	7e 06                	jle    8048770 <__isoc99_scanf@plt+0x2a0>
 804876a:	80 7d fc 39          	cmpb   $0x39,-0x4(%ebp)
 804876e:	7e 06                	jle    8048776 <__isoc99_scanf@plt+0x2a6>
 8048770:	80 7d fc 5f          	cmpb   $0x5f,-0x4(%ebp)
 8048774:	75 07                	jne    804877d <__isoc99_scanf@plt+0x2ad>
 8048776:	b8 01 00 00 00       	mov    $0x1,%eax
 804877b:	eb 05                	jmp    8048782 <__isoc99_scanf@plt+0x2b2>
 804877d:	b8 00 00 00 00       	mov    $0x0,%eax
 8048782:	c9                   	leave  
 8048783:	c3                   	ret    
 8048784:	55                   	push   %ebp
 8048785:	89 e5                	mov    %esp,%ebp
 8048787:	83 ec 04             	sub    $0x4,%esp
 804878a:	8b 45 08             	mov    0x8(%ebp),%eax
 804878d:	88 45 fc             	mov    %al,-0x4(%ebp)
 8048790:	80 7d fc 60          	cmpb   $0x60,-0x4(%ebp)
 8048794:	7e 0d                	jle    80487a3 <__isoc99_scanf@plt+0x2d3>
 8048796:	80 7d fc 7a          	cmpb   $0x7a,-0x4(%ebp)
 804879a:	7f 07                	jg     80487a3 <__isoc99_scanf@plt+0x2d3>
 804879c:	b8 01 00 00 00       	mov    $0x1,%eax
 80487a1:	eb 05                	jmp    80487a8 <__isoc99_scanf@plt+0x2d8>
 80487a3:	b8 00 00 00 00       	mov    $0x0,%eax
 80487a8:	c9                   	leave  
 80487a9:	c3                   	ret 


 80487aa:	55                   	push   %ebp
 80487ab:	89 e5                	mov    %esp,%ebp
 80487ad:	53                   	push   %ebx
 80487ae:	83 e4 f0             	and    $0xfffffff0,%esp
 80487b1:	83 c4 80             	add    $0xffffff80,%esp
 80487b4:	c7 44 24 78 01 00 00 	movl   $0x1,0x78(%esp)
 80487bb:	00 
 80487bc:	c7 44 24 30 04 86 04 	movl   $0x8048604,0x30(%esp)
 80487c3:	08 
 80487c4:	c7 44 24 34 18 86 04 	movl   $0x8048618,0x34(%esp)
 80487cb:	08 
 80487cc:	c7 44 24 38 2c 86 04 	movl   $0x804862c,0x38(%esp)
 80487d3:	08 
 80487d4:	c7 44 24 3c 40 86 04 	movl   $0x8048640,0x3c(%esp)
 80487db:	08 
 80487dc:	c7 44 24 40 54 86 04 	movl   $0x8048654,0x40(%esp)
 80487e3:	08 
 80487e4:	c7 44 24 44 68 86 04 	movl   $0x8048668,0x44(%esp)
 80487eb:	08 
 80487ec:	c7 44 24 48 7c 86 04 	movl   $0x804867c,0x48(%esp)
 80487f3:	08 
 80487f4:	c7 44 24 4c 90 86 04 	movl   $0x8048690,0x4c(%esp)
 80487fb:	08 
 80487fc:	c7 44 24 50 a4 86 04 	movl   $0x80486a4,0x50(%esp)
 8048803:	08 
 8048804:	c7 44 24 54 b8 86 04 	movl   $0x80486b8,0x54(%esp)
 804880b:	08 
 804880c:	c7 04 24 ad 8d 04 08 	movl   $0x8048dad,(%esp)
 8048813:	e8 58 fc ff ff       	call   8048470 <puts@plt>
 8048818:	c7 04 24 c0 8d 04 08 	movl   $0x8048dc0,(%esp)
 804881f:	e8 1c fc ff ff       	call   8048440 <printf@plt>
 8048824:	a1 60 b0 04 08       	mov    0x804b060,%eax
 8048829:	89 04 24             	mov    %eax,(%esp)
 804882c:	e8 1f fc ff ff       	call   8048450 <fflush@plt>
 8048831:	a1 40 b0 04 08       	mov    0x804b040,%eax
 8048836:	89 44 24 08          	mov    %eax,0x8(%esp)
 804883a:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
 8048841:	00 
 8048842:	8d 44 24 58          	lea    0x58(%esp),%eax
 8048846:	89 04 24             	mov    %eax,(%esp)
 8048849:	e8 12 fc ff ff       	call   8048460 <fgets@plt>
 804884e:	8d 44 24 58          	lea    0x58(%esp),%eax
 8048852:	89 04 24             	mov    %eax,(%esp)
 8048855:	e8 83 fd ff ff       	call   80485dd <__isoc99_scanf@plt+0x10d>
 804885a:	a1 60 b0 04 08       	mov    0x804b060,%eax
 804885f:	89 04 24             	mov    %eax,(%esp)
 8048862:	e8 e9 fb ff ff       	call   8048450 <fflush@plt>
 8048867:	b8 54 86 04 08       	mov    $0x8048654,%eax
 804886c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048870:	c7 04 24 c4 8d 04 08 	movl   $0x8048dc4,(%esp)
 8048877:	e8 c4 fb ff ff       	call   8048440 <printf@plt>
 804887c:	a1 60 b0 04 08       	mov    0x804b060,%eax
 8048881:	89 04 24             	mov    %eax,(%esp)
 8048884:	e8 c7 fb ff ff       	call   8048450 <fflush@plt>
 8048889:	c7 04 24 f4 8d 04 08 	movl   $0x8048df4,(%esp)
 8048890:	e8 db fb ff ff       	call   8048470 <puts@plt>
 8048895:	c7 04 24 c0 8d 04 08 	movl   $0x8048dc0,(%esp)
 804889c:	e8 9f fb ff ff       	call   8048440 <printf@plt>
 80488a1:	a1 60 b0 04 08       	mov    0x804b060,%eax
 80488a6:	89 04 24             	mov    %eax,(%esp)
 80488a9:	e8 a2 fb ff ff       	call   8048450 <fflush@plt>
 80488ae:	8d 44 24 10          	lea    0x10(%esp),%eax
 80488b2:	89 44 24 04          	mov    %eax,0x4(%esp)
 80488b6:	c7 04 24 14 8e 04 08 	movl   $0x8048e14,(%esp)
 80488bd:	e8 0e fc ff ff       	call   80484d0 <__isoc99_scanf@plt>


 // for
 80488c2:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%esp)
 80488c9:	00 
 80488ca:	e9 71 01 00 00       	jmp    8048a40 <__isoc99_scanf@plt+0x570>
 
 80488cf:	83 7c 24 78 09       	cmpl   $0x9,0x78(%esp)
 80488d4:	0f 87 61 01 00 00    	ja     8048a3b <__isoc99_scanf@plt+0x56b>
 80488da:	8b 44 24 78          	mov    0x78(%esp),%eax
 80488de:	c1 e0 02             	shl    $0x2,%eax
 80488e1:	05 18 8e 04 08       	add    $0x8048e18,%eax
 80488e6:	8b 00                	mov    (%eax),%eax
 80488e8:	ff e0                	jmp    *%eax
 80488ea:	8d 54 24 10          	lea    0x10(%esp),%edx
 80488ee:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 80488f2:	01 d0                	add    %edx,%eax
 80488f4:	0f b6 00             	movzbl (%eax),%eax
 80488f7:	0f be c0             	movsbl %al,%eax
 80488fa:	89 04 24             	mov    %eax,(%esp)
 80488fd:	e8 00 fe ff ff       	call   8048702 <__isoc99_scanf@plt+0x232>
 8048902:	85 c0                	test   %eax,%eax
 8048904:	74 0d                	je     8048913 <__isoc99_scanf@plt+0x443>
 8048906:	c7 44 24 78 02 00 00 	movl   $0x2,0x78(%esp)
 804890d:	00 
 804890e:	e9 28 01 00 00       	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 8048913:	e9 23 01 00 00       	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 8048918:	8d 54 24 10          	lea    0x10(%esp),%edx
 804891c:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 8048920:	01 d0                	add    %edx,%eax
 8048922:	0f b6 00             	movzbl (%eax),%eax
 8048925:	3c 40                	cmp    $0x40,%al
 8048927:	75 0d                	jne    8048936 <__isoc99_scanf@plt+0x466>
 8048929:	c7 44 24 78 03 00 00 	movl   $0x3,0x78(%esp)
 8048930:	00 
 8048931:	e9 05 01 00 00       	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 8048936:	e9 00 01 00 00       	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 804893b:	8d 54 24 10          	lea    0x10(%esp),%edx
 804893f:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 8048943:	01 d0                	add    %edx,%eax
 8048945:	0f b6 00             	movzbl (%eax),%eax
 8048948:	0f be c0             	movsbl %al,%eax
 804894b:	89 04 24             	mov    %eax,(%esp)
 804894e:	e8 f9 fd ff ff       	call   804874c <__isoc99_scanf@plt+0x27c>
 8048953:	85 c0                	test   %eax,%eax
 8048955:	74 0d                	je     8048964 <__isoc99_scanf@plt+0x494>
 8048957:	c7 44 24 78 04 00 00 	movl   $0x4,0x78(%esp)
 804895e:	00 
 804895f:	e9 d7 00 00 00       	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 8048964:	e9 d2 00 00 00       	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 8048969:	8d 54 24 10          	lea    0x10(%esp),%edx
 804896d:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 8048971:	01 d0                	add    %edx,%eax
 8048973:	0f b6 00             	movzbl (%eax),%eax
 8048976:	3c 2e                	cmp    $0x2e,%al
 8048978:	75 0d                	jne    8048987 <__isoc99_scanf@plt+0x4b7>
 804897a:	c7 44 24 78 05 00 00 	movl   $0x5,0x78(%esp)
 8048981:	00 
 8048982:	e9 b4 00 00 00       	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 8048987:	e9 af 00 00 00       	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 804898c:	8d 54 24 10          	lea    0x10(%esp),%edx
 8048990:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 8048994:	01 d0                	add    %edx,%eax
 8048996:	0f b6 00             	movzbl (%eax),%eax
 8048999:	0f be c0             	movsbl %al,%eax
 804899c:	89 04 24             	mov    %eax,(%esp)
 804899f:	e8 e0 fd ff ff       	call   8048784 <__isoc99_scanf@plt+0x2b4>
 80489a4:	85 c0                	test   %eax,%eax
 80489a6:	74 0d                	je     80489b5 <__isoc99_scanf@plt+0x4e5>
 80489a8:	c7 44 24 78 06 00 00 	movl   $0x6,0x78(%esp)
 80489af:	00 
 80489b0:	e9 86 00 00 00       	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 80489b5:	e9 81 00 00 00       	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 80489ba:	8d 54 24 10          	lea    0x10(%esp),%edx
 80489be:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 80489c2:	01 d0                	add    %edx,%eax
 80489c4:	0f b6 00             	movzbl (%eax),%eax
 80489c7:	0f be c0             	movsbl %al,%eax
 80489ca:	89 04 24             	mov    %eax,(%esp)
 80489cd:	e8 b2 fd ff ff       	call   8048784 <__isoc99_scanf@plt+0x2b4>
 80489d2:	85 c0                	test   %eax,%eax
 80489d4:	74 0a                	je     80489e0 <__isoc99_scanf@plt+0x510>
 80489d6:	c7 44 24 78 07 00 00 	movl   $0x7,0x78(%esp)
 80489dd:	00 
 80489de:	eb 5b                	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 80489e0:	eb 59                	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 80489e2:	8d 54 24 10          	lea    0x10(%esp),%edx
 80489e6:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 80489ea:	01 d0                	add    %edx,%eax
 80489ec:	0f b6 00             	movzbl (%eax),%eax
 80489ef:	0f be c0             	movsbl %al,%eax
 80489f2:	89 04 24             	mov    %eax,(%esp)
 80489f5:	e8 8a fd ff ff       	call   8048784 <__isoc99_scanf@plt+0x2b4>
 80489fa:	85 c0                	test   %eax,%eax
 80489fc:	74 0a                	je     8048a08 <__isoc99_scanf@plt+0x538>
 80489fe:	c7 44 24 78 08 00 00 	movl   $0x8,0x78(%esp)
 8048a05:	00 
 8048a06:	eb 33                	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 8048a08:	eb 31                	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 8048a0a:	8d 54 24 10          	lea    0x10(%esp),%edx
 8048a0e:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 8048a12:	01 d0                	add    %edx,%eax
 8048a14:	0f b6 00             	movzbl (%eax),%eax
 8048a17:	0f be c0             	movsbl %al,%eax
 8048a1a:	89 04 24             	mov    %eax,(%esp)
 8048a1d:	e8 62 fd ff ff       	call   8048784 <__isoc99_scanf@plt+0x2b4>
 8048a22:	85 c0                	test   %eax,%eax
 8048a24:	74 0a                	je     8048a30 <__isoc99_scanf@plt+0x560>
 8048a26:	c7 44 24 78 09 00 00 	movl   $0x9,0x78(%esp)
 8048a2d:	00 
 8048a2e:	eb 0b                	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 8048a30:	eb 09                	jmp    8048a3b <__isoc99_scanf@plt+0x56b>
 8048a32:	c7 44 24 78 0a 00 00 	movl   $0xa,0x78(%esp)
 8048a39:	00 
 8048a3a:	90                   	nop
 8048a3b:	83 44 24 7c 01       	addl   $0x1,0x7c(%esp)
 8048a40:	8b 5c 24 7c          	mov    0x7c(%esp),%ebx
 8048a44:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048a48:	89 04 24             	mov    %eax,(%esp)
 8048a4b:	e8 50 fa ff ff       	call   80484a0 <strlen@plt>
 8048a50:	39 c3                	cmp    %eax,%ebx
 8048a52:	0f 82 77 fe ff ff    	jb     80488cf <__isoc99_scanf@plt+0x3ff>

 8048a58:	83 6c 24 78 01       	subl   $0x1,0x78(%esp)
 8048a5d:	8b 44 24 78          	mov    0x78(%esp),%eax
 8048a61:	8b 44 84 30          	mov    0x30(%esp,%eax,4),%eax
 8048a65:	ff d0                	call   *%eax

 8048a67:	a1 60 b0 04 08       	mov    0x804b060,%eax
 8048a6c:	89 04 24             	mov    %eax,(%esp)
 8048a6f:	e8 dc f9 ff ff       	call   8048450 <fflush@plt>
 8048a74:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048a77:	c9                   	leave  
 8048a78:	c3                   	ret





 8048a79:	66 90                	xchg   %ax,%ax
 8048a7b:	66 90                	xchg   %ax,%ax
 8048a7d:	66 90                	xchg   %ax,%ax
 8048a7f:	90                   	nop
 8048a80:	55                   	push   %ebp
 8048a81:	57                   	push   %edi
 8048a82:	31 ff                	xor    %edi,%edi
 8048a84:	56                   	push   %esi
 8048a85:	53                   	push   %ebx
 8048a86:	e8 85 fa ff ff       	call   8048510 <__isoc99_scanf@plt+0x40>
 8048a8b:	81 c3 75 25 00 00    	add    $0x2575,%ebx
 8048a91:	83 ec 1c             	sub    $0x1c,%esp
 8048a94:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8048a98:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 8048a9e:	e8 5d f9 ff ff       	call   8048400 <printf@plt-0x40>
 8048aa3:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048aa9:	29 c6                	sub    %eax,%esi
 8048aab:	c1 fe 02             	sar    $0x2,%esi
 8048aae:	85 f6                	test   %esi,%esi
 8048ab0:	74 27                	je     8048ad9 <__isoc99_scanf@plt+0x609>
 8048ab2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048ab8:	8b 44 24 38          	mov    0x38(%esp),%eax
 8048abc:	89 2c 24             	mov    %ebp,(%esp)
 8048abf:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048ac3:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048ac7:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048acb:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8048ad2:	83 c7 01             	add    $0x1,%edi
 8048ad5:	39 f7                	cmp    %esi,%edi
 8048ad7:	75 df                	jne    8048ab8 <__isoc99_scanf@plt+0x5e8>
 8048ad9:	83 c4 1c             	add    $0x1c,%esp
 8048adc:	5b                   	pop    %ebx
 8048add:	5e                   	pop    %esi
 8048ade:	5f                   	pop    %edi
 8048adf:	5d                   	pop    %ebp
 8048ae0:	c3                   	ret    
 8048ae1:	eb 0d                	jmp    8048af0 <__isoc99_scanf@plt+0x620>
 8048ae3:	90                   	nop
 8048ae4:	90                   	nop
 8048ae5:	90                   	nop
 8048ae6:	90                   	nop
 8048ae7:	90                   	nop
 8048ae8:	90                   	nop
 8048ae9:	90                   	nop
 8048aea:	90                   	nop
 8048aeb:	90                   	nop
 8048aec:	90                   	nop
 8048aed:	90                   	nop
 8048aee:	90                   	nop
 8048aef:	90                   	nop
 8048af0:	f3 c3                	repz ret 

Disassembly of section .fini:

08048af4 <.fini>:
 8048af4:	53                   	push   %ebx
 8048af5:	83 ec 08             	sub    $0x8,%esp
 8048af8:	e8 13 fa ff ff       	call   8048510 <__isoc99_scanf@plt+0x40>
 8048afd:	81 c3 03 25 00 00    	add    $0x2503,%ebx
 8048b03:	83 c4 08             	add    $0x8,%esp
 8048b06:	5b                   	pop    %ebx
 8048b07:	c3                   	ret    
