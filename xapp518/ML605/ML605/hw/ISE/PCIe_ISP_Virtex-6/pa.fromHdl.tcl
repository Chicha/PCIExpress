
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name PCIe_ISP -dir "F:/BaiduYunDownload/ML605/xapp518/ML605/ML605/hw/ISE/PCIe_ISP_Virtex-6/planAhead_run_2" -part xc6vlx240tff1156-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "PCIe_ISP_top.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../../src/PCIe/pcie_bram_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/gtx_tx_sync_rate_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/gtx_rx_valid_filter_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/gtx_drp_chanalign_fix_3752_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PIO/PIO_EP_MEM_ACCESS.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PIO/PIO_64_TX_ENGINE.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PIO/PIO_64_RX_ENGINE.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PIO/data_transfer.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/pcie_pipe_misc_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/pcie_pipe_lane_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/pcie_brams_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/gtx_wrapper_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PIO/PIO_TO_CTRL.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PIO/PIO_EP.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/pcie_upconfig_fix_3451_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/pcie_pipe_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/pcie_gtx_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/pcie_bram_top_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PIO/PIO.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/pcie_reset_delay_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/pcie_clocking_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/pcie_2_0_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PIO/pcie_app_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe/v6_pcie_v1_7.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/xilinx_pcie_2_0_ep_v6.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/programmer/programmer.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../src/PCIe_ISP_top.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top PCIe_ISP_top $srcset
add_files [list {PCIe_ISP_top.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6vlx240tff1156-1
