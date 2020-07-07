
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name led_test -dir "E:/V6/led_test/planAhead_run_1" -part xc6vlx365tff1156-1
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "led_test.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {led_test.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top led_test $srcset
add_files [list {led_test.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6vlx365tff1156-1
