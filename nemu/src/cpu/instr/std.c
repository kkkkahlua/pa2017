#include  "cpu/instr.h"

make_instr_func(std) {
	cpu.eflags.DF = 1;
	print_asm_0("std", "", 1);
	return 1;
}
