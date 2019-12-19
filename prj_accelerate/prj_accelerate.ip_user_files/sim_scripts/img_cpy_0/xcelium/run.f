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
  "../../../ipstatic/hdl/verilog/img_cpy_opr.v" \
  "../../../ipstatic/hdl/verilog/Mat2AXIvideo.v" \
  "../../../ipstatic/hdl/verilog/start_for_img_cpybkb.v" \
  "../../../ipstatic/hdl/verilog/start_for_Mat2AXIcud.v" \
  "../../../ipstatic/hdl/verilog/img_cpy.v" \
  "../../../../prj_accelerate.srcs/sources_1/ip/img_cpy_0/sim/img_cpy_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib
