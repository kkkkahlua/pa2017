#include "cpu/instr.h"

static void instr_execute_1op() {
	operand_read(&opr_src);
	++opr_src.val;
	operand_write(&opr_src);
}

make_instr_impl_1op(inc, rm, b)
make_instr_impl_1op(inc, rm, v)

make_instr_func(inc_r_v) {
	int id = opcode & 0x7;
	++cpu.gpr[id].val;
	
	OPERAND r;
	r.addr = id;
	r.type = OPR_REG;
	r.data_size = data_size;
		
	print_asm_1("dec", "", 1, &r);
	return 1;
}
