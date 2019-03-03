#include "cpu/cpu.h"
#include "memory/memory.h"

// translate from linear address to physical address
paddr_t page_translate(laddr_t laddr) {
#ifndef TLB_ENABLED
	uint32_t dir = laddr >> 22;
	uint32_t page = (laddr << 10) >> 22;
	uint32_t offset = (laddr << 20) >> 20;

	uint32_t addrPageDir = (cpu.cr3.pdbr << 12) + (dir << 2);

	PDE pageDir;
	pageDir.val = hw_mem_read(addrPageDir, 4);
	assert(pageDir.present == 1);

	uint32_t addrPage = (pageDir.page_frame << 12) + (page << 2);
	
	PTE pageTable;
	pageTable.val = hw_mem_read(addrPage, 4);
	if (!pageTable.present) printf("page : %x %x %x %x\n", cpu.eip, laddr, pageDir.page_frame, pageTable.page_frame);
	assert(pageTable.present == 1);

//	if (cpu.eip < 0xc0000000) printf("%x %x %x\n", cpu.eip, laddr, (pageTable.page_frame << 12) + offset);

	return (pageTable.page_frame << 12) + offset;

#else
//	if (cpu.eip < 0xc0000000) printf("%x %x %x\n", cpu.eip, laddr, tlb_read(laddr) | (laddr & PAGE_MASK));
	return tlb_read(laddr) | (laddr & PAGE_MASK);;
#endif
}
