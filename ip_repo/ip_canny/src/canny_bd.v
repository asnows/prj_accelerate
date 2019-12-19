//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Mon Aug 26 15:03:59 2019
//Host        : VT2OB6D7ZB52FZ0 running 64-bit major release  (build 9200)
//Command     : generate_target canny_bd.bd
//Design      : canny_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "canny_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=canny_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "canny_bd.hwdef" *) 
module canny_bd
   (canny_NonMaxSupp_en,
    canny_maxVal,
    canny_minVal,
    img_edge_cut_en,
    m_axis_0_tdata,
    m_axis_0_tkeep,
    m_axis_0_tlast,
    m_axis_0_tuser,
    m_axis_0_tvalid,
    s_axis_0_tdata,
    s_axis_0_tlast,
    s_axis_0_tready,
    s_axis_0_tuser,
    s_axis_0_tvalid,
    s_axis_aclk_0,
    sobel_edge_selelct);
  input canny_NonMaxSupp_en;
  input [7:0]canny_maxVal;
  input [7:0]canny_minVal;
  input img_edge_cut_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 0, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) output [7:0]m_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 TKEEP" *) output [0:0]m_axis_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 TLAST" *) output m_axis_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 TUSER" *) output m_axis_0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 TVALID" *) output m_axis_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_0, CLK_DOMAIN canny_bd_s_axis_aclk_0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [7:0]s_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TLAST" *) input s_axis_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TREADY" *) output s_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TUSER" *) input s_axis_0_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TVALID" *) input s_axis_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXIS_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXIS_ACLK_0, ASSOCIATED_BUSIF s_axis_0, CLK_DOMAIN canny_bd_s_axis_aclk_0, FREQ_HZ 100000000, PHASE 0.000" *) input s_axis_aclk_0;
  input sobel_edge_selelct;

  wire [7:0]canny_HystThreshold_0_m_axis_TDATA;
  wire canny_HystThreshold_0_m_axis_TLAST;
  wire canny_HystThreshold_0_m_axis_TUSER;
  wire canny_HystThreshold_0_m_axis_TVALID;
  wire [1:0]canny_NonMaxSupp_0_m_axis_TDATA;
  wire canny_NonMaxSupp_0_m_axis_TLAST;
  wire canny_NonMaxSupp_0_m_axis_TUSER;
  wire canny_NonMaxSupp_0_m_axis_TVALID;
  wire edge_selelct_0_1;
  wire enable_0_1;
  wire enable_0_2;
  wire [7:0]img_edge_cut_0_m_axis_TDATA;
  wire [0:0]img_edge_cut_0_m_axis_TKEEP;
  wire img_edge_cut_0_m_axis_TLAST;
  wire img_edge_cut_0_m_axis_TUSER;
  wire img_edge_cut_0_m_axis_TVALID;
  wire [7:0]maxVal_0_1;
  wire [1:0]maxtri3x3_CannyNMS_0_m_axis_line_buff_0_TDATA;
  wire maxtri3x3_CannyNMS_0_m_axis_line_buff_0_TLAST;
  wire maxtri3x3_CannyNMS_0_m_axis_line_buff_0_TUSER;
  wire maxtri3x3_CannyNMS_0_m_axis_line_buff_0_TVALID;
  wire [1:0]maxtri3x3_CannyNMS_0_m_axis_line_buff_1_TDATA;
  wire maxtri3x3_CannyNMS_0_m_axis_line_buff_1_TLAST;
  wire maxtri3x3_CannyNMS_0_m_axis_line_buff_1_TUSER;
  wire maxtri3x3_CannyNMS_0_m_axis_line_buff_1_TVALID;
  wire [1:0]maxtri3x3_CannyNMS_0_m_axis_line_buff_2_TDATA;
  wire maxtri3x3_CannyNMS_0_m_axis_line_buff_2_TLAST;
  wire maxtri3x3_CannyNMS_0_m_axis_line_buff_2_TUSER;
  wire maxtri3x3_CannyNMS_0_m_axis_line_buff_2_TVALID;
  wire [12:0]maxtri3x3_SobelDir_0_m_axis_line_buff_0_TDATA;
  wire maxtri3x3_SobelDir_0_m_axis_line_buff_0_TLAST;
  wire maxtri3x3_SobelDir_0_m_axis_line_buff_0_TUSER;
  wire maxtri3x3_SobelDir_0_m_axis_line_buff_0_TVALID;
  wire [12:0]maxtri3x3_SobelDir_0_m_axis_line_buff_1_TDATA;
  wire maxtri3x3_SobelDir_0_m_axis_line_buff_1_TLAST;
  wire maxtri3x3_SobelDir_0_m_axis_line_buff_1_TUSER;
  wire maxtri3x3_SobelDir_0_m_axis_line_buff_1_TVALID;
  wire [12:0]maxtri3x3_SobelDir_0_m_axis_line_buff_2_TDATA;
  wire maxtri3x3_SobelDir_0_m_axis_line_buff_2_TLAST;
  wire maxtri3x3_SobelDir_0_m_axis_line_buff_2_TUSER;
  wire maxtri3x3_SobelDir_0_m_axis_line_buff_2_TVALID;
  wire [7:0]maxtri3x3_shift_0_m_axis_line_buff_0_TDATA;
  wire maxtri3x3_shift_0_m_axis_line_buff_0_TLAST;
  wire maxtri3x3_shift_0_m_axis_line_buff_0_TUSER;
  wire maxtri3x3_shift_0_m_axis_line_buff_0_TVALID;
  wire [7:0]maxtri3x3_shift_0_m_axis_line_buff_1_TDATA;
  wire maxtri3x3_shift_0_m_axis_line_buff_1_TLAST;
  wire maxtri3x3_shift_0_m_axis_line_buff_1_TUSER;
  wire maxtri3x3_shift_0_m_axis_line_buff_1_TVALID;
  wire [7:0]maxtri3x3_shift_0_m_axis_line_buff_2_TDATA;
  wire maxtri3x3_shift_0_m_axis_line_buff_2_TLAST;
  wire maxtri3x3_shift_0_m_axis_line_buff_2_TUSER;
  wire maxtri3x3_shift_0_m_axis_line_buff_2_TVALID;
  wire [7:0]minVal_0_1;
  wire [7:0]s_axis_0_1_TDATA;
  wire s_axis_0_1_TLAST;
  wire s_axis_0_1_TREADY;
  wire s_axis_0_1_TUSER;
  wire s_axis_0_1_TVALID;
  wire s_axis_aclk_0_1;
  wire [12:0]sobel3x3_algorithm_0_m_axis_dir_GxGy_TDATA;
  wire sobel3x3_algorithm_0_m_axis_dir_GxGy_TLAST;
  wire sobel3x3_algorithm_0_m_axis_dir_GxGy_TUSER;
  wire sobel3x3_algorithm_0_m_axis_dir_GxGy_TVALID;

  assign edge_selelct_0_1 = sobel_edge_selelct;
  assign enable_0_1 = canny_NonMaxSupp_en;
  assign enable_0_2 = img_edge_cut_en;
  assign m_axis_0_tdata[7:0] = img_edge_cut_0_m_axis_TDATA;
  assign m_axis_0_tkeep[0] = img_edge_cut_0_m_axis_TKEEP;
  assign m_axis_0_tlast = img_edge_cut_0_m_axis_TLAST;
  assign m_axis_0_tuser = img_edge_cut_0_m_axis_TUSER;
  assign m_axis_0_tvalid = img_edge_cut_0_m_axis_TVALID;
  assign maxVal_0_1 = canny_maxVal[7:0];
  assign minVal_0_1 = canny_minVal[7:0];
  assign s_axis_0_1_TDATA = s_axis_0_tdata[7:0];
  assign s_axis_0_1_TLAST = s_axis_0_tlast;
  assign s_axis_0_1_TUSER = s_axis_0_tuser;
  assign s_axis_0_1_TVALID = s_axis_0_tvalid;
  assign s_axis_0_tready = s_axis_0_1_TREADY;
  assign s_axis_aclk_0_1 = s_axis_aclk_0;
  canny_bd_canny_HystThreshold_0_0 canny_HystThreshold_0
       (.m_axis_tdata(canny_HystThreshold_0_m_axis_TDATA),
        .m_axis_tlast(canny_HystThreshold_0_m_axis_TLAST),
        .m_axis_tuser(canny_HystThreshold_0_m_axis_TUSER),
        .m_axis_tvalid(canny_HystThreshold_0_m_axis_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_matrix0_tdata(maxtri3x3_CannyNMS_0_m_axis_line_buff_0_TDATA),
        .s_axis_matrix0_tlast(maxtri3x3_CannyNMS_0_m_axis_line_buff_0_TLAST),
        .s_axis_matrix0_tuser(maxtri3x3_CannyNMS_0_m_axis_line_buff_0_TUSER),
        .s_axis_matrix0_tvalid(maxtri3x3_CannyNMS_0_m_axis_line_buff_0_TVALID),
        .s_axis_matrix1_tdata(maxtri3x3_CannyNMS_0_m_axis_line_buff_1_TDATA),
        .s_axis_matrix1_tlast(maxtri3x3_CannyNMS_0_m_axis_line_buff_1_TLAST),
        .s_axis_matrix1_tuser(maxtri3x3_CannyNMS_0_m_axis_line_buff_1_TUSER),
        .s_axis_matrix1_tvalid(maxtri3x3_CannyNMS_0_m_axis_line_buff_1_TVALID),
        .s_axis_matrix2_tdata(maxtri3x3_CannyNMS_0_m_axis_line_buff_2_TDATA),
        .s_axis_matrix2_tlast(maxtri3x3_CannyNMS_0_m_axis_line_buff_2_TLAST),
        .s_axis_matrix2_tuser(maxtri3x3_CannyNMS_0_m_axis_line_buff_2_TUSER),
        .s_axis_matrix2_tvalid(maxtri3x3_CannyNMS_0_m_axis_line_buff_2_TVALID));
  canny_bd_canny_NonMaxSupp_0_0 canny_NonMaxSupp_0
       (.enable(enable_0_1),
        .m_axis_tdata(canny_NonMaxSupp_0_m_axis_TDATA),
        .m_axis_tlast(canny_NonMaxSupp_0_m_axis_TLAST),
        .m_axis_tuser(canny_NonMaxSupp_0_m_axis_TUSER),
        .m_axis_tvalid(canny_NonMaxSupp_0_m_axis_TVALID),
        .maxVal(maxVal_0_1),
        .minVal(minVal_0_1),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_matrix0_tdata(maxtri3x3_SobelDir_0_m_axis_line_buff_0_TDATA),
        .s_axis_matrix0_tlast(maxtri3x3_SobelDir_0_m_axis_line_buff_0_TLAST),
        .s_axis_matrix0_tuser(maxtri3x3_SobelDir_0_m_axis_line_buff_0_TUSER),
        .s_axis_matrix0_tvalid(maxtri3x3_SobelDir_0_m_axis_line_buff_0_TVALID),
        .s_axis_matrix1_tdata(maxtri3x3_SobelDir_0_m_axis_line_buff_1_TDATA),
        .s_axis_matrix1_tlast(maxtri3x3_SobelDir_0_m_axis_line_buff_1_TLAST),
        .s_axis_matrix1_tuser(maxtri3x3_SobelDir_0_m_axis_line_buff_1_TUSER),
        .s_axis_matrix1_tvalid(maxtri3x3_SobelDir_0_m_axis_line_buff_1_TVALID),
        .s_axis_matrix2_tdata(maxtri3x3_SobelDir_0_m_axis_line_buff_2_TDATA),
        .s_axis_matrix2_tlast(maxtri3x3_SobelDir_0_m_axis_line_buff_2_TLAST),
        .s_axis_matrix2_tuser(maxtri3x3_SobelDir_0_m_axis_line_buff_2_TUSER),
        .s_axis_matrix2_tvalid(maxtri3x3_SobelDir_0_m_axis_line_buff_2_TVALID));
  canny_bd_img_edge_cut_0_0 img_edge_cut_0
       (.enable(enable_0_2),
        .m_axis_tdata(img_edge_cut_0_m_axis_TDATA),
        .m_axis_tkeep(img_edge_cut_0_m_axis_TKEEP),
        .m_axis_tlast(img_edge_cut_0_m_axis_TLAST),
        .m_axis_tuser(img_edge_cut_0_m_axis_TUSER),
        .m_axis_tvalid(img_edge_cut_0_m_axis_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_tdata(canny_HystThreshold_0_m_axis_TDATA),
        .s_axis_tlast(canny_HystThreshold_0_m_axis_TLAST),
        .s_axis_tuser(canny_HystThreshold_0_m_axis_TUSER),
        .s_axis_tvalid(canny_HystThreshold_0_m_axis_TVALID));
  canny_bd_maxtri3x3_CannyNMS_0_0 maxtri3x3_CannyNMS_0
       (.m_axis_line_buff_0_tdata(maxtri3x3_CannyNMS_0_m_axis_line_buff_0_TDATA),
        .m_axis_line_buff_0_tlast(maxtri3x3_CannyNMS_0_m_axis_line_buff_0_TLAST),
        .m_axis_line_buff_0_tuser(maxtri3x3_CannyNMS_0_m_axis_line_buff_0_TUSER),
        .m_axis_line_buff_0_tvalid(maxtri3x3_CannyNMS_0_m_axis_line_buff_0_TVALID),
        .m_axis_line_buff_1_tdata(maxtri3x3_CannyNMS_0_m_axis_line_buff_1_TDATA),
        .m_axis_line_buff_1_tlast(maxtri3x3_CannyNMS_0_m_axis_line_buff_1_TLAST),
        .m_axis_line_buff_1_tuser(maxtri3x3_CannyNMS_0_m_axis_line_buff_1_TUSER),
        .m_axis_line_buff_1_tvalid(maxtri3x3_CannyNMS_0_m_axis_line_buff_1_TVALID),
        .m_axis_line_buff_2_tdata(maxtri3x3_CannyNMS_0_m_axis_line_buff_2_TDATA),
        .m_axis_line_buff_2_tlast(maxtri3x3_CannyNMS_0_m_axis_line_buff_2_TLAST),
        .m_axis_line_buff_2_tuser(maxtri3x3_CannyNMS_0_m_axis_line_buff_2_TUSER),
        .m_axis_line_buff_2_tvalid(maxtri3x3_CannyNMS_0_m_axis_line_buff_2_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_tdata(canny_NonMaxSupp_0_m_axis_TDATA),
        .s_axis_tlast(canny_NonMaxSupp_0_m_axis_TLAST),
        .s_axis_tuser(canny_NonMaxSupp_0_m_axis_TUSER),
        .s_axis_tvalid(canny_NonMaxSupp_0_m_axis_TVALID));
  canny_bd_maxtri3x3_SobelDir_0_0 maxtri3x3_SobelDir_0
       (.m_axis_line_buff_0_tdata(maxtri3x3_SobelDir_0_m_axis_line_buff_0_TDATA),
        .m_axis_line_buff_0_tlast(maxtri3x3_SobelDir_0_m_axis_line_buff_0_TLAST),
        .m_axis_line_buff_0_tuser(maxtri3x3_SobelDir_0_m_axis_line_buff_0_TUSER),
        .m_axis_line_buff_0_tvalid(maxtri3x3_SobelDir_0_m_axis_line_buff_0_TVALID),
        .m_axis_line_buff_1_tdata(maxtri3x3_SobelDir_0_m_axis_line_buff_1_TDATA),
        .m_axis_line_buff_1_tlast(maxtri3x3_SobelDir_0_m_axis_line_buff_1_TLAST),
        .m_axis_line_buff_1_tuser(maxtri3x3_SobelDir_0_m_axis_line_buff_1_TUSER),
        .m_axis_line_buff_1_tvalid(maxtri3x3_SobelDir_0_m_axis_line_buff_1_TVALID),
        .m_axis_line_buff_2_tdata(maxtri3x3_SobelDir_0_m_axis_line_buff_2_TDATA),
        .m_axis_line_buff_2_tlast(maxtri3x3_SobelDir_0_m_axis_line_buff_2_TLAST),
        .m_axis_line_buff_2_tuser(maxtri3x3_SobelDir_0_m_axis_line_buff_2_TUSER),
        .m_axis_line_buff_2_tvalid(maxtri3x3_SobelDir_0_m_axis_line_buff_2_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_tdata(sobel3x3_algorithm_0_m_axis_dir_GxGy_TDATA),
        .s_axis_tlast(sobel3x3_algorithm_0_m_axis_dir_GxGy_TLAST),
        .s_axis_tuser(sobel3x3_algorithm_0_m_axis_dir_GxGy_TUSER),
        .s_axis_tvalid(sobel3x3_algorithm_0_m_axis_dir_GxGy_TVALID));
  canny_bd_maxtri3x3_shift_0_0 maxtri3x3_shift_0
       (.m_axis_line_buff_0_tdata(maxtri3x3_shift_0_m_axis_line_buff_0_TDATA),
        .m_axis_line_buff_0_tlast(maxtri3x3_shift_0_m_axis_line_buff_0_TLAST),
        .m_axis_line_buff_0_tuser(maxtri3x3_shift_0_m_axis_line_buff_0_TUSER),
        .m_axis_line_buff_0_tvalid(maxtri3x3_shift_0_m_axis_line_buff_0_TVALID),
        .m_axis_line_buff_1_tdata(maxtri3x3_shift_0_m_axis_line_buff_1_TDATA),
        .m_axis_line_buff_1_tlast(maxtri3x3_shift_0_m_axis_line_buff_1_TLAST),
        .m_axis_line_buff_1_tuser(maxtri3x3_shift_0_m_axis_line_buff_1_TUSER),
        .m_axis_line_buff_1_tvalid(maxtri3x3_shift_0_m_axis_line_buff_1_TVALID),
        .m_axis_line_buff_2_tdata(maxtri3x3_shift_0_m_axis_line_buff_2_TDATA),
        .m_axis_line_buff_2_tlast(maxtri3x3_shift_0_m_axis_line_buff_2_TLAST),
        .m_axis_line_buff_2_tuser(maxtri3x3_shift_0_m_axis_line_buff_2_TUSER),
        .m_axis_line_buff_2_tvalid(maxtri3x3_shift_0_m_axis_line_buff_2_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_tdata(s_axis_0_1_TDATA),
        .s_axis_tlast(s_axis_0_1_TLAST),
        .s_axis_tready(s_axis_0_1_TREADY),
        .s_axis_tuser(s_axis_0_1_TUSER),
        .s_axis_tvalid(s_axis_0_1_TVALID));
  canny_bd_sobel3x3_algorithm_0_0 sobel3x3_algorithm_0
       (.edge_selelct(edge_selelct_0_1),
        .m_axis_dir_GxGy_tdata(sobel3x3_algorithm_0_m_axis_dir_GxGy_TDATA),
        .m_axis_dir_GxGy_tlast(sobel3x3_algorithm_0_m_axis_dir_GxGy_TLAST),
        .m_axis_dir_GxGy_tuser(sobel3x3_algorithm_0_m_axis_dir_GxGy_TUSER),
        .m_axis_dir_GxGy_tvalid(sobel3x3_algorithm_0_m_axis_dir_GxGy_TVALID),
        .s_axis_aclk(s_axis_aclk_0_1),
        .s_axis_matrix0_tdata(maxtri3x3_shift_0_m_axis_line_buff_0_TDATA),
        .s_axis_matrix0_tlast(maxtri3x3_shift_0_m_axis_line_buff_0_TLAST),
        .s_axis_matrix0_tuser(maxtri3x3_shift_0_m_axis_line_buff_0_TUSER),
        .s_axis_matrix0_tvalid(maxtri3x3_shift_0_m_axis_line_buff_0_TVALID),
        .s_axis_matrix1_tdata(maxtri3x3_shift_0_m_axis_line_buff_1_TDATA),
        .s_axis_matrix1_tlast(maxtri3x3_shift_0_m_axis_line_buff_1_TLAST),
        .s_axis_matrix1_tuser(maxtri3x3_shift_0_m_axis_line_buff_1_TUSER),
        .s_axis_matrix1_tvalid(maxtri3x3_shift_0_m_axis_line_buff_1_TVALID),
        .s_axis_matrix2_tdata(maxtri3x3_shift_0_m_axis_line_buff_2_TDATA),
        .s_axis_matrix2_tlast(maxtri3x3_shift_0_m_axis_line_buff_2_TLAST),
        .s_axis_matrix2_tuser(maxtri3x3_shift_0_m_axis_line_buff_2_TUSER),
        .s_axis_matrix2_tvalid(maxtri3x3_shift_0_m_axis_line_buff_2_TVALID));
endmodule
