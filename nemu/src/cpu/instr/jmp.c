#include "cpu/instr.h"


make_instr_func(jmp_near) {
        OPERAND rel;
        rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = eip + 1;

        operand_read(&rel);

	int offset = sign_ext(rel.val, data_size);
	print_asm_1("jmp", "", 1 + data_size / 8, &rel);

	cpu.eip += offset;
        return 1 + data_size / 8;
}

make_instr_func(jmp_short_) {
	OPERAND rel;
	rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
	rel.data_size = 8;
	rel.addr = eip + 1;

	operand_read(&rel);
	int offset = sign_ext(rel.val, 8);
	print_asm_1("jmp", "", 2, &rel);
	cpu.eip += 2 + offset;
	return 0;
}

make_instr_func(jmp_rm_v) {
	OPERAND rm;
	rm.data_size = data_size;
	modrm_rm(eip + 1, &rm);
	operand_read(&rm);
	print_asm_1("jmp", "", 1 + data_size / 8, &rm);

	cpu.eip = rm.val;
	return 0;
}

make_instr_func(ljmp) {
	uint32_t addr = instr_fetch(eip + 1, 4);
	uint8_t sreg = instr_fetch(eip + 5, 2);
	cpu.eip = addr;
	cpu.cs.val = sreg;
	load_sreg(1);
	return 0;
}
