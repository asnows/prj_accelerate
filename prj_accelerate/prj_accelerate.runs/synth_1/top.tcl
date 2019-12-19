# 
# Synthesis run script generated by Vivado
# 

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
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.cache/wt [current_project]
set_property parent.project_path E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths e:/WorkSpace/project/FPGA/prj_accelerate/ip_repo [current_project]
set_property ip_output_repo e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/BIT10TABLE.coe
add_files E:/WorkSpace/project/FPGA/prj_sc030/prj_sc030/prj_sc030.srcs/sources_1/new/BIT10TABLE.coe
read_verilog -library xil_defaultlib {
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/imports/new/SC30_v1_0_S00_AXI.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/imports/new/Trgger.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/imports/new/axis_switch.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/cmos_sampling.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/data_conv_model.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/data_put_together.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/imports/hdl/design_1_wrapper.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/dpc_axis.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/gaus_filter_axis.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/gaus_sharp_axis.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/isp_model_axis.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/maxtri3x3_shift.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/maxtri7x7_shift.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/opencv_model.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/sobel3x3_algorithm.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/sobel5x5_algorithm.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/sobel7x7_algorithm.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/sobel_axis.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/new/video_caputure.v
  E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/imports/new/top.v
}
add_files E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_1/design_1_axi_vdma_0_1.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_1/design_1_axi_vdma_0_1_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_1/design_1_axi_vdma_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_1_0/design_1_axi_vdma_1_0.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_1_0/design_1_axi_vdma_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_1_0/design_1_axi_vdma_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1_board.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_imgCapture1_0/design_1_axi_vdma_imgCapture1_0.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_imgCapture1_0/design_1_axi_vdma_imgCapture1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_imgCapture1_0/design_1_axi_vdma_imgCapture1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_0_2/design_1_axi_dma_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_0_2/design_1_axi_dma_0_2.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_dma_0_2/design_1_axi_dma_0_2_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_xbar_2/design_1_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_5/bd_6f02_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_9/bd_6f02_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_6/bd_6f02_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_7/bd_6f02_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_8/bd_6f02_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_1/bd_6f02_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_1/bd_6f02_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_10/bd_a878_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_16/bd_a878_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_23/bd_a878_s02a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_27/bd_a878_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_28/bd_a878_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_29/bd_a878_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_30/bd_a878_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_31/bd_a878_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_32/bd_a878_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_24/bd_a878_sawn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_25/bd_a878_swn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_26/bd_a878_sbn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_17/bd_a878_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_18/bd_a878_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_19/bd_a878_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_11/bd_a878_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_12/bd_a878_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_2/bd_a878_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_3/bd_a878_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_4/bd_a878_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_5/bd_a878_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_6/bd_a878_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_1/bd_a878_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_1/bd_a878_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1_0/ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_5/bd_a888_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_9/bd_a888_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_6/bd_a888_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_7/bd_a888_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_8/bd_a888_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_1/bd_a888_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_1/bd_a888_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_2_0/ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_5/bd_68d9_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_9/bd_68d9_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_6/bd_68d9_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_7/bd_68d9_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_8/bd_68d9_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_1/bd_68d9_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_3_0/bd_0/ip/ip_1/bd_68d9_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_3_0/ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_4_0/bd_0/ip/ip_5/bd_a968_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_4_0/bd_0/ip/ip_11/bd_a968_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_4_0/bd_0/ip/ip_6/bd_a968_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_4_0/bd_0/ip/ip_7/bd_a968_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_4_0/bd_0/ip/ip_8/bd_a968_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_4_0/bd_0/ip/ip_9/bd_a968_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_4_0/bd_0/ip/ip_10/bd_a968_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_4_0/bd_0/ip/ip_1/bd_a968_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_4_0/bd_0/ip/ip_1/bd_a968_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_4_0/ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_img_get_grads_0_0/constraints/img_get_grads_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axis_dwidth_converter_0_0/design_1_axis_dwidth_converter_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_axis_dwidth_converter_0_1/design_1_axis_dwidth_converter_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/prj_ip/prj_ip/prj_ip.srcs/sources_1/ip/fifo_maxtrix3x3/fifo_maxtrix3x3.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/prj_ip/prj_ip/prj_ip.srcs/sources_1/ip/fifo_SobelDir/fifo_SobelDir.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/prj_ip/prj_ip/prj_ip.srcs/sources_1/ip/fifo_CannyNMS/fifo_CannyNMS.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_canny_bd_0_0/src/canny_bd_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/design_1_ooc.xdc]

read_ip -quiet E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xci
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0_clocks.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0_ooc.xdc]

read_ip -quiet E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/ip/fifo_maxtrix/fifo_maxtrix.xci
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/ip/fifo_maxtrix/fifo_maxtrix.xdc]
set_property used_in_implementation false [get_files -all e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/ip/fifo_maxtrix/fifo_maxtrix_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/constrs_1/new/system.xdc
set_property used_in_implementation false [get_files E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/constrs_1/new/system.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top top -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]