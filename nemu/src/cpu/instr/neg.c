#include "cpu/instr.h"

static void instr_execute_1op() {
	operand_read(&opr_src);
	alu_sub(0, opr_src.val);
	opr_src.val = -opr_src.val;
	if (opr_src.val) cpu.eflags.CF = 1;
	else cpu.eflags.CF = 0;
	operand_write(&opr_src);
}

make_instr_impl_1op(neg, rm, v);

