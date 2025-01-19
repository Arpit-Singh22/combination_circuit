vlib work
#vlog tb_fa.v
#vsim tb_fa_8bit
#vlog tb_fs_3bit
#vsim tb_fs_3bit
vlog tb_fa_16bit.v
vsim tb_fa_16bit
run -all
