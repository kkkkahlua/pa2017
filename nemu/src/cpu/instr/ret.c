#include "cpu/instr.h"
#include "stdio.h"


make_instr_func(ret_near) {
    OPERAND m;
    m.data_size = data_size;
    m.addr = cpu.gpr[4]._32;
    m.type = OPR_MEM;
    m.mem_addr.base = 4;
	m.sreg = SREG_SS;
	
	print_asm_0("ret", "", 1);

    operand_read(&m);
    if (data_size == 16) m.val &= 0x0000ffff;
    cpu.eip = m.val;
    cpu.gpr[4].val += data_size / 8;
    return 0;
}

make_instr_func(ret_near_Iw) {
    OPERAND m, imm;
    m.data_size = data_size;
    m.addr = cpu.gpr[4]._32;
    m.type = OPR_MEM;
    m.mem_addr.base = 4;
	m.sreg = SREG_SS;

	imm.data_size = 16;
	imm.type = OPR_IMM;
	imm.addr = eip + 1;
	imm.sreg = SREG_CS;
	operand_read(&imm);

	print_asm_1("ret", "", 2, &imm);

    operand_read(&m);
    if (data_size == 16) m.val &= 0x0000ffff;
    cpu.eip = m.val;

	
    cpu.gpr[4].val += 2 + imm.val;

    return 0;
}

static uint32_t popX() {
	OPERAND m;
	m.data_size = 32;
	m.type = OPR_MEM;
	m.addr = cpu.esp;
	m.sreg = SREG_SS;
	m.mem_addr.base = 4;
	operand_read(&m);
	cpu.esp += 4;
	return m.val;
}

make_instr_func(iret) {
	cpu.eip = popX();
	cpu.cs.val = popX();
	cpu.eflags.val = popX();
	return 0;
}
