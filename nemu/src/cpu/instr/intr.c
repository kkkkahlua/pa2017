#include "cpu/instr.h"
#include "cpu/intr.h"

make_instr_func(cli) {
	cpu.eflags.IF = 0;
	return 1;
}

make_instr_func(sti) {
	cpu.eflags.IF = 1;
	return 1;
}

static void instr_execute_1op() {
	operand_read(&opr_src);
	cpu.idtr.limit = laddr_read(opr_src.addr, 2);
	cpu.idtr.base = laddr_read(opr_src.addr + 2, 4);
}

make_instr_impl_1op(lidt, rm, v);

make_instr_func(int80) {
	int idx = instr_fetch(eip + 1, 1);
	raise_sw_intr(idx);
	return 0;
}
