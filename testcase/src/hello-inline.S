
hello-inline:     file format elf32-i386


Disassembly of section .text:

08048094 <start>:
 8048094:	e9 00 00 00 00       	jmp    8048099 <main>

08048099 <main>:
 8048099:	55                   	push   %ebp
 804809a:	89 e5                	mov    %esp,%ebp
 804809c:	e8 28 00 00 00       	call   80480c9 <__x86.get_pc_thunk.ax>
 80480a1:	05 5f 1f 00 00       	add    $0x1f5f,%eax
 80480a6:	b8 04 00 00 00       	mov    $0x4,%eax
 80480ab:	bb 01 00 00 00       	mov    $0x1,%ebx
 80480b0:	b9 d0 80 04 08       	mov    $0x80480d0,%ecx
 80480b5:	ba 0e 00 00 00       	mov    $0xe,%edx
 80480ba:	cd 80                	int    $0x80
 80480bc:	b8 00 00 00 00       	mov    $0x0,%eax
 80480c1:	82 b8 00 00 00 00 5d 	cmpb   $0x5d,0x0(%eax)
 80480c8:	c3                   	ret    

080480c9 <__x86.get_pc_thunk.ax>:
 80480c9:	8b 04 24             	mov    (%esp),%eax
 80480cc:	c3                   	ret    
