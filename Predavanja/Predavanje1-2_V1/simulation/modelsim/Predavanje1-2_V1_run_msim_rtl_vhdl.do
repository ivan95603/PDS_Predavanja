transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA/16.1/Projects/Predavanja/Predavanje1-2_V1/mux.vhd}

