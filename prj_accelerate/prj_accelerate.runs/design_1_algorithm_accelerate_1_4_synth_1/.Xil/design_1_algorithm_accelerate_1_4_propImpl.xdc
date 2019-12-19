set_property SRC_FILE_INFO {cfile:e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_algorithm_accelerate_1_4/src/fifo_float_x_float_ooc.xdc rfile:../../../prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_algorithm_accelerate_1_4/src/fifo_float_x_float_ooc.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property SRC_FILE_INFO {cfile:e:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_algorithm_accelerate_1_4/src/float32X32_ooc.xdc rfile:../../../prj_accelerate.srcs/sources_1/bd/design_1/ip/design_1_algorithm_accelerate_1_4/src/float32X32_ooc.xdc id:2 order:EARLY scoped_inst:inst} [current_design]
set_property SRC_FILE_INFO {cfile:D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:3 order:LATE scoped_inst:inst/math_operate_i/float_32x32_0_i/fifo_float_a/U0/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:4 order:LATE scoped_inst:inst/math_operate_i/float_32x32_0_i/fifo_float_a/U0/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:5 order:LATE scoped_inst:inst/math_operate_i/float_32x32_0_i/fifo_float_b/U0/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:6 order:LATE scoped_inst:inst/math_operate_i/float_32x32_0_i/fifo_float_b/U0/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst unmanaged:yes} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:55 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
create_clock -period 10 -name m_aclk [get_ports m_aclk]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
create_clock -period 10 -name s_aclk [get_ports s_aclk]
set_property src_info {type:SCOPED_XDC file:2 line:55 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
create_clock -period 100 -name aclk [get_ports aclk]
current_instance inst/math_operate_i/float_32x32_0_i/fifo_float_a/U0/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:3 line:16 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance
current_instance inst/math_operate_i/float_32x32_0_i/fifo_float_a/U0/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:4 line:16 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance
current_instance inst/math_operate_i/float_32x32_0_i/fifo_float_b/U0/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:5 line:16 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance
current_instance inst/math_operate_i/float_32x32_0_i/fifo_float_b/U0/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:6 line:16 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
