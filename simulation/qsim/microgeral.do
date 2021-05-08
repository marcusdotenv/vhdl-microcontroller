onerror {quit -f}
vlib work
vlog -work work microgeral.vo
vlog -work work microgeral.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.microgeral_vlg_vec_tst
vcd file -direction microgeral.msim.vcd
vcd add -internal microgeral_vlg_vec_tst/*
vcd add -internal microgeral_vlg_vec_tst/i1/*
add wave /*
run -all
