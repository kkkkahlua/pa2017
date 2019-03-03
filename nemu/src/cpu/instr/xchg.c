#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	int temp = opr_src.val;
	opr_src.val = opr_dest.val;
	opr_dest.val = temp;
	operand_write(&opr_src);
	operand_write(&opr_dest);
}

make_instr_impl_2op(xchg, r, rm, b)
make_instr_impl_2op(xchg, r, rm, v)

make_instr_func(xchg_r_v) {
	int id = opcode & 0x7;
	int temp = cpu.gpr[id].val;
	cpu.gpr[id].val = cpu.gpr[0].val;
	cpu.gpr[0].val = temp;

	OPERAND r1, r2;
	r1.data_size = r2.data_size = data_size;
	r1.addr = 0; r2.addr = id;
	r1.type = r2.type = OPR_REG;

	print_asm_2("xchg", "", 1, &r1, &r2);
	return 1;
}


