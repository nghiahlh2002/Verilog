transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/huynh/Desktop/HDL/Traffic_Lights/Structural {C:/Users/huynh/Desktop/HDL/Traffic_Lights/Structural/ngora.v}
vlog -vlog01compat -work work +incdir+C:/Users/huynh/Desktop/HDL/Traffic_Lights/Structural {C:/Users/huynh/Desktop/HDL/Traffic_Lights/Structural/d_ff.v}
vlog -vlog01compat -work work +incdir+C:/Users/huynh/Desktop/HDL/Traffic_Lights/Structural {C:/Users/huynh/Desktop/HDL/Traffic_Lights/Structural/traffic.v}
vlog -vlog01compat -work work +incdir+C:/Users/huynh/Desktop/HDL/Traffic_Lights/Structural {C:/Users/huynh/Desktop/HDL/Traffic_Lights/Structural/up_counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/huynh/Desktop/HDL/Traffic_Lights/Structural {C:/Users/huynh/Desktop/HDL/Traffic_Lights/Structural/ngovao.v}

vlog -vlog01compat -work work +incdir+C:/Users/huynh/Desktop/HDL/Traffic_Lights/Structural {C:/Users/huynh/Desktop/HDL/Traffic_Lights/Structural/traffic_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
