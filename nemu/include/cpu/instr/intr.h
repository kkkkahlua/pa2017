#ifndef __INTR_H_INCLUDED
#define __INTR_H_INCLUDED

make_instr_func(cli);
make_instr_func(sti);

make_instr_func(lidt_rm_v);

make_instr_func(int80);

#endif
