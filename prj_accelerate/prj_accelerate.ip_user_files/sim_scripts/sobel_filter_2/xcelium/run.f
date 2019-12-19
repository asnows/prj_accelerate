-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../ipstatic/hdl/verilog/AXIvideo2Mat.v" \
  "../../../ipstatic/hdl/verilog/Block_proc.v" \
  "../../../ipstatic/hdl/verilog/fifo_w8_d2_A.v" \
  "../../../ipstatic/hdl/verilog/fifo_w10_d2_A.v" \
  "../../../ipstatic/hdl/verilog/fifo_w11_d2_A.v" \
  "../../../ipstatic/hdl/verilog/Filter2D.v" \
  "../../../ipstatic/hdl/verilog/Filter2D_k_buf_0_bkb.v" \
  "../../../ipstatic/hdl/verilog/Mat2AXIvideo.v" \
  "../../../ipstatic/hdl/verilog/Sobel.v" \
  "../../../ipstatic/hdl/verilog/Sobel_1.v" \
  "../../../ipstatic/hdl/verilog/sobel_filter_mac_fYi.v" \
  "../../../ipstatic/hdl/verilog/sobel_filter_mac_g8j.v" \
  "../../../ipstatic/hdl/verilog/sobel_filter_mux_eOg.v" \
  "../../../ipstatic/hdl/verilog/start_for_Mat2AXIibs.v" \
  "../../../ipstatic/hdl/verilog/start_for_Sobel_1hbi.v" \
  "../../../ipstatic/hdl/verilog/start_for_Sobel_U0.v" \
  "../../../ipstatic/hdl/verilog/sobel_filter.v" \
  "../../../../prj_ocr.srcs/sources_1/ip/sobel_filter_2/sim/sobel_filter_2.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

