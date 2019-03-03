#include "nemu.h"
#include "memory/cache.h"
#include "memory/memory.h"
#include <stdio.h>
#include <stdlib.h>

//CacheLine L1_dcache[SIZE];
extern uint8_t hw_mem[MEM_SIZE_B];
extern int hit, all;

void init_cache() {
	memset(L1_dcache, 0, sizeof(L1_dcache));
}

void cache_block_read(int hi, CacheLine* cache, int b, int len, uint32_t* data) {
	int GroupNum = hi % 128,
		tag = hi >> 7;
		
	int tot = 0, ok[8];
	for (int i = GroupNum * 8; i < (GroupNum + 1) * 8; ++i) {
		if (!cache[i].valid) ok[tot++] = i;
		if (cache[i].tag == tag && cache[i].valid) {
			memcpy(data, cache[i].data+b, len);
			++hit;
	//		printf("\nrok: %u %d %x %x\n", (tag<<13)+(GroupNum<<6)+b, len, *data, ret);
			return;
	 	}
	}  

	int idx;
	if (tot) idx = ok[rand() % tot];
	else idx = rand() % 8 + GroupNum * 8;

	memcpy(&cache[idx].data, hw_mem + (hi<<6), 64);
	cache[idx].valid = 1;
	cache[idx].tag = tag;

	memcpy(data, cache[idx].data+b, len);
//	printf("\nrno: %u %d %x\n", (tag<<13)+(GroupNum<<6)+b, len, *data);
} 

uint32_t cache_read(paddr_t paddr, size_t len, CacheLine* cache) {
	int s = paddr>>6, t = (paddr + len - 1)>>6;
 	if (s == t) {
		++all;
		int b = paddr - (s << 6);
		uint32_t data=0;
		cache_block_read(s, cache, b, len, &data);
//		printf("\nr1: %u %d %x\n", paddr, len, data);
		return data;
	}
	else {
		all+=2;
		int b = paddr - (s << 6), e = (paddr + len - 1) - (t << 6);
		uint32_t data1=0, data2=0, data=0;
		cache_block_read(s, cache, b, 64-b, &data1);
		cache_block_read(t, cache, 0, e+1, &data2);
		data = (data2<<((64-b)<<3))+data1;
//		printf("\nr2: %u %d %x\n", paddr, len, data);
		return data;
 	}
}

void cache_block_write(int hi, CacheLine* cache, int b, int len, uint32_t data) {
	int GroupNum = hi % 128,
		tag = hi >> 7;

	memcpy(hw_mem + (hi<<6) + b, &data, len);
//	printf("\nw: %u %d %x\n", (tag<<13) + (GroupNum<<6) + b, len, data);
	for (int i = GroupNum * 8; i < (GroupNum + 1) * 8; ++i) {
		if (cache[i].valid && cache[i].tag == tag) {
			memcpy(cache[i].data+b, &data, len);
			return;
		}
	}
}

void cache_write(paddr_t paddr, size_t len, uint32_t data, CacheLine* cache) {
	int s = paddr >> 6, t = (paddr + len - 1) >> 6;
//	printf("\nw0: %d %d %x\n", paddr, len, data);
	if (s == t) { 
		int b = paddr - (s << 6);
		cache_block_write(s, cache, b, len, data);
	}
	else {
		int b = paddr - (s << 6), e = (paddr + len - 1) - (t << 6);
		cache_block_write(s, cache, b, 64-b, (data<<((e+1)<<3))>>((e+1)<<3));
		cache_block_write(t, cache, 0, e+1, data>>((64-b)<<3));
	} 
}
