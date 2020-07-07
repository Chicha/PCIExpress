
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name V6_pcie -dir "E:/V6/PCIE/V6_pcie/planAhead_run_4" -part xc6vlx365tff1156-1
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/V6/PCIE/V6_pcie/riffa_top_v6_pcie_v2_5.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/V6/PCIE/V6_pcie} {ipcore_dir} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "riffa_top_v6_pcie_v2_5.ucf" [current_fileset -constrset]
add_files [list {riffa_top_v6_pcie_v2_5.ucf}] -fileset [get_property constrset [current_run]]
link_design
