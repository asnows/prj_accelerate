// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Aug  8 15:28:31 2019
// Host        : VT2OB6D7ZB52FZ0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/ip/video_caputure_0/video_caputure_0_stub.v
// Design      : video_caputure_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "video_caputure,Vivado 2018.1" *)
module video_caputure_0(vsync, s_axis_aclk, s_axis_tready, 
  s_axis_tdata, s_axis_tkeep, s_axis_tlast, s_axis_tvalid, m_axis_tdata, m_axis_tlast, 
  m_axis_tuser, m_axis_tvalid, m_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="vsync,s_axis_aclk,s_axis_tready,s_axis_tdata[63:0],s_axis_tkeep[7:0],s_axis_tlast,s_axis_tvalid,m_axis_tdata[63:0],m_axis_tlast,m_axis_tuser,m_axis_tvalid,m_axis_tready" */;
  input vsync;
  input s_axis_aclk;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input s_axis_tvalid;
  output [63:0]m_axis_tdata;
  output m_axis_tlast;
  output m_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
endmodule
