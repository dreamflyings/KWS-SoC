# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
create_project -in_memory -part xc7a200tfbg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/wulian/KWS-SOC/KWS-SOC.cache/wt [current_project]
set_property parent.project_path D:/wulian/KWS-SOC/KWS-SOC.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  d:/wulian/kws_hls/kws_hls_1/kws_hls_1/solution1/impl/ip
  d:/wulian/MFCCHLS_V1/PreProcess/solution1/impl/ip
} [current_project]
update_ip_catalog
set_property ip_output_repo d:/wulian/KWS-SOC/KWS-SOC.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files d:/wulian/KWS-SOC/data.coe
read_verilog {
  D:/wulian/KWS-SOC/sourcefile/params/apb0_params.v
  D:/wulian/KWS-SOC/sourcefile/params/apb1_params.v
  D:/wulian/KWS-SOC/sourcefile/params/timers_params.v
  D:/wulian/KWS-SOC/sourcefile/params/wdt_params.v
}
set_property file_type "Verilog Header" [get_files D:/wulian/KWS-SOC/sourcefile/params/apb0_params.v]
set_property file_type "Verilog Header" [get_files D:/wulian/KWS-SOC/sourcefile/params/apb1_params.v]
set_property file_type "Verilog Header" [get_files D:/wulian/KWS-SOC/sourcefile/params/timers_params.v]
set_property file_type "Verilog Header" [get_files D:/wulian/KWS-SOC/sourcefile/params/wdt_params.v]
read_verilog -library xil_defaultlib {
  D:/wulian/KWS-SOC/sourcefile/wujian100_open_fpga_top.v
  D:/wulian/KWS-SOC/sourcefile/E902_20191018.v
  D:/wulian/KWS-SOC/sourcefile/sim_lib/PAD_DIG_IO.v
  D:/wulian/KWS-SOC/sourcefile/sim_lib/PAD_OSC_IO.v
  D:/wulian/KWS-SOC/sourcefile/sim_lib/STD_CELL.v
  D:/wulian/KWS-SOC/sourcefile/ahb_axi_kws.v
  D:/wulian/KWS-SOC/sourcefile/ahb_axi_preprocess.v
  D:/wulian/KWS-SOC/sourcefile/ahb_main_dmem_top.v
  D:/wulian/KWS-SOC/sourcefile/ahb_matrix_top.v
  D:/wulian/KWS-SOC/sourcefile/aou_top.v
  D:/wulian/KWS-SOC/sourcefile/apb0.v
  D:/wulian/KWS-SOC/sourcefile/apb0_sub_top.v
  D:/wulian/KWS-SOC/sourcefile/apb1.v
  D:/wulian/KWS-SOC/sourcefile/apb1_sub_top.v
  D:/wulian/KWS-SOC/sourcefile/clkgen.v
  D:/wulian/KWS-SOC/sourcefile/common.v
  D:/wulian/KWS-SOC/sourcefile/core_top.v
  D:/wulian/KWS-SOC/sourcefile/dmac.v
  D:/wulian/KWS-SOC/sourcefile/sim_lib/fpga_byte_spram.v
  D:/wulian/KWS-SOC/sourcefile/sim_lib/fpga_spram.v
  D:/wulian/KWS-SOC/sourcefile/gpio0.v
  D:/wulian/KWS-SOC/sourcefile/ls_sub_top.v
  D:/wulian/KWS-SOC/sourcefile/matrix.v
  D:/wulian/KWS-SOC/sourcefile/pdu_top.v
  D:/wulian/KWS-SOC/sourcefile/pwm.v
  D:/wulian/KWS-SOC/sourcefile/retu_top.v
  D:/wulian/KWS-SOC/sourcefile/rtc.v
  D:/wulian/KWS-SOC/sourcefile/sms.v
  D:/wulian/KWS-SOC/sourcefile/smu_top.v
  D:/wulian/KWS-SOC/sourcefile/tim.v
  D:/wulian/KWS-SOC/sourcefile/tim1.v
  D:/wulian/KWS-SOC/sourcefile/tim2.v
  D:/wulian/KWS-SOC/sourcefile/tim3.v
  D:/wulian/KWS-SOC/sourcefile/tim4.v
  D:/wulian/KWS-SOC/sourcefile/tim5.v
  D:/wulian/KWS-SOC/sourcefile/tim6.v
  D:/wulian/KWS-SOC/sourcefile/tim7.v
  D:/wulian/KWS-SOC/sourcefile/usi0.v
  D:/wulian/KWS-SOC/sourcefile/usi1.v
  D:/wulian/KWS-SOC/sourcefile/wdt.v
  D:/wulian/KWS-SOC/sourcefile/dummy.v
}
read_ip -quiet d:/wulian/KWS-SOC/KWS-SOC.srcs/sources_1/ip/ahblite_axi_bridge_0/ahblite_axi_bridge_0.xci
set_property used_in_implementation false [get_files -all d:/wulian/KWS-SOC/KWS-SOC.srcs/sources_1/ip/ahblite_axi_bridge_0/ahblite_axi_bridge_0_ooc.xdc]

read_ip -quiet d:/wulian/KWS-SOC/KWS-SOC.srcs/sources_1/ip/preprocess_0/preprocess_0.xci
set_property used_in_implementation false [get_files -all d:/wulian/KWS-SOC/KWS-SOC.srcs/sources_1/ip/preprocess_0/constraints/preprocess_ooc.xdc]

read_ip -quiet d:/wulian/KWS-SOC/KWS-SOC.srcs/sources_1/ip/kws_0/kws_0.xci
set_property used_in_implementation false [get_files -all d:/wulian/KWS-SOC/KWS-SOC.srcs/sources_1/ip/kws_0/constraints/kws_ooc.xdc]

read_ip -quiet d:/wulian/KWS-SOC/KWS-SOC.srcs/sources_1/ip/axi_bram_ctrl_0/axi_bram_ctrl_0.xci
set_property used_in_implementation false [get_files -all d:/wulian/KWS-SOC/KWS-SOC.srcs/sources_1/ip/axi_bram_ctrl_0/axi_bram_ctrl_0_ooc.xdc]

read_ip -quiet d:/wulian/KWS-SOC/KWS-SOC.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.xci
set_property used_in_implementation false [get_files -all d:/wulian/KWS-SOC/KWS-SOC.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/wulian/KWS-SOC/constrain/XC7A200T3B.xdc
set_property used_in_implementation false [get_files D:/wulian/KWS-SOC/constrain/XC7A200T3B.xdc]

read_xdc D:/wulian/KWS-SOC/constrain/wujian100_open_edif.xdc
set_property used_in_implementation false [get_files D:/wulian/KWS-SOC/constrain/wujian100_open_edif.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top wujian100_open_top -part xc7a200tfbg484-1 -fanout_limit 800


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef wujian100_open_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file wujian100_open_top_utilization_synth.rpt -pb wujian100_open_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
