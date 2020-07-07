*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    © Copyright 2012, 2013 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor: Xilinx 
Current readme.txt Version: 1.2
Date Last Modified:  29MAR2013
Date Created: 30MAR2012

Associated Filename: xapp518.zip
Associated Document: XAPP518: In-System Programming of BPI PROM for Virtex-6,
                     Kintex-7 & Virtex-7 FPGAs Using PCI Express Technology
   

Supported Device(s): XC6VLX240TFF1156-1, XC7K325T-2FFG900C, & XC7VX485T-2FFG1761C

   
*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.


*************************************************************************

This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. OTHER INFORMATION 
7. SUPPORT


1. REVISION HISTORY 

            Readme  
Date        Version                  Revision Description
=========================================================================
06DEC2011   Early Access             Initial early release.
30MAR2012   1.0                      Initial Xilinx release.
28AUG2012   1.1                      Added failsafe PROM update section
29MAR2013   1.2                      Added Kintex-7 & Virtex-7 support           
=========================================================================


2. OVERVIEW

This readme describes how to use the reference design files that come with XAPP518. 
The reference design zip file contains the following design files:

* XAPP518 reference design source codes (Verilog only)
* Jungo driver binary system files
* ISE project files
* pre-built demo files


3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS

* ML605 rev. D evaluation board (XC6VLX240T-FF1156 production device)
* or KC705 rev. D evaluation board (XC7K325T-2FFG900C device)
* or VC707 rev. B evaluation board (XC7VX485T-2FFG1761C device)
* Xilinx ISE 14.4 or higher. 
* Modelsim SE 6.5b
* X86 system with Windows XP Service Pack 3 installed


4. DESIGN FILE HIERARCHY


The directory structure underneath this top-level folder is described below:

\config
 |   This folder contains the demo configuration files
 |
 +-----  \bitfiles
 |        The demo FPGA bitfile PCIe_ISP_top.bit is found here.  
 |
 |
 +-----  \PROM
 |        |-- XAPP518_PROM_img.mcs is the demo PROM MCS file used to be programmed
 |            to the target PROM.
 |        |-- XAPP518_corrupted_PROM_img.mcs is a corrupted PROM MCS file 
 |            to trigger fallback
 |        |-- XAPP518_fallback_PROM_img.mcs is a fallback PROM MCS file. It is the  
 |            golden bitfile in a fallback event.
 |       
\hw
 |   This folder contains the source codes and ISE project
 |
 +-----  \ISE
 |       This folder has the ISE14.4 project file
 |
 +-----  \src 
 |       This folder has all the source files to build the design
 |
\sw
 |   This folder contains the source codes and executable of the XAPP518 demo application. 
 |   It also has the Jungo driver files.
 |
 +-----  \Jungo
          |
          +-- \driver
          +-- \system
          


5. INSTALLATION AND OPERATING INSTRUCTIONS 

See XAPP518 for detailed description on installing and running the demo.



6. OTHER INFORMATION 


* This reference design does not provide the Jungo driver source codes. (See Answer Record 31416.) 
Contact Jungo directly for source code availability (http://www.jungo.com/).

* To quick run the demo without building the project, refer to the reference Design Demonstration section in XAPP518.

* Known Issues - See appnote 


7. SUPPORT

To obtain technical support for this reference design, go to 
www.xilinx.com/support to locate answers to known issues in the Xilinx
Answers Database or to create a WebCase.  