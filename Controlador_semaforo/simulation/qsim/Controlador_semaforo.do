onerror {exit -code 1}
vlib work
vlog -work work Controlador_semaforo.vo
vlog -work work Waveform2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Controlador_semaforo_vlg_vec_tst -voptargs="+acc"
vcd file -direction Controlador_semaforo.msim.vcd
vcd add -internal Controlador_semaforo_vlg_vec_tst/*
vcd add -internal Controlador_semaforo_vlg_vec_tst/i1/*
run -all
quit -f
