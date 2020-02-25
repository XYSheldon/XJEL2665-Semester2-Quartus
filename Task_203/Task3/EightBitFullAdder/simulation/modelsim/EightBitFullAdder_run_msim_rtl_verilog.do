transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/XJEL2665_Quartus/Task_203/Task3/EightBitFullAdder {D:/XJEL2665_Quartus/Task_203/Task3/EightBitFullAdder/EightBitFullAdder.v}
vlog -vlog01compat -work work +incdir+D:/XJEL2665_Quartus/Task_203/Task3/EightBitFullAdder {D:/XJEL2665_Quartus/Task_203/Task3/EightBitFullAdder/OneBitFullAdder.v}
vlog -vlog01compat -work work +incdir+D:/XJEL2665_Quartus/Task_203/Task3/EightBitFullAdder {D:/XJEL2665_Quartus/Task_203/Task3/EightBitFullAdder/ThreeBitFullAdder.v}
vlog -vlog01compat -work work +incdir+D:/XJEL2665_Quartus/Task_203/Task3/EightBitFullAdder {D:/XJEL2665_Quartus/Task_203/Task3/EightBitFullAdder/FourBitFullAdder.v}

vlog -vlog01compat -work work +incdir+D:/XJEL2665_Quartus/Task_203/Task3/EightBitFullAdder {D:/XJEL2665_Quartus/Task_203/Task3/EightBitFullAdder/EightBitFullAdder_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  EightBitFullAdder_tb

add wave *
view structure
view signals
run -all
