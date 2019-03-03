#include "cpu/instr.h"

make_instr_func(mov_cr2r) {
	int reg = instr_fetch(eip + 1, 1) & 0x7;
	int idx = (instr_fetch(eip + 1, 1) >> 3) & 0x7;
//	printf("movc cr2r : %x %x %x\n", reg, idx, eip);
	if (idx == 0) cpu.gpr[reg]._32 = cpu.cr0.val;
	else if (idx == 3) cpu.gpr[reg]._32 = cpu.cr3.val;
	return 2;
}

make_instr_func(mov_r2cr) {
	int reg = instr_fetch(eip + 1, 1) & 0x7;
	int idx = (instr_fetch(eip + 1, 1) >> 3) & 0x7;
//	printf("movc r2cr: %x %x %x\n", reg, idx, eip);
	if (idx == 0) cpu.cr0.val = cpu.gpr[reg]._32;
	else if (idx == 3) cpu.cr3.val = cpu.gpr[reg]._32;
	return 2;
}

make_instr_func(mov_r2sr) {
	uint8_t x = instr_fetch(eip + 1, 1);
	uint8_t id = x & 0x7, id2 = (x >> 3) & 0x7;
	cpu.segReg[id2].val = cpu.gpr[id]._32;
	load_sreg(id2);
	return 2;
}
