// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Feb 18 16:16:58 2019
// Host        : VT2OB6D7ZB52FZ0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/WorkSpace/project/FPGA/prj_sc2238_v2.0_emmc/prj_sc2238/prj_sc2238.srcs/sources_1/ip/fifo_maxtrix/fifo_maxtrix_stub.v
// Design      : fifo_maxtrix
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_2,Vivado 2018.1" *)
module fifo_maxtrix(clk, srst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[10:0],wr_en,rd_en,dout[10:0],full,empty" */;
  input clk;
  input srst;
  input [10:0]din;
  input wr_en;
  input rd_en;
  output [10:0]dout;
  output full;
  output empty;
endmodule
