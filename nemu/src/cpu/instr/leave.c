#include "cpu/instr.h"

make_instr_func(leave) {
	cpu.gpr[4].val = cpu.gpr[5].val;

	OPERAND m;
	m.data_size = data_size;
	m.addr = cpu.gpr[4]._32;
	m.type = OPR_MEM;
	m.mem_addr.base = 4;
	m.sreg = SREG_SS;

	operand_read(&m);
	cpu.gpr[5].val = m.val;
	cpu.gpr[4].val += data_size / 8;
	print_asm_0("leave", "", 1);

	return 1;
}
