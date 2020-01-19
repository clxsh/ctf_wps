
level3:     file format elf32-i386


Disassembly of section .init:

080482d0 <_init>:
 80482d0:	53                   	push   %ebx
 80482d1:	83 ec 08             	sub    $0x8,%esp
 80482d4:	e8 a7 00 00 00       	call   8048380 <__x86.get_pc_thunk.bx>
 80482d9:	81 c3 27 1d 00 00    	add    $0x1d27,%ebx
 80482df:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80482e5:	85 c0                	test   %eax,%eax
 80482e7:	74 05                	je     80482ee <_init+0x1e>
 80482e9:	e8 32 00 00 00       	call   8048320 <__gmon_start__@plt>
 80482ee:	83 c4 08             	add    $0x8,%esp
 80482f1:	5b                   	pop    %ebx
 80482f2:	c3                   	ret    

Disassembly of section .plt:

08048300 <.plt>:
 8048300:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048306:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804830c:	00 00                	add    %al,(%eax)
	...

08048310 <read@plt>:
 8048310:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048316:	68 00 00 00 00       	push   $0x0
 804831b:	e9 e0 ff ff ff       	jmp    8048300 <.plt>

08048320 <__gmon_start__@plt>:
 8048320:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048326:	68 08 00 00 00       	push   $0x8
 804832b:	e9 d0 ff ff ff       	jmp    8048300 <.plt>

08048330 <__libc_start_main@plt>:
 8048330:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048336:	68 10 00 00 00       	push   $0x10
 804833b:	e9 c0 ff ff ff       	jmp    8048300 <.plt>

08048340 <write@plt>:
 8048340:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048346:	68 18 00 00 00       	push   $0x18
 804834b:	e9 b0 ff ff ff       	jmp    8048300 <.plt>

Disassembly of section .text:

08048350 <_start>:
 8048350:	31 ed                	xor    %ebp,%ebp
 8048352:	5e                   	pop    %esi
 8048353:	89 e1                	mov    %esp,%ecx
 8048355:	83 e4 f0             	and    $0xfffffff0,%esp
 8048358:	50                   	push   %eax
 8048359:	54                   	push   %esp
 804835a:	52                   	push   %edx
 804835b:	68 20 85 04 08       	push   $0x8048520
 8048360:	68 c0 84 04 08       	push   $0x80484c0
 8048365:	51                   	push   %ecx
 8048366:	56                   	push   %esi
 8048367:	68 84 84 04 08       	push   $0x8048484
 804836c:	e8 bf ff ff ff       	call   8048330 <__libc_start_main@plt>
 8048371:	f4                   	hlt    
 8048372:	66 90                	xchg   %ax,%ax
 8048374:	66 90                	xchg   %ax,%ax
 8048376:	66 90                	xchg   %ax,%ax
 8048378:	66 90                	xchg   %ax,%ax
 804837a:	66 90                	xchg   %ax,%ax
 804837c:	66 90                	xchg   %ax,%ax
 804837e:	66 90                	xchg   %ax,%ax

08048380 <__x86.get_pc_thunk.bx>:
 8048380:	8b 1c 24             	mov    (%esp),%ebx
 8048383:	c3                   	ret    
 8048384:	66 90                	xchg   %ax,%ax
 8048386:	66 90                	xchg   %ax,%ax
 8048388:	66 90                	xchg   %ax,%ax
 804838a:	66 90                	xchg   %ax,%ax
 804838c:	66 90                	xchg   %ax,%ax
 804838e:	66 90                	xchg   %ax,%ax

08048390 <deregister_tm_clones>:
 8048390:	b8 27 a0 04 08       	mov    $0x804a027,%eax
 8048395:	2d 24 a0 04 08       	sub    $0x804a024,%eax
 804839a:	83 f8 06             	cmp    $0x6,%eax
 804839d:	76 1a                	jbe    80483b9 <deregister_tm_clones+0x29>
 804839f:	b8 00 00 00 00       	mov    $0x0,%eax
 80483a4:	85 c0                	test   %eax,%eax
 80483a6:	74 11                	je     80483b9 <deregister_tm_clones+0x29>
 80483a8:	55                   	push   %ebp
 80483a9:	89 e5                	mov    %esp,%ebp
 80483ab:	83 ec 14             	sub    $0x14,%esp
 80483ae:	68 24 a0 04 08       	push   $0x804a024
 80483b3:	ff d0                	call   *%eax
 80483b5:	83 c4 10             	add    $0x10,%esp
 80483b8:	c9                   	leave  
 80483b9:	f3 c3                	repz ret 
 80483bb:	90                   	nop
 80483bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080483c0 <register_tm_clones>:
 80483c0:	b8 24 a0 04 08       	mov    $0x804a024,%eax
 80483c5:	2d 24 a0 04 08       	sub    $0x804a024,%eax
 80483ca:	c1 f8 02             	sar    $0x2,%eax
 80483cd:	89 c2                	mov    %eax,%edx
 80483cf:	c1 ea 1f             	shr    $0x1f,%edx
 80483d2:	01 d0                	add    %edx,%eax
 80483d4:	d1 f8                	sar    %eax
 80483d6:	74 1b                	je     80483f3 <register_tm_clones+0x33>
 80483d8:	ba 00 00 00 00       	mov    $0x0,%edx
 80483dd:	85 d2                	test   %edx,%edx
 80483df:	74 12                	je     80483f3 <register_tm_clones+0x33>
 80483e1:	55                   	push   %ebp
 80483e2:	89 e5                	mov    %esp,%ebp
 80483e4:	83 ec 10             	sub    $0x10,%esp
 80483e7:	50                   	push   %eax
 80483e8:	68 24 a0 04 08       	push   $0x804a024
 80483ed:	ff d2                	call   *%edx
 80483ef:	83 c4 10             	add    $0x10,%esp
 80483f2:	c9                   	leave  
 80483f3:	f3 c3                	repz ret 
 80483f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80483f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048400 <__do_global_dtors_aux>:
 8048400:	80 3d 24 a0 04 08 00 	cmpb   $0x0,0x804a024
 8048407:	75 13                	jne    804841c <__do_global_dtors_aux+0x1c>
 8048409:	55                   	push   %ebp
 804840a:	89 e5                	mov    %esp,%ebp
 804840c:	83 ec 08             	sub    $0x8,%esp
 804840f:	e8 7c ff ff ff       	call   8048390 <deregister_tm_clones>
 8048414:	c6 05 24 a0 04 08 01 	movb   $0x1,0x804a024
 804841b:	c9                   	leave  
 804841c:	f3 c3                	repz ret 
 804841e:	66 90                	xchg   %ax,%ax

08048420 <frame_dummy>:
 8048420:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048425:	8b 10                	mov    (%eax),%edx
 8048427:	85 d2                	test   %edx,%edx
 8048429:	75 05                	jne    8048430 <frame_dummy+0x10>
 804842b:	eb 93                	jmp    80483c0 <register_tm_clones>
 804842d:	8d 76 00             	lea    0x0(%esi),%esi
 8048430:	ba 00 00 00 00       	mov    $0x0,%edx
 8048435:	85 d2                	test   %edx,%edx
 8048437:	74 f2                	je     804842b <frame_dummy+0xb>
 8048439:	55                   	push   %ebp
 804843a:	89 e5                	mov    %esp,%ebp
 804843c:	83 ec 14             	sub    $0x14,%esp
 804843f:	50                   	push   %eax
 8048440:	ff d2                	call   *%edx
 8048442:	83 c4 10             	add    $0x10,%esp
 8048445:	c9                   	leave  
 8048446:	e9 75 ff ff ff       	jmp    80483c0 <register_tm_clones>

0804844b <vulnerable_function>:
 804844b:	55                   	push   %ebp
 804844c:	89 e5                	mov    %esp,%ebp
 804844e:	81 ec 88 00 00 00    	sub    $0x88,%esp
 8048454:	83 ec 04             	sub    $0x4,%esp
 8048457:	6a 07                	push   $0x7
 8048459:	68 40 85 04 08       	push   $0x8048540
 804845e:	6a 01                	push   $0x1
 8048460:	e8 db fe ff ff       	call   8048340 <write@plt>
 8048465:	83 c4 10             	add    $0x10,%esp
 8048468:	83 ec 04             	sub    $0x4,%esp
 804846b:	68 00 01 00 00       	push   $0x100
 8048470:	8d 85 78 ff ff ff    	lea    -0x88(%ebp),%eax
 8048476:	50                   	push   %eax
 8048477:	6a 00                	push   $0x0
 8048479:	e8 92 fe ff ff       	call   8048310 <read@plt>
 804847e:	83 c4 10             	add    $0x10,%esp
 8048481:	90                   	nop
 8048482:	c9                   	leave  
 8048483:	c3                   	ret    

08048484 <main>:
 8048484:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048488:	83 e4 f0             	and    $0xfffffff0,%esp
 804848b:	ff 71 fc             	pushl  -0x4(%ecx)
 804848e:	55                   	push   %ebp
 804848f:	89 e5                	mov    %esp,%ebp
 8048491:	51                   	push   %ecx
 8048492:	83 ec 04             	sub    $0x4,%esp
 8048495:	e8 b1 ff ff ff       	call   804844b <vulnerable_function>
 804849a:	83 ec 04             	sub    $0x4,%esp
 804849d:	6a 0e                	push   $0xe
 804849f:	68 48 85 04 08       	push   $0x8048548
 80484a4:	6a 01                	push   $0x1
 80484a6:	e8 95 fe ff ff       	call   8048340 <write@plt>
 80484ab:	83 c4 10             	add    $0x10,%esp
 80484ae:	b8 00 00 00 00       	mov    $0x0,%eax
 80484b3:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80484b6:	c9                   	leave  
 80484b7:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80484ba:	c3                   	ret    
 80484bb:	66 90                	xchg   %ax,%ax
 80484bd:	66 90                	xchg   %ax,%ax
 80484bf:	90                   	nop

080484c0 <__libc_csu_init>:
 80484c0:	55                   	push   %ebp
 80484c1:	57                   	push   %edi
 80484c2:	31 ff                	xor    %edi,%edi
 80484c4:	56                   	push   %esi
 80484c5:	53                   	push   %ebx
 80484c6:	e8 b5 fe ff ff       	call   8048380 <__x86.get_pc_thunk.bx>
 80484cb:	81 c3 35 1b 00 00    	add    $0x1b35,%ebx
 80484d1:	83 ec 0c             	sub    $0xc,%esp
 80484d4:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80484d8:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80484de:	e8 ed fd ff ff       	call   80482d0 <_init>
 80484e3:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80484e9:	29 c6                	sub    %eax,%esi
 80484eb:	c1 fe 02             	sar    $0x2,%esi
 80484ee:	85 f6                	test   %esi,%esi
 80484f0:	74 23                	je     8048515 <__libc_csu_init+0x55>
 80484f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80484f8:	83 ec 04             	sub    $0x4,%esp
 80484fb:	ff 74 24 2c          	pushl  0x2c(%esp)
 80484ff:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048503:	55                   	push   %ebp
 8048504:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 804850b:	83 c7 01             	add    $0x1,%edi
 804850e:	83 c4 10             	add    $0x10,%esp
 8048511:	39 f7                	cmp    %esi,%edi
 8048513:	75 e3                	jne    80484f8 <__libc_csu_init+0x38>
 8048515:	83 c4 0c             	add    $0xc,%esp
 8048518:	5b                   	pop    %ebx
 8048519:	5e                   	pop    %esi
 804851a:	5f                   	pop    %edi
 804851b:	5d                   	pop    %ebp
 804851c:	c3                   	ret    
 804851d:	8d 76 00             	lea    0x0(%esi),%esi

08048520 <__libc_csu_fini>:
 8048520:	f3 c3                	repz ret 

Disassembly of section .fini:

08048524 <_fini>:
 8048524:	53                   	push   %ebx
 8048525:	83 ec 08             	sub    $0x8,%esp
 8048528:	e8 53 fe ff ff       	call   8048380 <__x86.get_pc_thunk.bx>
 804852d:	81 c3 d3 1a 00 00    	add    $0x1ad3,%ebx
 8048533:	83 c4 08             	add    $0x8,%esp
 8048536:	5b                   	pop    %ebx
 8048537:	c3                   	ret    
