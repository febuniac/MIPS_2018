onerror {exit -code 1}
vlib work
vlog -work work ula_mips.vo
vlog -work work Waveform11.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.mips_teste_vlg_vec_tst -voptargs="+acc"
vcd file -direction ula_mips.msim.vcd
vcd add -internal mips_teste_vlg_vec_tst/*
vcd add -internal mips_teste_vlg_vec_tst/i1/*
run -all
quit -f
