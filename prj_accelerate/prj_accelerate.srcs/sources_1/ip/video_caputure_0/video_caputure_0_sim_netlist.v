// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Aug  8 15:28:31 2019
// Host        : VT2OB6D7ZB52FZ0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/ip/video_caputure_0/video_caputure_0_sim_netlist.v
// Design      : video_caputure_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "video_caputure_0,video_caputure,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "video_caputure,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module video_caputure_0
   (vsync,
    s_axis_aclk,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tvalid,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    m_axis_tvalid,
    m_axis_tready);
  input vsync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, FREQ_HZ 100000000, PHASE 0.000" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [63:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [7:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [63:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) input m_axis_tready;

  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire s_axis_aclk;
  wire [63:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire vsync;

  assign m_axis_tdata[63:0] = s_axis_tdata;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  video_caputure_0_video_caputure inst
       (.m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tvalid(s_axis_tvalid),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "video_caputure" *) 
module video_caputure_0_video_caputure
   (m_axis_tuser,
    m_axis_tlast,
    s_axis_aclk,
    vsync,
    s_axis_tvalid,
    m_axis_tready);
  output m_axis_tuser;
  output m_axis_tlast;
  input s_axis_aclk;
  input vsync;
  input s_axis_tvalid;
  input m_axis_tready;

  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire [9:1]p_0_in;
  wire \row_pixels_count[0]_i_1_n_0 ;
  wire \row_pixels_count[9]_i_1_n_0 ;
  wire \row_pixels_count[9]_i_2_n_0 ;
  wire \row_pixels_count[9]_i_4_n_0 ;
  wire \row_pixels_count[9]_i_5_n_0 ;
  wire [9:0]row_pixels_count_reg__0;
  wire s_axis_aclk;
  wire s_axis_tvalid;
  wire tlast_tmp_i_1_n_0;
  wire tlast_tmp_i_2_n_0;
  wire tuser_tmp;
  wire tuser_tmp_i_1_n_0;
  wire vsync;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tuser_INST_0
       (.I0(tuser_tmp),
        .I1(s_axis_tvalid),
        .O(m_axis_tuser));
  LUT1 #(
    .INIT(2'h1)) 
    \row_pixels_count[0]_i_1 
       (.I0(row_pixels_count_reg__0[0]),
        .O(\row_pixels_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \row_pixels_count[1]_i_1 
       (.I0(row_pixels_count_reg__0[0]),
        .I1(row_pixels_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \row_pixels_count[2]_i_1 
       (.I0(row_pixels_count_reg__0[1]),
        .I1(row_pixels_count_reg__0[0]),
        .I2(row_pixels_count_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \row_pixels_count[3]_i_1 
       (.I0(row_pixels_count_reg__0[2]),
        .I1(row_pixels_count_reg__0[0]),
        .I2(row_pixels_count_reg__0[1]),
        .I3(row_pixels_count_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \row_pixels_count[4]_i_1 
       (.I0(row_pixels_count_reg__0[3]),
        .I1(row_pixels_count_reg__0[1]),
        .I2(row_pixels_count_reg__0[0]),
        .I3(row_pixels_count_reg__0[2]),
        .I4(row_pixels_count_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \row_pixels_count[5]_i_1 
       (.I0(row_pixels_count_reg__0[4]),
        .I1(row_pixels_count_reg__0[2]),
        .I2(row_pixels_count_reg__0[0]),
        .I3(row_pixels_count_reg__0[1]),
        .I4(row_pixels_count_reg__0[3]),
        .I5(row_pixels_count_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \row_pixels_count[6]_i_1 
       (.I0(\row_pixels_count[9]_i_5_n_0 ),
        .I1(row_pixels_count_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \row_pixels_count[7]_i_1 
       (.I0(row_pixels_count_reg__0[6]),
        .I1(\row_pixels_count[9]_i_5_n_0 ),
        .I2(row_pixels_count_reg__0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \row_pixels_count[8]_i_1 
       (.I0(row_pixels_count_reg__0[7]),
        .I1(\row_pixels_count[9]_i_5_n_0 ),
        .I2(row_pixels_count_reg__0[6]),
        .I3(row_pixels_count_reg__0[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAE000000)) 
    \row_pixels_count[9]_i_1 
       (.I0(\row_pixels_count[9]_i_4_n_0 ),
        .I1(row_pixels_count_reg__0[6]),
        .I2(\row_pixels_count[9]_i_5_n_0 ),
        .I3(\row_pixels_count[9]_i_2_n_0 ),
        .I4(row_pixels_count_reg__0[9]),
        .I5(vsync),
        .O(\row_pixels_count[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixels_count[9]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .O(\row_pixels_count[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \row_pixels_count[9]_i_3 
       (.I0(row_pixels_count_reg__0[8]),
        .I1(row_pixels_count_reg__0[6]),
        .I2(\row_pixels_count[9]_i_5_n_0 ),
        .I3(row_pixels_count_reg__0[7]),
        .I4(row_pixels_count_reg__0[9]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \row_pixels_count[9]_i_4 
       (.I0(row_pixels_count_reg__0[7]),
        .I1(row_pixels_count_reg__0[8]),
        .O(\row_pixels_count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \row_pixels_count[9]_i_5 
       (.I0(row_pixels_count_reg__0[4]),
        .I1(row_pixels_count_reg__0[2]),
        .I2(row_pixels_count_reg__0[0]),
        .I3(row_pixels_count_reg__0[1]),
        .I4(row_pixels_count_reg__0[3]),
        .I5(row_pixels_count_reg__0[5]),
        .O(\row_pixels_count[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_pixels_count_reg[0] 
       (.C(s_axis_aclk),
        .CE(\row_pixels_count[9]_i_2_n_0 ),
        .D(\row_pixels_count[0]_i_1_n_0 ),
        .Q(row_pixels_count_reg__0[0]),
        .R(\row_pixels_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_pixels_count_reg[1] 
       (.C(s_axis_aclk),
        .CE(\row_pixels_count[9]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(row_pixels_count_reg__0[1]),
        .R(\row_pixels_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_pixels_count_reg[2] 
       (.C(s_axis_aclk),
        .CE(\row_pixels_count[9]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(row_pixels_count_reg__0[2]),
        .R(\row_pixels_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_pixels_count_reg[3] 
       (.C(s_axis_aclk),
        .CE(\row_pixels_count[9]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(row_pixels_count_reg__0[3]),
        .R(\row_pixels_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_pixels_count_reg[4] 
       (.C(s_axis_aclk),
        .CE(\row_pixels_count[9]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(row_pixels_count_reg__0[4]),
        .R(\row_pixels_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_pixels_count_reg[5] 
       (.C(s_axis_aclk),
        .CE(\row_pixels_count[9]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(row_pixels_count_reg__0[5]),
        .R(\row_pixels_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_pixels_count_reg[6] 
       (.C(s_axis_aclk),
        .CE(\row_pixels_count[9]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(row_pixels_count_reg__0[6]),
        .R(\row_pixels_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_pixels_count_reg[7] 
       (.C(s_axis_aclk),
        .CE(\row_pixels_count[9]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(row_pixels_count_reg__0[7]),
        .R(\row_pixels_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_pixels_count_reg[8] 
       (.C(s_axis_aclk),
        .CE(\row_pixels_count[9]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(row_pixels_count_reg__0[8]),
        .R(\row_pixels_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_pixels_count_reg[9] 
       (.C(s_axis_aclk),
        .CE(\row_pixels_count[9]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(row_pixels_count_reg__0[9]),
        .R(\row_pixels_count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    tlast_tmp_i_1
       (.I0(row_pixels_count_reg__0[7]),
        .I1(row_pixels_count_reg__0[8]),
        .I2(row_pixels_count_reg__0[1]),
        .I3(row_pixels_count_reg__0[0]),
        .I4(tlast_tmp_i_2_n_0),
        .O(tlast_tmp_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    tlast_tmp_i_2
       (.I0(row_pixels_count_reg__0[4]),
        .I1(row_pixels_count_reg__0[5]),
        .I2(row_pixels_count_reg__0[2]),
        .I3(row_pixels_count_reg__0[3]),
        .I4(row_pixels_count_reg__0[9]),
        .I5(row_pixels_count_reg__0[6]),
        .O(tlast_tmp_i_2_n_0));
  FDRE tlast_tmp_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(tlast_tmp_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    tuser_tmp_i_1
       (.I0(s_axis_tvalid),
        .I1(tuser_tmp),
        .I2(vsync),
        .O(tuser_tmp_i_1_n_0));
  FDRE tuser_tmp_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(tuser_tmp_i_1_n_0),
        .Q(tuser_tmp),
        .R(1'b0));
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
