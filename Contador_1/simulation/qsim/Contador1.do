onerror {exit -code 1}
vlib work
vlog -work work Contador1.vo
vlog -work work Waveform4.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Contador1_vlg_vec_tst -voptargs="+acc"
vcd file -direction Contador1.msim.vcd
vcd add -internal Contador1_vlg_vec_tst/*
vcd add -internal Contador1_vlg_vec_tst/i1/*
run -all
quit -f
