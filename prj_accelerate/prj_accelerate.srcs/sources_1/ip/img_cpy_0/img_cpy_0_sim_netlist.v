// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Aug  3 08:44:03 2019
// Host        : VT2OB6D7ZB52FZ0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/ip/img_cpy_0/img_cpy_0_sim_netlist.v
// Design      : img_cpy_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "img_cpy_0,img_cpy,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "img_cpy,Vivado 2018.1" *) 
(* hls_module = "yes" *) 
(* NotValidForBitStream *)
module img_cpy_0
   (video_in_TVALID,
    video_in_TREADY,
    video_in_TDATA,
    video_in_TKEEP,
    video_in_TSTRB,
    video_in_TUSER,
    video_in_TLAST,
    video_in_TID,
    video_in_TDEST,
    video_out_TVALID,
    video_out_TREADY,
    video_out_TDATA,
    video_out_TKEEP,
    video_out_TSTRB,
    video_out_TUSER,
    video_out_TLAST,
    video_out_TID,
    video_out_TDEST,
    ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_ready,
    ap_idle);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TVALID" *) input video_in_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TREADY" *) output video_in_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TDATA" *) input [63:0]video_in_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TKEEP" *) input [7:0]video_in_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TSTRB" *) input [7:0]video_in_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TUSER" *) input [0:0]video_in_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TLAST" *) input [0:0]video_in_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TID" *) input [0:0]video_in_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *) input [0:0]video_in_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TVALID" *) output video_out_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input video_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDATA" *) output [63:0]video_out_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TKEEP" *) output [7:0]video_out_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TSTRB" *) output [7:0]video_out_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TUSER" *) output [0:0]video_out_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TLAST" *) output [0:0]video_out_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TID" *) output [0:0]video_out_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 8, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *) output [0:0]video_out_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF video_in:video_out, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output ap_idle;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [63:0]video_in_TDATA;
  wire [0:0]video_in_TDEST;
  wire [0:0]video_in_TID;
  wire [7:0]video_in_TKEEP;
  wire [0:0]video_in_TLAST;
  wire video_in_TREADY;
  wire [7:0]video_in_TSTRB;
  wire [0:0]video_in_TUSER;
  wire video_in_TVALID;
  wire [63:0]video_out_TDATA;
  wire [0:0]video_out_TDEST;
  wire [0:0]video_out_TID;
  wire [7:0]video_out_TKEEP;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;
  wire [7:0]video_out_TSTRB;
  wire [0:0]video_out_TUSER;
  wire video_out_TVALID;

  img_cpy_0_img_cpy inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .video_in_TDATA(video_in_TDATA),
        .video_in_TDEST(video_in_TDEST),
        .video_in_TID(video_in_TID),
        .video_in_TKEEP(video_in_TKEEP),
        .video_in_TLAST(video_in_TLAST),
        .video_in_TREADY(video_in_TREADY),
        .video_in_TSTRB(video_in_TSTRB),
        .video_in_TUSER(video_in_TUSER),
        .video_in_TVALID(video_in_TVALID),
        .video_out_TDATA(video_out_TDATA),
        .video_out_TDEST(video_out_TDEST),
        .video_out_TID(video_out_TID),
        .video_out_TKEEP(video_out_TKEEP),
        .video_out_TLAST(video_out_TLAST),
        .video_out_TREADY(video_out_TREADY),
        .video_out_TSTRB(video_out_TSTRB),
        .video_out_TUSER(video_out_TUSER),
        .video_out_TVALID(video_out_TVALID));
endmodule

(* ORIG_REF_NAME = "AXIvideo2Mat" *) 
module img_cpy_0_AXIvideo2Mat
   (start_once_reg,
    ap_rst_n_inv,
    \SRL_SIG_reg[1][0] ,
    ap_idle,
    \mOutPtr_reg[0] ,
    \ap_CS_fsm_reg[1]_0 ,
    E,
    ap_ready,
    video_in_TREADY,
    \SRL_SIG_reg[0][7] ,
    ap_clk,
    video_in_TLAST,
    ap_rst_n,
    Q,
    ap_start,
    \ap_CS_fsm_reg[0]_0 ,
    internal_empty_n_reg,
    video_in_TUSER,
    video_in_TVALID,
    srcImg_rows_V_c_full_n,
    srcImg_cols_V_c_full_n,
    srcImg_rows_V_c_empty_n,
    srcImg_cols_V_c7_full_n,
    srcImg_rows_V_c6_full_n,
    srcImg_cols_V_c_empty_n,
    start_for_img_cpy_opr_U0_full_n,
    video_in_TDATA,
    srcImg_data_stream_0_full_n);
  output start_once_reg;
  output ap_rst_n_inv;
  output \SRL_SIG_reg[1][0] ;
  output ap_idle;
  output \mOutPtr_reg[0] ;
  output \ap_CS_fsm_reg[1]_0 ;
  output [0:0]E;
  output ap_ready;
  output video_in_TREADY;
  output [7:0]\SRL_SIG_reg[0][7] ;
  input ap_clk;
  input [0:0]video_in_TLAST;
  input ap_rst_n;
  input [0:0]Q;
  input ap_start;
  input \ap_CS_fsm_reg[0]_0 ;
  input internal_empty_n_reg;
  input [0:0]video_in_TUSER;
  input video_in_TVALID;
  input srcImg_rows_V_c_full_n;
  input srcImg_cols_V_c_full_n;
  input srcImg_rows_V_c_empty_n;
  input srcImg_cols_V_c7_full_n;
  input srcImg_rows_V_c6_full_n;
  input srcImg_cols_V_c_empty_n;
  input start_for_img_cpy_opr_U0_full_n;
  input [7:0]video_in_TDATA;
  input srcImg_data_stream_0_full_n;

  wire [0:0]E;
  wire [0:0]Q;
  wire [7:0]\SRL_SIG_reg[0][7] ;
  wire \SRL_SIG_reg[1][0] ;
  wire \ap_CS_fsm[0]_i_2_n_0 ;
  wire \ap_CS_fsm[4]_i_2_n_0 ;
  wire \ap_CS_fsm[4]_i_3_n_0 ;
  wire \ap_CS_fsm[5]_i_1_n_0 ;
  wire ap_CS_fsm_pp1_stage0;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9;
  wire [7:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_184;
  wire ap_condition_pp1_exit_iter0_state5;
  wire ap_enable_reg_pp1_iter0;
  wire ap_enable_reg_pp1_iter0_i_1_n_0;
  wire ap_enable_reg_pp1_iter1_i_1_n_0;
  wire ap_enable_reg_pp1_iter1_reg_n_0;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [7:0]axi_data_V1_i_reg_213;
  wire \axi_data_V1_i_reg_213[0]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_213[1]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_213[2]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_213[3]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_213[4]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_213[5]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_213[6]_i_1_n_0 ;
  wire \axi_data_V1_i_reg_213[7]_i_1_n_0 ;
  wire [7:0]axi_data_V_1_i_reg_245;
  wire \axi_data_V_1_i_reg_245[0]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_245[1]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_245[2]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_245[3]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_245[4]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_245[5]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_245[6]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_245[7]_i_1_n_0 ;
  wire \axi_data_V_1_i_reg_245[7]_i_2_n_0 ;
  wire [7:0]axi_data_V_3_i_reg_316;
  wire axi_last_V1_i_reg_203;
  wire \axi_last_V1_i_reg_203[0]_i_1_n_0 ;
  wire \axi_last_V_2_i_reg_279[0]_i_1_n_0 ;
  wire \axi_last_V_2_i_reg_279[0]_i_2_n_0 ;
  wire \axi_last_V_2_i_reg_279_reg_n_0_[0] ;
  wire axi_last_V_3_i_reg_304;
  wire \axi_last_V_3_i_reg_304[0]_i_1_n_0 ;
  wire eol_2_i_reg_328;
  wire \eol_2_i_reg_328[0]_i_2_n_0 ;
  wire \eol_2_i_reg_328_reg_n_0_[0] ;
  wire \eol_i_reg_267[0]_i_1_n_0 ;
  wire \eol_i_reg_267_reg_n_0_[0] ;
  wire eol_reg_234;
  wire \eol_reg_234[0]_i_1_n_0 ;
  wire exitcond2_i_fu_365_p2;
  wire exitcond2_i_fu_365_p2_carry__0_i_1_n_0;
  wire exitcond2_i_fu_365_p2_carry__0_i_2_n_0;
  wire exitcond2_i_fu_365_p2_carry__0_i_3_n_0;
  wire exitcond2_i_fu_365_p2_carry__0_i_4_n_0;
  wire exitcond2_i_fu_365_p2_carry__0_n_0;
  wire exitcond2_i_fu_365_p2_carry__0_n_1;
  wire exitcond2_i_fu_365_p2_carry__0_n_2;
  wire exitcond2_i_fu_365_p2_carry__0_n_3;
  wire exitcond2_i_fu_365_p2_carry__1_i_1_n_0;
  wire exitcond2_i_fu_365_p2_carry__1_i_2_n_0;
  wire exitcond2_i_fu_365_p2_carry__1_i_3_n_0;
  wire exitcond2_i_fu_365_p2_carry__1_n_2;
  wire exitcond2_i_fu_365_p2_carry__1_n_3;
  wire exitcond2_i_fu_365_p2_carry_i_1_n_0;
  wire exitcond2_i_fu_365_p2_carry_i_2_n_0;
  wire exitcond2_i_fu_365_p2_carry_i_3_n_0;
  wire exitcond2_i_fu_365_p2_carry_i_4_n_0;
  wire exitcond2_i_fu_365_p2_carry_n_0;
  wire exitcond2_i_fu_365_p2_carry_n_1;
  wire exitcond2_i_fu_365_p2_carry_n_2;
  wire exitcond2_i_fu_365_p2_carry_n_3;
  wire \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_0 ;
  wire \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_1 ;
  wire \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_2 ;
  wire \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_3 ;
  wire \exitcond_i_fu_376_p2_inferred__0/i__carry__1_n_2 ;
  wire \exitcond_i_fu_376_p2_inferred__0/i__carry__1_n_3 ;
  wire \exitcond_i_fu_376_p2_inferred__0/i__carry_n_0 ;
  wire \exitcond_i_fu_376_p2_inferred__0/i__carry_n_1 ;
  wire \exitcond_i_fu_376_p2_inferred__0/i__carry_n_2 ;
  wire \exitcond_i_fu_376_p2_inferred__0/i__carry_n_3 ;
  wire \exitcond_i_reg_444[0]_i_1_n_0 ;
  wire \exitcond_i_reg_444_reg_n_0_[0] ;
  wire [31:0]i_V_fu_370_p2;
  wire [31:0]i_V_reg_439;
  wire \i_V_reg_439_reg[12]_i_1_n_0 ;
  wire \i_V_reg_439_reg[12]_i_1_n_1 ;
  wire \i_V_reg_439_reg[12]_i_1_n_2 ;
  wire \i_V_reg_439_reg[12]_i_1_n_3 ;
  wire \i_V_reg_439_reg[16]_i_1_n_0 ;
  wire \i_V_reg_439_reg[16]_i_1_n_1 ;
  wire \i_V_reg_439_reg[16]_i_1_n_2 ;
  wire \i_V_reg_439_reg[16]_i_1_n_3 ;
  wire \i_V_reg_439_reg[20]_i_1_n_0 ;
  wire \i_V_reg_439_reg[20]_i_1_n_1 ;
  wire \i_V_reg_439_reg[20]_i_1_n_2 ;
  wire \i_V_reg_439_reg[20]_i_1_n_3 ;
  wire \i_V_reg_439_reg[24]_i_1_n_0 ;
  wire \i_V_reg_439_reg[24]_i_1_n_1 ;
  wire \i_V_reg_439_reg[24]_i_1_n_2 ;
  wire \i_V_reg_439_reg[24]_i_1_n_3 ;
  wire \i_V_reg_439_reg[28]_i_1_n_0 ;
  wire \i_V_reg_439_reg[28]_i_1_n_1 ;
  wire \i_V_reg_439_reg[28]_i_1_n_2 ;
  wire \i_V_reg_439_reg[28]_i_1_n_3 ;
  wire \i_V_reg_439_reg[31]_i_1_n_2 ;
  wire \i_V_reg_439_reg[31]_i_1_n_3 ;
  wire \i_V_reg_439_reg[4]_i_1_n_0 ;
  wire \i_V_reg_439_reg[4]_i_1_n_1 ;
  wire \i_V_reg_439_reg[4]_i_1_n_2 ;
  wire \i_V_reg_439_reg[4]_i_1_n_3 ;
  wire \i_V_reg_439_reg[8]_i_1_n_0 ;
  wire \i_V_reg_439_reg[8]_i_1_n_1 ;
  wire \i_V_reg_439_reg[8]_i_1_n_2 ;
  wire \i_V_reg_439_reg[8]_i_1_n_3 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire internal_empty_n_reg;
  wire \mOutPtr_reg[0] ;
  wire [7:0]p_1_in;
  wire p_1_in_0;
  wire [7:0]p_Val2_s_reg_292;
  wire \p_Val2_s_reg_292[0]_i_1_n_0 ;
  wire \p_Val2_s_reg_292[1]_i_1_n_0 ;
  wire \p_Val2_s_reg_292[2]_i_1_n_0 ;
  wire \p_Val2_s_reg_292[3]_i_1_n_0 ;
  wire \p_Val2_s_reg_292[4]_i_1_n_0 ;
  wire \p_Val2_s_reg_292[5]_i_1_n_0 ;
  wire \p_Val2_s_reg_292[6]_i_1_n_0 ;
  wire \p_Val2_s_reg_292[7]_i_1_n_0 ;
  wire \p_Val2_s_reg_292[7]_i_2_n_0 ;
  wire sof_1_i_fu_146;
  wire sof_1_i_fu_1460;
  wire \sof_1_i_fu_146[0]_i_1_n_0 ;
  wire srcImg_cols_V_c7_full_n;
  wire srcImg_cols_V_c_empty_n;
  wire srcImg_cols_V_c_full_n;
  wire srcImg_data_stream_0_full_n;
  wire srcImg_rows_V_c6_full_n;
  wire srcImg_rows_V_c_empty_n;
  wire srcImg_rows_V_c_full_n;
  wire start_for_img_cpy_opr_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1_n_0;
  wire t_V_2_reg_256;
  wire \t_V_2_reg_256[0]_i_4_n_0 ;
  wire [31:0]t_V_2_reg_256_reg;
  wire \t_V_2_reg_256_reg[0]_i_3_n_0 ;
  wire \t_V_2_reg_256_reg[0]_i_3_n_1 ;
  wire \t_V_2_reg_256_reg[0]_i_3_n_2 ;
  wire \t_V_2_reg_256_reg[0]_i_3_n_3 ;
  wire \t_V_2_reg_256_reg[0]_i_3_n_4 ;
  wire \t_V_2_reg_256_reg[0]_i_3_n_5 ;
  wire \t_V_2_reg_256_reg[0]_i_3_n_6 ;
  wire \t_V_2_reg_256_reg[0]_i_3_n_7 ;
  wire \t_V_2_reg_256_reg[12]_i_1_n_0 ;
  wire \t_V_2_reg_256_reg[12]_i_1_n_1 ;
  wire \t_V_2_reg_256_reg[12]_i_1_n_2 ;
  wire \t_V_2_reg_256_reg[12]_i_1_n_3 ;
  wire \t_V_2_reg_256_reg[12]_i_1_n_4 ;
  wire \t_V_2_reg_256_reg[12]_i_1_n_5 ;
  wire \t_V_2_reg_256_reg[12]_i_1_n_6 ;
  wire \t_V_2_reg_256_reg[12]_i_1_n_7 ;
  wire \t_V_2_reg_256_reg[16]_i_1_n_0 ;
  wire \t_V_2_reg_256_reg[16]_i_1_n_1 ;
  wire \t_V_2_reg_256_reg[16]_i_1_n_2 ;
  wire \t_V_2_reg_256_reg[16]_i_1_n_3 ;
  wire \t_V_2_reg_256_reg[16]_i_1_n_4 ;
  wire \t_V_2_reg_256_reg[16]_i_1_n_5 ;
  wire \t_V_2_reg_256_reg[16]_i_1_n_6 ;
  wire \t_V_2_reg_256_reg[16]_i_1_n_7 ;
  wire \t_V_2_reg_256_reg[20]_i_1_n_0 ;
  wire \t_V_2_reg_256_reg[20]_i_1_n_1 ;
  wire \t_V_2_reg_256_reg[20]_i_1_n_2 ;
  wire \t_V_2_reg_256_reg[20]_i_1_n_3 ;
  wire \t_V_2_reg_256_reg[20]_i_1_n_4 ;
  wire \t_V_2_reg_256_reg[20]_i_1_n_5 ;
  wire \t_V_2_reg_256_reg[20]_i_1_n_6 ;
  wire \t_V_2_reg_256_reg[20]_i_1_n_7 ;
  wire \t_V_2_reg_256_reg[24]_i_1_n_0 ;
  wire \t_V_2_reg_256_reg[24]_i_1_n_1 ;
  wire \t_V_2_reg_256_reg[24]_i_1_n_2 ;
  wire \t_V_2_reg_256_reg[24]_i_1_n_3 ;
  wire \t_V_2_reg_256_reg[24]_i_1_n_4 ;
  wire \t_V_2_reg_256_reg[24]_i_1_n_5 ;
  wire \t_V_2_reg_256_reg[24]_i_1_n_6 ;
  wire \t_V_2_reg_256_reg[24]_i_1_n_7 ;
  wire \t_V_2_reg_256_reg[28]_i_1_n_1 ;
  wire \t_V_2_reg_256_reg[28]_i_1_n_2 ;
  wire \t_V_2_reg_256_reg[28]_i_1_n_3 ;
  wire \t_V_2_reg_256_reg[28]_i_1_n_4 ;
  wire \t_V_2_reg_256_reg[28]_i_1_n_5 ;
  wire \t_V_2_reg_256_reg[28]_i_1_n_6 ;
  wire \t_V_2_reg_256_reg[28]_i_1_n_7 ;
  wire \t_V_2_reg_256_reg[4]_i_1_n_0 ;
  wire \t_V_2_reg_256_reg[4]_i_1_n_1 ;
  wire \t_V_2_reg_256_reg[4]_i_1_n_2 ;
  wire \t_V_2_reg_256_reg[4]_i_1_n_3 ;
  wire \t_V_2_reg_256_reg[4]_i_1_n_4 ;
  wire \t_V_2_reg_256_reg[4]_i_1_n_5 ;
  wire \t_V_2_reg_256_reg[4]_i_1_n_6 ;
  wire \t_V_2_reg_256_reg[4]_i_1_n_7 ;
  wire \t_V_2_reg_256_reg[8]_i_1_n_0 ;
  wire \t_V_2_reg_256_reg[8]_i_1_n_1 ;
  wire \t_V_2_reg_256_reg[8]_i_1_n_2 ;
  wire \t_V_2_reg_256_reg[8]_i_1_n_3 ;
  wire \t_V_2_reg_256_reg[8]_i_1_n_4 ;
  wire \t_V_2_reg_256_reg[8]_i_1_n_5 ;
  wire \t_V_2_reg_256_reg[8]_i_1_n_6 ;
  wire \t_V_2_reg_256_reg[8]_i_1_n_7 ;
  wire [31:0]t_V_reg_223;
  wire [7:0]tmp_data_V_reg_415;
  wire tmp_data_V_reg_4150;
  wire [7:0]tmp_fu_396_p1;
  wire tmp_last_V_reg_423;
  wire \tmp_reg_457[7]_i_1_n_0 ;
  wire [7:0]video_in_TDATA;
  wire [0:0]video_in_TLAST;
  wire video_in_TREADY;
  wire video_in_TREADY_INST_0_i_1_n_0;
  wire video_in_TREADY_INST_0_i_3_n_0;
  wire video_in_TREADY_INST_0_i_4_n_0;
  wire [0:0]video_in_TUSER;
  wire video_in_TVALID;
  wire [3:0]NLW_exitcond2_i_fu_365_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_exitcond2_i_fu_365_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_exitcond2_i_fu_365_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_exitcond2_i_fu_365_p2_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_exitcond_i_fu_376_p2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_exitcond_i_fu_376_p2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_exitcond_i_fu_376_p2_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_exitcond_i_fu_376_p2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:2]\NLW_i_V_reg_439_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_V_reg_439_reg[31]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_t_V_2_reg_256_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h2220222222222222)) 
    \SRL_SIG[0][7]_i_1__0 
       (.I0(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I1(video_in_TREADY_INST_0_i_4_n_0),
        .I2(video_in_TVALID),
        .I3(ap_condition_pp1_exit_iter0_state5),
        .I4(ap_enable_reg_pp1_iter0),
        .I5(video_in_TREADY_INST_0_i_1_n_0),
        .O(\SRL_SIG_reg[1][0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(exitcond2_i_fu_365_p2),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(\ap_CS_fsm[0]_i_2_n_0 ),
        .O(ap_NS_fsm[0]));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(\mOutPtr_reg[0] ),
        .I1(srcImg_cols_V_c_empty_n),
        .I2(srcImg_rows_V_c6_full_n),
        .I3(srcImg_cols_V_c7_full_n),
        .I4(srcImg_rows_V_c_empty_n),
        .O(\ap_CS_fsm[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(video_in_TUSER),
        .I2(video_in_TVALID),
        .I3(ap_CS_fsm_state2),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(srcImg_rows_V_c_empty_n),
        .I2(srcImg_cols_V_c7_full_n),
        .I3(srcImg_rows_V_c6_full_n),
        .I4(srcImg_cols_V_c_empty_n),
        .I5(\mOutPtr_reg[0] ),
        .O(\ap_CS_fsm_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(video_in_TUSER),
        .I1(video_in_TVALID),
        .I2(ap_CS_fsm_state2),
        .O(ap_NS_fsm[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[3]_i_1__0 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state9),
        .O(ap_NS_fsm[3]));
  LUT6 #(
    .INIT(64'h4FFFFFFF44444444)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(exitcond2_i_fu_365_p2),
        .I1(ap_CS_fsm_state4),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(\ap_CS_fsm[4]_i_2_n_0 ),
        .I4(ap_condition_pp1_exit_iter0_state5),
        .I5(ap_CS_fsm_pp1_stage0),
        .O(ap_NS_fsm[4]));
  LUT6 #(
    .INIT(64'hFFF7FFF7FFF70000)) 
    \ap_CS_fsm[4]_i_2 
       (.I0(video_in_TREADY_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp1_iter0),
        .I2(ap_condition_pp1_exit_iter0_state5),
        .I3(video_in_TVALID),
        .I4(\ap_CS_fsm[4]_i_3_n_0 ),
        .I5(srcImg_data_stream_0_full_n),
        .O(\ap_CS_fsm[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ap_CS_fsm[4]_i_3 
       (.I0(\exitcond_i_reg_444_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .O(\ap_CS_fsm[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(ap_condition_184),
        .I1(ap_condition_pp1_exit_iter0_state5),
        .O(\ap_CS_fsm[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(\eol_2_i_reg_328_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state8),
        .O(ap_NS_fsm[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[7]_i_2 
       (.I0(\eol_2_i_reg_328_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state8),
        .O(ap_NS_fsm[7]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_pp1_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[5]_i_1_n_0 ),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h7F7F7F0000000000)) 
    ap_enable_reg_pp1_iter0_i_1
       (.I0(ap_condition_pp1_exit_iter0_state5),
        .I1(ap_CS_fsm_pp1_stage0),
        .I2(\ap_CS_fsm[4]_i_2_n_0 ),
        .I3(p_1_in_0),
        .I4(ap_enable_reg_pp1_iter0),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp1_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0C550C0000000000)) 
    ap_enable_reg_pp1_iter1_i_1
       (.I0(p_1_in_0),
        .I1(ap_enable_reg_pp1_iter0),
        .I2(ap_condition_pp1_exit_iter0_state5),
        .I3(\ap_CS_fsm[4]_i_2_n_0 ),
        .I4(ap_enable_reg_pp1_iter1_reg_n_0),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp1_iter1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_enable_reg_pp1_iter1_i_2
       (.I0(ap_CS_fsm_state4),
        .I1(exitcond2_i_fu_365_p2),
        .O(p_1_in_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter1_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    ap_idle_INST_0
       (.I0(Q),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(\mOutPtr_reg[0] ),
        .I5(internal_empty_n_reg),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    ap_idle_INST_0_i_2
       (.I0(start_once_reg),
        .I1(start_for_img_cpy_opr_U0_full_n),
        .I2(ap_start),
        .O(\mOutPtr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_ready_INST_0
       (.I0(exitcond2_i_fu_365_p2),
        .I1(ap_CS_fsm_state4),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_213[0]_i_1 
       (.I0(tmp_data_V_reg_415[0]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_316[0]),
        .O(\axi_data_V1_i_reg_213[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_213[1]_i_1 
       (.I0(tmp_data_V_reg_415[1]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_316[1]),
        .O(\axi_data_V1_i_reg_213[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_213[2]_i_1 
       (.I0(tmp_data_V_reg_415[2]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_316[2]),
        .O(\axi_data_V1_i_reg_213[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_213[3]_i_1 
       (.I0(tmp_data_V_reg_415[3]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_316[3]),
        .O(\axi_data_V1_i_reg_213[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_213[4]_i_1 
       (.I0(tmp_data_V_reg_415[4]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_316[4]),
        .O(\axi_data_V1_i_reg_213[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_213[5]_i_1 
       (.I0(tmp_data_V_reg_415[5]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_316[5]),
        .O(\axi_data_V1_i_reg_213[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_213[6]_i_1 
       (.I0(tmp_data_V_reg_415[6]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_316[6]),
        .O(\axi_data_V1_i_reg_213[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V1_i_reg_213[7]_i_1 
       (.I0(tmp_data_V_reg_415[7]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_i_reg_316[7]),
        .O(\axi_data_V1_i_reg_213[7]_i_1_n_0 ));
  FDRE \axi_data_V1_i_reg_213_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_213[0]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_213[0]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_213_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_213[1]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_213[1]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_213_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_213[2]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_213[2]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_213_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_213[3]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_213[3]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_213_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_213[4]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_213[4]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_213_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_213[5]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_213[5]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_213_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_213[6]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_213[6]),
        .R(1'b0));
  FDRE \axi_data_V1_i_reg_213_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V1_i_reg_213[7]_i_1_n_0 ),
        .Q(axi_data_V1_i_reg_213[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_i_reg_245[0]_i_1 
       (.I0(p_Val2_s_reg_292[0]),
        .I1(\SRL_SIG_reg[1][0] ),
        .I2(axi_data_V1_i_reg_213[0]),
        .O(\axi_data_V_1_i_reg_245[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_i_reg_245[1]_i_1 
       (.I0(p_Val2_s_reg_292[1]),
        .I1(\SRL_SIG_reg[1][0] ),
        .I2(axi_data_V1_i_reg_213[1]),
        .O(\axi_data_V_1_i_reg_245[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_i_reg_245[2]_i_1 
       (.I0(p_Val2_s_reg_292[2]),
        .I1(\SRL_SIG_reg[1][0] ),
        .I2(axi_data_V1_i_reg_213[2]),
        .O(\axi_data_V_1_i_reg_245[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_i_reg_245[3]_i_1 
       (.I0(p_Val2_s_reg_292[3]),
        .I1(\SRL_SIG_reg[1][0] ),
        .I2(axi_data_V1_i_reg_213[3]),
        .O(\axi_data_V_1_i_reg_245[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_i_reg_245[4]_i_1 
       (.I0(p_Val2_s_reg_292[4]),
        .I1(\SRL_SIG_reg[1][0] ),
        .I2(axi_data_V1_i_reg_213[4]),
        .O(\axi_data_V_1_i_reg_245[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_i_reg_245[5]_i_1 
       (.I0(p_Val2_s_reg_292[5]),
        .I1(\SRL_SIG_reg[1][0] ),
        .I2(axi_data_V1_i_reg_213[5]),
        .O(\axi_data_V_1_i_reg_245[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_i_reg_245[6]_i_1 
       (.I0(p_Val2_s_reg_292[6]),
        .I1(\SRL_SIG_reg[1][0] ),
        .I2(axi_data_V1_i_reg_213[6]),
        .O(\axi_data_V_1_i_reg_245[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \axi_data_V_1_i_reg_245[7]_i_1 
       (.I0(\SRL_SIG_reg[1][0] ),
        .I1(exitcond2_i_fu_365_p2),
        .I2(ap_CS_fsm_state4),
        .O(\axi_data_V_1_i_reg_245[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_i_reg_245[7]_i_2 
       (.I0(p_Val2_s_reg_292[7]),
        .I1(\SRL_SIG_reg[1][0] ),
        .I2(axi_data_V1_i_reg_213[7]),
        .O(\axi_data_V_1_i_reg_245[7]_i_2_n_0 ));
  FDRE \axi_data_V_1_i_reg_245_reg[0] 
       (.C(ap_clk),
        .CE(\axi_data_V_1_i_reg_245[7]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_245[0]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_245[0]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_245_reg[1] 
       (.C(ap_clk),
        .CE(\axi_data_V_1_i_reg_245[7]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_245[1]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_245[1]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_245_reg[2] 
       (.C(ap_clk),
        .CE(\axi_data_V_1_i_reg_245[7]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_245[2]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_245[2]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_245_reg[3] 
       (.C(ap_clk),
        .CE(\axi_data_V_1_i_reg_245[7]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_245[3]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_245[3]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_245_reg[4] 
       (.C(ap_clk),
        .CE(\axi_data_V_1_i_reg_245[7]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_245[4]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_245[4]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_245_reg[5] 
       (.C(ap_clk),
        .CE(\axi_data_V_1_i_reg_245[7]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_245[5]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_245[5]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_245_reg[6] 
       (.C(ap_clk),
        .CE(\axi_data_V_1_i_reg_245[7]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_245[6]_i_1_n_0 ),
        .Q(axi_data_V_1_i_reg_245[6]),
        .R(1'b0));
  FDRE \axi_data_V_1_i_reg_245_reg[7] 
       (.C(ap_clk),
        .CE(\axi_data_V_1_i_reg_245[7]_i_1_n_0 ),
        .D(\axi_data_V_1_i_reg_245[7]_i_2_n_0 ),
        .Q(axi_data_V_1_i_reg_245[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_i_reg_316[0]_i_1 
       (.I0(axi_data_V_1_i_reg_245[0]),
        .I1(ap_CS_fsm_state7),
        .I2(video_in_TDATA[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_i_reg_316[1]_i_1 
       (.I0(axi_data_V_1_i_reg_245[1]),
        .I1(ap_CS_fsm_state7),
        .I2(video_in_TDATA[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_i_reg_316[2]_i_1 
       (.I0(axi_data_V_1_i_reg_245[2]),
        .I1(ap_CS_fsm_state7),
        .I2(video_in_TDATA[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_i_reg_316[3]_i_1 
       (.I0(axi_data_V_1_i_reg_245[3]),
        .I1(ap_CS_fsm_state7),
        .I2(video_in_TDATA[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_i_reg_316[4]_i_1 
       (.I0(axi_data_V_1_i_reg_245[4]),
        .I1(ap_CS_fsm_state7),
        .I2(video_in_TDATA[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_i_reg_316[5]_i_1 
       (.I0(axi_data_V_1_i_reg_245[5]),
        .I1(ap_CS_fsm_state7),
        .I2(video_in_TDATA[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_i_reg_316[6]_i_1 
       (.I0(axi_data_V_1_i_reg_245[6]),
        .I1(ap_CS_fsm_state7),
        .I2(video_in_TDATA[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_i_reg_316[7]_i_1 
       (.I0(axi_data_V_1_i_reg_245[7]),
        .I1(ap_CS_fsm_state7),
        .I2(video_in_TDATA[7]),
        .O(p_1_in[7]));
  FDRE \axi_data_V_3_i_reg_316_reg[0] 
       (.C(ap_clk),
        .CE(eol_2_i_reg_328),
        .D(p_1_in[0]),
        .Q(axi_data_V_3_i_reg_316[0]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_316_reg[1] 
       (.C(ap_clk),
        .CE(eol_2_i_reg_328),
        .D(p_1_in[1]),
        .Q(axi_data_V_3_i_reg_316[1]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_316_reg[2] 
       (.C(ap_clk),
        .CE(eol_2_i_reg_328),
        .D(p_1_in[2]),
        .Q(axi_data_V_3_i_reg_316[2]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_316_reg[3] 
       (.C(ap_clk),
        .CE(eol_2_i_reg_328),
        .D(p_1_in[3]),
        .Q(axi_data_V_3_i_reg_316[3]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_316_reg[4] 
       (.C(ap_clk),
        .CE(eol_2_i_reg_328),
        .D(p_1_in[4]),
        .Q(axi_data_V_3_i_reg_316[4]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_316_reg[5] 
       (.C(ap_clk),
        .CE(eol_2_i_reg_328),
        .D(p_1_in[5]),
        .Q(axi_data_V_3_i_reg_316[5]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_316_reg[6] 
       (.C(ap_clk),
        .CE(eol_2_i_reg_328),
        .D(p_1_in[6]),
        .Q(axi_data_V_3_i_reg_316[6]),
        .R(1'b0));
  FDRE \axi_data_V_3_i_reg_316_reg[7] 
       (.C(ap_clk),
        .CE(eol_2_i_reg_328),
        .D(p_1_in[7]),
        .Q(axi_data_V_3_i_reg_316[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_last_V1_i_reg_203[0]_i_1 
       (.I0(tmp_last_V_reg_423),
        .I1(ap_CS_fsm_state3),
        .I2(axi_last_V_3_i_reg_304),
        .O(\axi_last_V1_i_reg_203[0]_i_1_n_0 ));
  FDRE \axi_last_V1_i_reg_203_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_last_V1_i_reg_203[0]_i_1_n_0 ),
        .Q(axi_last_V1_i_reg_203),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFFFAFCFA000A0C0)) 
    \axi_last_V_2_i_reg_279[0]_i_1 
       (.I0(video_in_TLAST),
        .I1(eol_reg_234),
        .I2(ap_condition_184),
        .I3(\axi_last_V_2_i_reg_279[0]_i_2_n_0 ),
        .I4(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I5(\axi_last_V_2_i_reg_279_reg_n_0_[0] ),
        .O(\axi_last_V_2_i_reg_279[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \axi_last_V_2_i_reg_279[0]_i_2 
       (.I0(ap_condition_pp1_exit_iter0_state5),
        .I1(video_in_TREADY_INST_0_i_1_n_0),
        .O(\axi_last_V_2_i_reg_279[0]_i_2_n_0 ));
  FDRE \axi_last_V_2_i_reg_279_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\axi_last_V_2_i_reg_279[0]_i_1_n_0 ),
        .Q(\axi_last_V_2_i_reg_279_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_last_V_3_i_reg_304[0]_i_1 
       (.I0(eol_reg_234),
        .I1(ap_CS_fsm_state7),
        .I2(video_in_TLAST),
        .O(\axi_last_V_3_i_reg_304[0]_i_1_n_0 ));
  FDRE \axi_last_V_3_i_reg_304_reg[0] 
       (.C(ap_clk),
        .CE(eol_2_i_reg_328),
        .D(\axi_last_V_3_i_reg_304[0]_i_1_n_0 ),
        .Q(axi_last_V_3_i_reg_304),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \eol_2_i_reg_328[0]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(ap_CS_fsm_state8),
        .I2(\eol_2_i_reg_328_reg_n_0_[0] ),
        .I3(video_in_TVALID),
        .O(eol_2_i_reg_328));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \eol_2_i_reg_328[0]_i_2 
       (.I0(\eol_i_reg_267_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state7),
        .I2(video_in_TLAST),
        .O(\eol_2_i_reg_328[0]_i_2_n_0 ));
  FDRE \eol_2_i_reg_328_reg[0] 
       (.C(ap_clk),
        .CE(eol_2_i_reg_328),
        .D(\eol_2_i_reg_328[0]_i_2_n_0 ),
        .Q(\eol_2_i_reg_328_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCACAC0CA)) 
    \eol_i_reg_267[0]_i_1 
       (.I0(\eol_i_reg_267_reg_n_0_[0] ),
        .I1(\axi_last_V_2_i_reg_279_reg_n_0_[0] ),
        .I2(\SRL_SIG_reg[1][0] ),
        .I3(ap_CS_fsm_state4),
        .I4(exitcond2_i_fu_365_p2),
        .O(\eol_i_reg_267[0]_i_1_n_0 ));
  FDRE \eol_i_reg_267_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\eol_i_reg_267[0]_i_1_n_0 ),
        .Q(\eol_i_reg_267_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \eol_reg_234[0]_i_1 
       (.I0(\axi_last_V_2_i_reg_279_reg_n_0_[0] ),
        .I1(\SRL_SIG_reg[1][0] ),
        .I2(axi_last_V1_i_reg_203),
        .O(\eol_reg_234[0]_i_1_n_0 ));
  FDRE \eol_reg_234_reg[0] 
       (.C(ap_clk),
        .CE(\axi_data_V_1_i_reg_245[7]_i_1_n_0 ),
        .D(\eol_reg_234[0]_i_1_n_0 ),
        .Q(eol_reg_234),
        .R(1'b0));
  CARRY4 exitcond2_i_fu_365_p2_carry
       (.CI(1'b0),
        .CO({exitcond2_i_fu_365_p2_carry_n_0,exitcond2_i_fu_365_p2_carry_n_1,exitcond2_i_fu_365_p2_carry_n_2,exitcond2_i_fu_365_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond2_i_fu_365_p2_carry_O_UNCONNECTED[3:0]),
        .S({exitcond2_i_fu_365_p2_carry_i_1_n_0,exitcond2_i_fu_365_p2_carry_i_2_n_0,exitcond2_i_fu_365_p2_carry_i_3_n_0,exitcond2_i_fu_365_p2_carry_i_4_n_0}));
  CARRY4 exitcond2_i_fu_365_p2_carry__0
       (.CI(exitcond2_i_fu_365_p2_carry_n_0),
        .CO({exitcond2_i_fu_365_p2_carry__0_n_0,exitcond2_i_fu_365_p2_carry__0_n_1,exitcond2_i_fu_365_p2_carry__0_n_2,exitcond2_i_fu_365_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond2_i_fu_365_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({exitcond2_i_fu_365_p2_carry__0_i_1_n_0,exitcond2_i_fu_365_p2_carry__0_i_2_n_0,exitcond2_i_fu_365_p2_carry__0_i_3_n_0,exitcond2_i_fu_365_p2_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_365_p2_carry__0_i_1
       (.I0(t_V_reg_223[23]),
        .I1(t_V_reg_223[22]),
        .I2(t_V_reg_223[21]),
        .O(exitcond2_i_fu_365_p2_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_365_p2_carry__0_i_2
       (.I0(t_V_reg_223[20]),
        .I1(t_V_reg_223[19]),
        .I2(t_V_reg_223[18]),
        .O(exitcond2_i_fu_365_p2_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_365_p2_carry__0_i_3
       (.I0(t_V_reg_223[17]),
        .I1(t_V_reg_223[16]),
        .I2(t_V_reg_223[15]),
        .O(exitcond2_i_fu_365_p2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_365_p2_carry__0_i_4
       (.I0(t_V_reg_223[14]),
        .I1(t_V_reg_223[13]),
        .I2(t_V_reg_223[12]),
        .O(exitcond2_i_fu_365_p2_carry__0_i_4_n_0));
  CARRY4 exitcond2_i_fu_365_p2_carry__1
       (.CI(exitcond2_i_fu_365_p2_carry__0_n_0),
        .CO({NLW_exitcond2_i_fu_365_p2_carry__1_CO_UNCONNECTED[3],exitcond2_i_fu_365_p2,exitcond2_i_fu_365_p2_carry__1_n_2,exitcond2_i_fu_365_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond2_i_fu_365_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,exitcond2_i_fu_365_p2_carry__1_i_1_n_0,exitcond2_i_fu_365_p2_carry__1_i_2_n_0,exitcond2_i_fu_365_p2_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    exitcond2_i_fu_365_p2_carry__1_i_1
       (.I0(t_V_reg_223[30]),
        .I1(t_V_reg_223[31]),
        .O(exitcond2_i_fu_365_p2_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_365_p2_carry__1_i_2
       (.I0(t_V_reg_223[29]),
        .I1(t_V_reg_223[28]),
        .I2(t_V_reg_223[27]),
        .O(exitcond2_i_fu_365_p2_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_365_p2_carry__1_i_3
       (.I0(t_V_reg_223[26]),
        .I1(t_V_reg_223[25]),
        .I2(t_V_reg_223[24]),
        .O(exitcond2_i_fu_365_p2_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_365_p2_carry_i_1
       (.I0(t_V_reg_223[11]),
        .I1(t_V_reg_223[10]),
        .I2(t_V_reg_223[9]),
        .O(exitcond2_i_fu_365_p2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    exitcond2_i_fu_365_p2_carry_i_2
       (.I0(t_V_reg_223[6]),
        .I1(t_V_reg_223[8]),
        .I2(t_V_reg_223[7]),
        .O(exitcond2_i_fu_365_p2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    exitcond2_i_fu_365_p2_carry_i_3
       (.I0(t_V_reg_223[3]),
        .I1(t_V_reg_223[5]),
        .I2(t_V_reg_223[4]),
        .O(exitcond2_i_fu_365_p2_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond2_i_fu_365_p2_carry_i_4
       (.I0(t_V_reg_223[0]),
        .I1(t_V_reg_223[2]),
        .I2(t_V_reg_223[1]),
        .O(exitcond2_i_fu_365_p2_carry_i_4_n_0));
  CARRY4 \exitcond_i_fu_376_p2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\exitcond_i_fu_376_p2_inferred__0/i__carry_n_0 ,\exitcond_i_fu_376_p2_inferred__0/i__carry_n_1 ,\exitcond_i_fu_376_p2_inferred__0/i__carry_n_2 ,\exitcond_i_fu_376_p2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond_i_fu_376_p2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \exitcond_i_fu_376_p2_inferred__0/i__carry__0 
       (.CI(\exitcond_i_fu_376_p2_inferred__0/i__carry_n_0 ),
        .CO({\exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_0 ,\exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_1 ,\exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_2 ,\exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond_i_fu_376_p2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \exitcond_i_fu_376_p2_inferred__0/i__carry__1 
       (.CI(\exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_exitcond_i_fu_376_p2_inferred__0/i__carry__1_CO_UNCONNECTED [3],ap_condition_pp1_exit_iter0_state5,\exitcond_i_fu_376_p2_inferred__0/i__carry__1_n_2 ,\exitcond_i_fu_376_p2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond_i_fu_376_p2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \exitcond_i_reg_444[0]_i_1 
       (.I0(\exitcond_i_reg_444_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp1_stage0),
        .I2(\ap_CS_fsm[4]_i_2_n_0 ),
        .I3(ap_condition_pp1_exit_iter0_state5),
        .O(\exitcond_i_reg_444[0]_i_1_n_0 ));
  FDRE \exitcond_i_reg_444_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_i_reg_444[0]_i_1_n_0 ),
        .Q(\exitcond_i_reg_444_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_439[0]_i_1 
       (.I0(t_V_reg_223[0]),
        .O(i_V_fu_370_p2[0]));
  FDRE \i_V_reg_439_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[0]),
        .Q(i_V_reg_439[0]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[10]),
        .Q(i_V_reg_439[10]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[11]),
        .Q(i_V_reg_439[11]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[12]),
        .Q(i_V_reg_439[12]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[12]_i_1 
       (.CI(\i_V_reg_439_reg[8]_i_1_n_0 ),
        .CO({\i_V_reg_439_reg[12]_i_1_n_0 ,\i_V_reg_439_reg[12]_i_1_n_1 ,\i_V_reg_439_reg[12]_i_1_n_2 ,\i_V_reg_439_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[12:9]),
        .S(t_V_reg_223[12:9]));
  FDRE \i_V_reg_439_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[13]),
        .Q(i_V_reg_439[13]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[14]),
        .Q(i_V_reg_439[14]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[15]),
        .Q(i_V_reg_439[15]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[16]),
        .Q(i_V_reg_439[16]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[16]_i_1 
       (.CI(\i_V_reg_439_reg[12]_i_1_n_0 ),
        .CO({\i_V_reg_439_reg[16]_i_1_n_0 ,\i_V_reg_439_reg[16]_i_1_n_1 ,\i_V_reg_439_reg[16]_i_1_n_2 ,\i_V_reg_439_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[16:13]),
        .S(t_V_reg_223[16:13]));
  FDRE \i_V_reg_439_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[17]),
        .Q(i_V_reg_439[17]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[18]),
        .Q(i_V_reg_439[18]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[19]),
        .Q(i_V_reg_439[19]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[1]),
        .Q(i_V_reg_439[1]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[20]),
        .Q(i_V_reg_439[20]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[20]_i_1 
       (.CI(\i_V_reg_439_reg[16]_i_1_n_0 ),
        .CO({\i_V_reg_439_reg[20]_i_1_n_0 ,\i_V_reg_439_reg[20]_i_1_n_1 ,\i_V_reg_439_reg[20]_i_1_n_2 ,\i_V_reg_439_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[20:17]),
        .S(t_V_reg_223[20:17]));
  FDRE \i_V_reg_439_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[21]),
        .Q(i_V_reg_439[21]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[22]),
        .Q(i_V_reg_439[22]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[23]),
        .Q(i_V_reg_439[23]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[24]),
        .Q(i_V_reg_439[24]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[24]_i_1 
       (.CI(\i_V_reg_439_reg[20]_i_1_n_0 ),
        .CO({\i_V_reg_439_reg[24]_i_1_n_0 ,\i_V_reg_439_reg[24]_i_1_n_1 ,\i_V_reg_439_reg[24]_i_1_n_2 ,\i_V_reg_439_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[24:21]),
        .S(t_V_reg_223[24:21]));
  FDRE \i_V_reg_439_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[25]),
        .Q(i_V_reg_439[25]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[26]),
        .Q(i_V_reg_439[26]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[27]),
        .Q(i_V_reg_439[27]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[28]),
        .Q(i_V_reg_439[28]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[28]_i_1 
       (.CI(\i_V_reg_439_reg[24]_i_1_n_0 ),
        .CO({\i_V_reg_439_reg[28]_i_1_n_0 ,\i_V_reg_439_reg[28]_i_1_n_1 ,\i_V_reg_439_reg[28]_i_1_n_2 ,\i_V_reg_439_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[28:25]),
        .S(t_V_reg_223[28:25]));
  FDRE \i_V_reg_439_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[29]),
        .Q(i_V_reg_439[29]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[2]),
        .Q(i_V_reg_439[2]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[30]),
        .Q(i_V_reg_439[30]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[31]),
        .Q(i_V_reg_439[31]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[31]_i_1 
       (.CI(\i_V_reg_439_reg[28]_i_1_n_0 ),
        .CO({\NLW_i_V_reg_439_reg[31]_i_1_CO_UNCONNECTED [3:2],\i_V_reg_439_reg[31]_i_1_n_2 ,\i_V_reg_439_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_V_reg_439_reg[31]_i_1_O_UNCONNECTED [3],i_V_fu_370_p2[31:29]}),
        .S({1'b0,t_V_reg_223[31:29]}));
  FDRE \i_V_reg_439_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[3]),
        .Q(i_V_reg_439[3]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[4]),
        .Q(i_V_reg_439[4]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\i_V_reg_439_reg[4]_i_1_n_0 ,\i_V_reg_439_reg[4]_i_1_n_1 ,\i_V_reg_439_reg[4]_i_1_n_2 ,\i_V_reg_439_reg[4]_i_1_n_3 }),
        .CYINIT(t_V_reg_223[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[4:1]),
        .S(t_V_reg_223[4:1]));
  FDRE \i_V_reg_439_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[5]),
        .Q(i_V_reg_439[5]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[6]),
        .Q(i_V_reg_439[6]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[7]),
        .Q(i_V_reg_439[7]),
        .R(1'b0));
  FDRE \i_V_reg_439_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[8]),
        .Q(i_V_reg_439[8]),
        .R(1'b0));
  CARRY4 \i_V_reg_439_reg[8]_i_1 
       (.CI(\i_V_reg_439_reg[4]_i_1_n_0 ),
        .CO({\i_V_reg_439_reg[8]_i_1_n_0 ,\i_V_reg_439_reg[8]_i_1_n_1 ,\i_V_reg_439_reg[8]_i_1_n_2 ,\i_V_reg_439_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_V_fu_370_p2[8:5]),
        .S(t_V_reg_223[8:5]));
  FDRE \i_V_reg_439_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_370_p2[9]),
        .Q(i_V_reg_439[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_1
       (.I0(t_V_2_reg_256_reg[23]),
        .I1(t_V_2_reg_256_reg[22]),
        .I2(t_V_2_reg_256_reg[21]),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_2
       (.I0(t_V_2_reg_256_reg[20]),
        .I1(t_V_2_reg_256_reg[19]),
        .I2(t_V_2_reg_256_reg[18]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_3
       (.I0(t_V_2_reg_256_reg[17]),
        .I1(t_V_2_reg_256_reg[16]),
        .I2(t_V_2_reg_256_reg[15]),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_4
       (.I0(t_V_2_reg_256_reg[14]),
        .I1(t_V_2_reg_256_reg[13]),
        .I2(t_V_2_reg_256_reg[12]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(t_V_2_reg_256_reg[30]),
        .I1(t_V_2_reg_256_reg[31]),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_2
       (.I0(t_V_2_reg_256_reg[29]),
        .I1(t_V_2_reg_256_reg[28]),
        .I2(t_V_2_reg_256_reg[27]),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_3
       (.I0(t_V_2_reg_256_reg[26]),
        .I1(t_V_2_reg_256_reg[25]),
        .I2(t_V_2_reg_256_reg[24]),
        .O(i__carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_1
       (.I0(t_V_2_reg_256_reg[10]),
        .I1(t_V_2_reg_256_reg[9]),
        .I2(t_V_2_reg_256_reg[11]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_2
       (.I0(t_V_2_reg_256_reg[6]),
        .I1(t_V_2_reg_256_reg[7]),
        .I2(t_V_2_reg_256_reg[8]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_3
       (.I0(t_V_2_reg_256_reg[5]),
        .I1(t_V_2_reg_256_reg[4]),
        .I2(t_V_2_reg_256_reg[3]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_4
       (.I0(t_V_2_reg_256_reg[0]),
        .I1(t_V_2_reg_256_reg[2]),
        .I2(t_V_2_reg_256_reg[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mOutPtr[1]_i_1__1 
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(ap_start),
        .I2(srcImg_rows_V_c_full_n),
        .I3(srcImg_cols_V_c_full_n),
        .O(E));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \p_Val2_s_reg_292[0]_i_1 
       (.I0(video_in_TDATA[0]),
        .I1(ap_condition_pp1_exit_iter0_state5),
        .I2(video_in_TREADY_INST_0_i_1_n_0),
        .I3(p_Val2_s_reg_292[0]),
        .I4(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I5(axi_data_V_1_i_reg_245[0]),
        .O(\p_Val2_s_reg_292[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \p_Val2_s_reg_292[1]_i_1 
       (.I0(video_in_TDATA[1]),
        .I1(ap_condition_pp1_exit_iter0_state5),
        .I2(video_in_TREADY_INST_0_i_1_n_0),
        .I3(p_Val2_s_reg_292[1]),
        .I4(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I5(axi_data_V_1_i_reg_245[1]),
        .O(\p_Val2_s_reg_292[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \p_Val2_s_reg_292[2]_i_1 
       (.I0(video_in_TDATA[2]),
        .I1(ap_condition_pp1_exit_iter0_state5),
        .I2(video_in_TREADY_INST_0_i_1_n_0),
        .I3(p_Val2_s_reg_292[2]),
        .I4(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I5(axi_data_V_1_i_reg_245[2]),
        .O(\p_Val2_s_reg_292[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \p_Val2_s_reg_292[3]_i_1 
       (.I0(video_in_TDATA[3]),
        .I1(ap_condition_pp1_exit_iter0_state5),
        .I2(video_in_TREADY_INST_0_i_1_n_0),
        .I3(p_Val2_s_reg_292[3]),
        .I4(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I5(axi_data_V_1_i_reg_245[3]),
        .O(\p_Val2_s_reg_292[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \p_Val2_s_reg_292[4]_i_1 
       (.I0(video_in_TDATA[4]),
        .I1(ap_condition_pp1_exit_iter0_state5),
        .I2(video_in_TREADY_INST_0_i_1_n_0),
        .I3(p_Val2_s_reg_292[4]),
        .I4(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I5(axi_data_V_1_i_reg_245[4]),
        .O(\p_Val2_s_reg_292[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \p_Val2_s_reg_292[5]_i_1 
       (.I0(video_in_TDATA[5]),
        .I1(ap_condition_pp1_exit_iter0_state5),
        .I2(video_in_TREADY_INST_0_i_1_n_0),
        .I3(p_Val2_s_reg_292[5]),
        .I4(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I5(axi_data_V_1_i_reg_245[5]),
        .O(\p_Val2_s_reg_292[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \p_Val2_s_reg_292[6]_i_1 
       (.I0(video_in_TDATA[6]),
        .I1(ap_condition_pp1_exit_iter0_state5),
        .I2(video_in_TREADY_INST_0_i_1_n_0),
        .I3(p_Val2_s_reg_292[6]),
        .I4(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I5(axi_data_V_1_i_reg_245[6]),
        .O(\p_Val2_s_reg_292[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \p_Val2_s_reg_292[7]_i_1 
       (.I0(video_in_TDATA[7]),
        .I1(ap_condition_pp1_exit_iter0_state5),
        .I2(video_in_TREADY_INST_0_i_1_n_0),
        .I3(p_Val2_s_reg_292[7]),
        .I4(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I5(axi_data_V_1_i_reg_245[7]),
        .O(\p_Val2_s_reg_292[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \p_Val2_s_reg_292[7]_i_2 
       (.I0(ap_CS_fsm_pp1_stage0),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .I2(\exitcond_i_reg_444_reg_n_0_[0] ),
        .O(\p_Val2_s_reg_292[7]_i_2_n_0 ));
  FDRE \p_Val2_s_reg_292_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_184),
        .D(\p_Val2_s_reg_292[0]_i_1_n_0 ),
        .Q(p_Val2_s_reg_292[0]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_292_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_184),
        .D(\p_Val2_s_reg_292[1]_i_1_n_0 ),
        .Q(p_Val2_s_reg_292[1]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_292_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_184),
        .D(\p_Val2_s_reg_292[2]_i_1_n_0 ),
        .Q(p_Val2_s_reg_292[2]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_292_reg[3] 
       (.C(ap_clk),
        .CE(ap_condition_184),
        .D(\p_Val2_s_reg_292[3]_i_1_n_0 ),
        .Q(p_Val2_s_reg_292[3]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_292_reg[4] 
       (.C(ap_clk),
        .CE(ap_condition_184),
        .D(\p_Val2_s_reg_292[4]_i_1_n_0 ),
        .Q(p_Val2_s_reg_292[4]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_292_reg[5] 
       (.C(ap_clk),
        .CE(ap_condition_184),
        .D(\p_Val2_s_reg_292[5]_i_1_n_0 ),
        .Q(p_Val2_s_reg_292[5]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_292_reg[6] 
       (.C(ap_clk),
        .CE(ap_condition_184),
        .D(\p_Val2_s_reg_292[6]_i_1_n_0 ),
        .Q(p_Val2_s_reg_292[6]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_292_reg[7] 
       (.C(ap_clk),
        .CE(ap_condition_184),
        .D(\p_Val2_s_reg_292[7]_i_1_n_0 ),
        .Q(p_Val2_s_reg_292[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    \sof_1_i_fu_146[0]_i_1 
       (.I0(sof_1_i_fu_146),
        .I1(ap_CS_fsm_state3),
        .I2(sof_1_i_fu_1460),
        .O(\sof_1_i_fu_146[0]_i_1_n_0 ));
  FDRE \sof_1_i_fu_146_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sof_1_i_fu_146[0]_i_1_n_0 ),
        .Q(sof_1_i_fu_146),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h77777000)) 
    start_once_reg_i_1
       (.I0(ap_CS_fsm_state4),
        .I1(exitcond2_i_fu_365_p2),
        .I2(ap_start),
        .I3(start_for_img_cpy_opr_U0_full_n),
        .I4(start_once_reg),
        .O(start_once_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1_n_0),
        .Q(start_once_reg),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h04)) 
    \t_V_2_reg_256[0]_i_1 
       (.I0(exitcond2_i_fu_365_p2),
        .I1(ap_CS_fsm_state4),
        .I2(sof_1_i_fu_1460),
        .O(t_V_2_reg_256));
  LUT6 #(
    .INIT(64'h0000000020002200)) 
    \t_V_2_reg_256[0]_i_2 
       (.I0(ap_CS_fsm_pp1_stage0),
        .I1(video_in_TREADY_INST_0_i_4_n_0),
        .I2(video_in_TVALID),
        .I3(ap_enable_reg_pp1_iter0),
        .I4(video_in_TREADY_INST_0_i_1_n_0),
        .I5(ap_condition_pp1_exit_iter0_state5),
        .O(sof_1_i_fu_1460));
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_2_reg_256[0]_i_4 
       (.I0(t_V_2_reg_256_reg[0]),
        .O(\t_V_2_reg_256[0]_i_4_n_0 ));
  FDRE \t_V_2_reg_256_reg[0] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[0]_i_3_n_7 ),
        .Q(t_V_2_reg_256_reg[0]),
        .R(t_V_2_reg_256));
  CARRY4 \t_V_2_reg_256_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\t_V_2_reg_256_reg[0]_i_3_n_0 ,\t_V_2_reg_256_reg[0]_i_3_n_1 ,\t_V_2_reg_256_reg[0]_i_3_n_2 ,\t_V_2_reg_256_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\t_V_2_reg_256_reg[0]_i_3_n_4 ,\t_V_2_reg_256_reg[0]_i_3_n_5 ,\t_V_2_reg_256_reg[0]_i_3_n_6 ,\t_V_2_reg_256_reg[0]_i_3_n_7 }),
        .S({t_V_2_reg_256_reg[3:1],\t_V_2_reg_256[0]_i_4_n_0 }));
  FDRE \t_V_2_reg_256_reg[10] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[8]_i_1_n_5 ),
        .Q(t_V_2_reg_256_reg[10]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[11] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[8]_i_1_n_4 ),
        .Q(t_V_2_reg_256_reg[11]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[12] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[12]_i_1_n_7 ),
        .Q(t_V_2_reg_256_reg[12]),
        .R(t_V_2_reg_256));
  CARRY4 \t_V_2_reg_256_reg[12]_i_1 
       (.CI(\t_V_2_reg_256_reg[8]_i_1_n_0 ),
        .CO({\t_V_2_reg_256_reg[12]_i_1_n_0 ,\t_V_2_reg_256_reg[12]_i_1_n_1 ,\t_V_2_reg_256_reg[12]_i_1_n_2 ,\t_V_2_reg_256_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_256_reg[12]_i_1_n_4 ,\t_V_2_reg_256_reg[12]_i_1_n_5 ,\t_V_2_reg_256_reg[12]_i_1_n_6 ,\t_V_2_reg_256_reg[12]_i_1_n_7 }),
        .S(t_V_2_reg_256_reg[15:12]));
  FDRE \t_V_2_reg_256_reg[13] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[12]_i_1_n_6 ),
        .Q(t_V_2_reg_256_reg[13]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[14] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[12]_i_1_n_5 ),
        .Q(t_V_2_reg_256_reg[14]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[15] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[12]_i_1_n_4 ),
        .Q(t_V_2_reg_256_reg[15]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[16] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[16]_i_1_n_7 ),
        .Q(t_V_2_reg_256_reg[16]),
        .R(t_V_2_reg_256));
  CARRY4 \t_V_2_reg_256_reg[16]_i_1 
       (.CI(\t_V_2_reg_256_reg[12]_i_1_n_0 ),
        .CO({\t_V_2_reg_256_reg[16]_i_1_n_0 ,\t_V_2_reg_256_reg[16]_i_1_n_1 ,\t_V_2_reg_256_reg[16]_i_1_n_2 ,\t_V_2_reg_256_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_256_reg[16]_i_1_n_4 ,\t_V_2_reg_256_reg[16]_i_1_n_5 ,\t_V_2_reg_256_reg[16]_i_1_n_6 ,\t_V_2_reg_256_reg[16]_i_1_n_7 }),
        .S(t_V_2_reg_256_reg[19:16]));
  FDRE \t_V_2_reg_256_reg[17] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[16]_i_1_n_6 ),
        .Q(t_V_2_reg_256_reg[17]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[18] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[16]_i_1_n_5 ),
        .Q(t_V_2_reg_256_reg[18]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[19] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[16]_i_1_n_4 ),
        .Q(t_V_2_reg_256_reg[19]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[1] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[0]_i_3_n_6 ),
        .Q(t_V_2_reg_256_reg[1]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[20] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[20]_i_1_n_7 ),
        .Q(t_V_2_reg_256_reg[20]),
        .R(t_V_2_reg_256));
  CARRY4 \t_V_2_reg_256_reg[20]_i_1 
       (.CI(\t_V_2_reg_256_reg[16]_i_1_n_0 ),
        .CO({\t_V_2_reg_256_reg[20]_i_1_n_0 ,\t_V_2_reg_256_reg[20]_i_1_n_1 ,\t_V_2_reg_256_reg[20]_i_1_n_2 ,\t_V_2_reg_256_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_256_reg[20]_i_1_n_4 ,\t_V_2_reg_256_reg[20]_i_1_n_5 ,\t_V_2_reg_256_reg[20]_i_1_n_6 ,\t_V_2_reg_256_reg[20]_i_1_n_7 }),
        .S(t_V_2_reg_256_reg[23:20]));
  FDRE \t_V_2_reg_256_reg[21] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[20]_i_1_n_6 ),
        .Q(t_V_2_reg_256_reg[21]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[22] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[20]_i_1_n_5 ),
        .Q(t_V_2_reg_256_reg[22]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[23] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[20]_i_1_n_4 ),
        .Q(t_V_2_reg_256_reg[23]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[24] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[24]_i_1_n_7 ),
        .Q(t_V_2_reg_256_reg[24]),
        .R(t_V_2_reg_256));
  CARRY4 \t_V_2_reg_256_reg[24]_i_1 
       (.CI(\t_V_2_reg_256_reg[20]_i_1_n_0 ),
        .CO({\t_V_2_reg_256_reg[24]_i_1_n_0 ,\t_V_2_reg_256_reg[24]_i_1_n_1 ,\t_V_2_reg_256_reg[24]_i_1_n_2 ,\t_V_2_reg_256_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_256_reg[24]_i_1_n_4 ,\t_V_2_reg_256_reg[24]_i_1_n_5 ,\t_V_2_reg_256_reg[24]_i_1_n_6 ,\t_V_2_reg_256_reg[24]_i_1_n_7 }),
        .S(t_V_2_reg_256_reg[27:24]));
  FDRE \t_V_2_reg_256_reg[25] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[24]_i_1_n_6 ),
        .Q(t_V_2_reg_256_reg[25]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[26] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[24]_i_1_n_5 ),
        .Q(t_V_2_reg_256_reg[26]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[27] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[24]_i_1_n_4 ),
        .Q(t_V_2_reg_256_reg[27]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[28] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[28]_i_1_n_7 ),
        .Q(t_V_2_reg_256_reg[28]),
        .R(t_V_2_reg_256));
  CARRY4 \t_V_2_reg_256_reg[28]_i_1 
       (.CI(\t_V_2_reg_256_reg[24]_i_1_n_0 ),
        .CO({\NLW_t_V_2_reg_256_reg[28]_i_1_CO_UNCONNECTED [3],\t_V_2_reg_256_reg[28]_i_1_n_1 ,\t_V_2_reg_256_reg[28]_i_1_n_2 ,\t_V_2_reg_256_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_256_reg[28]_i_1_n_4 ,\t_V_2_reg_256_reg[28]_i_1_n_5 ,\t_V_2_reg_256_reg[28]_i_1_n_6 ,\t_V_2_reg_256_reg[28]_i_1_n_7 }),
        .S(t_V_2_reg_256_reg[31:28]));
  FDRE \t_V_2_reg_256_reg[29] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[28]_i_1_n_6 ),
        .Q(t_V_2_reg_256_reg[29]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[2] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[0]_i_3_n_5 ),
        .Q(t_V_2_reg_256_reg[2]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[30] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[28]_i_1_n_5 ),
        .Q(t_V_2_reg_256_reg[30]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[31] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[28]_i_1_n_4 ),
        .Q(t_V_2_reg_256_reg[31]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[3] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[0]_i_3_n_4 ),
        .Q(t_V_2_reg_256_reg[3]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[4] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[4]_i_1_n_7 ),
        .Q(t_V_2_reg_256_reg[4]),
        .R(t_V_2_reg_256));
  CARRY4 \t_V_2_reg_256_reg[4]_i_1 
       (.CI(\t_V_2_reg_256_reg[0]_i_3_n_0 ),
        .CO({\t_V_2_reg_256_reg[4]_i_1_n_0 ,\t_V_2_reg_256_reg[4]_i_1_n_1 ,\t_V_2_reg_256_reg[4]_i_1_n_2 ,\t_V_2_reg_256_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_256_reg[4]_i_1_n_4 ,\t_V_2_reg_256_reg[4]_i_1_n_5 ,\t_V_2_reg_256_reg[4]_i_1_n_6 ,\t_V_2_reg_256_reg[4]_i_1_n_7 }),
        .S(t_V_2_reg_256_reg[7:4]));
  FDRE \t_V_2_reg_256_reg[5] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[4]_i_1_n_6 ),
        .Q(t_V_2_reg_256_reg[5]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[6] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[4]_i_1_n_5 ),
        .Q(t_V_2_reg_256_reg[6]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[7] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[4]_i_1_n_4 ),
        .Q(t_V_2_reg_256_reg[7]),
        .R(t_V_2_reg_256));
  FDRE \t_V_2_reg_256_reg[8] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[8]_i_1_n_7 ),
        .Q(t_V_2_reg_256_reg[8]),
        .R(t_V_2_reg_256));
  CARRY4 \t_V_2_reg_256_reg[8]_i_1 
       (.CI(\t_V_2_reg_256_reg[4]_i_1_n_0 ),
        .CO({\t_V_2_reg_256_reg[8]_i_1_n_0 ,\t_V_2_reg_256_reg[8]_i_1_n_1 ,\t_V_2_reg_256_reg[8]_i_1_n_2 ,\t_V_2_reg_256_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\t_V_2_reg_256_reg[8]_i_1_n_4 ,\t_V_2_reg_256_reg[8]_i_1_n_5 ,\t_V_2_reg_256_reg[8]_i_1_n_6 ,\t_V_2_reg_256_reg[8]_i_1_n_7 }),
        .S(t_V_2_reg_256_reg[11:8]));
  FDRE \t_V_2_reg_256_reg[9] 
       (.C(ap_clk),
        .CE(sof_1_i_fu_1460),
        .D(\t_V_2_reg_256_reg[8]_i_1_n_6 ),
        .Q(t_V_2_reg_256_reg[9]),
        .R(t_V_2_reg_256));
  FDRE \t_V_reg_223_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[0]),
        .Q(t_V_reg_223[0]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[10]),
        .Q(t_V_reg_223[10]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[11]),
        .Q(t_V_reg_223[11]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[12]),
        .Q(t_V_reg_223[12]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[13]),
        .Q(t_V_reg_223[13]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[14]),
        .Q(t_V_reg_223[14]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[15]),
        .Q(t_V_reg_223[15]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[16]),
        .Q(t_V_reg_223[16]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[17]),
        .Q(t_V_reg_223[17]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[18]),
        .Q(t_V_reg_223[18]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[19]),
        .Q(t_V_reg_223[19]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[1]),
        .Q(t_V_reg_223[1]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[20]),
        .Q(t_V_reg_223[20]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[21]),
        .Q(t_V_reg_223[21]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[22]),
        .Q(t_V_reg_223[22]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[23]),
        .Q(t_V_reg_223[23]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[24]),
        .Q(t_V_reg_223[24]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[25]),
        .Q(t_V_reg_223[25]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[26]),
        .Q(t_V_reg_223[26]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[27]),
        .Q(t_V_reg_223[27]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[28]),
        .Q(t_V_reg_223[28]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[29]),
        .Q(t_V_reg_223[29]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[2]),
        .Q(t_V_reg_223[2]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[30]),
        .Q(t_V_reg_223[30]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[31]),
        .Q(t_V_reg_223[31]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[3]),
        .Q(t_V_reg_223[3]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[4]),
        .Q(t_V_reg_223[4]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[5]),
        .Q(t_V_reg_223[5]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[6]),
        .Q(t_V_reg_223[6]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[7]),
        .Q(t_V_reg_223[7]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[8]),
        .Q(t_V_reg_223[8]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_223_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_439[9]),
        .Q(t_V_reg_223[9]),
        .R(ap_CS_fsm_state3));
  FDRE \tmp_data_V_reg_415_reg[0] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_4150),
        .D(video_in_TDATA[0]),
        .Q(tmp_data_V_reg_415[0]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[1] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_4150),
        .D(video_in_TDATA[1]),
        .Q(tmp_data_V_reg_415[1]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[2] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_4150),
        .D(video_in_TDATA[2]),
        .Q(tmp_data_V_reg_415[2]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[3] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_4150),
        .D(video_in_TDATA[3]),
        .Q(tmp_data_V_reg_415[3]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[4] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_4150),
        .D(video_in_TDATA[4]),
        .Q(tmp_data_V_reg_415[4]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[5] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_4150),
        .D(video_in_TDATA[5]),
        .Q(tmp_data_V_reg_415[5]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[6] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_4150),
        .D(video_in_TDATA[6]),
        .Q(tmp_data_V_reg_415[6]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_415_reg[7] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_4150),
        .D(video_in_TDATA[7]),
        .Q(tmp_data_V_reg_415[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_last_V_reg_423[0]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(video_in_TVALID),
        .O(tmp_data_V_reg_4150));
  FDRE \tmp_last_V_reg_423_reg[0] 
       (.C(ap_clk),
        .CE(tmp_data_V_reg_4150),
        .D(video_in_TLAST),
        .Q(tmp_last_V_reg_423),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_457[0]_i_1 
       (.I0(video_in_TDATA[0]),
        .I1(video_in_TREADY_INST_0_i_1_n_0),
        .I2(p_Val2_s_reg_292[0]),
        .I3(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I4(axi_data_V_1_i_reg_245[0]),
        .O(tmp_fu_396_p1[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_457[1]_i_1 
       (.I0(video_in_TDATA[1]),
        .I1(video_in_TREADY_INST_0_i_1_n_0),
        .I2(p_Val2_s_reg_292[1]),
        .I3(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I4(axi_data_V_1_i_reg_245[1]),
        .O(tmp_fu_396_p1[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_457[2]_i_1 
       (.I0(video_in_TDATA[2]),
        .I1(video_in_TREADY_INST_0_i_1_n_0),
        .I2(p_Val2_s_reg_292[2]),
        .I3(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I4(axi_data_V_1_i_reg_245[2]),
        .O(tmp_fu_396_p1[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_457[3]_i_1 
       (.I0(video_in_TDATA[3]),
        .I1(video_in_TREADY_INST_0_i_1_n_0),
        .I2(p_Val2_s_reg_292[3]),
        .I3(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I4(axi_data_V_1_i_reg_245[3]),
        .O(tmp_fu_396_p1[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_457[4]_i_1 
       (.I0(video_in_TDATA[4]),
        .I1(video_in_TREADY_INST_0_i_1_n_0),
        .I2(p_Val2_s_reg_292[4]),
        .I3(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I4(axi_data_V_1_i_reg_245[4]),
        .O(tmp_fu_396_p1[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_457[5]_i_1 
       (.I0(video_in_TDATA[5]),
        .I1(video_in_TREADY_INST_0_i_1_n_0),
        .I2(p_Val2_s_reg_292[5]),
        .I3(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I4(axi_data_V_1_i_reg_245[5]),
        .O(tmp_fu_396_p1[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_457[6]_i_1 
       (.I0(video_in_TDATA[6]),
        .I1(video_in_TREADY_INST_0_i_1_n_0),
        .I2(p_Val2_s_reg_292[6]),
        .I3(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I4(axi_data_V_1_i_reg_245[6]),
        .O(tmp_fu_396_p1[6]));
  LUT3 #(
    .INIT(8'h40)) 
    \tmp_reg_457[7]_i_1 
       (.I0(ap_condition_pp1_exit_iter0_state5),
        .I1(\ap_CS_fsm[4]_i_2_n_0 ),
        .I2(ap_CS_fsm_pp1_stage0),
        .O(\tmp_reg_457[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_457[7]_i_2 
       (.I0(video_in_TDATA[7]),
        .I1(video_in_TREADY_INST_0_i_1_n_0),
        .I2(p_Val2_s_reg_292[7]),
        .I3(\p_Val2_s_reg_292[7]_i_2_n_0 ),
        .I4(axi_data_V_1_i_reg_245[7]),
        .O(tmp_fu_396_p1[7]));
  FDRE \tmp_reg_457_reg[0] 
       (.C(ap_clk),
        .CE(\tmp_reg_457[7]_i_1_n_0 ),
        .D(tmp_fu_396_p1[0]),
        .Q(\SRL_SIG_reg[0][7] [0]),
        .R(1'b0));
  FDRE \tmp_reg_457_reg[1] 
       (.C(ap_clk),
        .CE(\tmp_reg_457[7]_i_1_n_0 ),
        .D(tmp_fu_396_p1[1]),
        .Q(\SRL_SIG_reg[0][7] [1]),
        .R(1'b0));
  FDRE \tmp_reg_457_reg[2] 
       (.C(ap_clk),
        .CE(\tmp_reg_457[7]_i_1_n_0 ),
        .D(tmp_fu_396_p1[2]),
        .Q(\SRL_SIG_reg[0][7] [2]),
        .R(1'b0));
  FDRE \tmp_reg_457_reg[3] 
       (.C(ap_clk),
        .CE(\tmp_reg_457[7]_i_1_n_0 ),
        .D(tmp_fu_396_p1[3]),
        .Q(\SRL_SIG_reg[0][7] [3]),
        .R(1'b0));
  FDRE \tmp_reg_457_reg[4] 
       (.C(ap_clk),
        .CE(\tmp_reg_457[7]_i_1_n_0 ),
        .D(tmp_fu_396_p1[4]),
        .Q(\SRL_SIG_reg[0][7] [4]),
        .R(1'b0));
  FDRE \tmp_reg_457_reg[5] 
       (.C(ap_clk),
        .CE(\tmp_reg_457[7]_i_1_n_0 ),
        .D(tmp_fu_396_p1[5]),
        .Q(\SRL_SIG_reg[0][7] [5]),
        .R(1'b0));
  FDRE \tmp_reg_457_reg[6] 
       (.C(ap_clk),
        .CE(\tmp_reg_457[7]_i_1_n_0 ),
        .D(tmp_fu_396_p1[6]),
        .Q(\SRL_SIG_reg[0][7] [6]),
        .R(1'b0));
  FDRE \tmp_reg_457_reg[7] 
       (.C(ap_clk),
        .CE(\tmp_reg_457[7]_i_1_n_0 ),
        .D(tmp_fu_396_p1[7]),
        .Q(\SRL_SIG_reg[0][7] [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF40FF40FF40)) 
    video_in_TREADY_INST_0
       (.I0(ap_condition_pp1_exit_iter0_state5),
        .I1(video_in_TREADY_INST_0_i_1_n_0),
        .I2(ap_condition_184),
        .I3(video_in_TREADY_INST_0_i_3_n_0),
        .I4(ap_CS_fsm_state2),
        .I5(video_in_TVALID),
        .O(video_in_TREADY));
  LUT6 #(
    .INIT(64'h1011111115111111)) 
    video_in_TREADY_INST_0_i_1
       (.I0(sof_1_i_fu_146),
        .I1(\eol_i_reg_267_reg_n_0_[0] ),
        .I2(\exitcond_i_reg_444_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp1_iter1_reg_n_0),
        .I4(ap_CS_fsm_pp1_stage0),
        .I5(\axi_last_V_2_i_reg_279_reg_n_0_[0] ),
        .O(video_in_TREADY_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000CCC400000000)) 
    video_in_TREADY_INST_0_i_2
       (.I0(video_in_TREADY_INST_0_i_1_n_0),
        .I1(ap_enable_reg_pp1_iter0),
        .I2(ap_condition_pp1_exit_iter0_state5),
        .I3(video_in_TVALID),
        .I4(video_in_TREADY_INST_0_i_4_n_0),
        .I5(ap_CS_fsm_pp1_stage0),
        .O(ap_condition_184));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h20)) 
    video_in_TREADY_INST_0_i_3
       (.I0(video_in_TVALID),
        .I1(\eol_2_i_reg_328_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state8),
        .O(video_in_TREADY_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    video_in_TREADY_INST_0_i_4
       (.I0(srcImg_data_stream_0_full_n),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .I2(\exitcond_i_reg_444_reg_n_0_[0] ),
        .O(video_in_TREADY_INST_0_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "Mat2AXIvideo" *) 
module img_cpy_0_Mat2AXIvideo
   (video_out_TUSER,
    video_out_TLAST,
    \tmp_user_V_fu_100_reg[0]_0 ,
    \ap_CS_fsm_reg[0]_0 ,
    ap_done,
    video_out_TVALID,
    ap_idle,
    ap_clk,
    ap_rst_n,
    Mat2AXIvideo_U0_ap_start,
    dstImg_data_stream_0_empty_n,
    video_out_TREADY,
    ap_rst_n_inv);
  output [0:0]video_out_TUSER;
  output [0:0]video_out_TLAST;
  output \tmp_user_V_fu_100_reg[0]_0 ;
  output \ap_CS_fsm_reg[0]_0 ;
  output ap_done;
  output video_out_TVALID;
  output ap_idle;
  input ap_clk;
  input ap_rst_n;
  input Mat2AXIvideo_U0_ap_start;
  input dstImg_data_stream_0_empty_n;
  input video_out_TREADY;
  input ap_rst_n_inv;

  wire Mat2AXIvideo_U0_ap_start;
  wire \ap_CS_fsm[3]_i_2_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done;
  wire ap_done_INST_0_i_2_n_0;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter00;
  wire ap_enable_reg_pp0_iter0_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_idle;
  wire ap_reg_ioackin_video_out_TREADY_i_1_n_0;
  wire ap_reg_ioackin_video_out_TREADY_reg_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire \axi_last_V_reg_239[0]_i_1_n_0 ;
  wire \axi_last_V_reg_239[0]_i_2_n_0 ;
  wire \axi_last_V_reg_239[0]_i_3_n_0 ;
  wire dstImg_data_stream_0_empty_n;
  wire exitcond_fu_178_p2;
  wire \exitcond_reg_230[0]_i_1_n_0 ;
  wire \exitcond_reg_230_reg_n_0_[0] ;
  wire [8:0]i_V_fu_172_p2;
  wire [8:0]i_V_reg_225;
  wire \i_V_reg_225[8]_i_2_n_0 ;
  wire [9:0]j_V_fu_184_p2;
  wire t_V_1_reg_150;
  wire t_V_1_reg_1500;
  wire \t_V_1_reg_150[9]_i_4_n_0 ;
  wire \t_V_1_reg_150[9]_i_6_n_0 ;
  wire \t_V_1_reg_150[9]_i_7_n_0 ;
  wire [9:0]t_V_1_reg_150_reg__0;
  wire [8:0]t_V_reg_139;
  wire t_V_reg_139_0;
  wire \tmp_user_V_fu_100[0]_i_1_n_0 ;
  wire \tmp_user_V_fu_100_reg[0]_0 ;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;
  wire [0:0]video_out_TUSER;
  wire video_out_TVALID;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \ap_CS_fsm[0]_i_1__1 
       (.I0(Mat2AXIvideo_U0_ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_NS_fsm[0]));
  LUT3 #(
    .INIT(8'hEA)) 
    \ap_CS_fsm[1]_i_1__1 
       (.I0(ap_CS_fsm_state5),
        .I1(Mat2AXIvideo_U0_ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    \ap_CS_fsm[2]_i_1__1 
       (.I0(ap_enable_reg_pp0_iter00),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\ap_CS_fsm[3]_i_2_n_0 ),
        .I3(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hA8AAAAAA)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_done_INST_0_i_2_n_0),
        .I2(t_V_reg_139[3]),
        .I3(t_V_reg_139[5]),
        .I4(t_V_reg_139[8]),
        .O(ap_enable_reg_pp0_iter00));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\ap_CS_fsm[3]_i_2_n_0 ),
        .I2(ap_enable_reg_pp0_iter0),
        .O(ap_NS_fsm[3]));
  LUT6 #(
    .INIT(64'h00570000FFFFFFFF)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(dstImg_data_stream_0_empty_n),
        .I1(video_out_TREADY),
        .I2(ap_reg_ioackin_video_out_TREADY_reg_n_0),
        .I3(\exitcond_reg_230_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(exitcond_fu_178_p2),
        .O(\ap_CS_fsm[3]_i_2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    ap_done_INST_0
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    ap_done_INST_0_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(ap_done_INST_0_i_2_n_0),
        .I2(t_V_reg_139[3]),
        .I3(t_V_reg_139[5]),
        .I4(t_V_reg_139[8]),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    ap_done_INST_0_i_2
       (.I0(t_V_reg_139[0]),
        .I1(t_V_reg_139[1]),
        .I2(t_V_reg_139[4]),
        .I3(t_V_reg_139[2]),
        .I4(t_V_reg_139[7]),
        .I5(t_V_reg_139[6]),
        .O(ap_done_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hE000E0E0)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_enable_reg_pp0_iter00),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_rst_n),
        .I3(\ap_CS_fsm[3]_i_2_n_0 ),
        .I4(ap_CS_fsm_pp0_stage0),
        .O(ap_enable_reg_pp0_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4F40404000000000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter00),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\t_V_1_reg_150[9]_i_4_n_0 ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(\ap_CS_fsm[3]_i_2_n_0 ),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0_i_1
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(Mat2AXIvideo_U0_ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'hDFFF000000000000)) 
    ap_reg_ioackin_video_out_TREADY_i_1
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(\exitcond_reg_230_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(dstImg_data_stream_0_empty_n),
        .I4(ap_rst_n),
        .I5(ap_reg_ioackin_video_out_TREADY_reg_n_0),
        .O(ap_reg_ioackin_video_out_TREADY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_reg_ioackin_video_out_TREADY_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_reg_ioackin_video_out_TREADY_i_1_n_0),
        .Q(ap_reg_ioackin_video_out_TREADY_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \axi_last_V_reg_239[0]_i_1 
       (.I0(video_out_TLAST),
        .I1(\axi_last_V_reg_239[0]_i_2_n_0 ),
        .I2(t_V_1_reg_150_reg__0[8]),
        .I3(t_V_1_reg_150_reg__0[9]),
        .I4(t_V_1_reg_150_reg__0[7]),
        .I5(\axi_last_V_reg_239[0]_i_3_n_0 ),
        .O(\axi_last_V_reg_239[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \axi_last_V_reg_239[0]_i_2 
       (.I0(exitcond_fu_178_p2),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\t_V_1_reg_150[9]_i_4_n_0 ),
        .O(\axi_last_V_reg_239[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_last_V_reg_239[0]_i_3 
       (.I0(t_V_1_reg_150_reg__0[6]),
        .I1(\t_V_1_reg_150[9]_i_6_n_0 ),
        .O(\axi_last_V_reg_239[0]_i_3_n_0 ));
  FDRE \axi_last_V_reg_239_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\axi_last_V_reg_239[0]_i_1_n_0 ),
        .Q(video_out_TLAST),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \exitcond_reg_230[0]_i_1 
       (.I0(\exitcond_reg_230_reg_n_0_[0] ),
        .I1(\t_V_1_reg_150[9]_i_4_n_0 ),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(exitcond_fu_178_p2),
        .O(\exitcond_reg_230[0]_i_1_n_0 ));
  FDRE \exitcond_reg_230_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_reg_230[0]_i_1_n_0 ),
        .Q(\exitcond_reg_230_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_225[0]_i_1 
       (.I0(t_V_reg_139[0]),
        .O(i_V_fu_172_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_225[1]_i_1 
       (.I0(t_V_reg_139[1]),
        .I1(t_V_reg_139[0]),
        .O(i_V_fu_172_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_225[2]_i_1 
       (.I0(t_V_reg_139[2]),
        .I1(t_V_reg_139[1]),
        .I2(t_V_reg_139[0]),
        .O(i_V_fu_172_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_225[3]_i_1 
       (.I0(t_V_reg_139[3]),
        .I1(t_V_reg_139[0]),
        .I2(t_V_reg_139[1]),
        .I3(t_V_reg_139[2]),
        .O(i_V_fu_172_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_225[4]_i_1 
       (.I0(t_V_reg_139[4]),
        .I1(t_V_reg_139[2]),
        .I2(t_V_reg_139[1]),
        .I3(t_V_reg_139[0]),
        .I4(t_V_reg_139[3]),
        .O(i_V_fu_172_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \i_V_reg_225[5]_i_1 
       (.I0(t_V_reg_139[3]),
        .I1(t_V_reg_139[0]),
        .I2(t_V_reg_139[1]),
        .I3(t_V_reg_139[2]),
        .I4(t_V_reg_139[4]),
        .I5(t_V_reg_139[5]),
        .O(i_V_fu_172_p2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_225[6]_i_1 
       (.I0(t_V_reg_139[6]),
        .I1(\i_V_reg_225[8]_i_2_n_0 ),
        .O(i_V_fu_172_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_225[7]_i_1 
       (.I0(t_V_reg_139[7]),
        .I1(\i_V_reg_225[8]_i_2_n_0 ),
        .I2(t_V_reg_139[6]),
        .O(i_V_fu_172_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_225[8]_i_1 
       (.I0(t_V_reg_139[8]),
        .I1(t_V_reg_139[7]),
        .I2(t_V_reg_139[6]),
        .I3(\i_V_reg_225[8]_i_2_n_0 ),
        .O(i_V_fu_172_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i_V_reg_225[8]_i_2 
       (.I0(t_V_reg_139[5]),
        .I1(t_V_reg_139[4]),
        .I2(t_V_reg_139[2]),
        .I3(t_V_reg_139[1]),
        .I4(t_V_reg_139[0]),
        .I5(t_V_reg_139[3]),
        .O(\i_V_reg_225[8]_i_2_n_0 ));
  FDRE \i_V_reg_225_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_172_p2[0]),
        .Q(i_V_reg_225[0]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_172_p2[1]),
        .Q(i_V_reg_225[1]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_172_p2[2]),
        .Q(i_V_reg_225[2]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_172_p2[3]),
        .Q(i_V_reg_225[3]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_172_p2[4]),
        .Q(i_V_reg_225[4]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_172_p2[5]),
        .Q(i_V_reg_225[5]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_172_p2[6]),
        .Q(i_V_reg_225[6]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_172_p2[7]),
        .Q(i_V_reg_225[7]),
        .R(1'b0));
  FDRE \i_V_reg_225_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_V_fu_172_p2[8]),
        .Q(i_V_reg_225[8]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_150[0]_i_1 
       (.I0(t_V_1_reg_150_reg__0[0]),
        .O(j_V_fu_184_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_150[1]_i_1 
       (.I0(t_V_1_reg_150_reg__0[1]),
        .I1(t_V_1_reg_150_reg__0[0]),
        .O(j_V_fu_184_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_150[2]_i_1 
       (.I0(t_V_1_reg_150_reg__0[2]),
        .I1(t_V_1_reg_150_reg__0[1]),
        .I2(t_V_1_reg_150_reg__0[0]),
        .O(j_V_fu_184_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_150[3]_i_1 
       (.I0(t_V_1_reg_150_reg__0[3]),
        .I1(t_V_1_reg_150_reg__0[0]),
        .I2(t_V_1_reg_150_reg__0[1]),
        .I3(t_V_1_reg_150_reg__0[2]),
        .O(j_V_fu_184_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_150[4]_i_1 
       (.I0(t_V_1_reg_150_reg__0[4]),
        .I1(t_V_1_reg_150_reg__0[2]),
        .I2(t_V_1_reg_150_reg__0[1]),
        .I3(t_V_1_reg_150_reg__0[0]),
        .I4(t_V_1_reg_150_reg__0[3]),
        .O(j_V_fu_184_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \t_V_1_reg_150[5]_i_1 
       (.I0(t_V_1_reg_150_reg__0[5]),
        .I1(t_V_1_reg_150_reg__0[3]),
        .I2(t_V_1_reg_150_reg__0[0]),
        .I3(t_V_1_reg_150_reg__0[1]),
        .I4(t_V_1_reg_150_reg__0[2]),
        .I5(t_V_1_reg_150_reg__0[4]),
        .O(j_V_fu_184_p2[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \t_V_1_reg_150[6]_i_1 
       (.I0(\t_V_1_reg_150[9]_i_6_n_0 ),
        .I1(t_V_1_reg_150_reg__0[6]),
        .O(j_V_fu_184_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \t_V_1_reg_150[7]_i_1 
       (.I0(t_V_1_reg_150_reg__0[7]),
        .I1(\t_V_1_reg_150[9]_i_6_n_0 ),
        .I2(t_V_1_reg_150_reg__0[6]),
        .O(j_V_fu_184_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \t_V_1_reg_150[8]_i_1 
       (.I0(t_V_1_reg_150_reg__0[8]),
        .I1(t_V_1_reg_150_reg__0[6]),
        .I2(\t_V_1_reg_150[9]_i_6_n_0 ),
        .I3(t_V_1_reg_150_reg__0[7]),
        .O(j_V_fu_184_p2[8]));
  LUT5 #(
    .INIT(32'hFFDF0000)) 
    \t_V_1_reg_150[9]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(\t_V_1_reg_150[9]_i_4_n_0 ),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(exitcond_fu_178_p2),
        .I4(ap_enable_reg_pp0_iter00),
        .O(t_V_1_reg_150));
  LUT4 #(
    .INIT(16'h0020)) 
    \t_V_1_reg_150[9]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(\t_V_1_reg_150[9]_i_4_n_0 ),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(exitcond_fu_178_p2),
        .O(t_V_1_reg_1500));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \t_V_1_reg_150[9]_i_3 
       (.I0(t_V_1_reg_150_reg__0[9]),
        .I1(t_V_1_reg_150_reg__0[7]),
        .I2(\t_V_1_reg_150[9]_i_6_n_0 ),
        .I3(t_V_1_reg_150_reg__0[6]),
        .I4(t_V_1_reg_150_reg__0[8]),
        .O(j_V_fu_184_p2[9]));
  LUT5 #(
    .INIT(32'h00022222)) 
    \t_V_1_reg_150[9]_i_4 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(\exitcond_reg_230_reg_n_0_[0] ),
        .I2(ap_reg_ioackin_video_out_TREADY_reg_n_0),
        .I3(video_out_TREADY),
        .I4(dstImg_data_stream_0_empty_n),
        .O(\t_V_1_reg_150[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \t_V_1_reg_150[9]_i_5 
       (.I0(t_V_1_reg_150_reg__0[3]),
        .I1(t_V_1_reg_150_reg__0[7]),
        .I2(t_V_1_reg_150_reg__0[5]),
        .I3(t_V_1_reg_150_reg__0[2]),
        .I4(\t_V_1_reg_150[9]_i_7_n_0 ),
        .O(exitcond_fu_178_p2));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \t_V_1_reg_150[9]_i_6 
       (.I0(t_V_1_reg_150_reg__0[4]),
        .I1(t_V_1_reg_150_reg__0[2]),
        .I2(t_V_1_reg_150_reg__0[1]),
        .I3(t_V_1_reg_150_reg__0[0]),
        .I4(t_V_1_reg_150_reg__0[3]),
        .I5(t_V_1_reg_150_reg__0[5]),
        .O(\t_V_1_reg_150[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \t_V_1_reg_150[9]_i_7 
       (.I0(t_V_1_reg_150_reg__0[9]),
        .I1(t_V_1_reg_150_reg__0[8]),
        .I2(t_V_1_reg_150_reg__0[6]),
        .I3(t_V_1_reg_150_reg__0[4]),
        .I4(t_V_1_reg_150_reg__0[1]),
        .I5(t_V_1_reg_150_reg__0[0]),
        .O(\t_V_1_reg_150[9]_i_7_n_0 ));
  FDRE \t_V_1_reg_150_reg[0] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1500),
        .D(j_V_fu_184_p2[0]),
        .Q(t_V_1_reg_150_reg__0[0]),
        .R(t_V_1_reg_150));
  FDRE \t_V_1_reg_150_reg[1] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1500),
        .D(j_V_fu_184_p2[1]),
        .Q(t_V_1_reg_150_reg__0[1]),
        .R(t_V_1_reg_150));
  FDRE \t_V_1_reg_150_reg[2] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1500),
        .D(j_V_fu_184_p2[2]),
        .Q(t_V_1_reg_150_reg__0[2]),
        .R(t_V_1_reg_150));
  FDRE \t_V_1_reg_150_reg[3] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1500),
        .D(j_V_fu_184_p2[3]),
        .Q(t_V_1_reg_150_reg__0[3]),
        .R(t_V_1_reg_150));
  FDRE \t_V_1_reg_150_reg[4] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1500),
        .D(j_V_fu_184_p2[4]),
        .Q(t_V_1_reg_150_reg__0[4]),
        .R(t_V_1_reg_150));
  FDRE \t_V_1_reg_150_reg[5] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1500),
        .D(j_V_fu_184_p2[5]),
        .Q(t_V_1_reg_150_reg__0[5]),
        .R(t_V_1_reg_150));
  FDRE \t_V_1_reg_150_reg[6] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1500),
        .D(j_V_fu_184_p2[6]),
        .Q(t_V_1_reg_150_reg__0[6]),
        .R(t_V_1_reg_150));
  FDRE \t_V_1_reg_150_reg[7] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1500),
        .D(j_V_fu_184_p2[7]),
        .Q(t_V_1_reg_150_reg__0[7]),
        .R(t_V_1_reg_150));
  FDRE \t_V_1_reg_150_reg[8] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1500),
        .D(j_V_fu_184_p2[8]),
        .Q(t_V_1_reg_150_reg__0[8]),
        .R(t_V_1_reg_150));
  FDRE \t_V_1_reg_150_reg[9] 
       (.C(ap_clk),
        .CE(t_V_1_reg_1500),
        .D(j_V_fu_184_p2[9]),
        .Q(t_V_1_reg_150_reg__0[9]),
        .R(t_V_1_reg_150));
  LUT3 #(
    .INIT(8'h08)) 
    \t_V_reg_139[8]_i_1 
       (.I0(Mat2AXIvideo_U0_ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state5),
        .O(t_V_reg_139_0));
  FDRE \t_V_reg_139_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[0]),
        .Q(t_V_reg_139[0]),
        .R(t_V_reg_139_0));
  FDRE \t_V_reg_139_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[1]),
        .Q(t_V_reg_139[1]),
        .R(t_V_reg_139_0));
  FDRE \t_V_reg_139_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[2]),
        .Q(t_V_reg_139[2]),
        .R(t_V_reg_139_0));
  FDRE \t_V_reg_139_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[3]),
        .Q(t_V_reg_139[3]),
        .R(t_V_reg_139_0));
  FDRE \t_V_reg_139_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[4]),
        .Q(t_V_reg_139[4]),
        .R(t_V_reg_139_0));
  FDRE \t_V_reg_139_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[5]),
        .Q(t_V_reg_139[5]),
        .R(t_V_reg_139_0));
  FDRE \t_V_reg_139_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[6]),
        .Q(t_V_reg_139[6]),
        .R(t_V_reg_139_0));
  FDRE \t_V_reg_139_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[7]),
        .Q(t_V_reg_139[7]),
        .R(t_V_reg_139_0));
  FDRE \t_V_reg_139_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_V_reg_225[8]),
        .Q(t_V_reg_139[8]),
        .R(t_V_reg_139_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00EA)) 
    \tmp_user_V_fu_100[0]_i_1 
       (.I0(video_out_TUSER),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(Mat2AXIvideo_U0_ap_start),
        .I3(\tmp_user_V_fu_100_reg[0]_0 ),
        .O(\tmp_user_V_fu_100[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000E00000000000)) 
    \tmp_user_V_fu_100[0]_i_2 
       (.I0(video_out_TREADY),
        .I1(ap_reg_ioackin_video_out_TREADY_reg_n_0),
        .I2(dstImg_data_stream_0_empty_n),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(\exitcond_reg_230_reg_n_0_[0] ),
        .I5(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(\tmp_user_V_fu_100_reg[0]_0 ));
  FDRE \tmp_user_V_fu_100_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_user_V_fu_100[0]_i_1_n_0 ),
        .Q(video_out_TUSER),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00400000)) 
    video_out_TVALID_INST_0
       (.I0(ap_reg_ioackin_video_out_TREADY_reg_n_0),
        .I1(dstImg_data_stream_0_empty_n),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(\exitcond_reg_230_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .O(video_out_TVALID));
endmodule

(* ORIG_REF_NAME = "fifo_w10_d2_A" *) 
module img_cpy_0_fifo_w10_d2_A
   (srcImg_rows_V_c6_full_n,
    srcImg_rows_V_c6_empty_n,
    ap_clk,
    ap_rst_n,
    internal_full_n_reg_0,
    \ap_CS_fsm_reg[0] ,
    ap_rst_n_inv,
    E);
  output srcImg_rows_V_c6_full_n;
  output srcImg_rows_V_c6_empty_n;
  input ap_clk;
  input ap_rst_n;
  input internal_full_n_reg_0;
  input \ap_CS_fsm_reg[0] ;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__1_n_0;
  wire internal_full_n_i_1__0_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__1_n_0 ;
  wire \mOutPtr[1]_i_2__2_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire srcImg_rows_V_c6_empty_n;
  wire srcImg_rows_V_c6_full_n;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__1
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(internal_full_n_reg_0),
        .I3(\ap_CS_fsm_reg[0] ),
        .I4(srcImg_rows_V_c6_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__1_n_0),
        .Q(srcImg_rows_V_c6_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0FFFFFFF0FF)) 
    internal_full_n_i_1__0
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(srcImg_rows_V_c6_full_n),
        .I3(ap_rst_n),
        .I4(internal_full_n_reg_0),
        .I5(\ap_CS_fsm_reg[0] ),
        .O(internal_full_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__0_n_0),
        .Q(srcImg_rows_V_c6_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[1]_i_2__2 
       (.I0(internal_full_n_reg_0),
        .I1(\ap_CS_fsm_reg[0] ),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[1]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__2_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w10_d2_A" *) 
module img_cpy_0_fifo_w10_d2_A_2
   (srcImg_rows_V_c_full_n,
    srcImg_rows_V_c_empty_n,
    ap_clk,
    ap_rst_n,
    \ap_CS_fsm_reg[0] ,
    internal_full_n_reg_0,
    srcImg_cols_V_c_full_n,
    ap_start,
    ap_rst_n_inv,
    E);
  output srcImg_rows_V_c_full_n;
  output srcImg_rows_V_c_empty_n;
  input ap_clk;
  input ap_rst_n;
  input \ap_CS_fsm_reg[0] ;
  input internal_full_n_reg_0;
  input srcImg_cols_V_c_full_n;
  input ap_start;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire internal_empty_n_i_1__3_n_0;
  wire internal_full_n_i_1__2_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_2__0_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire srcImg_cols_V_c_full_n;
  wire srcImg_rows_V_c_empty_n;
  wire srcImg_rows_V_c_full_n;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__3
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\ap_CS_fsm_reg[0] ),
        .I3(internal_full_n_reg_0),
        .I4(srcImg_rows_V_c_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__3_n_0),
        .Q(srcImg_rows_V_c_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0FFFFFFF0FF)) 
    internal_full_n_i_1__2
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(srcImg_rows_V_c_full_n),
        .I3(ap_rst_n),
        .I4(\ap_CS_fsm_reg[0] ),
        .I5(internal_full_n_reg_0),
        .O(internal_full_n_i_1__2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__2_n_0),
        .Q(srcImg_rows_V_c_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F0080FF80FF7F00)) 
    \mOutPtr[1]_i_2__0 
       (.I0(srcImg_cols_V_c_full_n),
        .I1(srcImg_rows_V_c_full_n),
        .I2(ap_start),
        .I3(\ap_CS_fsm_reg[0] ),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .I5(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[1]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w11_d2_A" *) 
module img_cpy_0_fifo_w11_d2_A
   (srcImg_cols_V_c7_full_n,
    srcImg_cols_V_c7_empty_n,
    ap_clk,
    ap_rst_n,
    internal_full_n_reg_0,
    \ap_CS_fsm_reg[0] ,
    ap_rst_n_inv,
    E);
  output srcImg_cols_V_c7_full_n;
  output srcImg_cols_V_c7_empty_n;
  input ap_clk;
  input ap_rst_n;
  input internal_full_n_reg_0;
  input \ap_CS_fsm_reg[0] ;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire internal_empty_n_i_1__0_n_0;
  wire internal_full_n_i_1__1_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__2_n_0 ;
  wire \mOutPtr[1]_i_1__2_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire srcImg_cols_V_c7_empty_n;
  wire srcImg_cols_V_c7_full_n;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__0
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(internal_full_n_reg_0),
        .I3(\ap_CS_fsm_reg[0] ),
        .I4(srcImg_cols_V_c7_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__0_n_0),
        .Q(srcImg_cols_V_c7_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0FFFFFFF0FF)) 
    internal_full_n_i_1__1
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(srcImg_cols_V_c7_full_n),
        .I3(ap_rst_n),
        .I4(internal_full_n_reg_0),
        .I5(\ap_CS_fsm_reg[0] ),
        .O(internal_full_n_i_1__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__1_n_0),
        .Q(srcImg_cols_V_c7_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__2 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[1]_i_1__2 
       (.I0(internal_full_n_reg_0),
        .I1(\ap_CS_fsm_reg[0] ),
        .I2(\mOutPtr_reg_n_0_[1] ),
        .I3(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[1]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__2_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__2_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w11_d2_A" *) 
module img_cpy_0_fifo_w11_d2_A_0
   (srcImg_cols_V_c_full_n,
    srcImg_cols_V_c_empty_n,
    internal_full_n_reg_0,
    ap_clk,
    ap_rst_n,
    \ap_CS_fsm_reg[0] ,
    srcImg_rows_V_c_full_n,
    ap_start,
    ap_rst_n_inv,
    E);
  output srcImg_cols_V_c_full_n;
  output srcImg_cols_V_c_empty_n;
  output internal_full_n_reg_0;
  input ap_clk;
  input ap_rst_n;
  input \ap_CS_fsm_reg[0] ;
  input srcImg_rows_V_c_full_n;
  input ap_start;
  input ap_rst_n_inv;
  input [0:0]E;

  wire [0:0]E;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire internal_empty_n_i_1__2_n_0;
  wire internal_full_n_i_1__3_n_0;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__0_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire srcImg_cols_V_c_empty_n;
  wire srcImg_cols_V_c_full_n;
  wire srcImg_rows_V_c_full_n;

  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__2
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\ap_CS_fsm_reg[0] ),
        .I3(internal_full_n_reg_0),
        .I4(srcImg_cols_V_c_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__2_n_0),
        .Q(srcImg_cols_V_c_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFE0FFFFFFF0FF)) 
    internal_full_n_i_1__3
       (.I0(\mOutPtr_reg_n_0_[1] ),
        .I1(\mOutPtr_reg_n_0_[0] ),
        .I2(srcImg_cols_V_c_full_n),
        .I3(ap_rst_n),
        .I4(\ap_CS_fsm_reg[0] ),
        .I5(internal_full_n_reg_0),
        .O(internal_full_n_i_1__3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2__1
       (.I0(srcImg_cols_V_c_full_n),
        .I1(srcImg_rows_V_c_full_n),
        .I2(ap_start),
        .O(internal_full_n_reg_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__3_n_0),
        .Q(srcImg_cols_V_c_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__0 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F0080FF80FF7F00)) 
    \mOutPtr[1]_i_1 
       (.I0(srcImg_cols_V_c_full_n),
        .I1(srcImg_rows_V_c_full_n),
        .I2(ap_start),
        .I3(\ap_CS_fsm_reg[0] ),
        .I4(\mOutPtr_reg_n_0_[1] ),
        .I5(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__0_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module img_cpy_0_fifo_w8_d2_A
   (dstImg_data_stream_0_full_n,
    dstImg_data_stream_0_empty_n,
    video_out_TDATA,
    ap_clk,
    ap_rst_n,
    shiftReg_ce,
    ap_reg_ioackin_video_out_TREADY_reg,
    CO,
    srcImg_data_stream_0_empty_n,
    Q,
    ap_rst_n_inv,
    D);
  output dstImg_data_stream_0_full_n;
  output dstImg_data_stream_0_empty_n;
  output [7:0]video_out_TDATA;
  input ap_clk;
  input ap_rst_n;
  input shiftReg_ce;
  input ap_reg_ioackin_video_out_TREADY_reg;
  input [0:0]CO;
  input srcImg_data_stream_0_empty_n;
  input [0:0]Q;
  input ap_rst_n_inv;
  input [7:0]D;

  wire [0:0]CO;
  wire [7:0]D;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_reg_ioackin_video_out_TREADY_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire dstImg_data_stream_0_empty_n;
  wire dstImg_data_stream_0_full_n;
  wire internal_empty_n_i_1__6_n_0;
  wire internal_full_n_i_1__6_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire shiftReg_ce;
  wire srcImg_data_stream_0_empty_n;
  wire [7:0]video_out_TDATA;

  img_cpy_0_fifo_w8_d2_A_shiftReg_3 U_fifo_w8_d2_A_ram
       (.D(D),
        .ap_clk(ap_clk),
        .\mOutPtr_reg[0] (\mOutPtr_reg_n_0_[0] ),
        .\mOutPtr_reg[1] (\mOutPtr_reg_n_0_[1] ),
        .shiftReg_ce(shiftReg_ce),
        .video_out_TDATA(video_out_TDATA));
  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__6
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(ap_reg_ioackin_video_out_TREADY_reg),
        .I3(shiftReg_ce),
        .I4(dstImg_data_stream_0_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__6_n_0),
        .Q(dstImg_data_stream_0_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__6
       (.I0(ap_rst_n),
        .I1(dstImg_data_stream_0_full_n),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .I4(shiftReg_ce),
        .I5(ap_reg_ioackin_video_out_TREADY_reg),
        .O(internal_full_n_i_1__6_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__6_n_0),
        .Q(dstImg_data_stream_0_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h655555559AAAAAAA)) 
    \mOutPtr[0]_i_1 
       (.I0(ap_reg_ioackin_video_out_TREADY_reg),
        .I1(CO),
        .I2(srcImg_data_stream_0_empty_n),
        .I3(Q),
        .I4(dstImg_data_stream_0_full_n),
        .I5(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE718)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(shiftReg_ce),
        .I2(ap_reg_ioackin_video_out_TREADY_reg),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module img_cpy_0_fifo_w8_d2_A_1
   (srcImg_data_stream_0_full_n,
    srcImg_data_stream_0_empty_n,
    D,
    ap_clk,
    shiftReg_ce,
    ap_enable_reg_pp1_iter0_reg,
    ap_rst_n,
    \x_i_reg_133_reg[10] ,
    Q,
    dstImg_data_stream_0_full_n,
    ap_rst_n_inv,
    \tmp_reg_457_reg[7] );
  output srcImg_data_stream_0_full_n;
  output srcImg_data_stream_0_empty_n;
  output [7:0]D;
  input ap_clk;
  input shiftReg_ce;
  input ap_enable_reg_pp1_iter0_reg;
  input ap_rst_n;
  input [0:0]\x_i_reg_133_reg[10] ;
  input [0:0]Q;
  input dstImg_data_stream_0_full_n;
  input ap_rst_n_inv;
  input [7:0]\tmp_reg_457_reg[7] ;

  wire [7:0]D;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter0_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire dstImg_data_stream_0_full_n;
  wire internal_empty_n_i_1__4_n_0;
  wire internal_full_n_i_1__4_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire shiftReg_ce;
  wire srcImg_data_stream_0_empty_n;
  wire srcImg_data_stream_0_full_n;
  wire [7:0]\tmp_reg_457_reg[7] ;
  wire [0:0]\x_i_reg_133_reg[10] ;

  img_cpy_0_fifo_w8_d2_A_shiftReg U_fifo_w8_d2_A_ram
       (.D(D),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp1_iter0_reg(ap_enable_reg_pp1_iter0_reg),
        .\mOutPtr_reg[0] (\mOutPtr_reg_n_0_[0] ),
        .\mOutPtr_reg[1] (\mOutPtr_reg_n_0_[1] ),
        .\tmp_reg_457_reg[7] (\tmp_reg_457_reg[7] ));
  LUT6 #(
    .INIT(64'hFFEF0F0000000000)) 
    internal_empty_n_i_1__4
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(shiftReg_ce),
        .I3(ap_enable_reg_pp1_iter0_reg),
        .I4(srcImg_data_stream_0_empty_n),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__4_n_0),
        .Q(srcImg_data_stream_0_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__4
       (.I0(ap_rst_n),
        .I1(srcImg_data_stream_0_full_n),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .I4(ap_enable_reg_pp1_iter0_reg),
        .I5(shiftReg_ce),
        .O(internal_full_n_i_1__4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__4_n_0),
        .Q(srcImg_data_stream_0_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000BFFFBFFF4000)) 
    \mOutPtr[0]_i_1 
       (.I0(\x_i_reg_133_reg[10] ),
        .I1(srcImg_data_stream_0_empty_n),
        .I2(Q),
        .I3(dstImg_data_stream_0_full_n),
        .I4(ap_enable_reg_pp1_iter0_reg),
        .I5(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE718)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp1_iter0_reg),
        .I2(shiftReg_ce),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module img_cpy_0_fifo_w8_d2_A_shiftReg
   (D,
    \mOutPtr_reg[0] ,
    \mOutPtr_reg[1] ,
    ap_enable_reg_pp1_iter0_reg,
    \tmp_reg_457_reg[7] ,
    ap_clk);
  output [7:0]D;
  input \mOutPtr_reg[0] ;
  input \mOutPtr_reg[1] ;
  input ap_enable_reg_pp1_iter0_reg;
  input [7:0]\tmp_reg_457_reg[7] ;
  input ap_clk;

  wire [7:0]D;
  wire \SRL_SIG_reg_n_0_[0][0] ;
  wire \SRL_SIG_reg_n_0_[0][1] ;
  wire \SRL_SIG_reg_n_0_[0][2] ;
  wire \SRL_SIG_reg_n_0_[0][3] ;
  wire \SRL_SIG_reg_n_0_[0][4] ;
  wire \SRL_SIG_reg_n_0_[0][5] ;
  wire \SRL_SIG_reg_n_0_[0][6] ;
  wire \SRL_SIG_reg_n_0_[0][7] ;
  wire \SRL_SIG_reg_n_0_[1][0] ;
  wire \SRL_SIG_reg_n_0_[1][1] ;
  wire \SRL_SIG_reg_n_0_[1][2] ;
  wire \SRL_SIG_reg_n_0_[1][3] ;
  wire \SRL_SIG_reg_n_0_[1][4] ;
  wire \SRL_SIG_reg_n_0_[1][5] ;
  wire \SRL_SIG_reg_n_0_[1][6] ;
  wire \SRL_SIG_reg_n_0_[1][7] ;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter0_reg;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[1] ;
  wire [7:0]\tmp_reg_457_reg[7] ;

  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][0]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][0] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][0] ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][1]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][1] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][1] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][2]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][2] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][2] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][3]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][3] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][3] ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][4]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][4] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][5]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][5] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][5] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][6]_i_1 
       (.I0(\SRL_SIG_reg_n_0_[1][6] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][6] ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \SRL_SIG[0][7]_i_2 
       (.I0(\SRL_SIG_reg_n_0_[1][7] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][7] ),
        .O(D[7]));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\tmp_reg_457_reg[7] [0]),
        .Q(\SRL_SIG_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\tmp_reg_457_reg[7] [1]),
        .Q(\SRL_SIG_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\tmp_reg_457_reg[7] [2]),
        .Q(\SRL_SIG_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\tmp_reg_457_reg[7] [3]),
        .Q(\SRL_SIG_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\tmp_reg_457_reg[7] [4]),
        .Q(\SRL_SIG_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\tmp_reg_457_reg[7] [5]),
        .Q(\SRL_SIG_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\tmp_reg_457_reg[7] [6]),
        .Q(\SRL_SIG_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\tmp_reg_457_reg[7] [7]),
        .Q(\SRL_SIG_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\SRL_SIG_reg_n_0_[0][0] ),
        .Q(\SRL_SIG_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\SRL_SIG_reg_n_0_[0][1] ),
        .Q(\SRL_SIG_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\SRL_SIG_reg_n_0_[0][2] ),
        .Q(\SRL_SIG_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\SRL_SIG_reg_n_0_[0][3] ),
        .Q(\SRL_SIG_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\SRL_SIG_reg_n_0_[0][4] ),
        .Q(\SRL_SIG_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\SRL_SIG_reg_n_0_[0][5] ),
        .Q(\SRL_SIG_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\SRL_SIG_reg_n_0_[0][6] ),
        .Q(\SRL_SIG_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(ap_enable_reg_pp1_iter0_reg),
        .D(\SRL_SIG_reg_n_0_[0][7] ),
        .Q(\SRL_SIG_reg_n_0_[1][7] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module img_cpy_0_fifo_w8_d2_A_shiftReg_3
   (video_out_TDATA,
    \mOutPtr_reg[0] ,
    \mOutPtr_reg[1] ,
    shiftReg_ce,
    D,
    ap_clk);
  output [7:0]video_out_TDATA;
  input \mOutPtr_reg[0] ;
  input \mOutPtr_reg[1] ;
  input shiftReg_ce;
  input [7:0]D;
  input ap_clk;

  wire [7:0]D;
  wire \SRL_SIG_reg_n_0_[0][0] ;
  wire \SRL_SIG_reg_n_0_[0][1] ;
  wire \SRL_SIG_reg_n_0_[0][2] ;
  wire \SRL_SIG_reg_n_0_[0][3] ;
  wire \SRL_SIG_reg_n_0_[0][4] ;
  wire \SRL_SIG_reg_n_0_[0][5] ;
  wire \SRL_SIG_reg_n_0_[0][6] ;
  wire \SRL_SIG_reg_n_0_[0][7] ;
  wire \SRL_SIG_reg_n_0_[1][0] ;
  wire \SRL_SIG_reg_n_0_[1][1] ;
  wire \SRL_SIG_reg_n_0_[1][2] ;
  wire \SRL_SIG_reg_n_0_[1][3] ;
  wire \SRL_SIG_reg_n_0_[1][4] ;
  wire \SRL_SIG_reg_n_0_[1][5] ;
  wire \SRL_SIG_reg_n_0_[1][6] ;
  wire \SRL_SIG_reg_n_0_[1][7] ;
  wire ap_clk;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[1] ;
  wire shiftReg_ce;
  wire [7:0]video_out_TDATA;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[0]),
        .Q(\SRL_SIG_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[1]),
        .Q(\SRL_SIG_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[2]),
        .Q(\SRL_SIG_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[3]),
        .Q(\SRL_SIG_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[4]),
        .Q(\SRL_SIG_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[5]),
        .Q(\SRL_SIG_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[6]),
        .Q(\SRL_SIG_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[7]),
        .Q(\SRL_SIG_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][0] ),
        .Q(\SRL_SIG_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][1] ),
        .Q(\SRL_SIG_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][2] ),
        .Q(\SRL_SIG_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][3] ),
        .Q(\SRL_SIG_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][4] ),
        .Q(\SRL_SIG_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][5] ),
        .Q(\SRL_SIG_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][6] ),
        .Q(\SRL_SIG_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\SRL_SIG_reg_n_0_[0][7] ),
        .Q(\SRL_SIG_reg_n_0_[1][7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \video_out_TDATA[0]_INST_0 
       (.I0(\SRL_SIG_reg_n_0_[1][0] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][0] ),
        .O(video_out_TDATA[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \video_out_TDATA[1]_INST_0 
       (.I0(\SRL_SIG_reg_n_0_[1][1] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][1] ),
        .O(video_out_TDATA[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \video_out_TDATA[2]_INST_0 
       (.I0(\SRL_SIG_reg_n_0_[1][2] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][2] ),
        .O(video_out_TDATA[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \video_out_TDATA[3]_INST_0 
       (.I0(\SRL_SIG_reg_n_0_[1][3] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][3] ),
        .O(video_out_TDATA[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \video_out_TDATA[4]_INST_0 
       (.I0(\SRL_SIG_reg_n_0_[1][4] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][4] ),
        .O(video_out_TDATA[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \video_out_TDATA[5]_INST_0 
       (.I0(\SRL_SIG_reg_n_0_[1][5] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][5] ),
        .O(video_out_TDATA[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \video_out_TDATA[6]_INST_0 
       (.I0(\SRL_SIG_reg_n_0_[1][6] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][6] ),
        .O(video_out_TDATA[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \video_out_TDATA[7]_INST_0 
       (.I0(\SRL_SIG_reg_n_0_[1][7] ),
        .I1(\mOutPtr_reg[0] ),
        .I2(\mOutPtr_reg[1] ),
        .I3(\SRL_SIG_reg_n_0_[0][7] ),
        .O(video_out_TDATA[7]));
endmodule

(* ORIG_REF_NAME = "img_cpy" *) (* hls_module = "yes" *) 
module img_cpy_0_img_cpy
   (video_in_TDATA,
    video_in_TKEEP,
    video_in_TSTRB,
    video_in_TUSER,
    video_in_TLAST,
    video_in_TID,
    video_in_TDEST,
    video_out_TDATA,
    video_out_TKEEP,
    video_out_TSTRB,
    video_out_TUSER,
    video_out_TLAST,
    video_out_TID,
    video_out_TDEST,
    ap_clk,
    ap_rst_n,
    ap_start,
    video_in_TVALID,
    video_in_TREADY,
    video_out_TVALID,
    video_out_TREADY,
    ap_done,
    ap_ready,
    ap_idle);
  input [63:0]video_in_TDATA;
  input [7:0]video_in_TKEEP;
  input [7:0]video_in_TSTRB;
  input [0:0]video_in_TUSER;
  input [0:0]video_in_TLAST;
  input [0:0]video_in_TID;
  input [0:0]video_in_TDEST;
  output [63:0]video_out_TDATA;
  output [7:0]video_out_TKEEP;
  output [7:0]video_out_TSTRB;
  output [0:0]video_out_TUSER;
  output [0:0]video_out_TLAST;
  output [0:0]video_out_TID;
  output [0:0]video_out_TDEST;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  input video_in_TVALID;
  output video_in_TREADY;
  output video_out_TVALID;
  input video_out_TREADY;
  output ap_done;
  output ap_ready;
  output ap_idle;

  wire \<const0> ;
  wire \<const1> ;
  wire AXIvideo2Mat_U0_n_2;
  wire AXIvideo2Mat_U0_n_4;
  wire AXIvideo2Mat_U0_n_5;
  wire AXIvideo2Mat_U0_n_6;
  wire Mat2AXIvideo_U0_ap_start;
  wire Mat2AXIvideo_U0_n_2;
  wire Mat2AXIvideo_U0_n_3;
  wire Mat2AXIvideo_U0_n_6;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire dstImg_data_stream_0_empty_n;
  wire dstImg_data_stream_0_full_n;
  wire exitcond1_fu_152_p2;
  wire exitcond_fu_163_p2;
  wire img_cpy_opr_U0_ap_start;
  wire img_cpy_opr_U0_n_2;
  wire img_cpy_opr_U0_n_3;
  wire img_cpy_opr_U0_n_4;
  wire img_cpy_opr_U0_n_7;
  wire img_cpy_opr_U0_n_8;
  wire img_cpy_opr_U0_n_9;
  wire shiftReg_ce;
  wire srcImg_cols_V_c7_empty_n;
  wire srcImg_cols_V_c7_full_n;
  wire srcImg_cols_V_c_U_n_2;
  wire srcImg_cols_V_c_empty_n;
  wire srcImg_cols_V_c_full_n;
  wire srcImg_data_stream_0_U_n_2;
  wire srcImg_data_stream_0_U_n_3;
  wire srcImg_data_stream_0_U_n_4;
  wire srcImg_data_stream_0_U_n_5;
  wire srcImg_data_stream_0_U_n_6;
  wire srcImg_data_stream_0_U_n_7;
  wire srcImg_data_stream_0_U_n_8;
  wire srcImg_data_stream_0_U_n_9;
  wire srcImg_data_stream_0_empty_n;
  wire srcImg_data_stream_0_full_n;
  wire srcImg_rows_V_c6_empty_n;
  wire srcImg_rows_V_c6_full_n;
  wire srcImg_rows_V_c_empty_n;
  wire srcImg_rows_V_c_full_n;
  wire start_for_Mat2AXIvideo_U0_full_n;
  wire start_for_img_cpy_opr_U0_full_n;
  wire start_for_img_cpybkb_U_n_2;
  wire start_once_reg;
  wire [7:0]tmp_reg_457;
  wire [63:0]video_in_TDATA;
  wire [0:0]video_in_TLAST;
  wire video_in_TREADY;
  wire [0:0]video_in_TUSER;
  wire video_in_TVALID;
  wire [7:0]\^video_out_TDATA ;
  wire [0:0]video_out_TLAST;
  wire video_out_TREADY;
  wire [0:0]video_out_TUSER;
  wire video_out_TVALID;

  assign video_out_TDATA[63] = \<const1> ;
  assign video_out_TDATA[62] = \<const1> ;
  assign video_out_TDATA[61] = \<const1> ;
  assign video_out_TDATA[60] = \<const1> ;
  assign video_out_TDATA[59] = \<const1> ;
  assign video_out_TDATA[58] = \<const1> ;
  assign video_out_TDATA[57] = \<const1> ;
  assign video_out_TDATA[56] = \<const1> ;
  assign video_out_TDATA[55] = \<const1> ;
  assign video_out_TDATA[54] = \<const1> ;
  assign video_out_TDATA[53] = \<const1> ;
  assign video_out_TDATA[52] = \<const1> ;
  assign video_out_TDATA[51] = \<const1> ;
  assign video_out_TDATA[50] = \<const1> ;
  assign video_out_TDATA[49] = \<const1> ;
  assign video_out_TDATA[48] = \<const1> ;
  assign video_out_TDATA[47] = \<const1> ;
  assign video_out_TDATA[46] = \<const1> ;
  assign video_out_TDATA[45] = \<const1> ;
  assign video_out_TDATA[44] = \<const1> ;
  assign video_out_TDATA[43] = \<const1> ;
  assign video_out_TDATA[42] = \<const1> ;
  assign video_out_TDATA[41] = \<const1> ;
  assign video_out_TDATA[40] = \<const1> ;
  assign video_out_TDATA[39] = \<const1> ;
  assign video_out_TDATA[38] = \<const1> ;
  assign video_out_TDATA[37] = \<const1> ;
  assign video_out_TDATA[36] = \<const1> ;
  assign video_out_TDATA[35] = \<const1> ;
  assign video_out_TDATA[34] = \<const1> ;
  assign video_out_TDATA[33] = \<const1> ;
  assign video_out_TDATA[32] = \<const1> ;
  assign video_out_TDATA[31] = \<const1> ;
  assign video_out_TDATA[30] = \<const1> ;
  assign video_out_TDATA[29] = \<const1> ;
  assign video_out_TDATA[28] = \<const1> ;
  assign video_out_TDATA[27] = \<const1> ;
  assign video_out_TDATA[26] = \<const1> ;
  assign video_out_TDATA[25] = \<const1> ;
  assign video_out_TDATA[24] = \<const1> ;
  assign video_out_TDATA[23] = \<const1> ;
  assign video_out_TDATA[22] = \<const1> ;
  assign video_out_TDATA[21] = \<const1> ;
  assign video_out_TDATA[20] = \<const1> ;
  assign video_out_TDATA[19] = \<const1> ;
  assign video_out_TDATA[18] = \<const1> ;
  assign video_out_TDATA[17] = \<const1> ;
  assign video_out_TDATA[16] = \<const1> ;
  assign video_out_TDATA[15] = \<const1> ;
  assign video_out_TDATA[14] = \<const1> ;
  assign video_out_TDATA[13] = \<const1> ;
  assign video_out_TDATA[12] = \<const1> ;
  assign video_out_TDATA[11] = \<const1> ;
  assign video_out_TDATA[10] = \<const1> ;
  assign video_out_TDATA[9] = \<const1> ;
  assign video_out_TDATA[8] = \<const1> ;
  assign video_out_TDATA[7:0] = \^video_out_TDATA [7:0];
  assign video_out_TDEST[0] = \<const0> ;
  assign video_out_TID[0] = \<const0> ;
  assign video_out_TKEEP[7] = \<const1> ;
  assign video_out_TKEEP[6] = \<const1> ;
  assign video_out_TKEEP[5] = \<const1> ;
  assign video_out_TKEEP[4] = \<const1> ;
  assign video_out_TKEEP[3] = \<const1> ;
  assign video_out_TKEEP[2] = \<const1> ;
  assign video_out_TKEEP[1] = \<const1> ;
  assign video_out_TKEEP[0] = \<const1> ;
  assign video_out_TSTRB[7] = \<const0> ;
  assign video_out_TSTRB[6] = \<const0> ;
  assign video_out_TSTRB[5] = \<const0> ;
  assign video_out_TSTRB[4] = \<const0> ;
  assign video_out_TSTRB[3] = \<const0> ;
  assign video_out_TSTRB[2] = \<const0> ;
  assign video_out_TSTRB[1] = \<const0> ;
  assign video_out_TSTRB[0] = \<const0> ;
  img_cpy_0_AXIvideo2Mat AXIvideo2Mat_U0
       (.E(AXIvideo2Mat_U0_n_6),
        .Q(img_cpy_opr_U0_n_7),
        .\SRL_SIG_reg[0][7] (tmp_reg_457),
        .\SRL_SIG_reg[1][0] (AXIvideo2Mat_U0_n_2),
        .\ap_CS_fsm_reg[0]_0 (Mat2AXIvideo_U0_n_6),
        .\ap_CS_fsm_reg[1]_0 (AXIvideo2Mat_U0_n_5),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .internal_empty_n_reg(start_for_img_cpybkb_U_n_2),
        .\mOutPtr_reg[0] (AXIvideo2Mat_U0_n_4),
        .srcImg_cols_V_c7_full_n(srcImg_cols_V_c7_full_n),
        .srcImg_cols_V_c_empty_n(srcImg_cols_V_c_empty_n),
        .srcImg_cols_V_c_full_n(srcImg_cols_V_c_full_n),
        .srcImg_data_stream_0_full_n(srcImg_data_stream_0_full_n),
        .srcImg_rows_V_c6_full_n(srcImg_rows_V_c6_full_n),
        .srcImg_rows_V_c_empty_n(srcImg_rows_V_c_empty_n),
        .srcImg_rows_V_c_full_n(srcImg_rows_V_c_full_n),
        .start_for_img_cpy_opr_U0_full_n(start_for_img_cpy_opr_U0_full_n),
        .start_once_reg(start_once_reg),
        .video_in_TDATA(video_in_TDATA[7:0]),
        .video_in_TLAST(video_in_TLAST),
        .video_in_TREADY(video_in_TREADY),
        .video_in_TUSER(video_in_TUSER),
        .video_in_TVALID(video_in_TVALID));
  GND GND
       (.G(\<const0> ));
  img_cpy_0_Mat2AXIvideo Mat2AXIvideo_U0
       (.Mat2AXIvideo_U0_ap_start(Mat2AXIvideo_U0_ap_start),
        .\ap_CS_fsm_reg[0]_0 (Mat2AXIvideo_U0_n_3),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(Mat2AXIvideo_U0_n_6),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .dstImg_data_stream_0_empty_n(dstImg_data_stream_0_empty_n),
        .\tmp_user_V_fu_100_reg[0]_0 (Mat2AXIvideo_U0_n_2),
        .video_out_TLAST(video_out_TLAST),
        .video_out_TREADY(video_out_TREADY),
        .video_out_TUSER(video_out_TUSER),
        .video_out_TVALID(video_out_TVALID));
  VCC VCC
       (.P(\<const1> ));
  img_cpy_0_fifo_w8_d2_A dstImg_data_stream_0_U
       (.CO(exitcond_fu_163_p2),
        .D({srcImg_data_stream_0_U_n_2,srcImg_data_stream_0_U_n_3,srcImg_data_stream_0_U_n_4,srcImg_data_stream_0_U_n_5,srcImg_data_stream_0_U_n_6,srcImg_data_stream_0_U_n_7,srcImg_data_stream_0_U_n_8,srcImg_data_stream_0_U_n_9}),
        .Q(ap_CS_fsm_state3),
        .ap_clk(ap_clk),
        .ap_reg_ioackin_video_out_TREADY_reg(Mat2AXIvideo_U0_n_2),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .dstImg_data_stream_0_empty_n(dstImg_data_stream_0_empty_n),
        .dstImg_data_stream_0_full_n(dstImg_data_stream_0_full_n),
        .shiftReg_ce(shiftReg_ce),
        .srcImg_data_stream_0_empty_n(srcImg_data_stream_0_empty_n),
        .video_out_TDATA(\^video_out_TDATA ));
  img_cpy_0_img_cpy_opr img_cpy_opr_U0
       (.CO(exitcond1_fu_152_p2),
        .E(img_cpy_opr_U0_n_3),
        .Q({ap_CS_fsm_state3,ap_CS_fsm_state2,img_cpy_opr_U0_n_7}),
        .\ap_CS_fsm_reg[0]_0 (AXIvideo2Mat_U0_n_5),
        .\ap_CS_fsm_reg[2]_0 (exitcond_fu_163_p2),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .dstImg_data_stream_0_full_n(dstImg_data_stream_0_full_n),
        .img_cpy_opr_U0_ap_start(img_cpy_opr_U0_ap_start),
        .internal_empty_n_reg(img_cpy_opr_U0_n_9),
        .internal_full_n_reg(img_cpy_opr_U0_n_8),
        .\mOutPtr_reg[0] (img_cpy_opr_U0_n_4),
        .shiftReg_ce(shiftReg_ce),
        .srcImg_cols_V_c7_empty_n(srcImg_cols_V_c7_empty_n),
        .srcImg_data_stream_0_empty_n(srcImg_data_stream_0_empty_n),
        .srcImg_rows_V_c6_empty_n(srcImg_rows_V_c6_empty_n),
        .start_for_Mat2AXIvideo_U0_full_n(start_for_Mat2AXIvideo_U0_full_n),
        .start_once_reg_reg_0(img_cpy_opr_U0_n_2));
  img_cpy_0_fifo_w11_d2_A srcImg_cols_V_c7_U
       (.E(img_cpy_opr_U0_n_3),
        .\ap_CS_fsm_reg[0] (AXIvideo2Mat_U0_n_5),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .internal_full_n_reg_0(img_cpy_opr_U0_n_4),
        .srcImg_cols_V_c7_empty_n(srcImg_cols_V_c7_empty_n),
        .srcImg_cols_V_c7_full_n(srcImg_cols_V_c7_full_n));
  img_cpy_0_fifo_w11_d2_A_0 srcImg_cols_V_c_U
       (.E(AXIvideo2Mat_U0_n_6),
        .\ap_CS_fsm_reg[0] (AXIvideo2Mat_U0_n_5),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .internal_full_n_reg_0(srcImg_cols_V_c_U_n_2),
        .srcImg_cols_V_c_empty_n(srcImg_cols_V_c_empty_n),
        .srcImg_cols_V_c_full_n(srcImg_cols_V_c_full_n),
        .srcImg_rows_V_c_full_n(srcImg_rows_V_c_full_n));
  img_cpy_0_fifo_w8_d2_A_1 srcImg_data_stream_0_U
       (.D({srcImg_data_stream_0_U_n_2,srcImg_data_stream_0_U_n_3,srcImg_data_stream_0_U_n_4,srcImg_data_stream_0_U_n_5,srcImg_data_stream_0_U_n_6,srcImg_data_stream_0_U_n_7,srcImg_data_stream_0_U_n_8,srcImg_data_stream_0_U_n_9}),
        .Q(ap_CS_fsm_state3),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp1_iter0_reg(AXIvideo2Mat_U0_n_2),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .dstImg_data_stream_0_full_n(dstImg_data_stream_0_full_n),
        .shiftReg_ce(shiftReg_ce),
        .srcImg_data_stream_0_empty_n(srcImg_data_stream_0_empty_n),
        .srcImg_data_stream_0_full_n(srcImg_data_stream_0_full_n),
        .\tmp_reg_457_reg[7] (tmp_reg_457),
        .\x_i_reg_133_reg[10] (exitcond_fu_163_p2));
  img_cpy_0_fifo_w10_d2_A srcImg_rows_V_c6_U
       (.E(img_cpy_opr_U0_n_3),
        .\ap_CS_fsm_reg[0] (AXIvideo2Mat_U0_n_5),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .internal_full_n_reg_0(img_cpy_opr_U0_n_4),
        .srcImg_rows_V_c6_empty_n(srcImg_rows_V_c6_empty_n),
        .srcImg_rows_V_c6_full_n(srcImg_rows_V_c6_full_n));
  img_cpy_0_fifo_w10_d2_A_2 srcImg_rows_V_c_U
       (.E(AXIvideo2Mat_U0_n_6),
        .\ap_CS_fsm_reg[0] (AXIvideo2Mat_U0_n_5),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .internal_full_n_reg_0(srcImg_cols_V_c_U_n_2),
        .srcImg_cols_V_c_full_n(srcImg_cols_V_c_full_n),
        .srcImg_rows_V_c_empty_n(srcImg_rows_V_c_empty_n),
        .srcImg_rows_V_c_full_n(srcImg_rows_V_c_full_n));
  img_cpy_0_start_for_Mat2AXIcud start_for_Mat2AXIcud_U
       (.Mat2AXIvideo_U0_ap_start(Mat2AXIvideo_U0_ap_start),
        .\ap_CS_fsm_reg[1] (Mat2AXIvideo_U0_n_3),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .img_cpy_opr_U0_ap_start(img_cpy_opr_U0_ap_start),
        .start_for_Mat2AXIvideo_U0_full_n(start_for_Mat2AXIvideo_U0_full_n),
        .start_once_reg_reg(img_cpy_opr_U0_n_2));
  img_cpy_0_start_for_img_cpybkb start_for_img_cpybkb_U
       (.CO(exitcond1_fu_152_p2),
        .Q(ap_CS_fsm_state2),
        .\ap_CS_fsm_reg[1] (img_cpy_opr_U0_n_9),
        .ap_clk(ap_clk),
        .ap_idle(start_for_img_cpybkb_U_n_2),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .img_cpy_opr_U0_ap_start(img_cpy_opr_U0_ap_start),
        .internal_empty_n_reg_0(img_cpy_opr_U0_n_8),
        .start_for_Mat2AXIvideo_U0_full_n(start_for_Mat2AXIvideo_U0_full_n),
        .start_for_img_cpy_opr_U0_full_n(start_for_img_cpy_opr_U0_full_n),
        .start_once_reg(start_once_reg),
        .start_once_reg_reg(img_cpy_opr_U0_n_2),
        .start_once_reg_reg_0(AXIvideo2Mat_U0_n_4));
endmodule

(* ORIG_REF_NAME = "img_cpy_opr" *) 
module img_cpy_0_img_cpy_opr
   (CO,
    \ap_CS_fsm_reg[2]_0 ,
    start_once_reg_reg_0,
    E,
    \mOutPtr_reg[0] ,
    Q,
    internal_full_n_reg,
    internal_empty_n_reg,
    shiftReg_ce,
    ap_rst_n_inv,
    ap_clk,
    \ap_CS_fsm_reg[0]_0 ,
    img_cpy_opr_U0_ap_start,
    start_for_Mat2AXIvideo_U0_full_n,
    srcImg_rows_V_c6_empty_n,
    srcImg_cols_V_c7_empty_n,
    srcImg_data_stream_0_empty_n,
    dstImg_data_stream_0_full_n);
  output [0:0]CO;
  output [0:0]\ap_CS_fsm_reg[2]_0 ;
  output start_once_reg_reg_0;
  output [0:0]E;
  output \mOutPtr_reg[0] ;
  output [2:0]Q;
  output internal_full_n_reg;
  output internal_empty_n_reg;
  output shiftReg_ce;
  input ap_rst_n_inv;
  input ap_clk;
  input \ap_CS_fsm_reg[0]_0 ;
  input img_cpy_opr_U0_ap_start;
  input start_for_Mat2AXIvideo_U0_full_n;
  input srcImg_rows_V_c6_empty_n;
  input srcImg_cols_V_c7_empty_n;
  input srcImg_data_stream_0_empty_n;
  input dstImg_data_stream_0_full_n;

  wire [0:0]CO;
  wire [0:0]E;
  wire [2:0]Q;
  wire \ap_CS_fsm[0]_i_1__0_n_0 ;
  wire \ap_CS_fsm[1]_i_1__0_n_0 ;
  wire \ap_CS_fsm[2]_i_1__0_n_0 ;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire [0:0]\ap_CS_fsm_reg[2]_0 ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire dstImg_data_stream_0_full_n;
  wire exitcond1_fu_152_p2_carry_i_1_n_0;
  wire exitcond1_fu_152_p2_carry_i_2_n_0;
  wire exitcond1_fu_152_p2_carry_i_3_n_0;
  wire exitcond1_fu_152_p2_carry_i_4_n_0;
  wire exitcond1_fu_152_p2_carry_n_1;
  wire exitcond1_fu_152_p2_carry_n_2;
  wire exitcond1_fu_152_p2_carry_n_3;
  wire \exitcond_fu_163_p2_inferred__0/i__carry_n_1 ;
  wire \exitcond_fu_163_p2_inferred__0/i__carry_n_2 ;
  wire \exitcond_fu_163_p2_inferred__0/i__carry_n_3 ;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_4__0_n_0;
  wire img_cpy_opr_U0_ap_start;
  wire internal_empty_n_reg;
  wire internal_full_n_reg;
  wire \mOutPtr_reg[0] ;
  wire shiftReg_ce;
  wire srcImg_cols_V_c7_empty_n;
  wire srcImg_data_stream_0_empty_n;
  wire srcImg_rows_V_c6_empty_n;
  wire start_for_Mat2AXIvideo_U0_full_n;
  wire start_once_reg_i_1__0_n_0;
  wire start_once_reg_reg_0;
  wire x_i_reg_1330;
  wire \x_i_reg_133[0]_i_3_n_0 ;
  wire [11:0]x_i_reg_133_reg;
  wire \x_i_reg_133_reg[0]_i_2_n_0 ;
  wire \x_i_reg_133_reg[0]_i_2_n_1 ;
  wire \x_i_reg_133_reg[0]_i_2_n_2 ;
  wire \x_i_reg_133_reg[0]_i_2_n_3 ;
  wire \x_i_reg_133_reg[0]_i_2_n_4 ;
  wire \x_i_reg_133_reg[0]_i_2_n_5 ;
  wire \x_i_reg_133_reg[0]_i_2_n_6 ;
  wire \x_i_reg_133_reg[0]_i_2_n_7 ;
  wire \x_i_reg_133_reg[4]_i_1_n_0 ;
  wire \x_i_reg_133_reg[4]_i_1_n_1 ;
  wire \x_i_reg_133_reg[4]_i_1_n_2 ;
  wire \x_i_reg_133_reg[4]_i_1_n_3 ;
  wire \x_i_reg_133_reg[4]_i_1_n_4 ;
  wire \x_i_reg_133_reg[4]_i_1_n_5 ;
  wire \x_i_reg_133_reg[4]_i_1_n_6 ;
  wire \x_i_reg_133_reg[4]_i_1_n_7 ;
  wire \x_i_reg_133_reg[8]_i_1_n_1 ;
  wire \x_i_reg_133_reg[8]_i_1_n_2 ;
  wire \x_i_reg_133_reg[8]_i_1_n_3 ;
  wire \x_i_reg_133_reg[8]_i_1_n_4 ;
  wire \x_i_reg_133_reg[8]_i_1_n_5 ;
  wire \x_i_reg_133_reg[8]_i_1_n_6 ;
  wire \x_i_reg_133_reg[8]_i_1_n_7 ;
  wire [11:0]y_fu_157_p2;
  wire [11:0]y_i_reg_122;
  wire y_i_reg_122_0;
  wire [11:0]y_reg_187;
  wire \y_reg_187_reg[11]_i_1_n_2 ;
  wire \y_reg_187_reg[11]_i_1_n_3 ;
  wire \y_reg_187_reg[4]_i_1_n_0 ;
  wire \y_reg_187_reg[4]_i_1_n_1 ;
  wire \y_reg_187_reg[4]_i_1_n_2 ;
  wire \y_reg_187_reg[4]_i_1_n_3 ;
  wire \y_reg_187_reg[8]_i_1_n_0 ;
  wire \y_reg_187_reg[8]_i_1_n_1 ;
  wire \y_reg_187_reg[8]_i_1_n_2 ;
  wire \y_reg_187_reg[8]_i_1_n_3 ;
  wire [3:0]NLW_exitcond1_fu_152_p2_carry_O_UNCONNECTED;
  wire [3:0]\NLW_exitcond_fu_163_p2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_x_i_reg_133_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_y_reg_187_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_y_reg_187_reg[11]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h4000)) 
    \SRL_SIG[0][7]_i_1 
       (.I0(\ap_CS_fsm_reg[2]_0 ),
        .I1(srcImg_data_stream_0_empty_n),
        .I2(Q[2]),
        .I3(dstImg_data_stream_0_full_n),
        .O(shiftReg_ce));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hEE0C)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(CO),
        .I1(Q[0]),
        .I2(\mOutPtr_reg[0] ),
        .I3(Q[1]),
        .O(\ap_CS_fsm[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h22223000)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(\mOutPtr_reg[0] ),
        .I1(Q[1]),
        .I2(\ap_CS_fsm_reg[2]_0 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\ap_CS_fsm[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \ap_CS_fsm[1]_i_2__0 
       (.I0(start_for_Mat2AXIvideo_U0_full_n),
        .I1(start_once_reg_reg_0),
        .I2(img_cpy_opr_U0_ap_start),
        .I3(Q[0]),
        .I4(srcImg_rows_V_c6_empty_n),
        .I5(srcImg_cols_V_c7_empty_n),
        .O(\mOutPtr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h10131313)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(CO),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\ap_CS_fsm_reg[2]_0 ),
        .I4(Q[2]),
        .O(\ap_CS_fsm[2]_i_1__0_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(ap_rst_n_inv));
  CARRY4 exitcond1_fu_152_p2_carry
       (.CI(1'b0),
        .CO({CO,exitcond1_fu_152_p2_carry_n_1,exitcond1_fu_152_p2_carry_n_2,exitcond1_fu_152_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_exitcond1_fu_152_p2_carry_O_UNCONNECTED[3:0]),
        .S({exitcond1_fu_152_p2_carry_i_1_n_0,exitcond1_fu_152_p2_carry_i_2_n_0,exitcond1_fu_152_p2_carry_i_3_n_0,exitcond1_fu_152_p2_carry_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond1_fu_152_p2_carry_i_1
       (.I0(y_i_reg_122[11]),
        .I1(y_i_reg_122[10]),
        .I2(y_i_reg_122[9]),
        .O(exitcond1_fu_152_p2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    exitcond1_fu_152_p2_carry_i_2
       (.I0(y_i_reg_122[6]),
        .I1(y_i_reg_122[8]),
        .I2(y_i_reg_122[7]),
        .O(exitcond1_fu_152_p2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    exitcond1_fu_152_p2_carry_i_3
       (.I0(y_i_reg_122[3]),
        .I1(y_i_reg_122[5]),
        .I2(y_i_reg_122[4]),
        .O(exitcond1_fu_152_p2_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    exitcond1_fu_152_p2_carry_i_4
       (.I0(y_i_reg_122[0]),
        .I1(y_i_reg_122[2]),
        .I2(y_i_reg_122[1]),
        .O(exitcond1_fu_152_p2_carry_i_4_n_0));
  CARRY4 \exitcond_fu_163_p2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ap_CS_fsm_reg[2]_0 ,\exitcond_fu_163_p2_inferred__0/i__carry_n_1 ,\exitcond_fu_163_p2_inferred__0/i__carry_n_2 ,\exitcond_fu_163_p2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_exitcond_fu_163_p2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_1__0
       (.I0(x_i_reg_133_reg[10]),
        .I1(x_i_reg_133_reg[9]),
        .I2(x_i_reg_133_reg[11]),
        .O(i__carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_2__0
       (.I0(x_i_reg_133_reg[6]),
        .I1(x_i_reg_133_reg[7]),
        .I2(x_i_reg_133_reg[8]),
        .O(i__carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_3__0
       (.I0(x_i_reg_133_reg[5]),
        .I1(x_i_reg_133_reg[4]),
        .I2(x_i_reg_133_reg[3]),
        .O(i__carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_4__0
       (.I0(x_i_reg_133_reg[0]),
        .I1(x_i_reg_133_reg[2]),
        .I2(x_i_reg_133_reg[1]),
        .O(i__carry_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    internal_empty_n_i_2
       (.I0(Q[1]),
        .I1(CO),
        .O(internal_empty_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    internal_full_n_i_2
       (.I0(img_cpy_opr_U0_ap_start),
        .I1(CO),
        .I2(Q[1]),
        .O(internal_full_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mOutPtr[1]_i_1__0 
       (.I0(\mOutPtr_reg[0] ),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h77707700)) 
    start_once_reg_i_1__0
       (.I0(CO),
        .I1(Q[1]),
        .I2(start_for_Mat2AXIvideo_U0_full_n),
        .I3(start_once_reg_reg_0),
        .I4(img_cpy_opr_U0_ap_start),
        .O(start_once_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1__0_n_0),
        .Q(start_once_reg_reg_0),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h2)) 
    \x_i_reg_133[0]_i_1 
       (.I0(Q[1]),
        .I1(CO),
        .O(x_i_reg_1330));
  LUT1 #(
    .INIT(2'h1)) 
    \x_i_reg_133[0]_i_3 
       (.I0(x_i_reg_133_reg[0]),
        .O(\x_i_reg_133[0]_i_3_n_0 ));
  FDRE \x_i_reg_133_reg[0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\x_i_reg_133_reg[0]_i_2_n_7 ),
        .Q(x_i_reg_133_reg[0]),
        .R(x_i_reg_1330));
  CARRY4 \x_i_reg_133_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\x_i_reg_133_reg[0]_i_2_n_0 ,\x_i_reg_133_reg[0]_i_2_n_1 ,\x_i_reg_133_reg[0]_i_2_n_2 ,\x_i_reg_133_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\x_i_reg_133_reg[0]_i_2_n_4 ,\x_i_reg_133_reg[0]_i_2_n_5 ,\x_i_reg_133_reg[0]_i_2_n_6 ,\x_i_reg_133_reg[0]_i_2_n_7 }),
        .S({x_i_reg_133_reg[3:1],\x_i_reg_133[0]_i_3_n_0 }));
  FDRE \x_i_reg_133_reg[10] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\x_i_reg_133_reg[8]_i_1_n_5 ),
        .Q(x_i_reg_133_reg[10]),
        .R(x_i_reg_1330));
  FDRE \x_i_reg_133_reg[11] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\x_i_reg_133_reg[8]_i_1_n_4 ),
        .Q(x_i_reg_133_reg[11]),
        .R(x_i_reg_1330));
  FDRE \x_i_reg_133_reg[1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\x_i_reg_133_reg[0]_i_2_n_6 ),
        .Q(x_i_reg_133_reg[1]),
        .R(x_i_reg_1330));
  FDRE \x_i_reg_133_reg[2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\x_i_reg_133_reg[0]_i_2_n_5 ),
        .Q(x_i_reg_133_reg[2]),
        .R(x_i_reg_1330));
  FDRE \x_i_reg_133_reg[3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\x_i_reg_133_reg[0]_i_2_n_4 ),
        .Q(x_i_reg_133_reg[3]),
        .R(x_i_reg_1330));
  FDRE \x_i_reg_133_reg[4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\x_i_reg_133_reg[4]_i_1_n_7 ),
        .Q(x_i_reg_133_reg[4]),
        .R(x_i_reg_1330));
  CARRY4 \x_i_reg_133_reg[4]_i_1 
       (.CI(\x_i_reg_133_reg[0]_i_2_n_0 ),
        .CO({\x_i_reg_133_reg[4]_i_1_n_0 ,\x_i_reg_133_reg[4]_i_1_n_1 ,\x_i_reg_133_reg[4]_i_1_n_2 ,\x_i_reg_133_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_i_reg_133_reg[4]_i_1_n_4 ,\x_i_reg_133_reg[4]_i_1_n_5 ,\x_i_reg_133_reg[4]_i_1_n_6 ,\x_i_reg_133_reg[4]_i_1_n_7 }),
        .S(x_i_reg_133_reg[7:4]));
  FDRE \x_i_reg_133_reg[5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\x_i_reg_133_reg[4]_i_1_n_6 ),
        .Q(x_i_reg_133_reg[5]),
        .R(x_i_reg_1330));
  FDRE \x_i_reg_133_reg[6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\x_i_reg_133_reg[4]_i_1_n_5 ),
        .Q(x_i_reg_133_reg[6]),
        .R(x_i_reg_1330));
  FDRE \x_i_reg_133_reg[7] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\x_i_reg_133_reg[4]_i_1_n_4 ),
        .Q(x_i_reg_133_reg[7]),
        .R(x_i_reg_1330));
  FDRE \x_i_reg_133_reg[8] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\x_i_reg_133_reg[8]_i_1_n_7 ),
        .Q(x_i_reg_133_reg[8]),
        .R(x_i_reg_1330));
  CARRY4 \x_i_reg_133_reg[8]_i_1 
       (.CI(\x_i_reg_133_reg[4]_i_1_n_0 ),
        .CO({\NLW_x_i_reg_133_reg[8]_i_1_CO_UNCONNECTED [3],\x_i_reg_133_reg[8]_i_1_n_1 ,\x_i_reg_133_reg[8]_i_1_n_2 ,\x_i_reg_133_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_i_reg_133_reg[8]_i_1_n_4 ,\x_i_reg_133_reg[8]_i_1_n_5 ,\x_i_reg_133_reg[8]_i_1_n_6 ,\x_i_reg_133_reg[8]_i_1_n_7 }),
        .S(x_i_reg_133_reg[11:8]));
  FDRE \x_i_reg_133_reg[9] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(\x_i_reg_133_reg[8]_i_1_n_6 ),
        .Q(x_i_reg_133_reg[9]),
        .R(x_i_reg_1330));
  LUT3 #(
    .INIT(8'h2A)) 
    \y_i_reg_122[11]_i_1 
       (.I0(\mOutPtr_reg[0] ),
        .I1(Q[2]),
        .I2(\ap_CS_fsm_reg[2]_0 ),
        .O(y_i_reg_122_0));
  LUT2 #(
    .INIT(4'h8)) 
    \y_i_reg_122[11]_i_2 
       (.I0(\ap_CS_fsm_reg[2]_0 ),
        .I1(Q[2]),
        .O(ap_NS_fsm1));
  FDRE \y_i_reg_122_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_reg_187[0]),
        .Q(y_i_reg_122[0]),
        .R(y_i_reg_122_0));
  FDRE \y_i_reg_122_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_reg_187[10]),
        .Q(y_i_reg_122[10]),
        .R(y_i_reg_122_0));
  FDRE \y_i_reg_122_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_reg_187[11]),
        .Q(y_i_reg_122[11]),
        .R(y_i_reg_122_0));
  FDRE \y_i_reg_122_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_reg_187[1]),
        .Q(y_i_reg_122[1]),
        .R(y_i_reg_122_0));
  FDRE \y_i_reg_122_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_reg_187[2]),
        .Q(y_i_reg_122[2]),
        .R(y_i_reg_122_0));
  FDRE \y_i_reg_122_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_reg_187[3]),
        .Q(y_i_reg_122[3]),
        .R(y_i_reg_122_0));
  FDRE \y_i_reg_122_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_reg_187[4]),
        .Q(y_i_reg_122[4]),
        .R(y_i_reg_122_0));
  FDRE \y_i_reg_122_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_reg_187[5]),
        .Q(y_i_reg_122[5]),
        .R(y_i_reg_122_0));
  FDRE \y_i_reg_122_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_reg_187[6]),
        .Q(y_i_reg_122[6]),
        .R(y_i_reg_122_0));
  FDRE \y_i_reg_122_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_reg_187[7]),
        .Q(y_i_reg_122[7]),
        .R(y_i_reg_122_0));
  FDRE \y_i_reg_122_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_reg_187[8]),
        .Q(y_i_reg_122[8]),
        .R(y_i_reg_122_0));
  FDRE \y_i_reg_122_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(y_reg_187[9]),
        .Q(y_i_reg_122[9]),
        .R(y_i_reg_122_0));
  LUT1 #(
    .INIT(2'h1)) 
    \y_reg_187[0]_i_1 
       (.I0(y_i_reg_122[0]),
        .O(y_fu_157_p2[0]));
  FDRE \y_reg_187_reg[0] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(y_fu_157_p2[0]),
        .Q(y_reg_187[0]),
        .R(1'b0));
  FDRE \y_reg_187_reg[10] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(y_fu_157_p2[10]),
        .Q(y_reg_187[10]),
        .R(1'b0));
  FDRE \y_reg_187_reg[11] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(y_fu_157_p2[11]),
        .Q(y_reg_187[11]),
        .R(1'b0));
  CARRY4 \y_reg_187_reg[11]_i_1 
       (.CI(\y_reg_187_reg[8]_i_1_n_0 ),
        .CO({\NLW_y_reg_187_reg[11]_i_1_CO_UNCONNECTED [3:2],\y_reg_187_reg[11]_i_1_n_2 ,\y_reg_187_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_y_reg_187_reg[11]_i_1_O_UNCONNECTED [3],y_fu_157_p2[11:9]}),
        .S({1'b0,y_i_reg_122[11:9]}));
  FDRE \y_reg_187_reg[1] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(y_fu_157_p2[1]),
        .Q(y_reg_187[1]),
        .R(1'b0));
  FDRE \y_reg_187_reg[2] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(y_fu_157_p2[2]),
        .Q(y_reg_187[2]),
        .R(1'b0));
  FDRE \y_reg_187_reg[3] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(y_fu_157_p2[3]),
        .Q(y_reg_187[3]),
        .R(1'b0));
  FDRE \y_reg_187_reg[4] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(y_fu_157_p2[4]),
        .Q(y_reg_187[4]),
        .R(1'b0));
  CARRY4 \y_reg_187_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\y_reg_187_reg[4]_i_1_n_0 ,\y_reg_187_reg[4]_i_1_n_1 ,\y_reg_187_reg[4]_i_1_n_2 ,\y_reg_187_reg[4]_i_1_n_3 }),
        .CYINIT(y_i_reg_122[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y_fu_157_p2[4:1]),
        .S(y_i_reg_122[4:1]));
  FDRE \y_reg_187_reg[5] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(y_fu_157_p2[5]),
        .Q(y_reg_187[5]),
        .R(1'b0));
  FDRE \y_reg_187_reg[6] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(y_fu_157_p2[6]),
        .Q(y_reg_187[6]),
        .R(1'b0));
  FDRE \y_reg_187_reg[7] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(y_fu_157_p2[7]),
        .Q(y_reg_187[7]),
        .R(1'b0));
  FDRE \y_reg_187_reg[8] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(y_fu_157_p2[8]),
        .Q(y_reg_187[8]),
        .R(1'b0));
  CARRY4 \y_reg_187_reg[8]_i_1 
       (.CI(\y_reg_187_reg[4]_i_1_n_0 ),
        .CO({\y_reg_187_reg[8]_i_1_n_0 ,\y_reg_187_reg[8]_i_1_n_1 ,\y_reg_187_reg[8]_i_1_n_2 ,\y_reg_187_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y_fu_157_p2[8:5]),
        .S(y_i_reg_122[8:5]));
  FDRE \y_reg_187_reg[9] 
       (.C(ap_clk),
        .CE(Q[1]),
        .D(y_fu_157_p2[9]),
        .Q(y_reg_187[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "start_for_Mat2AXIcud" *) 
module img_cpy_0_start_for_Mat2AXIcud
   (start_for_Mat2AXIvideo_U0_full_n,
    Mat2AXIvideo_U0_ap_start,
    ap_clk,
    ap_rst_n,
    img_cpy_opr_U0_ap_start,
    start_once_reg_reg,
    \ap_CS_fsm_reg[1] ,
    ap_rst_n_inv);
  output start_for_Mat2AXIvideo_U0_full_n;
  output Mat2AXIvideo_U0_ap_start;
  input ap_clk;
  input ap_rst_n;
  input img_cpy_opr_U0_ap_start;
  input start_once_reg_reg;
  input \ap_CS_fsm_reg[1] ;
  input ap_rst_n_inv;

  wire Mat2AXIvideo_U0_ap_start;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire img_cpy_opr_U0_ap_start;
  wire internal_empty_n_i_1__5_n_0;
  wire internal_full_n_i_1__5_n_0;
  wire internal_full_n_i_2__0_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr[1]_i_2__1_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire start_for_Mat2AXIvideo_U0_full_n;
  wire start_once_reg_reg;

  LUT6 #(
    .INIT(64'h8888CCCC88808888)) 
    internal_empty_n_i_1__5
       (.I0(Mat2AXIvideo_U0_ap_start),
        .I1(ap_rst_n),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .I4(\mOutPtr[1]_i_2__1_n_0 ),
        .I5(internal_full_n_i_2__0_n_0),
        .O(internal_empty_n_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__5_n_0),
        .Q(Mat2AXIvideo_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__5
       (.I0(ap_rst_n),
        .I1(start_for_Mat2AXIvideo_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .I4(internal_full_n_i_2__0_n_0),
        .I5(\mOutPtr[1]_i_2__1_n_0 ),
        .O(internal_full_n_i_1__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    internal_full_n_i_2__0
       (.I0(start_for_Mat2AXIvideo_U0_full_n),
        .I1(img_cpy_opr_U0_ap_start),
        .I2(start_once_reg_reg),
        .O(internal_full_n_i_2__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__5_n_0),
        .Q(start_for_Mat2AXIvideo_U0_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h5595AA6A)) 
    \mOutPtr[0]_i_1 
       (.I0(\mOutPtr[1]_i_2__1_n_0 ),
        .I1(start_for_Mat2AXIvideo_U0_full_n),
        .I2(img_cpy_opr_U0_ap_start),
        .I3(start_once_reg_reg),
        .I4(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAADFFF45552000)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(start_once_reg_reg),
        .I2(img_cpy_opr_U0_ap_start),
        .I3(start_for_Mat2AXIvideo_U0_full_n),
        .I4(\mOutPtr[1]_i_2__1_n_0 ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mOutPtr[1]_i_2__1 
       (.I0(Mat2AXIvideo_U0_ap_start),
        .I1(\ap_CS_fsm_reg[1] ),
        .O(\mOutPtr[1]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "start_for_img_cpybkb" *) 
module img_cpy_0_start_for_img_cpybkb
   (start_for_img_cpy_opr_U0_full_n,
    img_cpy_opr_U0_ap_start,
    ap_idle,
    ap_clk,
    \ap_CS_fsm_reg[1] ,
    ap_rst_n,
    internal_empty_n_reg_0,
    ap_start,
    start_once_reg,
    start_once_reg_reg,
    start_for_Mat2AXIvideo_U0_full_n,
    Q,
    CO,
    start_once_reg_reg_0,
    ap_rst_n_inv);
  output start_for_img_cpy_opr_U0_full_n;
  output img_cpy_opr_U0_ap_start;
  output ap_idle;
  input ap_clk;
  input \ap_CS_fsm_reg[1] ;
  input ap_rst_n;
  input internal_empty_n_reg_0;
  input ap_start;
  input start_once_reg;
  input start_once_reg_reg;
  input start_for_Mat2AXIvideo_U0_full_n;
  input [0:0]Q;
  input [0:0]CO;
  input start_once_reg_reg_0;
  input ap_rst_n_inv;

  wire [0:0]CO;
  wire [0:0]Q;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire img_cpy_opr_U0_ap_start;
  wire internal_empty_n_i_1_n_0;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1_n_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr[1]_i_2_n_0 ;
  wire \mOutPtr_reg_n_0_[0] ;
  wire \mOutPtr_reg_n_0_[1] ;
  wire start_for_Mat2AXIvideo_U0_full_n;
  wire start_for_img_cpy_opr_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_reg;
  wire start_once_reg_reg_0;

  LUT3 #(
    .INIT(8'hA8)) 
    ap_idle_INST_0_i_3
       (.I0(img_cpy_opr_U0_ap_start),
        .I1(start_once_reg_reg),
        .I2(start_for_Mat2AXIvideo_U0_full_n),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'hFFEFFF0000000000)) 
    internal_empty_n_i_1
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(\mOutPtr_reg_n_0_[1] ),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(\mOutPtr[1]_i_2_n_0 ),
        .I4(img_cpy_opr_U0_ap_start),
        .I5(ap_rst_n),
        .O(internal_empty_n_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1_n_0),
        .Q(img_cpy_opr_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1
       (.I0(ap_rst_n),
        .I1(start_for_img_cpy_opr_U0_full_n),
        .I2(\mOutPtr_reg_n_0_[0] ),
        .I3(\mOutPtr_reg_n_0_[1] ),
        .I4(\mOutPtr[1]_i_2_n_0 ),
        .I5(internal_empty_n_reg_0),
        .O(internal_full_n_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1_n_0),
        .Q(start_for_img_cpy_opr_U0_full_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1EEEEEEEE1111111)) 
    \mOutPtr[0]_i_1 
       (.I0(start_once_reg),
        .I1(start_once_reg_reg_0),
        .I2(img_cpy_opr_U0_ap_start),
        .I3(CO),
        .I4(Q),
        .I5(\mOutPtr_reg_n_0_[0] ),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD555BFFF2AAA4000)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg_n_0_[0] ),
        .I1(Q),
        .I2(CO),
        .I3(img_cpy_opr_U0_ap_start),
        .I4(\mOutPtr[1]_i_2_n_0 ),
        .I5(\mOutPtr_reg_n_0_[1] ),
        .O(\mOutPtr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \mOutPtr[1]_i_2 
       (.I0(ap_start),
        .I1(start_for_img_cpy_opr_U0_full_n),
        .I2(start_once_reg),
        .O(\mOutPtr[1]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(\mOutPtr_reg_n_0_[1] ),
        .S(ap_rst_n_inv));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
