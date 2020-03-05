transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/jonat/Documents/FPGA/Taller {C:/Users/jonat/Documents/FPGA/Taller/and_.sv}
vlog -sv -work work +incdir+C:/Users/jonat/Documents/FPGA/Taller {C:/Users/jonat/Documents/FPGA/Taller/or_.sv}
vlog -sv -work work +incdir+C:/Users/jonat/Documents/FPGA/Taller {C:/Users/jonat/Documents/FPGA/Taller/not_.sv}
vlog -sv -work work +incdir+C:/Users/jonat/Documents/FPGA/Taller {C:/Users/jonat/Documents/FPGA/Taller/xor_.sv}
vlog -sv -work work +incdir+C:/Users/jonat/Documents/FPGA/Taller {C:/Users/jonat/Documents/FPGA/Taller/xor_tb.sv}

