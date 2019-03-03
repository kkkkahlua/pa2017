#include "cpu/instr.h"

make_instr_func(lea) {
	OPERAND m;
	m.data_size = data_size;
	int len = 1;
	uint8_t opc;
	len += modrm_opcode_rm(eip + 1, &opc, &m);

	if (data_size == 16) cpu.gpr[opc]._16 = m.addr & 0xffff;
	else cpu.gpr[opc].val = m.addr;

	OPERAND r;
	r.data_size = data_size;
	r.type = OPR_REG;
	r.addr = opc;

	print_asm_2("lea", "", len, &m, &r);

	return len;
}
