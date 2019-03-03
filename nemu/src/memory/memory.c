#include "nemu.h"
#include "cpu/cpu.h"
#include "memory/memory.h"
#include "device/mm_io.h"
#include "memory/cache.h"
#include <memory.h>
#include <stdio.h>


uint8_t hw_mem[MEM_SIZE_B];
int hit, all;

uint32_t hw_mem_read(paddr_t paddr, size_t len) {
	uint32_t ret = 0;
	memcpy(&ret, hw_mem + paddr, len);
	return ret;
}

void hw_mem_write(paddr_t paddr, size_t len, uint32_t data) {
	memcpy(hw_mem + paddr, &data, len);
}

uint32_t paddr_read(paddr_t paddr, size_t len) {
	uint32_t ret = 0;
	int idx = is_mmio(paddr);
//	printf("idx : %x %x\n", paddr, idx);
	if (idx != -1) {
		ret = mmio_read(paddr, len, idx);
	}
	else {
#ifdef CACHE_ENABLED
		ret = cache_read(paddr, len, L1_dcache);
#else
		ret = hw_mem_read(paddr, len);
#endif
	}
	return ret;
}

void paddr_write(paddr_t paddr, size_t len, uint32_t data) {
	int idx = is_mmio(paddr);
//	printf("idx : %x %x\n", paddr, idx);
	if (idx != -1) {
		mmio_write(paddr, len, data, idx);
	}
	else {
#ifdef CACHE_ENABLED
		cache_write(paddr, len, data, L1_dcache);
#else		
		hw_mem_write(paddr, len, data);
#endif
	}
}


uint32_t laddr_read(laddr_t laddr, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
	if (cpu.cr0.pg == 1 && cpu.cr0.pe == 1) {
		int p1 = laddr >> 12, p2 = (laddr + len - 1) >> 12;
		if (p1 != p2) {
			int ex = laddr + len - (p2 << 12);
			uint32_t paddr1 = page_translate(laddr), 
				paddr2 = page_translate(p2 << 12);
			uint32_t data1 = paddr_read(paddr1, len-ex),
				data2 = paddr_read(paddr2, ex);
			return (data2 << ((len-ex) << 3)) + data1;
		}
		else {
			uint32_t paddr = page_translate(laddr);
			return paddr_read(paddr, len);
		}
	}
	else return paddr_read(laddr, len);
}

void laddr_write(laddr_t laddr, size_t len, uint32_t data) {
	assert(len == 1 || len == 2 || len == 4);
	if (cpu.cr0.pg == 1 && cpu.cr0.pe == 1) {
		int p1 = laddr >> 12, p2 = (laddr + len - 1) >> 12;
		if (p1 != p2) {
			int ex = laddr + len - (p2 << 12);
			uint32_t paddr1 = page_translate(laddr), 
				paddr2 = page_translate(p2 << 12);
			uint32_t data2 = data >> ((len-ex) << 3),
				data1 = (data << (ex << 3)) >> (ex << 3);
			paddr_write(paddr1, len-ex, data1);
			paddr_write(paddr2, ex, data2);
	 	}
		else { 
			uint32_t paddr = page_translate(laddr);
			paddr_write(paddr, len, data);
		}
	}  
	else paddr_write(laddr, len, data);
}


uint32_t vaddr_read(vaddr_t vaddr, uint8_t sreg, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
	#ifndef IA32_SEG
		return laddr_read(vaddr, len);
	#else
		uint32_t laddr = vaddr;
		if (cpu.cr0.pe == 1) {
			laddr = segment_translate(vaddr, sreg);
		}
		return laddr_read(laddr, len);
	#endif
}

void vaddr_write(vaddr_t vaddr, uint8_t sreg, size_t len, uint32_t data) {
	assert(len == 1 || len == 2 || len == 4);
	#ifndef IA32_SEG
		laddr_write(vaddr, len, data);
	#else
		uint32_t laddr = vaddr;
		if (cpu.cr0.pe == 1) {
			laddr = segment_translate(vaddr, sreg);
		}
		laddr_write(laddr, len, data);
	#endif
}

void init_mem() {
	// clear the memory on initiation
	memset(hw_mem, 0, MEM_SIZE_B);
	#ifdef CACHE_ENABLED
		init_cache();
	//	printf("\nhit : %d; all : %d; ratio : %.3f%%\n", hit, all, 100.0*hit/all);
		hit = all = 0;
	#endif

#ifdef TLB_ENABLED
	make_all_tlb();
	init_all_tlb();
#endif
}

uint32_t instr_fetch(vaddr_t vaddr, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
	return vaddr_read(vaddr, SREG_CS, len);
}

uint8_t * get_mem_addr() {
	return hw_mem;
}
