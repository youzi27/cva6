Makefile:14: must set CVA6_REPO_DIR to point at the root of CVA6 sources and CVA6_TB_DIR to point here -- doing it for you...
make -C /home/server/RISCV/cva6/ verilate verilator="verilator --no-timing" target=cv64a6_imafdc_sv39 defines=
make[1]: Entering directory '/home/server/RISCV/cva6'
Makefile:144: XCELIUM_HOME not set which is necessary for compiling DPIs when using XCELIUM
[Verilator] Building Model
verilator --no-timing --no-timing verilator_config.vlt -f core/Flist.cva6 core/cva6_rvfi.sv /home/server/RISCV/cva6/corev_apu/tb/ariane_axi_pkg.sv /home/server/RISCV/cva6/corev_apu/tb/axi_intf.sv /home/server/RISCV/cva6/corev_apu/register_interface/src/reg_intf.sv /home/server/RISCV/cva6/corev_apu/tb/ariane_soc_pkg.sv /home/server/RISCV/cva6/corev_apu/riscv-dbg/src/dm_pkg.sv /home/server/RISCV/cva6/corev_apu/tb/ariane_axi_soc_pkg.sv /home/server/RISCV/cva6/corev_apu/src/ariane.sv /home/server/RISCV/cva6/corev_apu/bootrom/bootrom.sv /home/server/RISCV/cva6/corev_apu/clint/axi_lite_interface.sv /home/server/RISCV/cva6/corev_apu/clint/clint.sv /home/server/RISCV/cva6/corev_apu/fpga/src/axi2apb/src/axi2apb_wrap.sv /home/server/RISCV/cva6/corev_apu/fpga/src/axi2apb/src/axi2apb.sv /home/server/RISCV/cva6/corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv /home/server/RISCV/cva6/corev_apu/fpga/src/apb_timer/apb_timer.sv /home/server/RISCV/cva6/corev_apu/fpga/src/apb_timer/timer.sv /home/server/RISCV/cva6/corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv /home/server/RISCV/cva6/corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv /home/server/RISCV/cva6/corev_apu/fpga/src/axi_slice/src/axi_slice_wrap.sv /home/server/RISCV/cva6/corev_apu/fpga/src/axi_slice/src/axi_slice.sv /home/server/RISCV/cva6/corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv /home/server/RISCV/cva6/corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv /home/server/RISCV/cva6/corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv /home/server/RISCV/cva6/corev_apu/fpga/src/axi_slice/src/axi_aw_buffer.sv /home/server/RISCV/cva6/corev_apu/src/axi_riscv_atomics/src/axi_riscv_amos.sv /home/server/RISCV/cva6/corev_apu/src/axi_riscv_atomics/src/axi_riscv_atomics.sv /home/server/RISCV/cva6/corev_apu/src/axi_riscv_atomics/src/axi_res_tbl.sv /home/server/RISCV/cva6/corev_apu/src/axi_riscv_atomics/src/axi_riscv_lrsc_wrap.sv /home/server/RISCV/cva6/corev_apu/src/axi_riscv_atomics/src/axi_riscv_amos_alu.sv /home/server/RISCV/cva6/corev_apu/src/axi_riscv_atomics/src/axi_riscv_lrsc.sv /home/server/RISCV/cva6/corev_apu/src/axi_riscv_atomics/src/axi_riscv_atomics_wrap.sv /home/server/RISCV/cva6/corev_apu/axi_mem_if/src/axi2mem.sv /home/server/RISCV/cva6/corev_apu/rv_plic/rtl/rv_plic_target.sv /home/server/RISCV/cva6/corev_apu/rv_plic/rtl/rv_plic_gateway.sv /home/server/RISCV/cva6/corev_apu/rv_plic/rtl/plic_regmap.sv /home/server/RISCV/cva6/corev_apu/rv_plic/rtl/plic_top.sv /home/server/RISCV/cva6/corev_apu/riscv-dbg/src/dmi_cdc.sv /home/server/RISCV/cva6/corev_apu/riscv-dbg/src/dmi_jtag.sv /home/server/RISCV/cva6/corev_apu/riscv-dbg/src/dmi_jtag_tap.sv /home/server/RISCV/cva6/corev_apu/riscv-dbg/src/dm_csrs.sv /home/server/RISCV/cva6/corev_apu/riscv-dbg/src/dm_mem.sv /home/server/RISCV/cva6/corev_apu/riscv-dbg/src/dm_sba.sv /home/server/RISCV/cva6/corev_apu/riscv-dbg/src/dm_top.sv /home/server/RISCV/cva6/corev_apu/riscv-dbg/debug_rom/debug_rom.sv /home/server/RISCV/cva6/corev_apu/register_interface/src/apb_to_reg.sv /home/server/RISCV/cva6/vendor/pulp-platform/axi/src/axi_multicut.sv /home/server/RISCV/cva6/vendor/pulp-platform/common_cells/src/rstgen_bypass.sv /home/server/RISCV/cva6/vendor/pulp-platform/common_cells/src/rstgen.sv /home/server/RISCV/cva6/vendor/pulp-platform/common_cells/src/addr_decode.sv /home/server/RISCV/cva6/vendor/pulp-platform/common_cells/src/stream_register.sv /home/server/RISCV/cva6/vendor/pulp-platform/axi/src/axi_cut.sv /home/server/RISCV/cva6/vendor/pulp-platform/axi/src/axi_join.sv /home/server/RISCV/cva6/vendor/pulp-platform/axi/src/axi_delayer.sv /home/server/RISCV/cva6/vendor/pulp-platform/axi/src/axi_to_axi_lite.sv /home/server/RISCV/cva6/vendor/pulp-platform/axi/src/axi_id_prepend.sv /home/server/RISCV/cva6/vendor/pulp-platform/axi/src/axi_atop_filter.sv /home/server/RISCV/cva6/vendor/pulp-platform/axi/src/axi_err_slv.sv /home/server/RISCV/cva6/vendor/pulp-platform/axi/src/axi_mux.sv /home/server/RISCV/cva6/vendor/pulp-platform/axi/src/axi_demux.sv /home/server/RISCV/cva6/vendor/pulp-platform/axi/src/axi_xbar.sv /home/server/RISCV/cva6/vendor/pulp-platform/common_cells/src/cdc_2phase.sv /home/server/RISCV/cva6/vendor/pulp-platform/common_cells/src/spill_register_flushable.sv /home/server/RISCV/cva6/vendor/pulp-platform/common_cells/src/spill_register.sv /home/server/RISCV/cva6/vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv /home/server/RISCV/cva6/vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv /home/server/RISCV/cva6/vendor/pulp-platform/common_cells/src/stream_delay.sv /home/server/RISCV/cva6/vendor/pulp-platform/common_cells/src/lfsr_16bit.sv /home/server/RISCV/cva6/vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv /home/server/RISCV/cva6/vendor/pulp-platform/tech_cells_generic/src/deprecated/pulp_clk_cells.sv /home/server/RISCV/cva6/vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv /home/server/RISCV/cva6/corev_apu/tb/ariane_testharness.sv /home/server/RISCV/cva6/corev_apu/tb/ariane_peripherals.sv /home/server/RISCV/cva6/corev_apu/tb/rvfi_tracer.sv /home/server/RISCV/cva6/corev_apu/tb/common/uart.sv /home/server/RISCV/cva6/corev_apu/tb/common/SimDTM.sv /home/server/RISCV/cva6/corev_apu/tb/common/SimJTAG.sv +define+ corev_apu/tb/common/mock_uart.sv +incdir+corev_apu/axi_node  --unroll-count 256 -Wall -Werror-PINMISSING -Werror-IMPLICIT -Wno-fatal -Wno-PINCONNECTEMPTY -Wno-ASSIGNDLY -Wno-DECLFILENAME -Wno-UNUSED -Wno-UNOPTFLAT -Wno-BLKANDNBLK -Wno-style  -DPRELOAD=1     -LDFLAGS "-L/home/server/RISCV/riscv_tools/riscv-gnu-toolchain/lib -L/home/server/RISCV/cva6/tools/spike/lib -Wl,-rpath,/home/server/RISCV/riscv_tools/riscv-gnu-toolchain/lib -Wl,-rpath,/home/server/RISCV/cva6/tools/spike/lib -lfesvr -lriscv -ldisasm  -lpthread " -CFLAGS "-I/include -I/home/server/RISCV/DV/vcs/vcs/O-2018.09-SP2/include -I/home/server/RISCV/cva6/tools/verilator/share/verilator/include/vltstd -I/home/server/RISCV/riscv_tools/riscv-gnu-toolchain/include -I/home/server/RISCV/cva6/tools/spike/include -std=c++17 -I../corev_apu/tb/dpi -O3 -DVL_DEBUG -I/home/server/RISCV/cva6/tools/spike"   --cc --vpi  +incdir+/home/server/RISCV/cva6/vendor/pulp-platform/common_cells/include/  +incdir+/home/server/RISCV/cva6/vendor/pulp-platform/axi/include/  +incdir+/home/server/RISCV/cva6/corev_apu/register_interface/include/  +incdir+/home/server/RISCV/cva6/corev_apu/tb/common/  +incdir+/home/server/RISCV/cva6/vendor/pulp-platform/axi/include/  +incdir+/home/server/RISCV/cva6/verif/core-v-verif/lib/uvm_agents/uvma_rvfi/  +incdir+/home/server/RISCV/cva6/verif/core-v-verif/lib/uvm_components/uvmc_rvfi_reference_model/  +incdir+/home/server/RISCV/cva6/verif/core-v-verif/lib/uvm_components/uvmc_rvfi_scoreboard/  +incdir+/home/server/RISCV/cva6/verif/core-v-verif/lib/uvm_agents/uvma_core_cntrl/  +incdir+/home/server/RISCV/cva6/verif/tb/core/  +incdir+/home/server/RISCV/cva6/core/include/  +incdir+/home/server/RISCV/cva6/tools/spike/include/disasm/ --top-module ariane_testharness --threads-dpi none --Mdir work-ver -O3 --exe corev_apu/tb/ariane_tb.cpp corev_apu/tb/dpi/SimDTM.cc corev_apu/tb/dpi/SimJTAG.cc corev_apu/tb/dpi/remote_bitbang.cc corev_apu/tb/dpi/msim_helper.cc
cd work-ver && make -j -f Variane_testharness.mk
make[2]: Entering directory '/home/server/RISCV/cva6/work-ver'
make[2]: Nothing to be done for 'default'.
make[2]: Leaving directory '/home/server/RISCV/cva6/work-ver'
make[1]: Leaving directory '/home/server/RISCV/cva6'
/home/server/RISCV/cva6//work-ver/Variane_testharness   /home/server/RISCV/cva6/verif/sim/out/seed_1453/directed_asm_tests/new_seeds_1453_.o +debug_disable=1 +ntb_random_seed=1 \
  +elf_file=/home/server/RISCV/cva6/verif/sim/out/seed_1453/directed_asm_tests/new_seeds_1453_.o +tohost_addr=0000000080001000
This emulator compiled with JTAG Remote Bitbang client. To enable, use +jtag_rbb_enable=1.
Listening on port 41205
/home/server/RISCV/cva6/verif/sim/out/seed_1453/directed_asm_tests/new_seeds_1453_.o *** SUCCESS *** (tohost = 0) after 18898 cycles
CPU time used: 20135.36 ms
Wall clock time passed: 20135.60 ms
# If present, move default waveform files to log directory.
# Keep track of target in waveform file name.
[ ! -f verilator.fst ] || mv verilator.fst `dirname /home/server/RISCV/cva6/verif/sim/out/seed_1453/veri-testharness_sim/new_seeds_1453_.cv64a6_imafdc_sv39.log`/`basename /home/server/RISCV/cva6/verif/sim/out/seed_1453/veri-testharness_sim/new_seeds_1453_.cv64a6_imafdc_sv39.log .log`.fst
[ ! -f verilator.vcd ] || mv verilator.vcd `dirname /home/server/RISCV/cva6/verif/sim/out/seed_1453/veri-testharness_sim/new_seeds_1453_.cv64a6_imafdc_sv39.log`/`basename /home/server/RISCV/cva6/verif/sim/out/seed_1453/veri-testharness_sim/new_seeds_1453_.cv64a6_imafdc_sv39.log .log`.vcd
# Generate disassembled log.
/home/server/RISCV/cva6/tools/spike/bin/spike-dasm --isa=rv64gc_zba_zbb_zbs_zbc_zicsr_zifencei < ./trace_rvfi_hart_00.dasm > /home/server/RISCV/cva6/verif/sim/out/seed_1453/veri-testharness_sim/new_seeds_1453_.cv64a6_imafdc_sv39.log
grep 0x0000000080000000 ./trace_rvfi_hart_00.dasm
3 0x0000000000010004 (0x01f41413) x 8 0x0000000080000000
core   0: 0x0000000080000000 (0x00004081) DASM(00004081)
3 0x0000000080000000 (0x4081) x 1 0x0000000000000000
3 0x0000000080000046 (0x02fe) x 5 0x0000000080000000
3 0x0000000080002038 (0x0ffe) x31 0x0000000080000000
