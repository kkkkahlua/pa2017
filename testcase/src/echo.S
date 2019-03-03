
echo:     file format elf32-i386


Disassembly of section .text:

08048094 <start>:
 8048094:	e9 e7 00 00 00       	jmp    8048180 <main>

08048099 <in_byte>:
 8048099:	55                   	push   %ebp
 804809a:	89 e5                	mov    %esp,%ebp
 804809c:	83 ec 14             	sub    $0x14,%esp
 804809f:	e8 3a 01 00 00       	call   80481de <__x86.get_pc_thunk.ax>
 80480a4:	05 5c 1f 00 00       	add    $0x1f5c,%eax
 80480a9:	8b 45 08             	mov    0x8(%ebp),%eax
 80480ac:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
 80480b0:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80480b3:	89 c2                	mov    %eax,%edx
 80480b5:	ec                   	in     (%dx),%al
 80480b6:	88 45 ff             	mov    %al,-0x1(%ebp)
 80480b9:	8a 45 ff             	mov    -0x1(%ebp),%al
 80480bc:	c9                   	leave  
 80480bd:	c3                   	ret    

080480be <add_irq_handler>:
 80480be:	55                   	push   %ebp
 80480bf:	89 e5                	mov    %esp,%ebp
 80480c1:	53                   	push   %ebx
 80480c2:	e8 17 01 00 00       	call   80481de <__x86.get_pc_thunk.ax>
 80480c7:	05 39 1f 00 00       	add    $0x1f39,%eax
 80480cc:	b8 00 00 00 00       	mov    $0x0,%eax
 80480d1:	8b 55 08             	mov    0x8(%ebp),%edx
 80480d4:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 80480d7:	89 d3                	mov    %edx,%ebx
 80480d9:	cd 80                	int    $0x80
 80480db:	90                   	nop
 80480dc:	5b                   	pop    %ebx
 80480dd:	5d                   	pop    %ebp
 80480de:	c3                   	ret    

080480df <writec>:
 80480df:	55                   	push   %ebp
 80480e0:	89 e5                	mov    %esp,%ebp
 80480e2:	53                   	push   %ebx
 80480e3:	83 ec 04             	sub    $0x4,%esp
 80480e6:	e8 f3 00 00 00       	call   80481de <__x86.get_pc_thunk.ax>
 80480eb:	05 15 1f 00 00       	add    $0x1f15,%eax
 80480f0:	8b 45 0c             	mov    0xc(%ebp),%eax
 80480f3:	88 45 f8             	mov    %al,-0x8(%ebp)
 80480f6:	b8 04 00 00 00       	mov    $0x4,%eax
 80480fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 80480fe:	8d 4d f8             	lea    -0x8(%ebp),%ecx
 8048101:	ba 01 00 00 00       	mov    $0x1,%edx
 8048106:	cd 80                	int    $0x80
 8048108:	90                   	nop
 8048109:	83 c4 04             	add    $0x4,%esp
 804810c:	5b                   	pop    %ebx
 804810d:	5d                   	pop    %ebp
 804810e:	c3                   	ret    

0804810f <printc>:
 804810f:	55                   	push   %ebp
 8048110:	89 e5                	mov    %esp,%ebp
 8048112:	83 ec 04             	sub    $0x4,%esp
 8048115:	e8 c4 00 00 00       	call   80481de <__x86.get_pc_thunk.ax>
 804811a:	05 e6 1e 00 00       	add    $0x1ee6,%eax
 804811f:	8b 45 08             	mov    0x8(%ebp),%eax
 8048122:	88 45 fc             	mov    %al,-0x4(%ebp)
 8048125:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
 8048129:	50                   	push   %eax
 804812a:	6a 01                	push   $0x1
 804812c:	e8 ae ff ff ff       	call   80480df <writec>
 8048131:	83 c4 08             	add    $0x8,%esp
 8048134:	90                   	nop
 8048135:	c9                   	leave  
 8048136:	c3                   	ret    

08048137 <keyboard_event_handler>:
 8048137:	55                   	push   %ebp
 8048138:	89 e5                	mov    %esp,%ebp
 804813a:	83 ec 18             	sub    $0x18,%esp
 804813d:	e8 9c 00 00 00       	call   80481de <__x86.get_pc_thunk.ax>
 8048142:	05 be 1e 00 00       	add    $0x1ebe,%eax
 8048147:	6a 60                	push   $0x60
 8048149:	e8 4b ff ff ff       	call   8048099 <in_byte>
 804814e:	83 c4 04             	add    $0x4,%esp
 8048151:	88 45 f7             	mov    %al,-0x9(%ebp)
 8048154:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
 8048158:	83 ec 0c             	sub    $0xc,%esp
 804815b:	50                   	push   %eax
 804815c:	e8 40 00 00 00       	call   80481a1 <translate_key>
 8048161:	83 c4 10             	add    $0x10,%esp
 8048164:	88 45 f6             	mov    %al,-0xa(%ebp)
 8048167:	80 7d f6 00          	cmpb   $0x0,-0xa(%ebp)
 804816b:	7e 10                	jle    804817d <keyboard_event_handler+0x46>
 804816d:	0f be 45 f6          	movsbl -0xa(%ebp),%eax
 8048171:	83 ec 0c             	sub    $0xc,%esp
 8048174:	50                   	push   %eax
 8048175:	e8 95 ff ff ff       	call   804810f <printc>
 804817a:	83 c4 10             	add    $0x10,%esp
 804817d:	90                   	nop
 804817e:	c9                   	leave  
 804817f:	c3                   	ret    

08048180 <main>:
 8048180:	55                   	push   %ebp
 8048181:	89 e5                	mov    %esp,%ebp
 8048183:	e8 56 00 00 00       	call   80481de <__x86.get_pc_thunk.ax>
 8048188:	05 78 1e 00 00       	add    $0x1e78,%eax
 804818d:	8d 80 37 e1 ff ff    	lea    -0x1ec9(%eax),%eax
 8048193:	50                   	push   %eax
 8048194:	6a 01                	push   $0x1
 8048196:	e8 23 ff ff ff       	call   80480be <add_irq_handler>
 804819b:	83 c4 08             	add    $0x8,%esp
 804819e:	f4                   	hlt    
 804819f:	eb fd                	jmp    804819e <main+0x1e>

080481a1 <translate_key>:
 80481a1:	55                   	push   %ebp
 80481a2:	89 e5                	mov    %esp,%ebp
 80481a4:	83 ec 10             	sub    $0x10,%esp
 80481a7:	e8 32 00 00 00       	call   80481de <__x86.get_pc_thunk.ax>
 80481ac:	05 54 1e 00 00       	add    $0x1e54,%eax
 80481b1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80481b8:	eb 1a                	jmp    80481d4 <translate_key+0x33>
 80481ba:	8b 55 fc             	mov    -0x4(%ebp),%edx
 80481bd:	8b 94 90 20 00 00 00 	mov    0x20(%eax,%edx,4),%edx
 80481c4:	3b 55 08             	cmp    0x8(%ebp),%edx
 80481c7:	75 08                	jne    80481d1 <translate_key+0x30>
 80481c9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80481cc:	83 c0 41             	add    $0x41,%eax
 80481cf:	eb 0b                	jmp    80481dc <translate_key+0x3b>
 80481d1:	ff 45 fc             	incl   -0x4(%ebp)
 80481d4:	83 7d fc 19          	cmpl   $0x19,-0x4(%ebp)
 80481d8:	7e e0                	jle    80481ba <translate_key+0x19>
 80481da:	b0 00                	mov    $0x0,%al
 80481dc:	c9                   	leave  
 80481dd:	c3                   	ret    

080481de <__x86.get_pc_thunk.ax>:
 80481de:	8b 04 24             	mov    (%esp),%eax
 80481e1:	c3                   	ret    
