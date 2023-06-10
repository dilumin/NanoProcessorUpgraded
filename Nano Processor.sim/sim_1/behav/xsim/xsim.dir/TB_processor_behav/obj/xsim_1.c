/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_430(char*, char *);
extern void execute_431(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_425(char*, char *);
extern void execute_426(char*, char *);
extern void execute_429(char*, char *);
extern void execute_15(char*, char *);
extern void execute_18(char*, char *);
extern void execute_44(char*, char *);
extern void execute_37(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void execute_46(char*, char *);
extern void execute_81(char*, char *);
extern void execute_132(char*, char *);
extern void execute_133(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_136(char*, char *);
extern void execute_137(char*, char *);
extern void execute_138(char*, char *);
extern void execute_139(char*, char *);
extern void execute_176(char*, char *);
extern void execute_177(char*, char *);
extern void execute_178(char*, char *);
extern void execute_179(char*, char *);
extern void execute_216(char*, char *);
extern void execute_217(char*, char *);
extern void execute_218(char*, char *);
extern void execute_219(char*, char *);
extern void execute_256(char*, char *);
extern void execute_147(char*, char *);
extern void execute_148(char*, char *);
extern void execute_142(char*, char *);
extern void execute_143(char*, char *);
extern void execute_258(char*, char *);
extern void execute_259(char*, char *);
extern void execute_260(char*, char *);
extern void execute_262(char*, char *);
extern void execute_263(char*, char *);
extern void execute_264(char*, char *);
extern void execute_266(char*, char *);
extern void execute_267(char*, char *);
extern void execute_268(char*, char *);
extern void execute_269(char*, char *);
extern void execute_271(char*, char *);
extern void execute_272(char*, char *);
extern void execute_273(char*, char *);
extern void execute_274(char*, char *);
extern void execute_311(char*, char *);
extern void execute_312(char*, char *);
extern void execute_313(char*, char *);
extern void execute_387(char*, char *);
extern void execute_396(char*, char *);
extern void execute_398(char*, char *);
extern void execute_417(char*, char *);
extern void execute_418(char*, char *);
extern void execute_419(char*, char *);
extern void execute_420(char*, char *);
extern void execute_421(char*, char *);
extern void execute_422(char*, char *);
extern void execute_423(char*, char *);
extern void execute_424(char*, char *);
extern void execute_428(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[76] = {(funcp)execute_430, (funcp)execute_431, (funcp)execute_59, (funcp)execute_60, (funcp)execute_425, (funcp)execute_426, (funcp)execute_429, (funcp)execute_15, (funcp)execute_18, (funcp)execute_44, (funcp)execute_37, (funcp)execute_38, (funcp)execute_39, (funcp)execute_40, (funcp)execute_41, (funcp)execute_42, (funcp)execute_43, (funcp)execute_28, (funcp)execute_29, (funcp)execute_30, (funcp)execute_31, (funcp)execute_46, (funcp)execute_81, (funcp)execute_132, (funcp)execute_133, (funcp)execute_134, (funcp)execute_135, (funcp)execute_136, (funcp)execute_137, (funcp)execute_138, (funcp)execute_139, (funcp)execute_176, (funcp)execute_177, (funcp)execute_178, (funcp)execute_179, (funcp)execute_216, (funcp)execute_217, (funcp)execute_218, (funcp)execute_219, (funcp)execute_256, (funcp)execute_147, (funcp)execute_148, (funcp)execute_142, (funcp)execute_143, (funcp)execute_258, (funcp)execute_259, (funcp)execute_260, (funcp)execute_262, (funcp)execute_263, (funcp)execute_264, (funcp)execute_266, (funcp)execute_267, (funcp)execute_268, (funcp)execute_269, (funcp)execute_271, (funcp)execute_272, (funcp)execute_273, (funcp)execute_274, (funcp)execute_311, (funcp)execute_312, (funcp)execute_313, (funcp)execute_387, (funcp)execute_396, (funcp)execute_398, (funcp)execute_417, (funcp)execute_418, (funcp)execute_419, (funcp)execute_420, (funcp)execute_421, (funcp)execute_422, (funcp)execute_423, (funcp)execute_424, (funcp)execute_428, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_34};
const int NumRelocateId= 76;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/TB_processor_behav/xsim.reloc",  (void **)funcTab, 76);
	iki_vhdl_file_variable_register(dp + 61880);
	iki_vhdl_file_variable_register(dp + 61936);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/TB_processor_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/TB_processor_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/TB_processor_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/TB_processor_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/TB_processor_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
