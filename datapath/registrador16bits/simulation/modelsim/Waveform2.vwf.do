vlog -work work C:/altera/13.0sp1/projetos/microcontrolador/registrador16bits/simulation/modelsim/Waveform2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.registrador16bits_vlg_vec_tst
onerror {resume}
add wave {registrador16bits_vlg_vec_tst/i1/clk_registrador}
add wave {registrador16bits_vlg_vec_tst/i1/clr_registrador}
add wave {registrador16bits_vlg_vec_tst/i1/data_in}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[15]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[14]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[13]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[12]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[11]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[10]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[9]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[8]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[7]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[6]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[5]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[4]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[3]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[2]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[1]}
add wave {registrador16bits_vlg_vec_tst/i1/data_in[0]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[15]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[14]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[13]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[12]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[11]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[10]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[9]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[8]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[7]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[6]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[5]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[4]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[3]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[2]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[1]}
add wave {registrador16bits_vlg_vec_tst/i1/data_out[0]}
add wave {registrador16bits_vlg_vec_tst/i1/ld_registrador}
run -all
