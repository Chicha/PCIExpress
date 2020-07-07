
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name usb_ttl_com -dir "E:/V6/usb_ttl_com_ch340/usb_ttl_com/planAhead_run_3" -part xc6vlx365tff1156-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "usb_ttl_com.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {usb_ttl_com.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top usb_ttl_com $srcset
add_files [list {usb_ttl_com.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6vlx365tff1156-1
