
kernel:     file format elf32-i386


Disassembly of section .text:

c0030000 <start>:
c0030000:	fa                   	cli    
c0030001:	0f 01 15 4c 00 03 00 	lgdtl  0x3004c
c0030008:	0f 20 c0             	mov    %cr0,%eax
c003000b:	83 c8 01             	or     $0x1,%eax
c003000e:	0f 22 c0             	mov    %eax,%cr0
c0030011:	ea 18 00 03 00 08 00 	ljmp   $0x8,$0x30018

c0030018 <start_cond>:
c0030018:	66 b8 10 00          	mov    $0x10,%ax
c003001c:	8e d8                	mov    %eax,%ds
c003001e:	8e c0                	mov    %eax,%es
c0030020:	8e d0                	mov    %eax,%ss
c0030022:	bd 00 00 00 00       	mov    $0x0,%ebp
c0030027:	bc 00 00 00 08       	mov    $0x8000000,%esp
c003002c:	83 ec 10             	sub    $0x10,%esp
c003002f:	e9 51 18 00 00       	jmp    c0031885 <init>

c0030034 <gdt>:
	...
c003003c:	ff                   	(bad)  
c003003d:	ff 00                	incl   (%eax)
c003003f:	00 00                	add    %al,(%eax)
c0030041:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
c0030048:	00                   	.byte 0x0
c0030049:	92                   	xchg   %eax,%edx
c003004a:	cf                   	iret   
	...

c003004c <gdtdesc>:
c003004c:	17                   	pop    %ss
c003004d:	00 34 00             	add    %dh,(%eax,%eax,1)
c0030050:	03 00                	add    (%eax),%eax

c0030052 <vec0>:
c0030052:	6a 00                	push   $0x0
c0030054:	6a 00                	push   $0x0
c0030056:	eb 72                	jmp    c00300ca <asm_do_irq>

c0030058 <vec1>:
c0030058:	6a 00                	push   $0x0
c003005a:	6a 01                	push   $0x1
c003005c:	eb 6c                	jmp    c00300ca <asm_do_irq>

c003005e <vec2>:
c003005e:	6a 00                	push   $0x0
c0030060:	6a 02                	push   $0x2
c0030062:	eb 66                	jmp    c00300ca <asm_do_irq>

c0030064 <vec3>:
c0030064:	6a 00                	push   $0x0
c0030066:	6a 03                	push   $0x3
c0030068:	eb 60                	jmp    c00300ca <asm_do_irq>

c003006a <vec4>:
c003006a:	6a 00                	push   $0x0
c003006c:	6a 04                	push   $0x4
c003006e:	eb 5a                	jmp    c00300ca <asm_do_irq>

c0030070 <vec5>:
c0030070:	6a 00                	push   $0x0
c0030072:	6a 05                	push   $0x5
c0030074:	eb 54                	jmp    c00300ca <asm_do_irq>

c0030076 <vec6>:
c0030076:	6a 00                	push   $0x0
c0030078:	6a 06                	push   $0x6
c003007a:	eb 4e                	jmp    c00300ca <asm_do_irq>

c003007c <vec7>:
c003007c:	6a 00                	push   $0x0
c003007e:	6a 07                	push   $0x7
c0030080:	eb 48                	jmp    c00300ca <asm_do_irq>

c0030082 <vec8>:
c0030082:	6a 08                	push   $0x8
c0030084:	eb 44                	jmp    c00300ca <asm_do_irq>

c0030086 <vec9>:
c0030086:	6a 00                	push   $0x0
c0030088:	6a 09                	push   $0x9
c003008a:	eb 3e                	jmp    c00300ca <asm_do_irq>

c003008c <vec10>:
c003008c:	6a 0a                	push   $0xa
c003008e:	eb 3a                	jmp    c00300ca <asm_do_irq>

c0030090 <vec11>:
c0030090:	6a 0b                	push   $0xb
c0030092:	eb 36                	jmp    c00300ca <asm_do_irq>

c0030094 <vec12>:
c0030094:	6a 0c                	push   $0xc
c0030096:	eb 32                	jmp    c00300ca <asm_do_irq>

c0030098 <vec13>:
c0030098:	6a 0d                	push   $0xd
c003009a:	eb 2e                	jmp    c00300ca <asm_do_irq>

c003009c <vec14>:
c003009c:	6a 0e                	push   $0xe
c003009e:	eb 2a                	jmp    c00300ca <asm_do_irq>

c00300a0 <vecsys>:
c00300a0:	6a 00                	push   $0x0
c00300a2:	68 80 00 00 00       	push   $0x80
c00300a7:	eb 21                	jmp    c00300ca <asm_do_irq>

c00300a9 <irq0>:
c00300a9:	6a 00                	push   $0x0
c00300ab:	68 e8 03 00 00       	push   $0x3e8
c00300b0:	eb 18                	jmp    c00300ca <asm_do_irq>

c00300b2 <irq1>:
c00300b2:	6a 00                	push   $0x0
c00300b4:	68 e9 03 00 00       	push   $0x3e9
c00300b9:	eb 0f                	jmp    c00300ca <asm_do_irq>

c00300bb <irq14>:
c00300bb:	6a 00                	push   $0x0
c00300bd:	68 f6 03 00 00       	push   $0x3f6
c00300c2:	eb 06                	jmp    c00300ca <asm_do_irq>

c00300c4 <irq_empty>:
c00300c4:	6a 00                	push   $0x0
c00300c6:	6a ff                	push   $0xffffffff
c00300c8:	eb 00                	jmp    c00300ca <asm_do_irq>

c00300ca <asm_do_irq>:
c00300ca:	60                   	pusha  
c00300cb:	54                   	push   %esp
c00300cc:	e8 8b 16 00 00       	call   c003175c <irq_handle>
c00300d1:	83 c4 04             	add    $0x4,%esp
c00300d4:	61                   	popa   
c00300d5:	83 c4 08             	add    $0x8,%esp
c00300d8:	cf                   	iret   

c00300d9 <sti>:
c00300d9:	55                   	push   %ebp
c00300da:	89 e5                	mov    %esp,%ebp
c00300dc:	e8 77 02 00 00       	call   c0030358 <__x86.get_pc_thunk.ax>
c00300e1:	05 1f bf 00 00       	add    $0xbf1f,%eax
c00300e6:	fb                   	sti    
c00300e7:	90                   	nop
c00300e8:	5d                   	pop    %ebp
c00300e9:	c3                   	ret    

c00300ea <cli>:
c00300ea:	55                   	push   %ebp
c00300eb:	89 e5                	mov    %esp,%ebp
c00300ed:	e8 66 02 00 00       	call   c0030358 <__x86.get_pc_thunk.ax>
c00300f2:	05 0e bf 00 00       	add    $0xbf0e,%eax
c00300f7:	fa                   	cli    
c00300f8:	90                   	nop
c00300f9:	5d                   	pop    %ebp
c00300fa:	c3                   	ret    

c00300fb <sys_brk>:
c00300fb:	55                   	push   %ebp
c00300fc:	89 e5                	mov    %esp,%ebp
c00300fe:	53                   	push   %ebx
c00300ff:	83 ec 04             	sub    $0x4,%esp
c0030102:	e8 51 02 00 00       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030107:	05 f9 be 00 00       	add    $0xbef9,%eax
c003010c:	8b 55 08             	mov    0x8(%ebp),%edx
c003010f:	8b 52 10             	mov    0x10(%edx),%edx
c0030112:	83 ec 0c             	sub    $0xc,%esp
c0030115:	52                   	push   %edx
c0030116:	89 c3                	mov    %eax,%ebx
c0030118:	e8 8a 1c 00 00       	call   c0031da7 <mm_brk>
c003011d:	83 c4 10             	add    $0x10,%esp
c0030120:	8b 45 08             	mov    0x8(%ebp),%eax
c0030123:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c003012a:	90                   	nop
c003012b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003012e:	c9                   	leave  
c003012f:	c3                   	ret    

c0030130 <sys_open>:
c0030130:	55                   	push   %ebp
c0030131:	89 e5                	mov    %esp,%ebp
c0030133:	53                   	push   %ebx
c0030134:	83 ec 04             	sub    $0x4,%esp
c0030137:	e8 1c 02 00 00       	call   c0030358 <__x86.get_pc_thunk.ax>
c003013c:	05 c4 be 00 00       	add    $0xbec4,%eax
c0030141:	8b 55 08             	mov    0x8(%ebp),%edx
c0030144:	8b 52 18             	mov    0x18(%edx),%edx
c0030147:	89 d1                	mov    %edx,%ecx
c0030149:	8b 55 08             	mov    0x8(%ebp),%edx
c003014c:	8b 52 10             	mov    0x10(%edx),%edx
c003014f:	83 ec 08             	sub    $0x8,%esp
c0030152:	51                   	push   %ecx
c0030153:	52                   	push   %edx
c0030154:	89 c3                	mov    %eax,%ebx
c0030156:	e8 05 02 00 00       	call   c0030360 <fs_open>
c003015b:	83 c4 10             	add    $0x10,%esp
c003015e:	89 c2                	mov    %eax,%edx
c0030160:	8b 45 08             	mov    0x8(%ebp),%eax
c0030163:	89 50 1c             	mov    %edx,0x1c(%eax)
c0030166:	90                   	nop
c0030167:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003016a:	c9                   	leave  
c003016b:	c3                   	ret    

c003016c <sys_read>:
c003016c:	55                   	push   %ebp
c003016d:	89 e5                	mov    %esp,%ebp
c003016f:	53                   	push   %ebx
c0030170:	83 ec 04             	sub    $0x4,%esp
c0030173:	e8 e0 01 00 00       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030178:	05 88 be 00 00       	add    $0xbe88,%eax
c003017d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030180:	8b 52 14             	mov    0x14(%edx),%edx
c0030183:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0030186:	8b 49 18             	mov    0x18(%ecx),%ecx
c0030189:	89 cb                	mov    %ecx,%ebx
c003018b:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003018e:	8b 49 10             	mov    0x10(%ecx),%ecx
c0030191:	83 ec 04             	sub    $0x4,%esp
c0030194:	52                   	push   %edx
c0030195:	53                   	push   %ebx
c0030196:	51                   	push   %ecx
c0030197:	89 c3                	mov    %eax,%ebx
c0030199:	e8 b0 02 00 00       	call   c003044e <fs_read>
c003019e:	83 c4 10             	add    $0x10,%esp
c00301a1:	89 c2                	mov    %eax,%edx
c00301a3:	8b 45 08             	mov    0x8(%ebp),%eax
c00301a6:	89 50 1c             	mov    %edx,0x1c(%eax)
c00301a9:	90                   	nop
c00301aa:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00301ad:	c9                   	leave  
c00301ae:	c3                   	ret    

c00301af <sys_write>:
c00301af:	55                   	push   %ebp
c00301b0:	89 e5                	mov    %esp,%ebp
c00301b2:	53                   	push   %ebx
c00301b3:	83 ec 04             	sub    $0x4,%esp
c00301b6:	e8 9d 01 00 00       	call   c0030358 <__x86.get_pc_thunk.ax>
c00301bb:	05 45 be 00 00       	add    $0xbe45,%eax
c00301c0:	8b 55 08             	mov    0x8(%ebp),%edx
c00301c3:	8b 52 14             	mov    0x14(%edx),%edx
c00301c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00301c9:	8b 49 18             	mov    0x18(%ecx),%ecx
c00301cc:	89 cb                	mov    %ecx,%ebx
c00301ce:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00301d1:	8b 49 10             	mov    0x10(%ecx),%ecx
c00301d4:	83 ec 04             	sub    $0x4,%esp
c00301d7:	52                   	push   %edx
c00301d8:	53                   	push   %ebx
c00301d9:	51                   	push   %ecx
c00301da:	89 c3                	mov    %eax,%ebx
c00301dc:	e8 5d 04 00 00       	call   c003063e <fs_write>
c00301e1:	83 c4 10             	add    $0x10,%esp
c00301e4:	89 c2                	mov    %eax,%edx
c00301e6:	8b 45 08             	mov    0x8(%ebp),%eax
c00301e9:	89 50 1c             	mov    %edx,0x1c(%eax)
c00301ec:	90                   	nop
c00301ed:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00301f0:	c9                   	leave  
c00301f1:	c3                   	ret    

c00301f2 <sys_lseek>:
c00301f2:	55                   	push   %ebp
c00301f3:	89 e5                	mov    %esp,%ebp
c00301f5:	53                   	push   %ebx
c00301f6:	83 ec 04             	sub    $0x4,%esp
c00301f9:	e8 5a 01 00 00       	call   c0030358 <__x86.get_pc_thunk.ax>
c00301fe:	05 02 be 00 00       	add    $0xbe02,%eax
c0030203:	8b 55 08             	mov    0x8(%ebp),%edx
c0030206:	8b 52 14             	mov    0x14(%edx),%edx
c0030209:	89 d3                	mov    %edx,%ebx
c003020b:	8b 55 08             	mov    0x8(%ebp),%edx
c003020e:	8b 52 18             	mov    0x18(%edx),%edx
c0030211:	89 d1                	mov    %edx,%ecx
c0030213:	8b 55 08             	mov    0x8(%ebp),%edx
c0030216:	8b 52 10             	mov    0x10(%edx),%edx
c0030219:	83 ec 04             	sub    $0x4,%esp
c003021c:	53                   	push   %ebx
c003021d:	51                   	push   %ecx
c003021e:	52                   	push   %edx
c003021f:	89 c3                	mov    %eax,%ebx
c0030221:	e8 94 04 00 00       	call   c00306ba <fs_lseek>
c0030226:	83 c4 10             	add    $0x10,%esp
c0030229:	89 c2                	mov    %eax,%edx
c003022b:	8b 45 08             	mov    0x8(%ebp),%eax
c003022e:	89 50 1c             	mov    %edx,0x1c(%eax)
c0030231:	90                   	nop
c0030232:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030235:	c9                   	leave  
c0030236:	c3                   	ret    

c0030237 <sys_close>:
c0030237:	55                   	push   %ebp
c0030238:	89 e5                	mov    %esp,%ebp
c003023a:	53                   	push   %ebx
c003023b:	83 ec 04             	sub    $0x4,%esp
c003023e:	e8 15 01 00 00       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030243:	05 bd bd 00 00       	add    $0xbdbd,%eax
c0030248:	8b 55 08             	mov    0x8(%ebp),%edx
c003024b:	8b 52 10             	mov    0x10(%edx),%edx
c003024e:	83 ec 0c             	sub    $0xc,%esp
c0030251:	52                   	push   %edx
c0030252:	89 c3                	mov    %eax,%ebx
c0030254:	e8 2c 06 00 00       	call   c0030885 <fs_close>
c0030259:	83 c4 10             	add    $0x10,%esp
c003025c:	89 c2                	mov    %eax,%edx
c003025e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030261:	89 50 1c             	mov    %edx,0x1c(%eax)
c0030264:	90                   	nop
c0030265:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030268:	c9                   	leave  
c0030269:	c3                   	ret    

c003026a <do_syscall>:
c003026a:	55                   	push   %ebp
c003026b:	89 e5                	mov    %esp,%ebp
c003026d:	53                   	push   %ebx
c003026e:	83 ec 04             	sub    $0x4,%esp
c0030271:	e8 e6 00 00 00       	call   c003035c <__x86.get_pc_thunk.bx>
c0030276:	81 c3 8a bd 00 00    	add    $0xbd8a,%ebx
c003027c:	8b 45 08             	mov    0x8(%ebp),%eax
c003027f:	8b 40 1c             	mov    0x1c(%eax),%eax
c0030282:	83 f8 2d             	cmp    $0x2d,%eax
c0030285:	0f 87 98 00 00 00    	ja     c0030323 <.L10>
c003028b:	c1 e0 02             	shl    $0x2,%eax
c003028e:	8b 84 18 90 cb ff ff 	mov    -0x3470(%eax,%ebx,1),%eax
c0030295:	01 d8                	add    %ebx,%eax
c0030297:	ff e0                	jmp    *%eax

c0030299 <.L11>:
c0030299:	e8 4c fe ff ff       	call   c00300ea <cli>
c003029e:	8b 45 08             	mov    0x8(%ebp),%eax
c00302a1:	8b 40 18             	mov    0x18(%eax),%eax
c00302a4:	89 c2                	mov    %eax,%edx
c00302a6:	8b 45 08             	mov    0x8(%ebp),%eax
c00302a9:	8b 40 10             	mov    0x10(%eax),%eax
c00302ac:	83 ec 08             	sub    $0x8,%esp
c00302af:	52                   	push   %edx
c00302b0:	50                   	push   %eax
c00302b1:	e8 d9 13 00 00       	call   c003168f <add_irq_handle>
c00302b6:	83 c4 10             	add    $0x10,%esp
c00302b9:	e8 1b fe ff ff       	call   c00300d9 <sti>
c00302be:	e9 8f 00 00 00       	jmp    c0030352 <.L10+0x2f>

c00302c3 <.L18>:
c00302c3:	83 ec 0c             	sub    $0xc,%esp
c00302c6:	ff 75 08             	pushl  0x8(%ebp)
c00302c9:	e8 2d fe ff ff       	call   c00300fb <sys_brk>
c00302ce:	83 c4 10             	add    $0x10,%esp
c00302d1:	eb 7f                	jmp    c0030352 <.L10+0x2f>

c00302d3 <.L15>:
c00302d3:	83 ec 0c             	sub    $0xc,%esp
c00302d6:	ff 75 08             	pushl  0x8(%ebp)
c00302d9:	e8 52 fe ff ff       	call   c0030130 <sys_open>
c00302de:	83 c4 10             	add    $0x10,%esp
c00302e1:	eb 6f                	jmp    c0030352 <.L10+0x2f>

c00302e3 <.L13>:
c00302e3:	83 ec 0c             	sub    $0xc,%esp
c00302e6:	ff 75 08             	pushl  0x8(%ebp)
c00302e9:	e8 7e fe ff ff       	call   c003016c <sys_read>
c00302ee:	83 c4 10             	add    $0x10,%esp
c00302f1:	eb 5f                	jmp    c0030352 <.L10+0x2f>

c00302f3 <.L14>:
c00302f3:	83 ec 0c             	sub    $0xc,%esp
c00302f6:	ff 75 08             	pushl  0x8(%ebp)
c00302f9:	e8 b1 fe ff ff       	call   c00301af <sys_write>
c00302fe:	83 c4 10             	add    $0x10,%esp
c0030301:	eb 4f                	jmp    c0030352 <.L10+0x2f>

c0030303 <.L17>:
c0030303:	83 ec 0c             	sub    $0xc,%esp
c0030306:	ff 75 08             	pushl  0x8(%ebp)
c0030309:	e8 e4 fe ff ff       	call   c00301f2 <sys_lseek>
c003030e:	83 c4 10             	add    $0x10,%esp
c0030311:	eb 3f                	jmp    c0030352 <.L10+0x2f>

c0030313 <.L16>:
c0030313:	83 ec 0c             	sub    $0xc,%esp
c0030316:	ff 75 08             	pushl  0x8(%ebp)
c0030319:	e8 19 ff ff ff       	call   c0030237 <sys_close>
c003031e:	83 c4 10             	add    $0x10,%esp
c0030321:	eb 2f                	jmp    c0030352 <.L10+0x2f>

c0030323 <.L10>:
c0030323:	8b 45 08             	mov    0x8(%ebp),%eax
c0030326:	8b 40 1c             	mov    0x1c(%eax),%eax
c0030329:	83 ec 0c             	sub    $0xc,%esp
c003032c:	50                   	push   %eax
c003032d:	8d 83 48 cc ff ff    	lea    -0x33b8(%ebx),%eax
c0030333:	50                   	push   %eax
c0030334:	6a 35                	push   $0x35
c0030336:	8d 83 20 cb ff ff    	lea    -0x34e0(%ebx),%eax
c003033c:	50                   	push   %eax
c003033d:	8d 83 3c cb ff ff    	lea    -0x34c4(%ebx),%eax
c0030343:	50                   	push   %eax
c0030344:	e8 71 1b 00 00       	call   c0031eba <printk>
c0030349:	83 c4 20             	add    $0x20,%esp
c003034c:	b8 01 00 00 00       	mov    $0x1,%eax
c0030351:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)

c0030358 <__x86.get_pc_thunk.ax>:
c0030358:	8b 04 24             	mov    (%esp),%eax
c003035b:	c3                   	ret    

c003035c <__x86.get_pc_thunk.bx>:
c003035c:	8b 1c 24             	mov    (%esp),%ebx
c003035f:	c3                   	ret    

c0030360 <fs_open>:
c0030360:	55                   	push   %ebp
c0030361:	89 e5                	mov    %esp,%ebp
c0030363:	56                   	push   %esi
c0030364:	53                   	push   %ebx
c0030365:	83 ec 10             	sub    $0x10,%esp
c0030368:	e8 ef ff ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c003036d:	81 c3 93 bc 00 00    	add    $0xbc93,%ebx
c0030373:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003037a:	eb 2c                	jmp    c00303a8 <fs_open+0x48>
c003037c:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003037f:	8d 8b c0 fe ff ff    	lea    -0x140(%ebx),%ecx
c0030385:	89 d0                	mov    %edx,%eax
c0030387:	01 c0                	add    %eax,%eax
c0030389:	01 d0                	add    %edx,%eax
c003038b:	c1 e0 02             	shl    $0x2,%eax
c003038e:	01 c8                	add    %ecx,%eax
c0030390:	8b 00                	mov    (%eax),%eax
c0030392:	83 ec 08             	sub    $0x8,%esp
c0030395:	ff 75 08             	pushl  0x8(%ebp)
c0030398:	50                   	push   %eax
c0030399:	e8 a2 1f 00 00       	call   c0032340 <strcmp>
c003039e:	83 c4 10             	add    $0x10,%esp
c00303a1:	85 c0                	test   %eax,%eax
c00303a3:	74 0d                	je     c00303b2 <fs_open+0x52>
c00303a5:	ff 45 f4             	incl   -0xc(%ebp)
c00303a8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00303ab:	83 f8 18             	cmp    $0x18,%eax
c00303ae:	76 cc                	jbe    c003037c <fs_open+0x1c>
c00303b0:	eb 01                	jmp    c00303b3 <fs_open+0x53>
c00303b2:	90                   	nop
c00303b3:	83 7d f4 19          	cmpl   $0x19,-0xc(%ebp)
c00303b7:	75 2f                	jne    c00303e8 <fs_open+0x88>
c00303b9:	83 ec 0c             	sub    $0xc,%esp
c00303bc:	8d 83 17 cd ff ff    	lea    -0x32e9(%ebx),%eax
c00303c2:	50                   	push   %eax
c00303c3:	8d 83 f4 cd ff ff    	lea    -0x320c(%ebx),%eax
c00303c9:	50                   	push   %eax
c00303ca:	6a 31                	push   $0x31
c00303cc:	8d 83 25 cd ff ff    	lea    -0x32db(%ebx),%eax
c00303d2:	50                   	push   %eax
c00303d3:	8d 83 34 cd ff ff    	lea    -0x32cc(%ebx),%eax
c00303d9:	50                   	push   %eax
c00303da:	e8 db 1a 00 00       	call   c0031eba <printk>
c00303df:	83 c4 20             	add    $0x20,%esp
c00303e2:	b8 01 00 00 00       	mov    $0x1,%eax
c00303e7:	82 8b 45 f4 8d 48 03 	orb    $0x3,0x488df445(%ebx)
c00303ee:	c7 c2 60 f0 06 c0    	mov    $0xc006f060,%edx
c00303f4:	89 c8                	mov    %ecx,%eax
c00303f6:	01 c0                	add    %eax,%eax
c00303f8:	01 c8                	add    %ecx,%eax
c00303fa:	c1 e0 02             	shl    $0x2,%eax
c00303fd:	01 d0                	add    %edx,%eax
c00303ff:	c6 00 01             	movb   $0x1,(%eax)
c0030402:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030405:	8d 70 03             	lea    0x3(%eax),%esi
c0030408:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003040b:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c0030411:	89 f0                	mov    %esi,%eax
c0030413:	01 c0                	add    %eax,%eax
c0030415:	01 f0                	add    %esi,%eax
c0030417:	c1 e0 02             	shl    $0x2,%eax
c003041a:	01 c8                	add    %ecx,%eax
c003041c:	83 c0 04             	add    $0x4,%eax
c003041f:	89 10                	mov    %edx,(%eax)
c0030421:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030424:	8d 48 03             	lea    0x3(%eax),%ecx
c0030427:	c7 c2 60 f0 06 c0    	mov    $0xc006f060,%edx
c003042d:	89 c8                	mov    %ecx,%eax
c003042f:	01 c0                	add    %eax,%eax
c0030431:	01 c8                	add    %ecx,%eax
c0030433:	c1 e0 02             	shl    $0x2,%eax
c0030436:	01 d0                	add    %edx,%eax
c0030438:	83 c0 08             	add    $0x8,%eax
c003043b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0030441:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030444:	83 c0 03             	add    $0x3,%eax
c0030447:	8d 65 f8             	lea    -0x8(%ebp),%esp
c003044a:	5b                   	pop    %ebx
c003044b:	5e                   	pop    %esi
c003044c:	5d                   	pop    %ebp
c003044d:	c3                   	ret    

c003044e <fs_read>:
c003044e:	55                   	push   %ebp
c003044f:	89 e5                	mov    %esp,%ebp
c0030451:	57                   	push   %edi
c0030452:	56                   	push   %esi
c0030453:	53                   	push   %ebx
c0030454:	83 ec 1c             	sub    $0x1c,%esp
c0030457:	e8 00 ff ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c003045c:	81 c3 a4 bb 00 00    	add    $0xbba4,%ebx
c0030462:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0030466:	7f 2f                	jg     c0030497 <fs_read+0x49>
c0030468:	83 ec 0c             	sub    $0xc,%esp
c003046b:	8d 83 7e cd ff ff    	lea    -0x3282(%ebx),%eax
c0030471:	50                   	push   %eax
c0030472:	8d 83 fc cd ff ff    	lea    -0x3204(%ebx),%eax
c0030478:	50                   	push   %eax
c0030479:	6a 39                	push   $0x39
c003047b:	8d 83 25 cd ff ff    	lea    -0x32db(%ebx),%eax
c0030481:	50                   	push   %eax
c0030482:	8d 83 34 cd ff ff    	lea    -0x32cc(%ebx),%eax
c0030488:	50                   	push   %eax
c0030489:	e8 2c 1a 00 00       	call   c0031eba <printk>
c003048e:	83 c4 20             	add    $0x20,%esp
c0030491:	b8 01 00 00 00       	mov    $0x1,%eax
c0030496:	82 c7 c1             	add    $0xc1,%bh
c0030499:	60                   	pusha  
c003049a:	f0 06                	lock push %es
c003049c:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c00304a3:	c0 01 d0             	rolb   $0xd0,(%ecx)
c00304a6:	c1 e0 02             	shl    $0x2,%eax
c00304a9:	01 c8                	add    %ecx,%eax
c00304ab:	8a 00                	mov    (%eax),%al
c00304ad:	84 c0                	test   %al,%al
c00304af:	75 2f                	jne    c00304e0 <fs_read+0x92>
c00304b1:	83 ec 0c             	sub    $0xc,%esp
c00304b4:	8d 83 85 cd ff ff    	lea    -0x327b(%ebx),%eax
c00304ba:	50                   	push   %eax
c00304bb:	8d 83 fc cd ff ff    	lea    -0x3204(%ebx),%eax
c00304c1:	50                   	push   %eax
c00304c2:	6a 3a                	push   $0x3a
c00304c4:	8d 83 25 cd ff ff    	lea    -0x32db(%ebx),%eax
c00304ca:	50                   	push   %eax
c00304cb:	8d 83 34 cd ff ff    	lea    -0x32cc(%ebx),%eax
c00304d1:	50                   	push   %eax
c00304d2:	e8 e3 19 00 00       	call   c0031eba <printk>
c00304d7:	83 c4 20             	add    $0x20,%esp
c00304da:	b8 01 00 00 00       	mov    $0x1,%eax
c00304df:	82 c7 c1             	add    $0xc1,%bh
c00304e2:	60                   	pusha  
c00304e3:	f0 06                	lock push %es
c00304e5:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c00304ec:	c0 01 d0             	rolb   $0xd0,(%ecx)
c00304ef:	c1 e0 02             	shl    $0x2,%eax
c00304f2:	01 c8                	add    %ecx,%eax
c00304f4:	83 c0 04             	add    $0x4,%eax
c00304f7:	8b 00                	mov    (%eax),%eax
c00304f9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00304fc:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00304ff:	8d 8b c4 fe ff ff    	lea    -0x13c(%ebx),%ecx
c0030505:	89 d0                	mov    %edx,%eax
c0030507:	01 c0                	add    %eax,%eax
c0030509:	01 d0                	add    %edx,%eax
c003050b:	c1 e0 02             	shl    $0x2,%eax
c003050e:	01 c8                	add    %ecx,%eax
c0030510:	8b 08                	mov    (%eax),%ecx
c0030512:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c0030518:	8b 55 08             	mov    0x8(%ebp),%edx
c003051b:	89 d0                	mov    %edx,%eax
c003051d:	01 c0                	add    %eax,%eax
c003051f:	01 d0                	add    %edx,%eax
c0030521:	c1 e0 02             	shl    $0x2,%eax
c0030524:	01 f0                	add    %esi,%eax
c0030526:	83 c0 08             	add    $0x8,%eax
c0030529:	8b 00                	mov    (%eax),%eax
c003052b:	29 c1                	sub    %eax,%ecx
c003052d:	89 c8                	mov    %ecx,%eax
c003052f:	8b 55 10             	mov    0x10(%ebp),%edx
c0030532:	39 d0                	cmp    %edx,%eax
c0030534:	76 02                	jbe    c0030538 <fs_read+0xea>
c0030536:	89 d0                	mov    %edx,%eax
c0030538:	89 45 10             	mov    %eax,0x10(%ebp)
c003053b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003053e:	8d 8b c8 fe ff ff    	lea    -0x138(%ebx),%ecx
c0030544:	89 d0                	mov    %edx,%eax
c0030546:	01 c0                	add    %eax,%eax
c0030548:	01 d0                	add    %edx,%eax
c003054a:	c1 e0 02             	shl    $0x2,%eax
c003054d:	01 c8                	add    %ecx,%eax
c003054f:	8b 08                	mov    (%eax),%ecx
c0030551:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0030554:	8d b3 c4 fe ff ff    	lea    -0x13c(%ebx),%esi
c003055a:	89 d0                	mov    %edx,%eax
c003055c:	01 c0                	add    %eax,%eax
c003055e:	01 d0                	add    %edx,%eax
c0030560:	c1 e0 02             	shl    $0x2,%eax
c0030563:	01 f0                	add    %esi,%eax
c0030565:	8b 10                	mov    (%eax),%edx
c0030567:	c7 c7 60 f0 06 c0    	mov    $0xc006f060,%edi
c003056d:	8b 75 08             	mov    0x8(%ebp),%esi
c0030570:	89 f0                	mov    %esi,%eax
c0030572:	01 c0                	add    %eax,%eax
c0030574:	01 f0                	add    %esi,%eax
c0030576:	c1 e0 02             	shl    $0x2,%eax
c0030579:	01 f8                	add    %edi,%eax
c003057b:	83 c0 08             	add    $0x8,%eax
c003057e:	8b 00                	mov    (%eax),%eax
c0030580:	83 ec 0c             	sub    $0xc,%esp
c0030583:	51                   	push   %ecx
c0030584:	52                   	push   %edx
c0030585:	50                   	push   %eax
c0030586:	ff 75 10             	pushl  0x10(%ebp)
c0030589:	ff 75 e4             	pushl  -0x1c(%ebp)
c003058c:	8d 83 fc cd ff ff    	lea    -0x3204(%ebx),%eax
c0030592:	50                   	push   %eax
c0030593:	6a 3e                	push   $0x3e
c0030595:	8d 83 25 cd ff ff    	lea    -0x32db(%ebx),%eax
c003059b:	50                   	push   %eax
c003059c:	8d 83 94 cd ff ff    	lea    -0x326c(%ebx),%eax
c00305a2:	50                   	push   %eax
c00305a3:	e8 12 19 00 00       	call   c0031eba <printk>
c00305a8:	83 c4 30             	add    $0x30,%esp
c00305ab:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
c00305af:	75 07                	jne    c00305b8 <fs_read+0x16a>
c00305b1:	b8 00 00 00 00       	mov    $0x0,%eax
c00305b6:	eb 7e                	jmp    c0030636 <fs_read+0x1e8>
c00305b8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00305bb:	8d 8b c8 fe ff ff    	lea    -0x138(%ebx),%ecx
c00305c1:	89 d0                	mov    %edx,%eax
c00305c3:	01 c0                	add    %eax,%eax
c00305c5:	01 d0                	add    %edx,%eax
c00305c7:	c1 e0 02             	shl    $0x2,%eax
c00305ca:	01 c8                	add    %ecx,%eax
c00305cc:	8b 08                	mov    (%eax),%ecx
c00305ce:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c00305d4:	8b 55 08             	mov    0x8(%ebp),%edx
c00305d7:	89 d0                	mov    %edx,%eax
c00305d9:	01 c0                	add    %eax,%eax
c00305db:	01 d0                	add    %edx,%eax
c00305dd:	c1 e0 02             	shl    $0x2,%eax
c00305e0:	01 f0                	add    %esi,%eax
c00305e2:	83 c0 08             	add    $0x8,%eax
c00305e5:	8b 00                	mov    (%eax),%eax
c00305e7:	01 c8                	add    %ecx,%eax
c00305e9:	83 ec 04             	sub    $0x4,%esp
c00305ec:	ff 75 10             	pushl  0x10(%ebp)
c00305ef:	50                   	push   %eax
c00305f0:	ff 75 0c             	pushl  0xc(%ebp)
c00305f3:	e8 fe 06 00 00       	call   c0030cf6 <ide_read>
c00305f8:	83 c4 10             	add    $0x10,%esp
c00305fb:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c0030601:	8b 55 08             	mov    0x8(%ebp),%edx
c0030604:	89 d0                	mov    %edx,%eax
c0030606:	01 c0                	add    %eax,%eax
c0030608:	01 d0                	add    %edx,%eax
c003060a:	c1 e0 02             	shl    $0x2,%eax
c003060d:	01 c8                	add    %ecx,%eax
c003060f:	83 c0 08             	add    $0x8,%eax
c0030612:	8b 10                	mov    (%eax),%edx
c0030614:	8b 45 10             	mov    0x10(%ebp),%eax
c0030617:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c003061a:	c7 c3 60 f0 06 c0    	mov    $0xc006f060,%ebx
c0030620:	8b 55 08             	mov    0x8(%ebp),%edx
c0030623:	89 d0                	mov    %edx,%eax
c0030625:	01 c0                	add    %eax,%eax
c0030627:	01 d0                	add    %edx,%eax
c0030629:	c1 e0 02             	shl    $0x2,%eax
c003062c:	01 d8                	add    %ebx,%eax
c003062e:	83 c0 08             	add    $0x8,%eax
c0030631:	89 08                	mov    %ecx,(%eax)
c0030633:	8b 45 10             	mov    0x10(%ebp),%eax
c0030636:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0030639:	5b                   	pop    %ebx
c003063a:	5e                   	pop    %esi
c003063b:	5f                   	pop    %edi
c003063c:	5d                   	pop    %ebp
c003063d:	c3                   	ret    

c003063e <fs_write>:
c003063e:	55                   	push   %ebp
c003063f:	89 e5                	mov    %esp,%ebp
c0030641:	53                   	push   %ebx
c0030642:	83 ec 14             	sub    $0x14,%esp
c0030645:	e8 12 fd ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c003064a:	81 c3 b6 b9 00 00    	add    $0xb9b6,%ebx
c0030650:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0030654:	7e 2f                	jle    c0030685 <fs_write+0x47>
c0030656:	83 ec 0c             	sub    $0xc,%esp
c0030659:	8d 83 c3 cd ff ff    	lea    -0x323d(%ebx),%eax
c003065f:	50                   	push   %eax
c0030660:	8d 83 04 ce ff ff    	lea    -0x31fc(%ebx),%eax
c0030666:	50                   	push   %eax
c0030667:	6a 47                	push   $0x47
c0030669:	8d 83 25 cd ff ff    	lea    -0x32db(%ebx),%eax
c003066f:	50                   	push   %eax
c0030670:	8d 83 34 cd ff ff    	lea    -0x32cc(%ebx),%eax
c0030676:	50                   	push   %eax
c0030677:	e8 3e 18 00 00       	call   c0031eba <printk>
c003067c:	83 c4 20             	add    $0x20,%esp
c003067f:	b8 01 00 00 00       	mov    $0x1,%eax
c0030684:	82 c7 45             	add    $0x45,%bh
c0030687:	f4                   	hlt    
c0030688:	00 00                	add    %al,(%eax)
c003068a:	00 00                	add    %al,(%eax)
c003068c:	eb 1c                	jmp    c00306aa <fs_write+0x6c>
c003068e:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030691:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030694:	01 d0                	add    %edx,%eax
c0030696:	8a 00                	mov    (%eax),%al
c0030698:	0f be c0             	movsbl %al,%eax
c003069b:	83 ec 0c             	sub    $0xc,%esp
c003069e:	50                   	push   %eax
c003069f:	e8 f0 18 00 00       	call   c0031f94 <serial_printc>
c00306a4:	83 c4 10             	add    $0x10,%esp
c00306a7:	ff 45 f4             	incl   -0xc(%ebp)
c00306aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00306ad:	3b 45 10             	cmp    0x10(%ebp),%eax
c00306b0:	72 dc                	jb     c003068e <fs_write+0x50>
c00306b2:	8b 45 10             	mov    0x10(%ebp),%eax
c00306b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00306b8:	c9                   	leave  
c00306b9:	c3                   	ret    

c00306ba <fs_lseek>:
c00306ba:	55                   	push   %ebp
c00306bb:	89 e5                	mov    %esp,%ebp
c00306bd:	56                   	push   %esi
c00306be:	53                   	push   %ebx
c00306bf:	83 ec 10             	sub    $0x10,%esp
c00306c2:	e8 95 fc ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c00306c7:	81 c3 39 b9 00 00    	add    $0xb939,%ebx
c00306cd:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00306d1:	7f 2f                	jg     c0030702 <fs_lseek+0x48>
c00306d3:	83 ec 0c             	sub    $0xc,%esp
c00306d6:	8d 83 7e cd ff ff    	lea    -0x3282(%ebx),%eax
c00306dc:	50                   	push   %eax
c00306dd:	8d 83 10 ce ff ff    	lea    -0x31f0(%ebx),%eax
c00306e3:	50                   	push   %eax
c00306e4:	6a 56                	push   $0x56
c00306e6:	8d 83 25 cd ff ff    	lea    -0x32db(%ebx),%eax
c00306ec:	50                   	push   %eax
c00306ed:	8d 83 34 cd ff ff    	lea    -0x32cc(%ebx),%eax
c00306f3:	50                   	push   %eax
c00306f4:	e8 c1 17 00 00       	call   c0031eba <printk>
c00306f9:	83 c4 20             	add    $0x20,%esp
c00306fc:	b8 01 00 00 00       	mov    $0x1,%eax
c0030701:	82 c7 c1             	add    $0xc1,%bh
c0030704:	60                   	pusha  
c0030705:	f0 06                	lock push %es
c0030707:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c003070e:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0030711:	c1 e0 02             	shl    $0x2,%eax
c0030714:	01 c8                	add    %ecx,%eax
c0030716:	8a 00                	mov    (%eax),%al
c0030718:	84 c0                	test   %al,%al
c003071a:	75 2f                	jne    c003074b <fs_lseek+0x91>
c003071c:	83 ec 0c             	sub    $0xc,%esp
c003071f:	8d 83 85 cd ff ff    	lea    -0x327b(%ebx),%eax
c0030725:	50                   	push   %eax
c0030726:	8d 83 10 ce ff ff    	lea    -0x31f0(%ebx),%eax
c003072c:	50                   	push   %eax
c003072d:	6a 57                	push   $0x57
c003072f:	8d 83 25 cd ff ff    	lea    -0x32db(%ebx),%eax
c0030735:	50                   	push   %eax
c0030736:	8d 83 34 cd ff ff    	lea    -0x32cc(%ebx),%eax
c003073c:	50                   	push   %eax
c003073d:	e8 78 17 00 00       	call   c0031eba <printk>
c0030742:	83 c4 20             	add    $0x20,%esp
c0030745:	b8 01 00 00 00       	mov    $0x1,%eax
c003074a:	82 c7 c1             	add    $0xc1,%bh
c003074d:	60                   	pusha  
c003074e:	f0 06                	lock push %es
c0030750:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c0030757:	c0 01 d0             	rolb   $0xd0,(%ecx)
c003075a:	c1 e0 02             	shl    $0x2,%eax
c003075d:	01 c8                	add    %ecx,%eax
c003075f:	83 c0 04             	add    $0x4,%eax
c0030762:	8b 00                	mov    (%eax),%eax
c0030764:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030767:	8b 45 10             	mov    0x10(%ebp),%eax
c003076a:	83 f8 01             	cmp    $0x1,%eax
c003076d:	74 5b                	je     c00307ca <fs_lseek+0x110>
c003076f:	83 f8 02             	cmp    $0x2,%eax
c0030772:	74 25                	je     c0030799 <fs_lseek+0xdf>
c0030774:	85 c0                	test   %eax,%eax
c0030776:	74 02                	je     c003077a <fs_lseek+0xc0>
c0030778:	eb 51                	jmp    c00307cb <fs_lseek+0x111>
c003077a:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c0030780:	8b 55 08             	mov    0x8(%ebp),%edx
c0030783:	89 d0                	mov    %edx,%eax
c0030785:	01 c0                	add    %eax,%eax
c0030787:	01 d0                	add    %edx,%eax
c0030789:	c1 e0 02             	shl    $0x2,%eax
c003078c:	01 c8                	add    %ecx,%eax
c003078e:	83 c0 08             	add    $0x8,%eax
c0030791:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0030797:	eb 32                	jmp    c00307cb <fs_lseek+0x111>
c0030799:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003079c:	8d 8b c4 fe ff ff    	lea    -0x13c(%ebx),%ecx
c00307a2:	89 d0                	mov    %edx,%eax
c00307a4:	01 c0                	add    %eax,%eax
c00307a6:	01 d0                	add    %edx,%eax
c00307a8:	c1 e0 02             	shl    $0x2,%eax
c00307ab:	01 c8                	add    %ecx,%eax
c00307ad:	8b 10                	mov    (%eax),%edx
c00307af:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c00307b5:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00307b8:	89 c8                	mov    %ecx,%eax
c00307ba:	01 c0                	add    %eax,%eax
c00307bc:	01 c8                	add    %ecx,%eax
c00307be:	c1 e0 02             	shl    $0x2,%eax
c00307c1:	01 f0                	add    %esi,%eax
c00307c3:	83 c0 08             	add    $0x8,%eax
c00307c6:	89 10                	mov    %edx,(%eax)
c00307c8:	eb 01                	jmp    c00307cb <fs_lseek+0x111>
c00307ca:	90                   	nop
c00307cb:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c00307d1:	8b 55 08             	mov    0x8(%ebp),%edx
c00307d4:	89 d0                	mov    %edx,%eax
c00307d6:	01 c0                	add    %eax,%eax
c00307d8:	01 d0                	add    %edx,%eax
c00307da:	c1 e0 02             	shl    $0x2,%eax
c00307dd:	01 c8                	add    %ecx,%eax
c00307df:	83 c0 08             	add    $0x8,%eax
c00307e2:	8b 10                	mov    (%eax),%edx
c00307e4:	8b 45 0c             	mov    0xc(%ebp),%eax
c00307e7:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c00307ea:	c7 c6 60 f0 06 c0    	mov    $0xc006f060,%esi
c00307f0:	8b 55 08             	mov    0x8(%ebp),%edx
c00307f3:	89 d0                	mov    %edx,%eax
c00307f5:	01 c0                	add    %eax,%eax
c00307f7:	01 d0                	add    %edx,%eax
c00307f9:	c1 e0 02             	shl    $0x2,%eax
c00307fc:	01 f0                	add    %esi,%eax
c00307fe:	83 c0 08             	add    $0x8,%eax
c0030801:	89 08                	mov    %ecx,(%eax)
c0030803:	c7 c1 60 f0 06 c0    	mov    $0xc006f060,%ecx
c0030809:	8b 55 08             	mov    0x8(%ebp),%edx
c003080c:	89 d0                	mov    %edx,%eax
c003080e:	01 c0                	add    %eax,%eax
c0030810:	01 d0                	add    %edx,%eax
c0030812:	c1 e0 02             	shl    $0x2,%eax
c0030815:	01 c8                	add    %ecx,%eax
c0030817:	83 c0 08             	add    $0x8,%eax
c003081a:	8b 08                	mov    (%eax),%ecx
c003081c:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003081f:	8d b3 c4 fe ff ff    	lea    -0x13c(%ebx),%esi
c0030825:	89 d0                	mov    %edx,%eax
c0030827:	01 c0                	add    %eax,%eax
c0030829:	01 d0                	add    %edx,%eax
c003082b:	c1 e0 02             	shl    $0x2,%eax
c003082e:	01 f0                	add    %esi,%eax
c0030830:	8b 00                	mov    (%eax),%eax
c0030832:	39 c1                	cmp    %eax,%ecx
c0030834:	72 2f                	jb     c0030865 <fs_lseek+0x1ab>
c0030836:	83 ec 0c             	sub    $0xc,%esp
c0030839:	8d 83 cc cd ff ff    	lea    -0x3234(%ebx),%eax
c003083f:	50                   	push   %eax
c0030840:	8d 83 10 ce ff ff    	lea    -0x31f0(%ebx),%eax
c0030846:	50                   	push   %eax
c0030847:	6a 61                	push   $0x61
c0030849:	8d 83 25 cd ff ff    	lea    -0x32db(%ebx),%eax
c003084f:	50                   	push   %eax
c0030850:	8d 83 34 cd ff ff    	lea    -0x32cc(%ebx),%eax
c0030856:	50                   	push   %eax
c0030857:	e8 5e 16 00 00       	call   c0031eba <printk>
c003085c:	83 c4 20             	add    $0x20,%esp
c003085f:	b8 01 00 00 00       	mov    $0x1,%eax
c0030864:	82 c7 c1             	add    $0xc1,%bh
c0030867:	60                   	pusha  
c0030868:	f0 06                	lock push %es
c003086a:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c0030871:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0030874:	c1 e0 02             	shl    $0x2,%eax
c0030877:	01 c8                	add    %ecx,%eax
c0030879:	83 c0 08             	add    $0x8,%eax
c003087c:	8b 00                	mov    (%eax),%eax
c003087e:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0030881:	5b                   	pop    %ebx
c0030882:	5e                   	pop    %esi
c0030883:	5d                   	pop    %ebp
c0030884:	c3                   	ret    

c0030885 <fs_close>:
c0030885:	55                   	push   %ebp
c0030886:	89 e5                	mov    %esp,%ebp
c0030888:	53                   	push   %ebx
c0030889:	83 ec 04             	sub    $0x4,%esp
c003088c:	e8 cb fa ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0030891:	81 c3 6f b7 00 00    	add    $0xb76f,%ebx
c0030897:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c003089b:	7f 2f                	jg     c00308cc <fs_close+0x47>
c003089d:	83 ec 0c             	sub    $0xc,%esp
c00308a0:	8d 83 7e cd ff ff    	lea    -0x3282(%ebx),%eax
c00308a6:	50                   	push   %eax
c00308a7:	8d 83 1c ce ff ff    	lea    -0x31e4(%ebx),%eax
c00308ad:	50                   	push   %eax
c00308ae:	6a 66                	push   $0x66
c00308b0:	8d 83 25 cd ff ff    	lea    -0x32db(%ebx),%eax
c00308b6:	50                   	push   %eax
c00308b7:	8d 83 34 cd ff ff    	lea    -0x32cc(%ebx),%eax
c00308bd:	50                   	push   %eax
c00308be:	e8 f7 15 00 00       	call   c0031eba <printk>
c00308c3:	83 c4 20             	add    $0x20,%esp
c00308c6:	b8 01 00 00 00       	mov    $0x1,%eax
c00308cb:	82 c7 c1             	add    $0xc1,%bh
c00308ce:	60                   	pusha  
c00308cf:	f0 06                	lock push %es
c00308d1:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c00308d8:	c0 01 d0             	rolb   $0xd0,(%ecx)
c00308db:	c1 e0 02             	shl    $0x2,%eax
c00308de:	01 c8                	add    %ecx,%eax
c00308e0:	8a 00                	mov    (%eax),%al
c00308e2:	84 c0                	test   %al,%al
c00308e4:	75 2f                	jne    c0030915 <fs_close+0x90>
c00308e6:	83 ec 0c             	sub    $0xc,%esp
c00308e9:	8d 83 85 cd ff ff    	lea    -0x327b(%ebx),%eax
c00308ef:	50                   	push   %eax
c00308f0:	8d 83 1c ce ff ff    	lea    -0x31e4(%ebx),%eax
c00308f6:	50                   	push   %eax
c00308f7:	6a 67                	push   $0x67
c00308f9:	8d 83 25 cd ff ff    	lea    -0x32db(%ebx),%eax
c00308ff:	50                   	push   %eax
c0030900:	8d 83 34 cd ff ff    	lea    -0x32cc(%ebx),%eax
c0030906:	50                   	push   %eax
c0030907:	e8 ae 15 00 00       	call   c0031eba <printk>
c003090c:	83 c4 20             	add    $0x20,%esp
c003090f:	b8 01 00 00 00       	mov    $0x1,%eax
c0030914:	82 c7 c1             	add    $0xc1,%bh
c0030917:	60                   	pusha  
c0030918:	f0 06                	lock push %es
c003091a:	c0 8b 55 08 89 d0 01 	rorb   $0x1,-0x2f76f7ab(%ebx)
c0030921:	c0 01 d0             	rolb   $0xd0,(%ecx)
c0030924:	c1 e0 02             	shl    $0x2,%eax
c0030927:	01 c8                	add    %ecx,%eax
c0030929:	c6 00 00             	movb   $0x0,(%eax)
c003092c:	b8 00 00 00 00       	mov    $0x0,%eax
c0030931:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030934:	c9                   	leave  
c0030935:	c3                   	ret    

c0030936 <write_cr3>:
c0030936:	55                   	push   %ebp
c0030937:	89 e5                	mov    %esp,%ebp
c0030939:	e8 1a fa ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c003093e:	05 c2 b6 00 00       	add    $0xb6c2,%eax
c0030943:	8b 45 08             	mov    0x8(%ebp),%eax
c0030946:	0f 22 d8             	mov    %eax,%cr3
c0030949:	90                   	nop
c003094a:	5d                   	pop    %ebp
c003094b:	c3                   	ret    

c003094c <loader>:
c003094c:	55                   	push   %ebp
c003094d:	89 e5                	mov    %esp,%ebp
c003094f:	53                   	push   %ebx
c0030950:	81 ec 24 10 10 00    	sub    $0x101024,%esp
c0030956:	e8 01 fa ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c003095b:	81 c3 a5 b6 00 00    	add    $0xb6a5,%ebx
c0030961:	83 ec 04             	sub    $0x4,%esp
c0030964:	68 00 10 00 00       	push   $0x1000
c0030969:	6a 00                	push   $0x0
c003096b:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c0030971:	50                   	push   %eax
c0030972:	e8 7f 03 00 00       	call   c0030cf6 <ide_read>
c0030977:	83 c4 10             	add    $0x10,%esp
c003097a:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c0030980:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030983:	8d 83 74 ce ff ff    	lea    -0x318c(%ebx),%eax
c0030989:	50                   	push   %eax
c003098a:	6a 19                	push   $0x19
c003098c:	8d 83 28 ce ff ff    	lea    -0x31d8(%ebx),%eax
c0030992:	50                   	push   %eax
c0030993:	8d 83 38 ce ff ff    	lea    -0x31c8(%ebx),%eax
c0030999:	50                   	push   %eax
c003099a:	e8 1b 15 00 00       	call   c0031eba <printk>
c003099f:	83 c4 10             	add    $0x10,%esp
c00309a2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00309a5:	8b 50 1c             	mov    0x1c(%eax),%edx
c00309a8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00309ab:	01 d0                	add    %edx,%eax
c00309ad:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00309b0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00309b3:	8b 40 2c             	mov    0x2c(%eax),%eax
c00309b6:	0f b7 c0             	movzwl %ax,%eax
c00309b9:	c1 e0 05             	shl    $0x5,%eax
c00309bc:	89 c2                	mov    %eax,%edx
c00309be:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309c1:	01 d0                	add    %edx,%eax
c00309c3:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00309c6:	e9 bf 00 00 00       	jmp    c0030a8a <loader+0x13e>
c00309cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309ce:	8b 00                	mov    (%eax),%eax
c00309d0:	83 f8 01             	cmp    $0x1,%eax
c00309d3:	0f 85 ad 00 00 00    	jne    c0030a86 <loader+0x13a>
c00309d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309dc:	8b 50 10             	mov    0x10(%eax),%edx
c00309df:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309e2:	8b 40 04             	mov    0x4(%eax),%eax
c00309e5:	83 ec 04             	sub    $0x4,%esp
c00309e8:	52                   	push   %edx
c00309e9:	50                   	push   %eax
c00309ea:	8d 85 e0 ef ef ff    	lea    -0x101020(%ebp),%eax
c00309f0:	50                   	push   %eax
c00309f1:	e8 00 03 00 00       	call   c0030cf6 <ide_read>
c00309f6:	83 c4 10             	add    $0x10,%esp
c00309f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309fc:	8b 40 14             	mov    0x14(%eax),%eax
c00309ff:	89 c2                	mov    %eax,%edx
c0030a01:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a04:	8b 40 08             	mov    0x8(%eax),%eax
c0030a07:	83 ec 08             	sub    $0x8,%esp
c0030a0a:	52                   	push   %edx
c0030a0b:	50                   	push   %eax
c0030a0c:	e8 bf 15 00 00       	call   c0031fd0 <mm_malloc>
c0030a11:	83 c4 10             	add    $0x10,%esp
c0030a14:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0030a17:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a1a:	8b 50 10             	mov    0x10(%eax),%edx
c0030a1d:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030a20:	83 ec 04             	sub    $0x4,%esp
c0030a23:	52                   	push   %edx
c0030a24:	8d 95 e0 ef ef ff    	lea    -0x101020(%ebp),%edx
c0030a2a:	52                   	push   %edx
c0030a2b:	50                   	push   %eax
c0030a2c:	e8 33 18 00 00       	call   c0032264 <memcpy>
c0030a31:	83 c4 10             	add    $0x10,%esp
c0030a34:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a37:	8b 50 14             	mov    0x14(%eax),%edx
c0030a3a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a3d:	8b 40 10             	mov    0x10(%eax),%eax
c0030a40:	29 c2                	sub    %eax,%edx
c0030a42:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a45:	8b 48 10             	mov    0x10(%eax),%ecx
c0030a48:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030a4b:	01 c8                	add    %ecx,%eax
c0030a4d:	83 ec 04             	sub    $0x4,%esp
c0030a50:	52                   	push   %edx
c0030a51:	6a 00                	push   $0x0
c0030a53:	50                   	push   %eax
c0030a54:	e8 53 18 00 00       	call   c00322ac <memset>
c0030a59:	83 c4 10             	add    $0x10,%esp
c0030a5c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a5f:	8b 50 08             	mov    0x8(%eax),%edx
c0030a62:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a65:	8b 40 14             	mov    0x14(%eax),%eax
c0030a68:	01 d0                	add    %edx,%eax
c0030a6a:	48                   	dec    %eax
c0030a6b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0030a6e:	c7 c0 8c dd 04 c0    	mov    $0xc004dd8c,%eax
c0030a74:	8b 00                	mov    (%eax),%eax
c0030a76:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
c0030a79:	73 0b                	jae    c0030a86 <loader+0x13a>
c0030a7b:	c7 c0 8c dd 04 c0    	mov    $0xc004dd8c,%eax
c0030a81:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0030a84:	89 10                	mov    %edx,(%eax)
c0030a86:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0030a8a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a8d:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c0030a90:	0f 82 35 ff ff ff    	jb     c00309cb <loader+0x7f>
c0030a96:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030a99:	8b 40 18             	mov    0x18(%eax),%eax
c0030a9c:	89 85 e0 ef ff ff    	mov    %eax,-0x1020(%ebp)
c0030aa2:	83 ec 08             	sub    $0x8,%esp
c0030aa5:	68 00 00 10 00       	push   $0x100000
c0030aaa:	68 00 00 f0 bf       	push   $0xbff00000
c0030aaf:	e8 1c 15 00 00       	call   c0031fd0 <mm_malloc>
c0030ab4:	83 c4 10             	add    $0x10,%esp
c0030ab7:	e8 56 11 00 00       	call   c0031c12 <create_video_mapping>
c0030abc:	e8 cf 12 00 00       	call   c0031d90 <get_ucr3>
c0030ac1:	83 ec 0c             	sub    $0xc,%esp
c0030ac4:	50                   	push   %eax
c0030ac5:	e8 6c fe ff ff       	call   c0030936 <write_cr3>
c0030aca:	83 c4 10             	add    $0x10,%esp
c0030acd:	8b 85 e0 ef ff ff    	mov    -0x1020(%ebp),%eax
c0030ad3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030ad6:	c9                   	leave  
c0030ad7:	c3                   	ret    

c0030ad8 <cache_init>:
c0030ad8:	55                   	push   %ebp
c0030ad9:	89 e5                	mov    %esp,%ebp
c0030adb:	53                   	push   %ebx
c0030adc:	83 ec 10             	sub    $0x10,%esp
c0030adf:	e8 fd 01 00 00       	call   c0030ce1 <__x86.get_pc_thunk.dx>
c0030ae4:	81 c2 1c b5 00 00    	add    $0xb51c,%edx
c0030aea:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030af1:	eb 1b                	jmp    c0030b0e <cache_init+0x36>
c0030af3:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0030af6:	8d 9a 04 10 00 00    	lea    0x1004(%edx),%ebx
c0030afc:	89 c8                	mov    %ecx,%eax
c0030afe:	c1 e0 06             	shl    $0x6,%eax
c0030b01:	01 c8                	add    %ecx,%eax
c0030b03:	c1 e0 03             	shl    $0x3,%eax
c0030b06:	01 d8                	add    %ebx,%eax
c0030b08:	c6 00 00             	movb   $0x0,(%eax)
c0030b0b:	ff 45 f8             	incl   -0x8(%ebp)
c0030b0e:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c0030b12:	7e df                	jle    c0030af3 <cache_init+0x1b>
c0030b14:	90                   	nop
c0030b15:	83 c4 10             	add    $0x10,%esp
c0030b18:	5b                   	pop    %ebx
c0030b19:	5d                   	pop    %ebp
c0030b1a:	c3                   	ret    

c0030b1b <cache_writeback>:
c0030b1b:	55                   	push   %ebp
c0030b1c:	89 e5                	mov    %esp,%ebp
c0030b1e:	53                   	push   %ebx
c0030b1f:	83 ec 14             	sub    $0x14,%esp
c0030b22:	e8 35 f8 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0030b27:	81 c3 d9 b4 00 00    	add    $0xb4d9,%ebx
c0030b2d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030b34:	eb 72                	jmp    c0030ba8 <cache_writeback+0x8d>
c0030b36:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030b39:	8d 8b 05 10 00 00    	lea    0x1005(%ebx),%ecx
c0030b3f:	89 d0                	mov    %edx,%eax
c0030b41:	c1 e0 06             	shl    $0x6,%eax
c0030b44:	01 d0                	add    %edx,%eax
c0030b46:	c1 e0 03             	shl    $0x3,%eax
c0030b49:	01 c8                	add    %ecx,%eax
c0030b4b:	8a 00                	mov    (%eax),%al
c0030b4d:	3c 01                	cmp    $0x1,%al
c0030b4f:	75 54                	jne    c0030ba5 <cache_writeback+0x8a>
c0030b51:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030b54:	8d 8b 00 10 00 00    	lea    0x1000(%ebx),%ecx
c0030b5a:	89 d0                	mov    %edx,%eax
c0030b5c:	c1 e0 06             	shl    $0x6,%eax
c0030b5f:	01 d0                	add    %edx,%eax
c0030b61:	c1 e0 03             	shl    $0x3,%eax
c0030b64:	01 c8                	add    %ecx,%eax
c0030b66:	8b 10                	mov    (%eax),%edx
c0030b68:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0030b6b:	89 c8                	mov    %ecx,%eax
c0030b6d:	c1 e0 06             	shl    $0x6,%eax
c0030b70:	01 c8                	add    %ecx,%eax
c0030b72:	c1 e0 03             	shl    $0x3,%eax
c0030b75:	8d 8b 00 10 00 00    	lea    0x1000(%ebx),%ecx
c0030b7b:	01 c8                	add    %ecx,%eax
c0030b7d:	83 c0 06             	add    $0x6,%eax
c0030b80:	83 ec 08             	sub    $0x8,%esp
c0030b83:	52                   	push   %edx
c0030b84:	50                   	push   %eax
c0030b85:	e8 f4 05 00 00       	call   c003117e <disk_do_write>
c0030b8a:	83 c4 10             	add    $0x10,%esp
c0030b8d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030b90:	8d 8b 05 10 00 00    	lea    0x1005(%ebx),%ecx
c0030b96:	89 d0                	mov    %edx,%eax
c0030b98:	c1 e0 06             	shl    $0x6,%eax
c0030b9b:	01 d0                	add    %edx,%eax
c0030b9d:	c1 e0 03             	shl    $0x3,%eax
c0030ba0:	01 c8                	add    %ecx,%eax
c0030ba2:	c6 00 00             	movb   $0x0,(%eax)
c0030ba5:	ff 45 f4             	incl   -0xc(%ebp)
c0030ba8:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c0030bac:	7e 88                	jle    c0030b36 <cache_writeback+0x1b>
c0030bae:	90                   	nop
c0030baf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030bb2:	c9                   	leave  
c0030bb3:	c3                   	ret    

c0030bb4 <cache_fetch>:
c0030bb4:	55                   	push   %ebp
c0030bb5:	89 e5                	mov    %esp,%ebp
c0030bb7:	53                   	push   %ebx
c0030bb8:	83 ec 14             	sub    $0x14,%esp
c0030bbb:	e8 9c f7 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0030bc0:	81 c3 40 b4 00 00    	add    $0xb440,%ebx
c0030bc6:	8b 45 08             	mov    0x8(%ebp),%eax
c0030bc9:	83 e0 7f             	and    $0x7f,%eax
c0030bcc:	89 c2                	mov    %eax,%edx
c0030bce:	89 d0                	mov    %edx,%eax
c0030bd0:	c1 e0 06             	shl    $0x6,%eax
c0030bd3:	01 d0                	add    %edx,%eax
c0030bd5:	c1 e0 03             	shl    $0x3,%eax
c0030bd8:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
c0030bde:	01 d0                	add    %edx,%eax
c0030be0:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030be3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030be6:	8a 40 04             	mov    0x4(%eax),%al
c0030be9:	3c 01                	cmp    $0x1,%al
c0030beb:	75 0a                	jne    c0030bf7 <cache_fetch+0x43>
c0030bed:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030bf0:	8b 00                	mov    (%eax),%eax
c0030bf2:	3b 45 08             	cmp    0x8(%ebp),%eax
c0030bf5:	74 57                	je     c0030c4e <cache_fetch+0x9a>
c0030bf7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030bfa:	8a 40 04             	mov    0x4(%eax),%al
c0030bfd:	3c 01                	cmp    $0x1,%al
c0030bff:	75 22                	jne    c0030c23 <cache_fetch+0x6f>
c0030c01:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c04:	8a 40 05             	mov    0x5(%eax),%al
c0030c07:	3c 01                	cmp    $0x1,%al
c0030c09:	75 18                	jne    c0030c23 <cache_fetch+0x6f>
c0030c0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c0e:	8b 00                	mov    (%eax),%eax
c0030c10:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030c13:	83 c2 06             	add    $0x6,%edx
c0030c16:	83 ec 08             	sub    $0x8,%esp
c0030c19:	50                   	push   %eax
c0030c1a:	52                   	push   %edx
c0030c1b:	e8 5e 05 00 00       	call   c003117e <disk_do_write>
c0030c20:	83 c4 10             	add    $0x10,%esp
c0030c23:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c26:	83 c0 06             	add    $0x6,%eax
c0030c29:	83 ec 08             	sub    $0x8,%esp
c0030c2c:	ff 75 08             	pushl  0x8(%ebp)
c0030c2f:	50                   	push   %eax
c0030c30:	e8 de 04 00 00       	call   c0031113 <disk_do_read>
c0030c35:	83 c4 10             	add    $0x10,%esp
c0030c38:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c3b:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c0030c3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c42:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c45:	89 10                	mov    %edx,(%eax)
c0030c47:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c4a:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c0030c4e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c51:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030c54:	c9                   	leave  
c0030c55:	c3                   	ret    

c0030c56 <read_byte>:
c0030c56:	55                   	push   %ebp
c0030c57:	89 e5                	mov    %esp,%ebp
c0030c59:	83 ec 18             	sub    $0x18,%esp
c0030c5c:	e8 f7 f6 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030c61:	05 9f b3 00 00       	add    $0xb39f,%eax
c0030c66:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c69:	c1 e8 09             	shr    $0x9,%eax
c0030c6c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030c6f:	83 ec 0c             	sub    $0xc,%esp
c0030c72:	ff 75 f4             	pushl  -0xc(%ebp)
c0030c75:	e8 3a ff ff ff       	call   c0030bb4 <cache_fetch>
c0030c7a:	83 c4 10             	add    $0x10,%esp
c0030c7d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030c80:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c83:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030c88:	89 c2                	mov    %eax,%edx
c0030c8a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030c8d:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c0030c91:	c9                   	leave  
c0030c92:	c3                   	ret    

c0030c93 <write_byte>:
c0030c93:	55                   	push   %ebp
c0030c94:	89 e5                	mov    %esp,%ebp
c0030c96:	83 ec 28             	sub    $0x28,%esp
c0030c99:	e8 ba f6 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030c9e:	05 62 b3 00 00       	add    $0xb362,%eax
c0030ca3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030ca6:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0030ca9:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cac:	c1 e8 09             	shr    $0x9,%eax
c0030caf:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030cb2:	83 ec 0c             	sub    $0xc,%esp
c0030cb5:	ff 75 f4             	pushl  -0xc(%ebp)
c0030cb8:	e8 f7 fe ff ff       	call   c0030bb4 <cache_fetch>
c0030cbd:	83 c4 10             	add    $0x10,%esp
c0030cc0:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030cc3:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cc6:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030ccb:	89 c1                	mov    %eax,%ecx
c0030ccd:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030cd0:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c0030cd3:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c0030cd7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030cda:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0030cde:	90                   	nop
c0030cdf:	c9                   	leave  
c0030ce0:	c3                   	ret    

c0030ce1 <__x86.get_pc_thunk.dx>:
c0030ce1:	8b 14 24             	mov    (%esp),%edx
c0030ce4:	c3                   	ret    

c0030ce5 <wait_intr>:
c0030ce5:	55                   	push   %ebp
c0030ce6:	89 e5                	mov    %esp,%ebp
c0030ce8:	e8 6b f6 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030ced:	05 13 b3 00 00       	add    $0xb313,%eax
c0030cf2:	f4                   	hlt    
c0030cf3:	90                   	nop
c0030cf4:	5d                   	pop    %ebp
c0030cf5:	c3                   	ret    

c0030cf6 <ide_read>:
c0030cf6:	55                   	push   %ebp
c0030cf7:	89 e5                	mov    %esp,%ebp
c0030cf9:	56                   	push   %esi
c0030cfa:	53                   	push   %ebx
c0030cfb:	83 ec 10             	sub    $0x10,%esp
c0030cfe:	e8 59 f6 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0030d03:	81 c3 fd b2 00 00    	add    $0xb2fd,%ebx
c0030d09:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030d10:	eb 22                	jmp    c0030d34 <ide_read+0x3e>
c0030d12:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d15:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d18:	8d 34 02             	lea    (%edx,%eax,1),%esi
c0030d1b:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030d1e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d21:	01 d0                	add    %edx,%eax
c0030d23:	83 ec 0c             	sub    $0xc,%esp
c0030d26:	50                   	push   %eax
c0030d27:	e8 2a ff ff ff       	call   c0030c56 <read_byte>
c0030d2c:	83 c4 10             	add    $0x10,%esp
c0030d2f:	88 06                	mov    %al,(%esi)
c0030d31:	ff 45 f4             	incl   -0xc(%ebp)
c0030d34:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d37:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030d3a:	72 d6                	jb     c0030d12 <ide_read+0x1c>
c0030d3c:	90                   	nop
c0030d3d:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0030d40:	5b                   	pop    %ebx
c0030d41:	5e                   	pop    %esi
c0030d42:	5d                   	pop    %ebp
c0030d43:	c3                   	ret    

c0030d44 <ide_write>:
c0030d44:	55                   	push   %ebp
c0030d45:	89 e5                	mov    %esp,%ebp
c0030d47:	53                   	push   %ebx
c0030d48:	83 ec 14             	sub    $0x14,%esp
c0030d4b:	e8 0c f6 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0030d50:	81 c3 b0 b2 00 00    	add    $0xb2b0,%ebx
c0030d56:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030d5d:	eb 25                	jmp    c0030d84 <ide_write+0x40>
c0030d5f:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d62:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d65:	01 d0                	add    %edx,%eax
c0030d67:	8a 00                	mov    (%eax),%al
c0030d69:	0f b6 c0             	movzbl %al,%eax
c0030d6c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0030d6f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030d72:	01 ca                	add    %ecx,%edx
c0030d74:	83 ec 08             	sub    $0x8,%esp
c0030d77:	50                   	push   %eax
c0030d78:	52                   	push   %edx
c0030d79:	e8 15 ff ff ff       	call   c0030c93 <write_byte>
c0030d7e:	83 c4 10             	add    $0x10,%esp
c0030d81:	ff 45 f4             	incl   -0xc(%ebp)
c0030d84:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d87:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030d8a:	72 d3                	jb     c0030d5f <ide_write+0x1b>
c0030d8c:	90                   	nop
c0030d8d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030d90:	c9                   	leave  
c0030d91:	c3                   	ret    

c0030d92 <ide_writeback>:
c0030d92:	55                   	push   %ebp
c0030d93:	89 e5                	mov    %esp,%ebp
c0030d95:	53                   	push   %ebx
c0030d96:	83 ec 04             	sub    $0x4,%esp
c0030d99:	e8 be f5 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0030d9e:	81 c3 62 b2 00 00    	add    $0xb262,%ebx
c0030da4:	8b 83 04 14 01 00    	mov    0x11404(%ebx),%eax
c0030daa:	40                   	inc    %eax
c0030dab:	89 83 04 14 01 00    	mov    %eax,0x11404(%ebx)
c0030db1:	8b 83 04 14 01 00    	mov    0x11404(%ebx),%eax
c0030db7:	83 f8 64             	cmp    $0x64,%eax
c0030dba:	75 0f                	jne    c0030dcb <ide_writeback+0x39>
c0030dbc:	e8 5a fd ff ff       	call   c0030b1b <cache_writeback>
c0030dc1:	c7 83 04 14 01 00 00 	movl   $0x0,0x11404(%ebx)
c0030dc8:	00 00 00 
c0030dcb:	90                   	nop
c0030dcc:	83 c4 04             	add    $0x4,%esp
c0030dcf:	5b                   	pop    %ebx
c0030dd0:	5d                   	pop    %ebp
c0030dd1:	c3                   	ret    

c0030dd2 <ide_intr>:
c0030dd2:	55                   	push   %ebp
c0030dd3:	89 e5                	mov    %esp,%ebp
c0030dd5:	e8 7e f5 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030dda:	05 26 b2 00 00       	add    $0xb226,%eax
c0030ddf:	c7 80 00 14 01 00 01 	movl   $0x1,0x11400(%eax)
c0030de6:	00 00 00 
c0030de9:	90                   	nop
c0030dea:	5d                   	pop    %ebp
c0030deb:	c3                   	ret    

c0030dec <clear_ide_intr>:
c0030dec:	55                   	push   %ebp
c0030ded:	89 e5                	mov    %esp,%ebp
c0030def:	e8 64 f5 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030df4:	05 0c b2 00 00       	add    $0xb20c,%eax
c0030df9:	c7 80 00 14 01 00 00 	movl   $0x0,0x11400(%eax)
c0030e00:	00 00 00 
c0030e03:	90                   	nop
c0030e04:	5d                   	pop    %ebp
c0030e05:	c3                   	ret    

c0030e06 <wait_ide_intr>:
c0030e06:	55                   	push   %ebp
c0030e07:	89 e5                	mov    %esp,%ebp
c0030e09:	53                   	push   %ebx
c0030e0a:	e8 4d f5 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0030e0f:	81 c3 f1 b1 00 00    	add    $0xb1f1,%ebx
c0030e15:	eb 05                	jmp    c0030e1c <wait_ide_intr+0x16>
c0030e17:	e8 c9 fe ff ff       	call   c0030ce5 <wait_intr>
c0030e1c:	8b 83 00 14 01 00    	mov    0x11400(%ebx),%eax
c0030e22:	85 c0                	test   %eax,%eax
c0030e24:	74 f1                	je     c0030e17 <wait_ide_intr+0x11>
c0030e26:	e8 c1 ff ff ff       	call   c0030dec <clear_ide_intr>
c0030e2b:	90                   	nop
c0030e2c:	5b                   	pop    %ebx
c0030e2d:	5d                   	pop    %ebp
c0030e2e:	c3                   	ret    

c0030e2f <init_ide>:
c0030e2f:	55                   	push   %ebp
c0030e30:	89 e5                	mov    %esp,%ebp
c0030e32:	53                   	push   %ebx
c0030e33:	83 ec 04             	sub    $0x4,%esp
c0030e36:	e8 21 f5 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0030e3b:	81 c3 c5 b1 00 00    	add    $0xb1c5,%ebx
c0030e41:	e8 92 fc ff ff       	call   c0030ad8 <cache_init>
c0030e46:	83 ec 08             	sub    $0x8,%esp
c0030e49:	8d 83 92 4d ff ff    	lea    -0xb26e(%ebx),%eax
c0030e4f:	50                   	push   %eax
c0030e50:	6a 00                	push   $0x0
c0030e52:	e8 38 08 00 00       	call   c003168f <add_irq_handle>
c0030e57:	83 c4 10             	add    $0x10,%esp
c0030e5a:	83 ec 08             	sub    $0x8,%esp
c0030e5d:	8d 83 d2 4d ff ff    	lea    -0xb22e(%ebx),%eax
c0030e63:	50                   	push   %eax
c0030e64:	6a 0e                	push   $0xe
c0030e66:	e8 24 08 00 00       	call   c003168f <add_irq_handle>
c0030e6b:	83 c4 10             	add    $0x10,%esp
c0030e6e:	90                   	nop
c0030e6f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030e72:	c9                   	leave  
c0030e73:	c3                   	ret    

c0030e74 <in_byte>:
c0030e74:	55                   	push   %ebp
c0030e75:	89 e5                	mov    %esp,%ebp
c0030e77:	83 ec 14             	sub    $0x14,%esp
c0030e7a:	e8 d9 f4 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030e7f:	05 81 b1 00 00       	add    $0xb181,%eax
c0030e84:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e87:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030e8b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030e8e:	89 c2                	mov    %eax,%edx
c0030e90:	ec                   	in     (%dx),%al
c0030e91:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030e94:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030e97:	c9                   	leave  
c0030e98:	c3                   	ret    

c0030e99 <out_byte>:
c0030e99:	55                   	push   %ebp
c0030e9a:	89 e5                	mov    %esp,%ebp
c0030e9c:	83 ec 08             	sub    $0x8,%esp
c0030e9f:	e8 b4 f4 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030ea4:	05 5c b1 00 00       	add    $0xb15c,%eax
c0030ea9:	8b 45 08             	mov    0x8(%ebp),%eax
c0030eac:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030eaf:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030eb3:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030eb6:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030eb9:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030ebc:	ee                   	out    %al,(%dx)
c0030ebd:	90                   	nop
c0030ebe:	c9                   	leave  
c0030ebf:	c3                   	ret    

c0030ec0 <out_long>:
c0030ec0:	55                   	push   %ebp
c0030ec1:	89 e5                	mov    %esp,%ebp
c0030ec3:	83 ec 04             	sub    $0x4,%esp
c0030ec6:	e8 8d f4 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030ecb:	05 35 b1 00 00       	add    $0xb135,%eax
c0030ed0:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ed3:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030ed7:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030eda:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030edd:	ef                   	out    %eax,(%dx)
c0030ede:	90                   	nop
c0030edf:	c9                   	leave  
c0030ee0:	c3                   	ret    

c0030ee1 <dma_prepare>:
c0030ee1:	55                   	push   %ebp
c0030ee2:	89 e5                	mov    %esp,%ebp
c0030ee4:	83 ec 10             	sub    $0x10,%esp
c0030ee7:	e8 6c f4 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030eec:	05 14 b1 00 00       	add    $0xb114,%eax
c0030ef1:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ef4:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0030efa:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0030efd:	c7 c2 b0 f1 06 c0    	mov    $0xc006f1b0,%edx
c0030f03:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0030f06:	89 0a                	mov    %ecx,(%edx)
c0030f08:	c7 c2 b0 f1 06 c0    	mov    $0xc006f1b0,%edx
c0030f0e:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c0030f14:	c7 c2 b0 f1 06 c0    	mov    $0xc006f1b0,%edx
c0030f1a:	8a 4a 07             	mov    0x7(%edx),%cl
c0030f1d:	83 c9 80             	or     $0xffffff80,%ecx
c0030f20:	88 4a 07             	mov    %cl,0x7(%edx)
c0030f23:	c7 c1 b0 f1 06 c0    	mov    $0xc006f1b0,%ecx
c0030f29:	66 8b 51 06          	mov    0x6(%ecx),%dx
c0030f2d:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c0030f33:	66 89 51 06          	mov    %dx,0x6(%ecx)
c0030f37:	c7 c0 b0 f1 06 c0    	mov    $0xc006f1b0,%eax
c0030f3d:	05 00 00 00 40       	add    $0x40000000,%eax
c0030f42:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0030f45:	ff 75 f8             	pushl  -0x8(%ebp)
c0030f48:	68 44 c0 00 00       	push   $0xc044
c0030f4d:	e8 6e ff ff ff       	call   c0030ec0 <out_long>
c0030f52:	83 c4 08             	add    $0x8,%esp
c0030f55:	90                   	nop
c0030f56:	c9                   	leave  
c0030f57:	c3                   	ret    

c0030f58 <dma_issue_read>:
c0030f58:	55                   	push   %ebp
c0030f59:	89 e5                	mov    %esp,%ebp
c0030f5b:	e8 f8 f3 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030f60:	05 a0 b0 00 00       	add    $0xb0a0,%eax
c0030f65:	68 40 c0 00 00       	push   $0xc040
c0030f6a:	e8 05 ff ff ff       	call   c0030e74 <in_byte>
c0030f6f:	83 c4 04             	add    $0x4,%esp
c0030f72:	83 c8 09             	or     $0x9,%eax
c0030f75:	0f b6 c0             	movzbl %al,%eax
c0030f78:	50                   	push   %eax
c0030f79:	68 40 c0 00 00       	push   $0xc040
c0030f7e:	e8 16 ff ff ff       	call   c0030e99 <out_byte>
c0030f83:	83 c4 08             	add    $0x8,%esp
c0030f86:	90                   	nop
c0030f87:	c9                   	leave  
c0030f88:	c3                   	ret    

c0030f89 <in_byte>:
c0030f89:	55                   	push   %ebp
c0030f8a:	89 e5                	mov    %esp,%ebp
c0030f8c:	83 ec 14             	sub    $0x14,%esp
c0030f8f:	e8 c4 f3 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030f94:	05 6c b0 00 00       	add    $0xb06c,%eax
c0030f99:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f9c:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030fa0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030fa3:	89 c2                	mov    %eax,%edx
c0030fa5:	ec                   	in     (%dx),%al
c0030fa6:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030fa9:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030fac:	c9                   	leave  
c0030fad:	c3                   	ret    

c0030fae <in_long>:
c0030fae:	55                   	push   %ebp
c0030faf:	89 e5                	mov    %esp,%ebp
c0030fb1:	83 ec 14             	sub    $0x14,%esp
c0030fb4:	e8 9f f3 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030fb9:	05 47 b0 00 00       	add    $0xb047,%eax
c0030fbe:	8b 45 08             	mov    0x8(%ebp),%eax
c0030fc1:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030fc5:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030fc8:	89 c2                	mov    %eax,%edx
c0030fca:	ed                   	in     (%dx),%eax
c0030fcb:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0030fce:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030fd1:	c9                   	leave  
c0030fd2:	c3                   	ret    

c0030fd3 <out_byte>:
c0030fd3:	55                   	push   %ebp
c0030fd4:	89 e5                	mov    %esp,%ebp
c0030fd6:	83 ec 08             	sub    $0x8,%esp
c0030fd9:	e8 7a f3 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0030fde:	05 22 b0 00 00       	add    $0xb022,%eax
c0030fe3:	8b 45 08             	mov    0x8(%ebp),%eax
c0030fe6:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030fe9:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030fed:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030ff0:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030ff3:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030ff6:	ee                   	out    %al,(%dx)
c0030ff7:	90                   	nop
c0030ff8:	c9                   	leave  
c0030ff9:	c3                   	ret    

c0030ffa <out_long>:
c0030ffa:	55                   	push   %ebp
c0030ffb:	89 e5                	mov    %esp,%ebp
c0030ffd:	83 ec 04             	sub    $0x4,%esp
c0031000:	e8 53 f3 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031005:	05 fb af 00 00       	add    $0xaffb,%eax
c003100a:	8b 45 08             	mov    0x8(%ebp),%eax
c003100d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031011:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031014:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031017:	ef                   	out    %eax,(%dx)
c0031018:	90                   	nop
c0031019:	c9                   	leave  
c003101a:	c3                   	ret    

c003101b <waitdisk>:
c003101b:	55                   	push   %ebp
c003101c:	89 e5                	mov    %esp,%ebp
c003101e:	e8 35 f3 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031023:	05 dd af 00 00       	add    $0xafdd,%eax
c0031028:	90                   	nop
c0031029:	68 f7 01 00 00       	push   $0x1f7
c003102e:	e8 56 ff ff ff       	call   c0030f89 <in_byte>
c0031033:	83 c4 04             	add    $0x4,%esp
c0031036:	0f b6 c0             	movzbl %al,%eax
c0031039:	25 c0 00 00 00       	and    $0xc0,%eax
c003103e:	83 f8 40             	cmp    $0x40,%eax
c0031041:	75 e6                	jne    c0031029 <waitdisk+0xe>
c0031043:	90                   	nop
c0031044:	c9                   	leave  
c0031045:	c3                   	ret    

c0031046 <ide_prepare>:
c0031046:	55                   	push   %ebp
c0031047:	89 e5                	mov    %esp,%ebp
c0031049:	e8 0a f3 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c003104e:	05 b2 af 00 00       	add    $0xafb2,%eax
c0031053:	e8 c3 ff ff ff       	call   c003101b <waitdisk>
c0031058:	6a 00                	push   $0x0
c003105a:	68 f1 01 00 00       	push   $0x1f1
c003105f:	e8 6f ff ff ff       	call   c0030fd3 <out_byte>
c0031064:	83 c4 08             	add    $0x8,%esp
c0031067:	6a 01                	push   $0x1
c0031069:	68 f2 01 00 00       	push   $0x1f2
c003106e:	e8 60 ff ff ff       	call   c0030fd3 <out_byte>
c0031073:	83 c4 08             	add    $0x8,%esp
c0031076:	8b 45 08             	mov    0x8(%ebp),%eax
c0031079:	0f b6 c0             	movzbl %al,%eax
c003107c:	50                   	push   %eax
c003107d:	68 f3 01 00 00       	push   $0x1f3
c0031082:	e8 4c ff ff ff       	call   c0030fd3 <out_byte>
c0031087:	83 c4 08             	add    $0x8,%esp
c003108a:	8b 45 08             	mov    0x8(%ebp),%eax
c003108d:	c1 e8 08             	shr    $0x8,%eax
c0031090:	0f b6 c0             	movzbl %al,%eax
c0031093:	50                   	push   %eax
c0031094:	68 f4 01 00 00       	push   $0x1f4
c0031099:	e8 35 ff ff ff       	call   c0030fd3 <out_byte>
c003109e:	83 c4 08             	add    $0x8,%esp
c00310a1:	8b 45 08             	mov    0x8(%ebp),%eax
c00310a4:	c1 e8 10             	shr    $0x10,%eax
c00310a7:	0f b6 c0             	movzbl %al,%eax
c00310aa:	50                   	push   %eax
c00310ab:	68 f5 01 00 00       	push   $0x1f5
c00310b0:	e8 1e ff ff ff       	call   c0030fd3 <out_byte>
c00310b5:	83 c4 08             	add    $0x8,%esp
c00310b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00310bb:	c1 e8 18             	shr    $0x18,%eax
c00310be:	83 c8 e0             	or     $0xffffffe0,%eax
c00310c1:	0f b6 c0             	movzbl %al,%eax
c00310c4:	50                   	push   %eax
c00310c5:	68 f6 01 00 00       	push   $0x1f6
c00310ca:	e8 04 ff ff ff       	call   c0030fd3 <out_byte>
c00310cf:	83 c4 08             	add    $0x8,%esp
c00310d2:	90                   	nop
c00310d3:	c9                   	leave  
c00310d4:	c3                   	ret    

c00310d5 <issue_read>:
c00310d5:	55                   	push   %ebp
c00310d6:	89 e5                	mov    %esp,%ebp
c00310d8:	e8 7b f2 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c00310dd:	05 23 af 00 00       	add    $0xaf23,%eax
c00310e2:	6a 20                	push   $0x20
c00310e4:	68 f7 01 00 00       	push   $0x1f7
c00310e9:	e8 e5 fe ff ff       	call   c0030fd3 <out_byte>
c00310ee:	83 c4 08             	add    $0x8,%esp
c00310f1:	90                   	nop
c00310f2:	c9                   	leave  
c00310f3:	c3                   	ret    

c00310f4 <issue_write>:
c00310f4:	55                   	push   %ebp
c00310f5:	89 e5                	mov    %esp,%ebp
c00310f7:	e8 5c f2 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c00310fc:	05 04 af 00 00       	add    $0xaf04,%eax
c0031101:	6a 30                	push   $0x30
c0031103:	68 f7 01 00 00       	push   $0x1f7
c0031108:	e8 c6 fe ff ff       	call   c0030fd3 <out_byte>
c003110d:	83 c4 08             	add    $0x8,%esp
c0031110:	90                   	nop
c0031111:	c9                   	leave  
c0031112:	c3                   	ret    

c0031113 <disk_do_read>:
c0031113:	55                   	push   %ebp
c0031114:	89 e5                	mov    %esp,%ebp
c0031116:	53                   	push   %ebx
c0031117:	83 ec 14             	sub    $0x14,%esp
c003111a:	e8 3d f2 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c003111f:	81 c3 e1 ae 00 00    	add    $0xaee1,%ebx
c0031125:	e8 c2 fc ff ff       	call   c0030dec <clear_ide_intr>
c003112a:	83 ec 0c             	sub    $0xc,%esp
c003112d:	ff 75 0c             	pushl  0xc(%ebp)
c0031130:	e8 11 ff ff ff       	call   c0031046 <ide_prepare>
c0031135:	83 c4 10             	add    $0x10,%esp
c0031138:	e8 98 ff ff ff       	call   c00310d5 <issue_read>
c003113d:	e8 c4 fc ff ff       	call   c0030e06 <wait_ide_intr>
c0031142:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031149:	eb 25                	jmp    c0031170 <disk_do_read+0x5d>
c003114b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003114e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031155:	8b 45 08             	mov    0x8(%ebp),%eax
c0031158:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c003115b:	83 ec 0c             	sub    $0xc,%esp
c003115e:	68 f0 01 00 00       	push   $0x1f0
c0031163:	e8 46 fe ff ff       	call   c0030fae <in_long>
c0031168:	83 c4 10             	add    $0x10,%esp
c003116b:	89 03                	mov    %eax,(%ebx)
c003116d:	ff 45 f4             	incl   -0xc(%ebp)
c0031170:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031173:	83 f8 7f             	cmp    $0x7f,%eax
c0031176:	76 d3                	jbe    c003114b <disk_do_read+0x38>
c0031178:	90                   	nop
c0031179:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003117c:	c9                   	leave  
c003117d:	c3                   	ret    

c003117e <disk_do_write>:
c003117e:	55                   	push   %ebp
c003117f:	89 e5                	mov    %esp,%ebp
c0031181:	83 ec 10             	sub    $0x10,%esp
c0031184:	e8 cf f1 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031189:	05 77 ae 00 00       	add    $0xae77,%eax
c003118e:	ff 75 0c             	pushl  0xc(%ebp)
c0031191:	e8 b0 fe ff ff       	call   c0031046 <ide_prepare>
c0031196:	83 c4 04             	add    $0x4,%esp
c0031199:	e8 56 ff ff ff       	call   c00310f4 <issue_write>
c003119e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00311a5:	eb 22                	jmp    c00311c9 <disk_do_write+0x4b>
c00311a7:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00311aa:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00311b1:	8b 45 08             	mov    0x8(%ebp),%eax
c00311b4:	01 d0                	add    %edx,%eax
c00311b6:	8b 00                	mov    (%eax),%eax
c00311b8:	50                   	push   %eax
c00311b9:	68 f0 01 00 00       	push   $0x1f0
c00311be:	e8 37 fe ff ff       	call   c0030ffa <out_long>
c00311c3:	83 c4 08             	add    $0x8,%esp
c00311c6:	ff 45 fc             	incl   -0x4(%ebp)
c00311c9:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00311cc:	83 f8 7f             	cmp    $0x7f,%eax
c00311cf:	76 d6                	jbe    c00311a7 <disk_do_write+0x29>
c00311d1:	90                   	nop
c00311d2:	c9                   	leave  
c00311d3:	c3                   	ret    

c00311d4 <out_byte>:
c00311d4:	55                   	push   %ebp
c00311d5:	89 e5                	mov    %esp,%ebp
c00311d7:	83 ec 08             	sub    $0x8,%esp
c00311da:	e8 79 f1 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c00311df:	05 21 ae 00 00       	add    $0xae21,%eax
c00311e4:	8b 45 08             	mov    0x8(%ebp),%eax
c00311e7:	8b 55 0c             	mov    0xc(%ebp),%edx
c00311ea:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00311ee:	88 55 f8             	mov    %dl,-0x8(%ebp)
c00311f1:	8a 45 f8             	mov    -0x8(%ebp),%al
c00311f4:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00311f7:	ee                   	out    %al,(%dx)
c00311f8:	90                   	nop
c00311f9:	c9                   	leave  
c00311fa:	c3                   	ret    

c00311fb <init_i8259>:
c00311fb:	55                   	push   %ebp
c00311fc:	89 e5                	mov    %esp,%ebp
c00311fe:	e8 55 f1 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031203:	05 fd ad 00 00       	add    $0xadfd,%eax
c0031208:	68 ff 00 00 00       	push   $0xff
c003120d:	6a 21                	push   $0x21
c003120f:	e8 c0 ff ff ff       	call   c00311d4 <out_byte>
c0031214:	83 c4 08             	add    $0x8,%esp
c0031217:	68 ff 00 00 00       	push   $0xff
c003121c:	68 a1 00 00 00       	push   $0xa1
c0031221:	e8 ae ff ff ff       	call   c00311d4 <out_byte>
c0031226:	83 c4 08             	add    $0x8,%esp
c0031229:	6a 11                	push   $0x11
c003122b:	6a 20                	push   $0x20
c003122d:	e8 a2 ff ff ff       	call   c00311d4 <out_byte>
c0031232:	83 c4 08             	add    $0x8,%esp
c0031235:	6a 20                	push   $0x20
c0031237:	6a 21                	push   $0x21
c0031239:	e8 96 ff ff ff       	call   c00311d4 <out_byte>
c003123e:	83 c4 08             	add    $0x8,%esp
c0031241:	6a 04                	push   $0x4
c0031243:	6a 21                	push   $0x21
c0031245:	e8 8a ff ff ff       	call   c00311d4 <out_byte>
c003124a:	83 c4 08             	add    $0x8,%esp
c003124d:	6a 03                	push   $0x3
c003124f:	6a 21                	push   $0x21
c0031251:	e8 7e ff ff ff       	call   c00311d4 <out_byte>
c0031256:	83 c4 08             	add    $0x8,%esp
c0031259:	6a 11                	push   $0x11
c003125b:	68 a0 00 00 00       	push   $0xa0
c0031260:	e8 6f ff ff ff       	call   c00311d4 <out_byte>
c0031265:	83 c4 08             	add    $0x8,%esp
c0031268:	6a 28                	push   $0x28
c003126a:	68 a1 00 00 00       	push   $0xa1
c003126f:	e8 60 ff ff ff       	call   c00311d4 <out_byte>
c0031274:	83 c4 08             	add    $0x8,%esp
c0031277:	6a 02                	push   $0x2
c0031279:	68 a1 00 00 00       	push   $0xa1
c003127e:	e8 51 ff ff ff       	call   c00311d4 <out_byte>
c0031283:	83 c4 08             	add    $0x8,%esp
c0031286:	6a 03                	push   $0x3
c0031288:	68 a1 00 00 00       	push   $0xa1
c003128d:	e8 42 ff ff ff       	call   c00311d4 <out_byte>
c0031292:	83 c4 08             	add    $0x8,%esp
c0031295:	6a 68                	push   $0x68
c0031297:	6a 20                	push   $0x20
c0031299:	e8 36 ff ff ff       	call   c00311d4 <out_byte>
c003129e:	83 c4 08             	add    $0x8,%esp
c00312a1:	6a 0a                	push   $0xa
c00312a3:	6a 20                	push   $0x20
c00312a5:	e8 2a ff ff ff       	call   c00311d4 <out_byte>
c00312aa:	83 c4 08             	add    $0x8,%esp
c00312ad:	6a 68                	push   $0x68
c00312af:	68 a0 00 00 00       	push   $0xa0
c00312b4:	e8 1b ff ff ff       	call   c00311d4 <out_byte>
c00312b9:	83 c4 08             	add    $0x8,%esp
c00312bc:	6a 0a                	push   $0xa
c00312be:	68 a0 00 00 00       	push   $0xa0
c00312c3:	e8 0c ff ff ff       	call   c00311d4 <out_byte>
c00312c8:	83 c4 08             	add    $0x8,%esp
c00312cb:	90                   	nop
c00312cc:	c9                   	leave  
c00312cd:	c3                   	ret    

c00312ce <write_idtr>:
c00312ce:	55                   	push   %ebp
c00312cf:	89 e5                	mov    %esp,%ebp
c00312d1:	e8 82 f0 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c00312d6:	05 2a ad 00 00       	add    $0xad2a,%eax
c00312db:	8b 55 0c             	mov    0xc(%ebp),%edx
c00312de:	4a                   	dec    %edx
c00312df:	66 89 90 20 1c 01 00 	mov    %dx,0x11c20(%eax)
c00312e6:	8b 55 08             	mov    0x8(%ebp),%edx
c00312e9:	66 89 90 22 1c 01 00 	mov    %dx,0x11c22(%eax)
c00312f0:	8b 55 08             	mov    0x8(%ebp),%edx
c00312f3:	c1 ea 10             	shr    $0x10,%edx
c00312f6:	66 89 90 24 1c 01 00 	mov    %dx,0x11c24(%eax)
c00312fd:	8d 80 20 1c 01 00    	lea    0x11c20(%eax),%eax
c0031303:	0f 01 18             	lidtl  (%eax)
c0031306:	90                   	nop
c0031307:	5d                   	pop    %ebp
c0031308:	c3                   	ret    

c0031309 <sti>:
c0031309:	55                   	push   %ebp
c003130a:	89 e5                	mov    %esp,%ebp
c003130c:	e8 47 f0 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031311:	05 ef ac 00 00       	add    $0xacef,%eax
c0031316:	fb                   	sti    
c0031317:	90                   	nop
c0031318:	5d                   	pop    %ebp
c0031319:	c3                   	ret    

c003131a <set_intr>:
c003131a:	55                   	push   %ebp
c003131b:	89 e5                	mov    %esp,%ebp
c003131d:	e8 36 f0 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031322:	05 de ac 00 00       	add    $0xacde,%eax
c0031327:	8b 45 10             	mov    0x10(%ebp),%eax
c003132a:	8b 55 08             	mov    0x8(%ebp),%edx
c003132d:	66 89 02             	mov    %ax,(%edx)
c0031330:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031333:	8b 55 08             	mov    0x8(%ebp),%edx
c0031336:	66 89 42 02          	mov    %ax,0x2(%edx)
c003133a:	8b 45 08             	mov    0x8(%ebp),%eax
c003133d:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031341:	8b 45 08             	mov    0x8(%ebp),%eax
c0031344:	8a 50 05             	mov    0x5(%eax),%dl
c0031347:	83 e2 f0             	and    $0xfffffff0,%edx
c003134a:	83 ca 0e             	or     $0xe,%edx
c003134d:	88 50 05             	mov    %dl,0x5(%eax)
c0031350:	8b 45 08             	mov    0x8(%ebp),%eax
c0031353:	8a 50 05             	mov    0x5(%eax),%dl
c0031356:	83 e2 ef             	and    $0xffffffef,%edx
c0031359:	88 50 05             	mov    %dl,0x5(%eax)
c003135c:	8b 45 14             	mov    0x14(%ebp),%eax
c003135f:	83 e0 03             	and    $0x3,%eax
c0031362:	88 c2                	mov    %al,%dl
c0031364:	8b 45 08             	mov    0x8(%ebp),%eax
c0031367:	83 e2 03             	and    $0x3,%edx
c003136a:	88 d1                	mov    %dl,%cl
c003136c:	c1 e1 05             	shl    $0x5,%ecx
c003136f:	8a 50 05             	mov    0x5(%eax),%dl
c0031372:	83 e2 9f             	and    $0xffffff9f,%edx
c0031375:	09 ca                	or     %ecx,%edx
c0031377:	88 50 05             	mov    %dl,0x5(%eax)
c003137a:	8b 45 08             	mov    0x8(%ebp),%eax
c003137d:	8a 50 05             	mov    0x5(%eax),%dl
c0031380:	83 ca 80             	or     $0xffffff80,%edx
c0031383:	88 50 05             	mov    %dl,0x5(%eax)
c0031386:	8b 45 10             	mov    0x10(%ebp),%eax
c0031389:	c1 e8 10             	shr    $0x10,%eax
c003138c:	8b 55 08             	mov    0x8(%ebp),%edx
c003138f:	66 89 42 06          	mov    %ax,0x6(%edx)
c0031393:	90                   	nop
c0031394:	5d                   	pop    %ebp
c0031395:	c3                   	ret    

c0031396 <set_trap>:
c0031396:	55                   	push   %ebp
c0031397:	89 e5                	mov    %esp,%ebp
c0031399:	e8 ba ef ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c003139e:	05 62 ac 00 00       	add    $0xac62,%eax
c00313a3:	8b 45 10             	mov    0x10(%ebp),%eax
c00313a6:	8b 55 08             	mov    0x8(%ebp),%edx
c00313a9:	66 89 02             	mov    %ax,(%edx)
c00313ac:	8b 45 0c             	mov    0xc(%ebp),%eax
c00313af:	8b 55 08             	mov    0x8(%ebp),%edx
c00313b2:	66 89 42 02          	mov    %ax,0x2(%edx)
c00313b6:	8b 45 08             	mov    0x8(%ebp),%eax
c00313b9:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c00313bd:	8b 45 08             	mov    0x8(%ebp),%eax
c00313c0:	8a 50 05             	mov    0x5(%eax),%dl
c00313c3:	83 ca 0f             	or     $0xf,%edx
c00313c6:	88 50 05             	mov    %dl,0x5(%eax)
c00313c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00313cc:	8a 50 05             	mov    0x5(%eax),%dl
c00313cf:	83 e2 ef             	and    $0xffffffef,%edx
c00313d2:	88 50 05             	mov    %dl,0x5(%eax)
c00313d5:	8b 45 14             	mov    0x14(%ebp),%eax
c00313d8:	83 e0 03             	and    $0x3,%eax
c00313db:	88 c2                	mov    %al,%dl
c00313dd:	8b 45 08             	mov    0x8(%ebp),%eax
c00313e0:	83 e2 03             	and    $0x3,%edx
c00313e3:	88 d1                	mov    %dl,%cl
c00313e5:	c1 e1 05             	shl    $0x5,%ecx
c00313e8:	8a 50 05             	mov    0x5(%eax),%dl
c00313eb:	83 e2 9f             	and    $0xffffff9f,%edx
c00313ee:	09 ca                	or     %ecx,%edx
c00313f0:	88 50 05             	mov    %dl,0x5(%eax)
c00313f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00313f6:	8a 50 05             	mov    0x5(%eax),%dl
c00313f9:	83 ca 80             	or     $0xffffff80,%edx
c00313fc:	88 50 05             	mov    %dl,0x5(%eax)
c00313ff:	8b 45 10             	mov    0x10(%ebp),%eax
c0031402:	c1 e8 10             	shr    $0x10,%eax
c0031405:	8b 55 08             	mov    0x8(%ebp),%edx
c0031408:	66 89 42 06          	mov    %ax,0x6(%edx)
c003140c:	90                   	nop
c003140d:	5d                   	pop    %ebp
c003140e:	c3                   	ret    

c003140f <init_idt>:
c003140f:	55                   	push   %ebp
c0031410:	89 e5                	mov    %esp,%ebp
c0031412:	53                   	push   %ebx
c0031413:	83 ec 10             	sub    $0x10,%esp
c0031416:	e8 41 ef ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c003141b:	81 c3 e5 ab 00 00    	add    $0xabe5,%ebx
c0031421:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0031428:	eb 2b                	jmp    c0031455 <init_idt+0x46>
c003142a:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c0031430:	89 c2                	mov    %eax,%edx
c0031432:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0031435:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c003143c:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0031442:	01 c8                	add    %ecx,%eax
c0031444:	6a 00                	push   $0x0
c0031446:	52                   	push   %edx
c0031447:	6a 08                	push   $0x8
c0031449:	50                   	push   %eax
c003144a:	e8 47 ff ff ff       	call   c0031396 <set_trap>
c003144f:	83 c4 10             	add    $0x10,%esp
c0031452:	ff 45 f8             	incl   -0x8(%ebp)
c0031455:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c003145c:	7e cc                	jle    c003142a <init_idt+0x1b>
c003145e:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0031464:	6a 00                	push   $0x0
c0031466:	50                   	push   %eax
c0031467:	6a 08                	push   $0x8
c0031469:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c003146f:	50                   	push   %eax
c0031470:	e8 21 ff ff ff       	call   c0031396 <set_trap>
c0031475:	83 c4 10             	add    $0x10,%esp
c0031478:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c003147e:	89 c2                	mov    %eax,%edx
c0031480:	8d 83 28 14 01 00    	lea    0x11428(%ebx),%eax
c0031486:	6a 00                	push   $0x0
c0031488:	52                   	push   %edx
c0031489:	6a 08                	push   $0x8
c003148b:	50                   	push   %eax
c003148c:	e8 05 ff ff ff       	call   c0031396 <set_trap>
c0031491:	83 c4 10             	add    $0x10,%esp
c0031494:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c003149a:	89 c2                	mov    %eax,%edx
c003149c:	8d 83 30 14 01 00    	lea    0x11430(%ebx),%eax
c00314a2:	6a 00                	push   $0x0
c00314a4:	52                   	push   %edx
c00314a5:	6a 08                	push   $0x8
c00314a7:	50                   	push   %eax
c00314a8:	e8 e9 fe ff ff       	call   c0031396 <set_trap>
c00314ad:	83 c4 10             	add    $0x10,%esp
c00314b0:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c00314b6:	89 c2                	mov    %eax,%edx
c00314b8:	8d 83 38 14 01 00    	lea    0x11438(%ebx),%eax
c00314be:	6a 00                	push   $0x0
c00314c0:	52                   	push   %edx
c00314c1:	6a 08                	push   $0x8
c00314c3:	50                   	push   %eax
c00314c4:	e8 cd fe ff ff       	call   c0031396 <set_trap>
c00314c9:	83 c4 10             	add    $0x10,%esp
c00314cc:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c00314d2:	89 c2                	mov    %eax,%edx
c00314d4:	8d 83 40 14 01 00    	lea    0x11440(%ebx),%eax
c00314da:	6a 00                	push   $0x0
c00314dc:	52                   	push   %edx
c00314dd:	6a 08                	push   $0x8
c00314df:	50                   	push   %eax
c00314e0:	e8 b1 fe ff ff       	call   c0031396 <set_trap>
c00314e5:	83 c4 10             	add    $0x10,%esp
c00314e8:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c00314ee:	89 c2                	mov    %eax,%edx
c00314f0:	8d 83 48 14 01 00    	lea    0x11448(%ebx),%eax
c00314f6:	6a 00                	push   $0x0
c00314f8:	52                   	push   %edx
c00314f9:	6a 08                	push   $0x8
c00314fb:	50                   	push   %eax
c00314fc:	e8 95 fe ff ff       	call   c0031396 <set_trap>
c0031501:	83 c4 10             	add    $0x10,%esp
c0031504:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c003150a:	89 c2                	mov    %eax,%edx
c003150c:	8d 83 50 14 01 00    	lea    0x11450(%ebx),%eax
c0031512:	6a 00                	push   $0x0
c0031514:	52                   	push   %edx
c0031515:	6a 08                	push   $0x8
c0031517:	50                   	push   %eax
c0031518:	e8 79 fe ff ff       	call   c0031396 <set_trap>
c003151d:	83 c4 10             	add    $0x10,%esp
c0031520:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0031526:	89 c2                	mov    %eax,%edx
c0031528:	8d 83 58 14 01 00    	lea    0x11458(%ebx),%eax
c003152e:	6a 00                	push   $0x0
c0031530:	52                   	push   %edx
c0031531:	6a 08                	push   $0x8
c0031533:	50                   	push   %eax
c0031534:	e8 5d fe ff ff       	call   c0031396 <set_trap>
c0031539:	83 c4 10             	add    $0x10,%esp
c003153c:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c0031542:	89 c2                	mov    %eax,%edx
c0031544:	8d 83 60 14 01 00    	lea    0x11460(%ebx),%eax
c003154a:	6a 00                	push   $0x0
c003154c:	52                   	push   %edx
c003154d:	6a 08                	push   $0x8
c003154f:	50                   	push   %eax
c0031550:	e8 41 fe ff ff       	call   c0031396 <set_trap>
c0031555:	83 c4 10             	add    $0x10,%esp
c0031558:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c003155e:	89 c2                	mov    %eax,%edx
c0031560:	8d 83 68 14 01 00    	lea    0x11468(%ebx),%eax
c0031566:	6a 00                	push   $0x0
c0031568:	52                   	push   %edx
c0031569:	6a 08                	push   $0x8
c003156b:	50                   	push   %eax
c003156c:	e8 25 fe ff ff       	call   c0031396 <set_trap>
c0031571:	83 c4 10             	add    $0x10,%esp
c0031574:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c003157a:	89 c2                	mov    %eax,%edx
c003157c:	8d 83 70 14 01 00    	lea    0x11470(%ebx),%eax
c0031582:	6a 00                	push   $0x0
c0031584:	52                   	push   %edx
c0031585:	6a 08                	push   $0x8
c0031587:	50                   	push   %eax
c0031588:	e8 09 fe ff ff       	call   c0031396 <set_trap>
c003158d:	83 c4 10             	add    $0x10,%esp
c0031590:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c0031596:	89 c2                	mov    %eax,%edx
c0031598:	8d 83 78 14 01 00    	lea    0x11478(%ebx),%eax
c003159e:	6a 00                	push   $0x0
c00315a0:	52                   	push   %edx
c00315a1:	6a 08                	push   $0x8
c00315a3:	50                   	push   %eax
c00315a4:	e8 ed fd ff ff       	call   c0031396 <set_trap>
c00315a9:	83 c4 10             	add    $0x10,%esp
c00315ac:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c00315b2:	89 c2                	mov    %eax,%edx
c00315b4:	8d 83 80 14 01 00    	lea    0x11480(%ebx),%eax
c00315ba:	6a 00                	push   $0x0
c00315bc:	52                   	push   %edx
c00315bd:	6a 08                	push   $0x8
c00315bf:	50                   	push   %eax
c00315c0:	e8 d1 fd ff ff       	call   c0031396 <set_trap>
c00315c5:	83 c4 10             	add    $0x10,%esp
c00315c8:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c00315ce:	89 c2                	mov    %eax,%edx
c00315d0:	8d 83 88 14 01 00    	lea    0x11488(%ebx),%eax
c00315d6:	6a 00                	push   $0x0
c00315d8:	52                   	push   %edx
c00315d9:	6a 08                	push   $0x8
c00315db:	50                   	push   %eax
c00315dc:	e8 b5 fd ff ff       	call   c0031396 <set_trap>
c00315e1:	83 c4 10             	add    $0x10,%esp
c00315e4:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c00315ea:	89 c2                	mov    %eax,%edx
c00315ec:	8d 83 90 14 01 00    	lea    0x11490(%ebx),%eax
c00315f2:	6a 00                	push   $0x0
c00315f4:	52                   	push   %edx
c00315f5:	6a 08                	push   $0x8
c00315f7:	50                   	push   %eax
c00315f8:	e8 99 fd ff ff       	call   c0031396 <set_trap>
c00315fd:	83 c4 10             	add    $0x10,%esp
c0031600:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0031606:	89 c2                	mov    %eax,%edx
c0031608:	8d 83 20 18 01 00    	lea    0x11820(%ebx),%eax
c003160e:	6a 03                	push   $0x3
c0031610:	52                   	push   %edx
c0031611:	6a 08                	push   $0x8
c0031613:	50                   	push   %eax
c0031614:	e8 7d fd ff ff       	call   c0031396 <set_trap>
c0031619:	83 c4 10             	add    $0x10,%esp
c003161c:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c0031622:	89 c2                	mov    %eax,%edx
c0031624:	8d 83 20 15 01 00    	lea    0x11520(%ebx),%eax
c003162a:	6a 00                	push   $0x0
c003162c:	52                   	push   %edx
c003162d:	6a 08                	push   $0x8
c003162f:	50                   	push   %eax
c0031630:	e8 e5 fc ff ff       	call   c003131a <set_intr>
c0031635:	83 c4 10             	add    $0x10,%esp
c0031638:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c003163e:	89 c2                	mov    %eax,%edx
c0031640:	8d 83 28 15 01 00    	lea    0x11528(%ebx),%eax
c0031646:	6a 00                	push   $0x0
c0031648:	52                   	push   %edx
c0031649:	6a 08                	push   $0x8
c003164b:	50                   	push   %eax
c003164c:	e8 c9 fc ff ff       	call   c003131a <set_intr>
c0031651:	83 c4 10             	add    $0x10,%esp
c0031654:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c003165a:	89 c2                	mov    %eax,%edx
c003165c:	8d 83 90 15 01 00    	lea    0x11590(%ebx),%eax
c0031662:	6a 00                	push   $0x0
c0031664:	52                   	push   %edx
c0031665:	6a 08                	push   $0x8
c0031667:	50                   	push   %eax
c0031668:	e8 ad fc ff ff       	call   c003131a <set_intr>
c003166d:	83 c4 10             	add    $0x10,%esp
c0031670:	68 00 08 00 00       	push   $0x800
c0031675:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c003167b:	50                   	push   %eax
c003167c:	e8 4d fc ff ff       	call   c00312ce <write_idtr>
c0031681:	83 c4 08             	add    $0x8,%esp
c0031684:	e8 80 fc ff ff       	call   c0031309 <sti>
c0031689:	90                   	nop
c003168a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003168d:	c9                   	leave  
c003168e:	c3                   	ret    

c003168f <add_irq_handle>:
c003168f:	55                   	push   %ebp
c0031690:	89 e5                	mov    %esp,%ebp
c0031692:	53                   	push   %ebx
c0031693:	83 ec 14             	sub    $0x14,%esp
c0031696:	e8 c1 ec ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c003169b:	81 c3 65 a9 00 00    	add    $0xa965,%ebx
c00316a1:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c00316a5:	7e 2f                	jle    c00316d6 <add_irq_handle+0x47>
c00316a7:	83 ec 0c             	sub    $0xc,%esp
c00316aa:	8d 83 7c ce ff ff    	lea    -0x3184(%ebx),%eax
c00316b0:	50                   	push   %eax
c00316b1:	8d 83 c8 cf ff ff    	lea    -0x3038(%ebx),%eax
c00316b7:	50                   	push   %eax
c00316b8:	6a 16                	push   $0x16
c00316ba:	8d 83 8f ce ff ff    	lea    -0x3171(%ebx),%eax
c00316c0:	50                   	push   %eax
c00316c1:	8d 83 a4 ce ff ff    	lea    -0x315c(%ebx),%eax
c00316c7:	50                   	push   %eax
c00316c8:	e8 ed 07 00 00       	call   c0031eba <printk>
c00316cd:	83 c4 20             	add    $0x20,%esp
c00316d0:	b8 01 00 00 00       	mov    $0x1,%eax
c00316d5:	82 8b 83 80 1d 01 00 	orb    $0x0,0x11d8083(%ebx)
c00316dc:	83 f8 20             	cmp    $0x20,%eax
c00316df:	7e 2f                	jle    c0031710 <add_irq_handle+0x81>
c00316e1:	83 ec 0c             	sub    $0xc,%esp
c00316e4:	8d 83 ee ce ff ff    	lea    -0x3112(%ebx),%eax
c00316ea:	50                   	push   %eax
c00316eb:	8d 83 c8 cf ff ff    	lea    -0x3038(%ebx),%eax
c00316f1:	50                   	push   %eax
c00316f2:	6a 17                	push   $0x17
c00316f4:	8d 83 8f ce ff ff    	lea    -0x3171(%ebx),%eax
c00316fa:	50                   	push   %eax
c00316fb:	8d 83 a4 ce ff ff    	lea    -0x315c(%ebx),%eax
c0031701:	50                   	push   %eax
c0031702:	e8 b3 07 00 00       	call   c0031eba <printk>
c0031707:	83 c4 20             	add    $0x20,%esp
c003170a:	b8 01 00 00 00       	mov    $0x1,%eax
c003170f:	82 8b 83 80 1d 01 00 	orb    $0x0,0x11d8083(%ebx)
c0031716:	8d 50 01             	lea    0x1(%eax),%edx
c0031719:	89 93 80 1d 01 00    	mov    %edx,0x11d80(%ebx)
c003171f:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0031726:	8d 83 40 1c 01 00    	lea    0x11c40(%ebx),%eax
c003172c:	01 d0                	add    %edx,%eax
c003172e:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031731:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031734:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031737:	89 10                	mov    %edx,(%eax)
c0031739:	8b 45 08             	mov    0x8(%ebp),%eax
c003173c:	8b 94 83 40 1d 01 00 	mov    0x11d40(%ebx,%eax,4),%edx
c0031743:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031746:	89 50 04             	mov    %edx,0x4(%eax)
c0031749:	8b 45 08             	mov    0x8(%ebp),%eax
c003174c:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003174f:	89 94 83 40 1d 01 00 	mov    %edx,0x11d40(%ebx,%eax,4)
c0031756:	90                   	nop
c0031757:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003175a:	c9                   	leave  
c003175b:	c3                   	ret    

c003175c <irq_handle>:
c003175c:	55                   	push   %ebp
c003175d:	89 e5                	mov    %esp,%ebp
c003175f:	53                   	push   %ebx
c0031760:	83 ec 14             	sub    $0x14,%esp
c0031763:	e8 f4 eb ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0031768:	81 c3 98 a8 00 00    	add    $0xa898,%ebx
c003176e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031771:	8b 40 20             	mov    0x20(%eax),%eax
c0031774:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031777:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c003177b:	79 2a                	jns    c00317a7 <irq_handle+0x4b>
c003177d:	8d 83 d8 cf ff ff    	lea    -0x3028(%ebx),%eax
c0031783:	50                   	push   %eax
c0031784:	6a 24                	push   $0x24
c0031786:	8d 83 8f ce ff ff    	lea    -0x3171(%ebx),%eax
c003178c:	50                   	push   %eax
c003178d:	8d 83 0c cf ff ff    	lea    -0x30f4(%ebx),%eax
c0031793:	50                   	push   %eax
c0031794:	e8 21 07 00 00       	call   c0031eba <printk>
c0031799:	83 c4 10             	add    $0x10,%esp
c003179c:	b8 01 00 00 00       	mov    $0x1,%eax
c00317a1:	82 e9 c7             	sub    $0xc7,%cl
c00317a4:	00 00                	add    %al,(%eax)
c00317a6:	00 81 7d f0 80 00    	add    %al,0x80f07d(%ecx)
c00317ac:	00 00                	add    %al,(%eax)
c00317ae:	75 13                	jne    c00317c3 <irq_handle+0x67>
c00317b0:	83 ec 0c             	sub    $0xc,%esp
c00317b3:	ff 75 08             	pushl  0x8(%ebp)
c00317b6:	e8 af ea ff ff       	call   c003026a <do_syscall>
c00317bb:	83 c4 10             	add    $0x10,%esp
c00317be:	e9 ab 00 00 00       	jmp    c003186e <irq_handle+0x112>
c00317c3:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c00317ca:	7f 34                	jg     c0031800 <irq_handle+0xa4>
c00317cc:	8b 45 08             	mov    0x8(%ebp),%eax
c00317cf:	8b 40 28             	mov    0x28(%eax),%eax
c00317d2:	83 ec 08             	sub    $0x8,%esp
c00317d5:	50                   	push   %eax
c00317d6:	ff 75 f0             	pushl  -0x10(%ebp)
c00317d9:	8d 83 d8 cf ff ff    	lea    -0x3028(%ebx),%eax
c00317df:	50                   	push   %eax
c00317e0:	6a 28                	push   $0x28
c00317e2:	8d 83 8f ce ff ff    	lea    -0x3171(%ebx),%eax
c00317e8:	50                   	push   %eax
c00317e9:	8d 83 58 cf ff ff    	lea    -0x30a8(%ebx),%eax
c00317ef:	50                   	push   %eax
c00317f0:	e8 c5 06 00 00       	call   c0031eba <printk>
c00317f5:	83 c4 20             	add    $0x20,%esp
c00317f8:	b8 01 00 00 00       	mov    $0x1,%eax
c00317fd:	82 eb 6e             	sub    $0x6e,%bl
c0031800:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0031807:	7e 65                	jle    c003186e <irq_handle+0x112>
c0031809:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003180c:	2d e8 03 00 00       	sub    $0x3e8,%eax
c0031811:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0031814:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c0031818:	7e 2f                	jle    c0031849 <irq_handle+0xed>
c003181a:	83 ec 0c             	sub    $0xc,%esp
c003181d:	8d 83 b2 cf ff ff    	lea    -0x304e(%ebx),%eax
c0031823:	50                   	push   %eax
c0031824:	8d 83 d8 cf ff ff    	lea    -0x3028(%ebx),%eax
c003182a:	50                   	push   %eax
c003182b:	6a 2b                	push   $0x2b
c003182d:	8d 83 8f ce ff ff    	lea    -0x3171(%ebx),%eax
c0031833:	50                   	push   %eax
c0031834:	8d 83 a4 ce ff ff    	lea    -0x315c(%ebx),%eax
c003183a:	50                   	push   %eax
c003183b:	e8 7a 06 00 00       	call   c0031eba <printk>
c0031840:	83 c4 20             	add    $0x20,%esp
c0031843:	b8 01 00 00 00       	mov    $0x1,%eax
c0031848:	82 8b 45 ec 8b 84 83 	orb    $0x83,-0x7b7413bb(%ebx)
c003184f:	40                   	inc    %eax
c0031850:	1d 01 00 89 45       	sbb    $0x45890001,%eax
c0031855:	f4                   	hlt    
c0031856:	eb 10                	jmp    c0031868 <irq_handle+0x10c>
c0031858:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003185b:	8b 00                	mov    (%eax),%eax
c003185d:	ff d0                	call   *%eax
c003185f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031862:	8b 40 04             	mov    0x4(%eax),%eax
c0031865:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031868:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c003186c:	75 ea                	jne    c0031858 <irq_handle+0xfc>
c003186e:	90                   	nop
c003186f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031872:	c9                   	leave  
c0031873:	c3                   	ret    

c0031874 <sti>:
c0031874:	55                   	push   %ebp
c0031875:	89 e5                	mov    %esp,%ebp
c0031877:	e8 dc ea ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c003187c:	05 84 a7 00 00       	add    $0xa784,%eax
c0031881:	fb                   	sti    
c0031882:	90                   	nop
c0031883:	5d                   	pop    %ebp
c0031884:	c3                   	ret    

c0031885 <init>:
c0031885:	55                   	push   %ebp
c0031886:	89 e5                	mov    %esp,%ebp
c0031888:	53                   	push   %ebx
c0031889:	83 ec 04             	sub    $0x4,%esp
c003188c:	e8 cb ea ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0031891:	81 c3 6f a7 00 00    	add    $0xa76f,%ebx
c0031897:	e8 23 01 00 00       	call   c00319bf <init_page>
c003189c:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c00318a2:	8d 83 b7 58 ff bf    	lea    -0x4000a749(%ebx),%eax
c00318a8:	ff e0                	jmp    *%eax
c00318aa:	b8 01 00 00 00       	mov    $0x1,%eax
c00318af:	82 90 83 c4 04 5b 5d 	adcb   $0x5d,0x5b04c483(%eax)
c00318b6:	c3                   	ret    

c00318b7 <init_cond>:
c00318b7:	55                   	push   %ebp
c00318b8:	89 e5                	mov    %esp,%ebp
c00318ba:	53                   	push   %ebx
c00318bb:	83 ec 14             	sub    $0x14,%esp
c00318be:	e8 99 ea ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c00318c3:	81 c3 3d a7 00 00    	add    $0xa73d,%ebx
c00318c9:	e8 d0 02 00 00       	call   c0031b9e <init_segment>
c00318ce:	e8 3c fb ff ff       	call   c003140f <init_idt>
c00318d3:	e8 9c ff ff ff       	call   c0031874 <sti>
c00318d8:	e8 52 f5 ff ff       	call   c0030e2f <init_ide>
c00318dd:	e8 13 05 00 00       	call   c0031df5 <init_mm>
c00318e2:	8d 83 24 d0 ff ff    	lea    -0x2fdc(%ebx),%eax
c00318e8:	50                   	push   %eax
c00318e9:	6a 4b                	push   $0x4b
c00318eb:	8d 83 e4 cf ff ff    	lea    -0x301c(%ebx),%eax
c00318f1:	50                   	push   %eax
c00318f2:	8d 83 f0 cf ff ff    	lea    -0x3010(%ebx),%eax
c00318f8:	50                   	push   %eax
c00318f9:	e8 bc 05 00 00       	call   c0031eba <printk>
c00318fe:	83 c4 10             	add    $0x10,%esp
c0031901:	e8 87 03 00 00       	call   c0031c8d <video_mapping_write_test>
c0031906:	e8 41 f0 ff ff       	call   c003094c <loader>
c003190b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003190e:	e8 bd 03 00 00       	call   c0031cd0 <video_mapping_read_test>
c0031913:	e8 33 04 00 00       	call   c0031d4b <video_mapping_clear>
c0031918:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c003191d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031920:	ff d0                	call   *%eax
c0031922:	90                   	nop
c0031923:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031926:	c9                   	leave  
c0031927:	c3                   	ret    

c0031928 <read_cr0>:
c0031928:	55                   	push   %ebp
c0031929:	89 e5                	mov    %esp,%ebp
c003192b:	83 ec 10             	sub    $0x10,%esp
c003192e:	e8 25 ea ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031933:	05 cd a6 00 00       	add    $0xa6cd,%eax
c0031938:	0f 20 c0             	mov    %cr0,%eax
c003193b:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003193e:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031941:	c9                   	leave  
c0031942:	c3                   	ret    

c0031943 <write_cr0>:
c0031943:	55                   	push   %ebp
c0031944:	89 e5                	mov    %esp,%ebp
c0031946:	e8 0d ea ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c003194b:	05 b5 a6 00 00       	add    $0xa6b5,%eax
c0031950:	8b 45 08             	mov    0x8(%ebp),%eax
c0031953:	0f 22 c0             	mov    %eax,%cr0
c0031956:	90                   	nop
c0031957:	5d                   	pop    %ebp
c0031958:	c3                   	ret    

c0031959 <write_cr3>:
c0031959:	55                   	push   %ebp
c003195a:	89 e5                	mov    %esp,%ebp
c003195c:	e8 f7 e9 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031961:	05 9f a6 00 00       	add    $0xa69f,%eax
c0031966:	8b 45 08             	mov    0x8(%ebp),%eax
c0031969:	0f 22 d8             	mov    %eax,%cr3
c003196c:	90                   	nop
c003196d:	5d                   	pop    %ebp
c003196e:	c3                   	ret    

c003196f <write_gdtr>:
c003196f:	55                   	push   %ebp
c0031970:	89 e5                	mov    %esp,%ebp
c0031972:	e8 e1 e9 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031977:	05 89 a6 00 00       	add    $0xa689,%eax
c003197c:	8b 55 0c             	mov    0xc(%ebp),%edx
c003197f:	4a                   	dec    %edx
c0031980:	66 89 90 84 1d 01 00 	mov    %dx,0x11d84(%eax)
c0031987:	8b 55 08             	mov    0x8(%ebp),%edx
c003198a:	66 89 90 86 1d 01 00 	mov    %dx,0x11d86(%eax)
c0031991:	8b 55 08             	mov    0x8(%ebp),%edx
c0031994:	c1 ea 10             	shr    $0x10,%edx
c0031997:	66 89 90 88 1d 01 00 	mov    %dx,0x11d88(%eax)
c003199e:	8d 80 84 1d 01 00    	lea    0x11d84(%eax),%eax
c00319a4:	0f 01 10             	lgdtl  (%eax)
c00319a7:	90                   	nop
c00319a8:	5d                   	pop    %ebp
c00319a9:	c3                   	ret    

c00319aa <get_kpdir>:
c00319aa:	55                   	push   %ebp
c00319ab:	89 e5                	mov    %esp,%ebp
c00319ad:	e8 a6 e9 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c00319b2:	05 4e a6 00 00       	add    $0xa64e,%eax
c00319b7:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00319bd:	5d                   	pop    %ebp
c00319be:	c3                   	ret    

c00319bf <init_page>:
c00319bf:	55                   	push   %ebp
c00319c0:	89 e5                	mov    %esp,%ebp
c00319c2:	53                   	push   %ebx
c00319c3:	83 ec 24             	sub    $0x24,%esp
c00319c6:	e8 8d e9 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c00319cb:	05 35 a6 00 00       	add    $0xa635,%eax
c00319d0:	c7 c2 00 10 07 c0    	mov    $0xc0071000,%edx
c00319d6:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00319dc:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00319df:	c7 c2 00 20 07 c0    	mov    $0xc0072000,%edx
c00319e5:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00319eb:	89 55 f4             	mov    %edx,-0xc(%ebp)
c00319ee:	83 ec 04             	sub    $0x4,%esp
c00319f1:	68 00 10 00 00       	push   $0x1000
c00319f6:	6a 00                	push   $0x0
c00319f8:	ff 75 e4             	pushl  -0x1c(%ebp)
c00319fb:	89 c3                	mov    %eax,%ebx
c00319fd:	e8 aa 08 00 00       	call   c00322ac <memset>
c0031a02:	83 c4 10             	add    $0x10,%esp
c0031a05:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0031a0c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0031a13:	eb 6e                	jmp    c0031a83 <init_page+0xc4>
c0031a15:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031a18:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031a1f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031a22:	01 d0                	add    %edx,%eax
c0031a24:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031a27:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031a2d:	83 ca 07             	or     $0x7,%edx
c0031a30:	89 10                	mov    %edx,(%eax)
c0031a32:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031a35:	05 00 03 00 00       	add    $0x300,%eax
c0031a3a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031a41:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031a44:	01 d0                	add    %edx,%eax
c0031a46:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031a49:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031a4f:	83 ca 07             	or     $0x7,%edx
c0031a52:	89 10                	mov    %edx,(%eax)
c0031a54:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0031a5b:	eb 1a                	jmp    c0031a77 <init_page+0xb8>
c0031a5d:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031a60:	c1 e0 0c             	shl    $0xc,%eax
c0031a63:	83 c8 07             	or     $0x7,%eax
c0031a66:	89 c2                	mov    %eax,%edx
c0031a68:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031a6b:	89 10                	mov    %edx,(%eax)
c0031a6d:	ff 45 e8             	incl   -0x18(%ebp)
c0031a70:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0031a74:	ff 45 ec             	incl   -0x14(%ebp)
c0031a77:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c0031a7e:	76 dd                	jbe    c0031a5d <init_page+0x9e>
c0031a80:	ff 45 f0             	incl   -0x10(%ebp)
c0031a83:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c0031a87:	76 8c                	jbe    c0031a15 <init_page+0x56>
c0031a89:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0031a90:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031a93:	c1 e8 0c             	shr    $0xc,%eax
c0031a96:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0031a9b:	c1 e0 0c             	shl    $0xc,%eax
c0031a9e:	89 c2                	mov    %eax,%edx
c0031aa0:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0031aa3:	25 ff 0f 00 00       	and    $0xfff,%eax
c0031aa8:	09 d0                	or     %edx,%eax
c0031aaa:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031aad:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0031ab0:	83 ec 0c             	sub    $0xc,%esp
c0031ab3:	50                   	push   %eax
c0031ab4:	e8 a0 fe ff ff       	call   c0031959 <write_cr3>
c0031ab9:	83 c4 10             	add    $0x10,%esp
c0031abc:	e8 67 fe ff ff       	call   c0031928 <read_cr0>
c0031ac1:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0031ac4:	8a 45 e3             	mov    -0x1d(%ebp),%al
c0031ac7:	83 c8 80             	or     $0xffffff80,%eax
c0031aca:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0031acd:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031ad0:	83 ec 0c             	sub    $0xc,%esp
c0031ad3:	50                   	push   %eax
c0031ad4:	e8 6a fe ff ff       	call   c0031943 <write_cr0>
c0031ad9:	83 c4 10             	add    $0x10,%esp
c0031adc:	90                   	nop
c0031add:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031ae0:	c9                   	leave  
c0031ae1:	c3                   	ret    

c0031ae2 <set_segment>:
c0031ae2:	55                   	push   %ebp
c0031ae3:	89 e5                	mov    %esp,%ebp
c0031ae5:	e8 6e e8 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031aea:	05 16 a5 00 00       	add    $0xa516,%eax
c0031aef:	8b 45 08             	mov    0x8(%ebp),%eax
c0031af2:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0031af7:	8b 45 08             	mov    0x8(%ebp),%eax
c0031afa:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0031b00:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b03:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031b07:	8b 45 10             	mov    0x10(%ebp),%eax
c0031b0a:	83 e0 0f             	and    $0xf,%eax
c0031b0d:	88 c2                	mov    %al,%dl
c0031b0f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b12:	88 d1                	mov    %dl,%cl
c0031b14:	83 e1 0f             	and    $0xf,%ecx
c0031b17:	8a 50 05             	mov    0x5(%eax),%dl
c0031b1a:	83 e2 f0             	and    $0xfffffff0,%edx
c0031b1d:	09 ca                	or     %ecx,%edx
c0031b1f:	88 50 05             	mov    %dl,0x5(%eax)
c0031b22:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b25:	8a 50 05             	mov    0x5(%eax),%dl
c0031b28:	83 ca 10             	or     $0x10,%edx
c0031b2b:	88 50 05             	mov    %dl,0x5(%eax)
c0031b2e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031b31:	83 e0 03             	and    $0x3,%eax
c0031b34:	88 c2                	mov    %al,%dl
c0031b36:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b39:	83 e2 03             	and    $0x3,%edx
c0031b3c:	88 d1                	mov    %dl,%cl
c0031b3e:	c1 e1 05             	shl    $0x5,%ecx
c0031b41:	8a 50 05             	mov    0x5(%eax),%dl
c0031b44:	83 e2 9f             	and    $0xffffff9f,%edx
c0031b47:	09 ca                	or     %ecx,%edx
c0031b49:	88 50 05             	mov    %dl,0x5(%eax)
c0031b4c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b4f:	8a 50 05             	mov    0x5(%eax),%dl
c0031b52:	83 ca 80             	or     $0xffffff80,%edx
c0031b55:	88 50 05             	mov    %dl,0x5(%eax)
c0031b58:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b5b:	8a 50 06             	mov    0x6(%eax),%dl
c0031b5e:	83 ca 0f             	or     $0xf,%edx
c0031b61:	88 50 06             	mov    %dl,0x6(%eax)
c0031b64:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b67:	8a 50 06             	mov    0x6(%eax),%dl
c0031b6a:	83 e2 ef             	and    $0xffffffef,%edx
c0031b6d:	88 50 06             	mov    %dl,0x6(%eax)
c0031b70:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b73:	8a 50 06             	mov    0x6(%eax),%dl
c0031b76:	83 e2 df             	and    $0xffffffdf,%edx
c0031b79:	88 50 06             	mov    %dl,0x6(%eax)
c0031b7c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b7f:	8a 50 06             	mov    0x6(%eax),%dl
c0031b82:	83 ca 40             	or     $0x40,%edx
c0031b85:	88 50 06             	mov    %dl,0x6(%eax)
c0031b88:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b8b:	8a 50 06             	mov    0x6(%eax),%dl
c0031b8e:	83 ca 80             	or     $0xffffff80,%edx
c0031b91:	88 50 06             	mov    %dl,0x6(%eax)
c0031b94:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b97:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0031b9b:	90                   	nop
c0031b9c:	5d                   	pop    %ebp
c0031b9d:	c3                   	ret    

c0031b9e <init_segment>:
c0031b9e:	55                   	push   %ebp
c0031b9f:	89 e5                	mov    %esp,%ebp
c0031ba1:	53                   	push   %ebx
c0031ba2:	83 ec 04             	sub    $0x4,%esp
c0031ba5:	e8 b2 e7 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0031baa:	81 c3 56 a4 00 00    	add    $0xa456,%ebx
c0031bb0:	83 ec 04             	sub    $0x4,%esp
c0031bb3:	6a 18                	push   $0x18
c0031bb5:	6a 00                	push   $0x0
c0031bb7:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031bbd:	50                   	push   %eax
c0031bbe:	e8 e9 06 00 00       	call   c00322ac <memset>
c0031bc3:	83 c4 10             	add    $0x10,%esp
c0031bc6:	83 ec 04             	sub    $0x4,%esp
c0031bc9:	6a 0a                	push   $0xa
c0031bcb:	6a 00                	push   $0x0
c0031bcd:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031bd3:	8d 40 08             	lea    0x8(%eax),%eax
c0031bd6:	50                   	push   %eax
c0031bd7:	e8 06 ff ff ff       	call   c0031ae2 <set_segment>
c0031bdc:	83 c4 10             	add    $0x10,%esp
c0031bdf:	83 ec 04             	sub    $0x4,%esp
c0031be2:	6a 02                	push   $0x2
c0031be4:	6a 00                	push   $0x0
c0031be6:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031bec:	8d 40 10             	lea    0x10(%eax),%eax
c0031bef:	50                   	push   %eax
c0031bf0:	e8 ed fe ff ff       	call   c0031ae2 <set_segment>
c0031bf5:	83 c4 10             	add    $0x10,%esp
c0031bf8:	83 ec 08             	sub    $0x8,%esp
c0031bfb:	6a 18                	push   $0x18
c0031bfd:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031c03:	50                   	push   %eax
c0031c04:	e8 66 fd ff ff       	call   c003196f <write_gdtr>
c0031c09:	83 c4 10             	add    $0x10,%esp
c0031c0c:	90                   	nop
c0031c0d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031c10:	c9                   	leave  
c0031c11:	c3                   	ret    

c0031c12 <create_video_mapping>:
c0031c12:	55                   	push   %ebp
c0031c13:	89 e5                	mov    %esp,%ebp
c0031c15:	53                   	push   %ebx
c0031c16:	83 ec 14             	sub    $0x14,%esp
c0031c19:	e8 3e e7 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0031c1e:	81 c3 e2 a3 00 00    	add    $0xa3e2,%ebx
c0031c24:	e8 52 01 00 00       	call   c0031d7b <get_updir>
c0031c29:	05 00 00 00 40       	add    $0x40000000,%eax
c0031c2e:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0031c31:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0031c37:	8d 80 80 02 00 00    	lea    0x280(%eax),%eax
c0031c3d:	05 00 00 00 40       	add    $0x40000000,%eax
c0031c42:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031c45:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031c48:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c4d:	83 c8 07             	or     $0x7,%eax
c0031c50:	89 c2                	mov    %eax,%edx
c0031c52:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031c55:	89 10                	mov    %edx,(%eax)
c0031c57:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c0031c5e:	eb 1d                	jmp    c0031c7d <create_video_mapping+0x6b>
c0031c60:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031c63:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c68:	83 c8 07             	or     $0x7,%eax
c0031c6b:	89 c2                	mov    %eax,%edx
c0031c6d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031c70:	89 10                	mov    %edx,(%eax)
c0031c72:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0031c76:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
c0031c7d:	81 7d f0 ff 09 0b 00 	cmpl   $0xb09ff,-0x10(%ebp)
c0031c84:	76 da                	jbe    c0031c60 <create_video_mapping+0x4e>
c0031c86:	90                   	nop
c0031c87:	83 c4 14             	add    $0x14,%esp
c0031c8a:	5b                   	pop    %ebx
c0031c8b:	5d                   	pop    %ebp
c0031c8c:	c3                   	ret    

c0031c8d <video_mapping_write_test>:
c0031c8d:	55                   	push   %ebp
c0031c8e:	89 e5                	mov    %esp,%ebp
c0031c90:	83 ec 10             	sub    $0x10,%esp
c0031c93:	e8 c0 e6 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031c98:	05 68 a3 00 00       	add    $0xa368,%eax
c0031c9d:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c0031ca4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0031cab:	eb 17                	jmp    c0031cc4 <video_mapping_write_test+0x37>
c0031cad:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031cb0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031cb7:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0031cba:	01 c2                	add    %eax,%edx
c0031cbc:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031cbf:	89 02                	mov    %eax,(%edx)
c0031cc1:	ff 45 fc             	incl   -0x4(%ebp)
c0031cc4:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c0031ccb:	7e e0                	jle    c0031cad <video_mapping_write_test+0x20>
c0031ccd:	90                   	nop
c0031cce:	c9                   	leave  
c0031ccf:	c3                   	ret    

c0031cd0 <video_mapping_read_test>:
c0031cd0:	55                   	push   %ebp
c0031cd1:	89 e5                	mov    %esp,%ebp
c0031cd3:	53                   	push   %ebx
c0031cd4:	83 ec 14             	sub    $0x14,%esp
c0031cd7:	e8 80 e6 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0031cdc:	81 c3 24 a3 00 00    	add    $0xa324,%ebx
c0031ce2:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c0031ce9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031cf0:	eb 4a                	jmp    c0031d3c <video_mapping_read_test+0x6c>
c0031cf2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031cf5:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031cfc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031cff:	01 d0                	add    %edx,%eax
c0031d01:	8b 10                	mov    (%eax),%edx
c0031d03:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031d06:	39 c2                	cmp    %eax,%edx
c0031d08:	74 2f                	je     c0031d39 <video_mapping_read_test+0x69>
c0031d0a:	83 ec 0c             	sub    $0xc,%esp
c0031d0d:	8d 83 30 d0 ff ff    	lea    -0x2fd0(%ebx),%eax
c0031d13:	50                   	push   %eax
c0031d14:	8d 83 9c d0 ff ff    	lea    -0x2f64(%ebx),%eax
c0031d1a:	50                   	push   %eax
c0031d1b:	6a 2b                	push   $0x2b
c0031d1d:	8d 83 3c d0 ff ff    	lea    -0x2fc4(%ebx),%eax
c0031d23:	50                   	push   %eax
c0031d24:	8d 83 50 d0 ff ff    	lea    -0x2fb0(%ebx),%eax
c0031d2a:	50                   	push   %eax
c0031d2b:	e8 8a 01 00 00       	call   c0031eba <printk>
c0031d30:	83 c4 20             	add    $0x20,%esp
c0031d33:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d38:	82 ff 45             	cmp    $0x45,%bh
c0031d3b:	f4                   	hlt    
c0031d3c:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c0031d43:	7e ad                	jle    c0031cf2 <video_mapping_read_test+0x22>
c0031d45:	90                   	nop
c0031d46:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031d49:	c9                   	leave  
c0031d4a:	c3                   	ret    

c0031d4b <video_mapping_clear>:
c0031d4b:	55                   	push   %ebp
c0031d4c:	89 e5                	mov    %esp,%ebp
c0031d4e:	53                   	push   %ebx
c0031d4f:	83 ec 04             	sub    $0x4,%esp
c0031d52:	e8 01 e6 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031d57:	05 a9 a2 00 00       	add    $0xa2a9,%eax
c0031d5c:	83 ec 04             	sub    $0x4,%esp
c0031d5f:	68 00 fa 00 00       	push   $0xfa00
c0031d64:	6a 00                	push   $0x0
c0031d66:	68 00 00 0a 00       	push   $0xa0000
c0031d6b:	89 c3                	mov    %eax,%ebx
c0031d6d:	e8 3a 05 00 00       	call   c00322ac <memset>
c0031d72:	83 c4 10             	add    $0x10,%esp
c0031d75:	90                   	nop
c0031d76:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031d79:	c9                   	leave  
c0031d7a:	c3                   	ret    

c0031d7b <get_updir>:
c0031d7b:	55                   	push   %ebp
c0031d7c:	89 e5                	mov    %esp,%ebp
c0031d7e:	e8 d5 e5 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031d83:	05 7d a2 00 00       	add    $0xa27d,%eax
c0031d88:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031d8e:	5d                   	pop    %ebp
c0031d8f:	c3                   	ret    

c0031d90 <get_ucr3>:
c0031d90:	55                   	push   %ebp
c0031d91:	89 e5                	mov    %esp,%ebp
c0031d93:	e8 c0 e5 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031d98:	05 68 a2 00 00       	add    $0xa268,%eax
c0031d9d:	c7 c0 00 40 09 c0    	mov    $0xc0094000,%eax
c0031da3:	8b 00                	mov    (%eax),%eax
c0031da5:	5d                   	pop    %ebp
c0031da6:	c3                   	ret    

c0031da7 <mm_brk>:
c0031da7:	55                   	push   %ebp
c0031da8:	89 e5                	mov    %esp,%ebp
c0031daa:	53                   	push   %ebx
c0031dab:	83 ec 04             	sub    $0x4,%esp
c0031dae:	e8 a9 e5 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0031db3:	81 c3 4d a2 00 00    	add    $0xa24d,%ebx
c0031db9:	8b 83 8c 1d 01 00    	mov    0x11d8c(%ebx),%eax
c0031dbf:	39 45 08             	cmp    %eax,0x8(%ebp)
c0031dc2:	76 22                	jbe    c0031de6 <mm_brk+0x3f>
c0031dc4:	8b 83 8c 1d 01 00    	mov    0x11d8c(%ebx),%eax
c0031dca:	8b 55 08             	mov    0x8(%ebp),%edx
c0031dcd:	29 c2                	sub    %eax,%edx
c0031dcf:	89 d0                	mov    %edx,%eax
c0031dd1:	89 c2                	mov    %eax,%edx
c0031dd3:	8b 83 8c 1d 01 00    	mov    0x11d8c(%ebx),%eax
c0031dd9:	83 ec 08             	sub    $0x8,%esp
c0031ddc:	52                   	push   %edx
c0031ddd:	50                   	push   %eax
c0031dde:	e8 ed 01 00 00       	call   c0031fd0 <mm_malloc>
c0031de3:	83 c4 10             	add    $0x10,%esp
c0031de6:	8b 45 08             	mov    0x8(%ebp),%eax
c0031de9:	89 83 8c 1d 01 00    	mov    %eax,0x11d8c(%ebx)
c0031def:	90                   	nop
c0031df0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031df3:	c9                   	leave  
c0031df4:	c3                   	ret    

c0031df5 <init_mm>:
c0031df5:	55                   	push   %ebp
c0031df6:	89 e5                	mov    %esp,%ebp
c0031df8:	53                   	push   %ebx
c0031df9:	83 ec 14             	sub    $0x14,%esp
c0031dfc:	e8 5b e5 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0031e01:	81 c3 ff a1 00 00    	add    $0xa1ff,%ebx
c0031e07:	e8 9e fb ff ff       	call   c00319aa <get_kpdir>
c0031e0c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031e0f:	83 ec 04             	sub    $0x4,%esp
c0031e12:	68 00 10 00 00       	push   $0x1000
c0031e17:	6a 00                	push   $0x0
c0031e19:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031e1f:	50                   	push   %eax
c0031e20:	e8 87 04 00 00       	call   c00322ac <memset>
c0031e25:	83 c4 10             	add    $0x10,%esp
c0031e28:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031e2b:	05 00 0c 00 00       	add    $0xc00,%eax
c0031e30:	83 ec 04             	sub    $0x4,%esp
c0031e33:	68 80 00 00 00       	push   $0x80
c0031e38:	50                   	push   %eax
c0031e39:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031e3f:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c0031e45:	50                   	push   %eax
c0031e46:	e8 19 04 00 00       	call   c0032264 <memcpy>
c0031e4b:	83 c4 10             	add    $0x10,%esp
c0031e4e:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c0031e54:	05 00 00 00 40       	add    $0x40000000,%eax
c0031e59:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0031e5e:	89 c2                	mov    %eax,%edx
c0031e60:	c7 c0 00 40 09 c0    	mov    $0xc0094000,%eax
c0031e66:	89 10                	mov    %edx,(%eax)
c0031e68:	90                   	nop
c0031e69:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031e6c:	c9                   	leave  
c0031e6d:	c3                   	ret    

c0031e6e <sbrk>:
c0031e6e:	55                   	push   %ebp
c0031e6f:	89 e5                	mov    %esp,%ebp
c0031e71:	53                   	push   %ebx
c0031e72:	83 ec 04             	sub    $0x4,%esp
c0031e75:	e8 de e4 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031e7a:	05 86 a1 00 00       	add    $0xa186,%eax
c0031e7f:	83 ec 0c             	sub    $0xc,%esp
c0031e82:	8d 90 b4 d0 ff ff    	lea    -0x2f4c(%eax),%edx
c0031e88:	52                   	push   %edx
c0031e89:	8d 90 14 d1 ff ff    	lea    -0x2eec(%eax),%edx
c0031e8f:	52                   	push   %edx
c0031e90:	6a 08                	push   $0x8
c0031e92:	8d 90 b6 d0 ff ff    	lea    -0x2f4a(%eax),%edx
c0031e98:	52                   	push   %edx
c0031e99:	8d 90 c8 d0 ff ff    	lea    -0x2f38(%eax),%edx
c0031e9f:	52                   	push   %edx
c0031ea0:	89 c3                	mov    %eax,%ebx
c0031ea2:	e8 13 00 00 00       	call   c0031eba <printk>
c0031ea7:	83 c4 20             	add    $0x20,%esp
c0031eaa:	b8 01 00 00 00       	mov    $0x1,%eax
c0031eaf:	82 b8 00 00 00 00 8b 	cmpb   $0x8b,0x0(%eax)
c0031eb6:	5d                   	pop    %ebp
c0031eb7:	fc                   	cld    
c0031eb8:	c9                   	leave  
c0031eb9:	c3                   	ret    

c0031eba <printk>:
c0031eba:	55                   	push   %ebp
c0031ebb:	89 e5                	mov    %esp,%ebp
c0031ebd:	53                   	push   %ebx
c0031ebe:	83 ec 14             	sub    $0x14,%esp
c0031ec1:	e8 96 e4 ff ff       	call   c003035c <__x86.get_pc_thunk.bx>
c0031ec6:	81 c3 3a a1 00 00    	add    $0xa13a,%ebx
c0031ecc:	8d 45 0c             	lea    0xc(%ebp),%eax
c0031ecf:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031ed2:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ed5:	ff 75 f4             	pushl  -0xc(%ebp)
c0031ed8:	50                   	push   %eax
c0031ed9:	68 00 01 00 00       	push   $0x100
c0031ede:	8d 83 a0 1d 01 00    	lea    0x11da0(%ebx),%eax
c0031ee4:	50                   	push   %eax
c0031ee5:	e8 56 05 00 00       	call   c0032440 <vsnprintf>
c0031eea:	83 c4 10             	add    $0x10,%esp
c0031eed:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031ef0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031ef3:	83 ec 04             	sub    $0x4,%esp
c0031ef6:	50                   	push   %eax
c0031ef7:	8d 83 a0 1d 01 00    	lea    0x11da0(%ebx),%eax
c0031efd:	50                   	push   %eax
c0031efe:	6a 01                	push   $0x1
c0031f00:	e8 39 e7 ff ff       	call   c003063e <fs_write>
c0031f05:	83 c4 10             	add    $0x10,%esp
c0031f08:	90                   	nop
c0031f09:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031f0c:	c9                   	leave  
c0031f0d:	c3                   	ret    

c0031f0e <in_byte>:
c0031f0e:	55                   	push   %ebp
c0031f0f:	89 e5                	mov    %esp,%ebp
c0031f11:	83 ec 14             	sub    $0x14,%esp
c0031f14:	e8 3f e4 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031f19:	05 e7 a0 00 00       	add    $0xa0e7,%eax
c0031f1e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031f21:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0031f25:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031f28:	89 c2                	mov    %eax,%edx
c0031f2a:	ec                   	in     (%dx),%al
c0031f2b:	88 45 ff             	mov    %al,-0x1(%ebp)
c0031f2e:	8a 45 ff             	mov    -0x1(%ebp),%al
c0031f31:	c9                   	leave  
c0031f32:	c3                   	ret    

c0031f33 <out_byte>:
c0031f33:	55                   	push   %ebp
c0031f34:	89 e5                	mov    %esp,%ebp
c0031f36:	83 ec 08             	sub    $0x8,%esp
c0031f39:	e8 1a e4 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031f3e:	05 c2 a0 00 00       	add    $0xa0c2,%eax
c0031f43:	8b 45 08             	mov    0x8(%ebp),%eax
c0031f46:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031f49:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0031f4d:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0031f50:	8a 45 f8             	mov    -0x8(%ebp),%al
c0031f53:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0031f56:	ee                   	out    %al,(%dx)
c0031f57:	90                   	nop
c0031f58:	c9                   	leave  
c0031f59:	c3                   	ret    

c0031f5a <init_serial>:
c0031f5a:	55                   	push   %ebp
c0031f5b:	89 e5                	mov    %esp,%ebp
c0031f5d:	e8 f6 e3 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031f62:	05 9e a0 00 00       	add    $0xa09e,%eax
c0031f67:	90                   	nop
c0031f68:	5d                   	pop    %ebp
c0031f69:	c3                   	ret    

c0031f6a <serial_idle>:
c0031f6a:	55                   	push   %ebp
c0031f6b:	89 e5                	mov    %esp,%ebp
c0031f6d:	e8 e6 e3 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031f72:	05 8e a0 00 00       	add    $0xa08e,%eax
c0031f77:	68 fd 03 00 00       	push   $0x3fd
c0031f7c:	e8 8d ff ff ff       	call   c0031f0e <in_byte>
c0031f81:	83 c4 04             	add    $0x4,%esp
c0031f84:	0f b6 c0             	movzbl %al,%eax
c0031f87:	83 e0 20             	and    $0x20,%eax
c0031f8a:	85 c0                	test   %eax,%eax
c0031f8c:	0f 95 c0             	setne  %al
c0031f8f:	0f b6 c0             	movzbl %al,%eax
c0031f92:	c9                   	leave  
c0031f93:	c3                   	ret    

c0031f94 <serial_printc>:
c0031f94:	55                   	push   %ebp
c0031f95:	89 e5                	mov    %esp,%ebp
c0031f97:	83 ec 04             	sub    $0x4,%esp
c0031f9a:	e8 b9 e3 ff ff       	call   c0030358 <__x86.get_pc_thunk.ax>
c0031f9f:	05 61 a0 00 00       	add    $0xa061,%eax
c0031fa4:	8b 45 08             	mov    0x8(%ebp),%eax
c0031fa7:	88 45 fc             	mov    %al,-0x4(%ebp)
c0031faa:	90                   	nop
c0031fab:	e8 ba ff ff ff       	call   c0031f6a <serial_idle>
c0031fb0:	85 c0                	test   %eax,%eax
c0031fb2:	74 f7                	je     c0031fab <serial_printc+0x17>
c0031fb4:	8a 45 fc             	mov    -0x4(%ebp),%al
c0031fb7:	0f b6 c0             	movzbl %al,%eax
c0031fba:	50                   	push   %eax
c0031fbb:	68 f8 03 00 00       	push   $0x3f8
c0031fc0:	e8 6e ff ff ff       	call   c0031f33 <out_byte>
c0031fc5:	83 c4 08             	add    $0x8,%esp
c0031fc8:	90                   	nop
c0031fc9:	c9                   	leave  
c0031fca:	c3                   	ret    
c0031fcb:	66 90                	xchg   %ax,%ax
c0031fcd:	66 90                	xchg   %ax,%ax
c0031fcf:	90                   	nop

c0031fd0 <mm_malloc>:
c0031fd0:	55                   	push   %ebp
c0031fd1:	31 c0                	xor    %eax,%eax
c0031fd3:	89 e5                	mov    %esp,%ebp
c0031fd5:	57                   	push   %edi
c0031fd6:	56                   	push   %esi
c0031fd7:	53                   	push   %ebx
c0031fd8:	83 ec 3c             	sub    $0x3c,%esp
c0031fdb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031fde:	85 db                	test   %ebx,%ebx
c0031fe0:	0f 8e 36 02 00 00    	jle    c003221c <mm_malloc+0x24c>
c0031fe6:	e8 90 fd ff ff       	call   c0031d7b <get_updir>
c0031feb:	89 c6                	mov    %eax,%esi
c0031fed:	e8 9e fd ff ff       	call   c0031d90 <get_ucr3>
c0031ff2:	8b 55 08             	mov    0x8(%ebp),%edx
c0031ff5:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031ff9:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031ffc:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031fff:	b8 00 10 00 00       	mov    $0x1000,%eax
c0032004:	29 d0                	sub    %edx,%eax
c0032006:	89 da                	mov    %ebx,%edx
c0032008:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c003200e:	01 d0                	add    %edx,%eax
c0032010:	85 c0                	test   %eax,%eax
c0032012:	0f 8e c0 00 00 00    	jle    c00320d8 <mm_malloc+0x108>
c0032018:	8b 55 08             	mov    0x8(%ebp),%edx
c003201b:	83 e8 01             	sub    $0x1,%eax
c003201e:	89 f7                	mov    %esi,%edi
c0032020:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0032025:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c003202c:	89 d3                	mov    %edx,%ebx
c003202e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0032031:	eb 51                	jmp    c0032084 <mm_malloc+0xb4>
c0032033:	90                   	nop
c0032034:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032038:	8b 31                	mov    (%ecx),%esi
c003203a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0032040:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0032046:	89 d8                	mov    %ebx,%eax
c0032048:	c1 e8 0a             	shr    $0xa,%eax
c003204b:	25 fc 0f 00 00       	and    $0xffc,%eax
c0032050:	01 c6                	add    %eax,%esi
c0032052:	f6 06 01             	testb  $0x1,(%esi)
c0032055:	75 22                	jne    c0032079 <mm_malloc+0xa9>
c0032057:	a1 20 c0 03 c0       	mov    0xc003c020,%eax
c003205c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0032061:	0f 8f c1 01 00 00    	jg     c0032228 <mm_malloc+0x258>
c0032067:	89 c1                	mov    %eax,%ecx
c0032069:	83 c0 01             	add    $0x1,%eax
c003206c:	c1 e1 0c             	shl    $0xc,%ecx
c003206f:	83 c9 07             	or     $0x7,%ecx
c0032072:	89 0e                	mov    %ecx,(%esi)
c0032074:	a3 20 c0 03 c0       	mov    %eax,0xc003c020
c0032079:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c003207f:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0032082:	74 54                	je     c00320d8 <mm_malloc+0x108>
c0032084:	89 d8                	mov    %ebx,%eax
c0032086:	c1 e8 16             	shr    $0x16,%eax
c0032089:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c003208c:	f6 01 01             	testb  $0x1,(%ecx)
c003208f:	75 a7                	jne    c0032038 <mm_malloc+0x68>
c0032091:	a1 00 e0 04 c0       	mov    0xc004e000,%eax
c0032096:	89 c6                	mov    %eax,%esi
c0032098:	83 c0 01             	add    $0x1,%eax
c003209b:	c1 e6 0c             	shl    $0xc,%esi
c003209e:	81 c6 00 f0 04 c0    	add    $0xc004f000,%esi
c00320a4:	a3 00 e0 04 c0       	mov    %eax,0xc004e000
c00320a9:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c00320af:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c00320b4:	83 c8 07             	or     $0x7,%eax
c00320b7:	89 01                	mov    %eax,(%ecx)
c00320b9:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c00320c0:	00 
c00320c1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00320c8:	00 
c00320c9:	89 34 24             	mov    %esi,(%esp)
c00320cc:	e8 db 01 00 00       	call   c00322ac <memset>
c00320d1:	e9 70 ff ff ff       	jmp    c0032046 <mm_malloc+0x76>
c00320d6:	66 90                	xchg   %ax,%ax
c00320d8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00320db:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00320de:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c00320e4:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c00320ea:	c1 e8 16             	shr    $0x16,%eax
c00320ed:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c00320f0:	f7 c6 01 00 00 00    	test   $0x1,%esi
c00320f6:	75 32                	jne    c003212a <mm_malloc+0x15a>
c00320f8:	c7 44 24 10 3d 91 03 	movl   $0xc003913d,0x10(%esp)
c00320ff:	c0 
c0032100:	c7 44 24 0c a6 91 03 	movl   $0xc00391a6,0xc(%esp)
c0032107:	c0 
c0032108:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c003210f:	00 
c0032110:	c7 44 24 04 2c 91 03 	movl   $0xc003912c,0x4(%esp)
c0032117:	c0 
c0032118:	c7 04 24 50 91 03 c0 	movl   $0xc0039150,(%esp)
c003211f:	e8 96 fd ff ff       	call   c0031eba <printk>
c0032124:	b8 01 00 00 00       	mov    $0x1,%eax
c0032129:	82 8b 55 e0 8d 86 00 	orb    $0x0,-0x79721fab(%ebx)
c0032130:	00 00                	add    %al,(%eax)
c0032132:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0032139:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0032140:	00 f6                	add    %dh,%dh
c0032142:	04 90                	add    $0x90,%al
c0032144:	01 75 32             	add    %esi,0x32(%ebp)
c0032147:	c7 44 24 10 45 91 03 	movl   $0xc0039145,0x10(%esp)
c003214e:	c0 
c003214f:	c7 44 24 0c a6 91 03 	movl   $0xc00391a6,0xc(%esp)
c0032156:	c0 
c0032157:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c003215e:	00 
c003215f:	c7 44 24 04 2c 91 03 	movl   $0xc003912c,0x4(%esp)
c0032166:	c0 
c0032167:	c7 04 24 50 91 03 c0 	movl   $0xc0039150,(%esp)
c003216e:	e8 47 fd ff ff       	call   c0031eba <printk>
c0032173:	b8 01 00 00 00       	mov    $0x1,%eax
c0032178:	82 8b 45 08 c1 e8 16 	orb    $0x16,-0x173ef7bb(%ebx)
c003217f:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0032182:	f6 c3 01             	test   $0x1,%bl
c0032185:	75 32                	jne    c00321b9 <mm_malloc+0x1e9>
c0032187:	c7 44 24 10 3d 91 03 	movl   $0xc003913d,0x10(%esp)
c003218e:	c0 
c003218f:	c7 44 24 0c a6 91 03 	movl   $0xc00391a6,0xc(%esp)
c0032196:	c0 
c0032197:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c003219e:	00 
c003219f:	c7 44 24 04 2c 91 03 	movl   $0xc003912c,0x4(%esp)
c00321a6:	c0 
c00321a7:	c7 04 24 50 91 03 c0 	movl   $0xc0039150,(%esp)
c00321ae:	e8 07 fd ff ff       	call   c0031eba <printk>
c00321b3:	b8 01 00 00 00       	mov    $0x1,%eax
c00321b8:	82 8b 55 08 8d 83 00 	orb    $0x0,-0x7c72f7ab(%ebx)
c00321bf:	00 00                	add    %al,(%eax)
c00321c1:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c00321c8:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c00321cf:	00 8b 1c 90 f6 c3    	add    %cl,-0x3c096fe4(%ebx)
c00321d5:	01 75 32             	add    %esi,0x32(%ebp)
c00321d8:	c7 44 24 10 45 91 03 	movl   $0xc0039145,0x10(%esp)
c00321df:	c0 
c00321e0:	c7 44 24 0c a6 91 03 	movl   $0xc00391a6,0xc(%esp)
c00321e7:	c0 
c00321e8:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c00321ef:	00 
c00321f0:	c7 44 24 04 2c 91 03 	movl   $0xc003912c,0x4(%esp)
c00321f7:	c0 
c00321f8:	c7 04 24 50 91 03 c0 	movl   $0xc0039150,(%esp)
c00321ff:	e8 b6 fc ff ff       	call   c0031eba <printk>
c0032204:	b8 01 00 00 00       	mov    $0x1,%eax
c0032209:	82 8b 55 08 89 d8 25 	orb    $0x25,-0x2776f7ab(%ebx)
c0032210:	00 f0                	add    %dh,%al
c0032212:	ff                   	(bad)  
c0032213:	ff 81 e2 ff 0f 00    	incl   0xfffe2(%ecx)
c0032219:	00 09                	add    %cl,(%ecx)
c003221b:	d0 83 c4 3c 5b 5e    	rolb   0x5e5b3cc4(%ebx)
c0032221:	5f                   	pop    %edi
c0032222:	5d                   	pop    %ebp
c0032223:	c3                   	ret    
c0032224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032228:	c7 44 24 10 19 91 03 	movl   $0xc0039119,0x10(%esp)
c003222f:	c0 
c0032230:	c7 44 24 0c 9c 91 03 	movl   $0xc003919c,0xc(%esp)
c0032237:	c0 
c0032238:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c003223f:	00 
c0032240:	c7 44 24 04 2c 91 03 	movl   $0xc003912c,0x4(%esp)
c0032247:	c0 
c0032248:	c7 04 24 50 91 03 c0 	movl   $0xc0039150,(%esp)
c003224f:	e8 66 fc ff ff       	call   c0031eba <printk>
c0032254:	b8 01 00 00 00       	mov    $0x1,%eax
c0032259:	82 a1 20 c0 03 c0 e9 	andb   $0xe9,-0x3ffc3fe0(%ecx)
c0032260:	03 fe                	add    %esi,%edi
c0032262:	ff                   	(bad)  
c0032263:	ff                   	.byte 0xff

c0032264 <memcpy>:
c0032264:	55                   	push   %ebp
c0032265:	89 e5                	mov    %esp,%ebp
c0032267:	56                   	push   %esi
c0032268:	57                   	push   %edi
c0032269:	53                   	push   %ebx
c003226a:	8b 7d 08             	mov    0x8(%ebp),%edi
c003226d:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0032270:	8b 75 0c             	mov    0xc(%ebp),%esi
c0032273:	fc                   	cld    
c0032274:	83 f9 08             	cmp    $0x8,%ecx
c0032277:	76 26                	jbe    c003229f <memcpy+0x3b>
c0032279:	89 fa                	mov    %edi,%edx
c003227b:	89 cb                	mov    %ecx,%ebx
c003227d:	83 e2 03             	and    $0x3,%edx
c0032280:	74 10                	je     c0032292 <memcpy+0x2e>
c0032282:	b9 04 00 00 00       	mov    $0x4,%ecx
c0032287:	29 d1                	sub    %edx,%ecx
c0032289:	83 e1 03             	and    $0x3,%ecx
c003228c:	29 cb                	sub    %ecx,%ebx
c003228e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0032290:	89 d9                	mov    %ebx,%ecx
c0032292:	c1 e9 02             	shr    $0x2,%ecx
c0032295:	8d 76 00             	lea    0x0(%esi),%esi
c0032298:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c003229a:	89 d9                	mov    %ebx,%ecx
c003229c:	83 e1 03             	and    $0x3,%ecx
c003229f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c00322a1:	8b 45 08             	mov    0x8(%ebp),%eax
c00322a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
c00322a7:	5b                   	pop    %ebx
c00322a8:	5f                   	pop    %edi
c00322a9:	5e                   	pop    %esi
c00322aa:	c9                   	leave  
c00322ab:	c3                   	ret    

c00322ac <memset>:
c00322ac:	55                   	push   %ebp
c00322ad:	89 e5                	mov    %esp,%ebp
c00322af:	57                   	push   %edi
c00322b0:	8b 7d 08             	mov    0x8(%ebp),%edi
c00322b3:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c00322b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
c00322ba:	fc                   	cld    
c00322bb:	83 f9 10             	cmp    $0x10,%ecx
c00322be:	76 69                	jbe    c0032329 <memset+0x7d>
c00322c0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00322c6:	74 4c                	je     c0032314 <memset+0x68>
c00322c8:	88 07                	mov    %al,(%edi)
c00322ca:	47                   	inc    %edi
c00322cb:	49                   	dec    %ecx
c00322cc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00322d2:	74 40                	je     c0032314 <memset+0x68>
c00322d4:	88 07                	mov    %al,(%edi)
c00322d6:	47                   	inc    %edi
c00322d7:	49                   	dec    %ecx
c00322d8:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00322de:	74 34                	je     c0032314 <memset+0x68>
c00322e0:	88 07                	mov    %al,(%edi)
c00322e2:	47                   	inc    %edi
c00322e3:	49                   	dec    %ecx
c00322e4:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00322ea:	74 28                	je     c0032314 <memset+0x68>
c00322ec:	88 07                	mov    %al,(%edi)
c00322ee:	47                   	inc    %edi
c00322ef:	49                   	dec    %ecx
c00322f0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c00322f6:	74 1c                	je     c0032314 <memset+0x68>
c00322f8:	88 07                	mov    %al,(%edi)
c00322fa:	47                   	inc    %edi
c00322fb:	49                   	dec    %ecx
c00322fc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0032302:	74 10                	je     c0032314 <memset+0x68>
c0032304:	88 07                	mov    %al,(%edi)
c0032306:	47                   	inc    %edi
c0032307:	49                   	dec    %ecx
c0032308:	f7 c7 07 00 00 00    	test   $0x7,%edi
c003230e:	74 04                	je     c0032314 <memset+0x68>
c0032310:	88 07                	mov    %al,(%edi)
c0032312:	47                   	inc    %edi
c0032313:	49                   	dec    %ecx
c0032314:	88 c4                	mov    %al,%ah
c0032316:	89 c2                	mov    %eax,%edx
c0032318:	c1 e2 10             	shl    $0x10,%edx
c003231b:	09 d0                	or     %edx,%eax
c003231d:	89 ca                	mov    %ecx,%edx
c003231f:	c1 e9 02             	shr    $0x2,%ecx
c0032322:	83 e2 03             	and    $0x3,%edx
c0032325:	f3 ab                	rep stos %eax,%es:(%edi)
c0032327:	89 d1                	mov    %edx,%ecx
c0032329:	f3 aa                	rep stos %al,%es:(%edi)
c003232b:	8b 45 08             	mov    0x8(%ebp),%eax
c003232e:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0032331:	5f                   	pop    %edi
c0032332:	c9                   	leave  
c0032333:	c3                   	ret    
c0032334:	66 90                	xchg   %ax,%ax
c0032336:	66 90                	xchg   %ax,%ax
c0032338:	66 90                	xchg   %ax,%ax
c003233a:	66 90                	xchg   %ax,%ax
c003233c:	66 90                	xchg   %ax,%ax
c003233e:	66 90                	xchg   %ax,%ax

c0032340 <strcmp>:
c0032340:	55                   	push   %ebp
c0032341:	89 e5                	mov    %esp,%ebp
c0032343:	8b 45 08             	mov    0x8(%ebp),%eax
c0032346:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032349:	53                   	push   %ebx
c003234a:	89 c1                	mov    %eax,%ecx
c003234c:	09 d1                	or     %edx,%ecx
c003234e:	83 e1 03             	and    $0x3,%ecx
c0032351:	75 17                	jne    c003236a <strcmp+0x2a>
c0032353:	8b 08                	mov    (%eax),%ecx
c0032355:	3b 0a                	cmp    (%edx),%ecx
c0032357:	74 33                	je     c003238c <strcmp+0x4c>
c0032359:	eb 0f                	jmp    c003236a <strcmp+0x2a>
c003235b:	90                   	nop
c003235c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032360:	3a 0a                	cmp    (%edx),%cl
c0032362:	75 0d                	jne    c0032371 <strcmp+0x31>
c0032364:	83 c0 01             	add    $0x1,%eax
c0032367:	83 c2 01             	add    $0x1,%edx
c003236a:	0f b6 08             	movzbl (%eax),%ecx
c003236d:	84 c9                	test   %cl,%cl
c003236f:	75 ef                	jne    c0032360 <strcmp+0x20>
c0032371:	0f b6 00             	movzbl (%eax),%eax
c0032374:	0f b6 12             	movzbl (%edx),%edx
c0032377:	5b                   	pop    %ebx
c0032378:	5d                   	pop    %ebp
c0032379:	29 d0                	sub    %edx,%eax
c003237b:	c3                   	ret    
c003237c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032380:	83 c0 04             	add    $0x4,%eax
c0032383:	83 c2 04             	add    $0x4,%edx
c0032386:	8b 08                	mov    (%eax),%ecx
c0032388:	3b 0a                	cmp    (%edx),%ecx
c003238a:	75 de                	jne    c003236a <strcmp+0x2a>
c003238c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0032392:	f7 d1                	not    %ecx
c0032394:	21 cb                	and    %ecx,%ebx
c0032396:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c003239c:	74 e2                	je     c0032380 <strcmp+0x40>
c003239e:	31 c0                	xor    %eax,%eax
c00323a0:	5b                   	pop    %ebx
c00323a1:	5d                   	pop    %ebp
c00323a2:	c3                   	ret    
c00323a3:	66 90                	xchg   %ax,%ax
c00323a5:	66 90                	xchg   %ax,%ax
c00323a7:	66 90                	xchg   %ax,%ax
c00323a9:	66 90                	xchg   %ax,%ax
c00323ab:	66 90                	xchg   %ax,%ax
c00323ad:	66 90                	xchg   %ax,%ax
c00323af:	90                   	nop

c00323b0 <_vsnprintf_r>:
c00323b0:	55                   	push   %ebp
c00323b1:	89 e5                	mov    %esp,%ebp
c00323b3:	56                   	push   %esi
c00323b4:	53                   	push   %ebx
c00323b5:	83 c4 80             	add    $0xffffff80,%esp
c00323b8:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00323bb:	8b 75 08             	mov    0x8(%ebp),%esi
c00323be:	8b 45 0c             	mov    0xc(%ebp),%eax
c00323c1:	85 db                	test   %ebx,%ebx
c00323c3:	78 63                	js     c0032428 <_vsnprintf_r+0x78>
c00323c5:	ba 08 02 00 00       	mov    $0x208,%edx
c00323ca:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00323cf:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c00323d3:	8d 53 ff             	lea    -0x1(%ebx),%edx
c00323d6:	89 45 90             	mov    %eax,-0x70(%ebp)
c00323d9:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00323dc:	31 c0                	xor    %eax,%eax
c00323de:	85 db                	test   %ebx,%ebx
c00323e0:	0f 45 c2             	cmovne %edx,%eax
c00323e3:	89 45 98             	mov    %eax,-0x68(%ebp)
c00323e6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00323e9:	8b 45 18             	mov    0x18(%ebp),%eax
c00323ec:	89 34 24             	mov    %esi,(%esp)
c00323ef:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c00323f3:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00323f7:	8b 45 14             	mov    0x14(%ebp),%eax
c00323fa:	89 44 24 08          	mov    %eax,0x8(%esp)
c00323fe:	8d 45 90             	lea    -0x70(%ebp),%eax
c0032401:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032405:	e8 86 00 00 00       	call   c0032490 <_svfprintf_r>
c003240a:	83 f8 ff             	cmp    $0xffffffff,%eax
c003240d:	7c 11                	jl     c0032420 <_vsnprintf_r+0x70>
c003240f:	85 db                	test   %ebx,%ebx
c0032411:	74 06                	je     c0032419 <_vsnprintf_r+0x69>
c0032413:	8b 55 90             	mov    -0x70(%ebp),%edx
c0032416:	c6 02 00             	movb   $0x0,(%edx)
c0032419:	83 ec 80             	sub    $0xffffff80,%esp
c003241c:	5b                   	pop    %ebx
c003241d:	5e                   	pop    %esi
c003241e:	5d                   	pop    %ebp
c003241f:	c3                   	ret    
c0032420:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0032426:	eb e7                	jmp    c003240f <_vsnprintf_r+0x5f>
c0032428:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c003242e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032433:	eb e4                	jmp    c0032419 <_vsnprintf_r+0x69>
c0032435:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0032440 <vsnprintf>:
c0032440:	55                   	push   %ebp
c0032441:	89 e5                	mov    %esp,%ebp
c0032443:	83 ec 28             	sub    $0x28,%esp
c0032446:	e8 35 00 00 00       	call   c0032480 <__getreent>
c003244b:	8b 55 14             	mov    0x14(%ebp),%edx
c003244e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0032452:	8b 55 10             	mov    0x10(%ebp),%edx
c0032455:	89 04 24             	mov    %eax,(%esp)
c0032458:	89 54 24 0c          	mov    %edx,0xc(%esp)
c003245c:	8b 55 0c             	mov    0xc(%ebp),%edx
c003245f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0032463:	8b 55 08             	mov    0x8(%ebp),%edx
c0032466:	89 54 24 04          	mov    %edx,0x4(%esp)
c003246a:	e8 41 ff ff ff       	call   c00323b0 <_vsnprintf_r>
c003246f:	c9                   	leave  
c0032470:	c3                   	ret    
c0032471:	66 90                	xchg   %ax,%ax
c0032473:	66 90                	xchg   %ax,%ax
c0032475:	66 90                	xchg   %ax,%ax
c0032477:	66 90                	xchg   %ax,%ax
c0032479:	66 90                	xchg   %ax,%ax
c003247b:	66 90                	xchg   %ax,%ax
c003247d:	66 90                	xchg   %ax,%ax
c003247f:	90                   	nop

c0032480 <__getreent>:
c0032480:	55                   	push   %ebp
c0032481:	a1 40 c0 03 c0       	mov    0xc003c040,%eax
c0032486:	89 e5                	mov    %esp,%ebp
c0032488:	5d                   	pop    %ebp
c0032489:	c3                   	ret    
c003248a:	66 90                	xchg   %ax,%ax
c003248c:	66 90                	xchg   %ax,%ax
c003248e:	66 90                	xchg   %ax,%ax

c0032490 <_svfprintf_r>:
c0032490:	55                   	push   %ebp
c0032491:	89 e5                	mov    %esp,%ebp
c0032493:	57                   	push   %edi
c0032494:	56                   	push   %esi
c0032495:	53                   	push   %ebx
c0032496:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c003249c:	8b 45 08             	mov    0x8(%ebp),%eax
c003249f:	89 04 24             	mov    %eax,(%esp)
c00324a2:	e8 89 33 00 00       	call   c0035830 <_localeconv_r>
c00324a7:	8b 00                	mov    (%eax),%eax
c00324a9:	89 04 24             	mov    %eax,(%esp)
c00324ac:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c00324b2:	e8 69 4a 00 00       	call   c0036f20 <strlen>
c00324b7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c00324bd:	8b 45 0c             	mov    0xc(%ebp),%eax
c00324c0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c00324c4:	74 0b                	je     c00324d1 <_svfprintf_r+0x41>
c00324c6:	8b 40 10             	mov    0x10(%eax),%eax
c00324c9:	85 c0                	test   %eax,%eax
c00324cb:	0f 84 62 18 00 00    	je     c0033d33 <_svfprintf_r+0x18a3>
c00324d1:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00324d4:	8d 55 a7             	lea    -0x59(%ebp),%edx
c00324d7:	89 c7                	mov    %eax,%edi
c00324d9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c00324df:	d9 ee                	fldz   
c00324e1:	29 d0                	sub    %edx,%eax
c00324e3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c00324ea:	00 00 00 
c00324ed:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00324f3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00324fa:	00 00 00 
c00324fd:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0032504:	00 00 00 
c0032507:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c003250e:	00 00 00 
c0032511:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0032518:	00 00 00 
c003251b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0032522:	00 00 00 
c0032525:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c003252b:	8b 45 10             	mov    0x10(%ebp),%eax
c003252e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032531:	0f b6 00             	movzbl (%eax),%eax
c0032534:	3c 25                	cmp    $0x25,%al
c0032536:	74 4d                	je     c0032585 <_svfprintf_r+0xf5>
c0032538:	84 c0                	test   %al,%al
c003253a:	75 08                	jne    c0032544 <_svfprintf_r+0xb4>
c003253c:	eb 47                	jmp    c0032585 <_svfprintf_r+0xf5>
c003253e:	66 90                	xchg   %ax,%ax
c0032540:	84 c0                	test   %al,%al
c0032542:	74 0a                	je     c003254e <_svfprintf_r+0xbe>
c0032544:	83 c3 01             	add    $0x1,%ebx
c0032547:	0f b6 03             	movzbl (%ebx),%eax
c003254a:	3c 25                	cmp    $0x25,%al
c003254c:	75 f2                	jne    c0032540 <_svfprintf_r+0xb0>
c003254e:	89 de                	mov    %ebx,%esi
c0032550:	2b 75 10             	sub    0x10(%ebp),%esi
c0032553:	74 30                	je     c0032585 <_svfprintf_r+0xf5>
c0032555:	8b 45 10             	mov    0x10(%ebp),%eax
c0032558:	83 c7 08             	add    $0x8,%edi
c003255b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003255e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032564:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032567:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003256d:	83 c0 01             	add    $0x1,%eax
c0032570:	83 f8 07             	cmp    $0x7,%eax
c0032573:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032579:	0f 8f 91 00 00 00    	jg     c0032610 <_svfprintf_r+0x180>
c003257f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032585:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032588:	0f 84 aa 00 00 00    	je     c0032638 <_svfprintf_r+0x1a8>
c003258e:	8d 43 01             	lea    0x1(%ebx),%eax
c0032591:	be 20 00 00 00       	mov    $0x20,%esi
c0032596:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003259d:	31 db                	xor    %ebx,%ebx
c003259f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c00325a6:	ff ff ff 
c00325a9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c00325b0:	00 00 00 
c00325b3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c00325ba:	00 00 00 
c00325bd:	8d 48 01             	lea    0x1(%eax),%ecx
c00325c0:	0f be 00             	movsbl (%eax),%eax
c00325c3:	8d 50 e0             	lea    -0x20(%eax),%edx
c00325c6:	83 fa 58             	cmp    $0x58,%edx
c00325c9:	0f 87 8f 07 00 00    	ja     c0032d5e <_svfprintf_r+0x8ce>
c00325cf:	ff 24 95 f0 91 03 c0 	jmp    *-0x3ffc6e10(,%edx,4)
c00325d6:	66 90                	xchg   %ax,%ax
c00325d8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00325df:	89 c8                	mov    %ecx,%eax
c00325e1:	eb da                	jmp    c00325bd <_svfprintf_r+0x12d>
c00325e3:	8b 45 14             	mov    0x14(%ebp),%eax
c00325e6:	8b 55 14             	mov    0x14(%ebp),%edx
c00325e9:	8b 00                	mov    (%eax),%eax
c00325eb:	83 c2 04             	add    $0x4,%edx
c00325ee:	89 55 14             	mov    %edx,0x14(%ebp)
c00325f1:	85 c0                	test   %eax,%eax
c00325f3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c00325f9:	79 e4                	jns    c00325df <_svfprintf_r+0x14f>
c00325fb:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0032601:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0032608:	89 c8                	mov    %ecx,%eax
c003260a:	eb b1                	jmp    c00325bd <_svfprintf_r+0x12d>
c003260c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032610:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032616:	89 44 24 08          	mov    %eax,0x8(%esp)
c003261a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003261d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032621:	8b 45 08             	mov    0x8(%ebp),%eax
c0032624:	89 04 24             	mov    %eax,(%esp)
c0032627:	e8 74 49 00 00       	call   c0036fa0 <__ssprint_r>
c003262c:	85 c0                	test   %eax,%eax
c003262e:	75 30                	jne    c0032660 <_svfprintf_r+0x1d0>
c0032630:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032633:	e9 47 ff ff ff       	jmp    c003257f <_svfprintf_r+0xef>
c0032638:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003263e:	85 c0                	test   %eax,%eax
c0032640:	74 1e                	je     c0032660 <_svfprintf_r+0x1d0>
c0032642:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032648:	89 44 24 08          	mov    %eax,0x8(%esp)
c003264c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003264f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032653:	8b 45 08             	mov    0x8(%ebp),%eax
c0032656:	89 04 24             	mov    %eax,(%esp)
c0032659:	e8 42 49 00 00       	call   c0036fa0 <__ssprint_r>
c003265e:	66 90                	xchg   %ax,%ax
c0032660:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032663:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032668:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003266c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032673:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032679:	5b                   	pop    %ebx
c003267a:	5e                   	pop    %esi
c003267b:	5f                   	pop    %edi
c003267c:	5d                   	pop    %ebp
c003267d:	c3                   	ret    
c003267e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032683:	89 c8                	mov    %ecx,%eax
c0032685:	e9 33 ff ff ff       	jmp    c00325bd <_svfprintf_r+0x12d>
c003268a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032690:	8b 45 14             	mov    0x14(%ebp),%eax
c0032693:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032696:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003269d:	8d 70 04             	lea    0x4(%eax),%esi
c00326a0:	8b 00                	mov    (%eax),%eax
c00326a2:	85 c0                	test   %eax,%eax
c00326a4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00326aa:	0f 84 7f 18 00 00    	je     c0033f2f <_svfprintf_r+0x1a9f>
c00326b0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00326b6:	85 c0                	test   %eax,%eax
c00326b8:	0f 88 b6 17 00 00    	js     c0033e74 <_svfprintf_r+0x19e4>
c00326be:	89 44 24 08          	mov    %eax,0x8(%esp)
c00326c2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00326c8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00326cf:	00 
c00326d0:	89 04 24             	mov    %eax,(%esp)
c00326d3:	e8 f8 38 00 00       	call   c0035fd0 <memchr>
c00326d8:	85 c0                	test   %eax,%eax
c00326da:	0f 84 a0 19 00 00    	je     c0034080 <_svfprintf_r+0x1bf0>
c00326e0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00326e6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00326ec:	39 d0                	cmp    %edx,%eax
c00326ee:	0f 4f c2             	cmovg  %edx,%eax
c00326f1:	89 c2                	mov    %eax,%edx
c00326f3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00326fa:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032700:	31 c0                	xor    %eax,%eax
c0032702:	85 d2                	test   %edx,%edx
c0032704:	0f 49 c2             	cmovns %edx,%eax
c0032707:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c003270d:	89 75 14             	mov    %esi,0x14(%ebp)
c0032710:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032717:	00 00 00 
c003271a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032721:	00 00 00 
c0032724:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032728:	84 db                	test   %bl,%bl
c003272a:	74 07                	je     c0032733 <_svfprintf_r+0x2a3>
c003272c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032733:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032739:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003273f:	89 c8                	mov    %ecx,%eax
c0032741:	89 f2                	mov    %esi,%edx
c0032743:	83 c0 02             	add    $0x2,%eax
c0032746:	83 e2 02             	and    $0x2,%edx
c0032749:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003274f:	89 f2                	mov    %esi,%edx
c0032751:	0f 44 c1             	cmove  %ecx,%eax
c0032754:	81 e2 84 00 00 00    	and    $0x84,%edx
c003275a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032760:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032766:	0f 85 1c 06 00 00    	jne    c0032d88 <_svfprintf_r+0x8f8>
c003276c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032772:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032778:	85 f6                	test   %esi,%esi
c003277a:	0f 8e 08 06 00 00    	jle    c0032d88 <_svfprintf_r+0x8f8>
c0032780:	83 fe 10             	cmp    $0x10,%esi
c0032783:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032789:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003278f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032795:	7f 11                	jg     c00327a8 <_svfprintf_r+0x318>
c0032797:	eb 6b                	jmp    c0032804 <_svfprintf_r+0x374>
c0032799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00327a0:	83 ee 10             	sub    $0x10,%esi
c00327a3:	83 fe 10             	cmp    $0x10,%esi
c00327a6:	7e 5c                	jle    c0032804 <_svfprintf_r+0x374>
c00327a8:	83 c0 01             	add    $0x1,%eax
c00327ab:	83 c1 10             	add    $0x10,%ecx
c00327ae:	c7 07 64 93 03 c0    	movl   $0xc0039364,(%edi)
c00327b4:	83 c7 08             	add    $0x8,%edi
c00327b7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00327be:	83 f8 07             	cmp    $0x7,%eax
c00327c1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00327c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00327cd:	7e d1                	jle    c00327a0 <_svfprintf_r+0x310>
c00327cf:	8b 45 0c             	mov    0xc(%ebp),%eax
c00327d2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00327d6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00327da:	8b 45 08             	mov    0x8(%ebp),%eax
c00327dd:	89 04 24             	mov    %eax,(%esp)
c00327e0:	e8 bb 47 00 00       	call   c0036fa0 <__ssprint_r>
c00327e5:	85 c0                	test   %eax,%eax
c00327e7:	0f 85 73 fe ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c00327ed:	83 ee 10             	sub    $0x10,%esi
c00327f0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00327f6:	83 fe 10             	cmp    $0x10,%esi
c00327f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00327ff:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032802:	7f a4                	jg     c00327a8 <_svfprintf_r+0x318>
c0032804:	83 c0 01             	add    $0x1,%eax
c0032807:	01 f1                	add    %esi,%ecx
c0032809:	83 f8 07             	cmp    $0x7,%eax
c003280c:	c7 07 64 93 03 c0    	movl   $0xc0039364,(%edi)
c0032812:	89 77 04             	mov    %esi,0x4(%edi)
c0032815:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003281b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032821:	0f 8f 16 0e 00 00    	jg     c003363d <_svfprintf_r+0x11ad>
c0032827:	83 c7 08             	add    $0x8,%edi
c003282a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032831:	e9 58 05 00 00       	jmp    c0032d8e <_svfprintf_r+0x8fe>
c0032836:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003283d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032843:	8b 45 14             	mov    0x14(%ebp),%eax
c0032846:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032849:	0f 85 fd 04 00 00    	jne    c0032d4c <_svfprintf_r+0x8bc>
c003284f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032856:	0f 84 f0 04 00 00    	je     c0032d4c <_svfprintf_r+0x8bc>
c003285c:	0f b7 08             	movzwl (%eax),%ecx
c003285f:	83 c0 04             	add    $0x4,%eax
c0032862:	89 45 14             	mov    %eax,0x14(%ebp)
c0032865:	b8 01 00 00 00       	mov    $0x1,%eax
c003286a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032870:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032877:	31 db                	xor    %ebx,%ebx
c0032879:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003287f:	89 f2                	mov    %esi,%edx
c0032881:	80 e2 7f             	and    $0x7f,%dl
c0032884:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c003288b:	0f 48 d6             	cmovs  %esi,%edx
c003288e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032894:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003289a:	85 d2                	test   %edx,%edx
c003289c:	75 08                	jne    c00328a6 <_svfprintf_r+0x416>
c003289e:	85 c9                	test   %ecx,%ecx
c00328a0:	0f 84 ea 08 00 00    	je     c0033190 <_svfprintf_r+0xd00>
c00328a6:	3c 01                	cmp    $0x1,%al
c00328a8:	0f 84 6a 0d 00 00    	je     c0033618 <_svfprintf_r+0x1188>
c00328ae:	3c 02                	cmp    $0x2,%al
c00328b0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00328b3:	0f 85 bf 0b 00 00    	jne    c0033478 <_svfprintf_r+0xfe8>
c00328b9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c00328bf:	90                   	nop
c00328c0:	89 ca                	mov    %ecx,%edx
c00328c2:	83 e8 01             	sub    $0x1,%eax
c00328c5:	83 e2 0f             	and    $0xf,%edx
c00328c8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c00328cc:	c1 e9 04             	shr    $0x4,%ecx
c00328cf:	85 c9                	test   %ecx,%ecx
c00328d1:	88 10                	mov    %dl,(%eax)
c00328d3:	75 eb                	jne    c00328c0 <_svfprintf_r+0x430>
c00328d5:	8d 55 a8             	lea    -0x58(%ebp),%edx
c00328d8:	29 c2                	sub    %eax,%edx
c00328da:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00328e0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00328e6:	66 90                	xchg   %ax,%ax
c00328e8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00328ee:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c00328f4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00328fb:	00 00 00 
c00328fe:	39 c2                	cmp    %eax,%edx
c0032900:	0f 4d c2             	cmovge %edx,%eax
c0032903:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032909:	e9 1a fe ff ff       	jmp    c0032728 <_svfprintf_r+0x298>
c003290e:	84 db                	test   %bl,%bl
c0032910:	89 c8                	mov    %ecx,%eax
c0032912:	0f 44 de             	cmove  %esi,%ebx
c0032915:	e9 a3 fc ff ff       	jmp    c00325bd <_svfprintf_r+0x12d>
c003291a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032921:	89 c8                	mov    %ecx,%eax
c0032923:	e9 95 fc ff ff       	jmp    c00325bd <_svfprintf_r+0x12d>
c0032928:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c003292f:	00 00 00 
c0032932:	89 c8                	mov    %ecx,%eax
c0032934:	e9 84 fc ff ff       	jmp    c00325bd <_svfprintf_r+0x12d>
c0032939:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003293f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032942:	31 ff                	xor    %edi,%edi
c0032944:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003294b:	00 00 00 
c003294e:	66 90                	xchg   %ax,%ax
c0032950:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032953:	83 c1 01             	add    $0x1,%ecx
c0032956:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032959:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003295d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032960:	83 fa 09             	cmp    $0x9,%edx
c0032963:	76 eb                	jbe    c0032950 <_svfprintf_r+0x4c0>
c0032965:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003296b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032971:	e9 4d fc ff ff       	jmp    c00325c3 <_svfprintf_r+0x133>
c0032976:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003297d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032984:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003298a:	8b 45 14             	mov    0x14(%ebp),%eax
c003298d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032990:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032996:	0f 85 61 02 00 00    	jne    c0032bfd <_svfprintf_r+0x76d>
c003299c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00329a3:	0f 84 54 02 00 00    	je     c0032bfd <_svfprintf_r+0x76d>
c00329a9:	0f bf 08             	movswl (%eax),%ecx
c00329ac:	83 c0 04             	add    $0x4,%eax
c00329af:	89 45 14             	mov    %eax,0x14(%ebp)
c00329b2:	85 c9                	test   %ecx,%ecx
c00329b4:	0f 88 53 02 00 00    	js     c0032c0d <_svfprintf_r+0x77d>
c00329ba:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00329c1:	b8 01 00 00 00       	mov    $0x1,%eax
c00329c6:	e9 ae fe ff ff       	jmp    c0032879 <_svfprintf_r+0x3e9>
c00329cb:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c00329d2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00329d8:	8b 45 14             	mov    0x14(%ebp),%eax
c00329db:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00329de:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00329e4:	0f 84 15 10 00 00    	je     c00339ff <_svfprintf_r+0x156f>
c00329ea:	db 28                	fldt   (%eax)
c00329ec:	83 c0 0c             	add    $0xc,%eax
c00329ef:	89 45 14             	mov    %eax,0x14(%ebp)
c00329f2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00329f8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00329fe:	dd 1c 24             	fstpl  (%esp)
c0032a01:	e8 aa 44 00 00       	call   c0036eb0 <__fpclassifyd>
c0032a06:	83 f8 01             	cmp    $0x1,%eax
c0032a09:	0f 85 82 0f 00 00    	jne    c0033991 <_svfprintf_r+0x1501>
c0032a0f:	d9 ee                	fldz   
c0032a11:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032a17:	d9 c9                	fxch   %st(1)
c0032a19:	df e9                	fucomip %st(1),%st
c0032a1b:	dd d8                	fstp   %st(0)
c0032a1d:	0f 87 59 15 00 00    	ja     c0033f7c <_svfprintf_r+0x1aec>
c0032a23:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032a2a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032a31:	ba b2 91 03 c0       	mov    $0xc00391b2,%edx
c0032a36:	b8 b6 91 03 c0       	mov    $0xc00391b6,%eax
c0032a3b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032a42:	00 00 00 
c0032a45:	0f 4e c2             	cmovle %edx,%eax
c0032a48:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032a4e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032a55:	ff ff ff 
c0032a58:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0032a5f:	00 00 00 
c0032a62:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032a69:	00 00 00 
c0032a6c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032a73:	00 00 00 
c0032a76:	e9 ad fc ff ff       	jmp    c0032728 <_svfprintf_r+0x298>
c0032a7b:	8d 41 01             	lea    0x1(%ecx),%eax
c0032a7e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032a84:	0f be 01             	movsbl (%ecx),%eax
c0032a87:	83 f8 2a             	cmp    $0x2a,%eax
c0032a8a:	0f 84 84 18 00 00    	je     c0034314 <_svfprintf_r+0x1e84>
c0032a90:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032a93:	31 c9                	xor    %ecx,%ecx
c0032a95:	83 fa 09             	cmp    $0x9,%edx
c0032a98:	0f 87 a8 16 00 00    	ja     c0034146 <_svfprintf_r+0x1cb6>
c0032a9e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0032aa4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032aaa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032ab0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0032ab3:	83 c7 01             	add    $0x1,%edi
c0032ab6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0032ab9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c0032abd:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032ac0:	83 fa 09             	cmp    $0x9,%edx
c0032ac3:	76 eb                	jbe    c0032ab0 <_svfprintf_r+0x620>
c0032ac5:	85 c9                	test   %ecx,%ecx
c0032ac7:	89 ca                	mov    %ecx,%edx
c0032ac9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0032ace:	0f 48 d1             	cmovs  %ecx,%edx
c0032ad1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032ad7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c0032add:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032ae3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0032ae9:	e9 d5 fa ff ff       	jmp    c00325c3 <_svfprintf_r+0x133>
c0032aee:	8b 45 14             	mov    0x14(%ebp),%eax
c0032af1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032af4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032afb:	8b 08                	mov    (%eax),%ecx
c0032afd:	83 c0 04             	add    $0x4,%eax
c0032b00:	89 45 14             	mov    %eax,0x14(%ebp)
c0032b03:	b8 02 00 00 00       	mov    $0x2,%eax
c0032b08:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032b0f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0032b16:	c7 85 18 ff ff ff d3 	movl   $0xc00391d3,-0xe8(%ebp)
c0032b1d:	91 03 c0 
c0032b20:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032b27:	00 00 00 
c0032b2a:	e9 41 fd ff ff       	jmp    c0032870 <_svfprintf_r+0x3e0>
c0032b2f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032b36:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032b3c:	8b 45 14             	mov    0x14(%ebp),%eax
c0032b3f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032b42:	0f 85 87 00 00 00    	jne    c0032bcf <_svfprintf_r+0x73f>
c0032b48:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032b4f:	74 7e                	je     c0032bcf <_svfprintf_r+0x73f>
c0032b51:	0f b7 08             	movzwl (%eax),%ecx
c0032b54:	83 c0 04             	add    $0x4,%eax
c0032b57:	89 45 14             	mov    %eax,0x14(%ebp)
c0032b5a:	31 c0                	xor    %eax,%eax
c0032b5c:	e9 0f fd ff ff       	jmp    c0032870 <_svfprintf_r+0x3e0>
c0032b61:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032b68:	89 c8                	mov    %ecx,%eax
c0032b6a:	e9 4e fa ff ff       	jmp    c00325bd <_svfprintf_r+0x12d>
c0032b6f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032b76:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032b79:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032b7f:	0f 85 97 0b 00 00    	jne    c003371c <_svfprintf_r+0x128c>
c0032b85:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032b8c:	0f 84 8a 0b 00 00    	je     c003371c <_svfprintf_r+0x128c>
c0032b92:	8b 45 14             	mov    0x14(%ebp),%eax
c0032b95:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c0032b9c:	8b 00                	mov    (%eax),%eax
c0032b9e:	66 89 10             	mov    %dx,(%eax)
c0032ba1:	8b 45 14             	mov    0x14(%ebp),%eax
c0032ba4:	83 c0 04             	add    $0x4,%eax
c0032ba7:	89 45 14             	mov    %eax,0x14(%ebp)
c0032baa:	e9 7c f9 ff ff       	jmp    c003252b <_svfprintf_r+0x9b>
c0032baf:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032bb6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032bbd:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032bc3:	8b 45 14             	mov    0x14(%ebp),%eax
c0032bc6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032bc9:	0f 84 79 ff ff ff    	je     c0032b48 <_svfprintf_r+0x6b8>
c0032bcf:	8b 08                	mov    (%eax),%ecx
c0032bd1:	83 c0 04             	add    $0x4,%eax
c0032bd4:	89 45 14             	mov    %eax,0x14(%ebp)
c0032bd7:	31 c0                	xor    %eax,%eax
c0032bd9:	e9 92 fc ff ff       	jmp    c0032870 <_svfprintf_r+0x3e0>
c0032bde:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032be5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032beb:	8b 45 14             	mov    0x14(%ebp),%eax
c0032bee:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032bf1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032bf7:	0f 84 9f fd ff ff    	je     c003299c <_svfprintf_r+0x50c>
c0032bfd:	8b 08                	mov    (%eax),%ecx
c0032bff:	83 c0 04             	add    $0x4,%eax
c0032c02:	89 45 14             	mov    %eax,0x14(%ebp)
c0032c05:	85 c9                	test   %ecx,%ecx
c0032c07:	0f 89 ad fd ff ff    	jns    c00329ba <_svfprintf_r+0x52a>
c0032c0d:	f7 d9                	neg    %ecx
c0032c0f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032c14:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0032c1b:	b8 01 00 00 00       	mov    $0x1,%eax
c0032c20:	e9 54 fc ff ff       	jmp    c0032879 <_svfprintf_r+0x3e9>
c0032c25:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c0032c2c:	89 c8                	mov    %ecx,%eax
c0032c2e:	e9 8a f9 ff ff       	jmp    c00325bd <_svfprintf_r+0x12d>
c0032c33:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032c3a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032c40:	8b 45 14             	mov    0x14(%ebp),%eax
c0032c43:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032c46:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032c4c:	c7 85 18 ff ff ff d3 	movl   $0xc00391d3,-0xe8(%ebp)
c0032c53:	91 03 c0 
c0032c56:	75 71                	jne    c0032cc9 <_svfprintf_r+0x839>
c0032c58:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032c5f:	74 68                	je     c0032cc9 <_svfprintf_r+0x839>
c0032c61:	0f b7 08             	movzwl (%eax),%ecx
c0032c64:	83 c0 04             	add    $0x4,%eax
c0032c67:	89 45 14             	mov    %eax,0x14(%ebp)
c0032c6a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032c71:	b8 02 00 00 00       	mov    $0x2,%eax
c0032c76:	0f 84 f4 fb ff ff    	je     c0032870 <_svfprintf_r+0x3e0>
c0032c7c:	85 c9                	test   %ecx,%ecx
c0032c7e:	0f 84 ec fb ff ff    	je     c0032870 <_svfprintf_r+0x3e0>
c0032c84:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c0032c8b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032c92:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032c99:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c0032c9f:	e9 cc fb ff ff       	jmp    c0032870 <_svfprintf_r+0x3e0>
c0032ca4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032cab:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032cb1:	8b 45 14             	mov    0x14(%ebp),%eax
c0032cb4:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032cb7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032cbd:	c7 85 18 ff ff ff c2 	movl   $0xc00391c2,-0xe8(%ebp)
c0032cc4:	91 03 c0 
c0032cc7:	74 8f                	je     c0032c58 <_svfprintf_r+0x7c8>
c0032cc9:	8b 08                	mov    (%eax),%ecx
c0032ccb:	83 c0 04             	add    $0x4,%eax
c0032cce:	89 45 14             	mov    %eax,0x14(%ebp)
c0032cd1:	eb 97                	jmp    c0032c6a <_svfprintf_r+0x7da>
c0032cd3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032cd9:	8b 45 14             	mov    0x14(%ebp),%eax
c0032cdc:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032cdf:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032ce6:	8b 00                	mov    (%eax),%eax
c0032ce8:	88 45 80             	mov    %al,-0x80(%ebp)
c0032ceb:	8b 45 14             	mov    0x14(%ebp),%eax
c0032cee:	83 c0 04             	add    $0x4,%eax
c0032cf1:	89 45 14             	mov    %eax,0x14(%ebp)
c0032cf4:	8d 45 80             	lea    -0x80(%ebp),%eax
c0032cf7:	31 db                	xor    %ebx,%ebx
c0032cf9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0032d00:	00 00 00 
c0032d03:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0032d0a:	00 00 00 
c0032d0d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032d14:	00 00 00 
c0032d17:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032d1e:	00 00 00 
c0032d21:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032d27:	e9 07 fa ff ff       	jmp    c0032733 <_svfprintf_r+0x2a3>
c0032d2c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032d33:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032d3a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032d40:	8b 45 14             	mov    0x14(%ebp),%eax
c0032d43:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032d46:	0f 84 03 fb ff ff    	je     c003284f <_svfprintf_r+0x3bf>
c0032d4c:	8b 08                	mov    (%eax),%ecx
c0032d4e:	83 c0 04             	add    $0x4,%eax
c0032d51:	89 45 14             	mov    %eax,0x14(%ebp)
c0032d54:	b8 01 00 00 00       	mov    $0x1,%eax
c0032d59:	e9 12 fb ff ff       	jmp    c0032870 <_svfprintf_r+0x3e0>
c0032d5e:	85 c0                	test   %eax,%eax
c0032d60:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032d66:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032d69:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032d6f:	0f 84 c3 f8 ff ff    	je     c0032638 <_svfprintf_r+0x1a8>
c0032d75:	88 45 80             	mov    %al,-0x80(%ebp)
c0032d78:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032d7f:	e9 70 ff ff ff       	jmp    c0032cf4 <_svfprintf_r+0x864>
c0032d84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032d88:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d8e:	84 db                	test   %bl,%bl
c0032d90:	74 33                	je     c0032dc5 <_svfprintf_r+0x935>
c0032d92:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0032d98:	83 c1 01             	add    $0x1,%ecx
c0032d9b:	89 07                	mov    %eax,(%edi)
c0032d9d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032da3:	83 c7 08             	add    $0x8,%edi
c0032da6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032dad:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032db3:	83 c0 01             	add    $0x1,%eax
c0032db6:	83 f8 07             	cmp    $0x7,%eax
c0032db9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032dbf:	0f 8f 7b 06 00 00    	jg     c0033440 <_svfprintf_r+0xfb0>
c0032dc5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c0032dcb:	85 db                	test   %ebx,%ebx
c0032dcd:	74 33                	je     c0032e02 <_svfprintf_r+0x972>
c0032dcf:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c0032dd5:	83 c1 02             	add    $0x2,%ecx
c0032dd8:	89 07                	mov    %eax,(%edi)
c0032dda:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032de0:	83 c7 08             	add    $0x8,%edi
c0032de3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c0032dea:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032df0:	83 c0 01             	add    $0x1,%eax
c0032df3:	83 f8 07             	cmp    $0x7,%eax
c0032df6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032dfc:	0f 8f 06 06 00 00    	jg     c0033408 <_svfprintf_r+0xf78>
c0032e02:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0032e09:	00 00 00 
c0032e0c:	0f 84 c6 03 00 00    	je     c00331d8 <_svfprintf_r+0xd48>
c0032e12:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0032e18:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c0032e1e:	85 f6                	test   %esi,%esi
c0032e20:	0f 8e d2 00 00 00    	jle    c0032ef8 <_svfprintf_r+0xa68>
c0032e26:	83 fe 10             	cmp    $0x10,%esi
c0032e29:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e2f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032e35:	7f 11                	jg     c0032e48 <_svfprintf_r+0x9b8>
c0032e37:	eb 6b                	jmp    c0032ea4 <_svfprintf_r+0xa14>
c0032e39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032e40:	83 ee 10             	sub    $0x10,%esi
c0032e43:	83 fe 10             	cmp    $0x10,%esi
c0032e46:	7e 5c                	jle    c0032ea4 <_svfprintf_r+0xa14>
c0032e48:	83 c0 01             	add    $0x1,%eax
c0032e4b:	83 c1 10             	add    $0x10,%ecx
c0032e4e:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c0032e54:	83 c7 08             	add    $0x8,%edi
c0032e57:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032e5e:	83 f8 07             	cmp    $0x7,%eax
c0032e61:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e67:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e6d:	7e d1                	jle    c0032e40 <_svfprintf_r+0x9b0>
c0032e6f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032e72:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032e76:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032e7a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032e7d:	89 04 24             	mov    %eax,(%esp)
c0032e80:	e8 1b 41 00 00       	call   c0036fa0 <__ssprint_r>
c0032e85:	85 c0                	test   %eax,%eax
c0032e87:	0f 85 d3 f7 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0032e8d:	83 ee 10             	sub    $0x10,%esi
c0032e90:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032e96:	83 fe 10             	cmp    $0x10,%esi
c0032e99:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e9f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ea2:	7f a4                	jg     c0032e48 <_svfprintf_r+0x9b8>
c0032ea4:	83 c0 01             	add    $0x1,%eax
c0032ea7:	01 f1                	add    %esi,%ecx
c0032ea9:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c0032eaf:	83 c7 08             	add    $0x8,%edi
c0032eb2:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032eb5:	83 f8 07             	cmp    $0x7,%eax
c0032eb8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ebe:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ec4:	7e 32                	jle    c0032ef8 <_svfprintf_r+0xa68>
c0032ec6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ecc:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ed0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ed3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ed7:	8b 45 08             	mov    0x8(%ebp),%eax
c0032eda:	89 04 24             	mov    %eax,(%esp)
c0032edd:	e8 be 40 00 00       	call   c0036fa0 <__ssprint_r>
c0032ee2:	85 c0                	test   %eax,%eax
c0032ee4:	0f 85 76 f7 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0032eea:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ef0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ef3:	90                   	nop
c0032ef4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032ef8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c0032eff:	01 00 00 
c0032f02:	0f 85 50 01 00 00    	jne    c0033058 <_svfprintf_r+0xbc8>
c0032f08:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032f0e:	89 07                	mov    %eax,(%edi)
c0032f10:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032f16:	01 c1                	add    %eax,%ecx
c0032f18:	89 47 04             	mov    %eax,0x4(%edi)
c0032f1b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032f21:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032f27:	83 c0 01             	add    $0x1,%eax
c0032f2a:	83 f8 07             	cmp    $0x7,%eax
c0032f2d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032f33:	0f 8f 6a 04 00 00    	jg     c00333a3 <_svfprintf_r+0xf13>
c0032f39:	83 c7 08             	add    $0x8,%edi
c0032f3c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032f43:	0f 84 d7 00 00 00    	je     c0033020 <_svfprintf_r+0xb90>
c0032f49:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032f4f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032f55:	85 f6                	test   %esi,%esi
c0032f57:	0f 8e c3 00 00 00    	jle    c0033020 <_svfprintf_r+0xb90>
c0032f5d:	83 fe 10             	cmp    $0x10,%esi
c0032f60:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032f66:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032f6c:	7f 0a                	jg     c0032f78 <_svfprintf_r+0xae8>
c0032f6e:	eb 64                	jmp    c0032fd4 <_svfprintf_r+0xb44>
c0032f70:	83 ee 10             	sub    $0x10,%esi
c0032f73:	83 fe 10             	cmp    $0x10,%esi
c0032f76:	7e 5c                	jle    c0032fd4 <_svfprintf_r+0xb44>
c0032f78:	83 c0 01             	add    $0x1,%eax
c0032f7b:	83 c1 10             	add    $0x10,%ecx
c0032f7e:	c7 07 64 93 03 c0    	movl   $0xc0039364,(%edi)
c0032f84:	83 c7 08             	add    $0x8,%edi
c0032f87:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032f8e:	83 f8 07             	cmp    $0x7,%eax
c0032f91:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032f97:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032f9d:	7e d1                	jle    c0032f70 <_svfprintf_r+0xae0>
c0032f9f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032fa2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032fa6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032faa:	8b 45 08             	mov    0x8(%ebp),%eax
c0032fad:	89 04 24             	mov    %eax,(%esp)
c0032fb0:	e8 eb 3f 00 00       	call   c0036fa0 <__ssprint_r>
c0032fb5:	85 c0                	test   %eax,%eax
c0032fb7:	0f 85 a3 f6 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0032fbd:	83 ee 10             	sub    $0x10,%esi
c0032fc0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032fc6:	83 fe 10             	cmp    $0x10,%esi
c0032fc9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032fcf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032fd2:	7f a4                	jg     c0032f78 <_svfprintf_r+0xae8>
c0032fd4:	83 c0 01             	add    $0x1,%eax
c0032fd7:	01 f1                	add    %esi,%ecx
c0032fd9:	83 f8 07             	cmp    $0x7,%eax
c0032fdc:	c7 07 64 93 03 c0    	movl   $0xc0039364,(%edi)
c0032fe2:	89 77 04             	mov    %esi,0x4(%edi)
c0032fe5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032feb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ff1:	7e 2d                	jle    c0033020 <_svfprintf_r+0xb90>
c0032ff3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ff9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ffd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033000:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033004:	8b 45 08             	mov    0x8(%ebp),%eax
c0033007:	89 04 24             	mov    %eax,(%esp)
c003300a:	e8 91 3f 00 00       	call   c0036fa0 <__ssprint_r>
c003300f:	85 c0                	test   %eax,%eax
c0033011:	0f 85 49 f6 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033017:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003301d:	8d 76 00             	lea    0x0(%esi),%esi
c0033020:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0033026:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c003302c:	39 c2                	cmp    %eax,%edx
c003302e:	0f 4d c2             	cmovge %edx,%eax
c0033031:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0033037:	85 c9                	test   %ecx,%ecx
c0033039:	0f 85 99 03 00 00    	jne    c00333d8 <_svfprintf_r+0xf48>
c003303f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0033046:	00 00 00 
c0033049:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003304c:	e9 da f4 ff ff       	jmp    c003252b <_svfprintf_r+0x9b>
c0033051:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0033058:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003305f:	0f 8e 5b 02 00 00    	jle    c00332c0 <_svfprintf_r+0xe30>
c0033065:	d9 ee                	fldz   
c0033067:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c003306d:	df e9                	fucomip %st(1),%st
c003306f:	dd d8                	fstp   %st(0)
c0033071:	0f 8a 59 04 00 00    	jp     c00334d0 <_svfprintf_r+0x1040>
c0033077:	0f 85 53 04 00 00    	jne    c00334d0 <_svfprintf_r+0x1040>
c003307d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033083:	83 c1 01             	add    $0x1,%ecx
c0033086:	83 c7 08             	add    $0x8,%edi
c0033089:	c7 47 f8 eb 91 03 c0 	movl   $0xc00391eb,-0x8(%edi)
c0033090:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0033097:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003309d:	83 c0 01             	add    $0x1,%eax
c00330a0:	83 f8 07             	cmp    $0x7,%eax
c00330a3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330a9:	0f 8f 63 09 00 00    	jg     c0033a12 <_svfprintf_r+0x1582>
c00330af:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c00330b5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c00330bb:	7c 0d                	jl     c00330ca <_svfprintf_r+0xc3a>
c00330bd:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00330c4:	0f 84 72 fe ff ff    	je     c0032f3c <_svfprintf_r+0xaac>
c00330ca:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00330d0:	83 c7 08             	add    $0x8,%edi
c00330d3:	89 47 f8             	mov    %eax,-0x8(%edi)
c00330d6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00330dc:	89 47 fc             	mov    %eax,-0x4(%edi)
c00330df:	01 c1                	add    %eax,%ecx
c00330e1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330e7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00330ed:	83 c0 01             	add    $0x1,%eax
c00330f0:	83 f8 07             	cmp    $0x7,%eax
c00330f3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330f9:	0f 8f dc 0b 00 00    	jg     c0033cdb <_svfprintf_r+0x184b>
c00330ff:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0033105:	8d 70 ff             	lea    -0x1(%eax),%esi
c0033108:	85 f6                	test   %esi,%esi
c003310a:	0f 8e 2c fe ff ff    	jle    c0032f3c <_svfprintf_r+0xaac>
c0033110:	83 fe 10             	cmp    $0x10,%esi
c0033113:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033119:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c003311f:	7f 13                	jg     c0033134 <_svfprintf_r+0xca4>
c0033121:	e9 e6 05 00 00       	jmp    c003370c <_svfprintf_r+0x127c>
c0033126:	66 90                	xchg   %ax,%ax
c0033128:	83 ee 10             	sub    $0x10,%esi
c003312b:	83 fe 10             	cmp    $0x10,%esi
c003312e:	0f 8e d8 05 00 00    	jle    c003370c <_svfprintf_r+0x127c>
c0033134:	83 c0 01             	add    $0x1,%eax
c0033137:	83 c1 10             	add    $0x10,%ecx
c003313a:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c0033140:	83 c7 08             	add    $0x8,%edi
c0033143:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003314a:	83 f8 07             	cmp    $0x7,%eax
c003314d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033153:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033159:	7e cd                	jle    c0033128 <_svfprintf_r+0xc98>
c003315b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003315e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0033162:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033166:	8b 45 08             	mov    0x8(%ebp),%eax
c0033169:	89 04 24             	mov    %eax,(%esp)
c003316c:	e8 2f 3e 00 00       	call   c0036fa0 <__ssprint_r>
c0033171:	85 c0                	test   %eax,%eax
c0033173:	0f 85 e7 f4 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033179:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003317f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033182:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033188:	eb 9e                	jmp    c0033128 <_svfprintf_r+0xc98>
c003318a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033190:	84 c0                	test   %al,%al
c0033192:	75 2c                	jne    c00331c0 <_svfprintf_r+0xd30>
c0033194:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003319b:	74 23                	je     c00331c0 <_svfprintf_r+0xd30>
c003319d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c00331a3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c00331a7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00331ad:	8d 45 a7             	lea    -0x59(%ebp),%eax
c00331b0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00331b6:	e9 2d f7 ff ff       	jmp    c00328e8 <_svfprintf_r+0x458>
c00331bb:	90                   	nop
c00331bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00331c0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00331c3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c00331ca:	00 00 00 
c00331cd:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00331d3:	e9 10 f7 ff ff       	jmp    c00328e8 <_svfprintf_r+0x458>
c00331d8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c00331de:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c00331e4:	85 f6                	test   %esi,%esi
c00331e6:	0f 8e 26 fc ff ff    	jle    c0032e12 <_svfprintf_r+0x982>
c00331ec:	83 fe 10             	cmp    $0x10,%esi
c00331ef:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00331f5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00331fb:	7f 0b                	jg     c0033208 <_svfprintf_r+0xd78>
c00331fd:	eb 65                	jmp    c0033264 <_svfprintf_r+0xdd4>
c00331ff:	90                   	nop
c0033200:	83 ee 10             	sub    $0x10,%esi
c0033203:	83 fe 10             	cmp    $0x10,%esi
c0033206:	7e 5c                	jle    c0033264 <_svfprintf_r+0xdd4>
c0033208:	83 c0 01             	add    $0x1,%eax
c003320b:	83 c1 10             	add    $0x10,%ecx
c003320e:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c0033214:	83 c7 08             	add    $0x8,%edi
c0033217:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003321e:	83 f8 07             	cmp    $0x7,%eax
c0033221:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033227:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003322d:	7e d1                	jle    c0033200 <_svfprintf_r+0xd70>
c003322f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033232:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0033236:	89 44 24 04          	mov    %eax,0x4(%esp)
c003323a:	8b 45 08             	mov    0x8(%ebp),%eax
c003323d:	89 04 24             	mov    %eax,(%esp)
c0033240:	e8 5b 3d 00 00       	call   c0036fa0 <__ssprint_r>
c0033245:	85 c0                	test   %eax,%eax
c0033247:	0f 85 13 f4 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c003324d:	83 ee 10             	sub    $0x10,%esi
c0033250:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033256:	83 fe 10             	cmp    $0x10,%esi
c0033259:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003325f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033262:	7f a4                	jg     c0033208 <_svfprintf_r+0xd78>
c0033264:	83 c0 01             	add    $0x1,%eax
c0033267:	01 f1                	add    %esi,%ecx
c0033269:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c003326f:	83 c7 08             	add    $0x8,%edi
c0033272:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033275:	83 f8 07             	cmp    $0x7,%eax
c0033278:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003327e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033284:	0f 8e 88 fb ff ff    	jle    c0032e12 <_svfprintf_r+0x982>
c003328a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033290:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033294:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033297:	89 44 24 04          	mov    %eax,0x4(%esp)
c003329b:	8b 45 08             	mov    0x8(%ebp),%eax
c003329e:	89 04 24             	mov    %eax,(%esp)
c00332a1:	e8 fa 3c 00 00       	call   c0036fa0 <__ssprint_r>
c00332a6:	85 c0                	test   %eax,%eax
c00332a8:	0f 85 b2 f3 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c00332ae:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00332b4:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00332b7:	e9 56 fb ff ff       	jmp    c0032e12 <_svfprintf_r+0x982>
c00332bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00332c0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c00332c7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00332cd:	0f 8e df 05 00 00    	jle    c00338b2 <_svfprintf_r+0x1422>
c00332d3:	89 07                	mov    %eax,(%edi)
c00332d5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332db:	8d 51 01             	lea    0x1(%ecx),%edx
c00332de:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c00332e5:	83 c7 08             	add    $0x8,%edi
c00332e8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00332ee:	83 c0 01             	add    $0x1,%eax
c00332f1:	83 f8 07             	cmp    $0x7,%eax
c00332f4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332fa:	0f 8f 59 06 00 00    	jg     c0033959 <_svfprintf_r+0x14c9>
c0033300:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0033306:	83 c0 01             	add    $0x1,%eax
c0033309:	83 c7 08             	add    $0x8,%edi
c003330c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033312:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0033315:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c003331b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c003331e:	01 da                	add    %ebx,%edx
c0033320:	83 f8 07             	cmp    $0x7,%eax
c0033323:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033329:	0f 8f f2 05 00 00    	jg     c0033921 <_svfprintf_r+0x1491>
c003332f:	d9 ee                	fldz   
c0033331:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033337:	df e9                	fucomip %st(1),%st
c0033339:	dd d8                	fstp   %st(0)
c003333b:	7a 06                	jp     c0033343 <_svfprintf_r+0xeb3>
c003333d:	0f 84 33 03 00 00    	je     c0033676 <_svfprintf_r+0x11e6>
c0033343:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0033349:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003334f:	83 c1 01             	add    $0x1,%ecx
c0033352:	89 0f                	mov    %ecx,(%edi)
c0033354:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0033357:	89 4f 04             	mov    %ecx,0x4(%edi)
c003335a:	01 ca                	add    %ecx,%edx
c003335c:	83 c0 01             	add    $0x1,%eax
c003335f:	83 f8 07             	cmp    $0x7,%eax
c0033362:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033368:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003336e:	0f 8f 75 05 00 00    	jg     c00338e9 <_svfprintf_r+0x1459>
c0033374:	83 c7 08             	add    $0x8,%edi
c0033377:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c003337d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0033383:	89 0f                	mov    %ecx,(%edi)
c0033385:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033388:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c003338b:	83 c0 01             	add    $0x1,%eax
c003338e:	83 f8 07             	cmp    $0x7,%eax
c0033391:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033397:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003339d:	0f 8e 96 fb ff ff    	jle    c0032f39 <_svfprintf_r+0xaa9>
c00333a3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00333a9:	89 44 24 08          	mov    %eax,0x8(%esp)
c00333ad:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333b0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333b4:	8b 45 08             	mov    0x8(%ebp),%eax
c00333b7:	89 04 24             	mov    %eax,(%esp)
c00333ba:	e8 e1 3b 00 00       	call   c0036fa0 <__ssprint_r>
c00333bf:	85 c0                	test   %eax,%eax
c00333c1:	0f 85 99 f2 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c00333c7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00333cd:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00333d0:	e9 67 fb ff ff       	jmp    c0032f3c <_svfprintf_r+0xaac>
c00333d5:	8d 76 00             	lea    0x0(%esi),%esi
c00333d8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00333de:	89 44 24 08          	mov    %eax,0x8(%esp)
c00333e2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333e5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00333ec:	89 04 24             	mov    %eax,(%esp)
c00333ef:	e8 ac 3b 00 00       	call   c0036fa0 <__ssprint_r>
c00333f4:	85 c0                	test   %eax,%eax
c00333f6:	0f 84 43 fc ff ff    	je     c003303f <_svfprintf_r+0xbaf>
c00333fc:	e9 5f f2 ff ff       	jmp    c0032660 <_svfprintf_r+0x1d0>
c0033401:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0033408:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003340e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033412:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033415:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033419:	8b 45 08             	mov    0x8(%ebp),%eax
c003341c:	89 04 24             	mov    %eax,(%esp)
c003341f:	e8 7c 3b 00 00       	call   c0036fa0 <__ssprint_r>
c0033424:	85 c0                	test   %eax,%eax
c0033426:	0f 85 34 f2 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c003342c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033432:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033435:	e9 c8 f9 ff ff       	jmp    c0032e02 <_svfprintf_r+0x972>
c003343a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033440:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033446:	89 44 24 08          	mov    %eax,0x8(%esp)
c003344a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003344d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033451:	8b 45 08             	mov    0x8(%ebp),%eax
c0033454:	89 04 24             	mov    %eax,(%esp)
c0033457:	e8 44 3b 00 00       	call   c0036fa0 <__ssprint_r>
c003345c:	85 c0                	test   %eax,%eax
c003345e:	0f 85 fc f1 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033464:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003346a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003346d:	e9 53 f9 ff ff       	jmp    c0032dc5 <_svfprintf_r+0x935>
c0033472:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033478:	89 c2                	mov    %eax,%edx
c003347a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033480:	89 c8                	mov    %ecx,%eax
c0033482:	83 ea 01             	sub    $0x1,%edx
c0033485:	83 e0 07             	and    $0x7,%eax
c0033488:	c1 e9 03             	shr    $0x3,%ecx
c003348b:	83 c0 30             	add    $0x30,%eax
c003348e:	85 c9                	test   %ecx,%ecx
c0033490:	88 02                	mov    %al,(%edx)
c0033492:	75 ec                	jne    c0033480 <_svfprintf_r+0xff0>
c0033494:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003349b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c00334a1:	0f 84 5b 01 00 00    	je     c0033602 <_svfprintf_r+0x1172>
c00334a7:	3c 30                	cmp    $0x30,%al
c00334a9:	74 0b                	je     c00334b6 <_svfprintf_r+0x1026>
c00334ab:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c00334b2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c00334b6:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00334b9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00334bf:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00334c5:	e9 1e f4 ff ff       	jmp    c00328e8 <_svfprintf_r+0x458>
c00334ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00334d0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00334d6:	85 db                	test   %ebx,%ebx
c00334d8:	0f 8e 66 05 00 00    	jle    c0033a44 <_svfprintf_r+0x15b4>
c00334de:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c00334e4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c00334ea:	01 d0                	add    %edx,%eax
c00334ec:	89 c3                	mov    %eax,%ebx
c00334ee:	29 d3                	sub    %edx,%ebx
c00334f0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c00334f6:	89 d0                	mov    %edx,%eax
c00334f8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c00334fe:	39 d3                	cmp    %edx,%ebx
c0033500:	0f 4f da             	cmovg  %edx,%ebx
c0033503:	85 db                	test   %ebx,%ebx
c0033505:	7e 28                	jle    c003352f <_svfprintf_r+0x109f>
c0033507:	89 07                	mov    %eax,(%edi)
c0033509:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003350f:	01 d9                	add    %ebx,%ecx
c0033511:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033514:	83 c7 08             	add    $0x8,%edi
c0033517:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003351d:	83 c0 01             	add    $0x1,%eax
c0033520:	83 f8 07             	cmp    $0x7,%eax
c0033523:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033529:	0f 8f 58 09 00 00    	jg     c0033e87 <_svfprintf_r+0x19f7>
c003352f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033535:	31 c0                	xor    %eax,%eax
c0033537:	85 db                	test   %ebx,%ebx
c0033539:	0f 49 c3             	cmovns %ebx,%eax
c003353c:	29 c6                	sub    %eax,%esi
c003353e:	85 f6                	test   %esi,%esi
c0033540:	0f 8e 40 02 00 00    	jle    c0033786 <_svfprintf_r+0x12f6>
c0033546:	83 fe 10             	cmp    $0x10,%esi
c0033549:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003354f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033555:	7f 15                	jg     c003356c <_svfprintf_r+0x10dc>
c0033557:	e9 db 01 00 00       	jmp    c0033737 <_svfprintf_r+0x12a7>
c003355c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033560:	83 ee 10             	sub    $0x10,%esi
c0033563:	83 fe 10             	cmp    $0x10,%esi
c0033566:	0f 8e cb 01 00 00    	jle    c0033737 <_svfprintf_r+0x12a7>
c003356c:	83 c0 01             	add    $0x1,%eax
c003356f:	83 c1 10             	add    $0x10,%ecx
c0033572:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c0033578:	83 c7 08             	add    $0x8,%edi
c003357b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033582:	83 f8 07             	cmp    $0x7,%eax
c0033585:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003358b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033591:	7e cd                	jle    c0033560 <_svfprintf_r+0x10d0>
c0033593:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033596:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003359a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003359e:	8b 45 08             	mov    0x8(%ebp),%eax
c00335a1:	89 04 24             	mov    %eax,(%esp)
c00335a4:	e8 f7 39 00 00       	call   c0036fa0 <__ssprint_r>
c00335a9:	85 c0                	test   %eax,%eax
c00335ab:	0f 85 af f0 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c00335b1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00335b7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00335ba:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00335c0:	eb 9e                	jmp    c0033560 <_svfprintf_r+0x10d0>
c00335c2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00335c5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c00335ca:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00335d0:	89 c7                	mov    %eax,%edi
c00335d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00335d8:	89 c8                	mov    %ecx,%eax
c00335da:	83 ef 01             	sub    $0x1,%edi
c00335dd:	f7 e6                	mul    %esi
c00335df:	c1 ea 03             	shr    $0x3,%edx
c00335e2:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00335e5:	01 c0                	add    %eax,%eax
c00335e7:	29 c1                	sub    %eax,%ecx
c00335e9:	83 c1 30             	add    $0x30,%ecx
c00335ec:	85 d2                	test   %edx,%edx
c00335ee:	88 0f                	mov    %cl,(%edi)
c00335f0:	89 d1                	mov    %edx,%ecx
c00335f2:	75 e4                	jne    c00335d8 <_svfprintf_r+0x1148>
c00335f4:	89 fa                	mov    %edi,%edx
c00335f6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c00335fc:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0033602:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033605:	29 d0                	sub    %edx,%eax
c0033607:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003360d:	e9 d6 f2 ff ff       	jmp    c00328e8 <_svfprintf_r+0x458>
c0033612:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033618:	83 f9 09             	cmp    $0x9,%ecx
c003361b:	77 a5                	ja     c00335c2 <_svfprintf_r+0x1132>
c003361d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033623:	83 c1 30             	add    $0x30,%ecx
c0033626:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0033629:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003362f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033632:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033638:	e9 ab f2 ff ff       	jmp    c00328e8 <_svfprintf_r+0x458>
c003363d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033643:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033647:	8b 45 0c             	mov    0xc(%ebp),%eax
c003364a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003364e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033651:	89 04 24             	mov    %eax,(%esp)
c0033654:	e8 47 39 00 00       	call   c0036fa0 <__ssprint_r>
c0033659:	85 c0                	test   %eax,%eax
c003365b:	0f 85 ff ef ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033661:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033668:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003366b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033671:	e9 18 f7 ff ff       	jmp    c0032d8e <_svfprintf_r+0x8fe>
c0033676:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003367c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003367f:	85 f6                	test   %esi,%esi
c0033681:	0f 8e f0 fc ff ff    	jle    c0033377 <_svfprintf_r+0xee7>
c0033687:	83 fe 10             	cmp    $0x10,%esi
c003368a:	7e 70                	jle    c00336fc <_svfprintf_r+0x126c>
c003368c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033692:	eb 0c                	jmp    c00336a0 <_svfprintf_r+0x1210>
c0033694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033698:	83 ee 10             	sub    $0x10,%esi
c003369b:	83 fe 10             	cmp    $0x10,%esi
c003369e:	7e 5c                	jle    c00336fc <_svfprintf_r+0x126c>
c00336a0:	83 c0 01             	add    $0x1,%eax
c00336a3:	83 c2 10             	add    $0x10,%edx
c00336a6:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c00336ac:	83 c7 08             	add    $0x8,%edi
c00336af:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00336b6:	83 f8 07             	cmp    $0x7,%eax
c00336b9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00336bf:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00336c5:	7e d1                	jle    c0033698 <_svfprintf_r+0x1208>
c00336c7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00336ca:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00336ce:	89 44 24 04          	mov    %eax,0x4(%esp)
c00336d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00336d5:	89 04 24             	mov    %eax,(%esp)
c00336d8:	e8 c3 38 00 00       	call   c0036fa0 <__ssprint_r>
c00336dd:	85 c0                	test   %eax,%eax
c00336df:	0f 85 7b ef ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c00336e5:	83 ee 10             	sub    $0x10,%esi
c00336e8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00336ee:	83 fe 10             	cmp    $0x10,%esi
c00336f1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00336f7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00336fa:	7f a4                	jg     c00336a0 <_svfprintf_r+0x1210>
c00336fc:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c0033702:	01 f2                	add    %esi,%edx
c0033704:	89 77 04             	mov    %esi,0x4(%edi)
c0033707:	e9 50 fc ff ff       	jmp    c003335c <_svfprintf_r+0xecc>
c003370c:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c0033712:	01 f1                	add    %esi,%ecx
c0033714:	89 77 04             	mov    %esi,0x4(%edi)
c0033717:	e9 6f fc ff ff       	jmp    c003338b <_svfprintf_r+0xefb>
c003371c:	8b 45 14             	mov    0x14(%ebp),%eax
c003371f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0033725:	8b 00                	mov    (%eax),%eax
c0033727:	89 10                	mov    %edx,(%eax)
c0033729:	8b 45 14             	mov    0x14(%ebp),%eax
c003372c:	83 c0 04             	add    $0x4,%eax
c003372f:	89 45 14             	mov    %eax,0x14(%ebp)
c0033732:	e9 f4 ed ff ff       	jmp    c003252b <_svfprintf_r+0x9b>
c0033737:	83 c0 01             	add    $0x1,%eax
c003373a:	01 f1                	add    %esi,%ecx
c003373c:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c0033742:	83 c7 08             	add    $0x8,%edi
c0033745:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033748:	83 f8 07             	cmp    $0x7,%eax
c003374b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033751:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033757:	7e 2d                	jle    c0033786 <_svfprintf_r+0x12f6>
c0033759:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003375f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033763:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033766:	89 44 24 04          	mov    %eax,0x4(%esp)
c003376a:	8b 45 08             	mov    0x8(%ebp),%eax
c003376d:	89 04 24             	mov    %eax,(%esp)
c0033770:	e8 2b 38 00 00       	call   c0036fa0 <__ssprint_r>
c0033775:	85 c0                	test   %eax,%eax
c0033777:	0f 85 e3 ee ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c003377d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033783:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033786:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003378c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033792:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033798:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c003379e:	89 c6                	mov    %eax,%esi
c00337a0:	7c 0d                	jl     c00337af <_svfprintf_r+0x131f>
c00337a2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00337a9:	0f 84 5e 05 00 00    	je     c0033d0d <_svfprintf_r+0x187d>
c00337af:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00337b5:	89 07                	mov    %eax,(%edi)
c00337b7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00337bd:	01 c1                	add    %eax,%ecx
c00337bf:	89 47 04             	mov    %eax,0x4(%edi)
c00337c2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00337c8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00337ce:	83 c0 01             	add    $0x1,%eax
c00337d1:	83 f8 07             	cmp    $0x7,%eax
c00337d4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00337da:	0f 8f d9 06 00 00    	jg     c0033eb9 <_svfprintf_r+0x1a29>
c00337e0:	83 c7 08             	add    $0x8,%edi
c00337e3:	89 d0                	mov    %edx,%eax
c00337e5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c00337eb:	89 f2                	mov    %esi,%edx
c00337ed:	29 f3                	sub    %esi,%ebx
c00337ef:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00337f5:	29 c6                	sub    %eax,%esi
c00337f7:	39 de                	cmp    %ebx,%esi
c00337f9:	0f 4e de             	cmovle %esi,%ebx
c00337fc:	85 db                	test   %ebx,%ebx
c00337fe:	7e 29                	jle    c0033829 <_svfprintf_r+0x1399>
c0033800:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033806:	01 d9                	add    %ebx,%ecx
c0033808:	83 c7 08             	add    $0x8,%edi
c003380b:	89 57 f8             	mov    %edx,-0x8(%edi)
c003380e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033811:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033817:	83 c0 01             	add    $0x1,%eax
c003381a:	83 f8 07             	cmp    $0x7,%eax
c003381d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033823:	0f 8f c8 06 00 00    	jg     c0033ef1 <_svfprintf_r+0x1a61>
c0033829:	31 c0                	xor    %eax,%eax
c003382b:	85 db                	test   %ebx,%ebx
c003382d:	0f 49 c3             	cmovns %ebx,%eax
c0033830:	29 c6                	sub    %eax,%esi
c0033832:	85 f6                	test   %esi,%esi
c0033834:	0f 8e 02 f7 ff ff    	jle    c0032f3c <_svfprintf_r+0xaac>
c003383a:	83 fe 10             	cmp    $0x10,%esi
c003383d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033843:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033849:	7f 11                	jg     c003385c <_svfprintf_r+0x13cc>
c003384b:	e9 bc fe ff ff       	jmp    c003370c <_svfprintf_r+0x127c>
c0033850:	83 ee 10             	sub    $0x10,%esi
c0033853:	83 fe 10             	cmp    $0x10,%esi
c0033856:	0f 8e b0 fe ff ff    	jle    c003370c <_svfprintf_r+0x127c>
c003385c:	83 c0 01             	add    $0x1,%eax
c003385f:	83 c1 10             	add    $0x10,%ecx
c0033862:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c0033868:	83 c7 08             	add    $0x8,%edi
c003386b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033872:	83 f8 07             	cmp    $0x7,%eax
c0033875:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003387b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033881:	7e cd                	jle    c0033850 <_svfprintf_r+0x13c0>
c0033883:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033886:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003388a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003388e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033891:	89 04 24             	mov    %eax,(%esp)
c0033894:	e8 07 37 00 00       	call   c0036fa0 <__ssprint_r>
c0033899:	85 c0                	test   %eax,%eax
c003389b:	0f 85 bf ed ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c00338a1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00338a7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338aa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00338b0:	eb 9e                	jmp    c0033850 <_svfprintf_r+0x13c0>
c00338b2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00338b9:	0f 85 14 fa ff ff    	jne    c00332d3 <_svfprintf_r+0xe43>
c00338bf:	89 07                	mov    %eax,(%edi)
c00338c1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00338c7:	8d 51 01             	lea    0x1(%ecx),%edx
c00338ca:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c00338d1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00338d7:	83 c0 01             	add    $0x1,%eax
c00338da:	83 f8 07             	cmp    $0x7,%eax
c00338dd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00338e3:	0f 8e 8b fa ff ff    	jle    c0033374 <_svfprintf_r+0xee4>
c00338e9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338ef:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338f3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338f6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338fa:	8b 45 08             	mov    0x8(%ebp),%eax
c00338fd:	89 04 24             	mov    %eax,(%esp)
c0033900:	e8 9b 36 00 00       	call   c0036fa0 <__ssprint_r>
c0033905:	85 c0                	test   %eax,%eax
c0033907:	0f 85 53 ed ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c003390d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033913:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033916:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003391c:	e9 56 fa ff ff       	jmp    c0033377 <_svfprintf_r+0xee7>
c0033921:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033927:	89 44 24 08          	mov    %eax,0x8(%esp)
c003392b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003392e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033932:	8b 45 08             	mov    0x8(%ebp),%eax
c0033935:	89 04 24             	mov    %eax,(%esp)
c0033938:	e8 63 36 00 00       	call   c0036fa0 <__ssprint_r>
c003393d:	85 c0                	test   %eax,%eax
c003393f:	0f 85 1b ed ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033945:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003394b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003394e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033954:	e9 d6 f9 ff ff       	jmp    c003332f <_svfprintf_r+0xe9f>
c0033959:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003395f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033963:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033966:	89 44 24 04          	mov    %eax,0x4(%esp)
c003396a:	8b 45 08             	mov    0x8(%ebp),%eax
c003396d:	89 04 24             	mov    %eax,(%esp)
c0033970:	e8 2b 36 00 00       	call   c0036fa0 <__ssprint_r>
c0033975:	85 c0                	test   %eax,%eax
c0033977:	0f 85 e3 ec ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c003397d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033983:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033986:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003398c:	e9 6f f9 ff ff       	jmp    c0033300 <_svfprintf_r+0xe70>
c0033991:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033997:	dd 1c 24             	fstpl  (%esp)
c003399a:	e8 11 35 00 00       	call   c0036eb0 <__fpclassifyd>
c003399f:	85 c0                	test   %eax,%eax
c00339a1:	0f 85 a3 01 00 00    	jne    c0033b4a <_svfprintf_r+0x16ba>
c00339a7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c00339ae:	ba ba 91 03 c0       	mov    $0xc00391ba,%edx
c00339b3:	b8 be 91 03 c0       	mov    $0xc00391be,%eax
c00339b8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00339bf:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c00339c6:	00 00 00 
c00339c9:	0f 4e c2             	cmovle %edx,%eax
c00339cc:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00339d2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c00339d9:	ff ff ff 
c00339dc:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c00339e3:	00 00 00 
c00339e6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00339ed:	00 00 00 
c00339f0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00339f7:	00 00 00 
c00339fa:	e9 29 ed ff ff       	jmp    c0032728 <_svfprintf_r+0x298>
c00339ff:	dd 00                	fldl   (%eax)
c0033a01:	83 c0 08             	add    $0x8,%eax
c0033a04:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0033a0a:	89 45 14             	mov    %eax,0x14(%ebp)
c0033a0d:	e9 e6 ef ff ff       	jmp    c00329f8 <_svfprintf_r+0x568>
c0033a12:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a18:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a1c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a1f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a23:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a26:	89 04 24             	mov    %eax,(%esp)
c0033a29:	e8 72 35 00 00       	call   c0036fa0 <__ssprint_r>
c0033a2e:	85 c0                	test   %eax,%eax
c0033a30:	0f 85 2a ec ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033a36:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a3c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a3f:	e9 6b f6 ff ff       	jmp    c00330af <_svfprintf_r+0xc1f>
c0033a44:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033a4a:	83 c1 01             	add    $0x1,%ecx
c0033a4d:	83 c7 08             	add    $0x8,%edi
c0033a50:	c7 47 f8 eb 91 03 c0 	movl   $0xc00391eb,-0x8(%edi)
c0033a57:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0033a5e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033a64:	83 c0 01             	add    $0x1,%eax
c0033a67:	83 f8 07             	cmp    $0x7,%eax
c0033a6a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033a70:	0f 8f ef 02 00 00    	jg     c0033d65 <_svfprintf_r+0x18d5>
c0033a76:	85 db                	test   %ebx,%ebx
c0033a78:	75 17                	jne    c0033a91 <_svfprintf_r+0x1601>
c0033a7a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033a80:	85 d2                	test   %edx,%edx
c0033a82:	75 0d                	jne    c0033a91 <_svfprintf_r+0x1601>
c0033a84:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033a8b:	0f 84 ab f4 ff ff    	je     c0032f3c <_svfprintf_r+0xaac>
c0033a91:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033a97:	83 c7 08             	add    $0x8,%edi
c0033a9a:	89 47 f8             	mov    %eax,-0x8(%edi)
c0033a9d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033aa3:	89 47 fc             	mov    %eax,-0x4(%edi)
c0033aa6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0033aa9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033aaf:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033ab5:	83 c0 01             	add    $0x1,%eax
c0033ab8:	83 f8 07             	cmp    $0x7,%eax
c0033abb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033ac1:	0f 8f 60 03 00 00    	jg     c0033e27 <_svfprintf_r+0x1997>
c0033ac7:	f7 db                	neg    %ebx
c0033ac9:	85 db                	test   %ebx,%ebx
c0033acb:	0f 8e 21 03 00 00    	jle    c0033df2 <_svfprintf_r+0x1962>
c0033ad1:	83 fb 10             	cmp    $0x10,%ebx
c0033ad4:	0f 8e c3 02 00 00    	jle    c0033d9d <_svfprintf_r+0x190d>
c0033ada:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0033ae0:	eb 12                	jmp    c0033af4 <_svfprintf_r+0x1664>
c0033ae2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033ae8:	83 eb 10             	sub    $0x10,%ebx
c0033aeb:	83 fb 10             	cmp    $0x10,%ebx
c0033aee:	0f 8e a9 02 00 00    	jle    c0033d9d <_svfprintf_r+0x190d>
c0033af4:	83 c0 01             	add    $0x1,%eax
c0033af7:	83 c2 10             	add    $0x10,%edx
c0033afa:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c0033b00:	83 c7 08             	add    $0x8,%edi
c0033b03:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033b0a:	83 f8 07             	cmp    $0x7,%eax
c0033b0d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033b13:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033b19:	7e cd                	jle    c0033ae8 <_svfprintf_r+0x1658>
c0033b1b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033b1e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033b22:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033b26:	8b 45 08             	mov    0x8(%ebp),%eax
c0033b29:	89 04 24             	mov    %eax,(%esp)
c0033b2c:	e8 6f 34 00 00       	call   c0036fa0 <__ssprint_r>
c0033b31:	85 c0                	test   %eax,%eax
c0033b33:	0f 85 27 eb ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033b39:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033b3f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033b42:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033b48:	eb 9e                	jmp    c0033ae8 <_svfprintf_r+0x1658>
c0033b4a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033b50:	83 e3 df             	and    $0xffffffdf,%ebx
c0033b53:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c0033b5a:	0f 84 05 03 00 00    	je     c0033e65 <_svfprintf_r+0x19d5>
c0033b60:	83 fb 47             	cmp    $0x47,%ebx
c0033b63:	75 16                	jne    c0033b7b <_svfprintf_r+0x16eb>
c0033b65:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033b6b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033b70:	85 d2                	test   %edx,%edx
c0033b72:	0f 45 c2             	cmovne %edx,%eax
c0033b75:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0033b7b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033b81:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033b87:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c0033b8d:	80 cc 01             	or     $0x1,%ah
c0033b90:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033b96:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0033b9c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0033ba3:	85 c0                	test   %eax,%eax
c0033ba5:	0f 88 ba 05 00 00    	js     c0034165 <_svfprintf_r+0x1cd5>
c0033bab:	83 fb 46             	cmp    $0x46,%ebx
c0033bae:	0f 94 c0             	sete   %al
c0033bb1:	89 c6                	mov    %eax,%esi
c0033bb3:	0f 84 d4 03 00 00    	je     c0033f8d <_svfprintf_r+0x1afd>
c0033bb9:	83 fb 45             	cmp    $0x45,%ebx
c0033bbc:	0f 85 99 05 00 00    	jne    c003415b <_svfprintf_r+0x1ccb>
c0033bc2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033bc8:	dd 54 24 04          	fstl   0x4(%esp)
c0033bcc:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0033bd3:	00 
c0033bd4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033bda:	8d 70 01             	lea    0x1(%eax),%esi
c0033bdd:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033be3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033be7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033bed:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033bf1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033bf7:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033bfb:	8b 45 08             	mov    0x8(%ebp),%eax
c0033bfe:	89 74 24 10          	mov    %esi,0x10(%esp)
c0033c02:	89 04 24             	mov    %eax,(%esp)
c0033c05:	e8 56 09 00 00       	call   c0034560 <_dtoa_r>
c0033c0a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033c10:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033c13:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033c19:	d9 ee                	fldz   
c0033c1b:	d9 c9                	fxch   %st(1)
c0033c1d:	df e9                	fucomip %st(1),%st
c0033c1f:	dd d8                	fstp   %st(0)
c0033c21:	0f 8a fd 00 00 00    	jp     c0033d24 <_svfprintf_r+0x1894>
c0033c27:	89 c8                	mov    %ecx,%eax
c0033c29:	0f 85 f5 00 00 00    	jne    c0033d24 <_svfprintf_r+0x1894>
c0033c2f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033c35:	83 fb 47             	cmp    $0x47,%ebx
c0033c38:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033c3e:	0f 84 1e 04 00 00    	je     c0034062 <_svfprintf_r+0x1bd2>
c0033c44:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0033c4b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033c51:	0f 8e 65 04 00 00    	jle    c00340bc <_svfprintf_r+0x1c2c>
c0033c57:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c0033c5e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033c64:	0f 84 3c 05 00 00    	je     c00341a6 <_svfprintf_r+0x1d16>
c0033c6a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033c70:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033c76:	0f 8f f7 04 00 00    	jg     c0034173 <_svfprintf_r+0x1ce3>
c0033c7c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033c82:	83 e0 01             	and    $0x1,%eax
c0033c85:	0f 85 e2 05 00 00    	jne    c003426d <_svfprintf_r+0x1ddd>
c0033c8b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033c91:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033c98:	00 00 00 
c0033c9b:	85 d2                	test   %edx,%edx
c0033c9d:	0f 49 c2             	cmovns %edx,%eax
c0033ca0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033ca6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c0033cad:	0f 85 68 03 00 00    	jne    c003401b <_svfprintf_r+0x1b8b>
c0033cb3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033cb9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033cbf:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033cc6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033ccd:	00 00 00 
c0033cd0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033cd6:	e9 4d ea ff ff       	jmp    c0032728 <_svfprintf_r+0x298>
c0033cdb:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033ce1:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033ce5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033ce8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033cec:	8b 45 08             	mov    0x8(%ebp),%eax
c0033cef:	89 04 24             	mov    %eax,(%esp)
c0033cf2:	e8 a9 32 00 00       	call   c0036fa0 <__ssprint_r>
c0033cf7:	85 c0                	test   %eax,%eax
c0033cf9:	0f 85 61 e9 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033cff:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033d05:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033d08:	e9 f2 f3 ff ff       	jmp    c00330ff <_svfprintf_r+0xc6f>
c0033d0d:	89 d0                	mov    %edx,%eax
c0033d0f:	e9 d1 fa ff ff       	jmp    c00337e5 <_svfprintf_r+0x1355>
c0033d14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033d18:	8d 50 01             	lea    0x1(%eax),%edx
c0033d1b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033d21:	c6 00 30             	movb   $0x30,(%eax)
c0033d24:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033d2a:	39 c1                	cmp    %eax,%ecx
c0033d2c:	77 ea                	ja     c0033d18 <_svfprintf_r+0x1888>
c0033d2e:	e9 fc fe ff ff       	jmp    c0033c2f <_svfprintf_r+0x179f>
c0033d33:	8b 45 08             	mov    0x8(%ebp),%eax
c0033d36:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0033d3d:	00 
c0033d3e:	89 04 24             	mov    %eax,(%esp)
c0033d41:	e8 4a 1b 00 00       	call   c0035890 <_malloc_r>
c0033d46:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033d49:	85 c0                	test   %eax,%eax
c0033d4b:	89 02                	mov    %eax,(%edx)
c0033d4d:	89 42 10             	mov    %eax,0x10(%edx)
c0033d50:	0f 84 15 06 00 00    	je     c003436b <_svfprintf_r+0x1edb>
c0033d56:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033d59:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033d60:	e9 6c e7 ff ff       	jmp    c00324d1 <_svfprintf_r+0x41>
c0033d65:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033d6b:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033d6f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033d72:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033d76:	8b 45 08             	mov    0x8(%ebp),%eax
c0033d79:	89 04 24             	mov    %eax,(%esp)
c0033d7c:	e8 1f 32 00 00       	call   c0036fa0 <__ssprint_r>
c0033d81:	85 c0                	test   %eax,%eax
c0033d83:	0f 85 d7 e8 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033d89:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033d8f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033d92:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033d98:	e9 d9 fc ff ff       	jmp    c0033a76 <_svfprintf_r+0x15e6>
c0033d9d:	83 c0 01             	add    $0x1,%eax
c0033da0:	01 da                	add    %ebx,%edx
c0033da2:	c7 07 54 93 03 c0    	movl   $0xc0039354,(%edi)
c0033da8:	83 c7 08             	add    $0x8,%edi
c0033dab:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033dae:	83 f8 07             	cmp    $0x7,%eax
c0033db1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033db7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033dbd:	7e 33                	jle    c0033df2 <_svfprintf_r+0x1962>
c0033dbf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033dc5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033dc9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033dcc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033dd0:	8b 45 08             	mov    0x8(%ebp),%eax
c0033dd3:	89 04 24             	mov    %eax,(%esp)
c0033dd6:	e8 c5 31 00 00       	call   c0036fa0 <__ssprint_r>
c0033ddb:	85 c0                	test   %eax,%eax
c0033ddd:	0f 85 7d e8 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033de3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033de9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033dec:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033df2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c0033df8:	83 c0 01             	add    $0x1,%eax
c0033dfb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033e01:	89 1f                	mov    %ebx,(%edi)
c0033e03:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033e09:	01 da                	add    %ebx,%edx
c0033e0b:	83 f8 07             	cmp    $0x7,%eax
c0033e0e:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033e11:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033e17:	0f 8f 86 f5 ff ff    	jg     c00333a3 <_svfprintf_r+0xf13>
c0033e1d:	83 c7 08             	add    $0x8,%edi
c0033e20:	89 d1                	mov    %edx,%ecx
c0033e22:	e9 15 f1 ff ff       	jmp    c0032f3c <_svfprintf_r+0xaac>
c0033e27:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033e2d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033e31:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033e34:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033e38:	8b 45 08             	mov    0x8(%ebp),%eax
c0033e3b:	89 04 24             	mov    %eax,(%esp)
c0033e3e:	e8 5d 31 00 00       	call   c0036fa0 <__ssprint_r>
c0033e43:	85 c0                	test   %eax,%eax
c0033e45:	0f 85 15 e8 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033e4b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033e51:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033e54:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033e5a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033e60:	e9 62 fc ff ff       	jmp    c0033ac7 <_svfprintf_r+0x1637>
c0033e65:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c0033e6c:	00 00 00 
c0033e6f:	e9 07 fd ff ff       	jmp    c0033b7b <_svfprintf_r+0x16eb>
c0033e74:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033e7a:	89 04 24             	mov    %eax,(%esp)
c0033e7d:	e8 9e 30 00 00       	call   c0036f20 <strlen>
c0033e82:	e9 6a e8 ff ff       	jmp    c00326f1 <_svfprintf_r+0x261>
c0033e87:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033e8d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033e91:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033e94:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033e98:	8b 45 08             	mov    0x8(%ebp),%eax
c0033e9b:	89 04 24             	mov    %eax,(%esp)
c0033e9e:	e8 fd 30 00 00       	call   c0036fa0 <__ssprint_r>
c0033ea3:	85 c0                	test   %eax,%eax
c0033ea5:	0f 85 b5 e7 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033eab:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033eb1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033eb4:	e9 76 f6 ff ff       	jmp    c003352f <_svfprintf_r+0x109f>
c0033eb9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033ebf:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033ec3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033ec6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033eca:	8b 45 08             	mov    0x8(%ebp),%eax
c0033ecd:	89 04 24             	mov    %eax,(%esp)
c0033ed0:	e8 cb 30 00 00       	call   c0036fa0 <__ssprint_r>
c0033ed5:	85 c0                	test   %eax,%eax
c0033ed7:	0f 85 83 e7 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033edd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033ee3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033ee6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033eec:	e9 f4 f8 ff ff       	jmp    c00337e5 <_svfprintf_r+0x1355>
c0033ef1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033ef7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033efb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033efe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033f02:	8b 45 08             	mov    0x8(%ebp),%eax
c0033f05:	89 04 24             	mov    %eax,(%esp)
c0033f08:	e8 93 30 00 00       	call   c0036fa0 <__ssprint_r>
c0033f0d:	85 c0                	test   %eax,%eax
c0033f0f:	0f 85 4b e7 ff ff    	jne    c0032660 <_svfprintf_r+0x1d0>
c0033f15:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033f1b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033f1e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033f24:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033f2a:	e9 fa f8 ff ff       	jmp    c0033829 <_svfprintf_r+0x1399>
c0033f2f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033f35:	b0 06                	mov    $0x6,%al
c0033f37:	89 75 14             	mov    %esi,0x14(%ebp)
c0033f3a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033f41:	00 00 00 
c0033f44:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033f4b:	00 00 00 
c0033f4e:	83 fa 06             	cmp    $0x6,%edx
c0033f51:	0f 46 c2             	cmovbe %edx,%eax
c0033f54:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033f5a:	85 c0                	test   %eax,%eax
c0033f5c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033f62:	c7 85 28 ff ff ff e4 	movl   $0xc00391e4,-0xd8(%ebp)
c0033f69:	91 03 c0 
c0033f6c:	0f 49 d0             	cmovns %eax,%edx
c0033f6f:	31 db                	xor    %ebx,%ebx
c0033f71:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033f77:	e9 b7 e7 ff ff       	jmp    c0032733 <_svfprintf_r+0x2a3>
c0033f7c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033f83:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033f88:	e9 9d ea ff ff       	jmp    c0032a2a <_svfprintf_r+0x59a>
c0033f8d:	ba 03 00 00 00       	mov    $0x3,%edx
c0033f92:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033f98:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033f9c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033fa2:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033fa6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033fac:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033fb0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033fb6:	dd 54 24 04          	fstl   0x4(%esp)
c0033fba:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033fbe:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033fc4:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033fc8:	8b 45 08             	mov    0x8(%ebp),%eax
c0033fcb:	89 04 24             	mov    %eax,(%esp)
c0033fce:	e8 8d 05 00 00       	call   c0034560 <_dtoa_r>
c0033fd3:	83 fb 47             	cmp    $0x47,%ebx
c0033fd6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033fdc:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033fe2:	75 09                	jne    c0033fed <_svfprintf_r+0x1b5d>
c0033fe4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033feb:	74 5b                	je     c0034048 <_svfprintf_r+0x1bb8>
c0033fed:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033ff3:	89 f0                	mov    %esi,%eax
c0033ff5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033ffb:	01 d1                	add    %edx,%ecx
c0033ffd:	84 c0                	test   %al,%al
c0033fff:	0f 84 14 fc ff ff    	je     c0033c19 <_svfprintf_r+0x1789>
c0034005:	80 3a 30             	cmpb   $0x30,(%edx)
c0034008:	0f 84 37 02 00 00    	je     c0034245 <_svfprintf_r+0x1db5>
c003400e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0034014:	01 c1                	add    %eax,%ecx
c0034016:	e9 fe fb ff ff       	jmp    c0033c19 <_svfprintf_r+0x1789>
c003401b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0034021:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0034027:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c003402c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0034033:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003403a:	00 00 00 
c003403d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0034043:	e9 e4 e6 ff ff       	jmp    c003272c <_svfprintf_r+0x29c>
c0034048:	dd d8                	fstp   %st(0)
c003404a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0034050:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0034056:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003405c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0034062:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0034068:	83 f8 fd             	cmp    $0xfffffffd,%eax
c003406b:	7c 48                	jl     c00340b5 <_svfprintf_r+0x1c25>
c003406d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0034073:	7c 40                	jl     c00340b5 <_svfprintf_r+0x1c25>
c0034075:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c003407b:	e9 ea fb ff ff       	jmp    c0033c6a <_svfprintf_r+0x17da>
c0034080:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0034086:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003408d:	89 75 14             	mov    %esi,0x14(%ebp)
c0034090:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0034097:	00 00 00 
c003409a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00340a0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00340a6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00340ad:	00 00 00 
c00340b0:	e9 73 e6 ff ff       	jmp    c0032728 <_svfprintf_r+0x298>
c00340b5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c00340bc:	8d 48 ff             	lea    -0x1(%eax),%ecx
c00340bf:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c00340c6:	85 c9                	test   %ecx,%ecx
c00340c8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c00340ce:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c00340d4:	0f 88 2c 02 00 00    	js     c0034306 <_svfprintf_r+0x1e76>
c00340da:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c00340e1:	83 f9 09             	cmp    $0x9,%ecx
c00340e4:	0f 8f ea 00 00 00    	jg     c00341d4 <_svfprintf_r+0x1d44>
c00340ea:	83 c1 30             	add    $0x30,%ecx
c00340ed:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c00340f4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c00340fa:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0034100:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0034106:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c003410c:	29 d0                	sub    %edx,%eax
c003410e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0034114:	89 da                	mov    %ebx,%edx
c0034116:	01 c2                	add    %eax,%edx
c0034118:	83 fb 01             	cmp    $0x1,%ebx
c003411b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0034121:	0f 8e 21 02 00 00    	jle    c0034348 <_svfprintf_r+0x1eb8>
c0034127:	31 c0                	xor    %eax,%eax
c0034129:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0034130:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0034137:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003413e:	00 00 00 
c0034141:	e9 60 fb ff ff       	jmp    c0033ca6 <_svfprintf_r+0x1816>
c0034146:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c003414c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0034153:	00 00 00 
c0034156:	e9 68 e4 ff ff       	jmp    c00325c3 <_svfprintf_r+0x133>
c003415b:	ba 02 00 00 00       	mov    $0x2,%edx
c0034160:	e9 2d fe ff ff       	jmp    c0033f92 <_svfprintf_r+0x1b02>
c0034165:	d9 e0                	fchs   
c0034167:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c003416e:	e9 38 fa ff ff       	jmp    c0033bab <_svfprintf_r+0x171b>
c0034173:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0034179:	ba 01 00 00 00       	mov    $0x1,%edx
c003417e:	85 c9                	test   %ecx,%ecx
c0034180:	0f 8e 5a 01 00 00    	jle    c00342e0 <_svfprintf_r+0x1e50>
c0034186:	31 c0                	xor    %eax,%eax
c0034188:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c003418e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0034195:	00 00 00 
c0034198:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c003419e:	0f 49 c2             	cmovns %edx,%eax
c00341a1:	e9 00 fb ff ff       	jmp    c0033ca6 <_svfprintf_r+0x1816>
c00341a6:	85 c0                	test   %eax,%eax
c00341a8:	0f 8e 06 01 00 00    	jle    c00342b4 <_svfprintf_r+0x1e24>
c00341ae:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c00341b4:	85 f6                	test   %esi,%esi
c00341b6:	0f 85 d4 00 00 00    	jne    c0034290 <_svfprintf_r+0x1e00>
c00341bc:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00341c3:	0f 85 c7 00 00 00    	jne    c0034290 <_svfprintf_r+0x1e00>
c00341c9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00341cf:	e9 d2 fa ff ff       	jmp    c0033ca6 <_svfprintf_r+0x1816>
c00341d4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c00341da:	89 f3                	mov    %esi,%ebx
c00341dc:	b8 67 66 66 66       	mov    $0x66666667,%eax
c00341e1:	83 eb 01             	sub    $0x1,%ebx
c00341e4:	f7 e9                	imul   %ecx
c00341e6:	89 c8                	mov    %ecx,%eax
c00341e8:	c1 f8 1f             	sar    $0x1f,%eax
c00341eb:	c1 fa 02             	sar    $0x2,%edx
c00341ee:	29 c2                	sub    %eax,%edx
c00341f0:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00341f3:	01 c0                	add    %eax,%eax
c00341f5:	29 c1                	sub    %eax,%ecx
c00341f7:	83 fa 09             	cmp    $0x9,%edx
c00341fa:	8d 41 30             	lea    0x30(%ecx),%eax
c00341fd:	89 d1                	mov    %edx,%ecx
c00341ff:	88 03                	mov    %al,(%ebx)
c0034201:	7f d9                	jg     c00341dc <_svfprintf_r+0x1d4c>
c0034203:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034206:	83 c1 30             	add    $0x30,%ecx
c0034209:	39 f0                	cmp    %esi,%eax
c003420b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c003420e:	0f 83 6a 01 00 00    	jae    c003437e <_svfprintf_r+0x1eee>
c0034214:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c003421a:	eb 07                	jmp    c0034223 <_svfprintf_r+0x1d93>
c003421c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034220:	0f b6 08             	movzbl (%eax),%ecx
c0034223:	83 c0 01             	add    $0x1,%eax
c0034226:	83 c2 01             	add    $0x1,%edx
c0034229:	39 f0                	cmp    %esi,%eax
c003422b:	88 4a ff             	mov    %cl,-0x1(%edx)
c003422e:	75 f0                	jne    c0034220 <_svfprintf_r+0x1d90>
c0034230:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0034236:	29 d8                	sub    %ebx,%eax
c0034238:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c003423e:	01 d0                	add    %edx,%eax
c0034240:	e9 bb fe ff ff       	jmp    c0034100 <_svfprintf_r+0x1c70>
c0034245:	d9 ee                	fldz   
c0034247:	d9 c9                	fxch   %st(1)
c0034249:	db e9                	fucomi %st(1),%st
c003424b:	dd d9                	fstp   %st(1)
c003424d:	7a 06                	jp     c0034255 <_svfprintf_r+0x1dc5>
c003424f:	0f 84 b9 fd ff ff    	je     c003400e <_svfprintf_r+0x1b7e>
c0034255:	b8 01 00 00 00       	mov    $0x1,%eax
c003425a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0034260:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0034266:	01 c1                	add    %eax,%ecx
c0034268:	e9 ac f9 ff ff       	jmp    c0033c19 <_svfprintf_r+0x1789>
c003426d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0034273:	31 c0                	xor    %eax,%eax
c0034275:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c003427c:	00 00 00 
c003427f:	83 c2 01             	add    $0x1,%edx
c0034282:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0034288:	0f 49 c2             	cmovns %edx,%eax
c003428b:	e9 16 fa ff ff       	jmp    c0033ca6 <_svfprintf_r+0x1816>
c0034290:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0034296:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c003429c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c00342a0:	89 c2                	mov    %eax,%edx
c00342a2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00342a8:	31 c0                	xor    %eax,%eax
c00342aa:	85 d2                	test   %edx,%edx
c00342ac:	0f 49 c2             	cmovns %edx,%eax
c00342af:	e9 f2 f9 ff ff       	jmp    c0033ca6 <_svfprintf_r+0x1816>
c00342b4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c00342ba:	85 db                	test   %ebx,%ebx
c00342bc:	75 2f                	jne    c00342ed <_svfprintf_r+0x1e5d>
c00342be:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00342c5:	75 26                	jne    c00342ed <_svfprintf_r+0x1e5d>
c00342c7:	b8 01 00 00 00       	mov    $0x1,%eax
c00342cc:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c00342d3:	00 00 00 
c00342d6:	e9 cb f9 ff ff       	jmp    c0033ca6 <_svfprintf_r+0x1816>
c00342db:	90                   	nop
c00342dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00342e0:	b2 02                	mov    $0x2,%dl
c00342e2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c00342e8:	e9 99 fe ff ff       	jmp    c0034186 <_svfprintf_r+0x1cf6>
c00342ed:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00342f3:	31 c0                	xor    %eax,%eax
c00342f5:	83 c2 02             	add    $0x2,%edx
c00342f8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00342fe:	0f 49 c2             	cmovns %edx,%eax
c0034301:	e9 a0 f9 ff ff       	jmp    c0033ca6 <_svfprintf_r+0x1816>
c0034306:	f7 d9                	neg    %ecx
c0034308:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c003430f:	e9 cd fd ff ff       	jmp    c00340e1 <_svfprintf_r+0x1c51>
c0034314:	8b 55 14             	mov    0x14(%ebp),%edx
c0034317:	8b 45 14             	mov    0x14(%ebp),%eax
c003431a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0034320:	8b 12                	mov    (%edx),%edx
c0034322:	83 c0 04             	add    $0x4,%eax
c0034325:	89 45 14             	mov    %eax,0x14(%ebp)
c0034328:	85 d2                	test   %edx,%edx
c003432a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0034330:	0f 89 a9 e2 ff ff    	jns    c00325df <_svfprintf_r+0x14f>
c0034336:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c003433d:	ff ff ff 
c0034340:	89 c8                	mov    %ecx,%eax
c0034342:	e9 76 e2 ff ff       	jmp    c00325bd <_svfprintf_r+0x12d>
c0034347:	90                   	nop
c0034348:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c003434e:	83 e0 01             	and    $0x1,%eax
c0034351:	0f 85 d0 fd ff ff    	jne    c0034127 <_svfprintf_r+0x1c97>
c0034357:	85 d2                	test   %edx,%edx
c0034359:	0f 49 c2             	cmovns %edx,%eax
c003435c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0034363:	00 00 00 
c0034366:	e9 3b f9 ff ff       	jmp    c0033ca6 <_svfprintf_r+0x1816>
c003436b:	8b 45 08             	mov    0x8(%ebp),%eax
c003436e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0034374:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0034379:	e9 f5 e2 ff ff       	jmp    c0032673 <_svfprintf_r+0x1e3>
c003437e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0034384:	e9 77 fd ff ff       	jmp    c0034100 <_svfprintf_r+0x1c70>
c0034389:	66 90                	xchg   %ax,%ax
c003438b:	66 90                	xchg   %ax,%ax
c003438d:	66 90                	xchg   %ax,%ax
c003438f:	90                   	nop

c0034390 <quorem>:
c0034390:	55                   	push   %ebp
c0034391:	89 c1                	mov    %eax,%ecx
c0034393:	89 e5                	mov    %esp,%ebp
c0034395:	57                   	push   %edi
c0034396:	89 d7                	mov    %edx,%edi
c0034398:	56                   	push   %esi
c0034399:	53                   	push   %ebx
c003439a:	83 ec 3c             	sub    $0x3c,%esp
c003439d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c00343a0:	8b 42 10             	mov    0x10(%edx),%eax
c00343a3:	3b 41 10             	cmp    0x10(%ecx),%eax
c00343a6:	89 55 c8             	mov    %edx,-0x38(%ebp)
c00343a9:	89 ca                	mov    %ecx,%edx
c00343ab:	0f 8f 9f 01 00 00    	jg     c0034550 <quorem+0x1c0>
c00343b1:	83 e8 01             	sub    $0x1,%eax
c00343b4:	83 c7 14             	add    $0x14,%edi
c00343b7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00343ba:	c1 e0 02             	shl    $0x2,%eax
c00343bd:	83 c2 14             	add    $0x14,%edx
c00343c0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c00343c3:	01 d0                	add    %edx,%eax
c00343c5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00343c8:	8b 13                	mov    (%ebx),%edx
c00343ca:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c00343cd:	8b 00                	mov    (%eax),%eax
c00343cf:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c00343d2:	8d 4a 01             	lea    0x1(%edx),%ecx
c00343d5:	31 d2                	xor    %edx,%edx
c00343d7:	f7 f1                	div    %ecx
c00343d9:	85 c0                	test   %eax,%eax
c00343db:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00343de:	89 45 cc             	mov    %eax,-0x34(%ebp)
c00343e1:	0f 84 b5 00 00 00    	je     c003449c <quorem+0x10c>
c00343e7:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00343ea:	31 f6                	xor    %esi,%esi
c00343ec:	89 fa                	mov    %edi,%edx
c00343ee:	89 7d c0             	mov    %edi,-0x40(%ebp)
c00343f1:	89 f7                	mov    %esi,%edi
c00343f3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00343fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034400:	83 c2 04             	add    $0x4,%edx
c0034403:	8b 72 fc             	mov    -0x4(%edx),%esi
c0034406:	83 c0 04             	add    $0x4,%eax
c0034409:	0f b7 ce             	movzwl %si,%ecx
c003440c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0034410:	03 4d dc             	add    -0x24(%ebp),%ecx
c0034413:	c1 ee 10             	shr    $0x10,%esi
c0034416:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c003441a:	89 cb                	mov    %ecx,%ebx
c003441c:	0f b7 c9             	movzwl %cx,%ecx
c003441f:	c1 eb 10             	shr    $0x10,%ebx
c0034422:	29 cf                	sub    %ecx,%edi
c0034424:	01 f3                	add    %esi,%ebx
c0034426:	89 de                	mov    %ebx,%esi
c0034428:	0f b7 db             	movzwl %bx,%ebx
c003442b:	c1 ee 10             	shr    $0x10,%esi
c003442e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0034431:	8b 70 fc             	mov    -0x4(%eax),%esi
c0034434:	0f b7 ce             	movzwl %si,%ecx
c0034437:	01 f9                	add    %edi,%ecx
c0034439:	c1 ee 10             	shr    $0x10,%esi
c003443c:	29 de                	sub    %ebx,%esi
c003443e:	89 cb                	mov    %ecx,%ebx
c0034440:	c1 fb 10             	sar    $0x10,%ebx
c0034443:	0f b7 c9             	movzwl %cx,%ecx
c0034446:	01 de                	add    %ebx,%esi
c0034448:	89 f7                	mov    %esi,%edi
c003444a:	c1 e6 10             	shl    $0x10,%esi
c003444d:	09 ce                	or     %ecx,%esi
c003444f:	c1 ff 10             	sar    $0x10,%edi
c0034452:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0034455:	89 70 fc             	mov    %esi,-0x4(%eax)
c0034458:	73 a6                	jae    c0034400 <quorem+0x70>
c003445a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c003445d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034460:	8b 10                	mov    (%eax),%edx
c0034462:	85 d2                	test   %edx,%edx
c0034464:	75 36                	jne    c003449c <quorem+0x10c>
c0034466:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034469:	89 c2                	mov    %eax,%edx
c003446b:	83 e8 04             	sub    $0x4,%eax
c003446e:	39 c1                	cmp    %eax,%ecx
c0034470:	73 21                	jae    c0034493 <quorem+0x103>
c0034472:	8b 72 fc             	mov    -0x4(%edx),%esi
c0034475:	85 f6                	test   %esi,%esi
c0034477:	75 1a                	jne    c0034493 <quorem+0x103>
c0034479:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003447c:	eb 08                	jmp    c0034486 <quorem+0xf6>
c003447e:	66 90                	xchg   %ax,%ax
c0034480:	8b 18                	mov    (%eax),%ebx
c0034482:	85 db                	test   %ebx,%ebx
c0034484:	75 0a                	jne    c0034490 <quorem+0x100>
c0034486:	83 e8 04             	sub    $0x4,%eax
c0034489:	83 ea 01             	sub    $0x1,%edx
c003448c:	39 c1                	cmp    %eax,%ecx
c003448e:	72 f0                	jb     c0034480 <quorem+0xf0>
c0034490:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034493:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0034496:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034499:	89 50 10             	mov    %edx,0x10(%eax)
c003449c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c003449f:	89 44 24 04          	mov    %eax,0x4(%esp)
c00344a3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00344a6:	89 04 24             	mov    %eax,(%esp)
c00344a9:	e8 a2 23 00 00       	call   c0036850 <__mcmp>
c00344ae:	85 c0                	test   %eax,%eax
c00344b0:	0f 88 8e 00 00 00    	js     c0034544 <quorem+0x1b4>
c00344b6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00344b9:	31 f6                	xor    %esi,%esi
c00344bb:	83 c0 01             	add    $0x1,%eax
c00344be:	89 45 cc             	mov    %eax,-0x34(%ebp)
c00344c1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00344c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00344c8:	83 c7 04             	add    $0x4,%edi
c00344cb:	8b 4f fc             	mov    -0x4(%edi),%ecx
c00344ce:	83 c0 04             	add    $0x4,%eax
c00344d1:	8b 58 fc             	mov    -0x4(%eax),%ebx
c00344d4:	0f b7 d1             	movzwl %cx,%edx
c00344d7:	29 d6                	sub    %edx,%esi
c00344d9:	0f b7 d3             	movzwl %bx,%edx
c00344dc:	01 f2                	add    %esi,%edx
c00344de:	c1 e9 10             	shr    $0x10,%ecx
c00344e1:	c1 eb 10             	shr    $0x10,%ebx
c00344e4:	29 cb                	sub    %ecx,%ebx
c00344e6:	89 d1                	mov    %edx,%ecx
c00344e8:	c1 f9 10             	sar    $0x10,%ecx
c00344eb:	0f b7 d2             	movzwl %dx,%edx
c00344ee:	01 cb                	add    %ecx,%ebx
c00344f0:	89 de                	mov    %ebx,%esi
c00344f2:	c1 e3 10             	shl    $0x10,%ebx
c00344f5:	09 d3                	or     %edx,%ebx
c00344f7:	c1 fe 10             	sar    $0x10,%esi
c00344fa:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c00344fd:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0034500:	73 c6                	jae    c00344c8 <quorem+0x138>
c0034502:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034505:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034508:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c003450b:	8b 02                	mov    (%edx),%eax
c003450d:	85 c0                	test   %eax,%eax
c003450f:	75 33                	jne    c0034544 <quorem+0x1b4>
c0034511:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034514:	8d 42 fc             	lea    -0x4(%edx),%eax
c0034517:	39 c1                	cmp    %eax,%ecx
c0034519:	73 20                	jae    c003453b <quorem+0x1ab>
c003451b:	8b 72 fc             	mov    -0x4(%edx),%esi
c003451e:	85 f6                	test   %esi,%esi
c0034520:	75 19                	jne    c003453b <quorem+0x1ab>
c0034522:	89 fa                	mov    %edi,%edx
c0034524:	eb 08                	jmp    c003452e <quorem+0x19e>
c0034526:	66 90                	xchg   %ax,%ax
c0034528:	8b 18                	mov    (%eax),%ebx
c003452a:	85 db                	test   %ebx,%ebx
c003452c:	75 0a                	jne    c0034538 <quorem+0x1a8>
c003452e:	83 e8 04             	sub    $0x4,%eax
c0034531:	83 ea 01             	sub    $0x1,%edx
c0034534:	39 c1                	cmp    %eax,%ecx
c0034536:	72 f0                	jb     c0034528 <quorem+0x198>
c0034538:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003453b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003453e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034541:	89 78 10             	mov    %edi,0x10(%eax)
c0034544:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034547:	83 c4 3c             	add    $0x3c,%esp
c003454a:	5b                   	pop    %ebx
c003454b:	5e                   	pop    %esi
c003454c:	5f                   	pop    %edi
c003454d:	5d                   	pop    %ebp
c003454e:	c3                   	ret    
c003454f:	90                   	nop
c0034550:	83 c4 3c             	add    $0x3c,%esp
c0034553:	31 c0                	xor    %eax,%eax
c0034555:	5b                   	pop    %ebx
c0034556:	5e                   	pop    %esi
c0034557:	5f                   	pop    %edi
c0034558:	5d                   	pop    %ebp
c0034559:	c3                   	ret    
c003455a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034560 <_dtoa_r>:
c0034560:	55                   	push   %ebp
c0034561:	89 e5                	mov    %esp,%ebp
c0034563:	57                   	push   %edi
c0034564:	56                   	push   %esi
c0034565:	53                   	push   %ebx
c0034566:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003456c:	8b 75 08             	mov    0x8(%ebp),%esi
c003456f:	dd 45 0c             	fldl   0xc(%ebp)
c0034572:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034575:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034578:	8b 46 40             	mov    0x40(%esi),%eax
c003457b:	85 c0                	test   %eax,%eax
c003457d:	74 23                	je     c00345a2 <_dtoa_r+0x42>
c003457f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034582:	ba 01 00 00 00       	mov    $0x1,%edx
c0034587:	d3 e2                	shl    %cl,%edx
c0034589:	89 48 04             	mov    %ecx,0x4(%eax)
c003458c:	89 50 08             	mov    %edx,0x8(%eax)
c003458f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034593:	89 34 24             	mov    %esi,(%esp)
c0034596:	e8 95 1b 00 00       	call   c0036130 <_Bfree>
c003459b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c00345a2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00345a5:	85 ff                	test   %edi,%edi
c00345a7:	0f 88 3b 02 00 00    	js     c00347e8 <_dtoa_r+0x288>
c00345ad:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c00345b3:	89 f8                	mov    %edi,%eax
c00345b5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c00345ba:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c00345bf:	0f 84 e3 01 00 00    	je     c00347a8 <_dtoa_r+0x248>
c00345c5:	dd 45 c0             	fldl   -0x40(%ebp)
c00345c8:	d9 ee                	fldz   
c00345ca:	d9 c9                	fxch   %st(1)
c00345cc:	db e9                	fucomi %st(1),%st
c00345ce:	dd d9                	fstp   %st(1)
c00345d0:	7a 36                	jp     c0034608 <_dtoa_r+0xa8>
c00345d2:	75 34                	jne    c0034608 <_dtoa_r+0xa8>
c00345d4:	dd d8                	fstp   %st(0)
c00345d6:	8b 4d 24             	mov    0x24(%ebp),%ecx
c00345d9:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00345dc:	85 c9                	test   %ecx,%ecx
c00345de:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c00345e4:	0f 84 4e 02 00 00    	je     c0034838 <_dtoa_r+0x2d8>
c00345ea:	8b 45 24             	mov    0x24(%ebp),%eax
c00345ed:	c7 00 ec 91 03 c0    	movl   $0xc00391ec,(%eax)
c00345f3:	b8 eb 91 03 c0       	mov    $0xc00391eb,%eax
c00345f8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00345fe:	5b                   	pop    %ebx
c00345ff:	5e                   	pop    %esi
c0034600:	5f                   	pop    %edi
c0034601:	5d                   	pop    %ebp
c0034602:	c3                   	ret    
c0034603:	90                   	nop
c0034604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034608:	8d 45 e0             	lea    -0x20(%ebp),%eax
c003460b:	89 fb                	mov    %edi,%ebx
c003460d:	89 44 24 10          	mov    %eax,0x10(%esp)
c0034611:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0034614:	dd 54 24 04          	fstl   0x4(%esp)
c0034618:	89 44 24 0c          	mov    %eax,0xc(%esp)
c003461c:	dd 5d b8             	fstpl  -0x48(%ebp)
c003461f:	89 34 24             	mov    %esi,(%esp)
c0034622:	c1 eb 14             	shr    $0x14,%ebx
c0034625:	e8 76 25 00 00       	call   c0036ba0 <__d2b>
c003462a:	85 db                	test   %ebx,%ebx
c003462c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003462f:	0f 85 db 01 00 00    	jne    c0034810 <_dtoa_r+0x2b0>
c0034635:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034638:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003463b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003463e:	01 c3                	add    %eax,%ebx
c0034640:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034646:	0f 8c ec 07 00 00    	jl     c0034e38 <_dtoa_r+0x8d8>
c003464c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003464f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034654:	89 f8                	mov    %edi,%eax
c0034656:	29 d9                	sub    %ebx,%ecx
c0034658:	d3 e0                	shl    %cl,%eax
c003465a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034660:	d3 ea                	shr    %cl,%edx
c0034662:	09 d0                	or     %edx,%eax
c0034664:	31 d2                	xor    %edx,%edx
c0034666:	83 eb 01             	sub    $0x1,%ebx
c0034669:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003466c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003466f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034672:	df 6d c8             	fildll -0x38(%ebp)
c0034675:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034678:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003467f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034686:	dd 45 b8             	fldl   -0x48(%ebp)
c0034689:	d8 25 84 93 03 c0    	fsubs  0xc0039384
c003468f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034692:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034695:	dc 0d a0 93 03 c0    	fmull  0xc00393a0
c003469b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003469f:	b4 0c                	mov    $0xc,%ah
c00346a1:	dc 05 a8 93 03 c0    	faddl  0xc00393a8
c00346a7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00346ab:	db 45 d4             	fildl  -0x2c(%ebp)
c00346ae:	dc 0d b0 93 03 c0    	fmull  0xc00393b0
c00346b4:	de c1                	faddp  %st,%st(1)
c00346b6:	d9 6d d0             	fldcw  -0x30(%ebp)
c00346b9:	db 55 b8             	fistl  -0x48(%ebp)
c00346bc:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00346bf:	d9 ee                	fldz   
c00346c1:	df e9                	fucomip %st(1),%st
c00346c3:	0f 87 27 07 00 00    	ja     c0034df0 <_dtoa_r+0x890>
c00346c9:	dd d8                	fstp   %st(0)
c00346cb:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c00346cf:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c00346d6:	77 24                	ja     c00346fc <_dtoa_r+0x19c>
c00346d8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00346db:	dd 04 c5 60 94 03 c0 	fldl   -0x3ffc6ba0(,%eax,8)
c00346e2:	dd 45 c0             	fldl   -0x40(%ebp)
c00346e5:	d9 c9                	fxch   %st(1)
c00346e7:	df e9                	fucomip %st(1),%st
c00346e9:	dd d8                	fstp   %st(0)
c00346eb:	0f 86 5f 07 00 00    	jbe    c0034e50 <_dtoa_r+0x8f0>
c00346f1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00346f5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00346fc:	89 d0                	mov    %edx,%eax
c00346fe:	29 d8                	sub    %ebx,%eax
c0034700:	83 e8 01             	sub    $0x1,%eax
c0034703:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c003470a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c003470d:	0f 88 0d 07 00 00    	js     c0034e20 <_dtoa_r+0x8c0>
c0034713:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034716:	85 c0                	test   %eax,%eax
c0034718:	0f 88 ea 06 00 00    	js     c0034e08 <_dtoa_r+0x8a8>
c003471e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034721:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034724:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003472b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c003472f:	0f 87 0b 03 00 00    	ja     c0034a40 <_dtoa_r+0x4e0>
c0034735:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034739:	0f 8e 23 10 00 00    	jle    c0035762 <_dtoa_r+0x1202>
c003473f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034743:	31 c0                	xor    %eax,%eax
c0034745:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034749:	0f 84 43 0d 00 00    	je     c0035492 <_dtoa_r+0xf32>
c003474f:	0f 8e f3 00 00 00    	jle    c0034848 <_dtoa_r+0x2e8>
c0034755:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034759:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034760:	0f 84 f3 00 00 00    	je     c0034859 <_dtoa_r+0x2f9>
c0034766:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003476a:	0f 85 d7 02 00 00    	jne    c0034a47 <_dtoa_r+0x4e7>
c0034770:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034773:	03 5d 18             	add    0x18(%ebp),%ebx
c0034776:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034779:	83 c3 01             	add    $0x1,%ebx
c003477c:	83 fb 0e             	cmp    $0xe,%ebx
c003477f:	0f 96 c2             	setbe  %dl
c0034782:	85 db                	test   %ebx,%ebx
c0034784:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034787:	0f 8e a7 08 00 00    	jle    c0035034 <_dtoa_r+0xad4>
c003478d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034790:	83 fb 0e             	cmp    $0xe,%ebx
c0034793:	89 df                	mov    %ebx,%edi
c0034795:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034799:	20 45 b4             	and    %al,-0x4c(%ebp)
c003479c:	e9 d6 00 00 00       	jmp    c0034877 <_dtoa_r+0x317>
c00347a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00347a8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00347ab:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00347ae:	85 d2                	test   %edx,%edx
c00347b0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c00347b6:	b8 7d 93 03 c0       	mov    $0xc003937d,%eax
c00347bb:	74 43                	je     c0034800 <_dtoa_r+0x2a0>
c00347bd:	8b 5d 24             	mov    0x24(%ebp),%ebx
c00347c0:	85 db                	test   %ebx,%ebx
c00347c2:	0f 84 30 fe ff ff    	je     c00345f8 <_dtoa_r+0x98>
c00347c8:	8b 75 24             	mov    0x24(%ebp),%esi
c00347cb:	8d 50 08             	lea    0x8(%eax),%edx
c00347ce:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c00347d2:	8d 48 03             	lea    0x3(%eax),%ecx
c00347d5:	0f 44 d1             	cmove  %ecx,%edx
c00347d8:	89 16                	mov    %edx,(%esi)
c00347da:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00347e0:	5b                   	pop    %ebx
c00347e1:	5e                   	pop    %esi
c00347e2:	5f                   	pop    %edi
c00347e3:	5d                   	pop    %ebp
c00347e4:	c3                   	ret    
c00347e5:	8d 76 00             	lea    0x0(%esi),%esi
c00347e8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c00347ee:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c00347f4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c00347f7:	e9 b7 fd ff ff       	jmp    c00345b3 <_dtoa_r+0x53>
c00347fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034800:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0034806:	ba 74 93 03 c0       	mov    $0xc0039374,%edx
c003480b:	0f 44 c2             	cmove  %edx,%eax
c003480e:	eb ad                	jmp    c00347bd <_dtoa_r+0x25d>
c0034810:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0034813:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0034819:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003481c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034823:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034828:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c003482d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034830:	e9 51 fe ff ff       	jmp    c0034686 <_dtoa_r+0x126>
c0034835:	8d 76 00             	lea    0x0(%esi),%esi
c0034838:	b8 eb 91 03 c0       	mov    $0xc00391eb,%eax
c003483d:	e9 b6 fd ff ff       	jmp    c00345f8 <_dtoa_r+0x98>
c0034842:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034848:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003484c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034853:	0f 85 ee 01 00 00    	jne    c0034a47 <_dtoa_r+0x4e7>
c0034859:	8b 55 18             	mov    0x18(%ebp),%edx
c003485c:	85 d2                	test   %edx,%edx
c003485e:	0f 8e b6 07 00 00    	jle    c003501a <_dtoa_r+0xaba>
c0034864:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034867:	83 ff 0e             	cmp    $0xe,%edi
c003486a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003486e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034871:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034874:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034877:	83 ff 17             	cmp    $0x17,%edi
c003487a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034881:	0f 86 e5 0e 00 00    	jbe    c003576c <_dtoa_r+0x120c>
c0034887:	b9 01 00 00 00       	mov    $0x1,%ecx
c003488c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034891:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034898:	01 c0                	add    %eax,%eax
c003489a:	89 ca                	mov    %ecx,%edx
c003489c:	8d 58 14             	lea    0x14(%eax),%ebx
c003489f:	39 fb                	cmp    %edi,%ebx
c00348a1:	8d 49 01             	lea    0x1(%ecx),%ecx
c00348a4:	76 f2                	jbe    c0034898 <_dtoa_r+0x338>
c00348a6:	89 56 44             	mov    %edx,0x44(%esi)
c00348a9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00348ad:	89 34 24             	mov    %esi,(%esp)
c00348b0:	e8 db 17 00 00       	call   c0036090 <_Balloc>
c00348b5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c00348b9:	89 c7                	mov    %eax,%edi
c00348bb:	89 46 40             	mov    %eax,0x40(%esi)
c00348be:	0f 84 bb 01 00 00    	je     c0034a7f <_dtoa_r+0x51f>
c00348c4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00348c7:	dd 45 c0             	fldl   -0x40(%ebp)
c00348ca:	85 db                	test   %ebx,%ebx
c00348cc:	0f 8e de 07 00 00    	jle    c00350b0 <_dtoa_r+0xb50>
c00348d2:	89 d8                	mov    %ebx,%eax
c00348d4:	83 e0 0f             	and    $0xf,%eax
c00348d7:	dd 04 c5 60 94 03 c0 	fldl   -0x3ffc6ba0(,%eax,8)
c00348de:	89 d8                	mov    %ebx,%eax
c00348e0:	c1 f8 04             	sar    $0x4,%eax
c00348e3:	a8 10                	test   $0x10,%al
c00348e5:	0f 84 cd 05 00 00    	je     c0034eb8 <_dtoa_r+0x958>
c00348eb:	dd 05 40 94 03 c0    	fldl   0xc0039440
c00348f1:	83 e0 0f             	and    $0xf,%eax
c00348f4:	b9 03 00 00 00       	mov    $0x3,%ecx
c00348f9:	d8 fa                	fdivr  %st(2),%st
c00348fb:	85 c0                	test   %eax,%eax
c00348fd:	74 22                	je     c0034921 <_dtoa_r+0x3c1>
c00348ff:	31 d2                	xor    %edx,%edx
c0034901:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034908:	a8 01                	test   $0x1,%al
c003490a:	74 0e                	je     c003491a <_dtoa_r+0x3ba>
c003490c:	d9 c9                	fxch   %st(1)
c003490e:	dc 0c d5 20 94 03 c0 	fmull  -0x3ffc6be0(,%edx,8)
c0034915:	d9 c9                	fxch   %st(1)
c0034917:	83 c1 01             	add    $0x1,%ecx
c003491a:	83 c2 01             	add    $0x1,%edx
c003491d:	d1 f8                	sar    %eax
c003491f:	75 e7                	jne    c0034908 <_dtoa_r+0x3a8>
c0034921:	de f1                	fdivp  %st,%st(1)
c0034923:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034926:	85 c0                	test   %eax,%eax
c0034928:	74 0a                	je     c0034934 <_dtoa_r+0x3d4>
c003492a:	d9 e8                	fld1   
c003492c:	df e9                	fucomip %st(1),%st
c003492e:	0f 87 92 0b 00 00    	ja     c00354c6 <_dtoa_r+0xf66>
c0034934:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034937:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003493a:	db 45 d4             	fildl  -0x2c(%ebp)
c003493d:	d8 c9                	fmul   %st(1),%st
c003493f:	d8 05 90 93 03 c0    	fadds  0xc0039390
c0034945:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034948:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003494f:	85 c0                	test   %eax,%eax
c0034951:	0f 84 89 05 00 00    	je     c0034ee0 <_dtoa_r+0x980>
c0034957:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003495a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003495d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034960:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034963:	85 c0                	test   %eax,%eax
c0034965:	0f 84 b5 07 00 00    	je     c0035120 <_dtoa_r+0xbc0>
c003496b:	d9 05 98 93 03 c0    	flds   0xc0039398
c0034971:	8d 57 01             	lea    0x1(%edi),%edx
c0034974:	dc 34 cd 58 94 03 c0 	fdivl  -0x3ffc6ba8(,%ecx,8)
c003497b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003497e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034982:	b4 0c                	mov    $0xc,%ah
c0034984:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034988:	dc 65 c0             	fsubl  -0x40(%ebp)
c003498b:	d9 c9                	fxch   %st(1)
c003498d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034990:	db 55 d4             	fistl  -0x2c(%ebp)
c0034993:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034996:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034999:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003499c:	83 c0 30             	add    $0x30,%eax
c003499f:	db 45 d4             	fildl  -0x2c(%ebp)
c00349a2:	de e9                	fsubrp %st,%st(1)
c00349a4:	d9 c9                	fxch   %st(1)
c00349a6:	88 07                	mov    %al,(%edi)
c00349a8:	db e9                	fucomi %st(1),%st
c00349aa:	77 7f                	ja     c0034a2b <_dtoa_r+0x4cb>
c00349ac:	d9 c1                	fld    %st(1)
c00349ae:	d8 2d 88 93 03 c0    	fsubrs 0xc0039388
c00349b4:	d9 c9                	fxch   %st(1)
c00349b6:	db e9                	fucomi %st(1),%st
c00349b8:	dd d9                	fstp   %st(1)
c00349ba:	0f 87 33 0c 00 00    	ja     c00355f3 <_dtoa_r+0x1093>
c00349c0:	83 f9 01             	cmp    $0x1,%ecx
c00349c3:	0f 8e c4 06 00 00    	jle    c003508d <_dtoa_r+0xb2d>
c00349c9:	01 f9                	add    %edi,%ecx
c00349cb:	d9 05 8c 93 03 c0    	flds   0xc003938c
c00349d1:	eb 25                	jmp    c00349f8 <_dtoa_r+0x498>
c00349d3:	90                   	nop
c00349d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00349d8:	d9 c1                	fld    %st(1)
c00349da:	d8 2d 88 93 03 c0    	fsubrs 0xc0039388
c00349e0:	d9 c9                	fxch   %st(1)
c00349e2:	db e9                	fucomi %st(1),%st
c00349e4:	dd d9                	fstp   %st(1)
c00349e6:	0f 87 14 0c 00 00    	ja     c0035600 <_dtoa_r+0x10a0>
c00349ec:	39 ca                	cmp    %ecx,%edx
c00349ee:	0f 84 a4 06 00 00    	je     c0035098 <_dtoa_r+0xb38>
c00349f4:	d9 c9                	fxch   %st(1)
c00349f6:	d9 ca                	fxch   %st(2)
c00349f8:	dc c9                	fmul   %st,%st(1)
c00349fa:	83 c2 01             	add    $0x1,%edx
c00349fd:	dc ca                	fmul   %st,%st(2)
c00349ff:	d9 ca                	fxch   %st(2)
c0034a01:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034a04:	db 55 d4             	fistl  -0x2c(%ebp)
c0034a07:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034a0a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034a0d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034a10:	83 c0 30             	add    $0x30,%eax
c0034a13:	db 45 d4             	fildl  -0x2c(%ebp)
c0034a16:	de e9                	fsubrp %st,%st(1)
c0034a18:	d9 c9                	fxch   %st(1)
c0034a1a:	88 42 ff             	mov    %al,-0x1(%edx)
c0034a1d:	db e9                	fucomi %st(1),%st
c0034a1f:	76 b7                	jbe    c00349d8 <_dtoa_r+0x478>
c0034a21:	dd d8                	fstp   %st(0)
c0034a23:	dd d8                	fstp   %st(0)
c0034a25:	dd d8                	fstp   %st(0)
c0034a27:	dd d8                	fstp   %st(0)
c0034a29:	eb 06                	jmp    c0034a31 <_dtoa_r+0x4d1>
c0034a2b:	dd d8                	fstp   %st(0)
c0034a2d:	dd d8                	fstp   %st(0)
c0034a2f:	dd d8                	fstp   %st(0)
c0034a31:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034a34:	89 fb                	mov    %edi,%ebx
c0034a36:	89 d7                	mov    %edx,%edi
c0034a38:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034a3b:	e9 70 03 00 00       	jmp    c0034db0 <_dtoa_r+0x850>
c0034a40:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034a47:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034a4e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034a55:	00 
c0034a56:	89 34 24             	mov    %esi,(%esp)
c0034a59:	e8 32 16 00 00       	call   c0036090 <_Balloc>
c0034a5e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034a65:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c0034a6c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034a73:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c0034a7a:	89 c7                	mov    %eax,%edi
c0034a7c:	89 46 40             	mov    %eax,0x40(%esi)
c0034a7f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034a82:	85 c0                	test   %eax,%eax
c0034a84:	0f 88 2e 01 00 00    	js     c0034bb8 <_dtoa_r+0x658>
c0034a8a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c0034a8e:	0f 8f 24 01 00 00    	jg     c0034bb8 <_dtoa_r+0x658>
c0034a94:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034a97:	dd 04 c5 60 94 03 c0 	fldl   -0x3ffc6ba0(,%eax,8)
c0034a9e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034aa1:	85 c0                	test   %eax,%eax
c0034aa3:	7f 0e                	jg     c0034ab3 <_dtoa_r+0x553>
c0034aa5:	8b 45 18             	mov    0x18(%ebp),%eax
c0034aa8:	c1 e8 1f             	shr    $0x1f,%eax
c0034aab:	84 c0                	test   %al,%al
c0034aad:	0f 85 9d 07 00 00    	jne    c0035250 <_dtoa_r+0xcf0>
c0034ab3:	dd 45 c0             	fldl   -0x40(%ebp)
c0034ab6:	d9 c0                	fld    %st(0)
c0034ab8:	d8 f2                	fdiv   %st(2),%st
c0034aba:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034abd:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0034ac1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034ac5:	b4 0c                	mov    $0xc,%ah
c0034ac7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034acb:	8d 47 01             	lea    0x1(%edi),%eax
c0034ace:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034ad1:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034ad4:	db 5d d4             	fistpl -0x2c(%ebp)
c0034ad7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034ada:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034add:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034ae0:	8d 42 30             	lea    0x30(%edx),%eax
c0034ae3:	db 45 d4             	fildl  -0x2c(%ebp)
c0034ae6:	d8 ca                	fmul   %st(2),%st
c0034ae8:	88 07                	mov    %al,(%edi)
c0034aea:	de e9                	fsubrp %st,%st(1)
c0034aec:	74 66                	je     c0034b54 <_dtoa_r+0x5f4>
c0034aee:	d8 0d 8c 93 03 c0    	fmuls  0xc003938c
c0034af4:	d9 ee                	fldz   
c0034af6:	d9 c9                	fxch   %st(1)
c0034af8:	db e9                	fucomi %st(1),%st
c0034afa:	dd d9                	fstp   %st(1)
c0034afc:	0f 8b 33 0c 00 00    	jnp    c0035735 <_dtoa_r+0x11d5>
c0034b02:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034b05:	8d 47 02             	lea    0x2(%edi),%eax
c0034b08:	d9 05 8c 93 03 c0    	flds   0xc003938c
c0034b0e:	01 fb                	add    %edi,%ebx
c0034b10:	eb 19                	jmp    c0034b2b <_dtoa_r+0x5cb>
c0034b12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034b18:	dc c9                	fmul   %st,%st(1)
c0034b1a:	83 c0 01             	add    $0x1,%eax
c0034b1d:	d9 ee                	fldz   
c0034b1f:	d9 ca                	fxch   %st(2)
c0034b21:	db ea                	fucomi %st(2),%st
c0034b23:	dd da                	fstp   %st(2)
c0034b25:	0f 8b 73 09 00 00    	jnp    c003549e <_dtoa_r+0xf3e>
c0034b2b:	d9 c1                	fld    %st(1)
c0034b2d:	39 d8                	cmp    %ebx,%eax
c0034b2f:	d8 f3                	fdiv   %st(3),%st
c0034b31:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034b34:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034b37:	db 5d d4             	fistpl -0x2c(%ebp)
c0034b3a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034b3d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034b40:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034b43:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034b46:	db 45 d4             	fildl  -0x2c(%ebp)
c0034b49:	d8 cb                	fmul   %st(3),%st
c0034b4b:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034b4e:	de ea                	fsubrp %st,%st(2)
c0034b50:	75 c6                	jne    c0034b18 <_dtoa_r+0x5b8>
c0034b52:	dd d8                	fstp   %st(0)
c0034b54:	d8 c0                	fadd   %st(0),%st
c0034b56:	db e9                	fucomi %st(1),%st
c0034b58:	77 1e                	ja     c0034b78 <_dtoa_r+0x618>
c0034b5a:	d9 c9                	fxch   %st(1)
c0034b5c:	df e9                	fucomip %st(1),%st
c0034b5e:	dd d8                	fstp   %st(0)
c0034b60:	0f 8a 44 09 00 00    	jp     c00354aa <_dtoa_r+0xf4a>
c0034b66:	0f 85 3e 09 00 00    	jne    c00354aa <_dtoa_r+0xf4a>
c0034b6c:	83 e2 01             	and    $0x1,%edx
c0034b6f:	90                   	nop
c0034b70:	0f 84 34 09 00 00    	je     c00354aa <_dtoa_r+0xf4a>
c0034b76:	eb 04                	jmp    c0034b7c <_dtoa_r+0x61c>
c0034b78:	dd d8                	fstp   %st(0)
c0034b7a:	dd d8                	fstp   %st(0)
c0034b7c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034b7f:	89 fb                	mov    %edi,%ebx
c0034b81:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034b85:	89 cf                	mov    %ecx,%edi
c0034b87:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c0034b8a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c0034b8d:	eb 0f                	jmp    c0034b9e <_dtoa_r+0x63e>
c0034b8f:	90                   	nop
c0034b90:	39 d3                	cmp    %edx,%ebx
c0034b92:	0f 84 75 09 00 00    	je     c003550d <_dtoa_r+0xfad>
c0034b98:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034b9c:	89 d7                	mov    %edx,%edi
c0034b9e:	3c 39                	cmp    $0x39,%al
c0034ba0:	8d 57 ff             	lea    -0x1(%edi),%edx
c0034ba3:	74 eb                	je     c0034b90 <_dtoa_r+0x630>
c0034ba5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034ba8:	83 c0 01             	add    $0x1,%eax
c0034bab:	88 02                	mov    %al,(%edx)
c0034bad:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c0034bb0:	e9 fb 01 00 00       	jmp    c0034db0 <_dtoa_r+0x850>
c0034bb5:	8d 76 00             	lea    0x0(%esi),%esi
c0034bb8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034bbb:	85 c9                	test   %ecx,%ecx
c0034bbd:	0f 85 9d 02 00 00    	jne    c0034e60 <_dtoa_r+0x900>
c0034bc3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034bc6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034bc9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034bd0:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034bd3:	85 c0                	test   %eax,%eax
c0034bd5:	7e 14                	jle    c0034beb <_dtoa_r+0x68b>
c0034bd7:	85 db                	test   %ebx,%ebx
c0034bd9:	7e 10                	jle    c0034beb <_dtoa_r+0x68b>
c0034bdb:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034bde:	39 d8                	cmp    %ebx,%eax
c0034be0:	0f 4f c3             	cmovg  %ebx,%eax
c0034be3:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034be6:	29 c3                	sub    %eax,%ebx
c0034be8:	29 45 ac             	sub    %eax,-0x54(%ebp)
c0034beb:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034bee:	85 c0                	test   %eax,%eax
c0034bf0:	7e 61                	jle    c0034c53 <_dtoa_r+0x6f3>
c0034bf2:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034bf5:	85 c0                	test   %eax,%eax
c0034bf7:	0f 84 72 04 00 00    	je     c003506f <_dtoa_r+0xb0f>
c0034bfd:	85 d2                	test   %edx,%edx
c0034bff:	7e 47                	jle    c0034c48 <_dtoa_r+0x6e8>
c0034c01:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034c04:	89 54 24 08          	mov    %edx,0x8(%esp)
c0034c08:	89 34 24             	mov    %esi,(%esp)
c0034c0b:	89 55 88             	mov    %edx,-0x78(%ebp)
c0034c0e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c12:	e8 f9 19 00 00       	call   c0036610 <__pow5mult>
c0034c17:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034c1a:	89 34 24             	mov    %esi,(%esp)
c0034c1d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034c21:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c25:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034c28:	e8 13 18 00 00       	call   c0036440 <__multiply>
c0034c2d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034c30:	89 34 24             	mov    %esi,(%esp)
c0034c33:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034c37:	89 45 8c             	mov    %eax,-0x74(%ebp)
c0034c3a:	e8 f1 14 00 00       	call   c0036130 <_Bfree>
c0034c3f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034c42:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034c45:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034c48:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034c4b:	29 d0                	sub    %edx,%eax
c0034c4d:	0f 85 1f 04 00 00    	jne    c0035072 <_dtoa_r+0xb12>
c0034c53:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034c5a:	00 
c0034c5b:	89 34 24             	mov    %esi,(%esp)
c0034c5e:	e8 ad 17 00 00       	call   c0036410 <__i2b>
c0034c63:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034c66:	85 c9                	test   %ecx,%ecx
c0034c68:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034c6b:	7e 13                	jle    c0034c80 <_dtoa_r+0x720>
c0034c6d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034c71:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c75:	89 34 24             	mov    %esi,(%esp)
c0034c78:	e8 93 19 00 00       	call   c0036610 <__pow5mult>
c0034c7d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034c80:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034c84:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034c8b:	0f 8e f7 05 00 00    	jle    c0035288 <_dtoa_r+0xd28>
c0034c91:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034c94:	ba 01 00 00 00       	mov    $0x1,%edx
c0034c99:	85 c0                	test   %eax,%eax
c0034c9b:	0f 85 27 05 00 00    	jne    c00351c8 <_dtoa_r+0xc68>
c0034ca1:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034ca4:	01 d0                	add    %edx,%eax
c0034ca6:	83 e0 1f             	and    $0x1f,%eax
c0034ca9:	89 c2                	mov    %eax,%edx
c0034cab:	0f 84 57 03 00 00    	je     c0035008 <_dtoa_r+0xaa8>
c0034cb1:	b8 20 00 00 00       	mov    $0x20,%eax
c0034cb6:	29 d0                	sub    %edx,%eax
c0034cb8:	83 f8 04             	cmp    $0x4,%eax
c0034cbb:	0f 8e 8c 0a 00 00    	jle    c003574d <_dtoa_r+0x11ed>
c0034cc1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034cc6:	29 d0                	sub    %edx,%eax
c0034cc8:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034ccb:	01 c3                	add    %eax,%ebx
c0034ccd:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034cd0:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0034cd3:	85 c0                	test   %eax,%eax
c0034cd5:	7e 16                	jle    c0034ced <_dtoa_r+0x78d>
c0034cd7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034cdb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034cde:	89 34 24             	mov    %esi,(%esp)
c0034ce1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ce5:	e8 46 1a 00 00       	call   c0036730 <__lshift>
c0034cea:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034ced:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034cf0:	85 c0                	test   %eax,%eax
c0034cf2:	7e 16                	jle    c0034d0a <_dtoa_r+0x7aa>
c0034cf4:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034cf8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034cfb:	89 34 24             	mov    %esi,(%esp)
c0034cfe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d02:	e8 29 1a 00 00       	call   c0036730 <__lshift>
c0034d07:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034d0a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034d0d:	85 c0                	test   %eax,%eax
c0034d0f:	0f 85 d3 04 00 00    	jne    c00351e8 <_dtoa_r+0xc88>
c0034d15:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034d19:	0f 8e 11 02 00 00    	jle    c0034f30 <_dtoa_r+0x9d0>
c0034d1f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034d22:	85 c0                	test   %eax,%eax
c0034d24:	0f 8f 06 02 00 00    	jg     c0034f30 <_dtoa_r+0x9d0>
c0034d2a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034d2d:	85 c0                	test   %eax,%eax
c0034d2f:	0f 85 e0 01 00 00    	jne    c0034f15 <_dtoa_r+0x9b5>
c0034d35:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034d38:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034d3f:	00 
c0034d40:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034d47:	00 
c0034d48:	89 34 24             	mov    %esi,(%esp)
c0034d4b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d4f:	e8 fc 13 00 00       	call   c0036150 <__multadd>
c0034d54:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034d57:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d5b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d5e:	89 04 24             	mov    %eax,(%esp)
c0034d61:	e8 ea 1a 00 00       	call   c0036850 <__mcmp>
c0034d66:	85 c0                	test   %eax,%eax
c0034d68:	0f 8e a7 01 00 00    	jle    c0034f15 <_dtoa_r+0x9b5>
c0034d6e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034d72:	89 fb                	mov    %edi,%ebx
c0034d74:	83 c7 01             	add    $0x1,%edi
c0034d77:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c0034d7b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034d82:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034d85:	89 34 24             	mov    %esi,(%esp)
c0034d88:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d8c:	e8 9f 13 00 00       	call   c0036130 <_Bfree>
c0034d91:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034d94:	85 c0                	test   %eax,%eax
c0034d96:	74 18                	je     c0034db0 <_dtoa_r+0x850>
c0034d98:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c0034d9b:	0f 85 a7 02 00 00    	jne    c0035048 <_dtoa_r+0xae8>
c0034da1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034da4:	89 34 24             	mov    %esi,(%esp)
c0034da7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034dab:	e8 80 13 00 00       	call   c0036130 <_Bfree>
c0034db0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034db3:	89 34 24             	mov    %esi,(%esp)
c0034db6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034dba:	e8 71 13 00 00       	call   c0036130 <_Bfree>
c0034dbf:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034dc2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c0034dc5:	c6 07 00             	movb   $0x0,(%edi)
c0034dc8:	83 c0 01             	add    $0x1,%eax
c0034dcb:	89 06                	mov    %eax,(%esi)
c0034dcd:	8b 45 24             	mov    0x24(%ebp),%eax
c0034dd0:	85 c0                	test   %eax,%eax
c0034dd2:	0f 84 90 02 00 00    	je     c0035068 <_dtoa_r+0xb08>
c0034dd8:	8b 45 24             	mov    0x24(%ebp),%eax
c0034ddb:	89 38                	mov    %edi,(%eax)
c0034ddd:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034de3:	89 d8                	mov    %ebx,%eax
c0034de5:	5b                   	pop    %ebx
c0034de6:	5e                   	pop    %esi
c0034de7:	5f                   	pop    %edi
c0034de8:	5d                   	pop    %ebp
c0034de9:	c3                   	ret    
c0034dea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034df0:	db 45 b8             	fildl  -0x48(%ebp)
c0034df3:	df e9                	fucomip %st(1),%st
c0034df5:	dd d8                	fstp   %st(0)
c0034df7:	7a 06                	jp     c0034dff <_dtoa_r+0x89f>
c0034df9:	0f 84 cc f8 ff ff    	je     c00346cb <_dtoa_r+0x16b>
c0034dff:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034e03:	e9 c3 f8 ff ff       	jmp    c00346cb <_dtoa_r+0x16b>
c0034e08:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034e0b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034e0e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0034e15:	f7 d8                	neg    %eax
c0034e17:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034e1a:	e9 0c f9 ff ff       	jmp    c003472b <_dtoa_r+0x1cb>
c0034e1f:	90                   	nop
c0034e20:	f7 d8                	neg    %eax
c0034e22:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034e25:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c0034e2c:	e9 e2 f8 ff ff       	jmp    c0034713 <_dtoa_r+0x1b3>
c0034e31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034e38:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e3b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034e40:	29 d9                	sub    %ebx,%ecx
c0034e42:	d3 e0                	shl    %cl,%eax
c0034e44:	e9 1b f8 ff ff       	jmp    c0034664 <_dtoa_r+0x104>
c0034e49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034e50:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034e57:	e9 a0 f8 ff ff       	jmp    c00346fc <_dtoa_r+0x19c>
c0034e5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034e60:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034e64:	0f 8e fe 06 00 00    	jle    c0035568 <_dtoa_r+0x1008>
c0034e6a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034e6d:	83 e8 01             	sub    $0x1,%eax
c0034e70:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034e73:	0f 8c 3b 06 00 00    	jl     c00354b4 <_dtoa_r+0xf54>
c0034e79:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034e7c:	29 c2                	sub    %eax,%edx
c0034e7e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034e81:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034e84:	85 c9                	test   %ecx,%ecx
c0034e86:	89 c8                	mov    %ecx,%eax
c0034e88:	0f 88 83 07 00 00    	js     c0035611 <_dtoa_r+0x10b1>
c0034e8e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034e95:	00 
c0034e96:	89 34 24             	mov    %esi,(%esp)
c0034e99:	89 55 8c             	mov    %edx,-0x74(%ebp)
c0034e9c:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034e9f:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034ea2:	e8 69 15 00 00       	call   c0036410 <__i2b>
c0034ea7:	8b 55 8c             	mov    -0x74(%ebp),%edx
c0034eaa:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034ead:	e9 1e fd ff ff       	jmp    c0034bd0 <_dtoa_r+0x670>
c0034eb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034eb8:	d9 c1                	fld    %st(1)
c0034eba:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034ebf:	e9 37 fa ff ff       	jmp    c00348fb <_dtoa_r+0x39b>
c0034ec4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034ec7:	db 45 d4             	fildl  -0x2c(%ebp)
c0034eca:	d8 c9                	fmul   %st(1),%st
c0034ecc:	d8 05 90 93 03 c0    	fadds  0xc0039390
c0034ed2:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034ed5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034edc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ee0:	d8 25 94 93 03 c0    	fsubs  0xc0039394
c0034ee6:	dd 45 c0             	fldl   -0x40(%ebp)
c0034ee9:	d9 c9                	fxch   %st(1)
c0034eeb:	db e9                	fucomi %st(1),%st
c0034eed:	0f 87 0d 02 00 00    	ja     c0035100 <_dtoa_r+0xba0>
c0034ef3:	d9 c9                	fxch   %st(1)
c0034ef5:	d9 e0                	fchs   
c0034ef7:	df e9                	fucomip %st(1),%st
c0034ef9:	dd d8                	fstp   %st(0)
c0034efb:	0f 86 a7 01 00 00    	jbe    c00350a8 <_dtoa_r+0xb48>
c0034f01:	dd d8                	fstp   %st(0)
c0034f03:	eb 02                	jmp    c0034f07 <_dtoa_r+0x9a7>
c0034f05:	dd d8                	fstp   %st(0)
c0034f07:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034f0e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034f15:	8b 45 18             	mov    0x18(%ebp),%eax
c0034f18:	89 fb                	mov    %edi,%ebx
c0034f1a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034f21:	f7 d0                	not    %eax
c0034f23:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034f26:	e9 57 fe ff ff       	jmp    c0034d82 <_dtoa_r+0x822>
c0034f2b:	90                   	nop
c0034f2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034f30:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034f33:	85 c0                	test   %eax,%eax
c0034f35:	0f 85 c5 03 00 00    	jne    c0035300 <_dtoa_r+0xda0>
c0034f3b:	89 75 08             	mov    %esi,0x8(%ebp)
c0034f3e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034f43:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034f46:	eb 24                	jmp    c0034f6c <_dtoa_r+0xa0c>
c0034f48:	8b 45 08             	mov    0x8(%ebp),%eax
c0034f4b:	83 c3 01             	add    $0x1,%ebx
c0034f4e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034f52:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f59:	00 
c0034f5a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f61:	00 
c0034f62:	89 04 24             	mov    %eax,(%esp)
c0034f65:	e8 e6 11 00 00       	call   c0036150 <__multadd>
c0034f6a:	89 c6                	mov    %eax,%esi
c0034f6c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034f6f:	89 f0                	mov    %esi,%eax
c0034f71:	e8 1a f4 ff ff       	call   c0034390 <quorem>
c0034f76:	83 c0 30             	add    $0x30,%eax
c0034f79:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034f7c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034f80:	7c c6                	jl     c0034f48 <_dtoa_r+0x9e8>
c0034f82:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034f85:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034f88:	ba 01 00 00 00       	mov    $0x1,%edx
c0034f8d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034f90:	8b 75 08             	mov    0x8(%ebp),%esi
c0034f93:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034f9a:	85 c0                	test   %eax,%eax
c0034f9c:	0f 4f d0             	cmovg  %eax,%edx
c0034f9f:	01 fa                	add    %edi,%edx
c0034fa1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034fa4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034fab:	00 
c0034fac:	89 34 24             	mov    %esi,(%esp)
c0034faf:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034fb2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034fb6:	e8 75 17 00 00       	call   c0036730 <__lshift>
c0034fbb:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034fbe:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034fc2:	89 04 24             	mov    %eax,(%esp)
c0034fc5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034fc8:	e8 83 18 00 00       	call   c0036850 <__mcmp>
c0034fcd:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034fd0:	83 f8 00             	cmp    $0x0,%eax
c0034fd3:	0f 8e 41 06 00 00    	jle    c003561a <_dtoa_r+0x10ba>
c0034fd9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034fdd:	eb 0f                	jmp    c0034fee <_dtoa_r+0xa8e>
c0034fdf:	90                   	nop
c0034fe0:	39 c7                	cmp    %eax,%edi
c0034fe2:	0f 84 70 05 00 00    	je     c0035558 <_dtoa_r+0xff8>
c0034fe8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034fec:	89 c2                	mov    %eax,%edx
c0034fee:	80 f9 39             	cmp    $0x39,%cl
c0034ff1:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034ff4:	74 ea                	je     c0034fe0 <_dtoa_r+0xa80>
c0034ff6:	83 c1 01             	add    $0x1,%ecx
c0034ff9:	89 fb                	mov    %edi,%ebx
c0034ffb:	88 08                	mov    %cl,(%eax)
c0034ffd:	89 d7                	mov    %edx,%edi
c0034fff:	e9 7e fd ff ff       	jmp    c0034d82 <_dtoa_r+0x822>
c0035004:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035008:	b8 1c 00 00 00       	mov    $0x1c,%eax
c003500d:	01 45 a0             	add    %eax,-0x60(%ebp)
c0035010:	01 c3                	add    %eax,%ebx
c0035012:	01 45 ac             	add    %eax,-0x54(%ebp)
c0035015:	e9 b6 fc ff ff       	jmp    c0034cd0 <_dtoa_r+0x770>
c003501a:	ba 01 00 00 00       	mov    $0x1,%edx
c003501f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0035026:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c003502d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0035034:	21 c2                	and    %eax,%edx
c0035036:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0035039:	31 d2                	xor    %edx,%edx
c003503b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0035042:	e9 62 f8 ff ff       	jmp    c00348a9 <_dtoa_r+0x349>
c0035047:	90                   	nop
c0035048:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003504b:	85 d2                	test   %edx,%edx
c003504d:	0f 84 4e fd ff ff    	je     c0034da1 <_dtoa_r+0x841>
c0035053:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0035056:	89 34 24             	mov    %esi,(%esp)
c0035059:	89 44 24 04          	mov    %eax,0x4(%esp)
c003505d:	e8 ce 10 00 00       	call   c0036130 <_Bfree>
c0035062:	e9 3a fd ff ff       	jmp    c0034da1 <_dtoa_r+0x841>
c0035067:	90                   	nop
c0035068:	89 d8                	mov    %ebx,%eax
c003506a:	e9 89 f5 ff ff       	jmp    c00345f8 <_dtoa_r+0x98>
c003506f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0035072:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035076:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035079:	89 34 24             	mov    %esi,(%esp)
c003507c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035080:	e8 8b 15 00 00       	call   c0036610 <__pow5mult>
c0035085:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035088:	e9 c6 fb ff ff       	jmp    c0034c53 <_dtoa_r+0x6f3>
c003508d:	dd d8                	fstp   %st(0)
c003508f:	dd d8                	fstp   %st(0)
c0035091:	eb 15                	jmp    c00350a8 <_dtoa_r+0xb48>
c0035093:	90                   	nop
c0035094:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035098:	dd d8                	fstp   %st(0)
c003509a:	dd d8                	fstp   %st(0)
c003509c:	dd d8                	fstp   %st(0)
c003509e:	eb 08                	jmp    c00350a8 <_dtoa_r+0xb48>
c00350a0:	dd d8                	fstp   %st(0)
c00350a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00350a8:	dd 5d c0             	fstpl  -0x40(%ebp)
c00350ab:	e9 cf f9 ff ff       	jmp    c0034a7f <_dtoa_r+0x51f>
c00350b0:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00350b3:	f7 d8                	neg    %eax
c00350b5:	0f 84 6a 04 00 00    	je     c0035525 <_dtoa_r+0xfc5>
c00350bb:	89 c2                	mov    %eax,%edx
c00350bd:	b9 02 00 00 00       	mov    $0x2,%ecx
c00350c2:	83 e2 0f             	and    $0xf,%edx
c00350c5:	c1 f8 04             	sar    $0x4,%eax
c00350c8:	dd 04 d5 60 94 03 c0 	fldl   -0x3ffc6ba0(,%edx,8)
c00350cf:	85 c0                	test   %eax,%eax
c00350d1:	d8 c9                	fmul   %st(1),%st
c00350d3:	0f 84 4a f8 ff ff    	je     c0034923 <_dtoa_r+0x3c3>
c00350d9:	31 d2                	xor    %edx,%edx
c00350db:	90                   	nop
c00350dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00350e0:	a8 01                	test   $0x1,%al
c00350e2:	74 0a                	je     c00350ee <_dtoa_r+0xb8e>
c00350e4:	dc 0c d5 20 94 03 c0 	fmull  -0x3ffc6be0(,%edx,8)
c00350eb:	83 c1 01             	add    $0x1,%ecx
c00350ee:	83 c2 01             	add    $0x1,%edx
c00350f1:	d1 f8                	sar    %eax
c00350f3:	75 eb                	jne    c00350e0 <_dtoa_r+0xb80>
c00350f5:	e9 29 f8 ff ff       	jmp    c0034923 <_dtoa_r+0x3c3>
c00350fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035100:	dd d8                	fstp   %st(0)
c0035102:	dd d8                	fstp   %st(0)
c0035104:	dd d8                	fstp   %st(0)
c0035106:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003510d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0035114:	e9 55 fc ff ff       	jmp    c0034d6e <_dtoa_r+0x80e>
c0035119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035120:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0035123:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0035126:	dd 45 c0             	fldl   -0x40(%ebp)
c0035129:	dc 0c c5 60 94 03 c0 	fmull  -0x3ffc6ba0(,%eax,8)
c0035130:	d9 c9                	fxch   %st(1)
c0035132:	89 45 88             	mov    %eax,-0x78(%ebp)
c0035135:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0035139:	8d 57 01             	lea    0x1(%edi),%edx
c003513c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c003513f:	b4 0c                	mov    $0xc,%ah
c0035141:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0035145:	d9 6d d0             	fldcw  -0x30(%ebp)
c0035148:	db 55 d4             	fistl  -0x2c(%ebp)
c003514b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003514e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0035151:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035154:	83 c0 30             	add    $0x30,%eax
c0035157:	83 f9 01             	cmp    $0x1,%ecx
c003515a:	db 45 d4             	fildl  -0x2c(%ebp)
c003515d:	de e9                	fsubrp %st,%st(1)
c003515f:	88 07                	mov    %al,(%edi)
c0035161:	89 d0                	mov    %edx,%eax
c0035163:	74 37                	je     c003519c <_dtoa_r+0xc3c>
c0035165:	d9 05 8c 93 03 c0    	flds   0xc003938c
c003516b:	eb 05                	jmp    c0035172 <_dtoa_r+0xc12>
c003516d:	8d 76 00             	lea    0x0(%esi),%esi
c0035170:	d9 c9                	fxch   %st(1)
c0035172:	dc c9                	fmul   %st,%st(1)
c0035174:	d9 c9                	fxch   %st(1)
c0035176:	83 c0 01             	add    $0x1,%eax
c0035179:	d9 6d d0             	fldcw  -0x30(%ebp)
c003517c:	db 55 d4             	fistl  -0x2c(%ebp)
c003517f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0035182:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0035185:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035188:	83 c1 30             	add    $0x30,%ecx
c003518b:	39 d8                	cmp    %ebx,%eax
c003518d:	db 45 d4             	fildl  -0x2c(%ebp)
c0035190:	de e9                	fsubrp %st,%st(1)
c0035192:	88 48 ff             	mov    %cl,-0x1(%eax)
c0035195:	75 d9                	jne    c0035170 <_dtoa_r+0xc10>
c0035197:	dd d9                	fstp   %st(1)
c0035199:	03 55 88             	add    -0x78(%ebp),%edx
c003519c:	d9 05 98 93 03 c0    	flds   0xc0039398
c00351a2:	d9 c2                	fld    %st(2)
c00351a4:	d8 c1                	fadd   %st(1),%st
c00351a6:	d9 ca                	fxch   %st(2)
c00351a8:	db ea                	fucomi %st(2),%st
c00351aa:	dd da                	fstp   %st(2)
c00351ac:	0f 86 7f 03 00 00    	jbe    c0035531 <_dtoa_r+0xfd1>
c00351b2:	dd d8                	fstp   %st(0)
c00351b4:	dd d8                	fstp   %st(0)
c00351b6:	dd d8                	fstp   %st(0)
c00351b8:	dd d8                	fstp   %st(0)
c00351ba:	89 fb                	mov    %edi,%ebx
c00351bc:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c00351c0:	89 d7                	mov    %edx,%edi
c00351c2:	e9 d7 f9 ff ff       	jmp    c0034b9e <_dtoa_r+0x63e>
c00351c7:	90                   	nop
c00351c8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c00351cb:	8b 41 10             	mov    0x10(%ecx),%eax
c00351ce:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c00351d2:	89 04 24             	mov    %eax,(%esp)
c00351d5:	e8 56 11 00 00       	call   c0036330 <__hi0bits>
c00351da:	ba 20 00 00 00       	mov    $0x20,%edx
c00351df:	29 c2                	sub    %eax,%edx
c00351e1:	e9 bb fa ff ff       	jmp    c0034ca1 <_dtoa_r+0x741>
c00351e6:	66 90                	xchg   %ax,%ax
c00351e8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00351eb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00351ef:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00351f2:	89 04 24             	mov    %eax,(%esp)
c00351f5:	e8 56 16 00 00       	call   c0036850 <__mcmp>
c00351fa:	85 c0                	test   %eax,%eax
c00351fc:	0f 89 13 fb ff ff    	jns    c0034d15 <_dtoa_r+0x7b5>
c0035202:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035205:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003520c:	00 
c003520d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035214:	00 
c0035215:	89 34 24             	mov    %esi,(%esp)
c0035218:	89 44 24 04          	mov    %eax,0x4(%esp)
c003521c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0035220:	e8 2b 0f 00 00       	call   c0036150 <__multadd>
c0035225:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035228:	85 c9                	test   %ecx,%ecx
c003522a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003522d:	0f 85 8d 00 00 00    	jne    c00352c0 <_dtoa_r+0xd60>
c0035233:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0035237:	8b 45 90             	mov    -0x70(%ebp),%eax
c003523a:	7f 0a                	jg     c0035246 <_dtoa_r+0xce6>
c003523c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0035240:	0f 8f ff 04 00 00    	jg     c0035745 <_dtoa_r+0x11e5>
c0035246:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035249:	e9 ed fc ff ff       	jmp    c0034f3b <_dtoa_r+0x9db>
c003524e:	66 90                	xchg   %ax,%ax
c0035250:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0035253:	85 db                	test   %ebx,%ebx
c0035255:	0f 85 aa fc ff ff    	jne    c0034f05 <_dtoa_r+0x9a5>
c003525b:	d8 0d 94 93 03 c0    	fmuls  0xc0039394
c0035261:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0035268:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c003526f:	dd 45 c0             	fldl   -0x40(%ebp)
c0035272:	d9 c9                	fxch   %st(1)
c0035274:	df e9                	fucomip %st(1),%st
c0035276:	dd d8                	fstp   %st(0)
c0035278:	0f 83 97 fc ff ff    	jae    c0034f15 <_dtoa_r+0x9b5>
c003527e:	e9 eb fa ff ff       	jmp    c0034d6e <_dtoa_r+0x80e>
c0035283:	90                   	nop
c0035284:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035288:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003528b:	85 c0                	test   %eax,%eax
c003528d:	0f 85 fe f9 ff ff    	jne    c0034c91 <_dtoa_r+0x731>
c0035293:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0035296:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c003529b:	0f 85 f0 f9 ff ff    	jne    c0034c91 <_dtoa_r+0x731>
c00352a1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c00352a6:	0f 84 e5 f9 ff ff    	je     c0034c91 <_dtoa_r+0x731>
c00352ac:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c00352b0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c00352b4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c00352bb:	e9 d1 f9 ff ff       	jmp    c0034c91 <_dtoa_r+0x731>
c00352c0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00352c3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00352ca:	00 
c00352cb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00352d2:	00 
c00352d3:	89 34 24             	mov    %esi,(%esp)
c00352d6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00352da:	e8 71 0e 00 00       	call   c0036150 <__multadd>
c00352df:	8b 55 90             	mov    -0x70(%ebp),%edx
c00352e2:	85 d2                	test   %edx,%edx
c00352e4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00352e7:	8b 45 90             	mov    -0x70(%ebp),%eax
c00352ea:	7f 0a                	jg     c00352f6 <_dtoa_r+0xd96>
c00352ec:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00352f0:	0f 8f 4f 04 00 00    	jg     c0035745 <_dtoa_r+0x11e5>
c00352f6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c00352f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035300:	85 db                	test   %ebx,%ebx
c0035302:	7e 16                	jle    c003531a <_dtoa_r+0xdba>
c0035304:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035307:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003530b:	89 34 24             	mov    %esi,(%esp)
c003530e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035312:	e8 19 14 00 00       	call   c0036730 <__lshift>
c0035317:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003531a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c003531d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035320:	85 db                	test   %ebx,%ebx
c0035322:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035325:	0f 85 11 03 00 00    	jne    c003563c <_dtoa_r+0x10dc>
c003532b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003532e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0035331:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0035334:	01 f8                	add    %edi,%eax
c0035336:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0035339:	89 45 90             	mov    %eax,-0x70(%ebp)
c003533c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003533f:	83 e0 01             	and    $0x1,%eax
c0035342:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0035345:	eb 2e                	jmp    c0035375 <_dtoa_r+0xe15>
c0035347:	90                   	nop
c0035348:	e8 03 0e 00 00       	call   c0036150 <__multadd>
c003534d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0035354:	00 
c0035355:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003535c:	00 
c003535d:	89 34 24             	mov    %esi,(%esp)
c0035360:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035363:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0035366:	89 44 24 04          	mov    %eax,0x4(%esp)
c003536a:	e8 e1 0d 00 00       	call   c0036150 <__multadd>
c003536f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035372:	83 c3 01             	add    $0x1,%ebx
c0035375:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035378:	8d 43 ff             	lea    -0x1(%ebx),%eax
c003537b:	89 45 98             	mov    %eax,-0x68(%ebp)
c003537e:	89 f8                	mov    %edi,%eax
c0035380:	e8 0b f0 ff ff       	call   c0034390 <quorem>
c0035385:	89 3c 24             	mov    %edi,(%esp)
c0035388:	8d 48 30             	lea    0x30(%eax),%ecx
c003538b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c003538e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0035391:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0035394:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035398:	e8 b3 14 00 00       	call   c0036850 <__mcmp>
c003539d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c00353a0:	89 34 24             	mov    %esi,(%esp)
c00353a3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c00353a7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00353aa:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00353ad:	89 44 24 04          	mov    %eax,0x4(%esp)
c00353b1:	e8 ea 14 00 00       	call   c00368a0 <__mdiff>
c00353b6:	8b 48 0c             	mov    0xc(%eax),%ecx
c00353b9:	89 c2                	mov    %eax,%edx
c00353bb:	85 c9                	test   %ecx,%ecx
c00353bd:	0f 85 c5 00 00 00    	jne    c0035488 <_dtoa_r+0xf28>
c00353c3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00353c7:	89 3c 24             	mov    %edi,(%esp)
c00353ca:	89 45 a8             	mov    %eax,-0x58(%ebp)
c00353cd:	e8 7e 14 00 00       	call   c0036850 <__mcmp>
c00353d2:	8b 55 a8             	mov    -0x58(%ebp),%edx
c00353d5:	89 54 24 04          	mov    %edx,0x4(%esp)
c00353d9:	89 34 24             	mov    %esi,(%esp)
c00353dc:	89 45 a8             	mov    %eax,-0x58(%ebp)
c00353df:	e8 4c 0d 00 00       	call   c0036130 <_Bfree>
c00353e4:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00353e7:	89 c1                	mov    %eax,%ecx
c00353e9:	0b 4d 14             	or     0x14(%ebp),%ecx
c00353ec:	75 0b                	jne    c00353f9 <_dtoa_r+0xe99>
c00353ee:	8b 55 9c             	mov    -0x64(%ebp),%edx
c00353f1:	85 d2                	test   %edx,%edx
c00353f3:	0f 84 fb 02 00 00    	je     c00356f4 <_dtoa_r+0x1194>
c00353f9:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00353fc:	85 d2                	test   %edx,%edx
c00353fe:	0f 88 7f 01 00 00    	js     c0035583 <_dtoa_r+0x1023>
c0035404:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035407:	0b 4d 14             	or     0x14(%ebp),%ecx
c003540a:	75 0b                	jne    c0035417 <_dtoa_r+0xeb7>
c003540c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c003540f:	85 c9                	test   %ecx,%ecx
c0035411:	0f 84 6c 01 00 00    	je     c0035583 <_dtoa_r+0x1023>
c0035417:	85 c0                	test   %eax,%eax
c0035419:	0f 8f 82 02 00 00    	jg     c00356a1 <_dtoa_r+0x1141>
c003541f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035423:	89 da                	mov    %ebx,%edx
c0035425:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0035428:	88 43 ff             	mov    %al,-0x1(%ebx)
c003542b:	0f 84 8d 02 00 00    	je     c00356be <_dtoa_r+0x115e>
c0035431:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0035435:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003543c:	00 
c003543d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035444:	00 
c0035445:	89 34 24             	mov    %esi,(%esp)
c0035448:	e8 03 0d 00 00       	call   c0036150 <__multadd>
c003544d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0035454:	00 
c0035455:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c003545c:	00 
c003545d:	89 34 24             	mov    %esi,(%esp)
c0035460:	89 c7                	mov    %eax,%edi
c0035462:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0035465:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0035468:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c003546b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003546f:	0f 85 d3 fe ff ff    	jne    c0035348 <_dtoa_r+0xde8>
c0035475:	e8 d6 0c 00 00       	call   c0036150 <__multadd>
c003547a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003547d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035480:	e9 ed fe ff ff       	jmp    c0035372 <_dtoa_r+0xe12>
c0035485:	8d 76 00             	lea    0x0(%esi),%esi
c0035488:	b8 01 00 00 00       	mov    $0x1,%eax
c003548d:	e9 43 ff ff ff       	jmp    c00353d5 <_dtoa_r+0xe75>
c0035492:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0035499:	e9 d2 f2 ff ff       	jmp    c0034770 <_dtoa_r+0x210>
c003549e:	0f 85 87 f6 ff ff    	jne    c0034b2b <_dtoa_r+0x5cb>
c00354a4:	dd d8                	fstp   %st(0)
c00354a6:	dd d8                	fstp   %st(0)
c00354a8:	dd d8                	fstp   %st(0)
c00354aa:	89 fb                	mov    %edi,%ebx
c00354ac:	8b 7d c0             	mov    -0x40(%ebp),%edi
c00354af:	e9 fc f8 ff ff       	jmp    c0034db0 <_dtoa_r+0x850>
c00354b4:	89 c2                	mov    %eax,%edx
c00354b6:	2b 55 b0             	sub    -0x50(%ebp),%edx
c00354b9:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00354bc:	01 55 94             	add    %edx,-0x6c(%ebp)
c00354bf:	31 d2                	xor    %edx,%edx
c00354c1:	e9 b8 f9 ff ff       	jmp    c0034e7e <_dtoa_r+0x91e>
c00354c6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00354c9:	85 c0                	test   %eax,%eax
c00354cb:	0f 84 f3 f9 ff ff    	je     c0034ec4 <_dtoa_r+0x964>
c00354d1:	8b 45 90             	mov    -0x70(%ebp),%eax
c00354d4:	85 c0                	test   %eax,%eax
c00354d6:	0f 8e c4 fb ff ff    	jle    c00350a0 <_dtoa_r+0xb40>
c00354dc:	d8 0d 8c 93 03 c0    	fmuls  0xc003938c
c00354e2:	83 c1 01             	add    $0x1,%ecx
c00354e5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00354e8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00354eb:	89 c1                	mov    %eax,%ecx
c00354ed:	83 eb 01             	sub    $0x1,%ebx
c00354f0:	db 45 d4             	fildl  -0x2c(%ebp)
c00354f3:	d8 c9                	fmul   %st(1),%st
c00354f5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c00354f8:	d8 05 90 93 03 c0    	fadds  0xc0039390
c00354fe:	dd 5d c0             	fstpl  -0x40(%ebp)
c0035501:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0035508:	e9 53 f4 ff ff       	jmp    c0034960 <_dtoa_r+0x400>
c003550d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035510:	c6 03 30             	movb   $0x30,(%ebx)
c0035513:	83 c0 01             	add    $0x1,%eax
c0035516:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0035519:	b8 31 00 00 00       	mov    $0x31,%eax
c003551e:	88 02                	mov    %al,(%edx)
c0035520:	e9 8b f8 ff ff       	jmp    c0034db0 <_dtoa_r+0x850>
c0035525:	d9 c0                	fld    %st(0)
c0035527:	b9 02 00 00 00       	mov    $0x2,%ecx
c003552c:	e9 f2 f3 ff ff       	jmp    c0034923 <_dtoa_r+0x3c3>
c0035531:	de e2                	fsubp  %st,%st(2)
c0035533:	d9 c9                	fxch   %st(1)
c0035535:	df e9                	fucomip %st(1),%st
c0035537:	dd d8                	fstp   %st(0)
c0035539:	0f 86 69 fb ff ff    	jbe    c00350a8 <_dtoa_r+0xb48>
c003553f:	dd d8                	fstp   %st(0)
c0035541:	eb 07                	jmp    c003554a <_dtoa_r+0xfea>
c0035543:	90                   	nop
c0035544:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035548:	89 c2                	mov    %eax,%edx
c003554a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003554e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035551:	74 f5                	je     c0035548 <_dtoa_r+0xfe8>
c0035553:	e9 d9 f4 ff ff       	jmp    c0034a31 <_dtoa_r+0x4d1>
c0035558:	c6 07 31             	movb   $0x31,(%edi)
c003555b:	89 fb                	mov    %edi,%ebx
c003555d:	89 d7                	mov    %edx,%edi
c003555f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035563:	e9 1a f8 ff ff       	jmp    c0034d82 <_dtoa_r+0x822>
c0035568:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003556b:	85 d2                	test   %edx,%edx
c003556d:	0f 84 1b 01 00 00    	je     c003568e <_dtoa_r+0x112e>
c0035573:	05 33 04 00 00       	add    $0x433,%eax
c0035578:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003557b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003557e:	e9 0b f9 ff ff       	jmp    c0034e8e <_dtoa_r+0x92e>
c0035583:	85 c0                	test   %eax,%eax
c0035585:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035588:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003558b:	7e 45                	jle    c00355d2 <_dtoa_r+0x1072>
c003558d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035590:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035597:	00 
c0035598:	89 34 24             	mov    %esi,(%esp)
c003559b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003559f:	e8 8c 11 00 00       	call   c0036730 <__lshift>
c00355a4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c00355a7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00355ab:	89 04 24             	mov    %eax,(%esp)
c00355ae:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00355b1:	e8 9a 12 00 00       	call   c0036850 <__mcmp>
c00355b6:	83 f8 00             	cmp    $0x0,%eax
c00355b9:	0f 8e 5b 01 00 00    	jle    c003571a <_dtoa_r+0x11ba>
c00355bf:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00355c3:	0f 84 0c 01 00 00    	je     c00356d5 <_dtoa_r+0x1175>
c00355c9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00355cc:	83 c0 31             	add    $0x31,%eax
c00355cf:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00355d2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00355d5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00355d9:	89 cb                	mov    %ecx,%ebx
c00355db:	88 03                	mov    %al,(%ebx)
c00355dd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00355e0:	89 fb                	mov    %edi,%ebx
c00355e2:	8d 79 01             	lea    0x1(%ecx),%edi
c00355e5:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00355e8:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00355eb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00355ee:	e9 8f f7 ff ff       	jmp    c0034d82 <_dtoa_r+0x822>
c00355f3:	dd d8                	fstp   %st(0)
c00355f5:	dd d8                	fstp   %st(0)
c00355f7:	dd d8                	fstp   %st(0)
c00355f9:	eb 0d                	jmp    c0035608 <_dtoa_r+0x10a8>
c00355fb:	90                   	nop
c00355fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035600:	dd d8                	fstp   %st(0)
c0035602:	dd d8                	fstp   %st(0)
c0035604:	dd d8                	fstp   %st(0)
c0035606:	dd d8                	fstp   %st(0)
c0035608:	89 fb                	mov    %edi,%ebx
c003560a:	89 d7                	mov    %edx,%edi
c003560c:	e9 8d f5 ff ff       	jmp    c0034b9e <_dtoa_r+0x63e>
c0035611:	29 cb                	sub    %ecx,%ebx
c0035613:	31 c0                	xor    %eax,%eax
c0035615:	e9 74 f8 ff ff       	jmp    c0034e8e <_dtoa_r+0x92e>
c003561a:	75 0e                	jne    c003562a <_dtoa_r+0x10ca>
c003561c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035620:	74 08                	je     c003562a <_dtoa_r+0x10ca>
c0035622:	e9 b2 f9 ff ff       	jmp    c0034fd9 <_dtoa_r+0xa79>
c0035627:	90                   	nop
c0035628:	89 c2                	mov    %eax,%edx
c003562a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003562e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035631:	74 f5                	je     c0035628 <_dtoa_r+0x10c8>
c0035633:	89 fb                	mov    %edi,%ebx
c0035635:	89 d7                	mov    %edx,%edi
c0035637:	e9 46 f7 ff ff       	jmp    c0034d82 <_dtoa_r+0x822>
c003563c:	8b 40 04             	mov    0x4(%eax),%eax
c003563f:	89 34 24             	mov    %esi,(%esp)
c0035642:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035646:	e8 45 0a 00 00       	call   c0036090 <_Balloc>
c003564b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003564e:	89 c3                	mov    %eax,%ebx
c0035650:	8b 41 10             	mov    0x10(%ecx),%eax
c0035653:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003565a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003565e:	89 c8                	mov    %ecx,%eax
c0035660:	83 c0 0c             	add    $0xc,%eax
c0035663:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035667:	8d 43 0c             	lea    0xc(%ebx),%eax
c003566a:	89 04 24             	mov    %eax,(%esp)
c003566d:	e8 f2 cb ff ff       	call   c0032264 <memcpy>
c0035672:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035679:	00 
c003567a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003567e:	89 34 24             	mov    %esi,(%esp)
c0035681:	e8 aa 10 00 00       	call   c0036730 <__lshift>
c0035686:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035689:	e9 9d fc ff ff       	jmp    c003532b <_dtoa_r+0xdcb>
c003568e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035693:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035696:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035699:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003569c:	e9 ed f7 ff ff       	jmp    c0034e8e <_dtoa_r+0x92e>
c00356a1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00356a5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00356a8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00356ab:	74 28                	je     c00356d5 <_dtoa_r+0x1175>
c00356ad:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00356b1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00356b4:	83 c0 01             	add    $0x1,%eax
c00356b7:	89 cb                	mov    %ecx,%ebx
c00356b9:	e9 1d ff ff ff       	jmp    c00355db <_dtoa_r+0x107b>
c00356be:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00356c1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00356c4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00356c7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00356ca:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00356cd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00356d0:	e9 cc f8 ff ff       	jmp    c0034fa1 <_dtoa_r+0xa41>
c00356d5:	8b 45 98             	mov    -0x68(%ebp),%eax
c00356d8:	b9 39 00 00 00       	mov    $0x39,%ecx
c00356dd:	8d 50 01             	lea    0x1(%eax),%edx
c00356e0:	c6 00 39             	movb   $0x39,(%eax)
c00356e3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00356e6:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00356e9:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00356ec:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00356ef:	e9 fa f8 ff ff       	jmp    c0034fee <_dtoa_r+0xa8e>
c00356f4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00356f7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00356fa:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00356fd:	83 fb 39             	cmp    $0x39,%ebx
c0035700:	74 d3                	je     c00356d5 <_dtoa_r+0x1175>
c0035702:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035705:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0035708:	83 c0 31             	add    $0x31,%eax
c003570b:	85 c9                	test   %ecx,%ecx
c003570d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035710:	0f 4e c3             	cmovle %ebx,%eax
c0035713:	89 cb                	mov    %ecx,%ebx
c0035715:	e9 c1 fe ff ff       	jmp    c00355db <_dtoa_r+0x107b>
c003571a:	0f 85 b2 fe ff ff    	jne    c00355d2 <_dtoa_r+0x1072>
c0035720:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035724:	0f 84 a8 fe ff ff    	je     c00355d2 <_dtoa_r+0x1072>
c003572a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035730:	e9 8a fe ff ff       	jmp    c00355bf <_dtoa_r+0x105f>
c0035735:	0f 85 c7 f3 ff ff    	jne    c0034b02 <_dtoa_r+0x5a2>
c003573b:	dd d8                	fstp   %st(0)
c003573d:	dd d8                	fstp   %st(0)
c003573f:	90                   	nop
c0035740:	e9 65 fd ff ff       	jmp    c00354aa <_dtoa_r+0xf4a>
c0035745:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035748:	e9 dd f5 ff ff       	jmp    c0034d2a <_dtoa_r+0x7ca>
c003574d:	8d 76 00             	lea    0x0(%esi),%esi
c0035750:	0f 84 7a f5 ff ff    	je     c0034cd0 <_dtoa_r+0x770>
c0035756:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003575b:	29 d0                	sub    %edx,%eax
c003575d:	e9 ab f8 ff ff       	jmp    c003500d <_dtoa_r+0xaad>
c0035762:	b8 01 00 00 00       	mov    $0x1,%eax
c0035767:	e9 d9 ef ff ff       	jmp    c0034745 <_dtoa_r+0x1e5>
c003576c:	31 d2                	xor    %edx,%edx
c003576e:	e9 36 f1 ff ff       	jmp    c00348a9 <_dtoa_r+0x349>
c0035773:	66 90                	xchg   %ax,%ax
c0035775:	66 90                	xchg   %ax,%ax
c0035777:	66 90                	xchg   %ax,%ax
c0035779:	66 90                	xchg   %ax,%ax
c003577b:	66 90                	xchg   %ax,%ax
c003577d:	66 90                	xchg   %ax,%ax
c003577f:	90                   	nop

c0035780 <_setlocale_r>:
c0035780:	55                   	push   %ebp
c0035781:	89 e5                	mov    %esp,%ebp
c0035783:	53                   	push   %ebx
c0035784:	83 ec 14             	sub    $0x14,%esp
c0035787:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003578a:	85 db                	test   %ebx,%ebx
c003578c:	74 14                	je     c00357a2 <_setlocale_r+0x22>
c003578e:	c7 44 24 04 b8 93 03 	movl   $0xc00393b8,0x4(%esp)
c0035795:	c0 
c0035796:	89 1c 24             	mov    %ebx,(%esp)
c0035799:	e8 a2 cb ff ff       	call   c0032340 <strcmp>
c003579e:	85 c0                	test   %eax,%eax
c00357a0:	75 0e                	jne    c00357b0 <_setlocale_r+0x30>
c00357a2:	83 c4 14             	add    $0x14,%esp
c00357a5:	b8 b0 91 03 c0       	mov    $0xc00391b0,%eax
c00357aa:	5b                   	pop    %ebx
c00357ab:	5d                   	pop    %ebp
c00357ac:	c3                   	ret    
c00357ad:	8d 76 00             	lea    0x0(%esi),%esi
c00357b0:	c7 44 24 04 b0 91 03 	movl   $0xc00391b0,0x4(%esp)
c00357b7:	c0 
c00357b8:	89 1c 24             	mov    %ebx,(%esp)
c00357bb:	e8 80 cb ff ff       	call   c0032340 <strcmp>
c00357c0:	85 c0                	test   %eax,%eax
c00357c2:	74 de                	je     c00357a2 <_setlocale_r+0x22>
c00357c4:	89 1c 24             	mov    %ebx,(%esp)
c00357c7:	c7 44 24 04 ea 91 03 	movl   $0xc00391ea,0x4(%esp)
c00357ce:	c0 
c00357cf:	e8 6c cb ff ff       	call   c0032340 <strcmp>
c00357d4:	89 c2                	mov    %eax,%edx
c00357d6:	31 c0                	xor    %eax,%eax
c00357d8:	85 d2                	test   %edx,%edx
c00357da:	ba b0 91 03 c0       	mov    $0xc00391b0,%edx
c00357df:	0f 44 c2             	cmove  %edx,%eax
c00357e2:	83 c4 14             	add    $0x14,%esp
c00357e5:	5b                   	pop    %ebx
c00357e6:	5d                   	pop    %ebp
c00357e7:	c3                   	ret    
c00357e8:	90                   	nop
c00357e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00357f0 <__locale_charset>:
c00357f0:	55                   	push   %ebp
c00357f1:	b8 c0 c4 03 c0       	mov    $0xc003c4c0,%eax
c00357f6:	89 e5                	mov    %esp,%ebp
c00357f8:	5d                   	pop    %ebp
c00357f9:	c3                   	ret    
c00357fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035800 <__locale_mb_cur_max>:
c0035800:	55                   	push   %ebp
c0035801:	a1 18 c5 03 c0       	mov    0xc003c518,%eax
c0035806:	89 e5                	mov    %esp,%ebp
c0035808:	5d                   	pop    %ebp
c0035809:	c3                   	ret    
c003580a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035810 <__locale_msgcharset>:
c0035810:	55                   	push   %ebp
c0035811:	b8 a0 c4 03 c0       	mov    $0xc003c4a0,%eax
c0035816:	89 e5                	mov    %esp,%ebp
c0035818:	5d                   	pop    %ebp
c0035819:	c3                   	ret    
c003581a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035820 <__locale_cjk_lang>:
c0035820:	55                   	push   %ebp
c0035821:	31 c0                	xor    %eax,%eax
c0035823:	89 e5                	mov    %esp,%ebp
c0035825:	5d                   	pop    %ebp
c0035826:	c3                   	ret    
c0035827:	89 f6                	mov    %esi,%esi
c0035829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035830 <_localeconv_r>:
c0035830:	55                   	push   %ebp
c0035831:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035836:	89 e5                	mov    %esp,%ebp
c0035838:	5d                   	pop    %ebp
c0035839:	c3                   	ret    
c003583a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035840 <setlocale>:
c0035840:	55                   	push   %ebp
c0035841:	89 e5                	mov    %esp,%ebp
c0035843:	83 ec 18             	sub    $0x18,%esp
c0035846:	e8 35 cc ff ff       	call   c0032480 <__getreent>
c003584b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003584e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035852:	8b 55 08             	mov    0x8(%ebp),%edx
c0035855:	89 04 24             	mov    %eax,(%esp)
c0035858:	89 54 24 04          	mov    %edx,0x4(%esp)
c003585c:	e8 1f ff ff ff       	call   c0035780 <_setlocale_r>
c0035861:	c9                   	leave  
c0035862:	c3                   	ret    
c0035863:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035869:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035870 <localeconv>:
c0035870:	55                   	push   %ebp
c0035871:	89 e5                	mov    %esp,%ebp
c0035873:	83 ec 08             	sub    $0x8,%esp
c0035876:	e8 05 cc ff ff       	call   c0032480 <__getreent>
c003587b:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035880:	c9                   	leave  
c0035881:	c3                   	ret    
c0035882:	66 90                	xchg   %ax,%ax
c0035884:	66 90                	xchg   %ax,%ax
c0035886:	66 90                	xchg   %ax,%ax
c0035888:	66 90                	xchg   %ax,%ax
c003588a:	66 90                	xchg   %ax,%ax
c003588c:	66 90                	xchg   %ax,%ax
c003588e:	66 90                	xchg   %ax,%ax

c0035890 <_malloc_r>:
c0035890:	55                   	push   %ebp
c0035891:	89 e5                	mov    %esp,%ebp
c0035893:	57                   	push   %edi
c0035894:	56                   	push   %esi
c0035895:	53                   	push   %ebx
c0035896:	83 ec 2c             	sub    $0x2c,%esp
c0035899:	8b 45 0c             	mov    0xc(%ebp),%eax
c003589c:	8d 50 0b             	lea    0xb(%eax),%edx
c003589f:	83 fa 16             	cmp    $0x16,%edx
c00358a2:	76 6c                	jbe    c0035910 <_malloc_r+0x80>
c00358a4:	89 d7                	mov    %edx,%edi
c00358a6:	83 e7 f8             	and    $0xfffffff8,%edi
c00358a9:	89 fe                	mov    %edi,%esi
c00358ab:	c1 ee 1f             	shr    $0x1f,%esi
c00358ae:	39 c7                	cmp    %eax,%edi
c00358b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00358b3:	89 f2                	mov    %esi,%edx
c00358b5:	72 67                	jb     c003591e <_malloc_r+0x8e>
c00358b7:	84 d2                	test   %dl,%dl
c00358b9:	75 63                	jne    c003591e <_malloc_r+0x8e>
c00358bb:	89 04 24             	mov    %eax,(%esp)
c00358be:	e8 ad 07 00 00       	call   c0036070 <__malloc_lock>
c00358c3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c00358c9:	77 65                	ja     c0035930 <_malloc_r+0xa0>
c00358cb:	89 fa                	mov    %edi,%edx
c00358cd:	c1 ea 03             	shr    $0x3,%edx
c00358d0:	8d 04 d5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%edx,8),%eax
c00358d7:	8b 58 0c             	mov    0xc(%eax),%ebx
c00358da:	39 c3                	cmp    %eax,%ebx
c00358dc:	0f 84 3e 05 00 00    	je     c0035e20 <_malloc_r+0x590>
c00358e2:	8b 43 04             	mov    0x4(%ebx),%eax
c00358e5:	83 e0 fc             	and    $0xfffffffc,%eax
c00358e8:	8b 53 0c             	mov    0xc(%ebx),%edx
c00358eb:	8b 4b 08             	mov    0x8(%ebx),%ecx
c00358ee:	89 51 0c             	mov    %edx,0xc(%ecx)
c00358f1:	89 4a 08             	mov    %ecx,0x8(%edx)
c00358f4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c00358f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00358fc:	89 04 24             	mov    %eax,(%esp)
c00358ff:	e8 7c 07 00 00       	call   c0036080 <__malloc_unlock>
c0035904:	8d 43 08             	lea    0x8(%ebx),%eax
c0035907:	83 c4 2c             	add    $0x2c,%esp
c003590a:	5b                   	pop    %ebx
c003590b:	5e                   	pop    %esi
c003590c:	5f                   	pop    %edi
c003590d:	5d                   	pop    %ebp
c003590e:	c3                   	ret    
c003590f:	90                   	nop
c0035910:	bf 10 00 00 00       	mov    $0x10,%edi
c0035915:	31 d2                	xor    %edx,%edx
c0035917:	39 c7                	cmp    %eax,%edi
c0035919:	8b 45 08             	mov    0x8(%ebp),%eax
c003591c:	73 99                	jae    c00358b7 <_malloc_r+0x27>
c003591e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035924:	83 c4 2c             	add    $0x2c,%esp
c0035927:	31 c0                	xor    %eax,%eax
c0035929:	5b                   	pop    %ebx
c003592a:	5e                   	pop    %esi
c003592b:	5f                   	pop    %edi
c003592c:	5d                   	pop    %ebp
c003592d:	c3                   	ret    
c003592e:	66 90                	xchg   %ax,%ax
c0035930:	89 fe                	mov    %edi,%esi
c0035932:	c1 ee 09             	shr    $0x9,%esi
c0035935:	85 f6                	test   %esi,%esi
c0035937:	0f 84 ab 01 00 00    	je     c0035ae8 <_malloc_r+0x258>
c003593d:	83 fe 04             	cmp    $0x4,%esi
c0035940:	0f 87 8a 03 00 00    	ja     c0035cd0 <_malloc_r+0x440>
c0035946:	89 fe                	mov    %edi,%esi
c0035948:	c1 ee 06             	shr    $0x6,%esi
c003594b:	83 c6 38             	add    $0x38,%esi
c003594e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035951:	8d 0c 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%ecx
c0035958:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003595b:	39 d9                	cmp    %ebx,%ecx
c003595d:	75 18                	jne    c0035977 <_malloc_r+0xe7>
c003595f:	eb 28                	jmp    c0035989 <_malloc_r+0xf9>
c0035961:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035968:	85 d2                	test   %edx,%edx
c003596a:	0f 89 78 ff ff ff    	jns    c00358e8 <_malloc_r+0x58>
c0035970:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035973:	39 d9                	cmp    %ebx,%ecx
c0035975:	74 12                	je     c0035989 <_malloc_r+0xf9>
c0035977:	8b 43 04             	mov    0x4(%ebx),%eax
c003597a:	83 e0 fc             	and    $0xfffffffc,%eax
c003597d:	89 c2                	mov    %eax,%edx
c003597f:	29 fa                	sub    %edi,%edx
c0035981:	83 fa 0f             	cmp    $0xf,%edx
c0035984:	7e e2                	jle    c0035968 <_malloc_r+0xd8>
c0035986:	83 ee 01             	sub    $0x1,%esi
c0035989:	8d 46 01             	lea    0x1(%esi),%eax
c003598c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003598f:	8b 1d 50 c5 03 c0    	mov    0xc003c550,%ebx
c0035995:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c003599a:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c00359a0:	74 6b                	je     c0035a0d <_malloc_r+0x17d>
c00359a2:	8b 73 04             	mov    0x4(%ebx),%esi
c00359a5:	83 e6 fc             	and    $0xfffffffc,%esi
c00359a8:	89 f0                	mov    %esi,%eax
c00359aa:	29 f8                	sub    %edi,%eax
c00359ac:	83 f8 0f             	cmp    $0xf,%eax
c00359af:	0f 8f a3 03 00 00    	jg     c0035d58 <_malloc_r+0x4c8>
c00359b5:	85 c0                	test   %eax,%eax
c00359b7:	c7 05 54 c5 03 c0 48 	movl   $0xc003c548,0xc003c554
c00359be:	c5 03 c0 
c00359c1:	c7 05 50 c5 03 c0 48 	movl   $0xc003c548,0xc003c550
c00359c8:	c5 03 c0 
c00359cb:	0f 89 27 01 00 00    	jns    c0035af8 <_malloc_r+0x268>
c00359d1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c00359d7:	0f 87 1b 03 00 00    	ja     c0035cf8 <_malloc_r+0x468>
c00359dd:	c1 ee 03             	shr    $0x3,%esi
c00359e0:	b8 01 00 00 00       	mov    $0x1,%eax
c00359e5:	89 f1                	mov    %esi,%ecx
c00359e7:	8d 14 f5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%esi,8),%edx
c00359ee:	c1 f9 02             	sar    $0x2,%ecx
c00359f1:	d3 e0                	shl    %cl,%eax
c00359f3:	8b 4a 08             	mov    0x8(%edx),%ecx
c00359f6:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c00359fc:	89 53 0c             	mov    %edx,0xc(%ebx)
c00359ff:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0035a02:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035a07:	89 5a 08             	mov    %ebx,0x8(%edx)
c0035a0a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c0035a0d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035a10:	be 01 00 00 00       	mov    $0x1,%esi
c0035a15:	c1 f9 02             	sar    $0x2,%ecx
c0035a18:	d3 e6                	shl    %cl,%esi
c0035a1a:	39 c6                	cmp    %eax,%esi
c0035a1c:	0f 87 f6 00 00 00    	ja     c0035b18 <_malloc_r+0x288>
c0035a22:	85 f0                	test   %esi,%eax
c0035a24:	0f 85 76 03 00 00    	jne    c0035da0 <_malloc_r+0x510>
c0035a2a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0035a2d:	01 f6                	add    %esi,%esi
c0035a2f:	83 e2 fc             	and    $0xfffffffc,%edx
c0035a32:	85 f0                	test   %esi,%eax
c0035a34:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035a37:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035a3a:	0f 85 60 03 00 00    	jne    c0035da0 <_malloc_r+0x510>
c0035a40:	89 ca                	mov    %ecx,%edx
c0035a42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035a48:	01 f6                	add    %esi,%esi
c0035a4a:	83 c2 04             	add    $0x4,%edx
c0035a4d:	85 f0                	test   %esi,%eax
c0035a4f:	74 f7                	je     c0035a48 <_malloc_r+0x1b8>
c0035a51:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035a54:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035a57:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035a5a:	8d 34 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%esi
c0035a61:	89 f1                	mov    %esi,%ecx
c0035a63:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035a66:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035a69:	39 d9                	cmp    %ebx,%ecx
c0035a6b:	75 1e                	jne    c0035a8b <_malloc_r+0x1fb>
c0035a6d:	e9 36 03 00 00       	jmp    c0035da8 <_malloc_r+0x518>
c0035a72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035a78:	85 d2                	test   %edx,%edx
c0035a7a:	0f 89 c0 03 00 00    	jns    c0035e40 <_malloc_r+0x5b0>
c0035a80:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035a83:	39 d9                	cmp    %ebx,%ecx
c0035a85:	0f 84 1d 03 00 00    	je     c0035da8 <_malloc_r+0x518>
c0035a8b:	8b 43 04             	mov    0x4(%ebx),%eax
c0035a8e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035a91:	89 c2                	mov    %eax,%edx
c0035a93:	29 fa                	sub    %edi,%edx
c0035a95:	83 fa 0f             	cmp    $0xf,%edx
c0035a98:	7e de                	jle    c0035a78 <_malloc_r+0x1e8>
c0035a9a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c0035a9d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0035aa0:	83 cf 01             	or     $0x1,%edi
c0035aa3:	8b 73 08             	mov    0x8(%ebx),%esi
c0035aa6:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035aa9:	89 4e 0c             	mov    %ecx,0xc(%esi)
c0035aac:	89 71 08             	mov    %esi,0x8(%ecx)
c0035aaf:	89 d1                	mov    %edx,%ecx
c0035ab1:	83 c9 01             	or     $0x1,%ecx
c0035ab4:	a3 54 c5 03 c0       	mov    %eax,0xc003c554
c0035ab9:	a3 50 c5 03 c0       	mov    %eax,0xc003c550
c0035abe:	c7 40 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%eax)
c0035ac5:	c7 40 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%eax)
c0035acc:	89 48 04             	mov    %ecx,0x4(%eax)
c0035acf:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0035ad2:	8b 45 08             	mov    0x8(%ebp),%eax
c0035ad5:	89 04 24             	mov    %eax,(%esp)
c0035ad8:	e8 a3 05 00 00       	call   c0036080 <__malloc_unlock>
c0035add:	8d 43 08             	lea    0x8(%ebx),%eax
c0035ae0:	e9 22 fe ff ff       	jmp    c0035907 <_malloc_r+0x77>
c0035ae5:	8d 76 00             	lea    0x0(%esi),%esi
c0035ae8:	b8 7e 00 00 00       	mov    $0x7e,%eax
c0035aed:	be 3f 00 00 00       	mov    $0x3f,%esi
c0035af2:	e9 5a fe ff ff       	jmp    c0035951 <_malloc_r+0xc1>
c0035af7:	90                   	nop
c0035af8:	8b 45 08             	mov    0x8(%ebp),%eax
c0035afb:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0035b00:	89 04 24             	mov    %eax,(%esp)
c0035b03:	e8 78 05 00 00       	call   c0036080 <__malloc_unlock>
c0035b08:	83 c4 2c             	add    $0x2c,%esp
c0035b0b:	8d 43 08             	lea    0x8(%ebx),%eax
c0035b0e:	5b                   	pop    %ebx
c0035b0f:	5e                   	pop    %esi
c0035b10:	5f                   	pop    %edi
c0035b11:	5d                   	pop    %ebp
c0035b12:	c3                   	ret    
c0035b13:	90                   	nop
c0035b14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035b18:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c0035b1e:	8b 73 04             	mov    0x4(%ebx),%esi
c0035b21:	83 e6 fc             	and    $0xfffffffc,%esi
c0035b24:	39 f7                	cmp    %esi,%edi
c0035b26:	77 0d                	ja     c0035b35 <_malloc_r+0x2a5>
c0035b28:	89 f0                	mov    %esi,%eax
c0035b2a:	29 f8                	sub    %edi,%eax
c0035b2c:	83 f8 0f             	cmp    $0xf,%eax
c0035b2f:	0f 8f 6b 01 00 00    	jg     c0035ca0 <_malloc_r+0x410>
c0035b35:	8b 0d 50 f0 06 c0    	mov    0xc006f050,%ecx
c0035b3b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c0035b3e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035b41:	01 f9                	add    %edi,%ecx
c0035b43:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035b49:	83 c1 10             	add    $0x10,%ecx
c0035b4c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035b51:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035b58:	0f 44 c1             	cmove  %ecx,%eax
c0035b5b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035b5e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035b62:	8b 45 08             	mov    0x8(%ebp),%eax
c0035b65:	89 04 24             	mov    %eax,(%esp)
c0035b68:	e8 03 13 00 00       	call   c0036e70 <_sbrk_r>
c0035b6d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035b70:	89 c1                	mov    %eax,%ecx
c0035b72:	0f 84 17 03 00 00    	je     c0035e8f <_malloc_r+0x5ff>
c0035b78:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035b7b:	0f 87 02 03 00 00    	ja     c0035e83 <_malloc_r+0x5f3>
c0035b81:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035b84:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c0035b8a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c0035b8d:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c0035b93:	0f 84 a9 03 00 00    	je     c0035f42 <_malloc_r+0x6b2>
c0035b99:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035ba0:	0f 84 ca 03 00 00    	je     c0035f70 <_malloc_r+0x6e0>
c0035ba6:	89 c8                	mov    %ecx,%eax
c0035ba8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c0035bab:	01 d0                	add    %edx,%eax
c0035bad:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0035bb2:	89 c8                	mov    %ecx,%eax
c0035bb4:	ba 00 10 00 00       	mov    $0x1000,%edx
c0035bb9:	83 e0 07             	and    $0x7,%eax
c0035bbc:	74 0c                	je     c0035bca <_malloc_r+0x33a>
c0035bbe:	29 c1                	sub    %eax,%ecx
c0035bc0:	ba 08 10 00 00       	mov    $0x1008,%edx
c0035bc5:	8d 49 08             	lea    0x8(%ecx),%ecx
c0035bc8:	29 c2                	sub    %eax,%edx
c0035bca:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035bcd:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035bd0:	01 c8                	add    %ecx,%eax
c0035bd2:	25 ff 0f 00 00       	and    $0xfff,%eax
c0035bd7:	29 c2                	sub    %eax,%edx
c0035bd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0035bdc:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035be0:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0035be3:	89 04 24             	mov    %eax,(%esp)
c0035be6:	e8 85 12 00 00       	call   c0036e70 <_sbrk_r>
c0035beb:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035bee:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035bf1:	0f 84 6d 03 00 00    	je     c0035f64 <_malloc_r+0x6d4>
c0035bf7:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035bfa:	29 c8                	sub    %ecx,%eax
c0035bfc:	01 d0                	add    %edx,%eax
c0035bfe:	83 c8 01             	or     $0x1,%eax
c0035c01:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c0035c07:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c0035c0d:	89 0d 48 c5 03 c0    	mov    %ecx,0xc003c548
c0035c13:	89 41 04             	mov    %eax,0x4(%ecx)
c0035c16:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c0035c1c:	0f 84 f2 02 00 00    	je     c0035f14 <_malloc_r+0x684>
c0035c22:	83 fe 0f             	cmp    $0xf,%esi
c0035c25:	0f 86 8d 02 00 00    	jbe    c0035eb8 <_malloc_r+0x628>
c0035c2b:	8b 43 04             	mov    0x4(%ebx),%eax
c0035c2e:	83 ee 0c             	sub    $0xc,%esi
c0035c31:	83 e6 f8             	and    $0xfffffff8,%esi
c0035c34:	83 e0 01             	and    $0x1,%eax
c0035c37:	09 f0                	or     %esi,%eax
c0035c39:	83 fe 0f             	cmp    $0xf,%esi
c0035c3c:	89 43 04             	mov    %eax,0x4(%ebx)
c0035c3f:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035c44:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c0035c4b:	00 
c0035c4c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035c53:	00 
c0035c54:	0f 87 a2 02 00 00    	ja     c0035efc <_malloc_r+0x66c>
c0035c5a:	3b 15 4c f0 06 c0    	cmp    0xc006f04c,%edx
c0035c60:	76 06                	jbe    c0035c68 <_malloc_r+0x3d8>
c0035c62:	89 15 4c f0 06 c0    	mov    %edx,0xc006f04c
c0035c68:	3b 15 48 f0 06 c0    	cmp    0xc006f048,%edx
c0035c6e:	76 06                	jbe    c0035c76 <_malloc_r+0x3e6>
c0035c70:	89 15 48 f0 06 c0    	mov    %edx,0xc006f048
c0035c76:	8b 50 04             	mov    0x4(%eax),%edx
c0035c79:	89 c3                	mov    %eax,%ebx
c0035c7b:	83 e2 fc             	and    $0xfffffffc,%edx
c0035c7e:	89 d0                	mov    %edx,%eax
c0035c80:	29 f8                	sub    %edi,%eax
c0035c82:	39 d7                	cmp    %edx,%edi
c0035c84:	77 05                	ja     c0035c8b <_malloc_r+0x3fb>
c0035c86:	83 f8 0f             	cmp    $0xf,%eax
c0035c89:	7f 15                	jg     c0035ca0 <_malloc_r+0x410>
c0035c8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0035c8e:	89 04 24             	mov    %eax,(%esp)
c0035c91:	e8 ea 03 00 00       	call   c0036080 <__malloc_unlock>
c0035c96:	31 c0                	xor    %eax,%eax
c0035c98:	e9 6a fc ff ff       	jmp    c0035907 <_malloc_r+0x77>
c0035c9d:	8d 76 00             	lea    0x0(%esi),%esi
c0035ca0:	89 fa                	mov    %edi,%edx
c0035ca2:	83 c8 01             	or     $0x1,%eax
c0035ca5:	83 ca 01             	or     $0x1,%edx
c0035ca8:	89 53 04             	mov    %edx,0x4(%ebx)
c0035cab:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c0035cae:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c0035cb4:	89 42 04             	mov    %eax,0x4(%edx)
c0035cb7:	8b 45 08             	mov    0x8(%ebp),%eax
c0035cba:	89 04 24             	mov    %eax,(%esp)
c0035cbd:	e8 be 03 00 00       	call   c0036080 <__malloc_unlock>
c0035cc2:	83 c4 2c             	add    $0x2c,%esp
c0035cc5:	8d 43 08             	lea    0x8(%ebx),%eax
c0035cc8:	5b                   	pop    %ebx
c0035cc9:	5e                   	pop    %esi
c0035cca:	5f                   	pop    %edi
c0035ccb:	5d                   	pop    %ebp
c0035ccc:	c3                   	ret    
c0035ccd:	8d 76 00             	lea    0x0(%esi),%esi
c0035cd0:	83 fe 14             	cmp    $0x14,%esi
c0035cd3:	0f 86 8f 01 00 00    	jbe    c0035e68 <_malloc_r+0x5d8>
c0035cd9:	83 fe 54             	cmp    $0x54,%esi
c0035cdc:	0f 87 be 01 00 00    	ja     c0035ea0 <_malloc_r+0x610>
c0035ce2:	89 fe                	mov    %edi,%esi
c0035ce4:	c1 ee 0c             	shr    $0xc,%esi
c0035ce7:	83 c6 6e             	add    $0x6e,%esi
c0035cea:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035ced:	e9 5f fc ff ff       	jmp    c0035951 <_malloc_r+0xc1>
c0035cf2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035cf8:	89 f1                	mov    %esi,%ecx
c0035cfa:	c1 e9 09             	shr    $0x9,%ecx
c0035cfd:	83 f9 04             	cmp    $0x4,%ecx
c0035d00:	0f 86 6d 01 00 00    	jbe    c0035e73 <_malloc_r+0x5e3>
c0035d06:	83 f9 14             	cmp    $0x14,%ecx
c0035d09:	0f 87 0f 02 00 00    	ja     c0035f1e <_malloc_r+0x68e>
c0035d0f:	83 c1 5b             	add    $0x5b,%ecx
c0035d12:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035d15:	8d 04 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%eax
c0035d1c:	8b 50 08             	mov    0x8(%eax),%edx
c0035d1f:	39 c2                	cmp    %eax,%edx
c0035d21:	0f 84 a1 01 00 00    	je     c0035ec8 <_malloc_r+0x638>
c0035d27:	90                   	nop
c0035d28:	8b 4a 04             	mov    0x4(%edx),%ecx
c0035d2b:	83 e1 fc             	and    $0xfffffffc,%ecx
c0035d2e:	39 ce                	cmp    %ecx,%esi
c0035d30:	73 07                	jae    c0035d39 <_malloc_r+0x4a9>
c0035d32:	8b 52 08             	mov    0x8(%edx),%edx
c0035d35:	39 d0                	cmp    %edx,%eax
c0035d37:	75 ef                	jne    c0035d28 <_malloc_r+0x498>
c0035d39:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0035d3c:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035d41:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035d44:	89 53 08             	mov    %edx,0x8(%ebx)
c0035d47:	89 59 08             	mov    %ebx,0x8(%ecx)
c0035d4a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c0035d4d:	e9 bb fc ff ff       	jmp    c0035a0d <_malloc_r+0x17d>
c0035d52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035d58:	89 c1                	mov    %eax,%ecx
c0035d5a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c0035d5d:	83 c9 01             	or     $0x1,%ecx
c0035d60:	83 cf 01             	or     $0x1,%edi
c0035d63:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035d66:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c0035d6c:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0035d72:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0035d79:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c0035d80:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035d83:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035d86:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d89:	89 04 24             	mov    %eax,(%esp)
c0035d8c:	e8 ef 02 00 00       	call   c0036080 <__malloc_unlock>
c0035d91:	8d 43 08             	lea    0x8(%ebx),%eax
c0035d94:	e9 6e fb ff ff       	jmp    c0035907 <_malloc_r+0x77>
c0035d99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035da0:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035da3:	e9 af fc ff ff       	jmp    c0035a57 <_malloc_r+0x1c7>
c0035da8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c0035dac:	83 c1 08             	add    $0x8,%ecx
c0035daf:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0035db3:	0f 85 ad fc ff ff    	jne    c0035a66 <_malloc_r+0x1d6>
c0035db9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035dbc:	eb 12                	jmp    c0035dd0 <_malloc_r+0x540>
c0035dbe:	66 90                	xchg   %ax,%ax
c0035dc0:	8d 56 f8             	lea    -0x8(%esi),%edx
c0035dc3:	8b 36                	mov    (%esi),%esi
c0035dc5:	83 e8 01             	sub    $0x1,%eax
c0035dc8:	39 d6                	cmp    %edx,%esi
c0035dca:	0f 85 ea 01 00 00    	jne    c0035fba <_malloc_r+0x72a>
c0035dd0:	a8 03                	test   $0x3,%al
c0035dd2:	75 ec                	jne    c0035dc0 <_malloc_r+0x530>
c0035dd4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0035dd7:	f7 d0                	not    %eax
c0035dd9:	23 05 44 c5 03 c0    	and    0xc003c544,%eax
c0035ddf:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035de4:	d1 65 dc             	shll   -0x24(%ebp)
c0035de7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0035dea:	39 c2                	cmp    %eax,%edx
c0035dec:	0f 87 26 fd ff ff    	ja     c0035b18 <_malloc_r+0x288>
c0035df2:	85 d2                	test   %edx,%edx
c0035df4:	0f 84 1e fd ff ff    	je     c0035b18 <_malloc_r+0x288>
c0035dfa:	85 c2                	test   %eax,%edx
c0035dfc:	0f 85 c2 01 00 00    	jne    c0035fc4 <_malloc_r+0x734>
c0035e02:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0035e05:	89 f1                	mov    %esi,%ecx
c0035e07:	01 d2                	add    %edx,%edx
c0035e09:	83 c1 04             	add    $0x4,%ecx
c0035e0c:	85 d0                	test   %edx,%eax
c0035e0e:	74 f7                	je     c0035e07 <_malloc_r+0x577>
c0035e10:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035e13:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0035e16:	e9 3c fc ff ff       	jmp    c0035a57 <_malloc_r+0x1c7>
c0035e1b:	90                   	nop
c0035e1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035e20:	8d 43 08             	lea    0x8(%ebx),%eax
c0035e23:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035e26:	39 d8                	cmp    %ebx,%eax
c0035e28:	0f 85 b4 fa ff ff    	jne    c00358e2 <_malloc_r+0x52>
c0035e2e:	8d 42 02             	lea    0x2(%edx),%eax
c0035e31:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035e34:	e9 56 fb ff ff       	jmp    c003598f <_malloc_r+0xff>
c0035e39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035e40:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035e45:	8b 53 08             	mov    0x8(%ebx),%edx
c0035e48:	8b 43 0c             	mov    0xc(%ebx),%eax
c0035e4b:	89 42 0c             	mov    %eax,0xc(%edx)
c0035e4e:	89 50 08             	mov    %edx,0x8(%eax)
c0035e51:	8b 45 08             	mov    0x8(%ebp),%eax
c0035e54:	89 04 24             	mov    %eax,(%esp)
c0035e57:	e8 24 02 00 00       	call   c0036080 <__malloc_unlock>
c0035e5c:	8d 43 08             	lea    0x8(%ebx),%eax
c0035e5f:	e9 a3 fa ff ff       	jmp    c0035907 <_malloc_r+0x77>
c0035e64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035e68:	83 c6 5b             	add    $0x5b,%esi
c0035e6b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035e6e:	e9 de fa ff ff       	jmp    c0035951 <_malloc_r+0xc1>
c0035e73:	89 f1                	mov    %esi,%ecx
c0035e75:	c1 e9 06             	shr    $0x6,%ecx
c0035e78:	83 c1 38             	add    $0x38,%ecx
c0035e7b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035e7e:	e9 92 fe ff ff       	jmp    c0035d15 <_malloc_r+0x485>
c0035e83:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c0035e89:	0f 84 f2 fc ff ff    	je     c0035b81 <_malloc_r+0x2f1>
c0035e8f:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c0035e95:	8b 53 04             	mov    0x4(%ebx),%edx
c0035e98:	83 e2 fc             	and    $0xfffffffc,%edx
c0035e9b:	e9 de fd ff ff       	jmp    c0035c7e <_malloc_r+0x3ee>
c0035ea0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0035ea6:	77 3c                	ja     c0035ee4 <_malloc_r+0x654>
c0035ea8:	89 fe                	mov    %edi,%esi
c0035eaa:	c1 ee 0f             	shr    $0xf,%esi
c0035ead:	83 c6 77             	add    $0x77,%esi
c0035eb0:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035eb3:	e9 99 fa ff ff       	jmp    c0035951 <_malloc_r+0xc1>
c0035eb8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c0035ebf:	89 cb                	mov    %ecx,%ebx
c0035ec1:	31 d2                	xor    %edx,%edx
c0035ec3:	e9 b6 fd ff ff       	jmp    c0035c7e <_malloc_r+0x3ee>
c0035ec8:	c1 f9 02             	sar    $0x2,%ecx
c0035ecb:	b8 01 00 00 00       	mov    $0x1,%eax
c0035ed0:	d3 e0                	shl    %cl,%eax
c0035ed2:	89 d1                	mov    %edx,%ecx
c0035ed4:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c0035eda:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c0035edf:	e9 5d fe ff ff       	jmp    c0035d41 <_malloc_r+0x4b1>
c0035ee4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c0035eea:	77 47                	ja     c0035f33 <_malloc_r+0x6a3>
c0035eec:	89 fe                	mov    %edi,%esi
c0035eee:	c1 ee 12             	shr    $0x12,%esi
c0035ef1:	83 c6 7c             	add    $0x7c,%esi
c0035ef4:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035ef7:	e9 55 fa ff ff       	jmp    c0035951 <_malloc_r+0xc1>
c0035efc:	8b 45 08             	mov    0x8(%ebp),%eax
c0035eff:	83 c3 08             	add    $0x8,%ebx
c0035f02:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035f06:	89 04 24             	mov    %eax,(%esp)
c0035f09:	e8 52 22 00 00       	call   c0038160 <_free_r>
c0035f0e:	8b 15 20 f0 06 c0    	mov    0xc006f020,%edx
c0035f14:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035f19:	e9 3c fd ff ff       	jmp    c0035c5a <_malloc_r+0x3ca>
c0035f1e:	83 f9 54             	cmp    $0x54,%ecx
c0035f21:	77 58                	ja     c0035f7b <_malloc_r+0x6eb>
c0035f23:	89 f1                	mov    %esi,%ecx
c0035f25:	c1 e9 0c             	shr    $0xc,%ecx
c0035f28:	83 c1 6e             	add    $0x6e,%ecx
c0035f2b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035f2e:	e9 e2 fd ff ff       	jmp    c0035d15 <_malloc_r+0x485>
c0035f33:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035f38:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035f3d:	e9 0f fa ff ff       	jmp    c0035951 <_malloc_r+0xc1>
c0035f42:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035f49:	0f 85 4a fc ff ff    	jne    c0035b99 <_malloc_r+0x309>
c0035f4f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035f52:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035f57:	01 f1                	add    %esi,%ecx
c0035f59:	83 c9 01             	or     $0x1,%ecx
c0035f5c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035f5f:	e9 f6 fc ff ff       	jmp    c0035c5a <_malloc_r+0x3ca>
c0035f64:	b8 01 00 00 00       	mov    $0x1,%eax
c0035f69:	31 d2                	xor    %edx,%edx
c0035f6b:	e9 91 fc ff ff       	jmp    c0035c01 <_malloc_r+0x371>
c0035f70:	89 0d 20 c5 03 c0    	mov    %ecx,0xc003c520
c0035f76:	e9 37 fc ff ff       	jmp    c0035bb2 <_malloc_r+0x322>
c0035f7b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035f81:	77 10                	ja     c0035f93 <_malloc_r+0x703>
c0035f83:	89 f1                	mov    %esi,%ecx
c0035f85:	c1 e9 0f             	shr    $0xf,%ecx
c0035f88:	83 c1 77             	add    $0x77,%ecx
c0035f8b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035f8e:	e9 82 fd ff ff       	jmp    c0035d15 <_malloc_r+0x485>
c0035f93:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035f99:	77 10                	ja     c0035fab <_malloc_r+0x71b>
c0035f9b:	89 f1                	mov    %esi,%ecx
c0035f9d:	c1 e9 12             	shr    $0x12,%ecx
c0035fa0:	83 c1 7c             	add    $0x7c,%ecx
c0035fa3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035fa6:	e9 6a fd ff ff       	jmp    c0035d15 <_malloc_r+0x485>
c0035fab:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035fb0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035fb5:	e9 5b fd ff ff       	jmp    c0035d15 <_malloc_r+0x485>
c0035fba:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035fbf:	e9 20 fe ff ff       	jmp    c0035de4 <_malloc_r+0x554>
c0035fc4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035fc7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035fca:	e9 88 fa ff ff       	jmp    c0035a57 <_malloc_r+0x1c7>
c0035fcf:	90                   	nop

c0035fd0 <memchr>:
c0035fd0:	55                   	push   %ebp
c0035fd1:	89 e5                	mov    %esp,%ebp
c0035fd3:	57                   	push   %edi
c0035fd4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035fd8:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035fdb:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035fde:	31 d2                	xor    %edx,%edx
c0035fe0:	85 c9                	test   %ecx,%ecx
c0035fe2:	74 79                	je     c003605d <L20>
c0035fe4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035fea:	74 28                	je     c0036014 <L5>
c0035fec:	3a 07                	cmp    (%edi),%al
c0035fee:	74 6a                	je     c003605a <L15>
c0035ff0:	47                   	inc    %edi
c0035ff1:	49                   	dec    %ecx
c0035ff2:	74 69                	je     c003605d <L20>
c0035ff4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035ffa:	74 18                	je     c0036014 <L5>
c0035ffc:	3a 07                	cmp    (%edi),%al
c0035ffe:	74 5a                	je     c003605a <L15>
c0036000:	47                   	inc    %edi
c0036001:	49                   	dec    %ecx
c0036002:	74 59                	je     c003605d <L20>
c0036004:	f7 c7 03 00 00 00    	test   $0x3,%edi
c003600a:	74 08                	je     c0036014 <L5>
c003600c:	3a 07                	cmp    (%edi),%al
c003600e:	74 4a                	je     c003605a <L15>
c0036010:	47                   	inc    %edi
c0036011:	49                   	dec    %ecx
c0036012:	74 49                	je     c003605d <L20>

c0036014 <L5>:
c0036014:	88 c4                	mov    %al,%ah
c0036016:	89 c2                	mov    %eax,%edx
c0036018:	c1 e2 10             	shl    $0x10,%edx
c003601b:	09 d0                	or     %edx,%eax
c003601d:	53                   	push   %ebx
c003601e:	66 90                	xchg   %ax,%ax

c0036020 <L8>:
c0036020:	83 e9 04             	sub    $0x4,%ecx
c0036023:	72 1c                	jb     c0036041 <L9>
c0036025:	8b 17                	mov    (%edi),%edx
c0036027:	83 c7 04             	add    $0x4,%edi
c003602a:	31 c2                	xor    %eax,%edx
c003602c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0036032:	f7 d2                	not    %edx
c0036034:	21 d3                	and    %edx,%ebx
c0036036:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c003603c:	74 e2                	je     c0036020 <L8>
c003603e:	83 ef 04             	sub    $0x4,%edi

c0036041 <L9>:
c0036041:	5b                   	pop    %ebx
c0036042:	31 d2                	xor    %edx,%edx
c0036044:	83 c1 04             	add    $0x4,%ecx
c0036047:	74 14                	je     c003605d <L20>
c0036049:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036050 <L10>:
c0036050:	3a 07                	cmp    (%edi),%al
c0036052:	74 06                	je     c003605a <L15>
c0036054:	47                   	inc    %edi
c0036055:	49                   	dec    %ecx
c0036056:	75 f8                	jne    c0036050 <L10>
c0036058:	31 ff                	xor    %edi,%edi

c003605a <L15>:
c003605a:	4a                   	dec    %edx
c003605b:	21 fa                	and    %edi,%edx

c003605d <L20>:
c003605d:	89 d0                	mov    %edx,%eax
c003605f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036062:	5f                   	pop    %edi
c0036063:	c9                   	leave  
c0036064:	c3                   	ret    
c0036065:	66 90                	xchg   %ax,%ax
c0036067:	66 90                	xchg   %ax,%ax
c0036069:	66 90                	xchg   %ax,%ax
c003606b:	66 90                	xchg   %ax,%ax
c003606d:	66 90                	xchg   %ax,%ax
c003606f:	90                   	nop

c0036070 <__malloc_lock>:
c0036070:	55                   	push   %ebp
c0036071:	89 e5                	mov    %esp,%ebp
c0036073:	5d                   	pop    %ebp
c0036074:	c3                   	ret    
c0036075:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036079:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036080 <__malloc_unlock>:
c0036080:	55                   	push   %ebp
c0036081:	89 e5                	mov    %esp,%ebp
c0036083:	5d                   	pop    %ebp
c0036084:	c3                   	ret    
c0036085:	66 90                	xchg   %ax,%ax
c0036087:	66 90                	xchg   %ax,%ax
c0036089:	66 90                	xchg   %ax,%ax
c003608b:	66 90                	xchg   %ax,%ax
c003608d:	66 90                	xchg   %ax,%ax
c003608f:	90                   	nop

c0036090 <_Balloc>:
c0036090:	55                   	push   %ebp
c0036091:	89 e5                	mov    %esp,%ebp
c0036093:	57                   	push   %edi
c0036094:	56                   	push   %esi
c0036095:	53                   	push   %ebx
c0036096:	83 ec 1c             	sub    $0x1c,%esp
c0036099:	8b 75 08             	mov    0x8(%ebp),%esi
c003609c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003609f:	8b 46 4c             	mov    0x4c(%esi),%eax
c00360a2:	85 c0                	test   %eax,%eax
c00360a4:	74 2a                	je     c00360d0 <_Balloc+0x40>
c00360a6:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c00360a9:	8b 02                	mov    (%edx),%eax
c00360ab:	85 c0                	test   %eax,%eax
c00360ad:	74 49                	je     c00360f8 <_Balloc+0x68>
c00360af:	8b 08                	mov    (%eax),%ecx
c00360b1:	89 0a                	mov    %ecx,(%edx)
c00360b3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c00360ba:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c00360c1:	83 c4 1c             	add    $0x1c,%esp
c00360c4:	5b                   	pop    %ebx
c00360c5:	5e                   	pop    %esi
c00360c6:	5f                   	pop    %edi
c00360c7:	5d                   	pop    %ebp
c00360c8:	c3                   	ret    
c00360c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00360d0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c00360d7:	00 
c00360d8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c00360df:	00 
c00360e0:	89 34 24             	mov    %esi,(%esp)
c00360e3:	e8 c8 1e 00 00       	call   c0037fb0 <_calloc_r>
c00360e8:	85 c0                	test   %eax,%eax
c00360ea:	89 46 4c             	mov    %eax,0x4c(%esi)
c00360ed:	75 b7                	jne    c00360a6 <_Balloc+0x16>
c00360ef:	31 c0                	xor    %eax,%eax
c00360f1:	eb ce                	jmp    c00360c1 <_Balloc+0x31>
c00360f3:	90                   	nop
c00360f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00360f8:	89 d9                	mov    %ebx,%ecx
c00360fa:	bf 01 00 00 00       	mov    $0x1,%edi
c00360ff:	d3 e7                	shl    %cl,%edi
c0036101:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0036108:	89 44 24 08          	mov    %eax,0x8(%esp)
c003610c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036113:	00 
c0036114:	89 34 24             	mov    %esi,(%esp)
c0036117:	e8 94 1e 00 00       	call   c0037fb0 <_calloc_r>
c003611c:	85 c0                	test   %eax,%eax
c003611e:	74 cf                	je     c00360ef <_Balloc+0x5f>
c0036120:	89 58 04             	mov    %ebx,0x4(%eax)
c0036123:	89 78 08             	mov    %edi,0x8(%eax)
c0036126:	eb 8b                	jmp    c00360b3 <_Balloc+0x23>
c0036128:	90                   	nop
c0036129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036130 <_Bfree>:
c0036130:	55                   	push   %ebp
c0036131:	89 e5                	mov    %esp,%ebp
c0036133:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036136:	85 c0                	test   %eax,%eax
c0036138:	74 12                	je     c003614c <_Bfree+0x1c>
c003613a:	8b 55 08             	mov    0x8(%ebp),%edx
c003613d:	8b 48 04             	mov    0x4(%eax),%ecx
c0036140:	8b 52 4c             	mov    0x4c(%edx),%edx
c0036143:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0036146:	8b 0a                	mov    (%edx),%ecx
c0036148:	89 08                	mov    %ecx,(%eax)
c003614a:	89 02                	mov    %eax,(%edx)
c003614c:	5d                   	pop    %ebp
c003614d:	c3                   	ret    
c003614e:	66 90                	xchg   %ax,%ax

c0036150 <__multadd>:
c0036150:	55                   	push   %ebp
c0036151:	89 e5                	mov    %esp,%ebp
c0036153:	57                   	push   %edi
c0036154:	56                   	push   %esi
c0036155:	53                   	push   %ebx
c0036156:	83 ec 2c             	sub    $0x2c,%esp
c0036159:	8b 45 0c             	mov    0xc(%ebp),%eax
c003615c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c003615f:	8b 40 10             	mov    0x10(%eax),%eax
c0036162:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036165:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036168:	8d 78 14             	lea    0x14(%eax),%edi
c003616b:	31 c0                	xor    %eax,%eax
c003616d:	8d 76 00             	lea    0x0(%esi),%esi
c0036170:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0036173:	0f b7 d1             	movzwl %cx,%edx
c0036176:	0f af 55 10          	imul   0x10(%ebp),%edx
c003617a:	c1 e9 10             	shr    $0x10,%ecx
c003617d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0036181:	01 da                	add    %ebx,%edx
c0036183:	89 d3                	mov    %edx,%ebx
c0036185:	0f b7 d2             	movzwl %dx,%edx
c0036188:	c1 eb 10             	shr    $0x10,%ebx
c003618b:	01 d9                	add    %ebx,%ecx
c003618d:	89 ce                	mov    %ecx,%esi
c003618f:	c1 e1 10             	shl    $0x10,%ecx
c0036192:	01 d1                	add    %edx,%ecx
c0036194:	c1 ee 10             	shr    $0x10,%esi
c0036197:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c003619a:	83 c0 01             	add    $0x1,%eax
c003619d:	89 f3                	mov    %esi,%ebx
c003619f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00361a2:	7f cc                	jg     c0036170 <__multadd+0x20>
c00361a4:	85 f6                	test   %esi,%esi
c00361a6:	74 1b                	je     c00361c3 <__multadd+0x73>
c00361a8:	8b 45 0c             	mov    0xc(%ebp),%eax
c00361ab:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c00361ae:	3b 78 08             	cmp    0x8(%eax),%edi
c00361b1:	7d 1d                	jge    c00361d0 <__multadd+0x80>
c00361b3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00361b6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00361b9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c00361bd:	83 c0 01             	add    $0x1,%eax
c00361c0:	89 47 10             	mov    %eax,0x10(%edi)
c00361c3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00361c6:	83 c4 2c             	add    $0x2c,%esp
c00361c9:	5b                   	pop    %ebx
c00361ca:	5e                   	pop    %esi
c00361cb:	5f                   	pop    %edi
c00361cc:	5d                   	pop    %ebp
c00361cd:	c3                   	ret    
c00361ce:	66 90                	xchg   %ax,%ax
c00361d0:	8b 40 04             	mov    0x4(%eax),%eax
c00361d3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00361d6:	83 c0 01             	add    $0x1,%eax
c00361d9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00361dd:	8b 45 08             	mov    0x8(%ebp),%eax
c00361e0:	89 04 24             	mov    %eax,(%esp)
c00361e3:	e8 a8 fe ff ff       	call   c0036090 <_Balloc>
c00361e8:	89 c3                	mov    %eax,%ebx
c00361ea:	8b 45 0c             	mov    0xc(%ebp),%eax
c00361ed:	8b 40 10             	mov    0x10(%eax),%eax
c00361f0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c00361f7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00361fb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00361fe:	83 c0 0c             	add    $0xc,%eax
c0036201:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036205:	8d 43 0c             	lea    0xc(%ebx),%eax
c0036208:	89 04 24             	mov    %eax,(%esp)
c003620b:	e8 54 c0 ff ff       	call   c0032264 <memcpy>
c0036210:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036213:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036216:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0036219:	8b 50 04             	mov    0x4(%eax),%edx
c003621c:	8b 45 08             	mov    0x8(%ebp),%eax
c003621f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036222:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036225:	8b 10                	mov    (%eax),%edx
c0036227:	89 17                	mov    %edx,(%edi)
c0036229:	89 38                	mov    %edi,(%eax)
c003622b:	eb 86                	jmp    c00361b3 <__multadd+0x63>
c003622d:	8d 76 00             	lea    0x0(%esi),%esi

c0036230 <__s2b>:
c0036230:	55                   	push   %ebp
c0036231:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0036236:	89 e5                	mov    %esp,%ebp
c0036238:	57                   	push   %edi
c0036239:	56                   	push   %esi
c003623a:	53                   	push   %ebx
c003623b:	83 ec 2c             	sub    $0x2c,%esp
c003623e:	8b 45 14             	mov    0x14(%ebp),%eax
c0036241:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036244:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036247:	8d 48 08             	lea    0x8(%eax),%ecx
c003624a:	89 c8                	mov    %ecx,%eax
c003624c:	f7 ea                	imul   %edx
c003624e:	c1 f9 1f             	sar    $0x1f,%ecx
c0036251:	d1 fa                	sar    %edx
c0036253:	29 ca                	sub    %ecx,%edx
c0036255:	83 fa 01             	cmp    $0x1,%edx
c0036258:	0f 8e be 00 00 00    	jle    c003631c <__s2b+0xec>
c003625e:	b8 01 00 00 00       	mov    $0x1,%eax
c0036263:	31 c9                	xor    %ecx,%ecx
c0036265:	8d 76 00             	lea    0x0(%esi),%esi
c0036268:	01 c0                	add    %eax,%eax
c003626a:	83 c1 01             	add    $0x1,%ecx
c003626d:	39 c2                	cmp    %eax,%edx
c003626f:	7f f7                	jg     c0036268 <__s2b+0x38>
c0036271:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036275:	89 1c 24             	mov    %ebx,(%esp)
c0036278:	e8 13 fe ff ff       	call   c0036090 <_Balloc>
c003627d:	8b 55 18             	mov    0x18(%ebp),%edx
c0036280:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0036284:	89 50 14             	mov    %edx,0x14(%eax)
c0036287:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c003628e:	0f 8e 7c 00 00 00    	jle    c0036310 <__s2b+0xe0>
c0036294:	8d 4e 09             	lea    0x9(%esi),%ecx
c0036297:	03 75 10             	add    0x10(%ebp),%esi
c003629a:	89 cf                	mov    %ecx,%edi
c003629c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003629f:	90                   	nop
c00362a0:	83 c7 01             	add    $0x1,%edi
c00362a3:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c00362a7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00362ae:	00 
c00362af:	89 44 24 04          	mov    %eax,0x4(%esp)
c00362b3:	89 1c 24             	mov    %ebx,(%esp)
c00362b6:	83 ea 30             	sub    $0x30,%edx
c00362b9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c00362bd:	e8 8e fe ff ff       	call   c0036150 <__multadd>
c00362c2:	39 f7                	cmp    %esi,%edi
c00362c4:	75 da                	jne    c00362a0 <__s2b+0x70>
c00362c6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00362c9:	8b 7d 10             	mov    0x10(%ebp),%edi
c00362cc:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c00362d0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c00362d3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c00362d6:	7e 2e                	jle    c0036306 <__s2b+0xd6>
c00362d8:	8b 7d 14             	mov    0x14(%ebp),%edi
c00362db:	29 cf                	sub    %ecx,%edi
c00362dd:	01 f7                	add    %esi,%edi
c00362df:	90                   	nop
c00362e0:	83 c6 01             	add    $0x1,%esi
c00362e3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c00362e7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c00362ee:	00 
c00362ef:	89 44 24 04          	mov    %eax,0x4(%esp)
c00362f3:	89 1c 24             	mov    %ebx,(%esp)
c00362f6:	83 ea 30             	sub    $0x30,%edx
c00362f9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c00362fd:	e8 4e fe ff ff       	call   c0036150 <__multadd>
c0036302:	39 fe                	cmp    %edi,%esi
c0036304:	75 da                	jne    c00362e0 <__s2b+0xb0>
c0036306:	83 c4 2c             	add    $0x2c,%esp
c0036309:	5b                   	pop    %ebx
c003630a:	5e                   	pop    %esi
c003630b:	5f                   	pop    %edi
c003630c:	5d                   	pop    %ebp
c003630d:	c3                   	ret    
c003630e:	66 90                	xchg   %ax,%ax
c0036310:	83 c6 0a             	add    $0xa,%esi
c0036313:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c003631a:	eb b4                	jmp    c00362d0 <__s2b+0xa0>
c003631c:	31 c9                	xor    %ecx,%ecx
c003631e:	e9 4e ff ff ff       	jmp    c0036271 <__s2b+0x41>
c0036323:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036329:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036330 <__hi0bits>:
c0036330:	55                   	push   %ebp
c0036331:	31 c9                	xor    %ecx,%ecx
c0036333:	89 e5                	mov    %esp,%ebp
c0036335:	8b 55 08             	mov    0x8(%ebp),%edx
c0036338:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c003633e:	75 05                	jne    c0036345 <__hi0bits+0x15>
c0036340:	c1 e2 10             	shl    $0x10,%edx
c0036343:	b1 10                	mov    $0x10,%cl
c0036345:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c003634b:	75 06                	jne    c0036353 <__hi0bits+0x23>
c003634d:	83 c1 08             	add    $0x8,%ecx
c0036350:	c1 e2 08             	shl    $0x8,%edx
c0036353:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0036359:	75 06                	jne    c0036361 <__hi0bits+0x31>
c003635b:	83 c1 04             	add    $0x4,%ecx
c003635e:	c1 e2 04             	shl    $0x4,%edx
c0036361:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0036367:	75 06                	jne    c003636f <__hi0bits+0x3f>
c0036369:	83 c1 02             	add    $0x2,%ecx
c003636c:	c1 e2 02             	shl    $0x2,%edx
c003636f:	85 d2                	test   %edx,%edx
c0036371:	89 c8                	mov    %ecx,%eax
c0036373:	78 0d                	js     c0036382 <__hi0bits+0x52>
c0036375:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c003637b:	b8 20 00 00 00       	mov    $0x20,%eax
c0036380:	75 06                	jne    c0036388 <__hi0bits+0x58>
c0036382:	5d                   	pop    %ebp
c0036383:	c3                   	ret    
c0036384:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036388:	8d 41 01             	lea    0x1(%ecx),%eax
c003638b:	5d                   	pop    %ebp
c003638c:	c3                   	ret    
c003638d:	8d 76 00             	lea    0x0(%esi),%esi

c0036390 <__lo0bits>:
c0036390:	55                   	push   %ebp
c0036391:	89 e5                	mov    %esp,%ebp
c0036393:	53                   	push   %ebx
c0036394:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036397:	8b 13                	mov    (%ebx),%edx
c0036399:	f6 c2 07             	test   $0x7,%dl
c003639c:	74 1a                	je     c00363b8 <__lo0bits+0x28>
c003639e:	31 c0                	xor    %eax,%eax
c00363a0:	f6 c2 01             	test   $0x1,%dl
c00363a3:	75 0f                	jne    c00363b4 <__lo0bits+0x24>
c00363a5:	f6 c2 02             	test   $0x2,%dl
c00363a8:	75 56                	jne    c0036400 <__lo0bits+0x70>
c00363aa:	c1 ea 02             	shr    $0x2,%edx
c00363ad:	b8 02 00 00 00       	mov    $0x2,%eax
c00363b2:	89 13                	mov    %edx,(%ebx)
c00363b4:	5b                   	pop    %ebx
c00363b5:	5d                   	pop    %ebp
c00363b6:	c3                   	ret    
c00363b7:	90                   	nop
c00363b8:	31 c9                	xor    %ecx,%ecx
c00363ba:	66 85 d2             	test   %dx,%dx
c00363bd:	75 05                	jne    c00363c4 <__lo0bits+0x34>
c00363bf:	c1 ea 10             	shr    $0x10,%edx
c00363c2:	b1 10                	mov    $0x10,%cl
c00363c4:	84 d2                	test   %dl,%dl
c00363c6:	75 06                	jne    c00363ce <__lo0bits+0x3e>
c00363c8:	83 c1 08             	add    $0x8,%ecx
c00363cb:	c1 ea 08             	shr    $0x8,%edx
c00363ce:	f6 c2 0f             	test   $0xf,%dl
c00363d1:	75 06                	jne    c00363d9 <__lo0bits+0x49>
c00363d3:	83 c1 04             	add    $0x4,%ecx
c00363d6:	c1 ea 04             	shr    $0x4,%edx
c00363d9:	f6 c2 03             	test   $0x3,%dl
c00363dc:	75 06                	jne    c00363e4 <__lo0bits+0x54>
c00363de:	83 c1 02             	add    $0x2,%ecx
c00363e1:	c1 ea 02             	shr    $0x2,%edx
c00363e4:	f6 c2 01             	test   $0x1,%dl
c00363e7:	75 0c                	jne    c00363f5 <__lo0bits+0x65>
c00363e9:	d1 ea                	shr    %edx
c00363eb:	b8 20 00 00 00       	mov    $0x20,%eax
c00363f0:	74 c2                	je     c00363b4 <__lo0bits+0x24>
c00363f2:	83 c1 01             	add    $0x1,%ecx
c00363f5:	89 13                	mov    %edx,(%ebx)
c00363f7:	89 c8                	mov    %ecx,%eax
c00363f9:	5b                   	pop    %ebx
c00363fa:	5d                   	pop    %ebp
c00363fb:	c3                   	ret    
c00363fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036400:	d1 ea                	shr    %edx
c0036402:	b0 01                	mov    $0x1,%al
c0036404:	89 13                	mov    %edx,(%ebx)
c0036406:	5b                   	pop    %ebx
c0036407:	5d                   	pop    %ebp
c0036408:	c3                   	ret    
c0036409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036410 <__i2b>:
c0036410:	55                   	push   %ebp
c0036411:	89 e5                	mov    %esp,%ebp
c0036413:	83 ec 18             	sub    $0x18,%esp
c0036416:	8b 45 08             	mov    0x8(%ebp),%eax
c0036419:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036420:	00 
c0036421:	89 04 24             	mov    %eax,(%esp)
c0036424:	e8 67 fc ff ff       	call   c0036090 <_Balloc>
c0036429:	8b 55 0c             	mov    0xc(%ebp),%edx
c003642c:	89 50 14             	mov    %edx,0x14(%eax)
c003642f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036436:	c9                   	leave  
c0036437:	c3                   	ret    
c0036438:	90                   	nop
c0036439:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036440 <__multiply>:
c0036440:	55                   	push   %ebp
c0036441:	89 e5                	mov    %esp,%ebp
c0036443:	57                   	push   %edi
c0036444:	56                   	push   %esi
c0036445:	53                   	push   %ebx
c0036446:	83 ec 3c             	sub    $0x3c,%esp
c0036449:	8b 75 0c             	mov    0xc(%ebp),%esi
c003644c:	8b 45 10             	mov    0x10(%ebp),%eax
c003644f:	8b 7e 10             	mov    0x10(%esi),%edi
c0036452:	8b 58 10             	mov    0x10(%eax),%ebx
c0036455:	39 df                	cmp    %ebx,%edi
c0036457:	7d 0e                	jge    c0036467 <__multiply+0x27>
c0036459:	89 f8                	mov    %edi,%eax
c003645b:	89 df                	mov    %ebx,%edi
c003645d:	89 c3                	mov    %eax,%ebx
c003645f:	89 f0                	mov    %esi,%eax
c0036461:	8b 75 10             	mov    0x10(%ebp),%esi
c0036464:	89 45 10             	mov    %eax,0x10(%ebp)
c0036467:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c003646a:	3b 46 08             	cmp    0x8(%esi),%eax
c003646d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0036470:	0f 9f c0             	setg   %al
c0036473:	0f b6 c0             	movzbl %al,%eax
c0036476:	03 46 04             	add    0x4(%esi),%eax
c0036479:	89 44 24 04          	mov    %eax,0x4(%esp)
c003647d:	8b 45 08             	mov    0x8(%ebp),%eax
c0036480:	89 04 24             	mov    %eax,(%esp)
c0036483:	e8 08 fc ff ff       	call   c0036090 <_Balloc>
c0036488:	8b 55 c8             	mov    -0x38(%ebp),%edx
c003648b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003648e:	8d 40 14             	lea    0x14(%eax),%eax
c0036491:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0036494:	89 d1                	mov    %edx,%ecx
c0036496:	39 c8                	cmp    %ecx,%eax
c0036498:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003649b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c003649e:	73 15                	jae    c00364b5 <__multiply+0x75>
c00364a0:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c00364a3:	90                   	nop
c00364a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00364a8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00364ae:	83 c0 04             	add    $0x4,%eax
c00364b1:	39 c2                	cmp    %eax,%edx
c00364b3:	77 f3                	ja     c00364a8 <__multiply+0x68>
c00364b5:	8d 46 14             	lea    0x14(%esi),%eax
c00364b8:	89 45 d0             	mov    %eax,-0x30(%ebp)
c00364bb:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c00364be:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00364c1:	8b 45 10             	mov    0x10(%ebp),%eax
c00364c4:	83 c0 14             	add    $0x14,%eax
c00364c7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c00364ca:	39 f8                	cmp    %edi,%eax
c00364cc:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00364cf:	89 7d cc             	mov    %edi,-0x34(%ebp)
c00364d2:	0f 83 e8 00 00 00    	jae    c00365c0 <__multiply+0x180>
c00364d8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00364db:	8b 00                	mov    (%eax),%eax
c00364dd:	0f b7 f8             	movzwl %ax,%edi
c00364e0:	85 ff                	test   %edi,%edi
c00364e2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00364e5:	74 5a                	je     c0036541 <__multiply+0x101>
c00364e7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00364ea:	31 db                	xor    %ebx,%ebx
c00364ec:	8b 75 d0             	mov    -0x30(%ebp),%esi
c00364ef:	eb 09                	jmp    c00364fa <__multiply+0xba>
c00364f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00364f8:	89 fa                	mov    %edi,%edx
c00364fa:	8b 0e                	mov    (%esi),%ecx
c00364fc:	83 c6 04             	add    $0x4,%esi
c00364ff:	0f b7 3a             	movzwl (%edx),%edi
c0036502:	0f b7 c1             	movzwl %cx,%eax
c0036505:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0036509:	c1 e9 10             	shr    $0x10,%ecx
c003650c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036510:	01 f8                	add    %edi,%eax
c0036512:	01 d8                	add    %ebx,%eax
c0036514:	8b 1a                	mov    (%edx),%ebx
c0036516:	8d 7a 04             	lea    0x4(%edx),%edi
c0036519:	c1 eb 10             	shr    $0x10,%ebx
c003651c:	01 d9                	add    %ebx,%ecx
c003651e:	89 c3                	mov    %eax,%ebx
c0036520:	c1 eb 10             	shr    $0x10,%ebx
c0036523:	0f b7 c0             	movzwl %ax,%eax
c0036526:	01 d9                	add    %ebx,%ecx
c0036528:	89 cb                	mov    %ecx,%ebx
c003652a:	c1 e1 10             	shl    $0x10,%ecx
c003652d:	09 c1                	or     %eax,%ecx
c003652f:	c1 eb 10             	shr    $0x10,%ebx
c0036532:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036535:	89 0a                	mov    %ecx,(%edx)
c0036537:	77 bf                	ja     c00364f8 <__multiply+0xb8>
c0036539:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003653c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003653f:	8b 00                	mov    (%eax),%eax
c0036541:	c1 e8 10             	shr    $0x10,%eax
c0036544:	85 c0                	test   %eax,%eax
c0036546:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036549:	74 61                	je     c00365ac <__multiply+0x16c>
c003654b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003654e:	31 ff                	xor    %edi,%edi
c0036550:	89 fe                	mov    %edi,%esi
c0036552:	8b 10                	mov    (%eax),%edx
c0036554:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036557:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003655a:	89 d3                	mov    %edx,%ebx
c003655c:	eb 05                	jmp    c0036563 <__multiply+0x123>
c003655e:	66 90                	xchg   %ax,%ax
c0036560:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036563:	0f b7 08             	movzwl (%eax),%ecx
c0036566:	c1 eb 10             	shr    $0x10,%ebx
c0036569:	0f b7 d2             	movzwl %dx,%edx
c003656c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036570:	83 c0 04             	add    $0x4,%eax
c0036573:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036576:	01 f7                	add    %esi,%edi
c0036578:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003657b:	89 fb                	mov    %edi,%ebx
c003657d:	c1 e3 10             	shl    $0x10,%ebx
c0036580:	09 d3                	or     %edx,%ebx
c0036582:	89 1e                	mov    %ebx,(%esi)
c0036584:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036587:	8d 4e 04             	lea    0x4(%esi),%ecx
c003658a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003658e:	c1 ef 10             	shr    $0x10,%edi
c0036591:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0036595:	0f b7 f3             	movzwl %bx,%esi
c0036598:	01 f2                	add    %esi,%edx
c003659a:	01 fa                	add    %edi,%edx
c003659c:	89 d6                	mov    %edx,%esi
c003659e:	c1 ee 10             	shr    $0x10,%esi
c00365a1:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c00365a4:	77 ba                	ja     c0036560 <__multiply+0x120>
c00365a6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00365a9:	89 50 04             	mov    %edx,0x4(%eax)
c00365ac:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c00365b0:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00365b3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c00365b7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c00365ba:	0f 87 18 ff ff ff    	ja     c00364d8 <__multiply+0x98>
c00365c0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c00365c3:	85 f6                	test   %esi,%esi
c00365c5:	7e 29                	jle    c00365f0 <__multiply+0x1b0>
c00365c7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00365ca:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00365cd:	85 db                	test   %ebx,%ebx
c00365cf:	75 1f                	jne    c00365f0 <__multiply+0x1b0>
c00365d1:	8b 55 c8             	mov    -0x38(%ebp),%edx
c00365d4:	89 d0                	mov    %edx,%eax
c00365d6:	c1 e0 02             	shl    $0x2,%eax
c00365d9:	29 c7                	sub    %eax,%edi
c00365db:	89 f8                	mov    %edi,%eax
c00365dd:	eb 09                	jmp    c00365e8 <__multiply+0x1a8>
c00365df:	90                   	nop
c00365e0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00365e4:	85 c9                	test   %ecx,%ecx
c00365e6:	75 05                	jne    c00365ed <__multiply+0x1ad>
c00365e8:	83 ea 01             	sub    $0x1,%edx
c00365eb:	75 f3                	jne    c00365e0 <__multiply+0x1a0>
c00365ed:	89 55 c8             	mov    %edx,-0x38(%ebp)
c00365f0:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00365f3:	8b 7d c8             	mov    -0x38(%ebp),%edi
c00365f6:	89 78 10             	mov    %edi,0x10(%eax)
c00365f9:	83 c4 3c             	add    $0x3c,%esp
c00365fc:	5b                   	pop    %ebx
c00365fd:	5e                   	pop    %esi
c00365fe:	5f                   	pop    %edi
c00365ff:	5d                   	pop    %ebp
c0036600:	c3                   	ret    
c0036601:	eb 0d                	jmp    c0036610 <__pow5mult>
c0036603:	90                   	nop
c0036604:	90                   	nop
c0036605:	90                   	nop
c0036606:	90                   	nop
c0036607:	90                   	nop
c0036608:	90                   	nop
c0036609:	90                   	nop
c003660a:	90                   	nop
c003660b:	90                   	nop
c003660c:	90                   	nop
c003660d:	90                   	nop
c003660e:	90                   	nop
c003660f:	90                   	nop

c0036610 <__pow5mult>:
c0036610:	55                   	push   %ebp
c0036611:	89 e5                	mov    %esp,%ebp
c0036613:	57                   	push   %edi
c0036614:	56                   	push   %esi
c0036615:	53                   	push   %ebx
c0036616:	83 ec 2c             	sub    $0x2c,%esp
c0036619:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003661c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003661f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036622:	89 d8                	mov    %ebx,%eax
c0036624:	83 e0 03             	and    $0x3,%eax
c0036627:	0f 85 a3 00 00 00    	jne    c00366d0 <__pow5mult+0xc0>
c003662d:	c1 fb 02             	sar    $0x2,%ebx
c0036630:	85 db                	test   %ebx,%ebx
c0036632:	74 5c                	je     c0036690 <__pow5mult+0x80>
c0036634:	8b 71 48             	mov    0x48(%ecx),%esi
c0036637:	85 f6                	test   %esi,%esi
c0036639:	0f 84 bd 00 00 00    	je     c00366fc <__pow5mult+0xec>
c003663f:	f6 c3 01             	test   $0x1,%bl
c0036642:	75 15                	jne    c0036659 <__pow5mult+0x49>
c0036644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036648:	d1 fb                	sar    %ebx
c003664a:	74 44                	je     c0036690 <__pow5mult+0x80>
c003664c:	8b 06                	mov    (%esi),%eax
c003664e:	85 c0                	test   %eax,%eax
c0036650:	74 4e                	je     c00366a0 <__pow5mult+0x90>
c0036652:	89 c6                	mov    %eax,%esi
c0036654:	f6 c3 01             	test   $0x1,%bl
c0036657:	74 ef                	je     c0036648 <__pow5mult+0x38>
c0036659:	89 0c 24             	mov    %ecx,(%esp)
c003665c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036660:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036664:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036667:	e8 d4 fd ff ff       	call   c0036440 <__multiply>
c003666c:	85 ff                	test   %edi,%edi
c003666e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036671:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036674:	74 52                	je     c00366c8 <__pow5mult+0xb8>
c0036676:	8b 57 04             	mov    0x4(%edi),%edx
c0036679:	d1 fb                	sar    %ebx
c003667b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003667e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036681:	8b 10                	mov    (%eax),%edx
c0036683:	89 17                	mov    %edx,(%edi)
c0036685:	89 38                	mov    %edi,(%eax)
c0036687:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003668a:	75 c0                	jne    c003664c <__pow5mult+0x3c>
c003668c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036690:	83 c4 2c             	add    $0x2c,%esp
c0036693:	89 f8                	mov    %edi,%eax
c0036695:	5b                   	pop    %ebx
c0036696:	5e                   	pop    %esi
c0036697:	5f                   	pop    %edi
c0036698:	5d                   	pop    %ebp
c0036699:	c3                   	ret    
c003669a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00366a0:	89 74 24 08          	mov    %esi,0x8(%esp)
c00366a4:	89 74 24 04          	mov    %esi,0x4(%esp)
c00366a8:	89 0c 24             	mov    %ecx,(%esp)
c00366ab:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00366ae:	e8 8d fd ff ff       	call   c0036440 <__multiply>
c00366b3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00366b6:	89 06                	mov    %eax,(%esi)
c00366b8:	89 c6                	mov    %eax,%esi
c00366ba:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00366c0:	eb 92                	jmp    c0036654 <__pow5mult+0x44>
c00366c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00366c8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00366cb:	e9 78 ff ff ff       	jmp    c0036648 <__pow5mult+0x38>
c00366d0:	8b 04 85 bc 93 03 c0 	mov    -0x3ffc6c44(,%eax,4),%eax
c00366d7:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00366db:	89 0c 24             	mov    %ecx,(%esp)
c00366de:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00366e5:	00 
c00366e6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00366ea:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00366ed:	e8 5e fa ff ff       	call   c0036150 <__multadd>
c00366f2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00366f5:	89 c7                	mov    %eax,%edi
c00366f7:	e9 31 ff ff ff       	jmp    c003662d <__pow5mult+0x1d>
c00366fc:	89 0c 24             	mov    %ecx,(%esp)
c00366ff:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036706:	00 
c0036707:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003670a:	e8 81 f9 ff ff       	call   c0036090 <_Balloc>
c003670f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036712:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0036719:	89 c6                	mov    %eax,%esi
c003671b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036722:	89 41 48             	mov    %eax,0x48(%ecx)
c0036725:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003672b:	e9 0f ff ff ff       	jmp    c003663f <__pow5mult+0x2f>

c0036730 <__lshift>:
c0036730:	55                   	push   %ebp
c0036731:	89 e5                	mov    %esp,%ebp
c0036733:	57                   	push   %edi
c0036734:	56                   	push   %esi
c0036735:	53                   	push   %ebx
c0036736:	83 ec 2c             	sub    $0x2c,%esp
c0036739:	8b 45 0c             	mov    0xc(%ebp),%eax
c003673c:	8b 75 10             	mov    0x10(%ebp),%esi
c003673f:	89 c7                	mov    %eax,%edi
c0036741:	8b 50 04             	mov    0x4(%eax),%edx
c0036744:	8b 40 10             	mov    0x10(%eax),%eax
c0036747:	89 f3                	mov    %esi,%ebx
c0036749:	c1 fb 05             	sar    $0x5,%ebx
c003674c:	01 d8                	add    %ebx,%eax
c003674e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036751:	83 c0 01             	add    $0x1,%eax
c0036754:	89 c1                	mov    %eax,%ecx
c0036756:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036759:	8b 47 08             	mov    0x8(%edi),%eax
c003675c:	39 c1                	cmp    %eax,%ecx
c003675e:	7e 09                	jle    c0036769 <__lshift+0x39>
c0036760:	01 c0                	add    %eax,%eax
c0036762:	83 c2 01             	add    $0x1,%edx
c0036765:	39 c1                	cmp    %eax,%ecx
c0036767:	7f f7                	jg     c0036760 <__lshift+0x30>
c0036769:	8b 45 08             	mov    0x8(%ebp),%eax
c003676c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036770:	89 04 24             	mov    %eax,(%esp)
c0036773:	e8 18 f9 ff ff       	call   c0036090 <_Balloc>
c0036778:	85 db                	test   %ebx,%ebx
c003677a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003677d:	8d 50 14             	lea    0x14(%eax),%edx
c0036780:	7e 17                	jle    c0036799 <__lshift+0x69>
c0036782:	31 c0                	xor    %eax,%eax
c0036784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036788:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c003678f:	83 c0 01             	add    $0x1,%eax
c0036792:	39 d8                	cmp    %ebx,%eax
c0036794:	75 f2                	jne    c0036788 <__lshift+0x58>
c0036796:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036799:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003679c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003679f:	8b 4f 10             	mov    0x10(%edi),%ecx
c00367a2:	83 c0 14             	add    $0x14,%eax
c00367a5:	83 e6 1f             	and    $0x1f,%esi
c00367a8:	89 75 e0             	mov    %esi,-0x20(%ebp)
c00367ab:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c00367ae:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00367b1:	74 7d                	je     c0036830 <__lshift+0x100>
c00367b3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c00367ba:	29 75 dc             	sub    %esi,-0x24(%ebp)
c00367bd:	31 f6                	xor    %esi,%esi
c00367bf:	eb 09                	jmp    c00367ca <__lshift+0x9a>
c00367c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00367c8:	89 fa                	mov    %edi,%edx
c00367ca:	8b 18                	mov    (%eax),%ebx
c00367cc:	83 c0 04             	add    $0x4,%eax
c00367cf:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00367d3:	8d 7a 04             	lea    0x4(%edx),%edi
c00367d6:	d3 e3                	shl    %cl,%ebx
c00367d8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c00367dc:	09 f3                	or     %esi,%ebx
c00367de:	89 1a                	mov    %ebx,(%edx)
c00367e0:	8b 70 fc             	mov    -0x4(%eax),%esi
c00367e3:	d3 ee                	shr    %cl,%esi
c00367e5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00367e8:	77 de                	ja     c00367c8 <__lshift+0x98>
c00367ea:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00367ed:	89 72 04             	mov    %esi,0x4(%edx)
c00367f0:	83 c0 02             	add    $0x2,%eax
c00367f3:	85 f6                	test   %esi,%esi
c00367f5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c00367f9:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00367fc:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00367ff:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0036802:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036805:	83 e8 01             	sub    $0x1,%eax
c0036808:	89 47 10             	mov    %eax,0x10(%edi)
c003680b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003680e:	8b 50 04             	mov    0x4(%eax),%edx
c0036811:	8b 45 08             	mov    0x8(%ebp),%eax
c0036814:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036817:	8d 04 90             	lea    (%eax,%edx,4),%eax
c003681a:	8b 10                	mov    (%eax),%edx
c003681c:	89 16                	mov    %edx,(%esi)
c003681e:	89 30                	mov    %esi,(%eax)
c0036820:	83 c4 2c             	add    $0x2c,%esp
c0036823:	89 f8                	mov    %edi,%eax
c0036825:	5b                   	pop    %ebx
c0036826:	5e                   	pop    %esi
c0036827:	5f                   	pop    %edi
c0036828:	5d                   	pop    %ebp
c0036829:	c3                   	ret    
c003682a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036830:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036833:	90                   	nop
c0036834:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036838:	83 c0 04             	add    $0x4,%eax
c003683b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003683e:	83 c2 04             	add    $0x4,%edx
c0036841:	39 c3                	cmp    %eax,%ebx
c0036843:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036846:	77 f0                	ja     c0036838 <__lshift+0x108>
c0036848:	eb b2                	jmp    c00367fc <__lshift+0xcc>
c003684a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036850 <__mcmp>:
c0036850:	55                   	push   %ebp
c0036851:	89 e5                	mov    %esp,%ebp
c0036853:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036856:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036859:	53                   	push   %ebx
c003685a:	8b 41 10             	mov    0x10(%ecx),%eax
c003685d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036860:	29 d8                	sub    %ebx,%eax
c0036862:	85 c0                	test   %eax,%eax
c0036864:	75 27                	jne    c003688d <__mcmp+0x3d>
c0036866:	c1 e3 02             	shl    $0x2,%ebx
c0036869:	83 c1 14             	add    $0x14,%ecx
c003686c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003686f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036873:	eb 07                	jmp    c003687c <__mcmp+0x2c>
c0036875:	8d 76 00             	lea    0x0(%esi),%esi
c0036878:	39 c1                	cmp    %eax,%ecx
c003687a:	73 14                	jae    c0036890 <__mcmp+0x40>
c003687c:	83 ea 04             	sub    $0x4,%edx
c003687f:	83 e8 04             	sub    $0x4,%eax
c0036882:	8b 1a                	mov    (%edx),%ebx
c0036884:	39 18                	cmp    %ebx,(%eax)
c0036886:	74 f0                	je     c0036878 <__mcmp+0x28>
c0036888:	19 c0                	sbb    %eax,%eax
c003688a:	83 c8 01             	or     $0x1,%eax
c003688d:	5b                   	pop    %ebx
c003688e:	5d                   	pop    %ebp
c003688f:	c3                   	ret    
c0036890:	31 c0                	xor    %eax,%eax
c0036892:	5b                   	pop    %ebx
c0036893:	5d                   	pop    %ebp
c0036894:	c3                   	ret    
c0036895:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036899:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00368a0 <__mdiff>:
c00368a0:	55                   	push   %ebp
c00368a1:	89 e5                	mov    %esp,%ebp
c00368a3:	57                   	push   %edi
c00368a4:	56                   	push   %esi
c00368a5:	53                   	push   %ebx
c00368a6:	83 ec 2c             	sub    $0x2c,%esp
c00368a9:	8b 75 0c             	mov    0xc(%ebp),%esi
c00368ac:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00368af:	89 34 24             	mov    %esi,(%esp)
c00368b2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00368b6:	e8 95 ff ff ff       	call   c0036850 <__mcmp>
c00368bb:	85 c0                	test   %eax,%eax
c00368bd:	0f 84 25 01 00 00    	je     c00369e8 <__mdiff+0x148>
c00368c3:	0f 88 0f 01 00 00    	js     c00369d8 <__mdiff+0x138>
c00368c9:	31 ff                	xor    %edi,%edi
c00368cb:	8b 46 04             	mov    0x4(%esi),%eax
c00368ce:	83 c6 14             	add    $0x14,%esi
c00368d1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00368d5:	8b 45 08             	mov    0x8(%ebp),%eax
c00368d8:	89 04 24             	mov    %eax,(%esp)
c00368db:	e8 b0 f7 ff ff       	call   c0036090 <_Balloc>
c00368e0:	8d 4b 14             	lea    0x14(%ebx),%ecx
c00368e3:	89 c2                	mov    %eax,%edx
c00368e5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00368e8:	89 78 0c             	mov    %edi,0xc(%eax)
c00368eb:	8b 46 fc             	mov    -0x4(%esi),%eax
c00368ee:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c00368f1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00368f4:	8d 04 86             	lea    (%esi,%eax,4),%eax
c00368f7:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00368fa:	8b 43 10             	mov    0x10(%ebx),%eax
c00368fd:	31 db                	xor    %ebx,%ebx
c00368ff:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0036902:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036905:	89 d0                	mov    %edx,%eax
c0036907:	83 c0 14             	add    $0x14,%eax
c003690a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036910:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036913:	83 c0 04             	add    $0x4,%eax
c0036916:	83 c1 04             	add    $0x4,%ecx
c0036919:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c003691d:	8b 3e                	mov    (%esi),%edi
c003691f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036922:	0f b7 d7             	movzwl %di,%edx
c0036925:	01 da                	add    %ebx,%edx
c0036927:	0f b7 de             	movzwl %si,%ebx
c003692a:	29 da                	sub    %ebx,%edx
c003692c:	c1 ef 10             	shr    $0x10,%edi
c003692f:	89 d3                	mov    %edx,%ebx
c0036931:	c1 ee 10             	shr    $0x10,%esi
c0036934:	0f b7 d2             	movzwl %dx,%edx
c0036937:	c1 fb 10             	sar    $0x10,%ebx
c003693a:	29 f7                	sub    %esi,%edi
c003693c:	01 df                	add    %ebx,%edi
c003693e:	89 fb                	mov    %edi,%ebx
c0036940:	c1 e7 10             	shl    $0x10,%edi
c0036943:	09 d7                	or     %edx,%edi
c0036945:	c1 fb 10             	sar    $0x10,%ebx
c0036948:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003694b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003694e:	77 c0                	ja     c0036910 <__mdiff+0x70>
c0036950:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036953:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036956:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036959:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003695c:	39 f1                	cmp    %esi,%ecx
c003695e:	76 3f                	jbe    c003699f <__mdiff+0xff>
c0036960:	8b 3e                	mov    (%esi),%edi
c0036962:	83 c6 04             	add    $0x4,%esi
c0036965:	83 c0 04             	add    $0x4,%eax
c0036968:	0f b7 d7             	movzwl %di,%edx
c003696b:	01 da                	add    %ebx,%edx
c003696d:	89 d3                	mov    %edx,%ebx
c003696f:	0f b7 d2             	movzwl %dx,%edx
c0036972:	c1 fb 10             	sar    $0x10,%ebx
c0036975:	c1 ef 10             	shr    $0x10,%edi
c0036978:	01 df                	add    %ebx,%edi
c003697a:	89 fb                	mov    %edi,%ebx
c003697c:	c1 e7 10             	shl    $0x10,%edi
c003697f:	09 d7                	or     %edx,%edi
c0036981:	c1 fb 10             	sar    $0x10,%ebx
c0036984:	39 f1                	cmp    %esi,%ecx
c0036986:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036989:	77 d5                	ja     c0036960 <__mdiff+0xc0>
c003698b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003698e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036991:	f7 d0                	not    %eax
c0036993:	01 c8                	add    %ecx,%eax
c0036995:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036998:	c1 e8 02             	shr    $0x2,%eax
c003699b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c003699f:	85 ff                	test   %edi,%edi
c00369a1:	75 23                	jne    c00369c6 <__mdiff+0x126>
c00369a3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00369a6:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c00369ad:	29 d0                	sub    %edx,%eax
c00369af:	89 ca                	mov    %ecx,%edx
c00369b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00369b8:	83 ea 01             	sub    $0x1,%edx
c00369bb:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00369bf:	85 c9                	test   %ecx,%ecx
c00369c1:	74 f5                	je     c00369b8 <__mdiff+0x118>
c00369c3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00369c6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00369c9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00369cc:	89 48 10             	mov    %ecx,0x10(%eax)
c00369cf:	83 c4 2c             	add    $0x2c,%esp
c00369d2:	5b                   	pop    %ebx
c00369d3:	5e                   	pop    %esi
c00369d4:	5f                   	pop    %edi
c00369d5:	5d                   	pop    %ebp
c00369d6:	c3                   	ret    
c00369d7:	90                   	nop
c00369d8:	89 f0                	mov    %esi,%eax
c00369da:	bf 01 00 00 00       	mov    $0x1,%edi
c00369df:	89 de                	mov    %ebx,%esi
c00369e1:	89 c3                	mov    %eax,%ebx
c00369e3:	e9 e3 fe ff ff       	jmp    c00368cb <__mdiff+0x2b>
c00369e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00369eb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00369f2:	00 
c00369f3:	89 04 24             	mov    %eax,(%esp)
c00369f6:	e8 95 f6 ff ff       	call   c0036090 <_Balloc>
c00369fb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036a02:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0036a09:	83 c4 2c             	add    $0x2c,%esp
c0036a0c:	5b                   	pop    %ebx
c0036a0d:	5e                   	pop    %esi
c0036a0e:	5f                   	pop    %edi
c0036a0f:	5d                   	pop    %ebp
c0036a10:	c3                   	ret    
c0036a11:	eb 0d                	jmp    c0036a20 <__ulp>
c0036a13:	90                   	nop
c0036a14:	90                   	nop
c0036a15:	90                   	nop
c0036a16:	90                   	nop
c0036a17:	90                   	nop
c0036a18:	90                   	nop
c0036a19:	90                   	nop
c0036a1a:	90                   	nop
c0036a1b:	90                   	nop
c0036a1c:	90                   	nop
c0036a1d:	90                   	nop
c0036a1e:	90                   	nop
c0036a1f:	90                   	nop

c0036a20 <__ulp>:
c0036a20:	55                   	push   %ebp
c0036a21:	89 e5                	mov    %esp,%ebp
c0036a23:	83 ec 08             	sub    $0x8,%esp
c0036a26:	dd 45 08             	fldl   0x8(%ebp)
c0036a29:	dd 5d f8             	fstpl  -0x8(%ebp)
c0036a2c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0036a2f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036a35:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c0036a3b:	85 c9                	test   %ecx,%ecx
c0036a3d:	7e 11                	jle    c0036a50 <__ulp+0x30>
c0036a3f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036a42:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036a49:	dd 45 f8             	fldl   -0x8(%ebp)
c0036a4c:	c9                   	leave  
c0036a4d:	c3                   	ret    
c0036a4e:	66 90                	xchg   %ax,%ax
c0036a50:	f7 d9                	neg    %ecx
c0036a52:	c1 f9 14             	sar    $0x14,%ecx
c0036a55:	83 f9 13             	cmp    $0x13,%ecx
c0036a58:	7e 26                	jle    c0036a80 <__ulp+0x60>
c0036a5a:	83 f9 32             	cmp    $0x32,%ecx
c0036a5d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036a62:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036a69:	7f 0b                	jg     c0036a76 <__ulp+0x56>
c0036a6b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036a70:	29 ca                	sub    %ecx,%edx
c0036a72:	89 d1                	mov    %edx,%ecx
c0036a74:	d3 e0                	shl    %cl,%eax
c0036a76:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036a79:	dd 45 f8             	fldl   -0x8(%ebp)
c0036a7c:	c9                   	leave  
c0036a7d:	c3                   	ret    
c0036a7e:	66 90                	xchg   %ax,%ax
c0036a80:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036a85:	d3 f8                	sar    %cl,%eax
c0036a87:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0036a8a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036a91:	dd 45 f8             	fldl   -0x8(%ebp)
c0036a94:	c9                   	leave  
c0036a95:	c3                   	ret    
c0036a96:	8d 76 00             	lea    0x0(%esi),%esi
c0036a99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036aa0 <__b2d>:
c0036aa0:	55                   	push   %ebp
c0036aa1:	89 e5                	mov    %esp,%ebp
c0036aa3:	57                   	push   %edi
c0036aa4:	56                   	push   %esi
c0036aa5:	53                   	push   %ebx
c0036aa6:	83 ec 18             	sub    $0x18,%esp
c0036aa9:	8b 45 08             	mov    0x8(%ebp),%eax
c0036aac:	8d 78 14             	lea    0x14(%eax),%edi
c0036aaf:	8b 40 10             	mov    0x10(%eax),%eax
c0036ab2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0036ab5:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0036ab8:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036abb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036abe:	89 34 24             	mov    %esi,(%esp)
c0036ac1:	e8 6a f8 ff ff       	call   c0036330 <__hi0bits>
c0036ac6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036ac9:	ba 20 00 00 00       	mov    $0x20,%edx
c0036ace:	29 c2                	sub    %eax,%edx
c0036ad0:	83 f8 0a             	cmp    $0xa,%eax
c0036ad3:	89 11                	mov    %edx,(%ecx)
c0036ad5:	7f 41                	jg     c0036b18 <__b2d+0x78>
c0036ad7:	b9 0b 00 00 00       	mov    $0xb,%ecx
c0036adc:	89 f2                	mov    %esi,%edx
c0036ade:	29 c1                	sub    %eax,%ecx
c0036ae0:	d3 ea                	shr    %cl,%edx
c0036ae2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0036ae8:	89 55 ec             	mov    %edx,-0x14(%ebp)
c0036aeb:	31 d2                	xor    %edx,%edx
c0036aed:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036af0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036af7:	73 05                	jae    c0036afe <__b2d+0x5e>
c0036af9:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036afc:	d3 ea                	shr    %cl,%edx
c0036afe:	8d 48 15             	lea    0x15(%eax),%ecx
c0036b01:	d3 e6                	shl    %cl,%esi
c0036b03:	09 f2                	or     %esi,%edx
c0036b05:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036b08:	dd 45 e8             	fldl   -0x18(%ebp)
c0036b0b:	83 c4 18             	add    $0x18,%esp
c0036b0e:	5b                   	pop    %ebx
c0036b0f:	5e                   	pop    %esi
c0036b10:	5f                   	pop    %edi
c0036b11:	5d                   	pop    %ebp
c0036b12:	c3                   	ret    
c0036b13:	90                   	nop
c0036b14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036b18:	31 d2                	xor    %edx,%edx
c0036b1a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036b1d:	73 09                	jae    c0036b28 <__b2d+0x88>
c0036b1f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036b22:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036b25:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036b28:	89 c3                	mov    %eax,%ebx
c0036b2a:	83 eb 0b             	sub    $0xb,%ebx
c0036b2d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036b30:	74 4e                	je     c0036b80 <__b2d+0xe0>
c0036b32:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036b36:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0036b3b:	29 c3                	sub    %eax,%ebx
c0036b3d:	89 d0                	mov    %edx,%eax
c0036b3f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036b46:	d3 e6                	shl    %cl,%esi
c0036b48:	89 d9                	mov    %ebx,%ecx
c0036b4a:	d3 e8                	shr    %cl,%eax
c0036b4c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036b4f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036b55:	09 c6                	or     %eax,%esi
c0036b57:	31 c0                	xor    %eax,%eax
c0036b59:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036b5c:	39 f9                	cmp    %edi,%ecx
c0036b5e:	76 07                	jbe    c0036b67 <__b2d+0xc7>
c0036b60:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036b63:	89 d9                	mov    %ebx,%ecx
c0036b65:	d3 e8                	shr    %cl,%eax
c0036b67:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036b6b:	d3 e2                	shl    %cl,%edx
c0036b6d:	09 d0                	or     %edx,%eax
c0036b6f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036b72:	dd 45 e8             	fldl   -0x18(%ebp)
c0036b75:	83 c4 18             	add    $0x18,%esp
c0036b78:	5b                   	pop    %ebx
c0036b79:	5e                   	pop    %esi
c0036b7a:	5f                   	pop    %edi
c0036b7b:	5d                   	pop    %ebp
c0036b7c:	c3                   	ret    
c0036b7d:	8d 76 00             	lea    0x0(%esi),%esi
c0036b80:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036b86:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036b89:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036b8c:	dd 45 e8             	fldl   -0x18(%ebp)
c0036b8f:	83 c4 18             	add    $0x18,%esp
c0036b92:	5b                   	pop    %ebx
c0036b93:	5e                   	pop    %esi
c0036b94:	5f                   	pop    %edi
c0036b95:	5d                   	pop    %ebp
c0036b96:	c3                   	ret    
c0036b97:	89 f6                	mov    %esi,%esi
c0036b99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036ba0 <__d2b>:
c0036ba0:	55                   	push   %ebp
c0036ba1:	89 e5                	mov    %esp,%ebp
c0036ba3:	57                   	push   %edi
c0036ba4:	56                   	push   %esi
c0036ba5:	53                   	push   %ebx
c0036ba6:	83 ec 2c             	sub    $0x2c,%esp
c0036ba9:	8b 45 08             	mov    0x8(%ebp),%eax
c0036bac:	dd 45 0c             	fldl   0xc(%ebp)
c0036baf:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036bb6:	00 
c0036bb7:	dd 5d d0             	fstpl  -0x30(%ebp)
c0036bba:	89 04 24             	mov    %eax,(%esp)
c0036bbd:	e8 ce f4 ff ff       	call   c0036090 <_Balloc>
c0036bc2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c0036bc5:	89 c6                	mov    %eax,%esi
c0036bc7:	89 d8                	mov    %ebx,%eax
c0036bc9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c0036bcf:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0036bd4:	c1 eb 14             	shr    $0x14,%ebx
c0036bd7:	85 db                	test   %ebx,%ebx
c0036bd9:	74 05                	je     c0036be0 <__d2b+0x40>
c0036bdb:	0d 00 00 10 00       	or     $0x100000,%eax
c0036be0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036be3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0036be6:	85 c0                	test   %eax,%eax
c0036be8:	74 56                	je     c0036c40 <__d2b+0xa0>
c0036bea:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036bed:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0036bf0:	89 04 24             	mov    %eax,(%esp)
c0036bf3:	e8 98 f7 ff ff       	call   c0036390 <__lo0bits>
c0036bf8:	85 c0                	test   %eax,%eax
c0036bfa:	0f 85 90 00 00 00    	jne    c0036c90 <__d2b+0xf0>
c0036c00:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0036c03:	89 56 14             	mov    %edx,0x14(%esi)
c0036c06:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036c09:	83 fa 01             	cmp    $0x1,%edx
c0036c0c:	19 ff                	sbb    %edi,%edi
c0036c0e:	83 c7 02             	add    $0x2,%edi
c0036c11:	85 db                	test   %ebx,%ebx
c0036c13:	89 56 18             	mov    %edx,0x18(%esi)
c0036c16:	89 7e 10             	mov    %edi,0x10(%esi)
c0036c19:	74 49                	je     c0036c64 <__d2b+0xc4>
c0036c1b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036c1e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036c25:	89 11                	mov    %edx,(%ecx)
c0036c27:	ba 35 00 00 00       	mov    $0x35,%edx
c0036c2c:	29 c2                	sub    %eax,%edx
c0036c2e:	8b 45 18             	mov    0x18(%ebp),%eax
c0036c31:	89 10                	mov    %edx,(%eax)
c0036c33:	83 c4 2c             	add    $0x2c,%esp
c0036c36:	89 f0                	mov    %esi,%eax
c0036c38:	5b                   	pop    %ebx
c0036c39:	5e                   	pop    %esi
c0036c3a:	5f                   	pop    %edi
c0036c3b:	5d                   	pop    %ebp
c0036c3c:	c3                   	ret    
c0036c3d:	8d 76 00             	lea    0x0(%esi),%esi
c0036c40:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036c43:	bf 01 00 00 00       	mov    $0x1,%edi
c0036c48:	89 04 24             	mov    %eax,(%esp)
c0036c4b:	e8 40 f7 ff ff       	call   c0036390 <__lo0bits>
c0036c50:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036c53:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c0036c5a:	89 56 14             	mov    %edx,0x14(%esi)
c0036c5d:	83 c0 20             	add    $0x20,%eax
c0036c60:	85 db                	test   %ebx,%ebx
c0036c62:	75 b7                	jne    c0036c1b <__d2b+0x7b>
c0036c64:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036c67:	2d 32 04 00 00       	sub    $0x432,%eax
c0036c6c:	89 01                	mov    %eax,(%ecx)
c0036c6e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036c72:	c1 e7 05             	shl    $0x5,%edi
c0036c75:	89 04 24             	mov    %eax,(%esp)
c0036c78:	e8 b3 f6 ff ff       	call   c0036330 <__hi0bits>
c0036c7d:	29 c7                	sub    %eax,%edi
c0036c7f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036c82:	89 38                	mov    %edi,(%eax)
c0036c84:	83 c4 2c             	add    $0x2c,%esp
c0036c87:	89 f0                	mov    %esi,%eax
c0036c89:	5b                   	pop    %ebx
c0036c8a:	5e                   	pop    %esi
c0036c8b:	5f                   	pop    %edi
c0036c8c:	5d                   	pop    %ebp
c0036c8d:	c3                   	ret    
c0036c8e:	66 90                	xchg   %ax,%ax
c0036c90:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036c93:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036c98:	29 c1                	sub    %eax,%ecx
c0036c9a:	89 d7                	mov    %edx,%edi
c0036c9c:	d3 e7                	shl    %cl,%edi
c0036c9e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036ca1:	09 f9                	or     %edi,%ecx
c0036ca3:	89 4e 14             	mov    %ecx,0x14(%esi)
c0036ca6:	89 c1                	mov    %eax,%ecx
c0036ca8:	d3 ea                	shr    %cl,%edx
c0036caa:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036cad:	e9 57 ff ff ff       	jmp    c0036c09 <__d2b+0x69>
c0036cb2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036cb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036cc0 <__ratio>:
c0036cc0:	55                   	push   %ebp
c0036cc1:	89 e5                	mov    %esp,%ebp
c0036cc3:	56                   	push   %esi
c0036cc4:	53                   	push   %ebx
c0036cc5:	83 ec 30             	sub    $0x30,%esp
c0036cc8:	8b 75 08             	mov    0x8(%ebp),%esi
c0036ccb:	8d 45 f0             	lea    -0x10(%ebp),%eax
c0036cce:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036cd1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036cd5:	89 34 24             	mov    %esi,(%esp)
c0036cd8:	e8 c3 fd ff ff       	call   c0036aa0 <__b2d>
c0036cdd:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0036ce0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036ce4:	89 1c 24             	mov    %ebx,(%esp)
c0036ce7:	dd 55 e0             	fstl   -0x20(%ebp)
c0036cea:	dd 5d d8             	fstpl  -0x28(%ebp)
c0036ced:	e8 ae fd ff ff       	call   c0036aa0 <__b2d>
c0036cf2:	8b 46 10             	mov    0x10(%esi),%eax
c0036cf5:	2b 43 10             	sub    0x10(%ebx),%eax
c0036cf8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036cfb:	2b 55 f4             	sub    -0xc(%ebp),%edx
c0036cfe:	c1 e0 05             	shl    $0x5,%eax
c0036d01:	01 d0                	add    %edx,%eax
c0036d03:	dd 55 d0             	fstl   -0x30(%ebp)
c0036d06:	85 c0                	test   %eax,%eax
c0036d08:	dd 45 d8             	fldl   -0x28(%ebp)
c0036d0b:	7e 1b                	jle    c0036d28 <__ratio+0x68>
c0036d0d:	dd d8                	fstp   %st(0)
c0036d0f:	c1 e0 14             	shl    $0x14,%eax
c0036d12:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036d15:	dd 45 e0             	fldl   -0x20(%ebp)
c0036d18:	83 c4 30             	add    $0x30,%esp
c0036d1b:	5b                   	pop    %ebx
c0036d1c:	de f1                	fdivp  %st,%st(1)
c0036d1e:	5e                   	pop    %esi
c0036d1f:	5d                   	pop    %ebp
c0036d20:	c3                   	ret    
c0036d21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d28:	dd d9                	fstp   %st(1)
c0036d2a:	c1 e0 14             	shl    $0x14,%eax
c0036d2d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036d30:	dd 45 d0             	fldl   -0x30(%ebp)
c0036d33:	83 c4 30             	add    $0x30,%esp
c0036d36:	5b                   	pop    %ebx
c0036d37:	de f9                	fdivrp %st,%st(1)
c0036d39:	5e                   	pop    %esi
c0036d3a:	5d                   	pop    %ebp
c0036d3b:	c3                   	ret    
c0036d3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036d40 <_mprec_log10>:
c0036d40:	55                   	push   %ebp
c0036d41:	89 e5                	mov    %esp,%ebp
c0036d43:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d46:	83 f8 17             	cmp    $0x17,%eax
c0036d49:	7e 1d                	jle    c0036d68 <_mprec_log10+0x28>
c0036d4b:	d9 e8                	fld1   
c0036d4d:	d9 05 8c 93 03 c0    	flds   0xc003938c
c0036d53:	90                   	nop
c0036d54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036d58:	83 e8 01             	sub    $0x1,%eax
c0036d5b:	dc c9                	fmul   %st,%st(1)
c0036d5d:	75 f9                	jne    c0036d58 <_mprec_log10+0x18>
c0036d5f:	dd d8                	fstp   %st(0)
c0036d61:	5d                   	pop    %ebp
c0036d62:	c3                   	ret    
c0036d63:	90                   	nop
c0036d64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036d68:	dd 04 c5 60 94 03 c0 	fldl   -0x3ffc6ba0(,%eax,8)
c0036d6f:	5d                   	pop    %ebp
c0036d70:	c3                   	ret    
c0036d71:	eb 0d                	jmp    c0036d80 <__copybits>
c0036d73:	90                   	nop
c0036d74:	90                   	nop
c0036d75:	90                   	nop
c0036d76:	90                   	nop
c0036d77:	90                   	nop
c0036d78:	90                   	nop
c0036d79:	90                   	nop
c0036d7a:	90                   	nop
c0036d7b:	90                   	nop
c0036d7c:	90                   	nop
c0036d7d:	90                   	nop
c0036d7e:	90                   	nop
c0036d7f:	90                   	nop

c0036d80 <__copybits>:
c0036d80:	55                   	push   %ebp
c0036d81:	89 e5                	mov    %esp,%ebp
c0036d83:	57                   	push   %edi
c0036d84:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036d87:	56                   	push   %esi
c0036d88:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036d8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036d8e:	53                   	push   %ebx
c0036d8f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036d92:	8d 56 ff             	lea    -0x1(%esi),%edx
c0036d95:	c1 fa 05             	sar    $0x5,%edx
c0036d98:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c0036d9c:	8d 57 14             	lea    0x14(%edi),%edx
c0036d9f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0036da2:	39 da                	cmp    %ebx,%edx
c0036da4:	73 34                	jae    c0036dda <__copybits+0x5a>
c0036da6:	89 c1                	mov    %eax,%ecx
c0036da8:	83 c2 04             	add    $0x4,%edx
c0036dab:	8b 42 fc             	mov    -0x4(%edx),%eax
c0036dae:	83 c1 04             	add    $0x4,%ecx
c0036db1:	39 d3                	cmp    %edx,%ebx
c0036db3:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0036db6:	77 f0                	ja     c0036da8 <__copybits+0x28>
c0036db8:	8b 45 08             	mov    0x8(%ebp),%eax
c0036dbb:	29 fb                	sub    %edi,%ebx
c0036dbd:	8d 53 eb             	lea    -0x15(%ebx),%edx
c0036dc0:	c1 ea 02             	shr    $0x2,%edx
c0036dc3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c0036dc7:	39 c6                	cmp    %eax,%esi
c0036dc9:	76 13                	jbe    c0036dde <__copybits+0x5e>
c0036dcb:	90                   	nop
c0036dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036dd0:	83 c0 04             	add    $0x4,%eax
c0036dd3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c0036dda:	39 c6                	cmp    %eax,%esi
c0036ddc:	77 f2                	ja     c0036dd0 <__copybits+0x50>
c0036dde:	5b                   	pop    %ebx
c0036ddf:	5e                   	pop    %esi
c0036de0:	5f                   	pop    %edi
c0036de1:	5d                   	pop    %ebp
c0036de2:	c3                   	ret    
c0036de3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036de9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036df0 <__any_on>:
c0036df0:	55                   	push   %ebp
c0036df1:	89 e5                	mov    %esp,%ebp
c0036df3:	8b 45 08             	mov    0x8(%ebp),%eax
c0036df6:	57                   	push   %edi
c0036df7:	56                   	push   %esi
c0036df8:	53                   	push   %ebx
c0036df9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036dfc:	8d 50 14             	lea    0x14(%eax),%edx
c0036dff:	8b 40 10             	mov    0x10(%eax),%eax
c0036e02:	c1 fb 05             	sar    $0x5,%ebx
c0036e05:	39 d8                	cmp    %ebx,%eax
c0036e07:	7d 2f                	jge    c0036e38 <__any_on+0x48>
c0036e09:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c0036e0c:	39 da                	cmp    %ebx,%edx
c0036e0e:	73 1d                	jae    c0036e2d <__any_on+0x3d>
c0036e10:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036e13:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0036e16:	85 db                	test   %ebx,%ebx
c0036e18:	74 0f                	je     c0036e29 <__any_on+0x39>
c0036e1a:	eb 44                	jmp    c0036e60 <__any_on+0x70>
c0036e1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036e20:	83 e8 04             	sub    $0x4,%eax
c0036e23:	8b 08                	mov    (%eax),%ecx
c0036e25:	85 c9                	test   %ecx,%ecx
c0036e27:	75 37                	jne    c0036e60 <__any_on+0x70>
c0036e29:	39 c2                	cmp    %eax,%edx
c0036e2b:	72 f3                	jb     c0036e20 <__any_on+0x30>
c0036e2d:	31 c0                	xor    %eax,%eax
c0036e2f:	5b                   	pop    %ebx
c0036e30:	5e                   	pop    %esi
c0036e31:	5f                   	pop    %edi
c0036e32:	5d                   	pop    %ebp
c0036e33:	c3                   	ret    
c0036e34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036e38:	7e 1e                	jle    c0036e58 <__any_on+0x68>
c0036e3a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036e3d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036e40:	83 e1 1f             	and    $0x1f,%ecx
c0036e43:	74 c7                	je     c0036e0c <__any_on+0x1c>
c0036e45:	8b 3b                	mov    (%ebx),%edi
c0036e47:	b8 01 00 00 00       	mov    $0x1,%eax
c0036e4c:	89 fe                	mov    %edi,%esi
c0036e4e:	d3 ee                	shr    %cl,%esi
c0036e50:	d3 e6                	shl    %cl,%esi
c0036e52:	39 fe                	cmp    %edi,%esi
c0036e54:	75 d9                	jne    c0036e2f <__any_on+0x3f>
c0036e56:	eb b4                	jmp    c0036e0c <__any_on+0x1c>
c0036e58:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036e5b:	eb af                	jmp    c0036e0c <__any_on+0x1c>
c0036e5d:	8d 76 00             	lea    0x0(%esi),%esi
c0036e60:	5b                   	pop    %ebx
c0036e61:	b8 01 00 00 00       	mov    $0x1,%eax
c0036e66:	5e                   	pop    %esi
c0036e67:	5f                   	pop    %edi
c0036e68:	5d                   	pop    %ebp
c0036e69:	c3                   	ret    
c0036e6a:	66 90                	xchg   %ax,%ax
c0036e6c:	66 90                	xchg   %ax,%ax
c0036e6e:	66 90                	xchg   %ax,%ax

c0036e70 <_sbrk_r>:
c0036e70:	55                   	push   %ebp
c0036e71:	89 e5                	mov    %esp,%ebp
c0036e73:	83 ec 18             	sub    $0x18,%esp
c0036e76:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036e79:	c7 05 04 40 09 c0 00 	movl   $0x0,0xc0094004
c0036e80:	00 00 00 
c0036e83:	89 04 24             	mov    %eax,(%esp)
c0036e86:	e8 e3 af ff ff       	call   c0031e6e <sbrk>
c0036e8b:	83 f8 ff             	cmp    $0xffffffff,%eax
c0036e8e:	74 08                	je     c0036e98 <_sbrk_r+0x28>
c0036e90:	c9                   	leave  
c0036e91:	c3                   	ret    
c0036e92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036e98:	8b 15 04 40 09 c0    	mov    0xc0094004,%edx
c0036e9e:	85 d2                	test   %edx,%edx
c0036ea0:	74 ee                	je     c0036e90 <_sbrk_r+0x20>
c0036ea2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036ea5:	89 11                	mov    %edx,(%ecx)
c0036ea7:	c9                   	leave  
c0036ea8:	c3                   	ret    
c0036ea9:	66 90                	xchg   %ax,%ax
c0036eab:	66 90                	xchg   %ax,%ax
c0036ead:	66 90                	xchg   %ax,%ax
c0036eaf:	90                   	nop

c0036eb0 <__fpclassifyd>:
c0036eb0:	55                   	push   %ebp
c0036eb1:	b8 02 00 00 00       	mov    $0x2,%eax
c0036eb6:	89 e5                	mov    %esp,%ebp
c0036eb8:	53                   	push   %ebx
c0036eb9:	83 ec 0c             	sub    $0xc,%esp
c0036ebc:	dd 45 08             	fldl   0x8(%ebp)
c0036ebf:	dd 5d f0             	fstpl  -0x10(%ebp)
c0036ec2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036ec5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0036ec8:	89 d3                	mov    %edx,%ebx
c0036eca:	09 cb                	or     %ecx,%ebx
c0036ecc:	75 0a                	jne    c0036ed8 <__fpclassifyd+0x28>
c0036ece:	83 c4 0c             	add    $0xc,%esp
c0036ed1:	5b                   	pop    %ebx
c0036ed2:	5d                   	pop    %ebp
c0036ed3:	c3                   	ret    
c0036ed4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036ed8:	85 d2                	test   %edx,%edx
c0036eda:	0f 94 c2             	sete   %dl
c0036edd:	75 08                	jne    c0036ee7 <__fpclassifyd+0x37>
c0036edf:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0036ee5:	74 e7                	je     c0036ece <__fpclassifyd+0x1e>
c0036ee7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c0036eed:	b8 04 00 00 00       	mov    $0x4,%eax
c0036ef2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0036ef8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c0036efe:	76 ce                	jbe    c0036ece <__fpclassifyd+0x1e>
c0036f00:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0036f06:	b0 03                	mov    $0x3,%al
c0036f08:	76 c4                	jbe    c0036ece <__fpclassifyd+0x1e>
c0036f0a:	31 c0                	xor    %eax,%eax
c0036f0c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036f12:	0f 94 c0             	sete   %al
c0036f15:	21 d0                	and    %edx,%eax
c0036f17:	eb b5                	jmp    c0036ece <__fpclassifyd+0x1e>
c0036f19:	66 90                	xchg   %ax,%ax
c0036f1b:	66 90                	xchg   %ax,%ax
c0036f1d:	66 90                	xchg   %ax,%ax
c0036f1f:	90                   	nop

c0036f20 <strlen>:
c0036f20:	55                   	push   %ebp
c0036f21:	89 e5                	mov    %esp,%ebp
c0036f23:	57                   	push   %edi
c0036f24:	8b 55 08             	mov    0x8(%ebp),%edx
c0036f27:	89 d7                	mov    %edx,%edi
c0036f29:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036f2f:	74 25                	je     c0036f56 <L5>
c0036f31:	8a 0f                	mov    (%edi),%cl
c0036f33:	47                   	inc    %edi
c0036f34:	84 c9                	test   %cl,%cl
c0036f36:	74 56                	je     c0036f8e <L15>
c0036f38:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036f3e:	74 16                	je     c0036f56 <L5>
c0036f40:	8a 0f                	mov    (%edi),%cl
c0036f42:	47                   	inc    %edi
c0036f43:	84 c9                	test   %cl,%cl
c0036f45:	74 47                	je     c0036f8e <L15>
c0036f47:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036f4d:	74 07                	je     c0036f56 <L5>
c0036f4f:	8a 0f                	mov    (%edi),%cl
c0036f51:	47                   	inc    %edi
c0036f52:	84 c9                	test   %cl,%cl
c0036f54:	74 38                	je     c0036f8e <L15>

c0036f56 <L5>:
c0036f56:	83 ef 04             	sub    $0x4,%edi
c0036f59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036f60 <L10>:
c0036f60:	83 c7 04             	add    $0x4,%edi
c0036f63:	8b 0f                	mov    (%edi),%ecx
c0036f65:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036f6b:	f7 d1                	not    %ecx
c0036f6d:	21 c8                	and    %ecx,%eax
c0036f6f:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036f74:	74 ea                	je     c0036f60 <L10>
c0036f76:	f7 d1                	not    %ecx
c0036f78:	47                   	inc    %edi
c0036f79:	84 c9                	test   %cl,%cl
c0036f7b:	74 11                	je     c0036f8e <L15>
c0036f7d:	47                   	inc    %edi
c0036f7e:	c1 e9 08             	shr    $0x8,%ecx
c0036f81:	84 c9                	test   %cl,%cl
c0036f83:	74 09                	je     c0036f8e <L15>
c0036f85:	47                   	inc    %edi
c0036f86:	c1 e9 08             	shr    $0x8,%ecx
c0036f89:	84 c9                	test   %cl,%cl
c0036f8b:	74 01                	je     c0036f8e <L15>
c0036f8d:	47                   	inc    %edi

c0036f8e <L15>:
c0036f8e:	29 d7                	sub    %edx,%edi
c0036f90:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036f93:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036f96:	5f                   	pop    %edi
c0036f97:	c9                   	leave  
c0036f98:	c3                   	ret    
c0036f99:	66 90                	xchg   %ax,%ax
c0036f9b:	66 90                	xchg   %ax,%ax
c0036f9d:	66 90                	xchg   %ax,%ax
c0036f9f:	90                   	nop

c0036fa0 <__ssprint_r>:
c0036fa0:	55                   	push   %ebp
c0036fa1:	89 e5                	mov    %esp,%ebp
c0036fa3:	57                   	push   %edi
c0036fa4:	56                   	push   %esi
c0036fa5:	53                   	push   %ebx
c0036fa6:	83 ec 2c             	sub    $0x2c,%esp
c0036fa9:	8b 45 10             	mov    0x10(%ebp),%eax
c0036fac:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036faf:	8b 00                	mov    (%eax),%eax
c0036fb1:	89 c7                	mov    %eax,%edi
c0036fb3:	8b 45 10             	mov    0x10(%ebp),%eax
c0036fb6:	8b 40 08             	mov    0x8(%eax),%eax
c0036fb9:	85 c0                	test   %eax,%eax
c0036fbb:	0f 84 af 01 00 00    	je     c0037170 <__ssprint_r+0x1d0>
c0036fc1:	31 c9                	xor    %ecx,%ecx
c0036fc3:	31 d2                	xor    %edx,%edx
c0036fc5:	8b 03                	mov    (%ebx),%eax
c0036fc7:	89 ce                	mov    %ecx,%esi
c0036fc9:	85 f6                	test   %esi,%esi
c0036fcb:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036fce:	0f 84 ec 00 00 00    	je     c00370c0 <__ssprint_r+0x120>
c0036fd4:	8b 53 08             	mov    0x8(%ebx),%edx
c0036fd7:	39 d6                	cmp    %edx,%esi
c0036fd9:	0f 82 fc 00 00 00    	jb     c00370db <__ssprint_r+0x13b>
c0036fdf:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036fe3:	66 f7 c1 80 04       	test   $0x480,%cx
c0036fe8:	0f 84 fa 00 00 00    	je     c00370e8 <__ssprint_r+0x148>
c0036fee:	8b 53 10             	mov    0x10(%ebx),%edx
c0036ff1:	29 d0                	sub    %edx,%eax
c0036ff3:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036ff6:	8b 43 14             	mov    0x14(%ebx),%eax
c0036ff9:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036ffc:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036fff:	89 c2                	mov    %eax,%edx
c0037001:	c1 ea 1f             	shr    $0x1f,%edx
c0037004:	01 d0                	add    %edx,%eax
c0037006:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0037009:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003700c:	d1 7d e0             	sarl   -0x20(%ebp)
c003700f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0037013:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0037016:	0f 83 34 01 00 00    	jae    c0037150 <__ssprint_r+0x1b0>
c003701c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003701f:	80 e5 04             	and    $0x4,%ch
c0037022:	0f 84 c8 00 00 00    	je     c00370f0 <__ssprint_r+0x150>
c0037028:	89 44 24 04          	mov    %eax,0x4(%esp)
c003702c:	8b 45 08             	mov    0x8(%ebp),%eax
c003702f:	89 04 24             	mov    %eax,(%esp)
c0037032:	e8 59 e8 ff ff       	call   c0035890 <_malloc_r>
c0037037:	85 c0                	test   %eax,%eax
c0037039:	89 c2                	mov    %eax,%edx
c003703b:	0f 84 e1 00 00 00    	je     c0037122 <__ssprint_r+0x182>
c0037041:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0037044:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0037047:	89 44 24 08          	mov    %eax,0x8(%esp)
c003704b:	8b 43 10             	mov    0x10(%ebx),%eax
c003704e:	89 14 24             	mov    %edx,(%esp)
c0037051:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037055:	e8 0a b2 ff ff       	call   c0032264 <memcpy>
c003705a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c003705e:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0037061:	66 25 7f fb          	and    $0xfb7f,%ax
c0037065:	0c 80                	or     $0x80,%al
c0037067:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c003706b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003706e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0037071:	89 53 10             	mov    %edx,0x10(%ebx)
c0037074:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0037077:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c003707a:	01 d0                	add    %edx,%eax
c003707c:	89 03                	mov    %eax,(%ebx)
c003707e:	89 f2                	mov    %esi,%edx
c0037080:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0037083:	89 f1                	mov    %esi,%ecx
c0037085:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0037089:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c003708c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003708f:	89 04 24             	mov    %eax,(%esp)
c0037092:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0037095:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0037099:	e8 22 13 00 00       	call   c00383c0 <memmove>
c003709e:	8b 03                	mov    (%ebx),%eax
c00370a0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00370a3:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00370a6:	29 53 08             	sub    %edx,0x8(%ebx)
c00370a9:	01 c8                	add    %ecx,%eax
c00370ab:	8b 4d 10             	mov    0x10(%ebp),%ecx
c00370ae:	89 03                	mov    %eax,(%ebx)
c00370b0:	8b 51 08             	mov    0x8(%ecx),%edx
c00370b3:	29 f2                	sub    %esi,%edx
c00370b5:	85 d2                	test   %edx,%edx
c00370b7:	89 51 08             	mov    %edx,0x8(%ecx)
c00370ba:	0f 84 98 00 00 00    	je     c0037158 <__ssprint_r+0x1b8>
c00370c0:	8b 77 04             	mov    0x4(%edi),%esi
c00370c3:	83 c7 08             	add    $0x8,%edi
c00370c6:	8b 4f f8             	mov    -0x8(%edi),%ecx
c00370c9:	85 f6                	test   %esi,%esi
c00370cb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00370ce:	74 f0                	je     c00370c0 <__ssprint_r+0x120>
c00370d0:	8b 53 08             	mov    0x8(%ebx),%edx
c00370d3:	39 d6                	cmp    %edx,%esi
c00370d5:	0f 83 04 ff ff ff    	jae    c0036fdf <__ssprint_r+0x3f>
c00370db:	89 f2                	mov    %esi,%edx
c00370dd:	89 f1                	mov    %esi,%ecx
c00370df:	eb a4                	jmp    c0037085 <__ssprint_r+0xe5>
c00370e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00370e8:	89 d1                	mov    %edx,%ecx
c00370ea:	eb 99                	jmp    c0037085 <__ssprint_r+0xe5>
c00370ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00370f0:	89 44 24 08          	mov    %eax,0x8(%esp)
c00370f4:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00370f7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00370fb:	8b 45 08             	mov    0x8(%ebp),%eax
c00370fe:	89 04 24             	mov    %eax,(%esp)
c0037101:	e8 4a 13 00 00       	call   c0038450 <_realloc_r>
c0037106:	85 c0                	test   %eax,%eax
c0037108:	89 c2                	mov    %eax,%edx
c003710a:	0f 85 5b ff ff ff    	jne    c003706b <__ssprint_r+0xcb>
c0037110:	8b 43 10             	mov    0x10(%ebx),%eax
c0037113:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037117:	8b 45 08             	mov    0x8(%ebp),%eax
c003711a:	89 04 24             	mov    %eax,(%esp)
c003711d:	e8 3e 10 00 00       	call   c0038160 <_free_r>
c0037122:	8b 45 08             	mov    0x8(%ebp),%eax
c0037125:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c003712b:	8b 45 10             	mov    0x10(%ebp),%eax
c003712e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0037133:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c003713a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0037141:	83 c4 2c             	add    $0x2c,%esp
c0037144:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037149:	5b                   	pop    %ebx
c003714a:	5e                   	pop    %esi
c003714b:	5f                   	pop    %edi
c003714c:	5d                   	pop    %ebp
c003714d:	c3                   	ret    
c003714e:	66 90                	xchg   %ax,%ax
c0037150:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0037153:	e9 c7 fe ff ff       	jmp    c003701f <__ssprint_r+0x7f>
c0037158:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c003715f:	83 c4 2c             	add    $0x2c,%esp
c0037162:	31 c0                	xor    %eax,%eax
c0037164:	5b                   	pop    %ebx
c0037165:	5e                   	pop    %esi
c0037166:	5f                   	pop    %edi
c0037167:	5d                   	pop    %ebp
c0037168:	c3                   	ret    
c0037169:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037170:	8b 45 10             	mov    0x10(%ebp),%eax
c0037173:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c003717a:	83 c4 2c             	add    $0x2c,%esp
c003717d:	31 c0                	xor    %eax,%eax
c003717f:	5b                   	pop    %ebx
c0037180:	5e                   	pop    %esi
c0037181:	5f                   	pop    %edi
c0037182:	5d                   	pop    %ebp
c0037183:	c3                   	ret    
c0037184:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c003718a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0037190 <_svfiprintf_r>:
c0037190:	55                   	push   %ebp
c0037191:	89 e5                	mov    %esp,%ebp
c0037193:	57                   	push   %edi
c0037194:	56                   	push   %esi
c0037195:	53                   	push   %ebx
c0037196:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c003719c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003719f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c00371a3:	74 0b                	je     c00371b0 <_svfiprintf_r+0x20>
c00371a5:	8b 50 10             	mov    0x10(%eax),%edx
c00371a8:	85 d2                	test   %edx,%edx
c00371aa:	0f 84 1c 0d 00 00    	je     c0037ecc <_svfiprintf_r+0xd3c>
c00371b0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00371b3:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00371b6:	89 c6                	mov    %eax,%esi
c00371b8:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c00371be:	29 d8                	sub    %ebx,%eax
c00371c0:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c00371c7:	00 00 00 
c00371ca:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00371d1:	00 00 00 
c00371d4:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00371db:	00 00 00 
c00371de:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c00371e5:	00 00 00 
c00371e8:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c00371ee:	8b 45 10             	mov    0x10(%ebp),%eax
c00371f1:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00371f4:	0f b6 00             	movzbl (%eax),%eax
c00371f7:	84 c0                	test   %al,%al
c00371f9:	74 58                	je     c0037253 <_svfiprintf_r+0xc3>
c00371fb:	3c 25                	cmp    $0x25,%al
c00371fd:	75 13                	jne    c0037212 <_svfiprintf_r+0x82>
c00371ff:	eb 52                	jmp    c0037253 <_svfiprintf_r+0xc3>
c0037201:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037208:	84 c0                	test   %al,%al
c003720a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037210:	74 0a                	je     c003721c <_svfiprintf_r+0x8c>
c0037212:	83 c3 01             	add    $0x1,%ebx
c0037215:	0f b6 03             	movzbl (%ebx),%eax
c0037218:	3c 25                	cmp    $0x25,%al
c003721a:	75 ec                	jne    c0037208 <_svfiprintf_r+0x78>
c003721c:	89 df                	mov    %ebx,%edi
c003721e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0037221:	74 30                	je     c0037253 <_svfiprintf_r+0xc3>
c0037223:	8b 45 10             	mov    0x10(%ebp),%eax
c0037226:	83 c6 08             	add    $0x8,%esi
c0037229:	89 7e fc             	mov    %edi,-0x4(%esi)
c003722c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0037232:	89 46 f8             	mov    %eax,-0x8(%esi)
c0037235:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003723b:	83 c0 01             	add    $0x1,%eax
c003723e:	83 f8 07             	cmp    $0x7,%eax
c0037241:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037247:	0f 8f eb 0a 00 00    	jg     c0037d38 <_svfiprintf_r+0xba8>
c003724d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0037253:	80 3b 00             	cmpb   $0x0,(%ebx)
c0037256:	0f 84 11 09 00 00    	je     c0037b6d <_svfiprintf_r+0x9dd>
c003725c:	8d 43 01             	lea    0x1(%ebx),%eax
c003725f:	31 ff                	xor    %edi,%edi
c0037261:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037268:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c003726f:	ff ff ff 
c0037272:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0037279:	00 00 00 
c003727c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0037283:	00 00 00 
c0037286:	8d 50 01             	lea    0x1(%eax),%edx
c0037289:	0f be 00             	movsbl (%eax),%eax
c003728c:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003728f:	83 f9 58             	cmp    $0x58,%ecx
c0037292:	0f 87 63 03 00 00    	ja     c00375fb <_svfiprintf_r+0x46b>
c0037298:	ff 24 8d 28 95 03 c0 	jmp    *-0x3ffc6ad8(,%ecx,4)
c003729f:	90                   	nop
c00372a0:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00372a7:	89 d0                	mov    %edx,%eax
c00372a9:	eb db                	jmp    c0037286 <_svfiprintf_r+0xf6>
c00372ab:	8b 45 14             	mov    0x14(%ebp),%eax
c00372ae:	8b 5d 14             	mov    0x14(%ebp),%ebx
c00372b1:	8b 00                	mov    (%eax),%eax
c00372b3:	83 c3 04             	add    $0x4,%ebx
c00372b6:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00372b9:	85 c0                	test   %eax,%eax
c00372bb:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c00372c1:	79 e4                	jns    c00372a7 <_svfiprintf_r+0x117>
c00372c3:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c00372c9:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c00372d0:	89 d0                	mov    %edx,%eax
c00372d2:	eb b2                	jmp    c0037286 <_svfiprintf_r+0xf6>
c00372d4:	bf 2b 00 00 00       	mov    $0x2b,%edi
c00372d9:	89 d0                	mov    %edx,%eax
c00372db:	eb a9                	jmp    c0037286 <_svfiprintf_r+0xf6>
c00372dd:	8b 45 14             	mov    0x14(%ebp),%eax
c00372e0:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c00372e7:	89 55 10             	mov    %edx,0x10(%ebp)
c00372ea:	ba 02 00 00 00       	mov    $0x2,%edx
c00372ef:	8b 08                	mov    (%eax),%ecx
c00372f1:	83 c0 04             	add    $0x4,%eax
c00372f4:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c00372fb:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0037302:	89 45 14             	mov    %eax,0x14(%ebp)
c0037305:	c7 85 44 ff ff ff d3 	movl   $0xc00391d3,-0xbc(%ebp)
c003730c:	91 03 c0 
c003730f:	90                   	nop
c0037310:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037317:	31 ff                	xor    %edi,%edi
c0037319:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c003731f:	89 d8                	mov    %ebx,%eax
c0037321:	24 7f                	and    $0x7f,%al
c0037323:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c003732a:	0f 48 c3             	cmovs  %ebx,%eax
c003732d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0037333:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037339:	85 c0                	test   %eax,%eax
c003733b:	75 08                	jne    c0037345 <_svfiprintf_r+0x1b5>
c003733d:	85 c9                	test   %ecx,%ecx
c003733f:	0f 84 03 08 00 00    	je     c0037b48 <_svfiprintf_r+0x9b8>
c0037345:	80 fa 01             	cmp    $0x1,%dl
c0037348:	0f 84 8a 0a 00 00    	je     c0037dd8 <_svfiprintf_r+0xc48>
c003734e:	80 fa 02             	cmp    $0x2,%dl
c0037351:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037354:	0f 85 86 01 00 00    	jne    c00374e0 <_svfiprintf_r+0x350>
c003735a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0037360:	89 c8                	mov    %ecx,%eax
c0037362:	83 eb 01             	sub    $0x1,%ebx
c0037365:	83 e0 0f             	and    $0xf,%eax
c0037368:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c003736c:	c1 e9 04             	shr    $0x4,%ecx
c003736f:	85 c9                	test   %ecx,%ecx
c0037371:	88 03                	mov    %al,(%ebx)
c0037373:	75 eb                	jne    c0037360 <_svfiprintf_r+0x1d0>
c0037375:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037378:	29 d8                	sub    %ebx,%eax
c003737a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037380:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037386:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c003738c:	39 c1                	cmp    %eax,%ecx
c003738e:	0f 4d c1             	cmovge %ecx,%eax
c0037391:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0037397:	89 f8                	mov    %edi,%eax
c0037399:	3c 01                	cmp    $0x1,%al
c003739b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c00373a2:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00373a8:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c00373ae:	89 d0                	mov    %edx,%eax
c00373b0:	89 cf                	mov    %ecx,%edi
c00373b2:	83 c0 02             	add    $0x2,%eax
c00373b5:	83 e7 02             	and    $0x2,%edi
c00373b8:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c00373be:	89 cf                	mov    %ecx,%edi
c00373c0:	0f 44 c2             	cmove  %edx,%eax
c00373c3:	81 e7 84 00 00 00    	and    $0x84,%edi
c00373c9:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c00373cf:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00373d5:	0f 85 cd 04 00 00    	jne    c00378a8 <_svfiprintf_r+0x718>
c00373db:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c00373e1:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c00373e7:	85 ff                	test   %edi,%edi
c00373e9:	0f 8e b9 04 00 00    	jle    c00378a8 <_svfiprintf_r+0x718>
c00373ef:	83 ff 10             	cmp    $0x10,%edi
c00373f2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00373f8:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00373fe:	7e 7c                	jle    c003747c <_svfiprintf_r+0x2ec>
c0037400:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0037406:	89 f1                	mov    %esi,%ecx
c0037408:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003740b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003740e:	eb 08                	jmp    c0037418 <_svfiprintf_r+0x288>
c0037410:	83 ef 10             	sub    $0x10,%edi
c0037413:	83 ff 10             	cmp    $0x10,%edi
c0037416:	7e 5c                	jle    c0037474 <_svfiprintf_r+0x2e4>
c0037418:	83 c0 01             	add    $0x1,%eax
c003741b:	83 c2 10             	add    $0x10,%edx
c003741e:	c7 01 9c 96 03 c0    	movl   $0xc003969c,(%ecx)
c0037424:	83 c1 08             	add    $0x8,%ecx
c0037427:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003742e:	83 f8 07             	cmp    $0x7,%eax
c0037431:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037437:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003743d:	7e d1                	jle    c0037410 <_svfiprintf_r+0x280>
c003743f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037445:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037449:	89 74 24 04          	mov    %esi,0x4(%esp)
c003744d:	89 1c 24             	mov    %ebx,(%esp)
c0037450:	e8 4b fb ff ff       	call   c0036fa0 <__ssprint_r>
c0037455:	85 c0                	test   %eax,%eax
c0037457:	0f 85 3b 07 00 00    	jne    c0037b98 <_svfiprintf_r+0xa08>
c003745d:	83 ef 10             	sub    $0x10,%edi
c0037460:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037466:	83 ff 10             	cmp    $0x10,%edi
c0037469:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003746f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037472:	7f a4                	jg     c0037418 <_svfiprintf_r+0x288>
c0037474:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c003747a:	89 ce                	mov    %ecx,%esi
c003747c:	83 c0 01             	add    $0x1,%eax
c003747f:	01 fa                	add    %edi,%edx
c0037481:	c7 06 9c 96 03 c0    	movl   $0xc003969c,(%esi)
c0037487:	83 c6 08             	add    $0x8,%esi
c003748a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003748d:	83 f8 07             	cmp    $0x7,%eax
c0037490:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037496:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003749c:	0f 8e 12 04 00 00    	jle    c00378b4 <_svfiprintf_r+0x724>
c00374a2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00374a8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00374ac:	8b 45 0c             	mov    0xc(%ebp),%eax
c00374af:	89 44 24 04          	mov    %eax,0x4(%esp)
c00374b3:	8b 45 08             	mov    0x8(%ebp),%eax
c00374b6:	89 04 24             	mov    %eax,(%esp)
c00374b9:	e8 e2 fa ff ff       	call   c0036fa0 <__ssprint_r>
c00374be:	85 c0                	test   %eax,%eax
c00374c0:	0f 85 d2 06 00 00    	jne    c0037b98 <_svfiprintf_r+0xa08>
c00374c6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00374cc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00374cf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00374d5:	e9 da 03 00 00       	jmp    c00378b4 <_svfiprintf_r+0x724>
c00374da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00374e0:	89 c8                	mov    %ecx,%eax
c00374e2:	83 eb 01             	sub    $0x1,%ebx
c00374e5:	83 e0 07             	and    $0x7,%eax
c00374e8:	c1 e9 03             	shr    $0x3,%ecx
c00374eb:	83 c0 30             	add    $0x30,%eax
c00374ee:	85 c9                	test   %ecx,%ecx
c00374f0:	88 03                	mov    %al,(%ebx)
c00374f2:	75 ec                	jne    c00374e0 <_svfiprintf_r+0x350>
c00374f4:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00374fb:	89 da                	mov    %ebx,%edx
c00374fd:	0f 84 72 fe ff ff    	je     c0037375 <_svfiprintf_r+0x1e5>
c0037503:	3c 30                	cmp    $0x30,%al
c0037505:	0f 84 6a fe ff ff    	je     c0037375 <_svfiprintf_r+0x1e5>
c003750b:	83 eb 01             	sub    $0x1,%ebx
c003750e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037511:	29 d8                	sub    %ebx,%eax
c0037513:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0037517:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003751d:	e9 5e fe ff ff       	jmp    c0037380 <_svfiprintf_r+0x1f0>
c0037522:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037529:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037530:	89 55 10             	mov    %edx,0x10(%ebp)
c0037533:	8b 45 14             	mov    0x14(%ebp),%eax
c0037536:	0f 85 48 01 00 00    	jne    c0037684 <_svfiprintf_r+0x4f4>
c003753c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037543:	0f 84 3b 01 00 00    	je     c0037684 <_svfiprintf_r+0x4f4>
c0037549:	0f b7 08             	movzwl (%eax),%ecx
c003754c:	83 c0 04             	add    $0x4,%eax
c003754f:	31 d2                	xor    %edx,%edx
c0037551:	89 45 14             	mov    %eax,0x14(%ebp)
c0037554:	e9 b7 fd ff ff       	jmp    c0037310 <_svfiprintf_r+0x180>
c0037559:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037560:	89 f8                	mov    %edi,%eax
c0037562:	89 55 10             	mov    %edx,0x10(%ebp)
c0037565:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c003756b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037572:	8b 45 14             	mov    0x14(%ebp),%eax
c0037575:	75 0d                	jne    c0037584 <_svfiprintf_r+0x3f4>
c0037577:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003757e:	0f 85 f2 08 00 00    	jne    c0037e76 <_svfiprintf_r+0xce6>
c0037584:	8b 08                	mov    (%eax),%ecx
c0037586:	83 c0 04             	add    $0x4,%eax
c0037589:	89 45 14             	mov    %eax,0x14(%ebp)
c003758c:	85 c9                	test   %ecx,%ecx
c003758e:	0f 88 f3 08 00 00    	js     c0037e87 <_svfiprintf_r+0xcf7>
c0037594:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003759b:	ba 01 00 00 00       	mov    $0x1,%edx
c00375a0:	e9 74 fd ff ff       	jmp    c0037319 <_svfiprintf_r+0x189>
c00375a5:	0f be 02             	movsbl (%edx),%eax
c00375a8:	8d 5a 01             	lea    0x1(%edx),%ebx
c00375ab:	83 f8 2a             	cmp    $0x2a,%eax
c00375ae:	0f 84 af 09 00 00    	je     c0037f63 <_svfiprintf_r+0xdd3>
c00375b4:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00375b7:	31 d2                	xor    %edx,%edx
c00375b9:	83 f9 09             	cmp    $0x9,%ecx
c00375bc:	0f 87 90 09 00 00    	ja     c0037f52 <_svfiprintf_r+0xdc2>
c00375c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00375c8:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00375cb:	83 c3 01             	add    $0x1,%ebx
c00375ce:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c00375d1:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c00375d5:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00375d8:	83 f9 09             	cmp    $0x9,%ecx
c00375db:	76 eb                	jbe    c00375c8 <_svfiprintf_r+0x438>
c00375dd:	85 d2                	test   %edx,%edx
c00375df:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00375e4:	0f 48 d1             	cmovs  %ecx,%edx
c00375e7:	8d 48 e0             	lea    -0x20(%eax),%ecx
c00375ea:	83 f9 58             	cmp    $0x58,%ecx
c00375ed:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c00375f3:	89 da                	mov    %ebx,%edx
c00375f5:	0f 86 9d fc ff ff    	jbe    c0037298 <_svfiprintf_r+0x108>
c00375fb:	89 fb                	mov    %edi,%ebx
c00375fd:	85 c0                	test   %eax,%eax
c00375ff:	89 55 10             	mov    %edx,0x10(%ebp)
c0037602:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037608:	0f 84 5f 05 00 00    	je     c0037b6d <_svfiprintf_r+0x9dd>
c003760e:	88 45 80             	mov    %al,-0x80(%ebp)
c0037611:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037614:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003761b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037622:	00 00 00 
c0037625:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003762c:	00 00 00 
c003762f:	e9 5a 01 00 00       	jmp    c003778e <_svfiprintf_r+0x5fe>
c0037634:	31 db                	xor    %ebx,%ebx
c0037636:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037639:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037640:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c0037643:	83 c2 01             	add    $0x1,%edx
c0037646:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0037649:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c003764d:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037650:	83 f9 09             	cmp    $0x9,%ecx
c0037653:	76 eb                	jbe    c0037640 <_svfiprintf_r+0x4b0>
c0037655:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c003765b:	e9 2c fc ff ff       	jmp    c003728c <_svfiprintf_r+0xfc>
c0037660:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c0037667:	00 00 00 
c003766a:	89 d0                	mov    %edx,%eax
c003766c:	e9 15 fc ff ff       	jmp    c0037286 <_svfiprintf_r+0xf6>
c0037671:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037678:	89 55 10             	mov    %edx,0x10(%ebp)
c003767b:	8b 45 14             	mov    0x14(%ebp),%eax
c003767e:	0f 84 b8 fe ff ff    	je     c003753c <_svfiprintf_r+0x3ac>
c0037684:	8b 08                	mov    (%eax),%ecx
c0037686:	83 c0 04             	add    $0x4,%eax
c0037689:	31 d2                	xor    %edx,%edx
c003768b:	89 45 14             	mov    %eax,0x14(%ebp)
c003768e:	e9 7d fc ff ff       	jmp    c0037310 <_svfiprintf_r+0x180>
c0037693:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003769a:	89 f8                	mov    %edi,%eax
c003769c:	89 55 10             	mov    %edx,0x10(%ebp)
c003769f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00376a5:	0f 85 a2 07 00 00    	jne    c0037e4d <_svfiprintf_r+0xcbd>
c00376ab:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00376b2:	0f 84 95 07 00 00    	je     c0037e4d <_svfiprintf_r+0xcbd>
c00376b8:	8b 45 14             	mov    0x14(%ebp),%eax
c00376bb:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c00376c2:	8b 00                	mov    (%eax),%eax
c00376c4:	66 89 18             	mov    %bx,(%eax)
c00376c7:	8b 45 14             	mov    0x14(%ebp),%eax
c00376ca:	83 c0 04             	add    $0x4,%eax
c00376cd:	89 45 14             	mov    %eax,0x14(%ebp)
c00376d0:	e9 19 fb ff ff       	jmp    c00371ee <_svfiprintf_r+0x5e>
c00376d5:	89 fb                	mov    %edi,%ebx
c00376d7:	89 55 10             	mov    %edx,0x10(%ebp)
c00376da:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00376e0:	c7 85 44 ff ff ff d3 	movl   $0xc00391d3,-0xbc(%ebp)
c00376e7:	91 03 c0 
c00376ea:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00376f1:	8b 5d 14             	mov    0x14(%ebp),%ebx
c00376f4:	75 0d                	jne    c0037703 <_svfiprintf_r+0x573>
c00376f6:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00376fd:	0f 85 65 07 00 00    	jne    c0037e68 <_svfiprintf_r+0xcd8>
c0037703:	8b 0b                	mov    (%ebx),%ecx
c0037705:	83 c3 04             	add    $0x4,%ebx
c0037708:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003770b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037712:	ba 02 00 00 00       	mov    $0x2,%edx
c0037717:	0f 84 f3 fb ff ff    	je     c0037310 <_svfiprintf_r+0x180>
c003771d:	85 c9                	test   %ecx,%ecx
c003771f:	0f 84 eb fb ff ff    	je     c0037310 <_svfiprintf_r+0x180>
c0037725:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003772c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0037732:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037739:	e9 d2 fb ff ff       	jmp    c0037310 <_svfiprintf_r+0x180>
c003773e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c0037745:	89 d0                	mov    %edx,%eax
c0037747:	e9 3a fb ff ff       	jmp    c0037286 <_svfiprintf_r+0xf6>
c003774c:	89 f8                	mov    %edi,%eax
c003774e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037751:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037757:	e9 0f fe ff ff       	jmp    c003756b <_svfiprintf_r+0x3db>
c003775c:	8b 45 14             	mov    0x14(%ebp),%eax
c003775f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037762:	89 55 10             	mov    %edx,0x10(%ebp)
c0037765:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003776c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037773:	00 00 00 
c0037776:	8b 00                	mov    (%eax),%eax
c0037778:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003777f:	00 00 00 
c0037782:	88 45 80             	mov    %al,-0x80(%ebp)
c0037785:	8b 45 14             	mov    0x14(%ebp),%eax
c0037788:	83 c0 04             	add    $0x4,%eax
c003778b:	89 45 14             	mov    %eax,0x14(%ebp)
c003778e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037795:	00 00 00 
c0037798:	e9 05 fc ff ff       	jmp    c00373a2 <_svfiprintf_r+0x212>
c003779d:	89 fb                	mov    %edi,%ebx
c003779f:	89 55 10             	mov    %edx,0x10(%ebp)
c00377a2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00377a8:	c7 85 44 ff ff ff c2 	movl   $0xc00391c2,-0xbc(%ebp)
c00377af:	91 03 c0 
c00377b2:	e9 33 ff ff ff       	jmp    c00376ea <_svfiprintf_r+0x55a>
c00377b7:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00377be:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00377c5:	89 55 10             	mov    %edx,0x10(%ebp)
c00377c8:	8b 45 14             	mov    0x14(%ebp),%eax
c00377cb:	75 39                	jne    c0037806 <_svfiprintf_r+0x676>
c00377cd:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00377d4:	74 30                	je     c0037806 <_svfiprintf_r+0x676>
c00377d6:	0f b7 08             	movzwl (%eax),%ecx
c00377d9:	83 c0 04             	add    $0x4,%eax
c00377dc:	ba 01 00 00 00       	mov    $0x1,%edx
c00377e1:	89 45 14             	mov    %eax,0x14(%ebp)
c00377e4:	e9 27 fb ff ff       	jmp    c0037310 <_svfiprintf_r+0x180>
c00377e9:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c00377f0:	89 d0                	mov    %edx,%eax
c00377f2:	e9 8f fa ff ff       	jmp    c0037286 <_svfiprintf_r+0xf6>
c00377f7:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00377fe:	89 55 10             	mov    %edx,0x10(%ebp)
c0037801:	8b 45 14             	mov    0x14(%ebp),%eax
c0037804:	74 c7                	je     c00377cd <_svfiprintf_r+0x63d>
c0037806:	8b 08                	mov    (%eax),%ecx
c0037808:	83 c0 04             	add    $0x4,%eax
c003780b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037810:	89 45 14             	mov    %eax,0x14(%ebp)
c0037813:	e9 f8 fa ff ff       	jmp    c0037310 <_svfiprintf_r+0x180>
c0037818:	8b 45 14             	mov    0x14(%ebp),%eax
c003781b:	89 55 10             	mov    %edx,0x10(%ebp)
c003781e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037825:	8b 18                	mov    (%eax),%ebx
c0037827:	8d 50 04             	lea    0x4(%eax),%edx
c003782a:	85 db                	test   %ebx,%ebx
c003782c:	0f 84 cc 06 00 00    	je     c0037efe <_svfiprintf_r+0xd6e>
c0037832:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037838:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c003783e:	85 ff                	test   %edi,%edi
c0037840:	0f 88 59 06 00 00    	js     c0037e9f <_svfiprintf_r+0xd0f>
c0037846:	89 7c 24 08          	mov    %edi,0x8(%esp)
c003784a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037851:	00 
c0037852:	89 1c 24             	mov    %ebx,(%esp)
c0037855:	e8 76 e7 ff ff       	call   c0035fd0 <memchr>
c003785a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037860:	85 c0                	test   %eax,%eax
c0037862:	0f 84 c5 06 00 00    	je     c0037f2d <_svfiprintf_r+0xd9d>
c0037868:	29 d8                	sub    %ebx,%eax
c003786a:	39 f8                	cmp    %edi,%eax
c003786c:	0f 4f c7             	cmovg  %edi,%eax
c003786f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037876:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003787c:	89 55 14             	mov    %edx,0x14(%ebp)
c003787f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037886:	00 00 00 
c0037889:	e9 f2 fa ff ff       	jmp    c0037380 <_svfiprintf_r+0x1f0>
c003788e:	89 f8                	mov    %edi,%eax
c0037890:	84 c0                	test   %al,%al
c0037892:	b8 20 00 00 00       	mov    $0x20,%eax
c0037897:	0f 44 f8             	cmove  %eax,%edi
c003789a:	89 d0                	mov    %edx,%eax
c003789c:	e9 e5 f9 ff ff       	jmp    c0037286 <_svfiprintf_r+0xf6>
c00378a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00378a8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378ae:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00378b4:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c00378bb:	74 2e                	je     c00378eb <_svfiprintf_r+0x75b>
c00378bd:	83 c0 01             	add    $0x1,%eax
c00378c0:	83 c2 01             	add    $0x1,%edx
c00378c3:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c00378c9:	83 c6 08             	add    $0x8,%esi
c00378cc:	89 4e f8             	mov    %ecx,-0x8(%esi)
c00378cf:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c00378d6:	83 f8 07             	cmp    $0x7,%eax
c00378d9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00378df:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00378e5:	0f 8f b5 04 00 00    	jg     c0037da0 <_svfiprintf_r+0xc10>
c00378eb:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c00378f1:	85 c9                	test   %ecx,%ecx
c00378f3:	74 2e                	je     c0037923 <_svfiprintf_r+0x793>
c00378f5:	83 c0 01             	add    $0x1,%eax
c00378f8:	83 c2 02             	add    $0x2,%edx
c00378fb:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037901:	83 c6 08             	add    $0x8,%esi
c0037904:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037907:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003790e:	83 f8 07             	cmp    $0x7,%eax
c0037911:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037917:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003791d:	0f 8f 45 04 00 00    	jg     c0037d68 <_svfiprintf_r+0xbd8>
c0037923:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c003792a:	00 00 00 
c003792d:	0f 84 9d 02 00 00    	je     c0037bd0 <_svfiprintf_r+0xa40>
c0037933:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037939:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c003793f:	85 ff                	test   %edi,%edi
c0037941:	0f 8e e1 00 00 00    	jle    c0037a28 <_svfiprintf_r+0x898>
c0037947:	83 ff 10             	cmp    $0x10,%edi
c003794a:	0f 8e 7c 00 00 00    	jle    c00379cc <_svfiprintf_r+0x83c>
c0037950:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0037956:	89 f1                	mov    %esi,%ecx
c0037958:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003795b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003795e:	eb 08                	jmp    c0037968 <_svfiprintf_r+0x7d8>
c0037960:	83 ef 10             	sub    $0x10,%edi
c0037963:	83 ff 10             	cmp    $0x10,%edi
c0037966:	7e 5c                	jle    c00379c4 <_svfiprintf_r+0x834>
c0037968:	83 c0 01             	add    $0x1,%eax
c003796b:	83 c2 10             	add    $0x10,%edx
c003796e:	c7 01 8c 96 03 c0    	movl   $0xc003968c,(%ecx)
c0037974:	83 c1 08             	add    $0x8,%ecx
c0037977:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003797e:	83 f8 07             	cmp    $0x7,%eax
c0037981:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037987:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003798d:	7e d1                	jle    c0037960 <_svfiprintf_r+0x7d0>
c003798f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037995:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037999:	89 74 24 04          	mov    %esi,0x4(%esp)
c003799d:	89 1c 24             	mov    %ebx,(%esp)
c00379a0:	e8 fb f5 ff ff       	call   c0036fa0 <__ssprint_r>
c00379a5:	85 c0                	test   %eax,%eax
c00379a7:	0f 85 eb 01 00 00    	jne    c0037b98 <_svfiprintf_r+0xa08>
c00379ad:	83 ef 10             	sub    $0x10,%edi
c00379b0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00379b6:	83 ff 10             	cmp    $0x10,%edi
c00379b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00379bf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00379c2:	7f a4                	jg     c0037968 <_svfiprintf_r+0x7d8>
c00379c4:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00379ca:	89 ce                	mov    %ecx,%esi
c00379cc:	83 c0 01             	add    $0x1,%eax
c00379cf:	01 fa                	add    %edi,%edx
c00379d1:	c7 06 8c 96 03 c0    	movl   $0xc003968c,(%esi)
c00379d7:	83 c6 08             	add    $0x8,%esi
c00379da:	89 7e fc             	mov    %edi,-0x4(%esi)
c00379dd:	83 f8 07             	cmp    $0x7,%eax
c00379e0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00379e6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00379ec:	7e 3a                	jle    c0037a28 <_svfiprintf_r+0x898>
c00379ee:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00379f4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00379f8:	8b 45 0c             	mov    0xc(%ebp),%eax
c00379fb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00379ff:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a02:	89 04 24             	mov    %eax,(%esp)
c0037a05:	e8 96 f5 ff ff       	call   c0036fa0 <__ssprint_r>
c0037a0a:	85 c0                	test   %eax,%eax
c0037a0c:	0f 85 86 01 00 00    	jne    c0037b98 <_svfiprintf_r+0xa08>
c0037a12:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037a18:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037a1b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037a21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037a28:	89 1e                	mov    %ebx,(%esi)
c0037a2a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0037a30:	83 c0 01             	add    $0x1,%eax
c0037a33:	83 c6 08             	add    $0x8,%esi
c0037a36:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037a3c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c0037a3f:	01 da                	add    %ebx,%edx
c0037a41:	83 f8 07             	cmp    $0x7,%eax
c0037a44:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037a4a:	0f 8f 80 02 00 00    	jg     c0037cd0 <_svfiprintf_r+0xb40>
c0037a50:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0037a57:	0f 84 b9 00 00 00    	je     c0037b16 <_svfiprintf_r+0x986>
c0037a5d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037a63:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037a69:	85 ff                	test   %edi,%edi
c0037a6b:	0f 8e a5 00 00 00    	jle    c0037b16 <_svfiprintf_r+0x986>
c0037a71:	83 ff 10             	cmp    $0x10,%edi
c0037a74:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037a7a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0037a80:	7e 71                	jle    c0037af3 <_svfiprintf_r+0x963>
c0037a82:	89 f1                	mov    %esi,%ecx
c0037a84:	8b 75 08             	mov    0x8(%ebp),%esi
c0037a87:	eb 0f                	jmp    c0037a98 <_svfiprintf_r+0x908>
c0037a89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037a90:	83 ef 10             	sub    $0x10,%edi
c0037a93:	83 ff 10             	cmp    $0x10,%edi
c0037a96:	7e 59                	jle    c0037af1 <_svfiprintf_r+0x961>
c0037a98:	83 c0 01             	add    $0x1,%eax
c0037a9b:	83 c2 10             	add    $0x10,%edx
c0037a9e:	c7 01 9c 96 03 c0    	movl   $0xc003969c,(%ecx)
c0037aa4:	83 c1 08             	add    $0x8,%ecx
c0037aa7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0037aae:	83 f8 07             	cmp    $0x7,%eax
c0037ab1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037ab7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037abd:	7e d1                	jle    c0037a90 <_svfiprintf_r+0x900>
c0037abf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037ac2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037ac6:	89 34 24             	mov    %esi,(%esp)
c0037ac9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037acd:	e8 ce f4 ff ff       	call   c0036fa0 <__ssprint_r>
c0037ad2:	85 c0                	test   %eax,%eax
c0037ad4:	0f 85 be 00 00 00    	jne    c0037b98 <_svfiprintf_r+0xa08>
c0037ada:	83 ef 10             	sub    $0x10,%edi
c0037add:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037ae3:	83 ff 10             	cmp    $0x10,%edi
c0037ae6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037aec:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037aef:	7f a7                	jg     c0037a98 <_svfiprintf_r+0x908>
c0037af1:	89 ce                	mov    %ecx,%esi
c0037af3:	83 c0 01             	add    $0x1,%eax
c0037af6:	01 fa                	add    %edi,%edx
c0037af8:	83 f8 07             	cmp    $0x7,%eax
c0037afb:	c7 06 9c 96 03 c0    	movl   $0xc003969c,(%esi)
c0037b01:	89 7e 04             	mov    %edi,0x4(%esi)
c0037b04:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037b0a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037b10:	0f 8f ee 02 00 00    	jg     c0037e04 <_svfiprintf_r+0xc74>
c0037b16:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c0037b1c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037b22:	39 c6                	cmp    %eax,%esi
c0037b24:	0f 4d c6             	cmovge %esi,%eax
c0037b27:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c0037b2d:	85 d2                	test   %edx,%edx
c0037b2f:	0f 85 d3 01 00 00    	jne    c0037d08 <_svfiprintf_r+0xb78>
c0037b35:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0037b3c:	00 00 00 
c0037b3f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037b42:	e9 a7 f6 ff ff       	jmp    c00371ee <_svfiprintf_r+0x5e>
c0037b47:	90                   	nop
c0037b48:	84 d2                	test   %dl,%dl
c0037b4a:	75 6c                	jne    c0037bb8 <_svfiprintf_r+0xa28>
c0037b4c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037b53:	74 63                	je     c0037bb8 <_svfiprintf_r+0xa28>
c0037b55:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037b5b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037b5e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0037b62:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037b68:	e9 13 f8 ff ff       	jmp    c0037380 <_svfiprintf_r+0x1f0>
c0037b6d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0037b73:	85 c0                	test   %eax,%eax
c0037b75:	74 21                	je     c0037b98 <_svfiprintf_r+0xa08>
c0037b77:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037b7d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037b81:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037b84:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b88:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b8b:	89 04 24             	mov    %eax,(%esp)
c0037b8e:	e8 0d f4 ff ff       	call   c0036fa0 <__ssprint_r>
c0037b93:	90                   	nop
c0037b94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037b98:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037b9b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037ba0:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0037ba4:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c0037bab:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037bb1:	5b                   	pop    %ebx
c0037bb2:	5e                   	pop    %esi
c0037bb3:	5f                   	pop    %edi
c0037bb4:	5d                   	pop    %ebp
c0037bb5:	c3                   	ret    
c0037bb6:	66 90                	xchg   %ax,%ax
c0037bb8:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c0037bbf:	00 00 00 
c0037bc2:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037bc5:	e9 b6 f7 ff ff       	jmp    c0037380 <_svfiprintf_r+0x1f0>
c0037bca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037bd0:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037bd6:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037bdc:	85 ff                	test   %edi,%edi
c0037bde:	0f 8e 4f fd ff ff    	jle    c0037933 <_svfiprintf_r+0x7a3>
c0037be4:	83 ff 10             	cmp    $0x10,%edi
c0037be7:	0f 8e 7f 00 00 00    	jle    c0037c6c <_svfiprintf_r+0xadc>
c0037bed:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037bf3:	89 f1                	mov    %esi,%ecx
c0037bf5:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037bf8:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037bfb:	eb 0b                	jmp    c0037c08 <_svfiprintf_r+0xa78>
c0037bfd:	8d 76 00             	lea    0x0(%esi),%esi
c0037c00:	83 ef 10             	sub    $0x10,%edi
c0037c03:	83 ff 10             	cmp    $0x10,%edi
c0037c06:	7e 5c                	jle    c0037c64 <_svfiprintf_r+0xad4>
c0037c08:	83 c0 01             	add    $0x1,%eax
c0037c0b:	83 c2 10             	add    $0x10,%edx
c0037c0e:	c7 01 8c 96 03 c0    	movl   $0xc003968c,(%ecx)
c0037c14:	83 c1 08             	add    $0x8,%ecx
c0037c17:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0037c1e:	83 f8 07             	cmp    $0x7,%eax
c0037c21:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037c27:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037c2d:	7e d1                	jle    c0037c00 <_svfiprintf_r+0xa70>
c0037c2f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037c35:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037c39:	89 74 24 04          	mov    %esi,0x4(%esp)
c0037c3d:	89 1c 24             	mov    %ebx,(%esp)
c0037c40:	e8 5b f3 ff ff       	call   c0036fa0 <__ssprint_r>
c0037c45:	85 c0                	test   %eax,%eax
c0037c47:	0f 85 4b ff ff ff    	jne    c0037b98 <_svfiprintf_r+0xa08>
c0037c4d:	83 ef 10             	sub    $0x10,%edi
c0037c50:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037c56:	83 ff 10             	cmp    $0x10,%edi
c0037c59:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037c5f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037c62:	7f a4                	jg     c0037c08 <_svfiprintf_r+0xa78>
c0037c64:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c0037c6a:	89 ce                	mov    %ecx,%esi
c0037c6c:	83 c0 01             	add    $0x1,%eax
c0037c6f:	01 fa                	add    %edi,%edx
c0037c71:	c7 06 8c 96 03 c0    	movl   $0xc003968c,(%esi)
c0037c77:	83 c6 08             	add    $0x8,%esi
c0037c7a:	89 7e fc             	mov    %edi,-0x4(%esi)
c0037c7d:	83 f8 07             	cmp    $0x7,%eax
c0037c80:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037c86:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037c8c:	0f 8e a1 fc ff ff    	jle    c0037933 <_svfiprintf_r+0x7a3>
c0037c92:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037c98:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037c9c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037c9f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037ca3:	8b 45 08             	mov    0x8(%ebp),%eax
c0037ca6:	89 04 24             	mov    %eax,(%esp)
c0037ca9:	e8 f2 f2 ff ff       	call   c0036fa0 <__ssprint_r>
c0037cae:	85 c0                	test   %eax,%eax
c0037cb0:	0f 85 e2 fe ff ff    	jne    c0037b98 <_svfiprintf_r+0xa08>
c0037cb6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037cbc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037cbf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037cc5:	e9 69 fc ff ff       	jmp    c0037933 <_svfiprintf_r+0x7a3>
c0037cca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037cd0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037cd6:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037cda:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037cdd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037ce1:	8b 45 08             	mov    0x8(%ebp),%eax
c0037ce4:	89 04 24             	mov    %eax,(%esp)
c0037ce7:	e8 b4 f2 ff ff       	call   c0036fa0 <__ssprint_r>
c0037cec:	85 c0                	test   %eax,%eax
c0037cee:	0f 85 a4 fe ff ff    	jne    c0037b98 <_svfiprintf_r+0xa08>
c0037cf4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037cfa:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037cfd:	e9 4e fd ff ff       	jmp    c0037a50 <_svfiprintf_r+0x8c0>
c0037d02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037d08:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037d0e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037d12:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037d15:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037d19:	8b 45 08             	mov    0x8(%ebp),%eax
c0037d1c:	89 04 24             	mov    %eax,(%esp)
c0037d1f:	e8 7c f2 ff ff       	call   c0036fa0 <__ssprint_r>
c0037d24:	85 c0                	test   %eax,%eax
c0037d26:	0f 84 09 fe ff ff    	je     c0037b35 <_svfiprintf_r+0x9a5>
c0037d2c:	e9 67 fe ff ff       	jmp    c0037b98 <_svfiprintf_r+0xa08>
c0037d31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037d38:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037d3e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037d42:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037d45:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037d49:	8b 45 08             	mov    0x8(%ebp),%eax
c0037d4c:	89 04 24             	mov    %eax,(%esp)
c0037d4f:	e8 4c f2 ff ff       	call   c0036fa0 <__ssprint_r>
c0037d54:	85 c0                	test   %eax,%eax
c0037d56:	0f 85 3c fe ff ff    	jne    c0037b98 <_svfiprintf_r+0xa08>
c0037d5c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037d5f:	e9 e9 f4 ff ff       	jmp    c003724d <_svfiprintf_r+0xbd>
c0037d64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037d68:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037d6e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037d72:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037d75:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037d79:	8b 45 08             	mov    0x8(%ebp),%eax
c0037d7c:	89 04 24             	mov    %eax,(%esp)
c0037d7f:	e8 1c f2 ff ff       	call   c0036fa0 <__ssprint_r>
c0037d84:	85 c0                	test   %eax,%eax
c0037d86:	0f 85 0c fe ff ff    	jne    c0037b98 <_svfiprintf_r+0xa08>
c0037d8c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037d92:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037d95:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037d9b:	e9 83 fb ff ff       	jmp    c0037923 <_svfiprintf_r+0x793>
c0037da0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037da6:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037daa:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037dad:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037db1:	8b 45 08             	mov    0x8(%ebp),%eax
c0037db4:	89 04 24             	mov    %eax,(%esp)
c0037db7:	e8 e4 f1 ff ff       	call   c0036fa0 <__ssprint_r>
c0037dbc:	85 c0                	test   %eax,%eax
c0037dbe:	0f 85 d4 fd ff ff    	jne    c0037b98 <_svfiprintf_r+0xa08>
c0037dc4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037dca:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037dcd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037dd3:	e9 13 fb ff ff       	jmp    c00378eb <_svfiprintf_r+0x75b>
c0037dd8:	83 f9 09             	cmp    $0x9,%ecx
c0037ddb:	76 56                	jbe    c0037e33 <_svfiprintf_r+0xca3>
c0037ddd:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037de0:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037de5:	83 eb 01             	sub    $0x1,%ebx
c0037de8:	f7 e1                	mul    %ecx
c0037dea:	c1 ea 03             	shr    $0x3,%edx
c0037ded:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037df0:	01 c0                	add    %eax,%eax
c0037df2:	29 c1                	sub    %eax,%ecx
c0037df4:	83 c1 30             	add    $0x30,%ecx
c0037df7:	85 d2                	test   %edx,%edx
c0037df9:	88 0b                	mov    %cl,(%ebx)
c0037dfb:	89 d1                	mov    %edx,%ecx
c0037dfd:	75 e1                	jne    c0037de0 <_svfiprintf_r+0xc50>
c0037dff:	e9 71 f5 ff ff       	jmp    c0037375 <_svfiprintf_r+0x1e5>
c0037e04:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037e0a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037e0e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037e11:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e15:	8b 45 08             	mov    0x8(%ebp),%eax
c0037e18:	89 04 24             	mov    %eax,(%esp)
c0037e1b:	e8 80 f1 ff ff       	call   c0036fa0 <__ssprint_r>
c0037e20:	85 c0                	test   %eax,%eax
c0037e22:	0f 85 70 fd ff ff    	jne    c0037b98 <_svfiprintf_r+0xa08>
c0037e28:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037e2e:	e9 e3 fc ff ff       	jmp    c0037b16 <_svfiprintf_r+0x986>
c0037e33:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037e39:	83 c1 30             	add    $0x30,%ecx
c0037e3c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0037e3f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037e42:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037e48:	e9 33 f5 ff ff       	jmp    c0037380 <_svfiprintf_r+0x1f0>
c0037e4d:	8b 45 14             	mov    0x14(%ebp),%eax
c0037e50:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0037e56:	8b 00                	mov    (%eax),%eax
c0037e58:	89 18                	mov    %ebx,(%eax)
c0037e5a:	8b 45 14             	mov    0x14(%ebp),%eax
c0037e5d:	83 c0 04             	add    $0x4,%eax
c0037e60:	89 45 14             	mov    %eax,0x14(%ebp)
c0037e63:	e9 86 f3 ff ff       	jmp    c00371ee <_svfiprintf_r+0x5e>
c0037e68:	0f b7 0b             	movzwl (%ebx),%ecx
c0037e6b:	83 c3 04             	add    $0x4,%ebx
c0037e6e:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037e71:	e9 95 f8 ff ff       	jmp    c003770b <_svfiprintf_r+0x57b>
c0037e76:	0f bf 08             	movswl (%eax),%ecx
c0037e79:	83 c0 04             	add    $0x4,%eax
c0037e7c:	89 45 14             	mov    %eax,0x14(%ebp)
c0037e7f:	85 c9                	test   %ecx,%ecx
c0037e81:	0f 89 0d f7 ff ff    	jns    c0037594 <_svfiprintf_r+0x404>
c0037e87:	f7 d9                	neg    %ecx
c0037e89:	bf 2d 00 00 00       	mov    $0x2d,%edi
c0037e8e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0037e95:	ba 01 00 00 00       	mov    $0x1,%edx
c0037e9a:	e9 7a f4 ff ff       	jmp    c0037319 <_svfiprintf_r+0x189>
c0037e9f:	89 1c 24             	mov    %ebx,(%esp)
c0037ea2:	e8 79 f0 ff ff       	call   c0036f20 <strlen>
c0037ea7:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037ead:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037eb4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037ebb:	00 00 00 
c0037ebe:	89 55 14             	mov    %edx,0x14(%ebp)
c0037ec1:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037ec7:	e9 b4 f4 ff ff       	jmp    c0037380 <_svfiprintf_r+0x1f0>
c0037ecc:	8b 45 08             	mov    0x8(%ebp),%eax
c0037ecf:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037ed6:	00 
c0037ed7:	89 04 24             	mov    %eax,(%esp)
c0037eda:	e8 b1 d9 ff ff       	call   c0035890 <_malloc_r>
c0037edf:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037ee2:	85 c0                	test   %eax,%eax
c0037ee4:	89 06                	mov    %eax,(%esi)
c0037ee6:	89 46 10             	mov    %eax,0x10(%esi)
c0037ee9:	0f 84 a3 00 00 00    	je     c0037f92 <_svfiprintf_r+0xe02>
c0037eef:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037ef2:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037ef9:	e9 b2 f2 ff ff       	jmp    c00371b0 <_svfiprintf_r+0x20>
c0037efe:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037f04:	b8 06 00 00 00       	mov    $0x6,%eax
c0037f09:	89 55 14             	mov    %edx,0x14(%ebp)
c0037f0c:	83 ff 06             	cmp    $0x6,%edi
c0037f0f:	0f 46 c7             	cmovbe %edi,%eax
c0037f12:	85 c0                	test   %eax,%eax
c0037f14:	0f 49 d8             	cmovns %eax,%ebx
c0037f17:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037f1d:	bb e4 91 03 c0       	mov    $0xc00391e4,%ebx
c0037f22:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037f28:	e9 61 f8 ff ff       	jmp    c003778e <_svfiprintf_r+0x5fe>
c0037f2d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037f33:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037f3a:	89 55 14             	mov    %edx,0x14(%ebp)
c0037f3d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037f44:	00 00 00 
c0037f47:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037f4d:	e9 2e f4 ff ff       	jmp    c0037380 <_svfiprintf_r+0x1f0>
c0037f52:	89 da                	mov    %ebx,%edx
c0037f54:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037f5b:	00 00 00 
c0037f5e:	e9 29 f3 ff ff       	jmp    c003728c <_svfiprintf_r+0xfc>
c0037f63:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037f66:	89 da                	mov    %ebx,%edx
c0037f68:	8b 45 14             	mov    0x14(%ebp),%eax
c0037f6b:	8b 09                	mov    (%ecx),%ecx
c0037f6d:	83 c0 04             	add    $0x4,%eax
c0037f70:	89 45 14             	mov    %eax,0x14(%ebp)
c0037f73:	85 c9                	test   %ecx,%ecx
c0037f75:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037f7b:	0f 89 26 f3 ff ff    	jns    c00372a7 <_svfiprintf_r+0x117>
c0037f81:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037f88:	ff ff ff 
c0037f8b:	89 d0                	mov    %edx,%eax
c0037f8d:	e9 f4 f2 ff ff       	jmp    c0037286 <_svfiprintf_r+0xf6>
c0037f92:	8b 45 08             	mov    0x8(%ebp),%eax
c0037f95:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037f9b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037fa0:	e9 06 fc ff ff       	jmp    c0037bab <_svfiprintf_r+0xa1b>
c0037fa5:	66 90                	xchg   %ax,%ax
c0037fa7:	66 90                	xchg   %ax,%ax
c0037fa9:	66 90                	xchg   %ax,%ax
c0037fab:	66 90                	xchg   %ax,%ax
c0037fad:	66 90                	xchg   %ax,%ax
c0037faf:	90                   	nop

c0037fb0 <_calloc_r>:
c0037fb0:	55                   	push   %ebp
c0037fb1:	89 e5                	mov    %esp,%ebp
c0037fb3:	53                   	push   %ebx
c0037fb4:	83 ec 14             	sub    $0x14,%esp
c0037fb7:	8b 45 10             	mov    0x10(%ebp),%eax
c0037fba:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037fbe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037fc2:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fc5:	89 04 24             	mov    %eax,(%esp)
c0037fc8:	e8 c3 d8 ff ff       	call   c0035890 <_malloc_r>
c0037fcd:	85 c0                	test   %eax,%eax
c0037fcf:	89 c3                	mov    %eax,%ebx
c0037fd1:	0f 84 91 00 00 00    	je     c0038068 <_calloc_r+0xb8>
c0037fd7:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037fda:	83 e0 fc             	and    $0xfffffffc,%eax
c0037fdd:	83 e8 04             	sub    $0x4,%eax
c0037fe0:	83 f8 24             	cmp    $0x24,%eax
c0037fe3:	77 63                	ja     c0038048 <_calloc_r+0x98>
c0037fe5:	83 f8 13             	cmp    $0x13,%eax
c0037fe8:	89 da                	mov    %ebx,%edx
c0037fea:	77 1c                	ja     c0038008 <_calloc_r+0x58>
c0037fec:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037ff2:	89 d8                	mov    %ebx,%eax
c0037ff4:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037ffb:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0038002:	83 c4 14             	add    $0x14,%esp
c0038005:	5b                   	pop    %ebx
c0038006:	5d                   	pop    %ebp
c0038007:	c3                   	ret    
c0038008:	83 f8 1b             	cmp    $0x1b,%eax
c003800b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0038011:	8d 53 08             	lea    0x8(%ebx),%edx
c0038014:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c003801b:	76 cf                	jbe    c0037fec <_calloc_r+0x3c>
c003801d:	83 f8 24             	cmp    $0x24,%eax
c0038020:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0038027:	8d 53 10             	lea    0x10(%ebx),%edx
c003802a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0038031:	75 b9                	jne    c0037fec <_calloc_r+0x3c>
c0038033:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c003803a:	8d 53 18             	lea    0x18(%ebx),%edx
c003803d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0038044:	eb a6                	jmp    c0037fec <_calloc_r+0x3c>
c0038046:	66 90                	xchg   %ax,%ax
c0038048:	89 1c 24             	mov    %ebx,(%esp)
c003804b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003804f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0038056:	00 
c0038057:	e8 50 a2 ff ff       	call   c00322ac <memset>
c003805c:	83 c4 14             	add    $0x14,%esp
c003805f:	89 d8                	mov    %ebx,%eax
c0038061:	5b                   	pop    %ebx
c0038062:	5d                   	pop    %ebp
c0038063:	c3                   	ret    
c0038064:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038068:	31 c0                	xor    %eax,%eax
c003806a:	eb 96                	jmp    c0038002 <_calloc_r+0x52>
c003806c:	66 90                	xchg   %ax,%ax
c003806e:	66 90                	xchg   %ax,%ax

c0038070 <_malloc_trim_r>:
c0038070:	55                   	push   %ebp
c0038071:	89 e5                	mov    %esp,%ebp
c0038073:	57                   	push   %edi
c0038074:	56                   	push   %esi
c0038075:	53                   	push   %ebx
c0038076:	83 ec 1c             	sub    $0x1c,%esp
c0038079:	8b 75 08             	mov    0x8(%ebp),%esi
c003807c:	89 34 24             	mov    %esi,(%esp)
c003807f:	e8 ec df ff ff       	call   c0036070 <__malloc_lock>
c0038084:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0038089:	8b 58 04             	mov    0x4(%eax),%ebx
c003808c:	83 e3 fc             	and    $0xfffffffc,%ebx
c003808f:	89 d8                	mov    %ebx,%eax
c0038091:	2b 45 0c             	sub    0xc(%ebp),%eax
c0038094:	05 ef 0f 00 00       	add    $0xfef,%eax
c0038099:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c003809e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c00380a4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c00380aa:	7e 1c                	jle    c00380c8 <_malloc_trim_r+0x58>
c00380ac:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00380b3:	00 
c00380b4:	89 34 24             	mov    %esi,(%esp)
c00380b7:	e8 b4 ed ff ff       	call   c0036e70 <_sbrk_r>
c00380bc:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c00380c2:	01 da                	add    %ebx,%edx
c00380c4:	39 d0                	cmp    %edx,%eax
c00380c6:	74 18                	je     c00380e0 <_malloc_trim_r+0x70>
c00380c8:	89 34 24             	mov    %esi,(%esp)
c00380cb:	e8 b0 df ff ff       	call   c0036080 <__malloc_unlock>
c00380d0:	83 c4 1c             	add    $0x1c,%esp
c00380d3:	31 c0                	xor    %eax,%eax
c00380d5:	5b                   	pop    %ebx
c00380d6:	5e                   	pop    %esi
c00380d7:	5f                   	pop    %edi
c00380d8:	5d                   	pop    %ebp
c00380d9:	c3                   	ret    
c00380da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00380e0:	89 f8                	mov    %edi,%eax
c00380e2:	f7 d8                	neg    %eax
c00380e4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00380e8:	89 34 24             	mov    %esi,(%esp)
c00380eb:	e8 80 ed ff ff       	call   c0036e70 <_sbrk_r>
c00380f0:	83 f8 ff             	cmp    $0xffffffff,%eax
c00380f3:	74 2b                	je     c0038120 <_malloc_trim_r+0xb0>
c00380f5:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c00380fa:	29 fb                	sub    %edi,%ebx
c00380fc:	83 cb 01             	or     $0x1,%ebx
c00380ff:	29 3d 20 f0 06 c0    	sub    %edi,0xc006f020
c0038105:	89 58 04             	mov    %ebx,0x4(%eax)
c0038108:	89 34 24             	mov    %esi,(%esp)
c003810b:	e8 70 df ff ff       	call   c0036080 <__malloc_unlock>
c0038110:	83 c4 1c             	add    $0x1c,%esp
c0038113:	b8 01 00 00 00       	mov    $0x1,%eax
c0038118:	5b                   	pop    %ebx
c0038119:	5e                   	pop    %esi
c003811a:	5f                   	pop    %edi
c003811b:	5d                   	pop    %ebp
c003811c:	c3                   	ret    
c003811d:	8d 76 00             	lea    0x0(%esi),%esi
c0038120:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0038127:	00 
c0038128:	89 34 24             	mov    %esi,(%esp)
c003812b:	e8 40 ed ff ff       	call   c0036e70 <_sbrk_r>
c0038130:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0038136:	89 c1                	mov    %eax,%ecx
c0038138:	29 d1                	sub    %edx,%ecx
c003813a:	83 f9 0f             	cmp    $0xf,%ecx
c003813d:	7e 89                	jle    c00380c8 <_malloc_trim_r+0x58>
c003813f:	2b 05 20 c5 03 c0    	sub    0xc003c520,%eax
c0038145:	83 c9 01             	or     $0x1,%ecx
c0038148:	89 4a 04             	mov    %ecx,0x4(%edx)
c003814b:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0038150:	e9 73 ff ff ff       	jmp    c00380c8 <_malloc_trim_r+0x58>
c0038155:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0038160 <_free_r>:
c0038160:	55                   	push   %ebp
c0038161:	89 e5                	mov    %esp,%ebp
c0038163:	57                   	push   %edi
c0038164:	56                   	push   %esi
c0038165:	53                   	push   %ebx
c0038166:	83 ec 1c             	sub    $0x1c,%esp
c0038169:	8b 75 0c             	mov    0xc(%ebp),%esi
c003816c:	8b 45 08             	mov    0x8(%ebp),%eax
c003816f:	85 f6                	test   %esi,%esi
c0038171:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038174:	0f 84 fe 00 00 00    	je     c0038278 <_free_r+0x118>
c003817a:	89 04 24             	mov    %eax,(%esp)
c003817d:	e8 ee de ff ff       	call   c0036070 <__malloc_lock>
c0038182:	8b 7e fc             	mov    -0x4(%esi),%edi
c0038185:	8d 56 f8             	lea    -0x8(%esi),%edx
c0038188:	89 f8                	mov    %edi,%eax
c003818a:	83 e0 fe             	and    $0xfffffffe,%eax
c003818d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0038190:	8b 59 04             	mov    0x4(%ecx),%ebx
c0038193:	83 e3 fc             	and    $0xfffffffc,%ebx
c0038196:	39 0d 48 c5 03 c0    	cmp    %ecx,0xc003c548
c003819c:	0f 84 0e 01 00 00    	je     c00382b0 <_free_r+0x150>
c00381a2:	83 e7 01             	and    $0x1,%edi
c00381a5:	89 59 04             	mov    %ebx,0x4(%ecx)
c00381a8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c00381af:	75 1f                	jne    c00381d0 <_free_r+0x70>
c00381b1:	8b 76 f8             	mov    -0x8(%esi),%esi
c00381b4:	29 f2                	sub    %esi,%edx
c00381b6:	01 f0                	add    %esi,%eax
c00381b8:	8b 72 08             	mov    0x8(%edx),%esi
c00381bb:	81 fe 48 c5 03 c0    	cmp    $0xc003c548,%esi
c00381c1:	0f 84 39 01 00 00    	je     c0038300 <_free_r+0x1a0>
c00381c7:	8b 7a 0c             	mov    0xc(%edx),%edi
c00381ca:	89 7e 0c             	mov    %edi,0xc(%esi)
c00381cd:	89 77 08             	mov    %esi,0x8(%edi)
c00381d0:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c00381d5:	75 21                	jne    c00381f8 <_free_r+0x98>
c00381d7:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00381da:	01 d8                	add    %ebx,%eax
c00381dc:	8b 59 08             	mov    0x8(%ecx),%ebx
c00381df:	85 f6                	test   %esi,%esi
c00381e1:	75 0c                	jne    c00381ef <_free_r+0x8f>
c00381e3:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c00381e9:	0f 84 21 01 00 00    	je     c0038310 <_free_r+0x1b0>
c00381ef:	8b 49 0c             	mov    0xc(%ecx),%ecx
c00381f2:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c00381f5:	89 59 08             	mov    %ebx,0x8(%ecx)
c00381f8:	89 c1                	mov    %eax,%ecx
c00381fa:	83 c9 01             	or     $0x1,%ecx
c00381fd:	89 4a 04             	mov    %ecx,0x4(%edx)
c0038200:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038203:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0038206:	85 c9                	test   %ecx,%ecx
c0038208:	75 56                	jne    c0038260 <_free_r+0x100>
c003820a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c003820f:	76 6f                	jbe    c0038280 <_free_r+0x120>
c0038211:	89 c1                	mov    %eax,%ecx
c0038213:	c1 e9 09             	shr    $0x9,%ecx
c0038216:	83 f9 04             	cmp    $0x4,%ecx
c0038219:	0f 87 21 01 00 00    	ja     c0038340 <_free_r+0x1e0>
c003821f:	89 c1                	mov    %eax,%ecx
c0038221:	c1 e9 06             	shr    $0x6,%ecx
c0038224:	83 c1 38             	add    $0x38,%ecx
c0038227:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c003822a:	8d 34 9d 40 c5 03 c0 	lea    -0x3ffc3ac0(,%ebx,4),%esi
c0038231:	8b 5e 08             	mov    0x8(%esi),%ebx
c0038234:	39 f3                	cmp    %esi,%ebx
c0038236:	0f 84 14 01 00 00    	je     c0038350 <_free_r+0x1f0>
c003823c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038240:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0038243:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038246:	39 c8                	cmp    %ecx,%eax
c0038248:	73 07                	jae    c0038251 <_free_r+0xf1>
c003824a:	8b 5b 08             	mov    0x8(%ebx),%ebx
c003824d:	39 de                	cmp    %ebx,%esi
c003824f:	75 ef                	jne    c0038240 <_free_r+0xe0>
c0038251:	8b 43 0c             	mov    0xc(%ebx),%eax
c0038254:	89 42 0c             	mov    %eax,0xc(%edx)
c0038257:	89 5a 08             	mov    %ebx,0x8(%edx)
c003825a:	89 50 08             	mov    %edx,0x8(%eax)
c003825d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0038260:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038263:	89 45 08             	mov    %eax,0x8(%ebp)
c0038266:	83 c4 1c             	add    $0x1c,%esp
c0038269:	5b                   	pop    %ebx
c003826a:	5e                   	pop    %esi
c003826b:	5f                   	pop    %edi
c003826c:	5d                   	pop    %ebp
c003826d:	e9 0e de ff ff       	jmp    c0036080 <__malloc_unlock>
c0038272:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038278:	83 c4 1c             	add    $0x1c,%esp
c003827b:	5b                   	pop    %ebx
c003827c:	5e                   	pop    %esi
c003827d:	5f                   	pop    %edi
c003827e:	5d                   	pop    %ebp
c003827f:	c3                   	ret    
c0038280:	c1 e8 03             	shr    $0x3,%eax
c0038283:	bb 01 00 00 00       	mov    $0x1,%ebx
c0038288:	89 c1                	mov    %eax,%ecx
c003828a:	c1 f9 02             	sar    $0x2,%ecx
c003828d:	8d 04 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%eax
c0038294:	d3 e3                	shl    %cl,%ebx
c0038296:	8b 48 08             	mov    0x8(%eax),%ecx
c0038299:	09 1d 44 c5 03 c0    	or     %ebx,0xc003c544
c003829f:	89 42 0c             	mov    %eax,0xc(%edx)
c00382a2:	89 4a 08             	mov    %ecx,0x8(%edx)
c00382a5:	89 50 08             	mov    %edx,0x8(%eax)
c00382a8:	89 51 0c             	mov    %edx,0xc(%ecx)
c00382ab:	eb b3                	jmp    c0038260 <_free_r+0x100>
c00382ad:	8d 76 00             	lea    0x0(%esi),%esi
c00382b0:	01 d8                	add    %ebx,%eax
c00382b2:	83 e7 01             	and    $0x1,%edi
c00382b5:	75 13                	jne    c00382ca <_free_r+0x16a>
c00382b7:	8b 4e f8             	mov    -0x8(%esi),%ecx
c00382ba:	29 ca                	sub    %ecx,%edx
c00382bc:	01 c8                	add    %ecx,%eax
c00382be:	8b 5a 08             	mov    0x8(%edx),%ebx
c00382c1:	8b 4a 0c             	mov    0xc(%edx),%ecx
c00382c4:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c00382c7:	89 59 08             	mov    %ebx,0x8(%ecx)
c00382ca:	89 c1                	mov    %eax,%ecx
c00382cc:	83 c9 01             	or     $0x1,%ecx
c00382cf:	3b 05 24 c5 03 c0    	cmp    0xc003c524,%eax
c00382d5:	89 4a 04             	mov    %ecx,0x4(%edx)
c00382d8:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c00382de:	72 80                	jb     c0038260 <_free_r+0x100>
c00382e0:	a1 50 f0 06 c0       	mov    0xc006f050,%eax
c00382e5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00382e9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00382ec:	89 04 24             	mov    %eax,(%esp)
c00382ef:	e8 7c fd ff ff       	call   c0038070 <_malloc_trim_r>
c00382f4:	e9 67 ff ff ff       	jmp    c0038260 <_free_r+0x100>
c00382f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038300:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0038307:	e9 c4 fe ff ff       	jmp    c00381d0 <_free_r+0x70>
c003830c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038310:	89 c1                	mov    %eax,%ecx
c0038312:	83 c9 01             	or     $0x1,%ecx
c0038315:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c003831b:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0038321:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0038328:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c003832f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0038332:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0038335:	e9 26 ff ff ff       	jmp    c0038260 <_free_r+0x100>
c003833a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038340:	83 f9 14             	cmp    $0x14,%ecx
c0038343:	77 23                	ja     c0038368 <_free_r+0x208>
c0038345:	83 c1 5b             	add    $0x5b,%ecx
c0038348:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c003834b:	e9 da fe ff ff       	jmp    c003822a <_free_r+0xca>
c0038350:	c1 f9 02             	sar    $0x2,%ecx
c0038353:	b8 01 00 00 00       	mov    $0x1,%eax
c0038358:	d3 e0                	shl    %cl,%eax
c003835a:	09 05 44 c5 03 c0    	or     %eax,0xc003c544
c0038360:	89 d8                	mov    %ebx,%eax
c0038362:	e9 ed fe ff ff       	jmp    c0038254 <_free_r+0xf4>
c0038367:	90                   	nop
c0038368:	83 f9 54             	cmp    $0x54,%ecx
c003836b:	77 10                	ja     c003837d <_free_r+0x21d>
c003836d:	89 c1                	mov    %eax,%ecx
c003836f:	c1 e9 0c             	shr    $0xc,%ecx
c0038372:	83 c1 6e             	add    $0x6e,%ecx
c0038375:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0038378:	e9 ad fe ff ff       	jmp    c003822a <_free_r+0xca>
c003837d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0038383:	77 10                	ja     c0038395 <_free_r+0x235>
c0038385:	89 c1                	mov    %eax,%ecx
c0038387:	c1 e9 0f             	shr    $0xf,%ecx
c003838a:	83 c1 77             	add    $0x77,%ecx
c003838d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0038390:	e9 95 fe ff ff       	jmp    c003822a <_free_r+0xca>
c0038395:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c003839b:	77 10                	ja     c00383ad <_free_r+0x24d>
c003839d:	89 c1                	mov    %eax,%ecx
c003839f:	c1 e9 12             	shr    $0x12,%ecx
c00383a2:	83 c1 7c             	add    $0x7c,%ecx
c00383a5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c00383a8:	e9 7d fe ff ff       	jmp    c003822a <_free_r+0xca>
c00383ad:	bb fc 00 00 00       	mov    $0xfc,%ebx
c00383b2:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c00383b7:	e9 6e fe ff ff       	jmp    c003822a <_free_r+0xca>
c00383bc:	66 90                	xchg   %ax,%ax
c00383be:	66 90                	xchg   %ax,%ax

c00383c0 <memmove>:
c00383c0:	55                   	push   %ebp
c00383c1:	89 e5                	mov    %esp,%ebp
c00383c3:	56                   	push   %esi
c00383c4:	57                   	push   %edi
c00383c5:	53                   	push   %ebx
c00383c6:	8b 7d 08             	mov    0x8(%ebp),%edi
c00383c9:	8b 4d 10             	mov    0x10(%ebp),%ecx
c00383cc:	8b 75 0c             	mov    0xc(%ebp),%esi
c00383cf:	fc                   	cld    
c00383d0:	39 fe                	cmp    %edi,%esi
c00383d2:	73 43                	jae    c0038417 <memmove+0x57>
c00383d4:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c00383d8:	39 df                	cmp    %ebx,%edi
c00383da:	77 3b                	ja     c0038417 <memmove+0x57>
c00383dc:	01 ce                	add    %ecx,%esi
c00383de:	01 cf                	add    %ecx,%edi
c00383e0:	fd                   	std    
c00383e1:	83 f9 08             	cmp    $0x8,%ecx
c00383e4:	76 2b                	jbe    c0038411 <memmove+0x51>
c00383e6:	89 fa                	mov    %edi,%edx
c00383e8:	89 cb                	mov    %ecx,%ebx
c00383ea:	83 e2 03             	and    $0x3,%edx
c00383ed:	74 0c                	je     c00383fb <memmove+0x3b>
c00383ef:	89 d1                	mov    %edx,%ecx
c00383f1:	4e                   	dec    %esi
c00383f2:	4f                   	dec    %edi
c00383f3:	29 cb                	sub    %ecx,%ebx
c00383f5:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c00383f7:	89 d9                	mov    %ebx,%ecx
c00383f9:	46                   	inc    %esi
c00383fa:	47                   	inc    %edi
c00383fb:	c1 e9 02             	shr    $0x2,%ecx
c00383fe:	83 ee 04             	sub    $0x4,%esi
c0038401:	83 ef 04             	sub    $0x4,%edi
c0038404:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0038406:	83 c6 04             	add    $0x4,%esi
c0038409:	83 c7 04             	add    $0x4,%edi
c003840c:	89 d9                	mov    %ebx,%ecx
c003840e:	83 e1 03             	and    $0x3,%ecx
c0038411:	4e                   	dec    %esi
c0038412:	4f                   	dec    %edi
c0038413:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038415:	eb 2a                	jmp    c0038441 <memmove+0x81>
c0038417:	83 f9 08             	cmp    $0x8,%ecx
c003841a:	76 23                	jbe    c003843f <memmove+0x7f>
c003841c:	89 fa                	mov    %edi,%edx
c003841e:	89 cb                	mov    %ecx,%ebx
c0038420:	83 e2 03             	and    $0x3,%edx
c0038423:	74 10                	je     c0038435 <memmove+0x75>
c0038425:	b9 04 00 00 00       	mov    $0x4,%ecx
c003842a:	29 d1                	sub    %edx,%ecx
c003842c:	83 e1 03             	and    $0x3,%ecx
c003842f:	29 cb                	sub    %ecx,%ebx
c0038431:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038433:	89 d9                	mov    %ebx,%ecx
c0038435:	c1 e9 02             	shr    $0x2,%ecx
c0038438:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c003843a:	89 d9                	mov    %ebx,%ecx
c003843c:	83 e1 03             	and    $0x3,%ecx
c003843f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038441:	8b 45 08             	mov    0x8(%ebp),%eax
c0038444:	fc                   	cld    
c0038445:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0038448:	5b                   	pop    %ebx
c0038449:	5f                   	pop    %edi
c003844a:	5e                   	pop    %esi
c003844b:	c9                   	leave  
c003844c:	c3                   	ret    
c003844d:	66 90                	xchg   %ax,%ax
c003844f:	90                   	nop

c0038450 <_realloc_r>:
c0038450:	55                   	push   %ebp
c0038451:	89 e5                	mov    %esp,%ebp
c0038453:	57                   	push   %edi
c0038454:	56                   	push   %esi
c0038455:	53                   	push   %ebx
c0038456:	83 ec 3c             	sub    $0x3c,%esp
c0038459:	8b 45 08             	mov    0x8(%ebp),%eax
c003845c:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003845f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038462:	8b 45 10             	mov    0x10(%ebp),%eax
c0038465:	85 ff                	test   %edi,%edi
c0038467:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003846a:	0f 84 50 02 00 00    	je     c00386c0 <_realloc_r+0x270>
c0038470:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038473:	8d 77 f8             	lea    -0x8(%edi),%esi
c0038476:	89 04 24             	mov    %eax,(%esp)
c0038479:	e8 f2 db ff ff       	call   c0036070 <__malloc_lock>
c003847e:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038481:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038484:	89 c3                	mov    %eax,%ebx
c0038486:	8d 51 0b             	lea    0xb(%ecx),%edx
c0038489:	83 e3 fc             	and    $0xfffffffc,%ebx
c003848c:	83 fa 16             	cmp    $0x16,%edx
c003848f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038492:	0f 87 00 01 00 00    	ja     c0038598 <_realloc_r+0x148>
c0038498:	31 d2                	xor    %edx,%edx
c003849a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c00384a1:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c00384a8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00384ab:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c00384ae:	0f 82 1c 02 00 00    	jb     c00386d0 <_realloc_r+0x280>
c00384b4:	84 d2                	test   %dl,%dl
c00384b6:	0f 85 14 02 00 00    	jne    c00386d0 <_realloc_r+0x280>
c00384bc:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c00384bf:	0f 8d eb 00 00 00    	jge    c00385b0 <_realloc_r+0x160>
c00384c5:	8b 0d 48 c5 03 c0    	mov    0xc003c548,%ecx
c00384cb:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c00384ce:	39 d1                	cmp    %edx,%ecx
c00384d0:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c00384d3:	0f 84 6f 02 00 00    	je     c0038748 <_realloc_r+0x2f8>
c00384d9:	8b 4a 04             	mov    0x4(%edx),%ecx
c00384dc:	89 c8                	mov    %ecx,%eax
c00384de:	83 e0 fe             	and    $0xfffffffe,%eax
c00384e1:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c00384e6:	0f 84 f4 00 00 00    	je     c00385e0 <_realloc_r+0x190>
c00384ec:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c00384f3:	31 d2                	xor    %edx,%edx
c00384f5:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c00384f9:	0f 85 39 01 00 00    	jne    c0038638 <_realloc_r+0x1e8>
c00384ff:	89 f1                	mov    %esi,%ecx
c0038501:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038504:	8b 41 04             	mov    0x4(%ecx),%eax
c0038507:	83 e0 fc             	and    $0xfffffffc,%eax
c003850a:	85 d2                	test   %edx,%edx
c003850c:	0f 84 f6 02 00 00    	je     c0038808 <_realloc_r+0x3b8>
c0038512:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0038515:	0f 84 f5 02 00 00    	je     c0038810 <_realloc_r+0x3c0>
c003851b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003851e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0038521:	01 d8                	add    %ebx,%eax
c0038523:	01 c2                	add    %eax,%edx
c0038525:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038528:	89 55 d0             	mov    %edx,-0x30(%ebp)
c003852b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003852e:	0f 8c ac 01 00 00    	jl     c00386e0 <_realloc_r+0x290>
c0038534:	8b 42 0c             	mov    0xc(%edx),%eax
c0038537:	83 eb 04             	sub    $0x4,%ebx
c003853a:	8b 52 08             	mov    0x8(%edx),%edx
c003853d:	83 fb 24             	cmp    $0x24,%ebx
c0038540:	8d 71 08             	lea    0x8(%ecx),%esi
c0038543:	89 42 0c             	mov    %eax,0xc(%edx)
c0038546:	89 50 08             	mov    %edx,0x8(%eax)
c0038549:	8b 41 0c             	mov    0xc(%ecx),%eax
c003854c:	8b 51 08             	mov    0x8(%ecx),%edx
c003854f:	89 42 0c             	mov    %eax,0xc(%edx)
c0038552:	89 50 08             	mov    %edx,0x8(%eax)
c0038555:	0f 87 85 03 00 00    	ja     c00388e0 <_realloc_r+0x490>
c003855b:	83 fb 13             	cmp    $0x13,%ebx
c003855e:	89 f0                	mov    %esi,%eax
c0038560:	76 1a                	jbe    c003857c <_realloc_r+0x12c>
c0038562:	8b 07                	mov    (%edi),%eax
c0038564:	83 fb 1b             	cmp    $0x1b,%ebx
c0038567:	89 41 08             	mov    %eax,0x8(%ecx)
c003856a:	8b 47 04             	mov    0x4(%edi),%eax
c003856d:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038570:	0f 87 8f 03 00 00    	ja     c0038905 <_realloc_r+0x4b5>
c0038576:	8d 41 10             	lea    0x10(%ecx),%eax
c0038579:	83 c7 08             	add    $0x8,%edi
c003857c:	8b 17                	mov    (%edi),%edx
c003857e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0038581:	89 10                	mov    %edx,(%eax)
c0038583:	8b 57 04             	mov    0x4(%edi),%edx
c0038586:	89 50 04             	mov    %edx,0x4(%eax)
c0038589:	8b 57 08             	mov    0x8(%edi),%edx
c003858c:	89 f7                	mov    %esi,%edi
c003858e:	89 ce                	mov    %ecx,%esi
c0038590:	89 50 08             	mov    %edx,0x8(%eax)
c0038593:	8b 41 04             	mov    0x4(%ecx),%eax
c0038596:	eb 1b                	jmp    c00385b3 <_realloc_r+0x163>
c0038598:	83 e2 f8             	and    $0xfffffff8,%edx
c003859b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c003859e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00385a1:	c1 ea 1f             	shr    $0x1f,%edx
c00385a4:	e9 ff fe ff ff       	jmp    c00384a8 <_realloc_r+0x58>
c00385a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00385b0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00385b3:	89 da                	mov    %ebx,%edx
c00385b5:	2b 55 dc             	sub    -0x24(%ebp),%edx
c00385b8:	83 fa 0f             	cmp    $0xf,%edx
c00385bb:	77 4b                	ja     c0038608 <_realloc_r+0x1b8>
c00385bd:	83 e0 01             	and    $0x1,%eax
c00385c0:	09 d8                	or     %ebx,%eax
c00385c2:	89 46 04             	mov    %eax,0x4(%esi)
c00385c5:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c00385ca:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00385cd:	89 04 24             	mov    %eax,(%esp)
c00385d0:	e8 ab da ff ff       	call   c0036080 <__malloc_unlock>
c00385d5:	89 f8                	mov    %edi,%eax
c00385d7:	83 c4 3c             	add    $0x3c,%esp
c00385da:	5b                   	pop    %ebx
c00385db:	5e                   	pop    %esi
c00385dc:	5f                   	pop    %edi
c00385dd:	5d                   	pop    %ebp
c00385de:	c3                   	ret    
c00385df:	90                   	nop
c00385e0:	83 e1 fc             	and    $0xfffffffc,%ecx
c00385e3:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00385e6:	01 d9                	add    %ebx,%ecx
c00385e8:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c00385eb:	0f 8c 04 ff ff ff    	jl     c00384f5 <_realloc_r+0xa5>
c00385f1:	8b 5a 0c             	mov    0xc(%edx),%ebx
c00385f4:	8b 52 08             	mov    0x8(%edx),%edx
c00385f7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00385fa:	89 5a 0c             	mov    %ebx,0xc(%edx)
c00385fd:	89 53 08             	mov    %edx,0x8(%ebx)
c0038600:	89 cb                	mov    %ecx,%ebx
c0038602:	eb af                	jmp    c00385b3 <_realloc_r+0x163>
c0038604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038608:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003860b:	83 e0 01             	and    $0x1,%eax
c003860e:	09 d8                	or     %ebx,%eax
c0038610:	89 46 04             	mov    %eax,0x4(%esi)
c0038613:	89 d0                	mov    %edx,%eax
c0038615:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0038618:	83 c8 01             	or     $0x1,%eax
c003861b:	89 41 04             	mov    %eax,0x4(%ecx)
c003861e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038621:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0038626:	83 c1 08             	add    $0x8,%ecx
c0038629:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c003862d:	89 04 24             	mov    %eax,(%esp)
c0038630:	e8 2b fb ff ff       	call   c0038160 <_free_r>
c0038635:	eb 93                	jmp    c00385ca <_realloc_r+0x17a>
c0038637:	90                   	nop
c0038638:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003863b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003863f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038642:	89 04 24             	mov    %eax,(%esp)
c0038645:	e8 46 d2 ff ff       	call   c0035890 <_malloc_r>
c003864a:	85 c0                	test   %eax,%eax
c003864c:	89 c1                	mov    %eax,%ecx
c003864e:	0f 84 65 03 00 00    	je     c00389b9 <_realloc_r+0x569>
c0038654:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038657:	8d 51 f8             	lea    -0x8(%ecx),%edx
c003865a:	89 55 e0             	mov    %edx,-0x20(%ebp)
c003865d:	89 c2                	mov    %eax,%edx
c003865f:	83 e2 fe             	and    $0xfffffffe,%edx
c0038662:	01 f2                	add    %esi,%edx
c0038664:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c0038667:	0f 84 63 02 00 00    	je     c00388d0 <_realloc_r+0x480>
c003866d:	83 eb 04             	sub    $0x4,%ebx
c0038670:	83 fb 24             	cmp    $0x24,%ebx
c0038673:	0f 87 6f 01 00 00    	ja     c00387e8 <_realloc_r+0x398>
c0038679:	83 fb 13             	cmp    $0x13,%ebx
c003867c:	0f 87 ee 00 00 00    	ja     c0038770 <_realloc_r+0x320>
c0038682:	89 c8                	mov    %ecx,%eax
c0038684:	89 fa                	mov    %edi,%edx
c0038686:	8b 1a                	mov    (%edx),%ebx
c0038688:	89 18                	mov    %ebx,(%eax)
c003868a:	8b 5a 04             	mov    0x4(%edx),%ebx
c003868d:	89 58 04             	mov    %ebx,0x4(%eax)
c0038690:	8b 52 08             	mov    0x8(%edx),%edx
c0038693:	89 50 08             	mov    %edx,0x8(%eax)
c0038696:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0038699:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003869d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00386a0:	89 34 24             	mov    %esi,(%esp)
c00386a3:	e8 b8 fa ff ff       	call   c0038160 <_free_r>
c00386a8:	89 34 24             	mov    %esi,(%esp)
c00386ab:	e8 d0 d9 ff ff       	call   c0036080 <__malloc_unlock>
c00386b0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00386b3:	83 c4 3c             	add    $0x3c,%esp
c00386b6:	5b                   	pop    %ebx
c00386b7:	5e                   	pop    %esi
c00386b8:	5f                   	pop    %edi
c00386b9:	89 c8                	mov    %ecx,%eax
c00386bb:	5d                   	pop    %ebp
c00386bc:	c3                   	ret    
c00386bd:	8d 76 00             	lea    0x0(%esi),%esi
c00386c0:	89 45 0c             	mov    %eax,0xc(%ebp)
c00386c3:	83 c4 3c             	add    $0x3c,%esp
c00386c6:	5b                   	pop    %ebx
c00386c7:	5e                   	pop    %esi
c00386c8:	5f                   	pop    %edi
c00386c9:	5d                   	pop    %ebp
c00386ca:	e9 c1 d1 ff ff       	jmp    c0035890 <_malloc_r>
c00386cf:	90                   	nop
c00386d0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00386d3:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c00386d9:	31 c0                	xor    %eax,%eax
c00386db:	e9 f7 fe ff ff       	jmp    c00385d7 <_realloc_r+0x187>
c00386e0:	89 c2                	mov    %eax,%edx
c00386e2:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c00386e5:	0f 8c 4d ff ff ff    	jl     c0038638 <_realloc_r+0x1e8>
c00386eb:	8b 71 08             	mov    0x8(%ecx),%esi
c00386ee:	83 eb 04             	sub    $0x4,%ebx
c00386f1:	8b 41 0c             	mov    0xc(%ecx),%eax
c00386f4:	83 fb 24             	cmp    $0x24,%ebx
c00386f7:	89 46 0c             	mov    %eax,0xc(%esi)
c00386fa:	89 70 08             	mov    %esi,0x8(%eax)
c00386fd:	8d 71 08             	lea    0x8(%ecx),%esi
c0038700:	0f 87 88 00 00 00    	ja     c003878e <_realloc_r+0x33e>
c0038706:	83 fb 13             	cmp    $0x13,%ebx
c0038709:	89 f0                	mov    %esi,%eax
c003870b:	76 1a                	jbe    c0038727 <_realloc_r+0x2d7>
c003870d:	8b 07                	mov    (%edi),%eax
c003870f:	83 fb 1b             	cmp    $0x1b,%ebx
c0038712:	89 41 08             	mov    %eax,0x8(%ecx)
c0038715:	8b 47 04             	mov    0x4(%edi),%eax
c0038718:	89 41 0c             	mov    %eax,0xc(%ecx)
c003871b:	0f 87 17 02 00 00    	ja     c0038938 <_realloc_r+0x4e8>
c0038721:	8d 41 10             	lea    0x10(%ecx),%eax
c0038724:	83 c7 08             	add    $0x8,%edi
c0038727:	8b 1f                	mov    (%edi),%ebx
c0038729:	89 18                	mov    %ebx,(%eax)
c003872b:	8b 5f 04             	mov    0x4(%edi),%ebx
c003872e:	89 58 04             	mov    %ebx,0x4(%eax)
c0038731:	8b 5f 08             	mov    0x8(%edi),%ebx
c0038734:	89 f7                	mov    %esi,%edi
c0038736:	89 ce                	mov    %ecx,%esi
c0038738:	89 58 08             	mov    %ebx,0x8(%eax)
c003873b:	89 d3                	mov    %edx,%ebx
c003873d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038740:	e9 6e fe ff ff       	jmp    c00385b3 <_realloc_r+0x163>
c0038745:	8d 76 00             	lea    0x0(%esi),%esi
c0038748:	8b 45 cc             	mov    -0x34(%ebp),%eax
c003874b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003874e:	8b 48 04             	mov    0x4(%eax),%ecx
c0038751:	83 c2 10             	add    $0x10,%edx
c0038754:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038757:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c003875b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c003875e:	01 d9                	add    %ebx,%ecx
c0038760:	39 d1                	cmp    %edx,%ecx
c0038762:	7d 54                	jge    c00387b8 <_realloc_r+0x368>
c0038764:	89 c2                	mov    %eax,%edx
c0038766:	e9 8a fd ff ff       	jmp    c00384f5 <_realloc_r+0xa5>
c003876b:	90                   	nop
c003876c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038770:	8b 07                	mov    (%edi),%eax
c0038772:	83 fb 1b             	cmp    $0x1b,%ebx
c0038775:	89 01                	mov    %eax,(%ecx)
c0038777:	8b 47 04             	mov    0x4(%edi),%eax
c003877a:	89 41 04             	mov    %eax,0x4(%ecx)
c003877d:	0f 87 2d 01 00 00    	ja     c00388b0 <_realloc_r+0x460>
c0038783:	8d 41 08             	lea    0x8(%ecx),%eax
c0038786:	8d 57 08             	lea    0x8(%edi),%edx
c0038789:	e9 f8 fe ff ff       	jmp    c0038686 <_realloc_r+0x236>
c003878e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038792:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038796:	89 f7                	mov    %esi,%edi
c0038798:	89 34 24             	mov    %esi,(%esp)
c003879b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c003879e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00387a1:	e8 1a fc ff ff       	call   c00383c0 <memmove>
c00387a6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00387a9:	8b 55 d8             	mov    -0x28(%ebp),%edx
c00387ac:	8b 41 04             	mov    0x4(%ecx),%eax
c00387af:	89 ce                	mov    %ecx,%esi
c00387b1:	89 d3                	mov    %edx,%ebx
c00387b3:	e9 fb fd ff ff       	jmp    c00385b3 <_realloc_r+0x163>
c00387b8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00387bb:	29 d9                	sub    %ebx,%ecx
c00387bd:	01 de                	add    %ebx,%esi
c00387bf:	83 c9 01             	or     $0x1,%ecx
c00387c2:	89 35 48 c5 03 c0    	mov    %esi,0xc003c548
c00387c8:	89 4e 04             	mov    %ecx,0x4(%esi)
c00387cb:	8b 47 fc             	mov    -0x4(%edi),%eax
c00387ce:	83 e0 01             	and    $0x1,%eax
c00387d1:	09 d8                	or     %ebx,%eax
c00387d3:	89 47 fc             	mov    %eax,-0x4(%edi)
c00387d6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00387d9:	89 04 24             	mov    %eax,(%esp)
c00387dc:	e8 9f d8 ff ff       	call   c0036080 <__malloc_unlock>
c00387e1:	89 f8                	mov    %edi,%eax
c00387e3:	e9 ef fd ff ff       	jmp    c00385d7 <_realloc_r+0x187>
c00387e8:	89 0c 24             	mov    %ecx,(%esp)
c00387eb:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00387ef:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00387f3:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00387f6:	e8 c5 fb ff ff       	call   c00383c0 <memmove>
c00387fb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00387fe:	e9 93 fe ff ff       	jmp    c0038696 <_realloc_r+0x246>
c0038803:	90                   	nop
c0038804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038808:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003880b:	e9 d2 fe ff ff       	jmp    c00386e2 <_realloc_r+0x292>
c0038810:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038813:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038816:	01 d0                	add    %edx,%eax
c0038818:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003881b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003881e:	83 c0 10             	add    $0x10,%eax
c0038821:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038824:	0f 8c b8 fe ff ff    	jl     c00386e2 <_realloc_r+0x292>
c003882a:	8b 41 0c             	mov    0xc(%ecx),%eax
c003882d:	83 eb 04             	sub    $0x4,%ebx
c0038830:	8b 51 08             	mov    0x8(%ecx),%edx
c0038833:	83 fb 24             	cmp    $0x24,%ebx
c0038836:	8d 71 08             	lea    0x8(%ecx),%esi
c0038839:	89 42 0c             	mov    %eax,0xc(%edx)
c003883c:	89 50 08             	mov    %edx,0x8(%eax)
c003883f:	0f 87 3d 01 00 00    	ja     c0038982 <_realloc_r+0x532>
c0038845:	83 fb 13             	cmp    $0x13,%ebx
c0038848:	89 f0                	mov    %esi,%eax
c003884a:	76 1a                	jbe    c0038866 <_realloc_r+0x416>
c003884c:	8b 07                	mov    (%edi),%eax
c003884e:	83 fb 1b             	cmp    $0x1b,%ebx
c0038851:	89 41 08             	mov    %eax,0x8(%ecx)
c0038854:	8b 47 04             	mov    0x4(%edi),%eax
c0038857:	89 41 0c             	mov    %eax,0xc(%ecx)
c003885a:	0f 87 3d 01 00 00    	ja     c003899d <_realloc_r+0x54d>
c0038860:	8d 41 10             	lea    0x10(%ecx),%eax
c0038863:	83 c7 08             	add    $0x8,%edi
c0038866:	8b 17                	mov    (%edi),%edx
c0038868:	89 10                	mov    %edx,(%eax)
c003886a:	8b 57 04             	mov    0x4(%edi),%edx
c003886d:	89 50 04             	mov    %edx,0x4(%eax)
c0038870:	8b 57 08             	mov    0x8(%edi),%edx
c0038873:	89 50 08             	mov    %edx,0x8(%eax)
c0038876:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0038879:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c003887c:	89 d8                	mov    %ebx,%eax
c003887e:	29 df                	sub    %ebx,%edi
c0038880:	01 c8                	add    %ecx,%eax
c0038882:	83 cf 01             	or     $0x1,%edi
c0038885:	a3 48 c5 03 c0       	mov    %eax,0xc003c548
c003888a:	89 78 04             	mov    %edi,0x4(%eax)
c003888d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038890:	83 e0 01             	and    $0x1,%eax
c0038893:	09 d8                	or     %ebx,%eax
c0038895:	89 41 04             	mov    %eax,0x4(%ecx)
c0038898:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003889b:	89 04 24             	mov    %eax,(%esp)
c003889e:	e8 dd d7 ff ff       	call   c0036080 <__malloc_unlock>
c00388a3:	89 f0                	mov    %esi,%eax
c00388a5:	e9 2d fd ff ff       	jmp    c00385d7 <_realloc_r+0x187>
c00388aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00388b0:	8b 47 08             	mov    0x8(%edi),%eax
c00388b3:	83 fb 24             	cmp    $0x24,%ebx
c00388b6:	89 41 08             	mov    %eax,0x8(%ecx)
c00388b9:	8b 47 0c             	mov    0xc(%edi),%eax
c00388bc:	89 41 0c             	mov    %eax,0xc(%ecx)
c00388bf:	74 60                	je     c0038921 <_realloc_r+0x4d1>
c00388c1:	8d 41 10             	lea    0x10(%ecx),%eax
c00388c4:	8d 57 10             	lea    0x10(%edi),%edx
c00388c7:	e9 ba fd ff ff       	jmp    c0038686 <_realloc_r+0x236>
c00388cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00388d0:	8b 51 fc             	mov    -0x4(%ecx),%edx
c00388d3:	83 e2 fc             	and    $0xfffffffc,%edx
c00388d6:	01 d3                	add    %edx,%ebx
c00388d8:	e9 d6 fc ff ff       	jmp    c00385b3 <_realloc_r+0x163>
c00388dd:	8d 76 00             	lea    0x0(%esi),%esi
c00388e0:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00388e4:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00388e8:	89 f7                	mov    %esi,%edi
c00388ea:	89 34 24             	mov    %esi,(%esp)
c00388ed:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00388f0:	e8 cb fa ff ff       	call   c00383c0 <memmove>
c00388f5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00388f8:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00388fb:	8b 41 04             	mov    0x4(%ecx),%eax
c00388fe:	89 ce                	mov    %ecx,%esi
c0038900:	e9 ae fc ff ff       	jmp    c00385b3 <_realloc_r+0x163>
c0038905:	8b 47 08             	mov    0x8(%edi),%eax
c0038908:	83 fb 24             	cmp    $0x24,%ebx
c003890b:	89 41 10             	mov    %eax,0x10(%ecx)
c003890e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038911:	89 41 14             	mov    %eax,0x14(%ecx)
c0038914:	74 3e                	je     c0038954 <_realloc_r+0x504>
c0038916:	8d 41 18             	lea    0x18(%ecx),%eax
c0038919:	83 c7 10             	add    $0x10,%edi
c003891c:	e9 5b fc ff ff       	jmp    c003857c <_realloc_r+0x12c>
c0038921:	8b 47 10             	mov    0x10(%edi),%eax
c0038924:	8d 57 18             	lea    0x18(%edi),%edx
c0038927:	89 41 10             	mov    %eax,0x10(%ecx)
c003892a:	8b 5f 14             	mov    0x14(%edi),%ebx
c003892d:	8d 41 18             	lea    0x18(%ecx),%eax
c0038930:	89 59 14             	mov    %ebx,0x14(%ecx)
c0038933:	e9 4e fd ff ff       	jmp    c0038686 <_realloc_r+0x236>
c0038938:	8b 47 08             	mov    0x8(%edi),%eax
c003893b:	83 fb 24             	cmp    $0x24,%ebx
c003893e:	89 41 10             	mov    %eax,0x10(%ecx)
c0038941:	8b 47 0c             	mov    0xc(%edi),%eax
c0038944:	89 41 14             	mov    %eax,0x14(%ecx)
c0038947:	74 22                	je     c003896b <_realloc_r+0x51b>
c0038949:	8d 41 18             	lea    0x18(%ecx),%eax
c003894c:	83 c7 10             	add    $0x10,%edi
c003894f:	e9 d3 fd ff ff       	jmp    c0038727 <_realloc_r+0x2d7>
c0038954:	8b 47 10             	mov    0x10(%edi),%eax
c0038957:	83 c7 18             	add    $0x18,%edi
c003895a:	89 41 18             	mov    %eax,0x18(%ecx)
c003895d:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038960:	8d 41 20             	lea    0x20(%ecx),%eax
c0038963:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038966:	e9 11 fc ff ff       	jmp    c003857c <_realloc_r+0x12c>
c003896b:	8b 47 10             	mov    0x10(%edi),%eax
c003896e:	83 c7 18             	add    $0x18,%edi
c0038971:	89 41 18             	mov    %eax,0x18(%ecx)
c0038974:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0038977:	8d 41 20             	lea    0x20(%ecx),%eax
c003897a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c003897d:	e9 a5 fd ff ff       	jmp    c0038727 <_realloc_r+0x2d7>
c0038982:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038986:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003898a:	89 34 24             	mov    %esi,(%esp)
c003898d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038990:	e8 2b fa ff ff       	call   c00383c0 <memmove>
c0038995:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038998:	e9 d9 fe ff ff       	jmp    c0038876 <_realloc_r+0x426>
c003899d:	8b 47 08             	mov    0x8(%edi),%eax
c00389a0:	83 fb 24             	cmp    $0x24,%ebx
c00389a3:	89 41 10             	mov    %eax,0x10(%ecx)
c00389a6:	8b 47 0c             	mov    0xc(%edi),%eax
c00389a9:	89 41 14             	mov    %eax,0x14(%ecx)
c00389ac:	74 1d                	je     c00389cb <_realloc_r+0x57b>
c00389ae:	8d 41 18             	lea    0x18(%ecx),%eax
c00389b1:	83 c7 10             	add    $0x10,%edi
c00389b4:	e9 ad fe ff ff       	jmp    c0038866 <_realloc_r+0x416>
c00389b9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00389bc:	89 04 24             	mov    %eax,(%esp)
c00389bf:	e8 bc d6 ff ff       	call   c0036080 <__malloc_unlock>
c00389c4:	31 c0                	xor    %eax,%eax
c00389c6:	e9 0c fc ff ff       	jmp    c00385d7 <_realloc_r+0x187>
c00389cb:	8b 47 10             	mov    0x10(%edi),%eax
c00389ce:	83 c7 18             	add    $0x18,%edi
c00389d1:	89 41 18             	mov    %eax,0x18(%ecx)
c00389d4:	8b 57 fc             	mov    -0x4(%edi),%edx
c00389d7:	8d 41 20             	lea    0x20(%ecx),%eax
c00389da:	89 51 1c             	mov    %edx,0x1c(%ecx)
c00389dd:	e9 84 fe ff ff       	jmp    c0038866 <_realloc_r+0x416>
c00389e2:	66 90                	xchg   %ax,%ax
c00389e4:	66 90                	xchg   %ax,%ax
c00389e6:	66 90                	xchg   %ax,%ax
c00389e8:	66 90                	xchg   %ax,%ax
c00389ea:	66 90                	xchg   %ax,%ax
c00389ec:	66 90                	xchg   %ax,%ax
c00389ee:	66 90                	xchg   %ax,%ax

c00389f0 <cleanup_glue>:
c00389f0:	55                   	push   %ebp
c00389f1:	89 e5                	mov    %esp,%ebp
c00389f3:	56                   	push   %esi
c00389f4:	53                   	push   %ebx
c00389f5:	83 ec 10             	sub    $0x10,%esp
c00389f8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00389fb:	8b 75 08             	mov    0x8(%ebp),%esi
c00389fe:	8b 03                	mov    (%ebx),%eax
c0038a00:	85 c0                	test   %eax,%eax
c0038a02:	74 0c                	je     c0038a10 <cleanup_glue+0x20>
c0038a04:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038a08:	89 34 24             	mov    %esi,(%esp)
c0038a0b:	e8 e0 ff ff ff       	call   c00389f0 <cleanup_glue>
c0038a10:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038a13:	89 75 08             	mov    %esi,0x8(%ebp)
c0038a16:	83 c4 10             	add    $0x10,%esp
c0038a19:	5b                   	pop    %ebx
c0038a1a:	5e                   	pop    %esi
c0038a1b:	5d                   	pop    %ebp
c0038a1c:	e9 3f f7 ff ff       	jmp    c0038160 <_free_r>
c0038a21:	eb 0d                	jmp    c0038a30 <_reclaim_reent>
c0038a23:	90                   	nop
c0038a24:	90                   	nop
c0038a25:	90                   	nop
c0038a26:	90                   	nop
c0038a27:	90                   	nop
c0038a28:	90                   	nop
c0038a29:	90                   	nop
c0038a2a:	90                   	nop
c0038a2b:	90                   	nop
c0038a2c:	90                   	nop
c0038a2d:	90                   	nop
c0038a2e:	90                   	nop
c0038a2f:	90                   	nop

c0038a30 <_reclaim_reent>:
c0038a30:	55                   	push   %ebp
c0038a31:	89 e5                	mov    %esp,%ebp
c0038a33:	57                   	push   %edi
c0038a34:	56                   	push   %esi
c0038a35:	53                   	push   %ebx
c0038a36:	83 ec 1c             	sub    $0x1c,%esp
c0038a39:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0038a3c:	3b 1d 40 c0 03 c0    	cmp    0xc003c040,%ebx
c0038a42:	0f 84 a6 00 00 00    	je     c0038aee <_reclaim_reent+0xbe>
c0038a48:	8b 53 4c             	mov    0x4c(%ebx),%edx
c0038a4b:	85 d2                	test   %edx,%edx
c0038a4d:	74 46                	je     c0038a95 <_reclaim_reent+0x65>
c0038a4f:	31 c0                	xor    %eax,%eax
c0038a51:	31 f6                	xor    %esi,%esi
c0038a53:	90                   	nop
c0038a54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038a58:	8b 04 82             	mov    (%edx,%eax,4),%eax
c0038a5b:	85 c0                	test   %eax,%eax
c0038a5d:	75 0b                	jne    c0038a6a <_reclaim_reent+0x3a>
c0038a5f:	eb 1e                	jmp    c0038a7f <_reclaim_reent+0x4f>
c0038a61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038a68:	89 f8                	mov    %edi,%eax
c0038a6a:	8b 38                	mov    (%eax),%edi
c0038a6c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038a70:	89 1c 24             	mov    %ebx,(%esp)
c0038a73:	e8 e8 f6 ff ff       	call   c0038160 <_free_r>
c0038a78:	85 ff                	test   %edi,%edi
c0038a7a:	75 ec                	jne    c0038a68 <_reclaim_reent+0x38>
c0038a7c:	8b 53 4c             	mov    0x4c(%ebx),%edx
c0038a7f:	83 c6 01             	add    $0x1,%esi
c0038a82:	83 fe 20             	cmp    $0x20,%esi
c0038a85:	89 f0                	mov    %esi,%eax
c0038a87:	75 cf                	jne    c0038a58 <_reclaim_reent+0x28>
c0038a89:	89 54 24 04          	mov    %edx,0x4(%esp)
c0038a8d:	89 1c 24             	mov    %ebx,(%esp)
c0038a90:	e8 cb f6 ff ff       	call   c0038160 <_free_r>
c0038a95:	8b 43 40             	mov    0x40(%ebx),%eax
c0038a98:	85 c0                	test   %eax,%eax
c0038a9a:	74 0c                	je     c0038aa8 <_reclaim_reent+0x78>
c0038a9c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038aa0:	89 1c 24             	mov    %ebx,(%esp)
c0038aa3:	e8 b8 f6 ff ff       	call   c0038160 <_free_r>
c0038aa8:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c0038aae:	85 c0                	test   %eax,%eax
c0038ab0:	74 22                	je     c0038ad4 <_reclaim_reent+0xa4>
c0038ab2:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038ab8:	39 f0                	cmp    %esi,%eax
c0038aba:	75 06                	jne    c0038ac2 <_reclaim_reent+0x92>
c0038abc:	eb 16                	jmp    c0038ad4 <_reclaim_reent+0xa4>
c0038abe:	66 90                	xchg   %ax,%ax
c0038ac0:	89 f8                	mov    %edi,%eax
c0038ac2:	8b 38                	mov    (%eax),%edi
c0038ac4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038ac8:	89 1c 24             	mov    %ebx,(%esp)
c0038acb:	e8 90 f6 ff ff       	call   c0038160 <_free_r>
c0038ad0:	39 fe                	cmp    %edi,%esi
c0038ad2:	75 ec                	jne    c0038ac0 <_reclaim_reent+0x90>
c0038ad4:	8b 43 54             	mov    0x54(%ebx),%eax
c0038ad7:	85 c0                	test   %eax,%eax
c0038ad9:	74 0c                	je     c0038ae7 <_reclaim_reent+0xb7>
c0038adb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038adf:	89 1c 24             	mov    %ebx,(%esp)
c0038ae2:	e8 79 f6 ff ff       	call   c0038160 <_free_r>
c0038ae7:	8b 43 38             	mov    0x38(%ebx),%eax
c0038aea:	85 c0                	test   %eax,%eax
c0038aec:	75 08                	jne    c0038af6 <_reclaim_reent+0xc6>
c0038aee:	83 c4 1c             	add    $0x1c,%esp
c0038af1:	5b                   	pop    %ebx
c0038af2:	5e                   	pop    %esi
c0038af3:	5f                   	pop    %edi
c0038af4:	5d                   	pop    %ebp
c0038af5:	c3                   	ret    
c0038af6:	89 1c 24             	mov    %ebx,(%esp)
c0038af9:	ff 53 3c             	call   *0x3c(%ebx)
c0038afc:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038b02:	85 c0                	test   %eax,%eax
c0038b04:	74 e8                	je     c0038aee <_reclaim_reent+0xbe>
c0038b06:	89 1c 24             	mov    %ebx,(%esp)
c0038b09:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038b0d:	e8 de fe ff ff       	call   c00389f0 <cleanup_glue>
c0038b12:	83 c4 1c             	add    $0x1c,%esp
c0038b15:	5b                   	pop    %ebx
c0038b16:	5e                   	pop    %esi
c0038b17:	5f                   	pop    %edi
c0038b18:	5d                   	pop    %ebp
c0038b19:	c3                   	ret    
