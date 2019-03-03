#include "cpu/instr.h"
#include "device/port_io.h"

make_instr_func(in_dx2al) {
	cpu.gpr[0]._8[0] = pio_read(cpu.gpr[2]._16, 1);
	return 1;
}

make_instr_func(in_dx2av) {
//	if (data_size == 16) cpu.gpr[0]._16 = pio_read(cpu.gpr[2]._16, 2);
//	else 
		cpu.gpr[0]._32 = pio_read(cpu.gpr[2]._16, 4);
	return 1;
}

make_instr_func(out_al2dx) {
	pio_write(cpu.gpr[2]._16, 1, cpu.gpr[0]._8[0]);
	return 1;
}

make_instr_func(out_av2dx) {
//	if (data_size == 16) pio_write(cpu.gpr[2]._16, 2, cpu.gpr[0]._16);
//	else 
		pio_write(cpu.gpr[2]._16, 4, cpu.gpr[0]._32);
	return 1;
}
