#include "cpu/cpu.h"
#include "memory/memory.h"
#include "memory/mmu/segment.h"
#include <assert.h>

// return the linear address from the virtual address and segment selector
uint32_t segment_translate(uint32_t offset, uint8_t sreg) {
	/* TODO: perform segment translation from virtual address to linear address
	 * by reading the invisible part of the segment register 'sreg'
	 */
	if (cpu.segReg[sreg].base != 0) 
	printf("%x\n", cpu.segReg[sreg].base);
	return cpu.segReg[sreg].base + offset;
}

// load the invisible part of a segment register
void load_sreg(uint8_t sreg) {
	/* TODO: load the invisibile part of the segment register 'sreg' by reading the GDT.
	 * The visible part of 'sreg' should be assigned by mov or ljmp already.
	 */
	uint32_t addr = cpu.gdtr.base + cpu.segReg[sreg].index * 8;
	
	uint8_t temp[8];
	int i;
	for (i = 0; i < 8; ++i) temp[i] = laddr_read(addr+i, 1);
	SegDesc* segdesc = (SegDesc*)temp;

	cpu.segReg[sreg].base = (segdesc->base_31_24 << 24) + (segdesc->base_23_16 << 16) + segdesc->base_15_0;
	cpu.segReg[sreg].limit = (segdesc->limit_19_16 << 16) + segdesc->limit_15_0;
	cpu.segReg[sreg].type = segdesc->type;
	cpu.segReg[sreg].privilege_level = segdesc->privilege_level;
	cpu.segReg[sreg].soft_use = segdesc->soft_use;

	assert(cpu.segReg[sreg].base == 0);
	assert(cpu.segReg[sreg].limit == 0xfffff);
	assert(segdesc->present == 1);
	assert(segdesc->granularity == 1);
}
