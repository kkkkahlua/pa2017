#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_dest.val = alu_xor(opr_dest.val, opr_src.val);
	operand_write(&opr_dest);
}

make_instr_impl_2op(xor, r, rm, b)
make_instr_impl_2op(xor, r, rm, v)
make_instr_impl_2op(xor, rm, r, b)
make_instr_impl_2op(xor, rm, r, v)
make_instr_impl_2op(xor, i, a, b)
make_instr_impl_2op(xor, i, a, v)
make_instr_impl_2op(xor, i, rm, b)
make_instr_impl_2op(xor, i, rm, v)

make_instr_func(xor_si2rm_bv) {
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
	rm.val = alu_xor(rm.val, imm.val);
	operand_write(&rm);
	
	print_asm_2("xor", "", len + 1, &imm, &rm);

	return len + 1;
}
