#include "cpu/cpu.h"
#include <limits.h>

void set_CF_add(uint32_t res, uint32_t src) { 
	cpu.eflags.CF = (res < src); 
}

void set_PF(uint32_t res) {
	char temp = res;
	int cnt = 0;
	while (temp != 0) {
		++cnt;
		temp &= (temp-1);
	}
	cpu.eflags.PF = !(cnt&1);
}

void set_ZF(uint32_t res) {	cpu.eflags.ZF = (res == 0); }

void set_SF(uint32_t res) {	cpu.eflags.SF = sign(res); }

bool judge(uint32_t res, uint32_t src, uint32_t dest) {
	return sign(src) == sign(dest) && sign(src) ^ sign(res);
}

void set_OF_add(uint32_t res, uint32_t src, uint32_t dest) {
	cpu.eflags.OF = judge(res, src, dest);
}

uint32_t alu_add(uint32_t src, uint32_t dest) {
	uint32_t ret = dest + src;
	set_CF_add(ret, src);
	set_PF(ret);
	set_ZF(ret);
	set_SF(ret);
	set_OF_add(ret,src,dest);
	return ret;
} 

void set_CF_adc(uint32_t res, uint32_t src, uint32_t dest) {
	uint32_t sum = src + dest;
	cpu.eflags.CF = res < sum || sum < src;
}

void set_OF_adc(uint32_t res, uint32_t src, uint32_t dest) {
	cpu.eflags.OF = judge(res, src, dest);
}

uint32_t alu_adc(uint32_t src, uint32_t dest) {
	uint32_t carry = cpu.eflags.CF;
	uint32_t ret = src + dest + carry;

	set_CF_adc(ret, src, dest);
	set_OF_adc(ret, src ,dest);
	set_SF(ret);
	set_ZF(ret);
	set_PF(ret);
	return ret;
}

void set_OF_sub(uint32_t res,  uint32_t src, uint32_t dest) {
	cpu.eflags.OF = judge(res, ~src, dest);
}   

void set_CF_sub(uint32_t res, uint32_t src, uint32_t dest) {
/*	uint32_t temp = ~src;
	uint32_t sum = temp + dest;
	cpu.eflags.CF = (sum < temp || res < sum) ^ 1;*/
	cpu.eflags.CF = src > dest;
}

uint32_t alu_sub(uint32_t src, uint32_t dest) {
	uint32_t res = dest - src;
	set_OF_sub(res, src, dest);
	set_CF_sub(res, src, dest);
	set_PF(res);
	set_SF(res);
	set_ZF(res);
	return res;
}

void set_CF_sbb(uint32_t res, uint32_t src, uint32_t dest) {
/*	uint32_t carry = cpu.eflags.CF;
	uint32_t sum1 = src + carry;
	uint32_t sum2 = ~sum1 + dest;
	uint32_t sum3 = sum2 + 1;
	cpu.eflags.CF = (sum1 < src) || ((sum2 < dest || sum3 < sum2) ^ 1);*/
	cpu.eflags.CF = dest < src || dest - src < cpu.eflags.CF;
} 

void set_OF_sbb(uint32_t res, uint32_t src, uint32_t dest) {
	cpu.eflags.OF = judge(res, ~src, dest);
}

uint32_t alu_sbb(uint32_t src, uint32_t dest) {
	uint32_t carry = cpu.eflags.CF;
	uint32_t res = dest - src - carry;
	set_OF_sbb(res, src, dest);
	set_CF_sbb(res, src, dest);
	set_SF(res);
	set_PF(res);
	set_ZF(res);
	return res;
}

void set_OF_mul(uint64_t res, size_t data_size) {
	bool flag;
	if (data_size == 32) flag = res != (uint32_t)res;
	else if (data_size == 16) flag = res != (uint16_t)res;
	else flag = res != (uint8_t)res;
	cpu.eflags.OF = flag;
}

void set_CF_mul(uint64_t res, size_t data_size) {
	cpu.eflags.CF = cpu.eflags.OF;
}


uint64_t alu_mul(uint32_t src, uint32_t dest, size_t data_size) {
	uint64_t res;
	if (data_size == 32) res = (uint64_t)src * dest;
	else { 
		uint32_t op1 = (unsigned)(src << (32-data_size)) >> (32 - data_size), op2 = (unsigned)(dest << (32-data_size)) >> (32 - data_size);
		res = op1 * op2;
	}
	set_OF_mul(res, data_size);
	set_CF_mul(res, data_size);
	return res;
} 

void set_OF_imul(int64_t res, size_t data_size) {
	bool flag;
	if (data_size == 32) flag = res != (int32_t)res;
	else if (data_size == 16) flag = res != (int16_t) res;
	else flag = res != (int8_t)res;
	cpu.eflags.OF = flag;
}

void set_CF_imul(int64_t res, size_t data_size) {
	cpu.eflags.CF = cpu.eflags.OF;
}

int64_t alu_imul(int32_t src, int32_t dest, size_t data_size) {
	int64_t res;
	if (data_size == 32) res = (int64_t)src * dest;
	else {
		int32_t op1 = (dest << (32 - data_size)) >> (32 - data_size), op2 = (src << (32 - data_size)) >> (32 - data_size);
		res = op1 * op2;
	}
	set_OF_imul(res, data_size);
	set_CF_imul(res, data_size);
	return res;
}

uint32_t alu_div(uint64_t src, uint64_t dest, size_t data_size) {
	if (src == 0) assert(0);
	if (data_size == 32) return dest / src;
	else {
		uint32_t op1 = (unsigned)(dest << (32 - data_size)) >> (32 - data_size), op2 = (unsigned)(src << (32 - data_size)) >> (32 - data_size);
		uint32_t temp = op1 * op2;
		return temp;
	}
}

int32_t alu_idiv(int64_t src, int64_t dest, size_t data_size) {
	if (src == 0) assert(0);
	if (src == -1) {
		if (data_size == 32 && (int32_t)dest == 0x80000000) assert(0);
		else if (data_size == 16 && (int16_t)dest == 0x8000) assert(0);
		else if (data_size == 8 && (int8_t)dest == 0x80) assert(0);
	}
	return dest / src;
}

uint32_t alu_mod(uint64_t src, uint64_t dest) {
	if (src == 0) assert(0);
	return dest % src;
}

int32_t alu_imod(int64_t src, int64_t dest) {
	if (src == 0) assert(0);
	return dest % src;
}

void logic(uint32_t res) {
	cpu.eflags.OF = cpu.eflags.CF = 0;
	set_PF(res);
	set_ZF(res);
	set_SF(res);
}

uint32_t alu_and(uint32_t src, uint32_t dest) {
	uint32_t res = src & dest;
	logic(res);
	return res;
}

uint32_t alu_xor(uint32_t src, uint32_t dest) {
	uint32_t res = src ^ dest;
	logic(res);
	return res;
}

uint32_t alu_or(uint32_t src, uint32_t dest) {
	uint32_t res = src | dest;
	logic(res);
//	printf(
	return res;
}

void set_CF_shl(uint32_t src, uint32_t dest, size_t data_size) {
	if (data_size < src) cpu.eflags.CF = 0;
	else cpu.eflags.CF = (dest >> (data_size - src)) & 1;
}

uint32_t alu_shl(uint32_t src, uint32_t dest, size_t data_size) {
	uint32_t hi = 0;
	if (data_size < 32) hi = (dest >> data_size) << data_size;
	uint32_t lo = 0;
	if (data_size > src) lo = ((unsigned)(dest << (32 - (data_size - src)))) >> (32 - data_size);
	uint32_t res = hi | lo;
	set_CF_shl(src, dest, data_size);
	
	uint32_t check = lo << (32 - data_size);
	set_PF(res);
	set_ZF(check);
	set_SF(check);
	return res;
}

void set_CF_shr(uint32_t src, uint32_t dest, size_t data_size) {
	if (data_size < src) cpu.eflags.CF = 0;
	else cpu.eflags.CF = (dest >> (src - 1)) & 1;
}

uint32_t alu_shr(uint32_t src, uint32_t dest, size_t data_size) {
	uint32_t hi = 0;
	if (data_size < 32) hi = (dest >> data_size) << data_size;
	uint32_t lo = 0;
	if (data_size > src) lo = ((unsigned)(dest << (32 - data_size))) >> (32 - data_size + src);
	uint32_t res = hi | lo;
	set_CF_shr(src, dest, data_size);
	
	uint32_t check = lo << (32 - data_size);
	set_PF(res);
	set_ZF(check);
	set_SF(check);
	return res;
}

uint32_t alu_sar(uint32_t src, uint32_t dest, size_t data_size) {
	uint32_t hi = 0;
	if (data_size < 32) hi = (dest >> data_size) << data_size;
	uint32_t lo = 0;
	if (data_size > src) lo = (unsigned)(((int)(dest << (32 - data_size)) >> (32 - data_size + src)) << (32 - data_size)) >> (32 - data_size);
	uint32_t res = hi | lo;
	set_CF_shr(src, dest, data_size);

	uint32_t check = lo << (32 - data_size);
	set_PF(res);
	set_ZF(check);
	set_SF(check);
	return res;
}

uint32_t alu_sal(uint32_t src, uint32_t dest, size_t data_size) {
	return alu_shl(src, dest, data_size);
}
