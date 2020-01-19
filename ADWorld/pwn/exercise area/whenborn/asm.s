
whenborn:     file format elf64-x86-64


Disassembly of section .init:

0000000000400658 <.init>:
  400658:	48 83 ec 08          	sub    $0x8,%rsp
  40065c:	48 8b 05 95 09 20 00 	mov    0x200995(%rip),%rax        # 600ff8 <__gmon_start__@plt+0x2008d8>
  400663:	48 85 c0             	test   %rax,%rax
  400666:	74 05                	je     40066d <puts@plt-0x23>
  400668:	e8 b3 00 00 00       	callq  400720 <__gmon_start__@plt>
  40066d:	48 83 c4 08          	add    $0x8,%rsp
  400671:	c3                   	retq   

Disassembly of section .plt:

0000000000400680 <puts@plt-0x10>:
  400680:	ff 35 82 09 20 00    	pushq  0x200982(%rip)        # 601008 <__gmon_start__@plt+0x2008e8>
  400686:	ff 25 84 09 20 00    	jmpq   *0x200984(%rip)        # 601010 <__gmon_start__@plt+0x2008f0>
  40068c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400690 <puts@plt>:
  400690:	ff 25 82 09 20 00    	jmpq   *0x200982(%rip)        # 601018 <__gmon_start__@plt+0x2008f8>
  400696:	68 00 00 00 00       	pushq  $0x0
  40069b:	e9 e0 ff ff ff       	jmpq   400680 <puts@plt-0x10>

00000000004006a0 <__stack_chk_fail@plt>:
  4006a0:	ff 25 7a 09 20 00    	jmpq   *0x20097a(%rip)        # 601020 <__gmon_start__@plt+0x200900>
  4006a6:	68 01 00 00 00       	pushq  $0x1
  4006ab:	e9 d0 ff ff ff       	jmpq   400680 <puts@plt-0x10>

00000000004006b0 <setbuf@plt>:
  4006b0:	ff 25 72 09 20 00    	jmpq   *0x200972(%rip)        # 601028 <__gmon_start__@plt+0x200908>
  4006b6:	68 02 00 00 00       	pushq  $0x2
  4006bb:	e9 c0 ff ff ff       	jmpq   400680 <puts@plt-0x10>

00000000004006c0 <system@plt>:
  4006c0:	ff 25 6a 09 20 00    	jmpq   *0x20096a(%rip)        # 601030 <__gmon_start__@plt+0x200910>
  4006c6:	68 03 00 00 00       	pushq  $0x3
  4006cb:	e9 b0 ff ff ff       	jmpq   400680 <puts@plt-0x10>

00000000004006d0 <printf@plt>:
  4006d0:	ff 25 62 09 20 00    	jmpq   *0x200962(%rip)        # 601038 <__gmon_start__@plt+0x200918>
  4006d6:	68 04 00 00 00       	pushq  $0x4
  4006db:	e9 a0 ff ff ff       	jmpq   400680 <puts@plt-0x10>

00000000004006e0 <__libc_start_main@plt>:
  4006e0:	ff 25 5a 09 20 00    	jmpq   *0x20095a(%rip)        # 601040 <__gmon_start__@plt+0x200920>
  4006e6:	68 05 00 00 00       	pushq  $0x5
  4006eb:	e9 90 ff ff ff       	jmpq   400680 <puts@plt-0x10>

00000000004006f0 <getchar@plt>:
  4006f0:	ff 25 52 09 20 00    	jmpq   *0x200952(%rip)        # 601048 <__gmon_start__@plt+0x200928>
  4006f6:	68 06 00 00 00       	pushq  $0x6
  4006fb:	e9 80 ff ff ff       	jmpq   400680 <puts@plt-0x10>

0000000000400700 <gets@plt>:
  400700:	ff 25 4a 09 20 00    	jmpq   *0x20094a(%rip)        # 601050 <__gmon_start__@plt+0x200930>
  400706:	68 07 00 00 00       	pushq  $0x7
  40070b:	e9 70 ff ff ff       	jmpq   400680 <puts@plt-0x10>

0000000000400710 <__isoc99_scanf@plt>:
  400710:	ff 25 42 09 20 00    	jmpq   *0x200942(%rip)        # 601058 <__gmon_start__@plt+0x200938>
  400716:	68 08 00 00 00       	pushq  $0x8
  40071b:	e9 60 ff ff ff       	jmpq   400680 <puts@plt-0x10>

Disassembly of section .plt.got:

0000000000400720 <__gmon_start__@plt>:
  400720:	ff 25 d2 08 20 00    	jmpq   *0x2008d2(%rip)        # 600ff8 <__gmon_start__@plt+0x2008d8>
  400726:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400730 <.text>:
  400730:	31 ed                	xor    %ebp,%ebp
  400732:	49 89 d1             	mov    %rdx,%r9
  400735:	5e                   	pop    %rsi
  400736:	48 89 e2             	mov    %rsp,%rdx
  400739:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40073d:	50                   	push   %rax
  40073e:	54                   	push   %rsp
  40073f:	49 c7 c0 c0 09 40 00 	mov    $0x4009c0,%r8
  400746:	48 c7 c1 50 09 40 00 	mov    $0x400950,%rcx
  40074d:	48 c7 c7 26 08 40 00 	mov    $0x400826,%rdi
  400754:	e8 87 ff ff ff       	callq  4006e0 <__libc_start_main@plt>
  400759:	f4                   	hlt    
  40075a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400760:	b8 77 10 60 00       	mov    $0x601077,%eax
  400765:	55                   	push   %rbp
  400766:	48 2d 70 10 60 00    	sub    $0x601070,%rax
  40076c:	48 83 f8 0e          	cmp    $0xe,%rax
  400770:	48 89 e5             	mov    %rsp,%rbp
  400773:	76 1b                	jbe    400790 <__gmon_start__@plt+0x70>
  400775:	b8 00 00 00 00       	mov    $0x0,%eax
  40077a:	48 85 c0             	test   %rax,%rax
  40077d:	74 11                	je     400790 <__gmon_start__@plt+0x70>
  40077f:	5d                   	pop    %rbp
  400780:	bf 70 10 60 00       	mov    $0x601070,%edi
  400785:	ff e0                	jmpq   *%rax
  400787:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40078e:	00 00 
  400790:	5d                   	pop    %rbp
  400791:	c3                   	retq   
  400792:	0f 1f 40 00          	nopl   0x0(%rax)
  400796:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40079d:	00 00 00 
  4007a0:	be 70 10 60 00       	mov    $0x601070,%esi
  4007a5:	55                   	push   %rbp
  4007a6:	48 81 ee 70 10 60 00 	sub    $0x601070,%rsi
  4007ad:	48 c1 fe 03          	sar    $0x3,%rsi
  4007b1:	48 89 e5             	mov    %rsp,%rbp
  4007b4:	48 89 f0             	mov    %rsi,%rax
  4007b7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4007bb:	48 01 c6             	add    %rax,%rsi
  4007be:	48 d1 fe             	sar    %rsi
  4007c1:	74 15                	je     4007d8 <__gmon_start__@plt+0xb8>
  4007c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4007c8:	48 85 c0             	test   %rax,%rax
  4007cb:	74 0b                	je     4007d8 <__gmon_start__@plt+0xb8>
  4007cd:	5d                   	pop    %rbp
  4007ce:	bf 70 10 60 00       	mov    $0x601070,%edi
  4007d3:	ff e0                	jmpq   *%rax
  4007d5:	0f 1f 00             	nopl   (%rax)
  4007d8:	5d                   	pop    %rbp
  4007d9:	c3                   	retq   
  4007da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4007e0:	80 3d c1 08 20 00 00 	cmpb   $0x0,0x2008c1(%rip)        # 6010a8 <stderr@@GLIBC_2.2.5+0x8>
  4007e7:	75 11                	jne    4007fa <__gmon_start__@plt+0xda>
  4007e9:	55                   	push   %rbp
  4007ea:	48 89 e5             	mov    %rsp,%rbp
  4007ed:	e8 6e ff ff ff       	callq  400760 <__gmon_start__@plt+0x40>
  4007f2:	5d                   	pop    %rbp
  4007f3:	c6 05 ae 08 20 00 01 	movb   $0x1,0x2008ae(%rip)        # 6010a8 <stderr@@GLIBC_2.2.5+0x8>
  4007fa:	f3 c3                	repz retq 
  4007fc:	0f 1f 40 00          	nopl   0x0(%rax)
  400800:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400805:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400809:	75 05                	jne    400810 <__gmon_start__@plt+0xf0>
  40080b:	eb 93                	jmp    4007a0 <__gmon_start__@plt+0x80>
  40080d:	0f 1f 00             	nopl   (%rax)
  400810:	b8 00 00 00 00       	mov    $0x0,%eax
  400815:	48 85 c0             	test   %rax,%rax
  400818:	74 f1                	je     40080b <__gmon_start__@plt+0xeb>
  40081a:	55                   	push   %rbp
  40081b:	48 89 e5             	mov    %rsp,%rbp
  40081e:	ff d0                	callq  *%rax
  400820:	5d                   	pop    %rbp
  400821:	e9 7a ff ff ff       	jmpq   4007a0 <__gmon_start__@plt+0x80>

  ;// main
  400826:	55                   	push   %rbp
  400827:	48 89 e5             	mov    %rsp,%rbp
  40082a:	48 83 ec 20          	sub    $0x20,%rsp
  40082e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400835:	00 00 
  400837:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40083b:	31 c0                	xor    %eax,%eax
  40083d:	48 8b 05 4c 08 20 00 	mov    0x20084c(%rip),%rax        # 601090 <stdin@@GLIBC_2.2.5>
  400844:	be 00 00 00 00       	mov    $0x0,%esi
  400849:	48 89 c7             	mov    %rax,%rdi
  40084c:	e8 5f fe ff ff       	callq  4006b0 <setbuf@plt>
  400851:	48 8b 05 28 08 20 00 	mov    0x200828(%rip),%rax        # 601080 <stdout@@GLIBC_2.2.5>
  400858:	be 00 00 00 00       	mov    $0x0,%esi
  40085d:	48 89 c7             	mov    %rax,%rdi
  400860:	e8 4b fe ff ff       	callq  4006b0 <setbuf@plt>
  400865:	48 8b 05 34 08 20 00 	mov    0x200834(%rip),%rax        # 6010a0 <stderr@@GLIBC_2.2.5>
  40086c:	be 00 00 00 00       	mov    $0x0,%esi
  400871:	48 89 c7             	mov    %rax,%rdi
  400874:	e8 37 fe ff ff       	callq  4006b0 <setbuf@plt>
  400879:	bf d4 09 40 00       	mov    $0x4009d4,%edi
  40087e:	e8 0d fe ff ff       	callq  400690 <puts@plt>
  400883:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400887:	48 83 c0 08          	add    $0x8,%rax
  40088b:	48 89 c6             	mov    %rax,%rsi
  40088e:	bf e7 09 40 00       	mov    $0x4009e7,%edi
  400893:	b8 00 00 00 00       	mov    $0x0,%eax
  400898:	e8 73 fe ff ff       	callq  400710 <__isoc99_scanf@plt>
  40089d:	90                   	nop
  40089e:	e8 4d fe ff ff       	callq  4006f0 <getchar@plt>
  4008a3:	83 f8 0a             	cmp    $0xa,%eax
  4008a6:	75 f6                	jne    40089e <__gmon_start__@plt+0x17e>
  4008a8:	8b 45 e8             	mov    -0x18(%rbp),%eax                    // v5
  4008ab:	3d 86 07 00 00       	cmp    $0x786,%eax
  4008b0:	75 11                	jne    4008c3 <__gmon_start__@plt+0x1a3>
  4008b2:	bf ea 09 40 00       	mov    $0x4009ea,%edi
  4008b7:	e8 d4 fd ff ff       	callq  400690 <puts@plt>
  4008bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4008c1:	eb 6d                	jmp    400930 <__gmon_start__@plt+0x210>  // return 0


  4008c3:	bf 03 0a 40 00       	mov    $0x400a03,%edi
  4008c8:	e8 c3 fd ff ff       	callq  400690 <puts@plt>
  4008cd:	48 8d 45 e0          	lea    -0x20(%rbp),%rax      // v4
  4008d1:	48 89 c7             	mov    %rax,%rdi
  4008d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4008d9:	e8 22 fe ff ff       	callq  400700 <gets@plt>

  4008de:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4008e1:	89 c6                	mov    %eax,%esi
  4008e3:	bf 15 0a 40 00       	mov    $0x400a15,%edi
  4008e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4008ed:	e8 de fd ff ff       	callq  4006d0 <printf@plt>
  4008f2:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4008f5:	3d 86 07 00 00       	cmp    $0x786,%eax
  4008fa:	75 1b                	jne    400917 <__gmon_start__@plt+0x1f7>
  4008fc:	bf 29 0a 40 00       	mov    $0x400a29,%edi
  400901:	e8 8a fd ff ff       	callq  400690 <puts@plt>
  400906:	bf 3e 0a 40 00       	mov    $0x400a3e,%edi
  40090b:	b8 00 00 00 00       	mov    $0x0,%eax
  400910:	e8 ab fd ff ff       	callq  4006c0 <system@plt>
  400915:	eb 14                	jmp    40092b <__gmon_start__@plt+0x20b>
  400917:	bf 47 0a 40 00       	mov    $0x400a47,%edi
  40091c:	e8 6f fd ff ff       	callq  400690 <puts@plt>
  400921:	bf 56 0a 40 00       	mov    $0x400a56,%edi
  400926:	e8 65 fd ff ff       	callq  400690 <puts@plt>
  40092b:	b8 00 00 00 00       	mov    $0x0,%eax
  400930:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400934:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  40093b:	00 00 
  40093d:	74 05                	je     400944 <__gmon_start__@plt+0x224>
  40093f:	e8 5c fd ff ff       	callq  4006a0 <__stack_chk_fail@plt>
  400944:	c9                   	leaveq 
  400945:	c3                   	retq   
  400946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40094d:	00 00 00 
  400950:	41 57                	push   %r15
  400952:	41 56                	push   %r14
  400954:	41 89 ff             	mov    %edi,%r15d
  400957:	41 55                	push   %r13
  400959:	41 54                	push   %r12
  40095b:	4c 8d 25 ae 04 20 00 	lea    0x2004ae(%rip),%r12        # 600e10 <__gmon_start__@plt+0x2006f0>
  400962:	55                   	push   %rbp
  400963:	48 8d 2d ae 04 20 00 	lea    0x2004ae(%rip),%rbp        # 600e18 <__gmon_start__@plt+0x2006f8>
  40096a:	53                   	push   %rbx
  40096b:	49 89 f6             	mov    %rsi,%r14
  40096e:	49 89 d5             	mov    %rdx,%r13
  400971:	4c 29 e5             	sub    %r12,%rbp
  400974:	48 83 ec 08          	sub    $0x8,%rsp
  400978:	48 c1 fd 03          	sar    $0x3,%rbp
  40097c:	e8 d7 fc ff ff       	callq  400658 <puts@plt-0x38>
  400981:	48 85 ed             	test   %rbp,%rbp
  400984:	74 20                	je     4009a6 <__gmon_start__@plt+0x286>
  400986:	31 db                	xor    %ebx,%ebx
  400988:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40098f:	00 
  400990:	4c 89 ea             	mov    %r13,%rdx
  400993:	4c 89 f6             	mov    %r14,%rsi
  400996:	44 89 ff             	mov    %r15d,%edi
  400999:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40099d:	48 83 c3 01          	add    $0x1,%rbx
  4009a1:	48 39 eb             	cmp    %rbp,%rbx
  4009a4:	75 ea                	jne    400990 <__gmon_start__@plt+0x270>
  4009a6:	48 83 c4 08          	add    $0x8,%rsp
  4009aa:	5b                   	pop    %rbx
  4009ab:	5d                   	pop    %rbp
  4009ac:	41 5c                	pop    %r12
  4009ae:	41 5d                	pop    %r13
  4009b0:	41 5e                	pop    %r14
  4009b2:	41 5f                	pop    %r15
  4009b4:	c3                   	retq   
  4009b5:	90                   	nop
  4009b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4009bd:	00 00 00 
  4009c0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004009c4 <.fini>:
  4009c4:	48 83 ec 08          	sub    $0x8,%rsp
  4009c8:	48 83 c4 08          	add    $0x8,%rsp
  4009cc:	c3                   	retq   
