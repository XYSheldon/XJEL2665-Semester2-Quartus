transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/XJEL2665_Quartus/Task_203/Task2 {D:/XJEL2665_Quartus/Task_203/Task2/OneBitFullAdder.v}
vlog -vlog01compat -work work +incdir+D:/XJEL2665_Quartus/Task_203/Task2 {D:/XJEL2665_Quartus/Task_203/Task2/ThreeBitFullAdder.v}
vlog -vlog01compat -work work +incdir+D:/XJEL2665_Quartus/Task_203/Task2 {D:/XJEL2665_Quartus/Task_203/Task2/FourBitFullAdder.v}
vlog -vlog01compat -work work +incdir+D:/XJEL2665_Quartus/Task_203/Task2 {D:/XJEL2665_Quartus/Task_203/Task2/EightBitFullAdder.v}

vlog -vlog01compat -work work +incdir+D:/XJEL2665_Quartus/Task_203/Task2 {D:/XJEL2665_Quartus/Task_203/Task2/EightBitFullAdder_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  EightBitFullAdder_tb

add wave *
view structure
view signals
run -all
