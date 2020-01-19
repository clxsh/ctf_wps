
int_overflow:     file format elf32-i386


Disassembly of section .init:

08048484 <_init>:
 8048484:	53                   	push   %ebx
 8048485:	83 ec 08             	sub    $0x8,%esp
 8048488:	e8 33 01 00 00       	call   80485c0 <__x86.get_pc_thunk.bx>
 804848d:	81 c3 73 1b 00 00    	add    $0x1b73,%ebx
 8048493:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048499:	85 c0                	test   %eax,%eax
 804849b:	74 05                	je     80484a2 <_init+0x1e>
 804849d:	e8 de 00 00 00       	call   8048580 <__gmon_start__@plt>
 80484a2:	83 c4 08             	add    $0x8,%esp
 80484a5:	5b                   	pop    %ebx
 80484a6:	c3                   	ret    

Disassembly of section .plt:

080484b0 <.plt>:
 80484b0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80484b6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80484bc:	00 00                	add    %al,(%eax)
	...

080484c0 <setbuf@plt>:
 80484c0:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 80484c6:	68 00 00 00 00       	push   $0x0
 80484cb:	e9 e0 ff ff ff       	jmp    80484b0 <.plt>

080484d0 <read@plt>:
 80484d0:	ff 25 10 a0 04 08    	jmp    *0x804a010
 80484d6:	68 08 00 00 00       	push   $0x8
 80484db:	e9 d0 ff ff ff       	jmp    80484b0 <.plt>

080484e0 <printf@plt>:
 80484e0:	ff 25 14 a0 04 08    	jmp    *0x804a014
 80484e6:	68 10 00 00 00       	push   $0x10
 80484eb:	e9 c0 ff ff ff       	jmp    80484b0 <.plt>

080484f0 <fflush@plt>:
 80484f0:	ff 25 18 a0 04 08    	jmp    *0x804a018
 80484f6:	68 18 00 00 00       	push   $0x18
 80484fb:	e9 b0 ff ff ff       	jmp    80484b0 <.plt>

08048500 <strcpy@plt>:
 8048500:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048506:	68 20 00 00 00       	push   $0x20
 804850b:	e9 a0 ff ff ff       	jmp    80484b0 <.plt>

08048510 <puts@plt>:
 8048510:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048516:	68 28 00 00 00       	push   $0x28
 804851b:	e9 90 ff ff ff       	jmp    80484b0 <.plt>

08048520 <system@plt>:
 8048520:	ff 25 24 a0 04 08    	jmp    *0x804a024
 8048526:	68 30 00 00 00       	push   $0x30
 804852b:	e9 80 ff ff ff       	jmp    80484b0 <.plt>

08048530 <exit@plt>:
 8048530:	ff 25 28 a0 04 08    	jmp    *0x804a028
 8048536:	68 38 00 00 00       	push   $0x38
 804853b:	e9 70 ff ff ff       	jmp    80484b0 <.plt>

08048540 <strlen@plt>:
 8048540:	ff 25 2c a0 04 08    	jmp    *0x804a02c
 8048546:	68 40 00 00 00       	push   $0x40
 804854b:	e9 60 ff ff ff       	jmp    80484b0 <.plt>

08048550 <__libc_start_main@plt>:
 8048550:	ff 25 30 a0 04 08    	jmp    *0x804a030
 8048556:	68 48 00 00 00       	push   $0x48
 804855b:	e9 50 ff ff ff       	jmp    80484b0 <.plt>

08048560 <memset@plt>:
 8048560:	ff 25 34 a0 04 08    	jmp    *0x804a034
 8048566:	68 50 00 00 00       	push   $0x50
 804856b:	e9 40 ff ff ff       	jmp    80484b0 <.plt>

08048570 <__isoc99_scanf@plt>:
 8048570:	ff 25 38 a0 04 08    	jmp    *0x804a038
 8048576:	68 58 00 00 00       	push   $0x58
 804857b:	e9 30 ff ff ff       	jmp    80484b0 <.plt>

Disassembly of section .plt.got:

08048580 <__gmon_start__@plt>:
 8048580:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048586:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048590 <_start>:
 8048590:	31 ed                	xor    %ebp,%ebp
 8048592:	5e                   	pop    %esi
 8048593:	89 e1                	mov    %esp,%ecx
 8048595:	83 e4 f0             	and    $0xfffffff0,%esp
 8048598:	50                   	push   %eax
 8048599:	54                   	push   %esp
 804859a:	52                   	push   %edx
 804859b:	68 40 89 04 08       	push   $0x8048940
 80485a0:	68 e0 88 04 08       	push   $0x80488e0
 80485a5:	51                   	push   %ecx
 80485a6:	56                   	push   %esi
 80485a7:	68 ca 87 04 08       	push   $0x80487ca
 80485ac:	e8 9f ff ff ff       	call   8048550 <__libc_start_main@plt>
 80485b1:	f4                   	hlt    
 80485b2:	66 90                	xchg   %ax,%ax
 80485b4:	66 90                	xchg   %ax,%ax
 80485b6:	66 90                	xchg   %ax,%ax
 80485b8:	66 90                	xchg   %ax,%ax
 80485ba:	66 90                	xchg   %ax,%ax
 80485bc:	66 90                	xchg   %ax,%ax
 80485be:	66 90                	xchg   %ax,%ax

080485c0 <__x86.get_pc_thunk.bx>:
 80485c0:	8b 1c 24             	mov    (%esp),%ebx
 80485c3:	c3                   	ret    
 80485c4:	66 90                	xchg   %ax,%ax
 80485c6:	66 90                	xchg   %ax,%ax
 80485c8:	66 90                	xchg   %ax,%ax
 80485ca:	66 90                	xchg   %ax,%ax
 80485cc:	66 90                	xchg   %ax,%ax
 80485ce:	66 90                	xchg   %ax,%ax

080485d0 <deregister_tm_clones>:
 80485d0:	b8 47 a0 04 08       	mov    $0x804a047,%eax
 80485d5:	2d 44 a0 04 08       	sub    $0x804a044,%eax
 80485da:	83 f8 06             	cmp    $0x6,%eax
 80485dd:	76 1a                	jbe    80485f9 <deregister_tm_clones+0x29>
 80485df:	b8 00 00 00 00       	mov    $0x0,%eax
 80485e4:	85 c0                	test   %eax,%eax
 80485e6:	74 11                	je     80485f9 <deregister_tm_clones+0x29>
 80485e8:	55                   	push   %ebp
 80485e9:	89 e5                	mov    %esp,%ebp
 80485eb:	83 ec 14             	sub    $0x14,%esp
 80485ee:	68 44 a0 04 08       	push   $0x804a044
 80485f3:	ff d0                	call   *%eax
 80485f5:	83 c4 10             	add    $0x10,%esp
 80485f8:	c9                   	leave  
 80485f9:	f3 c3                	repz ret 
 80485fb:	90                   	nop
 80485fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048600 <register_tm_clones>:
 8048600:	b8 44 a0 04 08       	mov    $0x804a044,%eax
 8048605:	2d 44 a0 04 08       	sub    $0x804a044,%eax
 804860a:	c1 f8 02             	sar    $0x2,%eax
 804860d:	89 c2                	mov    %eax,%edx
 804860f:	c1 ea 1f             	shr    $0x1f,%edx
 8048612:	01 d0                	add    %edx,%eax
 8048614:	d1 f8                	sar    %eax
 8048616:	74 1b                	je     8048633 <register_tm_clones+0x33>
 8048618:	ba 00 00 00 00       	mov    $0x0,%edx
 804861d:	85 d2                	test   %edx,%edx
 804861f:	74 12                	je     8048633 <register_tm_clones+0x33>
 8048621:	55                   	push   %ebp
 8048622:	89 e5                	mov    %esp,%ebp
 8048624:	83 ec 10             	sub    $0x10,%esp
 8048627:	50                   	push   %eax
 8048628:	68 44 a0 04 08       	push   $0x804a044
 804862d:	ff d2                	call   *%edx
 804862f:	83 c4 10             	add    $0x10,%esp
 8048632:	c9                   	leave  
 8048633:	f3 c3                	repz ret 
 8048635:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048639:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048640 <__do_global_dtors_aux>:
 8048640:	80 3d 88 a0 04 08 00 	cmpb   $0x0,0x804a088
 8048647:	75 13                	jne    804865c <__do_global_dtors_aux+0x1c>
 8048649:	55                   	push   %ebp
 804864a:	89 e5                	mov    %esp,%ebp
 804864c:	83 ec 08             	sub    $0x8,%esp
 804864f:	e8 7c ff ff ff       	call   80485d0 <deregister_tm_clones>
 8048654:	c6 05 88 a0 04 08 01 	movb   $0x1,0x804a088
 804865b:	c9                   	leave  
 804865c:	f3 c3                	repz ret 
 804865e:	66 90                	xchg   %ax,%ax

08048660 <frame_dummy>:
 8048660:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048665:	8b 10                	mov    (%eax),%edx
 8048667:	85 d2                	test   %edx,%edx
 8048669:	75 05                	jne    8048670 <frame_dummy+0x10>
 804866b:	eb 93                	jmp    8048600 <register_tm_clones>
 804866d:	8d 76 00             	lea    0x0(%esi),%esi
 8048670:	ba 00 00 00 00       	mov    $0x0,%edx
 8048675:	85 d2                	test   %edx,%edx
 8048677:	74 f2                	je     804866b <frame_dummy+0xb>
 8048679:	55                   	push   %ebp
 804867a:	89 e5                	mov    %esp,%ebp
 804867c:	83 ec 14             	sub    $0x14,%esp
 804867f:	50                   	push   %eax
 8048680:	ff d2                	call   *%edx
 8048682:	83 c4 10             	add    $0x10,%esp
 8048685:	c9                   	leave  
 8048686:	e9 75 ff ff ff       	jmp    8048600 <register_tm_clones>

0804868b <what_is_this>:
 804868b:	55                   	push   %ebp
 804868c:	89 e5                	mov    %esp,%ebp
 804868e:	83 ec 08             	sub    $0x8,%esp
 8048691:	83 ec 0c             	sub    $0xc,%esp
 8048694:	68 60 89 04 08       	push   $0x8048960
 8048699:	e8 82 fe ff ff       	call   8048520 <system@plt>
 804869e:	83 c4 10             	add    $0x10,%esp
 80486a1:	90                   	nop
 80486a2:	c9                   	leave  
 80486a3:	c3                   	ret    

080486a4 <check_passwd>:
 80486a4:	55                   	push   %ebp
 80486a5:	89 e5                	mov    %esp,%ebp
 80486a7:	83 ec 18             	sub    $0x18,%esp
 80486aa:	83 ec 0c             	sub    $0xc,%esp
 80486ad:	ff 75 08             	pushl  0x8(%ebp)
 80486b0:	e8 8b fe ff ff       	call   8048540 <strlen@plt>
 80486b5:	83 c4 10             	add    $0x10,%esp
 80486b8:	88 45 f7             	mov    %al,-0x9(%ebp)
 80486bb:	80 7d f7 03          	cmpb   $0x3,-0x9(%ebp)
 80486bf:	76 3b                	jbe    80486fc <check_passwd+0x58>
 80486c1:	80 7d f7 08          	cmpb   $0x8,-0x9(%ebp)
 80486c5:	77 35                	ja     80486fc <check_passwd+0x58>
 80486c7:	83 ec 0c             	sub    $0xc,%esp
 80486ca:	68 69 89 04 08       	push   $0x8048969
 80486cf:	e8 3c fe ff ff       	call   8048510 <puts@plt>
 80486d4:	83 c4 10             	add    $0x10,%esp
 80486d7:	a1 84 a0 04 08       	mov    0x804a084,%eax
 80486dc:	83 ec 0c             	sub    $0xc,%esp
 80486df:	50                   	push   %eax
 80486e0:	e8 0b fe ff ff       	call   80484f0 <fflush@plt>
 80486e5:	83 c4 10             	add    $0x10,%esp
 80486e8:	83 ec 08             	sub    $0x8,%esp
 80486eb:	ff 75 08             	pushl  0x8(%ebp)
 80486ee:	8d 45 ec             	lea    -0x14(%ebp),%eax
 80486f1:	50                   	push   %eax
 80486f2:	e8 09 fe ff ff       	call   8048500 <strcpy@plt>
 80486f7:	83 c4 10             	add    $0x10,%esp
 80486fa:	eb 21                	jmp    804871d <check_passwd+0x79>
 80486fc:	83 ec 0c             	sub    $0xc,%esp
 80486ff:	68 71 89 04 08       	push   $0x8048971
 8048704:	e8 07 fe ff ff       	call   8048510 <puts@plt>
 8048709:	83 c4 10             	add    $0x10,%esp
 804870c:	a1 84 a0 04 08       	mov    0x804a084,%eax
 8048711:	83 ec 0c             	sub    $0xc,%esp
 8048714:	50                   	push   %eax
 8048715:	e8 d6 fd ff ff       	call   80484f0 <fflush@plt>
 804871a:	83 c4 10             	add    $0x10,%esp
 804871d:	90                   	nop
 804871e:	c9                   	leave  
 804871f:	c3                   	ret    

08048720 <login>:
 8048720:	55                   	push   %ebp
 8048721:	89 e5                	mov    %esp,%ebp
 8048723:	81 ec 28 02 00 00    	sub    $0x228,%esp
 8048729:	83 ec 04             	sub    $0x4,%esp
 804872c:	6a 20                	push   $0x20
 804872e:	6a 00                	push   $0x0
 8048730:	8d 45 d8             	lea    -0x28(%ebp),%eax
 8048733:	50                   	push   %eax
 8048734:	e8 27 fe ff ff       	call   8048560 <memset@plt>
 8048739:	83 c4 10             	add    $0x10,%esp
 804873c:	83 ec 04             	sub    $0x4,%esp
 804873f:	68 00 02 00 00       	push   $0x200
 8048744:	6a 00                	push   $0x0
 8048746:	8d 85 d8 fd ff ff    	lea    -0x228(%ebp),%eax
 804874c:	50                   	push   %eax
 804874d:	e8 0e fe ff ff       	call   8048560 <memset@plt>
 8048752:	83 c4 10             	add    $0x10,%esp
 8048755:	83 ec 0c             	sub    $0xc,%esp
 8048758:	68 82 89 04 08       	push   $0x8048982
 804875d:	e8 ae fd ff ff       	call   8048510 <puts@plt>
 8048762:	83 c4 10             	add    $0x10,%esp
 8048765:	83 ec 04             	sub    $0x4,%esp
 8048768:	6a 19                	push   $0x19
 804876a:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804876d:	50                   	push   %eax
 804876e:	6a 00                	push   $0x0
 8048770:	e8 5b fd ff ff       	call   80484d0 <read@plt>
 8048775:	83 c4 10             	add    $0x10,%esp
 8048778:	83 ec 08             	sub    $0x8,%esp
 804877b:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804877e:	50                   	push   %eax
 804877f:	68 9e 89 04 08       	push   $0x804899e
 8048784:	e8 57 fd ff ff       	call   80484e0 <printf@plt>
 8048789:	83 c4 10             	add    $0x10,%esp
 804878c:	83 ec 0c             	sub    $0xc,%esp
 804878f:	68 a8 89 04 08       	push   $0x80489a8
 8048794:	e8 77 fd ff ff       	call   8048510 <puts@plt>
 8048799:	83 c4 10             	add    $0x10,%esp
 804879c:	83 ec 04             	sub    $0x4,%esp
 804879f:	68 99 01 00 00       	push   $0x199
 80487a4:	8d 85 d8 fd ff ff    	lea    -0x228(%ebp),%eax
 80487aa:	50                   	push   %eax
 80487ab:	6a 00                	push   $0x0
 80487ad:	e8 1e fd ff ff       	call   80484d0 <read@plt>
 80487b2:	83 c4 10             	add    $0x10,%esp
 80487b5:	83 ec 0c             	sub    $0xc,%esp
 80487b8:	8d 85 d8 fd ff ff    	lea    -0x228(%ebp),%eax
 80487be:	50                   	push   %eax
 80487bf:	e8 e0 fe ff ff       	call   80486a4 <check_passwd>
 80487c4:	83 c4 10             	add    $0x10,%esp
 80487c7:	90                   	nop
 80487c8:	c9                   	leave  
 80487c9:	c3                   	ret    

080487ca <main>:
 80487ca:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80487ce:	83 e4 f0             	and    $0xfffffff0,%esp
 80487d1:	ff 71 fc             	pushl  -0x4(%ecx)
 80487d4:	55                   	push   %ebp
 80487d5:	89 e5                	mov    %esp,%ebp
 80487d7:	51                   	push   %ecx
 80487d8:	83 ec 14             	sub    $0x14,%esp
 80487db:	a1 80 a0 04 08       	mov    0x804a080,%eax
 80487e0:	83 ec 08             	sub    $0x8,%esp
 80487e3:	6a 00                	push   $0x0
 80487e5:	50                   	push   %eax
 80487e6:	e8 d5 fc ff ff       	call   80484c0 <setbuf@plt>
 80487eb:	83 c4 10             	add    $0x10,%esp
 80487ee:	a1 84 a0 04 08       	mov    0x804a084,%eax
 80487f3:	83 ec 08             	sub    $0x8,%esp
 80487f6:	6a 00                	push   $0x0
 80487f8:	50                   	push   %eax
 80487f9:	e8 c2 fc ff ff       	call   80484c0 <setbuf@plt>
 80487fe:	83 c4 10             	add    $0x10,%esp
 8048801:	a1 60 a0 04 08       	mov    0x804a060,%eax
 8048806:	83 ec 08             	sub    $0x8,%esp
 8048809:	6a 00                	push   $0x0
 804880b:	50                   	push   %eax
 804880c:	e8 af fc ff ff       	call   80484c0 <setbuf@plt>
 8048811:	83 c4 10             	add    $0x10,%esp
 8048814:	83 ec 0c             	sub    $0xc,%esp
 8048817:	68 c2 89 04 08       	push   $0x80489c2
 804881c:	e8 ef fc ff ff       	call   8048510 <puts@plt>
 8048821:	83 c4 10             	add    $0x10,%esp
 8048824:	83 ec 0c             	sub    $0xc,%esp
 8048827:	68 d8 89 04 08       	push   $0x80489d8
 804882c:	e8 df fc ff ff       	call   8048510 <puts@plt>
 8048831:	83 c4 10             	add    $0x10,%esp
 8048834:	83 ec 0c             	sub    $0xc,%esp
 8048837:	68 ee 89 04 08       	push   $0x80489ee
 804883c:	e8 cf fc ff ff       	call   8048510 <puts@plt>
 8048841:	83 c4 10             	add    $0x10,%esp
 8048844:	83 ec 0c             	sub    $0xc,%esp
 8048847:	68 04 8a 04 08       	push   $0x8048a04
 804884c:	e8 bf fc ff ff       	call   8048510 <puts@plt>
 8048851:	83 c4 10             	add    $0x10,%esp
 8048854:	83 ec 0c             	sub    $0xc,%esp
 8048857:	68 c2 89 04 08       	push   $0x80489c2
 804885c:	e8 af fc ff ff       	call   8048510 <puts@plt>
 8048861:	83 c4 10             	add    $0x10,%esp
 8048864:	83 ec 0c             	sub    $0xc,%esp
 8048867:	68 1a 8a 04 08       	push   $0x8048a1a
 804886c:	e8 6f fc ff ff       	call   80484e0 <printf@plt>
 8048871:	83 c4 10             	add    $0x10,%esp
 8048874:	83 ec 08             	sub    $0x8,%esp
 8048877:	8d 45 f4             	lea    -0xc(%ebp),%eax
 804887a:	50                   	push   %eax
 804887b:	68 27 8a 04 08       	push   $0x8048a27
 8048880:	e8 eb fc ff ff       	call   8048570 <__isoc99_scanf@plt>
 8048885:	83 c4 10             	add    $0x10,%esp
 8048888:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804888b:	83 f8 01             	cmp    $0x1,%eax
 804888e:	74 07                	je     8048897 <main+0xcd>
 8048890:	83 f8 02             	cmp    $0x2,%eax
 8048893:	74 09                	je     804889e <main+0xd4>
 8048895:	eb 21                	jmp    80488b8 <main+0xee>
 8048897:	e8 84 fe ff ff       	call   8048720 <login>
 804889c:	eb 2a                	jmp    80488c8 <main+0xfe>
 804889e:	83 ec 0c             	sub    $0xc,%esp
 80488a1:	68 2a 8a 04 08       	push   $0x8048a2a
 80488a6:	e8 65 fc ff ff       	call   8048510 <puts@plt>
 80488ab:	83 c4 10             	add    $0x10,%esp
 80488ae:	83 ec 0c             	sub    $0xc,%esp
 80488b1:	6a 00                	push   $0x0
 80488b3:	e8 78 fc ff ff       	call   8048530 <exit@plt>
 80488b8:	83 ec 0c             	sub    $0xc,%esp
 80488bb:	68 2f 8a 04 08       	push   $0x8048a2f
 80488c0:	e8 4b fc ff ff       	call   8048510 <puts@plt>
 80488c5:	83 c4 10             	add    $0x10,%esp
 80488c8:	b8 00 00 00 00       	mov    $0x0,%eax
 80488cd:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80488d0:	c9                   	leave  
 80488d1:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80488d4:	c3                   	ret    
 80488d5:	66 90                	xchg   %ax,%ax
 80488d7:	66 90                	xchg   %ax,%ax
 80488d9:	66 90                	xchg   %ax,%ax
 80488db:	66 90                	xchg   %ax,%ax
 80488dd:	66 90                	xchg   %ax,%ax
 80488df:	90                   	nop

080488e0 <__libc_csu_init>:
 80488e0:	55                   	push   %ebp
 80488e1:	57                   	push   %edi
 80488e2:	56                   	push   %esi
 80488e3:	53                   	push   %ebx
 80488e4:	e8 d7 fc ff ff       	call   80485c0 <__x86.get_pc_thunk.bx>
 80488e9:	81 c3 17 17 00 00    	add    $0x1717,%ebx
 80488ef:	83 ec 0c             	sub    $0xc,%esp
 80488f2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80488f6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80488fc:	e8 83 fb ff ff       	call   8048484 <_init>
 8048901:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8048907:	29 c6                	sub    %eax,%esi
 8048909:	c1 fe 02             	sar    $0x2,%esi
 804890c:	85 f6                	test   %esi,%esi
 804890e:	74 25                	je     8048935 <__libc_csu_init+0x55>
 8048910:	31 ff                	xor    %edi,%edi
 8048912:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048918:	83 ec 04             	sub    $0x4,%esp
 804891b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804891f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048923:	55                   	push   %ebp
 8048924:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804892b:	83 c7 01             	add    $0x1,%edi
 804892e:	83 c4 10             	add    $0x10,%esp
 8048931:	39 f7                	cmp    %esi,%edi
 8048933:	75 e3                	jne    8048918 <__libc_csu_init+0x38>
 8048935:	83 c4 0c             	add    $0xc,%esp
 8048938:	5b                   	pop    %ebx
 8048939:	5e                   	pop    %esi
 804893a:	5f                   	pop    %edi
 804893b:	5d                   	pop    %ebp
 804893c:	c3                   	ret    
 804893d:	8d 76 00             	lea    0x0(%esi),%esi

08048940 <__libc_csu_fini>:
 8048940:	f3 c3                	repz ret 

Disassembly of section .fini:

08048944 <_fini>:
 8048944:	53                   	push   %ebx
 8048945:	83 ec 08             	sub    $0x8,%esp
 8048948:	e8 73 fc ff ff       	call   80485c0 <__x86.get_pc_thunk.bx>
 804894d:	81 c3 b3 16 00 00    	add    $0x16b3,%ebx
 8048953:	83 c4 08             	add    $0x8,%esp
 8048956:	5b                   	pop    %ebx
 8048957:	c3                   	ret    
