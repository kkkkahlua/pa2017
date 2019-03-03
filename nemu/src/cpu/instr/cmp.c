#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	alu_sub(opr_src.val, opr_dest.val);
}

make_instr_impl_2op(cmp, r, rm, b)
make_instr_impl_2op(cmp, r, rm, v)
make_instr_impl_2op(cmp, rm, r, b)
make_instr_impl_2op(cmp, rm, r, v)
make_instr_impl_2op(cmp, i, a, b)
make_instr_impl_2op(cmp, i, a, v)
make_instr_impl_2op(cmp, i, rm, b)
make_instr_impl_2op(cmp, i, rm, v)

make_instr_func(cmp_si2rm_bv) {
	int len = 1;

	OPERAND rm, imm;
	rm.data_size = data_size;
	len += modrm_rm(eip + 1, &rm);

	operand_read(&rm);

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	imm.data_size = 8;
	imm.sreg = SREG_CS;

	operand_read(&imm);

	imm.val = sign_ext(imm.val, 8);
	
	alu_sub(imm.val, rm.val);
	
	print_asm_2("cmp", "", len + 1, &imm, &rm);
	return len + 1;
}

