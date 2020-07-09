transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/19.17/termprojectvol2/risc.vhd}
vcom -93 -work work {C:/intelFPGA_lite/19.17/termprojectvol2/alu.vhd}
vcom -93 -work work {C:/intelFPGA_lite/19.17/termprojectvol2/ir.vhd}
vcom -93 -work work {C:/intelFPGA_lite/19.17/termprojectvol2/cu.vhd}
vcom -93 -work work {C:/intelFPGA_lite/19.17/termprojectvol2/pc.vhd}
vcom -93 -work work {C:/intelFPGA_lite/19.17/termprojectvol2/gpreg.vhd}
vcom -93 -work work {C:/intelFPGA_lite/19.17/termprojectvol2/mux.vhd}
vcom -93 -work work {C:/intelFPGA_lite/19.17/termprojectvol2/mux2.vhd}
vcom -93 -work work {C:/intelFPGA_lite/19.17/termprojectvol2/mux3.vhd}
vcom -93 -work work {C:/intelFPGA_lite/19.17/termprojectvol2/mux4.vhd}
vcom -93 -work work {C:/intelFPGA_lite/19.17/termprojectvol2/squen.vhd}

vcom -93 -work work {C:/intelFPGA_lite/19.17/termprojectvol2/simulation/modelsim/risc.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  risc_tb

add wave *
view structure
view signals
run -all
