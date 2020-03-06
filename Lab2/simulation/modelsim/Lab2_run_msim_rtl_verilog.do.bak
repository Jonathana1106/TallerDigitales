transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/jonat/Documents/FPGA/Lab2 {C:/Users/jonat/Documents/FPGA/Lab2/deco.sv}
vlog -sv -work work +incdir+C:/Users/jonat/Documents/FPGA/Lab2 {C:/Users/jonat/Documents/FPGA/Lab2/deco_tb.sv}

