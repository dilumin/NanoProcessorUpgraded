// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Jun  6 08:50:12 2023
// Host        : LAPTOP-CQ49DMED running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {F:/New folder/NanoProcessorUpgraded/Nano
//               Processor.sim/sim_1/synth/timing/xsim/TB_Buffer_time_synth.v}
// Design      : Buffer_4_bit
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module Buffer_4_bit
   (I,
    O,
    en);
  input [3:0]I;
  output [3:0]O;
  input en;

  wire [3:0]I;
  wire [3:0]O;
  wire [3:0]O_OBUF;
  wire \O_TRI[0] ;
  wire en;
  wire en_IBUF;

initial begin
 $sdf_annotate("TB_Buffer_time_synth.sdf",,,,"tool_control");
end
  IBUF \I_IBUF[0]_inst 
       (.I(I[0]),
        .O(O_OBUF[0]));
  IBUF \I_IBUF[1]_inst 
       (.I(I[1]),
        .O(O_OBUF[1]));
  IBUF \I_IBUF[2]_inst 
       (.I(I[2]),
        .O(O_OBUF[2]));
  IBUF \I_IBUF[3]_inst 
       (.I(I[3]),
        .O(O_OBUF[3]));
  OBUFT \O_OBUFT[0]_inst 
       (.I(O_OBUF[0]),
        .O(O[0]),
        .T(\O_TRI[0] ));
  OBUFT \O_OBUFT[1]_inst 
       (.I(O_OBUF[1]),
        .O(O[1]),
        .T(\O_TRI[0] ));
  OBUFT \O_OBUFT[2]_inst 
       (.I(O_OBUF[2]),
        .O(O[2]),
        .T(\O_TRI[0] ));
  OBUFT \O_OBUFT[3]_inst 
       (.I(O_OBUF[3]),
        .O(O[3]),
        .T(\O_TRI[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \O_OBUFT[3]_inst_i_1 
       (.I0(en_IBUF),
        .O(\O_TRI[0] ));
  IBUF en_IBUF_inst
       (.I(en),
        .O(en_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
