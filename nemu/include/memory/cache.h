#ifndef __CACHE_H_INCLUDED
#define __CACHE_H_INCLUDED
#define LINE 1024
#define SIZE 64


typedef struct {
	bool valid;
	int tag;
	uint8_t data[SIZE];
}CacheLine;

CacheLine L1_dcache[LINE];

void init_cache();

uint32_t cache_read(paddr_t paddr, size_t len, CacheLine* cache);

void cache_write(paddr_t paddr, size_t len, uint32_t data, CacheLine* cache);

#endif
