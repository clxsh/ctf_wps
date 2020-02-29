
one_gadget:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 2f 00 00 	mov    0x2fdd(%rip),%rax        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 82 2f 00 00    	pushq  0x2f82(%rip)        # 3fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 84 2f 00 00    	jmpq   *0x2f84(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <__stack_chk_fail@plt>:
    1030:	ff 25 82 2f 00 00    	jmpq   *0x2f82(%rip)        # 3fb8 <__stack_chk_fail@GLIBC_2.4>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <setvbuf@plt>:
    1040:	ff 25 7a 2f 00 00    	jmpq   *0x2f7a(%rip)        # 3fc0 <setvbuf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <__isoc99_scanf@plt>:
    1050:	ff 25 72 2f 00 00    	jmpq   *0x2f72(%rip)        # 3fc8 <__isoc99_scanf@GLIBC_2.7>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

0000000000001060 <printf@plt>:
    1060:	ff 25 72 2f 00 00    	jmpq   *0x2f72(%rip)        # 3fd8 <printf@GLIBC_2.2.5>
    1066:	66 90                	xchg   %ax,%ax

0000000000001068 <__cxa_finalize@plt>:
    1068:	ff 25 8a 2f 00 00    	jmpq   *0x2f8a(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    106e:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001070 <_start>:
    1070:	31 ed                	xor    %ebp,%ebp
    1072:	49 89 d1             	mov    %rdx,%r9
    1075:	5e                   	pop    %rsi
    1076:	48 89 e2             	mov    %rsp,%rdx
    1079:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    107d:	50                   	push   %rax
    107e:	54                   	push   %rsp
    107f:	4c 8d 05 0a 02 00 00 	lea    0x20a(%rip),%r8        # 1290 <__libc_csu_fini>
    1086:	48 8d 0d a3 01 00 00 	lea    0x1a3(%rip),%rcx        # 1230 <__libc_csu_init>
    108d:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1155 <main>
    1094:	ff 15 46 2f 00 00    	callq  *0x2f46(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    109a:	f4                   	hlt    
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010a0 <deregister_tm_clones>:
    10a0:	48 8d 3d 69 2f 00 00 	lea    0x2f69(%rip),%rdi        # 4010 <stdout@@GLIBC_2.2.5>
    10a7:	48 8d 05 62 2f 00 00 	lea    0x2f62(%rip),%rax        # 4010 <stdout@@GLIBC_2.2.5>
    10ae:	48 39 f8             	cmp    %rdi,%rax
    10b1:	74 15                	je     10c8 <deregister_tm_clones+0x28>
    10b3:	48 8b 05 16 2f 00 00 	mov    0x2f16(%rip),%rax        # 3fd0 <_ITM_deregisterTMCloneTable>
    10ba:	48 85 c0             	test   %rax,%rax
    10bd:	74 09                	je     10c8 <deregister_tm_clones+0x28>
    10bf:	ff e0                	jmpq   *%rax
    10c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10c8:	c3                   	retq   
    10c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010d0 <register_tm_clones>:
    10d0:	48 8d 3d 39 2f 00 00 	lea    0x2f39(%rip),%rdi        # 4010 <stdout@@GLIBC_2.2.5>
    10d7:	48 8d 35 32 2f 00 00 	lea    0x2f32(%rip),%rsi        # 4010 <stdout@@GLIBC_2.2.5>
    10de:	48 29 fe             	sub    %rdi,%rsi
    10e1:	48 c1 fe 03          	sar    $0x3,%rsi
    10e5:	48 89 f0             	mov    %rsi,%rax
    10e8:	48 c1 e8 3f          	shr    $0x3f,%rax
    10ec:	48 01 c6             	add    %rax,%rsi
    10ef:	48 d1 fe             	sar    %rsi
    10f2:	74 14                	je     1108 <register_tm_clones+0x38>
    10f4:	48 8b 05 f5 2e 00 00 	mov    0x2ef5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    10fb:	48 85 c0             	test   %rax,%rax
    10fe:	74 08                	je     1108 <register_tm_clones+0x38>
    1100:	ff e0                	jmpq   *%rax
    1102:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1108:	c3                   	retq   
    1109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001110 <__do_global_dtors_aux>:
    1110:	80 3d 11 2f 00 00 00 	cmpb   $0x0,0x2f11(%rip)        # 4028 <completed.7963>
    1117:	75 2f                	jne    1148 <__do_global_dtors_aux+0x38>
    1119:	55                   	push   %rbp
    111a:	48 83 3d d6 2e 00 00 	cmpq   $0x0,0x2ed6(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1121:	00 
    1122:	48 89 e5             	mov    %rsp,%rbp
    1125:	74 0c                	je     1133 <__do_global_dtors_aux+0x23>
    1127:	48 8b 3d da 2e 00 00 	mov    0x2eda(%rip),%rdi        # 4008 <__dso_handle>
    112e:	e8 35 ff ff ff       	callq  1068 <__cxa_finalize@plt>
    1133:	e8 68 ff ff ff       	callq  10a0 <deregister_tm_clones>
    1138:	c6 05 e9 2e 00 00 01 	movb   $0x1,0x2ee9(%rip)        # 4028 <completed.7963>
    113f:	5d                   	pop    %rbp
    1140:	c3                   	retq   
    1141:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1148:	c3                   	retq   
    1149:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001150 <frame_dummy>:
    1150:	e9 7b ff ff ff       	jmpq   10d0 <register_tm_clones>

0000000000001155 <main>:
    1155:	55                   	push   %rbp
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	48 83 ec 20          	sub    $0x20,%rsp
    115d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1164:	00 00 
    1166:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    116a:	31 c0                	xor    %eax,%eax
    116c:	b8 00 00 00 00       	mov    $0x0,%eax
    1171:	e8 57 00 00 00       	callq  11cd <init>
    1176:	48 8d 3d 87 0e 00 00 	lea    0xe87(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    117d:	b8 00 00 00 00       	mov    $0x0,%eax
    1182:	e8 d9 fe ff ff       	callq  1060 <printf@plt>
    1187:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    118b:	48 89 c6             	mov    %rax,%rsi
    118e:	48 8d 3d 7e 0e 00 00 	lea    0xe7e(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1195:	b8 00 00 00 00       	mov    $0x0,%eax
    119a:	e8 b1 fe ff ff       	callq  1050 <__isoc99_scanf@plt>
    119f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11a3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    11a7:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    11ab:	b8 00 00 00 00       	mov    $0x0,%eax
    11b0:	ff d2                	callq  *%rdx
    11b2:	b8 00 00 00 00       	mov    $0x0,%eax
    11b7:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    11bb:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    11c2:	00 00 
    11c4:	74 05                	je     11cb <main+0x76>
    11c6:	e8 65 fe ff ff       	callq  1030 <__stack_chk_fail@plt>
    11cb:	c9                   	leaveq 
    11cc:	c3                   	retq   

00000000000011cd <init>:
    11cd:	55                   	push   %rbp
    11ce:	48 89 e5             	mov    %rsp,%rbp
    11d1:	48 8b 05 38 2e 00 00 	mov    0x2e38(%rip),%rax        # 4010 <stdout@@GLIBC_2.2.5>
    11d8:	b9 00 00 00 00       	mov    $0x0,%ecx
    11dd:	ba 02 00 00 00       	mov    $0x2,%edx
    11e2:	be 00 00 00 00       	mov    $0x0,%esi
    11e7:	48 89 c7             	mov    %rax,%rdi
    11ea:	e8 51 fe ff ff       	callq  1040 <setvbuf@plt>
    11ef:	48 8b 05 2a 2e 00 00 	mov    0x2e2a(%rip),%rax        # 4020 <stdin@@GLIBC_2.2.5>
    11f6:	b9 00 00 00 00       	mov    $0x0,%ecx
    11fb:	ba 01 00 00 00       	mov    $0x1,%edx
    1200:	be 00 00 00 00       	mov    $0x0,%esi
    1205:	48 89 c7             	mov    %rax,%rdi
    1208:	e8 33 fe ff ff       	callq  1040 <setvbuf@plt>
    120d:	48 8b 05 c4 2d 00 00 	mov    0x2dc4(%rip),%rax        # 3fd8 <printf@GLIBC_2.2.5>
    1214:	48 89 c6             	mov    %rax,%rsi
    1217:	48 8d 3d f9 0d 00 00 	lea    0xdf9(%rip),%rdi        # 2017 <_IO_stdin_used+0x17>
    121e:	b8 00 00 00 00       	mov    $0x0,%eax
    1223:	e8 38 fe ff ff       	callq  1060 <printf@plt>
    1228:	90                   	nop
    1229:	5d                   	pop    %rbp
    122a:	c3                   	retq   
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <__libc_csu_init>:
    1230:	41 57                	push   %r15
    1232:	49 89 d7             	mov    %rdx,%r15
    1235:	41 56                	push   %r14
    1237:	49 89 f6             	mov    %rsi,%r14
    123a:	41 55                	push   %r13
    123c:	41 89 fd             	mov    %edi,%r13d
    123f:	41 54                	push   %r12
    1241:	4c 8d 25 58 2b 00 00 	lea    0x2b58(%rip),%r12        # 3da0 <__frame_dummy_init_array_entry>
    1248:	55                   	push   %rbp
    1249:	48 8d 2d 58 2b 00 00 	lea    0x2b58(%rip),%rbp        # 3da8 <__init_array_end>
    1250:	53                   	push   %rbx
    1251:	4c 29 e5             	sub    %r12,%rbp
    1254:	48 83 ec 08          	sub    $0x8,%rsp
    1258:	e8 a3 fd ff ff       	callq  1000 <_init>
    125d:	48 c1 fd 03          	sar    $0x3,%rbp
    1261:	74 1b                	je     127e <__libc_csu_init+0x4e>
    1263:	31 db                	xor    %ebx,%ebx
    1265:	0f 1f 00             	nopl   (%rax)
    1268:	4c 89 fa             	mov    %r15,%rdx
    126b:	4c 89 f6             	mov    %r14,%rsi
    126e:	44 89 ef             	mov    %r13d,%edi
    1271:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    1275:	48 83 c3 01          	add    $0x1,%rbx
    1279:	48 39 dd             	cmp    %rbx,%rbp
    127c:	75 ea                	jne    1268 <__libc_csu_init+0x38>
    127e:	48 83 c4 08          	add    $0x8,%rsp
    1282:	5b                   	pop    %rbx
    1283:	5d                   	pop    %rbp
    1284:	41 5c                	pop    %r12
    1286:	41 5d                	pop    %r13
    1288:	41 5e                	pop    %r14
    128a:	41 5f                	pop    %r15
    128c:	c3                   	retq   
    128d:	0f 1f 00             	nopl   (%rax)

0000000000001290 <__libc_csu_fini>:
    1290:	c3                   	retq   

Disassembly of section .fini:

0000000000001294 <_fini>:
    1294:	48 83 ec 08          	sub    $0x8,%rsp
    1298:	48 83 c4 08          	add    $0x8,%rsp
    129c:	c3                   	retq   
