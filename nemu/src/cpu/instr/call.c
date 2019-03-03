#include "cpu/instr.h"

make_instr_func(call_near) {
//	printf("OLD EBP : 0x%x\n", cpu.gpr[5].val);
	

	OPERAND mesp, rel;

	cpu.gpr[4].val -= data_size / 8;

	mesp.data_size = data_size;
	mesp.addr = cpu.gpr[4]._32;
	mesp.type = OPR_MEM;
	mesp.mem_addr.base = 4;
	mesp.val = cpu.eip + 1 + data_size / 8;
	mesp.sreg = SREG_SS;
	
	operand_write(&mesp);

	rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
	rel.data_size = data_size;
	rel.addr = cpu.eip + 1;

	operand_read(&rel);
	
	print_asm_1("call", "", 1 + data_size / 8, &rel);

	int offset = sign_ext(rel.val, data_size);

	cpu.eip += 1 + data_size / 8;
	if (data_size == 32) cpu.eip += offset;
	else cpu.eip = (cpu.eip + offset) & 0x0000ffff;

//	printf("CALL : 0x%x 0x%x\n", rel.val, cpu.eip);

	return 0;
}

make_instr_func(call_rm_v) {
	OPERAND mesp;
	cpu.gpr[4].val -= data_size / 8;

	opr_src.data_size = data_size;
	
	int len = 1 + modrm_rm(eip + 1, &opr_src);
	operand_read(&opr_src);
	mesp.data_size = data_size;
	mesp.addr = cpu.gpr[4]._32;
	mesp.type = OPR_MEM;
	mesp.mem_addr.base = 4;
	mesp.val = cpu.eip + len;
	mesp.sreg = SREG_SS;

	operand_write(&mesp);

	print_asm_1("call", "", 1 + len, &opr_src);

	cpu.eip = sign_ext(opr_src.val, data_size);

	return 0;
}
