#include "cpu/instr.h"
#include <stdio.h>

static void instr_execute_1op() {
	operand_read(&opr_src);
	cpu.gdtr.limit = laddr_read(opr_src.addr, 2);
	cpu.gdtr.base = laddr_read(opr_src.addr + 2, 4);
}

make_instr_impl_1op(lgdt, rm, v);
