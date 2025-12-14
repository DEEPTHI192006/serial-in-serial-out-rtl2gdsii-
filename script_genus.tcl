read_lib /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl {dfft.v siso.v}
elaborate
read_sdc input_constraint.sdc
set_top siso

syn_generic
syn_map
syn_opt
current_design siso
ungroup -all -flatten 

write_netlist > siso_netlist.v

write_sdc > gate_output_constraint.sdc

report area > ../reports/syn_area.rpt
report timing > ../reports/syn_timing.rpt
report power > ../reports/syn_power.rpt
