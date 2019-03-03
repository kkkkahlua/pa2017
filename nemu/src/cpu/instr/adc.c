#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_dest.val = alu_adc(opr_dest.val, opr_src.val);
	operand_write(&opr_dest);
}

make_instr_impl_2op(adc, r, rm, b)
make_instr_impl_2op(adc, r, rm, v)
make_instr_impl_2op(adc, rm, r, b)
make_instr_impl_2op(adc, rm, r, v)
make_instr_impl_2op(adc, i, a, b)
make_instr_impl_2op(adc, i, a, v)
make_instr_impl_2op(adc, i, rm, b)
make_instr_impl_2op(adc, i, rm, v)

make_instr_func(adc_si2rm_bv) {
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

	rm.val = alu_adc(rm.val, imm.val);
	operand_write(&rm);
	
	print_asm_2("adc", "", len + 1, &imm, &rm);

	return len + 1;
}
