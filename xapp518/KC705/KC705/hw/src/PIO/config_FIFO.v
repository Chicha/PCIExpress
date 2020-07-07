////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: config_FIFO.v
// /___/   /\     Timestamp: Tue Sep 11 16:48:24 2012
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/simont/projects/PCIe_ISP/BPI_Kintex/Coregen/tmp/_cg/config_FIFO.ngc /home/simont/projects/PCIe_ISP/BPI_Kintex/Coregen/tmp/_cg/config_FIFO.v 
// Device	: 7k325tffg900-2
// Input file	: /home/simont/projects/PCIe_ISP/BPI_Kintex/Coregen/tmp/_cg/config_FIFO.ngc
// Output file	: /home/simont/projects/PCIe_ISP/BPI_Kintex/Coregen/tmp/_cg/config_FIFO.v
// # of Modules	: 1
// Design Name	: config_FIFO
// Xilinx        : /build/xfndry/P.28xd/rtf/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module config_FIFO (
  rst, wr_clk, rd_clk, wr_en, rd_en, full, overflow, empty, underflow, prog_full, din, dout
)/* synthesis syn_black_box syn_noprune=1 */;
  input rst;
  input wr_clk;
  input rd_clk;
  input wr_en;
  input rd_en;
  output full;
  output overflow;
  output empty;
  output underflow;
  output prog_full;
  input [31 : 0] din;
  output [31 : 0] dout;
  
  // synthesis translate_off
  
  wire N1;
  wire \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/UNDERFLOW_3 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/OVERFLOW_4 ;
  wire NlwRenamedSig_OI_empty;
  wire NlwRenamedSig_OI_full;
  wire \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg_GND_25_o_MUX_2_o ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg_GND_25_o_MUX_1_o ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg_84 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg_90 ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/rden_tmp ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/underflow_int ;
  wire \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/overflow_int ;
  wire N2;
  wire \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/Mshreg_power_on_rd_rst_0_95 ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ALMOSTEMPTY_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DBITERR_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDERR_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_SBITERR_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRERR_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<63>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<62>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<61>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<60>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<59>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<58>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<57>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<56>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<55>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<54>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<53>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<52>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<51>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<50>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<49>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<48>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<47>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<46>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<45>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<44>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<43>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<42>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<41>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<40>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<39>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<38>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<37>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<36>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<35>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<34>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<33>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<32>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<12>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<11>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<10>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<9>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<8>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<12>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<11>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<10>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<9>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<8>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<7>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<6>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<5>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<4>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<3>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<2>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<1>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<0>_UNCONNECTED ;
  wire \NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/Mshreg_power_on_rd_rst_0_Q15_UNCONNECTED ;
  wire [0 : 0] \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rd_rst_i ;
  wire [0 : 0] \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/power_on_rd_rst ;
  wire [4 : 0] \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb ;
  wire [4 : 0] \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb ;
  assign
    full = NlwRenamedSig_OI_full,
    overflow = \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/OVERFLOW_4 ,
    empty = NlwRenamedSig_OI_empty,
    underflow = \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/UNDERFLOW_3 ;
  GND   XST_GND (
    .G(N1)
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg  (
    .C(rd_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg_GND_25_o_MUX_2_o ),
    .PRE(rst),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg_84 )
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg  (
    .C(wr_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg_GND_25_o_MUX_1_o ),
    .PRE(rst),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg_90 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb_4  (
    .C(rd_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg_84 ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb_3  (
    .C(rd_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb [4]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb_2  (
    .C(rd_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb [3]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb_1  (
    .C(rd_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb [2]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb_0  (
    .C(rd_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb [1]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb_4  (
    .C(wr_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg_90 ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb_3  (
    .C(wr_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb [4]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb_2  (
    .C(wr_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb [3]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb_1  (
    .C(wr_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb [2]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb_0  (
    .C(wr_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb [1]),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb [0])
  );
  FIFO36E1 #(
    .ALMOST_EMPTY_OFFSET ( 13'h0005 ),
    .ALMOST_FULL_OFFSET ( 13'h001A ),
    .DATA_WIDTH ( 36 ),
    .DO_REG ( 1 ),
    .EN_ECC_READ ( "FALSE" ),
    .EN_ECC_WRITE ( "FALSE" ),
    .EN_SYN ( "FALSE" ),
    .FIFO_MODE ( "FIFO36" ),
    .FIRST_WORD_FALL_THROUGH ( "FALSE" ),
    .INIT ( 72'h000000000000000000 ),
    .SIM_DEVICE ( "7SERIES" ),
    .SRVAL ( 72'h000000000000000000 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1  (
    .ALMOSTEMPTY
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ALMOSTEMPTY_UNCONNECTED )
,
    .ALMOSTFULL(prog_full),
    .DBITERR
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DBITERR_UNCONNECTED )
,
    .EMPTY(NlwRenamedSig_OI_empty),
    .FULL(NlwRenamedSig_OI_full),
    .INJECTDBITERR(N1),
    .INJECTSBITERR(N1),
    .RDCLK(rd_clk),
    .RDEN(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/rden_tmp ),
    .RDERR
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDERR_UNCONNECTED )
,
    .REGCE(N1),
    .RST(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rd_rst_i [0]),
    .RSTREG(N1),
    .SBITERR
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_SBITERR_UNCONNECTED )
,
    .WRCLK(wr_clk),
    .WREN(wr_en),
    .WRERR
(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRERR_UNCONNECTED )
,
    .DI({N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, N1, din[31], 
din[30], din[29], din[28], din[27], din[26], din[25], din[24], din[23], din[22], din[21], din[20], din[19], din[18], din[17], din[16], din[15], 
din[14], din[13], din[12], din[11], din[10], din[9], din[8], din[7], din[6], din[5], din[4], din[3], din[2], din[1], din[0]}),
    .DIP({N1, N1, N1, N1, N1, N1, N1, N1}),
    .DO({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<63>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<62>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<61>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<60>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<59>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<58>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<57>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<56>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<55>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<54>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<53>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<52>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<51>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<50>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<49>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<48>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<47>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<46>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<45>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<44>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<43>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<42>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<41>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<40>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<39>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<38>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<37>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<36>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<35>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<34>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<33>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DO<32>_UNCONNECTED 
, dout[31], dout[30], dout[29], dout[28], dout[27], dout[26], dout[25], dout[24], dout[23], dout[22], dout[21], dout[20], dout[19], dout[18], dout[17]
, dout[16], dout[15], dout[14], dout[13], dout[12], dout[11], dout[10], dout[9], dout[8], dout[7], dout[6], dout[5], dout[4], dout[3], dout[2], 
dout[1], dout[0]}),
    .DOP({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<2>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_DOP<0>_UNCONNECTED 
}),
    .ECCPARITY({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<2>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_ECCPARITY<0>_UNCONNECTED 
}),
    .RDCOUNT({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<12>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<11>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<10>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<9>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<8>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<2>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_RDCOUNT<0>_UNCONNECTED 
}),
    .WRCOUNT({
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<12>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<11>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<10>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<9>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<8>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<7>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<6>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<5>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<4>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<3>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<2>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<1>_UNCONNECTED 
, 
\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf36e1_inst.sngfifo36e1_WRCOUNT<0>_UNCONNECTED 
})
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/UNDERFLOW  (
    .C(rd_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/underflow_int ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/UNDERFLOW_3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/OVERFLOW  (
    .C(wr_clk),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/overflow_int ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/OVERFLOW_4 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/Mmux_rd_rst_reg_GND_25_o_MUX_2_o11  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_fb [0]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg_84 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg_GND_25_o_MUX_2_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/Mmux_wr_rst_reg_GND_25_o_MUX_1_o11  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_fb [0]),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg_90 ),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/wr_rst_reg_GND_25_o_MUX_1_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/RD_RST_I<1>1  (
    .I0(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/rd_rst_reg_84 ),
    .I1(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/power_on_rd_rst [0]),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rd_rst_i [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/rden_tmp1  (
    .I0(NlwRenamedSig_OI_empty),
    .I1(rd_en),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/rden_tmp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/underflow_int1  (
    .I0(rd_en),
    .I1(NlwRenamedSig_OI_empty),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/underflow_int )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/overflow_int1  (
    .I0(NlwRenamedSig_OI_full),
    .I1(wr_en),
    .O(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/v6_fifo.fblk/overflow_int )
  );
  VCC   XST_VCC (
    .P(N2)
  );
  SRLC16E #(
    .INIT ( 16'h001F ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/Mshreg_power_on_rd_rst_0  (
    .A0(N1),
    .A1(N1),
    .A2(N2),
    .A3(N1),
    .CE(N2),
    .CLK(rd_clk),
    .D(N1),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/Mshreg_power_on_rd_rst_0_95 ),
    .Q15(\NLW_U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/Mshreg_power_on_rd_rst_0_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b1 ))
  \U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/power_on_rd_rst_0  (
    .C(rd_clk),
    .CE(N2),
    .D(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/Mshreg_power_on_rd_rst_0_95 ),
    .Q(\U0/xst_fifo_generator/gconvfifo.rf/gbiv5.bi/rstbt/power_on_rd_rst [0])
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

// synthesis translate_on
