transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Task1.vo}

vlog -vlog01compat -work work +incdir+C:/Users/x1418/Desktop/Task_206/Task1 {C:/Users/x1418/Desktop/Task_206/Task1/BCD2Seg_tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  BCD2Seg_tb

add wave *
view structure
view signals
run -all
