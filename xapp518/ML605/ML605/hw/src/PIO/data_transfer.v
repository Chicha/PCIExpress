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
//  /   /        Date Last Modified: 8/12/11 
// /___/   /\    Date Created: 5/13/10
// \   \  /  \   Associated Filename: data_transfer.v
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
// Engineer:  ST
// 
// Module Name:    data_transfer 
// Description: Buffer data transfer control
//
// Additional Comments: Initial Release
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1 ns / 1 ns

module data_transfer(
   PCIe_CLK,
   CONF_CLK,
   TRN_RESET_N,
   CONF_FIFO_CLR,
   WR_RQST,
   WR_DATA,
   FIFO_EMPTY,
   FIFO_PROG_FULL,
   PAUSE,
   CONF_ERROR,
   RST_CONF_ERROR,

   CONF_DATA,
   CONF_ENABLE,
);
   input            PCIe_CLK;
   input            CONF_CLK;
   input            TRN_RESET_N;
   input            CONF_FIFO_CLR;
   input            WR_RQST;
   input [31:0]     WR_DATA;
   output           FIFO_EMPTY;
   output           FIFO_PROG_FULL;
   output reg       PAUSE;
   output reg       CONF_ERROR;
   input            RST_CONF_ERROR;


   output [31:0]    CONF_DATA;
   input        CONF_ENABLE;      
   
   reg              FIFO_rd_en;
   reg              FIFO_rd_en_prev;
   reg              CONF_FIFO_CLR_sync, CONF_FIFO_CLR_sync1;
   wire             FIFO_prog_full;
   wire             FIFO_empty;   
   wire [31:0]      conf_data_fifo;
   
   always @(posedge CONF_CLK)
   begin
   	CONF_FIFO_CLR_sync = CONF_FIFO_CLR;
   	CONF_FIFO_CLR_sync1 = CONF_FIFO_CLR_sync;
   end   

   
   config_FIFO config_FIFO_i(
   .din(WR_DATA), 
   .wr_clk(PCIe_CLK), 
   .wr_en(WR_RQST), 
   .full(), 
   .prog_full(FIFO_PROG_FULL), 
   .dout(conf_data_fifo), 
   .rd_clk(CONF_CLK), 
   .rd_en(CONF_ENABLE), 
   .empty(FIFO_EMPTY), 
   .rst(CONF_FIFO_CLR_sync1)
   );
   
//byte swap
   assign CONF_DATA = {conf_data_fifo[7:0], conf_data_fifo[15:8],conf_data_fifo[23:16],conf_data_fifo[31:24]} ;


   //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
   //XX
   //XX  Back-pressure of the FIFO, request to stop FIFO-writing
   //XX
   //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
   
   always @(posedge PCIe_CLK)
      begin
      if (!TRN_RESET_N)
         PAUSE <= 1'b0;
      else
         if (FIFO_PROG_FULL == 1'b1)
            PAUSE <= 1'b1;
         else
            PAUSE <= 1'b0;
      end 

   always @(FIFO_empty)   

      if ( FIFO_empty == 1'b0)      
         FIFO_rd_en <=  1'b1;
      else
         FIFO_rd_en <=  1'b0;
   
endmodule

module config_FIFO (
  rd_en, overflow, prog_full, wr_en, full, empty, wr_clk, rst, rd_clk, underflow, dout, din
)/* synthesis syn_black_box syn_noprune=1 */;
  input rd_en;
  output overflow;
  output prog_full;
  input wr_en;
  output full;
  output empty;
  input wr_clk;
  input rst;
  input rd_clk;
  output underflow;
  output [31 : 0] dout;
  input [31 : 0] din;
endmodule