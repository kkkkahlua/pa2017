#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_dest.val = alu_or(opr_dest.val, opr_src.val);
	operand_write(&opr_dest);
}

make_instr_impl_2op(or, r, rm, b)
make_instr_impl_2op(or, r, rm, v)
make_instr_impl_2op(or, rm, r, b)
make_instr_impl_2op(or, rm, r, v)
make_instr_impl_2op(or, i, a, b)
make_instr_impl_2op(or, i, a, v)
make_instr_impl_2op(or, i, rm, b)
make_instr_impl_2op(or, i, rm, v)

make_instr_func(or_si2rm_bv) {
	int len = 1;

	OPERAND rm, imm;
	rm.data_size = data_size;
	len += modrm_rm(eip + 1, &rm);

	operand_read(&rm);

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	imm.data_size = 8;

	operand_read(&imm);

	imm.val = sign_ext(imm.val, 8);

	rm.val = alu_or(rm.val, imm.val);
	operand_write(&rm);
	print_asm_2("or", "", len + 1, &imm, &rm);
	return len + 1;
}
