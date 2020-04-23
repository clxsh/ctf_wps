
dubblesort:     file format elf32-i386


Disassembly of section .init:

000005f8 <.init>:
 5f8:	53                   	push   %ebx
 5f9:	83 ec 08             	sub    $0x8,%esp
 5fc:	e8 4f 01 00 00       	call   750 <__isoc99_scanf@plt+0x50>
 601:	81 c3 9f 19 00 00    	add    $0x199f,%ebx
 607:	8b 83 4c 00 00 00    	mov    0x4c(%ebx),%eax
 60d:	85 c0                	test   %eax,%eax
 60f:	74 05                	je     616 <read@plt-0x1a>
 611:	e8 9a 00 00 00       	call   6b0 <__gmon_start__@plt>
 616:	83 c4 08             	add    $0x8,%esp
 619:	5b                   	pop    %ebx
 61a:	c3                   	ret    

Disassembly of section .plt:

00000620 <read@plt-0x10>:
 620:	ff b3 04 00 00 00    	pushl  0x4(%ebx)
 626:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
 62c:	00 00                	add    %al,(%eax)
	...

00000630 <read@plt>:
 630:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
 636:	68 00 00 00 00       	push   $0x0
 63b:	e9 e0 ff ff ff       	jmp    620 <read@plt-0x10>

00000640 <fflush@plt>:
 640:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
 646:	68 08 00 00 00       	push   $0x8
 64b:	e9 d0 ff ff ff       	jmp    620 <read@plt-0x10>

00000650 <signal@plt>:
 650:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
 656:	68 10 00 00 00       	push   $0x10
 65b:	e9 c0 ff ff ff       	jmp    620 <read@plt-0x10>

00000660 <sleep@plt>:
 660:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
 666:	68 18 00 00 00       	push   $0x18
 66b:	e9 b0 ff ff ff       	jmp    620 <read@plt-0x10>

00000670 <alarm@plt>:
 670:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
 676:	68 20 00 00 00       	push   $0x20
 67b:	e9 a0 ff ff ff       	jmp    620 <read@plt-0x10>

00000680 <__stack_chk_fail@plt>:
 680:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
 686:	68 28 00 00 00       	push   $0x28
 68b:	e9 90 ff ff ff       	jmp    620 <read@plt-0x10>

00000690 <__cxa_finalize@plt>:
 690:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
 696:	68 30 00 00 00       	push   $0x30
 69b:	e9 80 ff ff ff       	jmp    620 <read@plt-0x10>

000006a0 <puts@plt>:
 6a0:	ff a3 28 00 00 00    	jmp    *0x28(%ebx)
 6a6:	68 38 00 00 00       	push   $0x38
 6ab:	e9 70 ff ff ff       	jmp    620 <read@plt-0x10>

000006b0 <__gmon_start__@plt>:
 6b0:	ff a3 2c 00 00 00    	jmp    *0x2c(%ebx)
 6b6:	68 40 00 00 00       	push   $0x40
 6bb:	e9 60 ff ff ff       	jmp    620 <read@plt-0x10>

000006c0 <exit@plt>:
 6c0:	ff a3 30 00 00 00    	jmp    *0x30(%ebx)
 6c6:	68 48 00 00 00       	push   $0x48
 6cb:	e9 50 ff ff ff       	jmp    620 <read@plt-0x10>

000006d0 <__libc_start_main@plt>:
 6d0:	ff a3 34 00 00 00    	jmp    *0x34(%ebx)
 6d6:	68 50 00 00 00       	push   $0x50
 6db:	e9 40 ff ff ff       	jmp    620 <read@plt-0x10>

000006e0 <setvbuf@plt>:
 6e0:	ff a3 38 00 00 00    	jmp    *0x38(%ebx)
 6e6:	68 58 00 00 00       	push   $0x58
 6eb:	e9 30 ff ff ff       	jmp    620 <read@plt-0x10>

000006f0 <__printf_chk@plt>:
 6f0:	ff a3 3c 00 00 00    	jmp    *0x3c(%ebx)
 6f6:	68 60 00 00 00       	push   $0x60
 6fb:	e9 20 ff ff ff       	jmp    620 <read@plt-0x10>

00000700 <__isoc99_scanf@plt>:
 700:	ff a3 40 00 00 00    	jmp    *0x40(%ebx)
 706:	68 68 00 00 00       	push   $0x68
 70b:	e9 10 ff ff ff       	jmp    620 <read@plt-0x10>

Disassembly of section .text:

00000710 <main@@Base-0x2b3>:
 710:	31 ed                	xor    %ebp,%ebp
 712:	5e                   	pop    %esi
 713:	89 e1                	mov    %esp,%ecx
 715:	83 e4 f0             	and    $0xfffffff0,%esp
 718:	50                   	push   %eax
 719:	54                   	push   %esp
 71a:	52                   	push   %edx
 71b:	e8 22 00 00 00       	call   742 <__isoc99_scanf@plt+0x42>
 720:	81 c3 80 18 00 00    	add    $0x1880,%ebx
 726:	8d 83 f0 eb ff ff    	lea    -0x1410(%ebx),%eax
 72c:	50                   	push   %eax
 72d:	8d 83 80 eb ff ff    	lea    -0x1480(%ebx),%eax
 733:	50                   	push   %eax
 734:	51                   	push   %ecx
 735:	56                   	push   %esi
 736:	ff b3 54 00 00 00    	pushl  0x54(%ebx)
 73c:	e8 8f ff ff ff       	call   6d0 <__libc_start_main@plt>
 741:	f4                   	hlt    
 742:	8b 1c 24             	mov    (%esp),%ebx
 745:	c3                   	ret    
 746:	66 90                	xchg   %ax,%ax
 748:	66 90                	xchg   %ax,%ax
 74a:	66 90                	xchg   %ax,%ax
 74c:	66 90                	xchg   %ax,%ax
 74e:	66 90                	xchg   %ax,%ax

 750:	8b 1c 24             	mov    (%esp),%ebx
 753:	c3                   	ret    

 754:	66 90                	xchg   %ax,%ax
 756:	66 90                	xchg   %ax,%ax
 758:	66 90                	xchg   %ax,%ax
 75a:	66 90                	xchg   %ax,%ax
 75c:	66 90                	xchg   %ax,%ax
 75e:	66 90                	xchg   %ax,%ax
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	53                   	push   %ebx
 764:	e8 e7 ff ff ff       	call   750 <__isoc99_scanf@plt+0x50>
 769:	81 c3 37 18 00 00    	add    $0x1837,%ebx
 76f:	83 ec 14             	sub    $0x14,%esp
 772:	8d 83 6b 00 00 00    	lea    0x6b(%ebx),%eax
 778:	8d 93 68 00 00 00    	lea    0x68(%ebx),%edx
 77e:	29 d0                	sub    %edx,%eax
 780:	83 f8 06             	cmp    $0x6,%eax
 783:	77 06                	ja     78b <__isoc99_scanf@plt+0x8b>
 785:	83 c4 14             	add    $0x14,%esp
 788:	5b                   	pop    %ebx
 789:	5d                   	pop    %ebp
 78a:	c3                   	ret    
 78b:	8b 83 44 00 00 00    	mov    0x44(%ebx),%eax
 791:	85 c0                	test   %eax,%eax
 793:	74 f0                	je     785 <__isoc99_scanf@plt+0x85>
 795:	89 14 24             	mov    %edx,(%esp)
 798:	ff d0                	call   *%eax
 79a:	eb e9                	jmp    785 <__isoc99_scanf@plt+0x85>
 79c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7a0:	55                   	push   %ebp
 7a1:	89 e5                	mov    %esp,%ebp
 7a3:	53                   	push   %ebx
 7a4:	e8 a7 ff ff ff       	call   750 <__isoc99_scanf@plt+0x50>
 7a9:	81 c3 f7 17 00 00    	add    $0x17f7,%ebx
 7af:	83 ec 14             	sub    $0x14,%esp
 7b2:	8d 83 68 00 00 00    	lea    0x68(%ebx),%eax
 7b8:	8d 93 68 00 00 00    	lea    0x68(%ebx),%edx
 7be:	29 d0                	sub    %edx,%eax
 7c0:	c1 f8 02             	sar    $0x2,%eax
 7c3:	89 c1                	mov    %eax,%ecx
 7c5:	c1 e9 1f             	shr    $0x1f,%ecx
 7c8:	01 c8                	add    %ecx,%eax
 7ca:	d1 f8                	sar    %eax
 7cc:	75 06                	jne    7d4 <__isoc99_scanf@plt+0xd4>
 7ce:	83 c4 14             	add    $0x14,%esp
 7d1:	5b                   	pop    %ebx
 7d2:	5d                   	pop    %ebp
 7d3:	c3                   	ret    
 7d4:	8b 8b 5c 00 00 00    	mov    0x5c(%ebx),%ecx
 7da:	85 c9                	test   %ecx,%ecx
 7dc:	74 f0                	je     7ce <__isoc99_scanf@plt+0xce>
 7de:	89 44 24 04          	mov    %eax,0x4(%esp)
 7e2:	89 14 24             	mov    %edx,(%esp)
 7e5:	ff d1                	call   *%ecx
 7e7:	eb e5                	jmp    7ce <__isoc99_scanf@plt+0xce>
 7e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7f0:	55                   	push   %ebp
 7f1:	89 e5                	mov    %esp,%ebp
 7f3:	53                   	push   %ebx
 7f4:	e8 57 ff ff ff       	call   750 <__isoc99_scanf@plt+0x50>
 7f9:	81 c3 a7 17 00 00    	add    $0x17a7,%ebx
 7ff:	83 ec 14             	sub    $0x14,%esp
 802:	80 bb 68 00 00 00 00 	cmpb   $0x0,0x68(%ebx)
 809:	75 24                	jne    82f <__isoc99_scanf@plt+0x12f>
 80b:	8b 83 48 00 00 00    	mov    0x48(%ebx),%eax
 811:	85 c0                	test   %eax,%eax
 813:	74 0e                	je     823 <__isoc99_scanf@plt+0x123>
 815:	8b 83 64 00 00 00    	mov    0x64(%ebx),%eax
 81b:	89 04 24             	mov    %eax,(%esp)
 81e:	e8 6d fe ff ff       	call   690 <__cxa_finalize@plt>
 823:	e8 38 ff ff ff       	call   760 <__isoc99_scanf@plt+0x60>
 828:	c6 83 68 00 00 00 01 	movb   $0x1,0x68(%ebx)
 82f:	83 c4 14             	add    $0x14,%esp
 832:	5b                   	pop    %ebx
 833:	5d                   	pop    %ebp
 834:	c3                   	ret    
 835:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 839:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 840:	55                   	push   %ebp
 841:	89 e5                	mov    %esp,%ebp
 843:	53                   	push   %ebx
 844:	e8 07 ff ff ff       	call   750 <__isoc99_scanf@plt+0x50>
 849:	81 c3 57 17 00 00    	add    $0x1757,%ebx
 84f:	83 ec 14             	sub    $0x14,%esp
 852:	8b 83 04 ff ff ff    	mov    -0xfc(%ebx),%eax
 858:	85 c0                	test   %eax,%eax
 85a:	74 15                	je     871 <__isoc99_scanf@plt+0x171>
 85c:	8b 83 58 00 00 00    	mov    0x58(%ebx),%eax
 862:	85 c0                	test   %eax,%eax
 864:	74 0b                	je     871 <__isoc99_scanf@plt+0x171>
 866:	8d 93 04 ff ff ff    	lea    -0xfc(%ebx),%edx
 86c:	89 14 24             	mov    %edx,(%esp)
 86f:	ff d0                	call   *%eax
 871:	83 c4 14             	add    $0x14,%esp
 874:	5b                   	pop    %ebx
 875:	5d                   	pop    %ebp
 876:	e9 25 ff ff ff       	jmp    7a0 <__isoc99_scanf@plt+0xa0>
 87b:	66 90                	xchg   %ax,%ax
 87d:	66 90                	xchg   %ax,%ax
 87f:	90                   	nop
 880:	53                   	push   %ebx
 881:	83 ec 28             	sub    $0x28,%esp
 884:	e8 c7 fe ff ff       	call   750 <__isoc99_scanf@plt+0x50>
 889:	81 c3 17 17 00 00    	add    $0x1717,%ebx
 88f:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 895:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 899:	31 c0                	xor    %eax,%eax
 89b:	8d 83 30 ec ff ff    	lea    -0x13d0(%ebx),%eax
 8a1:	89 04 24             	mov    %eax,(%esp)
 8a4:	e8 f7 fd ff ff       	call   6a0 <puts@plt>
 8a9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8b0:	e8 0b fe ff ff       	call   6c0 <exit@plt>


 8b5:	53                   	push   %ebx
 8b6:	83 ec 28             	sub    $0x28,%esp
 8b9:	e8 92 fe ff ff       	call   750 <__isoc99_scanf@plt+0x50>
 8be:	81 c3 e2 16 00 00    	add    $0x16e2,%ebx
 8c4:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8ca:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8ce:	31 c0                	xor    %eax,%eax
 8d0:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8d7:	00 
 8d8:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
 8df:	00 
 8e0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8e7:	00 
 8e8:	8b 83 50 00 00 00    	mov    0x50(%ebx),%eax
 8ee:	8b 00                	mov    (%eax),%eax
 8f0:	89 04 24             	mov    %eax,(%esp)
 8f3:	e8 e8 fd ff ff       	call   6e0 <setvbuf@plt>
 8f8:	8d 83 e0 e8 ff ff    	lea    -0x1720(%ebx),%eax
 8fe:	89 44 24 04          	mov    %eax,0x4(%esp)
 902:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 909:	e8 42 fd ff ff       	call   650 <signal@plt>
 90e:	c7 04 24 3c 00 00 00 	movl   $0x3c,(%esp)
 915:	e8 56 fd ff ff       	call   670 <alarm@plt>
 91a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 91e:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 925:	74 05                	je     92c <__isoc99_scanf@plt+0x22c>
 927:	e8 74 02 00 00       	call   ba0 <main@@Base+0x1dd>
 92c:	83 c4 28             	add    $0x28,%esp
 92f:	5b                   	pop    %ebx
 930:	c3                   	ret

# dubblesort
 931:	55                   	push   %ebp
 932:	57                   	push   %edi
 933:	56                   	push   %esi
 934:	53                   	push   %ebx
 935:	83 ec 2c             	sub    $0x2c,%esp
 938:	e8 13 fe ff ff       	call   750 <__isoc99_scanf@plt+0x50>
 93d:	81 c3 63 16 00 00    	add    $0x1663,%ebx
 943:	8b 7c 24 40          	mov    0x40(%esp),%edi
 947:	8b 74 24 44          	mov    0x44(%esp),%esi
 94b:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 951:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 955:	31 c0                	xor    %eax,%eax
 957:	8d 83 38 ec ff ff    	lea    -0x13c8(%ebx),%eax
 95d:	89 04 24             	mov    %eax,(%esp)
 960:	e8 3b fd ff ff       	call   6a0 <puts@plt>
 965:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 96c:	e8 ef fc ff ff       	call   660 <sleep@plt>
 971:	83 fe 01             	cmp    $0x1,%esi
 974:	74 33                	je     9a9 <__isoc99_scanf@plt+0x2a9>
 976:	8d 4e fe             	lea    -0x2(%esi),%ecx
 979:	89 fd                	mov    %edi,%ebp
 97b:	8d 7c b7 fc          	lea    -0x4(%edi,%esi,4),%edi
 97f:	eb 1f                	jmp    9a0 <__isoc99_scanf@plt+0x2a0>
 981:	8b 10                	mov    (%eax),%edx
 983:	8b 70 04             	mov    0x4(%eax),%esi
 986:	39 f2                	cmp    %esi,%edx
 988:	76 05                	jbe    98f <__isoc99_scanf@plt+0x28f>
 98a:	89 30                	mov    %esi,(%eax)
 98c:	89 50 04             	mov    %edx,0x4(%eax)
 98f:	83 c0 04             	add    $0x4,%eax
 992:	39 c7                	cmp    %eax,%edi
 994:	75 eb                	jne    981 <__isoc99_scanf@plt+0x281>
 996:	85 c9                	test   %ecx,%ecx
 998:	74 0f                	je     9a9 <__isoc99_scanf@plt+0x2a9>
 99a:	83 e9 01             	sub    $0x1,%ecx
 99d:	83 ef 04             	sub    $0x4,%edi
 9a0:	83 f9 ff             	cmp    $0xffffffff,%ecx
 9a3:	74 f5                	je     99a <__isoc99_scanf@plt+0x29a>
 9a5:	89 e8                	mov    %ebp,%eax
 9a7:	eb d8                	jmp    981 <__isoc99_scanf@plt+0x281>
 9a9:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 9ad:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 9b4:	74 05                	je     9bb <__isoc99_scanf@plt+0x2bb>
 9b6:	e8 e5 01 00 00       	call   ba0 <main@@Base+0x1dd>
 9bb:	83 c4 2c             	add    $0x2c,%esp
 9be:	5b                   	pop    %ebx
 9bf:	5e                   	pop    %esi
 9c0:	5f                   	pop    %edi
 9c1:	5d                   	pop    %ebp
 9c2:	c3                   	ret    

000009c3 <main@@Base>:
 9c3:	55                   	push   %ebp
 9c4:	89 e5                	mov    %esp,%ebp
 9c6:	57                   	push   %edi
 9c7:	56                   	push   %esi
 9c8:	53                   	push   %ebx
 9c9:	83 e4 f0             	and    $0xfffffff0,%esp
 9cc:	83 c4 80             	add    $0xffffff80,%esp
 9cf:	e8 7c fd ff ff       	call   750 <__isoc99_scanf@plt+0x50>
 9d4:	81 c3 cc 15 00 00    	add    $0x15cc,%ebx
 9da:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 9e0:	89 44 24 7c          	mov    %eax,0x7c(%esp)
 9e4:	31 c0                	xor    %eax,%eax
 9e6:	e8 ca fe ff ff       	call   8b5 <__isoc99_scanf@plt+0x1b5>
 9eb:	8d 83 49 ec ff ff    	lea    -0x13b7(%ebx),%eax
 9f1:	89 44 24 04          	mov    %eax,0x4(%esp)
 9f5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 9fc:	e8 ef fc ff ff       	call   6f0 <__printf_chk@plt>
 a01:	c7 44 24 08 40 00 00 	movl   $0x40,0x8(%esp)
 a08:	00 
 a09:	8d 74 24 3c          	lea    0x3c(%esp),%esi
 a0d:	89 74 24 04          	mov    %esi,0x4(%esp)
 a11:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 a18:	e8 13 fc ff ff       	call   630 <read@plt>
 a1d:	89 74 24 08          	mov    %esi,0x8(%esp)
 a21:	8d 83 84 ec ff ff    	lea    -0x137c(%ebx),%eax
 a27:	89 44 24 04          	mov    %eax,0x4(%esp)
 a2b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 a32:	e8 b9 fc ff ff       	call   6f0 <__printf_chk@plt>
 a37:	8d 44 24 18          	lea    0x18(%esp),%eax
 a3b:	89 44 24 04          	mov    %eax,0x4(%esp)
 a3f:	8d 83 5a ec ff ff    	lea    -0x13a6(%ebx),%eax
 a45:	89 04 24             	mov    %eax,(%esp)
 a48:	e8 b3 fc ff ff       	call   700 <__isoc99_scanf@plt>
 a4d:	8b 44 24 18          	mov    0x18(%esp),%eax
 a51:	85 c0                	test   %eax,%eax
 a53:	74 53                	je     aa8 <main@@Base+0xe5>
 a55:	8d 7c 24 1c          	lea    0x1c(%esp),%edi
 a59:	be 00 00 00 00       	mov    $0x0,%esi
 a5e:	89 74 24 08          	mov    %esi,0x8(%esp)
 a62:	8d 83 5d ec ff ff    	lea    -0x13a3(%ebx),%eax
 a68:	89 44 24 04          	mov    %eax,0x4(%esp)
 a6c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 a73:	e8 78 fc ff ff       	call   6f0 <__printf_chk@plt>
 a78:	8b 83 50 00 00 00    	mov    0x50(%ebx),%eax
 a7e:	8b 00                	mov    (%eax),%eax
 a80:	89 04 24             	mov    %eax,(%esp)
 a83:	e8 b8 fb ff ff       	call   640 <fflush@plt>
 a88:	89 7c 24 04          	mov    %edi,0x4(%esp)
 a8c:	8d 83 5a ec ff ff    	lea    -0x13a6(%ebx),%eax
 a92:	89 04 24             	mov    %eax,(%esp)
 a95:	e8 66 fc ff ff       	call   700 <__isoc99_scanf@plt>
 a9a:	83 c6 01             	add    $0x1,%esi
 a9d:	8b 44 24 18          	mov    0x18(%esp),%eax
 aa1:	83 c7 04             	add    $0x4,%edi
 aa4:	39 f0                	cmp    %esi,%eax
 aa6:	77 b6                	ja     a5e <main@@Base+0x9b>
 aa8:	89 44 24 04          	mov    %eax,0x4(%esp)
 aac:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 ab0:	89 04 24             	mov    %eax,(%esp)
 ab3:	e8 79 fe ff ff       	call   931 <__isoc99_scanf@plt+0x231>
 ab8:	8d 83 74 ec ff ff    	lea    -0x138c(%ebx),%eax
 abe:	89 04 24             	mov    %eax,(%esp)
 ac1:	e8 da fb ff ff       	call   6a0 <puts@plt>
 ac6:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 acb:	74 2c                	je     af9 <main@@Base+0x136>
 acd:	be 00 00 00 00       	mov    $0x0,%esi
 ad2:	8d bb 7d ec ff ff    	lea    -0x1383(%ebx),%edi
 ad8:	8b 44 b4 1c          	mov    0x1c(%esp,%esi,4),%eax
 adc:	89 44 24 08          	mov    %eax,0x8(%esp)
 ae0:	89 7c 24 04          	mov    %edi,0x4(%esp)
 ae4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 aeb:	e8 00 fc ff ff       	call   6f0 <__printf_chk@plt>
 af0:	83 c6 01             	add    $0x1,%esi
 af3:	39 74 24 18          	cmp    %esi,0x18(%esp)
 af7:	77 df                	ja     ad8 <main@@Base+0x115>
 af9:	b8 00 00 00 00       	mov    $0x0,%eax
 afe:	8b 54 24 7c          	mov    0x7c(%esp),%edx
 b02:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 b09:	74 05                	je     b10 <main@@Base+0x14d>
 b0b:	e8 90 00 00 00       	call   ba0 <main@@Base+0x1dd>
 b10:	8d 65 f4             	lea    -0xc(%ebp),%esp
 b13:	5b                   	pop    %ebx
 b14:	5e                   	pop    %esi
 b15:	5f                   	pop    %edi
 b16:	5d                   	pop    %ebp
 b17:	c3                   	ret
 
     
 b18:	66 90                	xchg   %ax,%ax
 b1a:	66 90                	xchg   %ax,%ax
 b1c:	66 90                	xchg   %ax,%ax
 b1e:	66 90                	xchg   %ax,%ax
 b20:	55                   	push   %ebp
 b21:	57                   	push   %edi
 b22:	31 ff                	xor    %edi,%edi
 b24:	56                   	push   %esi
 b25:	53                   	push   %ebx
 b26:	e8 25 fc ff ff       	call   750 <__isoc99_scanf@plt+0x50>
 b2b:	81 c3 75 14 00 00    	add    $0x1475,%ebx
 b31:	83 ec 1c             	sub    $0x1c,%esp
 b34:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 b38:	8d b3 00 ff ff ff    	lea    -0x100(%ebx),%esi
 b3e:	e8 b5 fa ff ff       	call   5f8 <read@plt-0x38>
 b43:	8d 83 fc fe ff ff    	lea    -0x104(%ebx),%eax
 b49:	29 c6                	sub    %eax,%esi
 b4b:	c1 fe 02             	sar    $0x2,%esi
 b4e:	85 f6                	test   %esi,%esi
 b50:	74 27                	je     b79 <main@@Base+0x1b6>
 b52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 b58:	8b 44 24 38          	mov    0x38(%esp),%eax
 b5c:	89 2c 24             	mov    %ebp,(%esp)
 b5f:	89 44 24 08          	mov    %eax,0x8(%esp)
 b63:	8b 44 24 34          	mov    0x34(%esp),%eax
 b67:	89 44 24 04          	mov    %eax,0x4(%esp)
 b6b:	ff 94 bb fc fe ff ff 	call   *-0x104(%ebx,%edi,4)
 b72:	83 c7 01             	add    $0x1,%edi
 b75:	39 f7                	cmp    %esi,%edi
 b77:	75 df                	jne    b58 <main@@Base+0x195>
 b79:	83 c4 1c             	add    $0x1c,%esp
 b7c:	5b                   	pop    %ebx
 b7d:	5e                   	pop    %esi
 b7e:	5f                   	pop    %edi
 b7f:	5d                   	pop    %ebp
 b80:	c3                   	ret    
 b81:	eb 0d                	jmp    b90 <main@@Base+0x1cd>
 b83:	90                   	nop
 b84:	90                   	nop
 b85:	90                   	nop
 b86:	90                   	nop
 b87:	90                   	nop
 b88:	90                   	nop
 b89:	90                   	nop
 b8a:	90                   	nop
 b8b:	90                   	nop
 b8c:	90                   	nop
 b8d:	90                   	nop
 b8e:	90                   	nop
 b8f:	90                   	nop
 b90:	f3 c3                	repz ret 
 b92:	66 90                	xchg   %ax,%ax
 b94:	66 90                	xchg   %ax,%ax
 b96:	66 90                	xchg   %ax,%ax
 b98:	66 90                	xchg   %ax,%ax
 b9a:	66 90                	xchg   %ax,%ax
 b9c:	66 90                	xchg   %ax,%ax
 b9e:	66 90                	xchg   %ax,%ax


 ba0:	53                   	push   %ebx
 ba1:	e8 aa fb ff ff       	call   750 <__isoc99_scanf@plt+0x50>
 ba6:	81 c3 fa 13 00 00    	add    $0x13fa,%ebx
 bac:	83 ec 08             	sub    $0x8,%esp
 baf:	e8 cc fa ff ff       	call   680 <__stack_chk_fail@plt>

Disassembly of section .fini:

00000bb4 <.fini>:
 bb4:	53                   	push   %ebx
 bb5:	83 ec 08             	sub    $0x8,%esp
 bb8:	e8 93 fb ff ff       	call   750 <__isoc99_scanf@plt+0x50>
 bbd:	81 c3 e3 13 00 00    	add    $0x13e3,%ebx
 bc3:	83 c4 08             	add    $0x8,%esp
 bc6:	5b                   	pop    %ebx
 bc7:	c3                   	ret    
