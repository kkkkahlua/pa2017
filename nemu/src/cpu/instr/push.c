#include "cpu/instr.h"

static void instr_execute_1op() {
	operand_read(&opr_src);

	OPERAND m;
	m.data_size = data_size;
	m.type = OPR_MEM;
	cpu.gpr[4].val -= data_size / 8;
	m.addr = cpu.gpr[4].val;
	m.val = opr_src.val;
	m.sreg = SREG_SS;

	operand_write(&m);
}

make_instr_impl_1op(push, rm, v)
make_instr_impl_1op(push, i, b)
make_instr_impl_1op(push, i, v)

make_instr_func(push_r) {
	OPERAND m;

	cpu.gpr[4].val -= data_size / 8;

	m.data_size = data_size;
	m.addr = cpu.gpr[4]._32;
	m.type = OPR_MEM;
	m.mem_addr.base = 4;
	m.sreg = SREG_SS;

	int id = opcode & 0x7;
	m.val = cpu.gpr[id].val;
	if (id == 4) m.val += data_size / 8;
	operand_write(&m);

	OPERAND r;
	r.type = OPR_REG;
	r.addr = id;
	r.data_size = data_size;

	print_asm_1("push", "", 1, &r);

	return 1;
}

static void pushX(uint32_t x) {
	OPERAND m;
	cpu.esp -= 4;
	m.addr = cpu.esp;
	m.data_size = 32;
	m.type = OPR_MEM;
	m.mem_addr.base = 4;
	m.sreg = SREG_SS;
	m.val = x;
	operand_write(&m);
}
make_instr_func(pusha) {
	uint32_t temp = cpu.esp;
	for (int i = 0; i < 4; ++i) pushX(cpu.gpr[i].val);
	pushX(temp);
	for (int i = 5; i < 8; ++i) pushX(cpu.gpr[i].val);
	return 1;
}
