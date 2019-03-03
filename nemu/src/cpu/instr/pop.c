#include "cpu/instr.h"

static uint32_t popX() {
	OPERAND m;
	m.data_size = 32;
	m.type = OPR_MEM;
	m.addr = cpu.esp;
	m.sreg = SREG_SS;
	m.mem_addr.base = 4;
	operand_read(&m);
	cpu.esp += 4;
	return m.val;
}

make_instr_func(popa) {
	for (int i = 7; i >= 5; --i) cpu.gpr[i].val = popX();
	popX();
	for (int i = 3; i >= 0; --i) cpu.gpr[i].val = popX();
	return 1;
}

make_instr_func(pop_r) {
	OPERAND m;

	m.data_size = data_size;
	m.addr = cpu.gpr[4]._32;
	m.type = OPR_MEM;
	m.mem_addr.base = 4;
	m.sreg = SREG_SS;
	
	operand_read(&m);

	int id = opcode & 0x7;
	cpu.gpr[id].val = m.val;

	cpu.gpr[4].val += data_size / 8;

	OPERAND r;
	r.type = OPR_REG;
	r.data_size = data_size;
	r.addr = id;
	
	print_asm_1("pop", "", 1, &r);

	return 1;
}

make_instr_func(pop_rm) {
	OPERAND m, rm;

	m.data_size = data_size;
	m.addr = cpu.gpr[4]._32;
	m.type = OPR_MEM;
	m.mem_addr.base = 4;
	m.sreg = SREG_SS;
	
	int len = 1;
	rm.data_size = data_size;
	len += modrm_rm(eip + 1, &rm);
	
	operand_read(&m);	
	rm.val = m.val;

	cpu.gpr[4].val += data_size / 8;

	print_asm_1("pop", "", len, &rm);	
	return len;
}
