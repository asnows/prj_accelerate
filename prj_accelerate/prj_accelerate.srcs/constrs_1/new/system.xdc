#set_property IOSTANDARD LVCMOS18 [get_ports CMOS_XCK]
#set_property IOSTANDARD LVCMOS33 [get_ports iic_0_scl_io]
#set_property IOSTANDARD LVCMOS33 [get_ports iic_0_sda_io]
#set_property IOSTANDARD LVCMOS33 [get_ports CMOS_PIXCLK]
#set_property IOSTANDARD LVCMOS33 [get_ports CMOS_LREF]
#set_property IOSTANDARD LVCMOS18 [get_ports CMOS_FSYNC]
#set_property IOSTANDARD LVCMOS33 [get_ports {CMOS_DATA[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CMOS_DATA[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CMOS_DATA[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CMOS_DATA[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CMOS_DATA[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CMOS_DATA[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CMOS_DATA[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CMOS_DATA[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CMOS_DATA[8]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CMOS_DATA[9]}]
#set_property IOSTANDARD LVCMOS33 [get_ports CMOS_PWDN]
#set_property IOSTANDARD LVCMOS33 [get_ports CMOS_Trigger0]

set_property IOSTANDARD LVCMOS18 [get_ports CMOS_XCK]
set_property IOSTANDARD LVCMOS18 [get_ports iic_0_scl_io]
set_property IOSTANDARD LVCMOS18 [get_ports iic_0_sda_io]
set_property IOSTANDARD LVCMOS18 [get_ports CMOS_PIXCLK]
set_property IOSTANDARD LVCMOS18 [get_ports CMOS_LREF]
set_property IOSTANDARD LVCMOS18 [get_ports CMOS_FSYNC]
set_property IOSTANDARD LVCMOS18 [get_ports {CMOS_DATA[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {CMOS_DATA[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {CMOS_DATA[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {CMOS_DATA[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {CMOS_DATA[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {CMOS_DATA[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {CMOS_DATA[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {CMOS_DATA[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {CMOS_DATA[8]}]
set_property IOSTANDARD LVCMOS18 [get_ports {CMOS_DATA[9]}]
set_property IOSTANDARD LVCMOS18 [get_ports CMOS_PWDN]
set_property IOSTANDARD LVCMOS18 [get_ports CMOS_Trigger0]

#set_property PACKAGE_PIN H20 [get_ports CMOS_PWDN]
#set_property PACKAGE_PIN J20 [get_ports CMOS_Trigger0]
#set_property PACKAGE_PIN M17 [get_ports CMOS_XCK]
#set_property PACKAGE_PIN F16 [get_ports iic_0_scl_io]
#set_property PACKAGE_PIN F17 [get_ports iic_0_sda_io]
#set_property PACKAGE_PIN M18 [get_ports CMOS_PIXCLK]
#set_property PACKAGE_PIN F19 [get_ports CMOS_LREF]
#set_property PACKAGE_PIN L16 [get_ports CMOS_FSYNC]
#set_property PACKAGE_PIN M20 [get_ports {CMOS_DATA[0]}]
#set_property PACKAGE_PIN M19 [get_ports {CMOS_DATA[1]}]
#set_property PACKAGE_PIN K18 [get_ports {CMOS_DATA[2]}]
#set_property PACKAGE_PIN K17 [get_ports {CMOS_DATA[3]}]
#set_property PACKAGE_PIN L17 [get_ports {CMOS_DATA[4]}]
#set_property PACKAGE_PIN J19 [get_ports {CMOS_DATA[5]}]
#set_property PACKAGE_PIN G19 [get_ports {CMOS_DATA[6]}]
#set_property PACKAGE_PIN L20 [get_ports {CMOS_DATA[7]}]
#set_property PACKAGE_PIN L19 [get_ports {CMOS_DATA[8]}]
#set_property PACKAGE_PIN K19 [get_ports {CMOS_DATA[9]}]


#emmc
set_property PACKAGE_PIN M18 [get_ports CMOS_PWDN]
set_property PACKAGE_PIN M17 [get_ports CMOS_Trigger0]
set_property PACKAGE_PIN J20 [get_ports CMOS_XCK]
set_property PACKAGE_PIN F20 [get_ports iic_0_scl_io]
set_property PACKAGE_PIN H20 [get_ports iic_0_sda_io]
set_property PACKAGE_PIN G20 [get_ports CMOS_PIXCLK]
set_property PACKAGE_PIN L17 [get_ports CMOS_LREF]
set_property PACKAGE_PIN J19 [get_ports CMOS_FSYNC]
set_property PACKAGE_PIN K19 [get_ports {CMOS_DATA[0]}]
set_property PACKAGE_PIN L19 [get_ports {CMOS_DATA[1]}]
set_property PACKAGE_PIN L20 [get_ports {CMOS_DATA[2]}]
set_property PACKAGE_PIN G19 [get_ports {CMOS_DATA[3]}]
set_property PACKAGE_PIN K18 [get_ports {CMOS_DATA[4]}]
set_property PACKAGE_PIN K17 [get_ports {CMOS_DATA[5]}]
set_property PACKAGE_PIN M19 [get_ports {CMOS_DATA[6]}]
set_property PACKAGE_PIN M20 [get_ports {CMOS_DATA[7]}]
set_property PACKAGE_PIN L16 [get_ports {CMOS_DATA[8]}]
set_property PACKAGE_PIN F19 [get_ports {CMOS_DATA[9]}]




set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CMOS_FSYNC_IBUF]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CMOS_PIXCLK_IBUF]


set_property PACKAGE_PIN M14 [get_ports E_OUT1]
set_property IOSTANDARD LVCMOS18 [get_ports E_OUT1]
set_property PACKAGE_PIN L15 [get_ports E_OUT2]
set_property IOSTANDARD LVCMOS18 [get_ports E_OUT2]
set_property PACKAGE_PIN L14 [get_ports E_IN1]
set_property IOSTANDARD LVCMOS18 [get_ports E_IN1]







#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CMOS_PIXCLK]

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CMOS_FSYNC_IBUF]

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ibuf_clkp_cmos_n_0_BUFG_inst_n_0]




#create_clock -period 41.667 -name CMOS_PIXCLK -waveform {0.000 20.833} [get_ports CMOS_PIXCLK]
#set_clock_groups -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks CMOS_PIXCLK]
#set_clock_groups -asynchronous -group [get_clocks CMOS_PIXCLK] -group [get_clocks clk_fpga_0]

#create_clock -period 18.000 -name CMOS_PIXCLK -waveform {0.000 9.000} [get_ports CMOS_PIXCLK]
#set_input_delay -clock [get_clocks CMOS_PIXCLK] -min -add_delay 3.200 [get_ports {CMOS_DATA[*]}]
#set_input_delay -clock [get_clocks CMOS_PIXCLK] -max -add_delay 7.000 [get_ports {CMOS_DATA[*]}]
#set_input_delay -clock [get_clocks CMOS_PIXCLK] -min -add_delay 3.200 [get_ports CMOS_FSYNC]
#set_input_delay -clock [get_clocks CMOS_PIXCLK] -max -add_delay 7.000 [get_ports CMOS_FSYNC]
#set_input_delay -clock [get_clocks clk_fpga_0] -min -add_delay 3.200 [get_ports CMOS_FSYNC]
#set_input_delay -clock [get_clocks clk_fpga_0] -max -add_delay 7.000 [get_ports CMOS_FSYNC]
#set_input_delay -clock [get_clocks CMOS_PIXCLK] -min -add_delay 3.200 [get_ports CMOS_LREF]
#set_input_delay -clock [get_clocks CMOS_PIXCLK] -max -add_delay 7.000 [get_ports CMOS_LREF]




set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[28]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[28]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[27]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[27]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[29]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[29]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[24]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[24]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[26]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[26]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[25]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[25]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[31]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[31]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[30]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[30]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_shrap_threshold_dely_reg[3]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_sharp_axis_i/sharp_threlode_reg[3]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[3]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[3]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_shrap_threshold_dely_reg[4]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_sharp_axis_i/sharp_threlode_reg[4]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[4]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[4]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_shrap_threshold_dely_reg[1]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_sharp_axis_i/sharp_threlode_reg[1]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[5]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[5]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_shrap_threshold_dely_reg[2]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_sharp_axis_i/sharp_threlode_reg[2]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[6]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[6]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_shrap_threshold_dely_reg[0]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_sharp_axis_i/sharp_threlode_reg[0]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[0]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[0]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[1]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[1]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[2]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[2]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_shrap_threshold_dely_reg[7]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_sharp_axis_i/sharp_threlode_reg[7]}]
set_property ASYNC_REG true [get_cells {opencv_model_i/m_axis_tdata_reg_reg[7]}]
set_property ASYNC_REG true [get_cells {data_conv_model_i/data_put_together_i/m_axis_tdata_reg_reg[7]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_shrap_threshold_dely_reg[5]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_sharp_axis_i/sharp_threlode_reg[5]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_shrap_threshold_dely_reg[6]}]
set_property ASYNC_REG true [get_cells {isp_model_axis_i/gaus_sharp_axis_i/sharp_threlode_reg[6]}]







create_clock -period 10.309 -name CMOS_PIXCLK -waveform {0.000 5.155} [get_ports CMOS_PIXCLK]
set_input_delay -clock [get_clocks CMOS_PIXCLK] -min -add_delay 2.000 [get_ports {CMOS_DATA[*]}]
set_input_delay -clock [get_clocks CMOS_PIXCLK] -max -add_delay 4.000 [get_ports {CMOS_DATA[*]}]
set_clock_groups -asynchronous -group [get_clocks clk_fpga_0] -group [get_clocks CMOS_PIXCLK]


set_input_delay -clock [get_clocks CMOS_PIXCLK] -min -add_delay 2.000 [get_ports CMOS_FSYNC]
set_input_delay -clock [get_clocks CMOS_PIXCLK] -max -add_delay 4.000 [get_ports CMOS_FSYNC]
set_input_delay -clock [get_clocks clk_fpga_0] -min -add_delay 2.000 [get_ports CMOS_FSYNC]
set_input_delay -clock [get_clocks clk_fpga_0] -max -add_delay 4.000 [get_ports CMOS_FSYNC]
set_input_delay -clock [get_clocks CMOS_PIXCLK] -min -add_delay 2.000 [get_ports CMOS_LREF]
set_input_delay -clock [get_clocks CMOS_PIXCLK] -max -add_delay 4.000 [get_ports CMOS_LREF]
set_input_delay -clock [get_clocks clk_fpga_0] -min -add_delay 2.000 [get_ports E_IN1]
set_input_delay -clock [get_clocks clk_fpga_0] -max -add_delay 4.000 [get_ports E_IN1]








