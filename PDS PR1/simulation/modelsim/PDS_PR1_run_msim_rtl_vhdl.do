transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA/16.1/PDS PR1/tb_ckt.vhd}
vcom -93 -work work {C:/intelFPGA/16.1/PDS PR1/comb_ckt.vhd}

