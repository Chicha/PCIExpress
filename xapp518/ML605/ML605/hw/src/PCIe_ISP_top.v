`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// © Copyright 2011 Xilinx, Inc. All rights reserved.
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /   Vendor: Xilinx 
// \   \   \/    
//  \   \        BPI PROM Programming over PCIe  Version: 1.0  
//  /   /        Date Last Modified: 2/16/12  
// /___/   /\    Date Created: 12/1/10
// \   \  /  \   Associated Filename: Fast_PCIe_ISP_top.v
//  \___\/\___\ 
// 
//  Device: Virtex-6
//  Purpose: Virtex-6 PCIe In-system Programming for BPI PROM
//  Reference: <XAPP518.pdf>
//  Revision History: Initial release
//   
///////////////////////////////////////////////////////////////////////////////
//
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

///////////////////////////////////////////////////////////////////////////////
// Engineer: ST
// 
// Module Name:  PCIe_ISP_top 
// Description: PCIe In-system Programmer (PISP) top level 
//
// Additional Comments: Initial Release
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module PCIe_ISP_top # (

`ifdef SIMULATION
  parameter        PL_FAST_TRAIN	        = "TRUE"
`else
  parameter        PL_FAST_TRAIN	        = "FALSE"
`endif  
)
(
   output  [7:0]    pci_exp_txp,
   output  [7:0]    pci_exp_txn,
   input   [7:0]    pci_exp_rxp,
   input   [7:0]    pci_exp_rxn,
   input            sys_clk_p,
   input            sys_clk_n,
   input            PCIe_reset_n,
   output  [24:1]   A_pin,
   inout   [15:0]   DQ_pin, 
   output           OE_N_pin,
   output           WE_N_pin,
   output           CS_SEL_pin,
   output           CS_N_pin,
   output  [2:0]    ERROR_pin,
   output           led_0, 
   output           led_1   
);



    
reg	[15:0]	data_gen_reg;
reg		test;

wire            clock_locked;
wire            link_up_n;
wire		TRI_CTRL;
wire	[15:0]	DQ_I;
wire	[15:0]	DQ_O;
wire    [31:0]  data;
wire		fifo_rd_en;
wire		fifo_full;
wire		fifo_empty;
wire    [7:0]   prom_sr;

  
BUFG user_clk_bufg (.O(BPI_clk_bufg),.I(BPI_clk));
    
generate
	genvar  j;
         for (j = 0; j <= 15; j = j + 1)
	         begin : bidir_IO
			IOBUF IOBUF_i (
				.IO	(DQ_pin[j]),
				.I	(DQ_O[j]),
				.O	(DQ_I[j]),
				.T	(TRI_CTRL)				
			);
		end
endgenerate
						 
programmer programmer_i (

	.CLK	        (BPI_clk_bufg),
	.RST	        (~clock_locked),
	.A	        (A_pin),   
	.DQ_I	        (DQ_I),
	.DQ_O	        (DQ_O),
	.OE_N	        (OE_N_pin),
	.WE_N	        (WE_N_pin),
	.CS_N           (CS_N_pin),
	.TRI_CTRL       (TRI_CTRL),
	.DATA           (data),
	.FIFO_RD_EN	(fifo_rd_en), 
	.FIFO_EMPTY	(fifo_empty),
	.PROM_SR	(prom_sr),
	.PROG_RDY	(prog_rdy),
	.ERROR		(ERROR_pin)
);

xilinx_pcie_2_0_ep_v6 pcie_pio_app (

	.pci_exp_txp(pci_exp_txp),
	.pci_exp_txn(pci_exp_txn),
	.pci_exp_rxp(pci_exp_rxp),
	.pci_exp_rxn(pci_exp_rxn),
	.sys_clk_p(sys_clk_p), 
	.sys_clk_n(sys_clk_n),
	.clock_locked(clock_locked),
	.trn_lnk_up_n(link_up_n), 
	.BPI_clk(BPI_clk),
	.sys_reset_n(PCIe_reset_n),
	.fifo_rd_en(fifo_rd_en),
	.conf_data(data),
	.fifo_empty(fifo_empty),
	.prom_sr(prom_sr),
	.prog_rdy(prog_rdy)
	
);

assign 	FIFO_FULL = 1'b0; 
assign CS_SEL_pin = 1'b1;
assign led_1 = ~link_up_n;
assign led_0 = clock_locked;
	 	 
endmodule
