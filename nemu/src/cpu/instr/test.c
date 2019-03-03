#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	alu_and(opr_dest.val, opr_src.val);
}

static void instr_execute_1op() {
	operand_read(&opr_src);
	if (data_size == 8) alu_and(opr_src.val, cpu.gpr[0]._8[0]);
	else if (data_size == 16) alu_and(opr_src.val, cpu.gpr[0]._16);
	else alu_and(opr_src.val, cpu.gpr[0]._32);
}

make_instr_impl_2op(test, r, rm, b)
make_instr_impl_2op(test, r, rm, v)
make_instr_impl_2op(test, i, rm, b)
make_instr_impl_2op(test, i, rm, v)
make_instr_impl_1op(test, i, b)
make_instr_impl_1op(test, i, v)

