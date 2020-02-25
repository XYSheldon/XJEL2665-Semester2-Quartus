transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/x1418/Desktop/XJEL2665_Tasks_Quartus/Task_204 {C:/Users/x1418/Desktop/XJEL2665_Tasks_Quartus/Task_204/OneBitFullAdder.v}
vlog -vlog01compat -work work +incdir+C:/Users/x1418/Desktop/XJEL2665_Tasks_Quartus/Task_204 {C:/Users/x1418/Desktop/XJEL2665_Tasks_Quartus/Task_204/ArrayCell.v}
vlog -vlog01compat -work work +incdir+C:/Users/x1418/Desktop/XJEL2665_Tasks_Quartus/Task_204 {C:/Users/x1418/Desktop/XJEL2665_Tasks_Quartus/Task_204/ArrayRow.v}
vlog -vlog01compat -work work +incdir+C:/Users/x1418/Desktop/XJEL2665_Tasks_Quartus/Task_204 {C:/Users/x1418/Desktop/XJEL2665_Tasks_Quartus/Task_204/EightMultiplier.v}

vlog -vlog01compat -work work +incdir+C:/Users/x1418/Desktop/XJEL2665_Tasks_Quartus/Task_204 {C:/Users/x1418/Desktop/XJEL2665_Tasks_Quartus/Task_204/EightMultiplier_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  EightMultiplier_tb

add wave *
view structure
view signals
run -all
