#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"

static void pushX(uint32_t x) {
	OPERAND m;
	m.data_size = 32;
	m.type = OPR_MEM;
	cpu.esp -= 4;
	m.addr = cpu.esp;
	m.val = x;
	m.sreg = SREG_SS;
	operand_write(&m);
}

void raise_intr(uint8_t intr_no) {
#ifdef IA32_INTR
	pushX(cpu.eflags.val);
	pushX(cpu.cs.val);
	pushX(cpu.eip);
	uint32_t base = cpu.idtr.base;
	uint32_t addr = base + (intr_no << 3);
//	printf("%x %x\n", base, addr);
	uint16_t idt[4];
	for (int i = 0; i < 4; ++i) idt[i] = vaddr_read(addr + (i<<1), SREG_DS, 2);
//	for (int i = 0; i < 4; ++i) printf("%x ", idt[i]);
//	printf("\n");
	uint32_t offset = (idt[3] << 16) | idt[0];
	cpu.eip = cpu.cs.base + offset;
//	printf("%x\n", cpu.eip);
#endif
}

void raise_sw_intr(uint8_t intr_no) {
	// return address is the next instruction
	cpu.eip += 2;
	raise_intr(intr_no);
}
