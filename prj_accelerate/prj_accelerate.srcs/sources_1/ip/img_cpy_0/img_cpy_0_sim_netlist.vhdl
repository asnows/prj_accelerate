-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Aug  3 08:44:04 2019
-- Host        : VT2OB6D7ZB52FZ0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/ip/img_cpy_0/img_cpy_0_sim_netlist.vhdl
-- Design      : img_cpy_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_AXIvideo2Mat is
  port (
    start_once_reg : out STD_LOGIC;
    ap_rst_n_inv : out STD_LOGIC;
    \SRL_SIG_reg[1][0]\ : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    \mOutPtr_reg[0]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_ready : out STD_LOGIC;
    video_in_TREADY : out STD_LOGIC;
    \SRL_SIG_reg[0][7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    video_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_start : in STD_LOGIC;
    \ap_CS_fsm_reg[0]_0\ : in STD_LOGIC;
    internal_empty_n_reg : in STD_LOGIC;
    video_in_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TVALID : in STD_LOGIC;
    srcImg_rows_V_c_full_n : in STD_LOGIC;
    srcImg_cols_V_c_full_n : in STD_LOGIC;
    srcImg_rows_V_c_empty_n : in STD_LOGIC;
    srcImg_cols_V_c7_full_n : in STD_LOGIC;
    srcImg_rows_V_c6_full_n : in STD_LOGIC;
    srcImg_cols_V_c_empty_n : in STD_LOGIC;
    start_for_img_cpy_opr_U0_full_n : in STD_LOGIC;
    video_in_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    srcImg_data_stream_0_full_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_AXIvideo2Mat : entity is "AXIvideo2Mat";
end img_cpy_0_AXIvideo2Mat;

architecture STRUCTURE of img_cpy_0_AXIvideo2Mat is
  signal \^srl_sig_reg[1][0]\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_3_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[5]_i_1_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp1_stage0 : STD_LOGIC;
  signal \^ap_cs_fsm_reg[1]_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_CS_fsm_state9 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ap_condition_184 : STD_LOGIC;
  signal ap_condition_pp1_exit_iter0_state5 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter0_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter1_reg_n_0 : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal axi_data_V1_i_reg_213 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_data_V1_i_reg_213[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V1_i_reg_213[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V1_i_reg_213[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V1_i_reg_213[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V1_i_reg_213[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V1_i_reg_213[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V1_i_reg_213[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V1_i_reg_213[7]_i_1_n_0\ : STD_LOGIC;
  signal axi_data_V_1_i_reg_245 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_data_V_1_i_reg_245[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V_1_i_reg_245[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V_1_i_reg_245[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V_1_i_reg_245[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V_1_i_reg_245[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V_1_i_reg_245[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V_1_i_reg_245[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V_1_i_reg_245[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_data_V_1_i_reg_245[7]_i_2_n_0\ : STD_LOGIC;
  signal axi_data_V_3_i_reg_316 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_last_V1_i_reg_203 : STD_LOGIC;
  signal \axi_last_V1_i_reg_203[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_last_V_2_i_reg_279[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_last_V_2_i_reg_279[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_last_V_2_i_reg_279_reg_n_0_[0]\ : STD_LOGIC;
  signal axi_last_V_3_i_reg_304 : STD_LOGIC;
  signal \axi_last_V_3_i_reg_304[0]_i_1_n_0\ : STD_LOGIC;
  signal eol_2_i_reg_328 : STD_LOGIC;
  signal \eol_2_i_reg_328[0]_i_2_n_0\ : STD_LOGIC;
  signal \eol_2_i_reg_328_reg_n_0_[0]\ : STD_LOGIC;
  signal \eol_i_reg_267[0]_i_1_n_0\ : STD_LOGIC;
  signal \eol_i_reg_267_reg_n_0_[0]\ : STD_LOGIC;
  signal eol_reg_234 : STD_LOGIC;
  signal \eol_reg_234[0]_i_1_n_0\ : STD_LOGIC;
  signal exitcond2_i_fu_365_p2 : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__0_n_0\ : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__0_n_1\ : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__0_n_2\ : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__0_n_3\ : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__1_n_2\ : STD_LOGIC;
  signal \exitcond2_i_fu_365_p2_carry__1_n_3\ : STD_LOGIC;
  signal exitcond2_i_fu_365_p2_carry_i_1_n_0 : STD_LOGIC;
  signal exitcond2_i_fu_365_p2_carry_i_2_n_0 : STD_LOGIC;
  signal exitcond2_i_fu_365_p2_carry_i_3_n_0 : STD_LOGIC;
  signal exitcond2_i_fu_365_p2_carry_i_4_n_0 : STD_LOGIC;
  signal exitcond2_i_fu_365_p2_carry_n_0 : STD_LOGIC;
  signal exitcond2_i_fu_365_p2_carry_n_1 : STD_LOGIC;
  signal exitcond2_i_fu_365_p2_carry_n_2 : STD_LOGIC;
  signal exitcond2_i_fu_365_p2_carry_n_3 : STD_LOGIC;
  signal \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \exitcond_i_fu_376_p2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \exitcond_i_fu_376_p2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \exitcond_i_fu_376_p2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \exitcond_i_fu_376_p2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \exitcond_i_fu_376_p2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \exitcond_i_fu_376_p2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \exitcond_i_reg_444[0]_i_1_n_0\ : STD_LOGIC;
  signal \exitcond_i_reg_444_reg_n_0_[0]\ : STD_LOGIC;
  signal i_V_fu_370_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i_V_reg_439 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i_V_reg_439_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_439_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_439_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_439_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_439_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_439_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_439_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_439_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_439_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_439_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_439_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_439_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_439_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_439_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_439_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_439_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_439_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_439_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_439_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_439_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_439_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_439_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_439_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_439_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_439_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_439_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \i_V_reg_439_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_V_reg_439_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \i_V_reg_439_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i_V_reg_439_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \^moutptr_reg[0]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in_0 : STD_LOGIC;
  signal p_Val2_s_reg_292 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_Val2_s_reg_292[0]_i_1_n_0\ : STD_LOGIC;
  signal \p_Val2_s_reg_292[1]_i_1_n_0\ : STD_LOGIC;
  signal \p_Val2_s_reg_292[2]_i_1_n_0\ : STD_LOGIC;
  signal \p_Val2_s_reg_292[3]_i_1_n_0\ : STD_LOGIC;
  signal \p_Val2_s_reg_292[4]_i_1_n_0\ : STD_LOGIC;
  signal \p_Val2_s_reg_292[5]_i_1_n_0\ : STD_LOGIC;
  signal \p_Val2_s_reg_292[6]_i_1_n_0\ : STD_LOGIC;
  signal \p_Val2_s_reg_292[7]_i_1_n_0\ : STD_LOGIC;
  signal \p_Val2_s_reg_292[7]_i_2_n_0\ : STD_LOGIC;
  signal sof_1_i_fu_146 : STD_LOGIC;
  signal sof_1_i_fu_1460 : STD_LOGIC;
  signal \sof_1_i_fu_146[0]_i_1_n_0\ : STD_LOGIC;
  signal \^start_once_reg\ : STD_LOGIC;
  signal start_once_reg_i_1_n_0 : STD_LOGIC;
  signal t_V_2_reg_256 : STD_LOGIC;
  signal \t_V_2_reg_256[0]_i_4_n_0\ : STD_LOGIC;
  signal t_V_2_reg_256_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \t_V_2_reg_256_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \t_V_2_reg_256_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal t_V_reg_223 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tmp_data_V_reg_415 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_data_V_reg_4150 : STD_LOGIC;
  signal tmp_fu_396_p1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_last_V_reg_423 : STD_LOGIC;
  signal \tmp_reg_457[7]_i_1_n_0\ : STD_LOGIC;
  signal video_in_TREADY_INST_0_i_1_n_0 : STD_LOGIC;
  signal video_in_TREADY_INST_0_i_3_n_0 : STD_LOGIC;
  signal video_in_TREADY_INST_0_i_4_n_0 : STD_LOGIC;
  signal NLW_exitcond2_i_fu_365_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_exitcond2_i_fu_365_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_exitcond2_i_fu_365_p2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_exitcond2_i_fu_365_p2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_exitcond_i_fu_376_p2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_exitcond_i_fu_376_p2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_exitcond_i_fu_376_p2_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_exitcond_i_fu_376_p2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i_V_reg_439_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_V_reg_439_reg[31]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_t_V_2_reg_256_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_1\ : label is "soft_lutpair10";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute SOFT_HLUTNM of ap_enable_reg_pp1_iter1_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ap_idle_INST_0_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_data_V1_i_reg_213[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_data_V1_i_reg_213[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_data_V1_i_reg_213[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \axi_data_V1_i_reg_213[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \axi_data_V1_i_reg_213[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_data_V1_i_reg_213[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_data_V1_i_reg_213[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axi_data_V_1_i_reg_245[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_data_V_1_i_reg_245[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_data_V_1_i_reg_245[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_data_V_1_i_reg_245[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_data_V_1_i_reg_245[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_data_V_1_i_reg_245[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_data_V_1_i_reg_245[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_data_V_1_i_reg_245[7]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_data_V_3_i_reg_316[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \axi_data_V_3_i_reg_316[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_data_V_3_i_reg_316[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \axi_data_V_3_i_reg_316[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_data_V_3_i_reg_316[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_data_V_3_i_reg_316[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_data_V_3_i_reg_316[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_data_V_3_i_reg_316[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_last_V1_i_reg_203[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axi_last_V_2_i_reg_279[0]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \axi_last_V_3_i_reg_304[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \eol_2_i_reg_328[0]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \eol_i_reg_267[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \exitcond_i_reg_444[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \p_Val2_s_reg_292[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of start_once_reg_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of video_in_TREADY_INST_0_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of video_in_TREADY_INST_0_i_4 : label is "soft_lutpair6";
begin
  \SRL_SIG_reg[1][0]\ <= \^srl_sig_reg[1][0]\;
  \ap_CS_fsm_reg[1]_0\ <= \^ap_cs_fsm_reg[1]_0\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  \mOutPtr_reg[0]\ <= \^moutptr_reg[0]\;
  start_once_reg <= \^start_once_reg\;
\SRL_SIG[0][7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222222222222"
    )
        port map (
      I0 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I1 => video_in_TREADY_INST_0_i_4_n_0,
      I2 => video_in_TVALID,
      I3 => ap_condition_pp1_exit_iter0_state5,
      I4 => ap_enable_reg_pp1_iter0,
      I5 => video_in_TREADY_INST_0_i_1_n_0,
      O => \^srl_sig_reg[1][0]\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => exitcond2_i_fu_365_p2,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => \ap_CS_fsm[0]_i_2_n_0\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \^moutptr_reg[0]\,
      I1 => srcImg_cols_V_c_empty_n,
      I2 => srcImg_rows_V_c6_full_n,
      I3 => srcImg_cols_V_c7_full_n,
      I4 => srcImg_rows_V_c_empty_n,
      O => \ap_CS_fsm[0]_i_2_n_0\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]_0\,
      I1 => video_in_TUSER(0),
      I2 => video_in_TVALID,
      I3 => ap_CS_fsm_state2,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => srcImg_rows_V_c_empty_n,
      I2 => srcImg_cols_V_c7_full_n,
      I3 => srcImg_rows_V_c6_full_n,
      I4 => srcImg_cols_V_c_empty_n,
      I5 => \^moutptr_reg[0]\,
      O => \^ap_cs_fsm_reg[1]_0\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => video_in_TUSER(0),
      I1 => video_in_TVALID,
      I2 => ap_CS_fsm_state2,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => ap_CS_fsm_state9,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFFFFF44444444"
    )
        port map (
      I0 => exitcond2_i_fu_365_p2,
      I1 => ap_CS_fsm_state4,
      I2 => ap_enable_reg_pp1_iter0,
      I3 => \ap_CS_fsm[4]_i_2_n_0\,
      I4 => ap_condition_pp1_exit_iter0_state5,
      I5 => ap_CS_fsm_pp1_stage0,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFF7FFF70000"
    )
        port map (
      I0 => video_in_TREADY_INST_0_i_1_n_0,
      I1 => ap_enable_reg_pp1_iter0,
      I2 => ap_condition_pp1_exit_iter0_state5,
      I3 => video_in_TVALID,
      I4 => \ap_CS_fsm[4]_i_3_n_0\,
      I5 => srcImg_data_stream_0_full_n,
      O => \ap_CS_fsm[4]_i_2_n_0\
    );
\ap_CS_fsm[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \exitcond_i_reg_444_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp1_iter1_reg_n_0,
      O => \ap_CS_fsm[4]_i_3_n_0\
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_condition_184,
      I1 => ap_condition_pp1_exit_iter0_state5,
      O => \ap_CS_fsm[5]_i_1_n_0\
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ap_CS_fsm_state7,
      I1 => \eol_2_i_reg_328_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state8,
      O => ap_NS_fsm(6)
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\ap_CS_fsm[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \eol_2_i_reg_328_reg_n_0_[0]\,
      I1 => ap_CS_fsm_state8,
      O => ap_NS_fsm(7)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => \^ap_rst_n_inv\
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => \^ap_rst_n_inv\
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => \^ap_rst_n_inv\
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => \^ap_rst_n_inv\
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_pp1_stage0,
      R => \^ap_rst_n_inv\
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[5]_i_1_n_0\,
      Q => ap_CS_fsm_state7,
      R => \^ap_rst_n_inv\
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => ap_CS_fsm_state8,
      R => \^ap_rst_n_inv\
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(7),
      Q => ap_CS_fsm_state9,
      R => \^ap_rst_n_inv\
    );
ap_enable_reg_pp1_iter0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F0000000000"
    )
        port map (
      I0 => ap_condition_pp1_exit_iter0_state5,
      I1 => ap_CS_fsm_pp1_stage0,
      I2 => \ap_CS_fsm[4]_i_2_n_0\,
      I3 => p_1_in_0,
      I4 => ap_enable_reg_pp1_iter0,
      I5 => ap_rst_n,
      O => ap_enable_reg_pp1_iter0_i_1_n_0
    );
ap_enable_reg_pp1_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp1_iter0_i_1_n_0,
      Q => ap_enable_reg_pp1_iter0,
      R => '0'
    );
ap_enable_reg_pp1_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C550C0000000000"
    )
        port map (
      I0 => p_1_in_0,
      I1 => ap_enable_reg_pp1_iter0,
      I2 => ap_condition_pp1_exit_iter0_state5,
      I3 => \ap_CS_fsm[4]_i_2_n_0\,
      I4 => ap_enable_reg_pp1_iter1_reg_n_0,
      I5 => ap_rst_n,
      O => ap_enable_reg_pp1_iter1_i_1_n_0
    );
ap_enable_reg_pp1_iter1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => exitcond2_i_fu_365_p2,
      O => p_1_in_0
    );
ap_enable_reg_pp1_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp1_iter1_i_1_n_0,
      Q => ap_enable_reg_pp1_iter1_reg_n_0,
      R => '0'
    );
ap_idle_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \^moutptr_reg[0]\,
      I5 => internal_empty_n_reg,
      O => ap_idle
    );
ap_idle_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^start_once_reg\,
      I1 => start_for_img_cpy_opr_U0_full_n,
      I2 => ap_start,
      O => \^moutptr_reg[0]\
    );
ap_ready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => exitcond2_i_fu_365_p2,
      I1 => ap_CS_fsm_state4,
      O => ap_ready
    );
\axi_data_V1_i_reg_213[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_415(0),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_i_reg_316(0),
      O => \axi_data_V1_i_reg_213[0]_i_1_n_0\
    );
\axi_data_V1_i_reg_213[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_415(1),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_i_reg_316(1),
      O => \axi_data_V1_i_reg_213[1]_i_1_n_0\
    );
\axi_data_V1_i_reg_213[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_415(2),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_i_reg_316(2),
      O => \axi_data_V1_i_reg_213[2]_i_1_n_0\
    );
\axi_data_V1_i_reg_213[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_415(3),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_i_reg_316(3),
      O => \axi_data_V1_i_reg_213[3]_i_1_n_0\
    );
\axi_data_V1_i_reg_213[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_415(4),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_i_reg_316(4),
      O => \axi_data_V1_i_reg_213[4]_i_1_n_0\
    );
\axi_data_V1_i_reg_213[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_415(5),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_i_reg_316(5),
      O => \axi_data_V1_i_reg_213[5]_i_1_n_0\
    );
\axi_data_V1_i_reg_213[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_415(6),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_i_reg_316(6),
      O => \axi_data_V1_i_reg_213[6]_i_1_n_0\
    );
\axi_data_V1_i_reg_213[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_415(7),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_i_reg_316(7),
      O => \axi_data_V1_i_reg_213[7]_i_1_n_0\
    );
\axi_data_V1_i_reg_213_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V1_i_reg_213[0]_i_1_n_0\,
      Q => axi_data_V1_i_reg_213(0),
      R => '0'
    );
\axi_data_V1_i_reg_213_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V1_i_reg_213[1]_i_1_n_0\,
      Q => axi_data_V1_i_reg_213(1),
      R => '0'
    );
\axi_data_V1_i_reg_213_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V1_i_reg_213[2]_i_1_n_0\,
      Q => axi_data_V1_i_reg_213(2),
      R => '0'
    );
\axi_data_V1_i_reg_213_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V1_i_reg_213[3]_i_1_n_0\,
      Q => axi_data_V1_i_reg_213(3),
      R => '0'
    );
\axi_data_V1_i_reg_213_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V1_i_reg_213[4]_i_1_n_0\,
      Q => axi_data_V1_i_reg_213(4),
      R => '0'
    );
\axi_data_V1_i_reg_213_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V1_i_reg_213[5]_i_1_n_0\,
      Q => axi_data_V1_i_reg_213(5),
      R => '0'
    );
\axi_data_V1_i_reg_213_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V1_i_reg_213[6]_i_1_n_0\,
      Q => axi_data_V1_i_reg_213(6),
      R => '0'
    );
\axi_data_V1_i_reg_213_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V1_i_reg_213[7]_i_1_n_0\,
      Q => axi_data_V1_i_reg_213(7),
      R => '0'
    );
\axi_data_V_1_i_reg_245[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_Val2_s_reg_292(0),
      I1 => \^srl_sig_reg[1][0]\,
      I2 => axi_data_V1_i_reg_213(0),
      O => \axi_data_V_1_i_reg_245[0]_i_1_n_0\
    );
\axi_data_V_1_i_reg_245[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_Val2_s_reg_292(1),
      I1 => \^srl_sig_reg[1][0]\,
      I2 => axi_data_V1_i_reg_213(1),
      O => \axi_data_V_1_i_reg_245[1]_i_1_n_0\
    );
\axi_data_V_1_i_reg_245[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_Val2_s_reg_292(2),
      I1 => \^srl_sig_reg[1][0]\,
      I2 => axi_data_V1_i_reg_213(2),
      O => \axi_data_V_1_i_reg_245[2]_i_1_n_0\
    );
\axi_data_V_1_i_reg_245[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_Val2_s_reg_292(3),
      I1 => \^srl_sig_reg[1][0]\,
      I2 => axi_data_V1_i_reg_213(3),
      O => \axi_data_V_1_i_reg_245[3]_i_1_n_0\
    );
\axi_data_V_1_i_reg_245[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_Val2_s_reg_292(4),
      I1 => \^srl_sig_reg[1][0]\,
      I2 => axi_data_V1_i_reg_213(4),
      O => \axi_data_V_1_i_reg_245[4]_i_1_n_0\
    );
\axi_data_V_1_i_reg_245[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_Val2_s_reg_292(5),
      I1 => \^srl_sig_reg[1][0]\,
      I2 => axi_data_V1_i_reg_213(5),
      O => \axi_data_V_1_i_reg_245[5]_i_1_n_0\
    );
\axi_data_V_1_i_reg_245[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_Val2_s_reg_292(6),
      I1 => \^srl_sig_reg[1][0]\,
      I2 => axi_data_V1_i_reg_213(6),
      O => \axi_data_V_1_i_reg_245[6]_i_1_n_0\
    );
\axi_data_V_1_i_reg_245[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^srl_sig_reg[1][0]\,
      I1 => exitcond2_i_fu_365_p2,
      I2 => ap_CS_fsm_state4,
      O => \axi_data_V_1_i_reg_245[7]_i_1_n_0\
    );
\axi_data_V_1_i_reg_245[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_Val2_s_reg_292(7),
      I1 => \^srl_sig_reg[1][0]\,
      I2 => axi_data_V1_i_reg_213(7),
      O => \axi_data_V_1_i_reg_245[7]_i_2_n_0\
    );
\axi_data_V_1_i_reg_245_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \axi_data_V_1_i_reg_245[7]_i_1_n_0\,
      D => \axi_data_V_1_i_reg_245[0]_i_1_n_0\,
      Q => axi_data_V_1_i_reg_245(0),
      R => '0'
    );
\axi_data_V_1_i_reg_245_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \axi_data_V_1_i_reg_245[7]_i_1_n_0\,
      D => \axi_data_V_1_i_reg_245[1]_i_1_n_0\,
      Q => axi_data_V_1_i_reg_245(1),
      R => '0'
    );
\axi_data_V_1_i_reg_245_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \axi_data_V_1_i_reg_245[7]_i_1_n_0\,
      D => \axi_data_V_1_i_reg_245[2]_i_1_n_0\,
      Q => axi_data_V_1_i_reg_245(2),
      R => '0'
    );
\axi_data_V_1_i_reg_245_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \axi_data_V_1_i_reg_245[7]_i_1_n_0\,
      D => \axi_data_V_1_i_reg_245[3]_i_1_n_0\,
      Q => axi_data_V_1_i_reg_245(3),
      R => '0'
    );
\axi_data_V_1_i_reg_245_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \axi_data_V_1_i_reg_245[7]_i_1_n_0\,
      D => \axi_data_V_1_i_reg_245[4]_i_1_n_0\,
      Q => axi_data_V_1_i_reg_245(4),
      R => '0'
    );
\axi_data_V_1_i_reg_245_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \axi_data_V_1_i_reg_245[7]_i_1_n_0\,
      D => \axi_data_V_1_i_reg_245[5]_i_1_n_0\,
      Q => axi_data_V_1_i_reg_245(5),
      R => '0'
    );
\axi_data_V_1_i_reg_245_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \axi_data_V_1_i_reg_245[7]_i_1_n_0\,
      D => \axi_data_V_1_i_reg_245[6]_i_1_n_0\,
      Q => axi_data_V_1_i_reg_245(6),
      R => '0'
    );
\axi_data_V_1_i_reg_245_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \axi_data_V_1_i_reg_245[7]_i_1_n_0\,
      D => \axi_data_V_1_i_reg_245[7]_i_2_n_0\,
      Q => axi_data_V_1_i_reg_245(7),
      R => '0'
    );
\axi_data_V_3_i_reg_316[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axi_data_V_1_i_reg_245(0),
      I1 => ap_CS_fsm_state7,
      I2 => video_in_TDATA(0),
      O => p_1_in(0)
    );
\axi_data_V_3_i_reg_316[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axi_data_V_1_i_reg_245(1),
      I1 => ap_CS_fsm_state7,
      I2 => video_in_TDATA(1),
      O => p_1_in(1)
    );
\axi_data_V_3_i_reg_316[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axi_data_V_1_i_reg_245(2),
      I1 => ap_CS_fsm_state7,
      I2 => video_in_TDATA(2),
      O => p_1_in(2)
    );
\axi_data_V_3_i_reg_316[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axi_data_V_1_i_reg_245(3),
      I1 => ap_CS_fsm_state7,
      I2 => video_in_TDATA(3),
      O => p_1_in(3)
    );
\axi_data_V_3_i_reg_316[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axi_data_V_1_i_reg_245(4),
      I1 => ap_CS_fsm_state7,
      I2 => video_in_TDATA(4),
      O => p_1_in(4)
    );
\axi_data_V_3_i_reg_316[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axi_data_V_1_i_reg_245(5),
      I1 => ap_CS_fsm_state7,
      I2 => video_in_TDATA(5),
      O => p_1_in(5)
    );
\axi_data_V_3_i_reg_316[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axi_data_V_1_i_reg_245(6),
      I1 => ap_CS_fsm_state7,
      I2 => video_in_TDATA(6),
      O => p_1_in(6)
    );
\axi_data_V_3_i_reg_316[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => axi_data_V_1_i_reg_245(7),
      I1 => ap_CS_fsm_state7,
      I2 => video_in_TDATA(7),
      O => p_1_in(7)
    );
\axi_data_V_3_i_reg_316_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_i_reg_328,
      D => p_1_in(0),
      Q => axi_data_V_3_i_reg_316(0),
      R => '0'
    );
\axi_data_V_3_i_reg_316_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_i_reg_328,
      D => p_1_in(1),
      Q => axi_data_V_3_i_reg_316(1),
      R => '0'
    );
\axi_data_V_3_i_reg_316_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_i_reg_328,
      D => p_1_in(2),
      Q => axi_data_V_3_i_reg_316(2),
      R => '0'
    );
\axi_data_V_3_i_reg_316_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_i_reg_328,
      D => p_1_in(3),
      Q => axi_data_V_3_i_reg_316(3),
      R => '0'
    );
\axi_data_V_3_i_reg_316_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_i_reg_328,
      D => p_1_in(4),
      Q => axi_data_V_3_i_reg_316(4),
      R => '0'
    );
\axi_data_V_3_i_reg_316_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_i_reg_328,
      D => p_1_in(5),
      Q => axi_data_V_3_i_reg_316(5),
      R => '0'
    );
\axi_data_V_3_i_reg_316_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_i_reg_328,
      D => p_1_in(6),
      Q => axi_data_V_3_i_reg_316(6),
      R => '0'
    );
\axi_data_V_3_i_reg_316_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_i_reg_328,
      D => p_1_in(7),
      Q => axi_data_V_3_i_reg_316(7),
      R => '0'
    );
\axi_last_V1_i_reg_203[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_last_V_reg_423,
      I1 => ap_CS_fsm_state3,
      I2 => axi_last_V_3_i_reg_304,
      O => \axi_last_V1_i_reg_203[0]_i_1_n_0\
    );
\axi_last_V1_i_reg_203_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_last_V1_i_reg_203[0]_i_1_n_0\,
      Q => axi_last_V1_i_reg_203,
      R => '0'
    );
\axi_last_V_2_i_reg_279[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAFCFA000A0C0"
    )
        port map (
      I0 => video_in_TLAST(0),
      I1 => eol_reg_234,
      I2 => ap_condition_184,
      I3 => \axi_last_V_2_i_reg_279[0]_i_2_n_0\,
      I4 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I5 => \axi_last_V_2_i_reg_279_reg_n_0_[0]\,
      O => \axi_last_V_2_i_reg_279[0]_i_1_n_0\
    );
\axi_last_V_2_i_reg_279[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_condition_pp1_exit_iter0_state5,
      I1 => video_in_TREADY_INST_0_i_1_n_0,
      O => \axi_last_V_2_i_reg_279[0]_i_2_n_0\
    );
\axi_last_V_2_i_reg_279_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \axi_last_V_2_i_reg_279[0]_i_1_n_0\,
      Q => \axi_last_V_2_i_reg_279_reg_n_0_[0]\,
      R => '0'
    );
\axi_last_V_3_i_reg_304[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => eol_reg_234,
      I1 => ap_CS_fsm_state7,
      I2 => video_in_TLAST(0),
      O => \axi_last_V_3_i_reg_304[0]_i_1_n_0\
    );
\axi_last_V_3_i_reg_304_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_i_reg_328,
      D => \axi_last_V_3_i_reg_304[0]_i_1_n_0\,
      Q => axi_last_V_3_i_reg_304,
      R => '0'
    );
\eol_2_i_reg_328[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => ap_CS_fsm_state7,
      I1 => ap_CS_fsm_state8,
      I2 => \eol_2_i_reg_328_reg_n_0_[0]\,
      I3 => video_in_TVALID,
      O => eol_2_i_reg_328
    );
\eol_2_i_reg_328[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \eol_i_reg_267_reg_n_0_[0]\,
      I1 => ap_CS_fsm_state7,
      I2 => video_in_TLAST(0),
      O => \eol_2_i_reg_328[0]_i_2_n_0\
    );
\eol_2_i_reg_328_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_i_reg_328,
      D => \eol_2_i_reg_328[0]_i_2_n_0\,
      Q => \eol_2_i_reg_328_reg_n_0_[0]\,
      R => '0'
    );
\eol_i_reg_267[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACAC0CA"
    )
        port map (
      I0 => \eol_i_reg_267_reg_n_0_[0]\,
      I1 => \axi_last_V_2_i_reg_279_reg_n_0_[0]\,
      I2 => \^srl_sig_reg[1][0]\,
      I3 => ap_CS_fsm_state4,
      I4 => exitcond2_i_fu_365_p2,
      O => \eol_i_reg_267[0]_i_1_n_0\
    );
\eol_i_reg_267_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \eol_i_reg_267[0]_i_1_n_0\,
      Q => \eol_i_reg_267_reg_n_0_[0]\,
      R => '0'
    );
\eol_reg_234[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_last_V_2_i_reg_279_reg_n_0_[0]\,
      I1 => \^srl_sig_reg[1][0]\,
      I2 => axi_last_V1_i_reg_203,
      O => \eol_reg_234[0]_i_1_n_0\
    );
\eol_reg_234_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \axi_data_V_1_i_reg_245[7]_i_1_n_0\,
      D => \eol_reg_234[0]_i_1_n_0\,
      Q => eol_reg_234,
      R => '0'
    );
exitcond2_i_fu_365_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => exitcond2_i_fu_365_p2_carry_n_0,
      CO(2) => exitcond2_i_fu_365_p2_carry_n_1,
      CO(1) => exitcond2_i_fu_365_p2_carry_n_2,
      CO(0) => exitcond2_i_fu_365_p2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_exitcond2_i_fu_365_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => exitcond2_i_fu_365_p2_carry_i_1_n_0,
      S(2) => exitcond2_i_fu_365_p2_carry_i_2_n_0,
      S(1) => exitcond2_i_fu_365_p2_carry_i_3_n_0,
      S(0) => exitcond2_i_fu_365_p2_carry_i_4_n_0
    );
\exitcond2_i_fu_365_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => exitcond2_i_fu_365_p2_carry_n_0,
      CO(3) => \exitcond2_i_fu_365_p2_carry__0_n_0\,
      CO(2) => \exitcond2_i_fu_365_p2_carry__0_n_1\,
      CO(1) => \exitcond2_i_fu_365_p2_carry__0_n_2\,
      CO(0) => \exitcond2_i_fu_365_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_exitcond2_i_fu_365_p2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \exitcond2_i_fu_365_p2_carry__0_i_1_n_0\,
      S(2) => \exitcond2_i_fu_365_p2_carry__0_i_2_n_0\,
      S(1) => \exitcond2_i_fu_365_p2_carry__0_i_3_n_0\,
      S(0) => \exitcond2_i_fu_365_p2_carry__0_i_4_n_0\
    );
\exitcond2_i_fu_365_p2_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_223(23),
      I1 => t_V_reg_223(22),
      I2 => t_V_reg_223(21),
      O => \exitcond2_i_fu_365_p2_carry__0_i_1_n_0\
    );
\exitcond2_i_fu_365_p2_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_223(20),
      I1 => t_V_reg_223(19),
      I2 => t_V_reg_223(18),
      O => \exitcond2_i_fu_365_p2_carry__0_i_2_n_0\
    );
\exitcond2_i_fu_365_p2_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_223(17),
      I1 => t_V_reg_223(16),
      I2 => t_V_reg_223(15),
      O => \exitcond2_i_fu_365_p2_carry__0_i_3_n_0\
    );
\exitcond2_i_fu_365_p2_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_223(14),
      I1 => t_V_reg_223(13),
      I2 => t_V_reg_223(12),
      O => \exitcond2_i_fu_365_p2_carry__0_i_4_n_0\
    );
\exitcond2_i_fu_365_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \exitcond2_i_fu_365_p2_carry__0_n_0\,
      CO(3) => \NLW_exitcond2_i_fu_365_p2_carry__1_CO_UNCONNECTED\(3),
      CO(2) => exitcond2_i_fu_365_p2,
      CO(1) => \exitcond2_i_fu_365_p2_carry__1_n_2\,
      CO(0) => \exitcond2_i_fu_365_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_exitcond2_i_fu_365_p2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \exitcond2_i_fu_365_p2_carry__1_i_1_n_0\,
      S(1) => \exitcond2_i_fu_365_p2_carry__1_i_2_n_0\,
      S(0) => \exitcond2_i_fu_365_p2_carry__1_i_3_n_0\
    );
\exitcond2_i_fu_365_p2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_reg_223(30),
      I1 => t_V_reg_223(31),
      O => \exitcond2_i_fu_365_p2_carry__1_i_1_n_0\
    );
\exitcond2_i_fu_365_p2_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_223(29),
      I1 => t_V_reg_223(28),
      I2 => t_V_reg_223(27),
      O => \exitcond2_i_fu_365_p2_carry__1_i_2_n_0\
    );
\exitcond2_i_fu_365_p2_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_223(26),
      I1 => t_V_reg_223(25),
      I2 => t_V_reg_223(24),
      O => \exitcond2_i_fu_365_p2_carry__1_i_3_n_0\
    );
exitcond2_i_fu_365_p2_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_223(11),
      I1 => t_V_reg_223(10),
      I2 => t_V_reg_223(9),
      O => exitcond2_i_fu_365_p2_carry_i_1_n_0
    );
exitcond2_i_fu_365_p2_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => t_V_reg_223(6),
      I1 => t_V_reg_223(8),
      I2 => t_V_reg_223(7),
      O => exitcond2_i_fu_365_p2_carry_i_2_n_0
    );
exitcond2_i_fu_365_p2_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => t_V_reg_223(3),
      I1 => t_V_reg_223(5),
      I2 => t_V_reg_223(4),
      O => exitcond2_i_fu_365_p2_carry_i_3_n_0
    );
exitcond2_i_fu_365_p2_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_reg_223(0),
      I1 => t_V_reg_223(2),
      I2 => t_V_reg_223(1),
      O => exitcond2_i_fu_365_p2_carry_i_4_n_0
    );
\exitcond_i_fu_376_p2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \exitcond_i_fu_376_p2_inferred__0/i__carry_n_0\,
      CO(2) => \exitcond_i_fu_376_p2_inferred__0/i__carry_n_1\,
      CO(1) => \exitcond_i_fu_376_p2_inferred__0/i__carry_n_2\,
      CO(0) => \exitcond_i_fu_376_p2_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_exitcond_i_fu_376_p2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\exitcond_i_fu_376_p2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \exitcond_i_fu_376_p2_inferred__0/i__carry_n_0\,
      CO(3) => \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_0\,
      CO(2) => \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_1\,
      CO(1) => \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_2\,
      CO(0) => \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_exitcond_i_fu_376_p2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\exitcond_i_fu_376_p2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \exitcond_i_fu_376_p2_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_exitcond_i_fu_376_p2_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => ap_condition_pp1_exit_iter0_state5,
      CO(1) => \exitcond_i_fu_376_p2_inferred__0/i__carry__1_n_2\,
      CO(0) => \exitcond_i_fu_376_p2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_exitcond_i_fu_376_p2_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
\exitcond_i_reg_444[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \exitcond_i_reg_444_reg_n_0_[0]\,
      I1 => ap_CS_fsm_pp1_stage0,
      I2 => \ap_CS_fsm[4]_i_2_n_0\,
      I3 => ap_condition_pp1_exit_iter0_state5,
      O => \exitcond_i_reg_444[0]_i_1_n_0\
    );
\exitcond_i_reg_444_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \exitcond_i_reg_444[0]_i_1_n_0\,
      Q => \exitcond_i_reg_444_reg_n_0_[0]\,
      R => '0'
    );
\i_V_reg_439[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_reg_223(0),
      O => i_V_fu_370_p2(0)
    );
\i_V_reg_439_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(0),
      Q => i_V_reg_439(0),
      R => '0'
    );
\i_V_reg_439_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(10),
      Q => i_V_reg_439(10),
      R => '0'
    );
\i_V_reg_439_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(11),
      Q => i_V_reg_439(11),
      R => '0'
    );
\i_V_reg_439_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(12),
      Q => i_V_reg_439(12),
      R => '0'
    );
\i_V_reg_439_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_439_reg[8]_i_1_n_0\,
      CO(3) => \i_V_reg_439_reg[12]_i_1_n_0\,
      CO(2) => \i_V_reg_439_reg[12]_i_1_n_1\,
      CO(1) => \i_V_reg_439_reg[12]_i_1_n_2\,
      CO(0) => \i_V_reg_439_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_370_p2(12 downto 9),
      S(3 downto 0) => t_V_reg_223(12 downto 9)
    );
\i_V_reg_439_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(13),
      Q => i_V_reg_439(13),
      R => '0'
    );
\i_V_reg_439_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(14),
      Q => i_V_reg_439(14),
      R => '0'
    );
\i_V_reg_439_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(15),
      Q => i_V_reg_439(15),
      R => '0'
    );
\i_V_reg_439_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(16),
      Q => i_V_reg_439(16),
      R => '0'
    );
\i_V_reg_439_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_439_reg[12]_i_1_n_0\,
      CO(3) => \i_V_reg_439_reg[16]_i_1_n_0\,
      CO(2) => \i_V_reg_439_reg[16]_i_1_n_1\,
      CO(1) => \i_V_reg_439_reg[16]_i_1_n_2\,
      CO(0) => \i_V_reg_439_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_370_p2(16 downto 13),
      S(3 downto 0) => t_V_reg_223(16 downto 13)
    );
\i_V_reg_439_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(17),
      Q => i_V_reg_439(17),
      R => '0'
    );
\i_V_reg_439_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(18),
      Q => i_V_reg_439(18),
      R => '0'
    );
\i_V_reg_439_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(19),
      Q => i_V_reg_439(19),
      R => '0'
    );
\i_V_reg_439_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(1),
      Q => i_V_reg_439(1),
      R => '0'
    );
\i_V_reg_439_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(20),
      Q => i_V_reg_439(20),
      R => '0'
    );
\i_V_reg_439_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_439_reg[16]_i_1_n_0\,
      CO(3) => \i_V_reg_439_reg[20]_i_1_n_0\,
      CO(2) => \i_V_reg_439_reg[20]_i_1_n_1\,
      CO(1) => \i_V_reg_439_reg[20]_i_1_n_2\,
      CO(0) => \i_V_reg_439_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_370_p2(20 downto 17),
      S(3 downto 0) => t_V_reg_223(20 downto 17)
    );
\i_V_reg_439_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(21),
      Q => i_V_reg_439(21),
      R => '0'
    );
\i_V_reg_439_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(22),
      Q => i_V_reg_439(22),
      R => '0'
    );
\i_V_reg_439_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(23),
      Q => i_V_reg_439(23),
      R => '0'
    );
\i_V_reg_439_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(24),
      Q => i_V_reg_439(24),
      R => '0'
    );
\i_V_reg_439_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_439_reg[20]_i_1_n_0\,
      CO(3) => \i_V_reg_439_reg[24]_i_1_n_0\,
      CO(2) => \i_V_reg_439_reg[24]_i_1_n_1\,
      CO(1) => \i_V_reg_439_reg[24]_i_1_n_2\,
      CO(0) => \i_V_reg_439_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_370_p2(24 downto 21),
      S(3 downto 0) => t_V_reg_223(24 downto 21)
    );
\i_V_reg_439_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(25),
      Q => i_V_reg_439(25),
      R => '0'
    );
\i_V_reg_439_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(26),
      Q => i_V_reg_439(26),
      R => '0'
    );
\i_V_reg_439_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(27),
      Q => i_V_reg_439(27),
      R => '0'
    );
\i_V_reg_439_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(28),
      Q => i_V_reg_439(28),
      R => '0'
    );
\i_V_reg_439_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_439_reg[24]_i_1_n_0\,
      CO(3) => \i_V_reg_439_reg[28]_i_1_n_0\,
      CO(2) => \i_V_reg_439_reg[28]_i_1_n_1\,
      CO(1) => \i_V_reg_439_reg[28]_i_1_n_2\,
      CO(0) => \i_V_reg_439_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_370_p2(28 downto 25),
      S(3 downto 0) => t_V_reg_223(28 downto 25)
    );
\i_V_reg_439_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(29),
      Q => i_V_reg_439(29),
      R => '0'
    );
\i_V_reg_439_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(2),
      Q => i_V_reg_439(2),
      R => '0'
    );
\i_V_reg_439_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(30),
      Q => i_V_reg_439(30),
      R => '0'
    );
\i_V_reg_439_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(31),
      Q => i_V_reg_439(31),
      R => '0'
    );
\i_V_reg_439_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_439_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_i_V_reg_439_reg[31]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i_V_reg_439_reg[31]_i_1_n_2\,
      CO(0) => \i_V_reg_439_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i_V_reg_439_reg[31]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => i_V_fu_370_p2(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => t_V_reg_223(31 downto 29)
    );
\i_V_reg_439_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(3),
      Q => i_V_reg_439(3),
      R => '0'
    );
\i_V_reg_439_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(4),
      Q => i_V_reg_439(4),
      R => '0'
    );
\i_V_reg_439_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_V_reg_439_reg[4]_i_1_n_0\,
      CO(2) => \i_V_reg_439_reg[4]_i_1_n_1\,
      CO(1) => \i_V_reg_439_reg[4]_i_1_n_2\,
      CO(0) => \i_V_reg_439_reg[4]_i_1_n_3\,
      CYINIT => t_V_reg_223(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_370_p2(4 downto 1),
      S(3 downto 0) => t_V_reg_223(4 downto 1)
    );
\i_V_reg_439_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(5),
      Q => i_V_reg_439(5),
      R => '0'
    );
\i_V_reg_439_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(6),
      Q => i_V_reg_439(6),
      R => '0'
    );
\i_V_reg_439_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(7),
      Q => i_V_reg_439(7),
      R => '0'
    );
\i_V_reg_439_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(8),
      Q => i_V_reg_439(8),
      R => '0'
    );
\i_V_reg_439_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_V_reg_439_reg[4]_i_1_n_0\,
      CO(3) => \i_V_reg_439_reg[8]_i_1_n_0\,
      CO(2) => \i_V_reg_439_reg[8]_i_1_n_1\,
      CO(1) => \i_V_reg_439_reg[8]_i_1_n_2\,
      CO(0) => \i_V_reg_439_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_V_fu_370_p2(8 downto 5),
      S(3 downto 0) => t_V_reg_223(8 downto 5)
    );
\i_V_reg_439_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_370_p2(9),
      Q => i_V_reg_439(9),
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_256_reg(23),
      I1 => t_V_2_reg_256_reg(22),
      I2 => t_V_2_reg_256_reg(21),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_256_reg(20),
      I1 => t_V_2_reg_256_reg(19),
      I2 => t_V_2_reg_256_reg(18),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_256_reg(17),
      I1 => t_V_2_reg_256_reg(16),
      I2 => t_V_2_reg_256_reg(15),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_256_reg(14),
      I1 => t_V_2_reg_256_reg(13),
      I2 => t_V_2_reg_256_reg(12),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_2_reg_256_reg(30),
      I1 => t_V_2_reg_256_reg(31),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_256_reg(29),
      I1 => t_V_2_reg_256_reg(28),
      I2 => t_V_2_reg_256_reg(27),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_256_reg(26),
      I1 => t_V_2_reg_256_reg(25),
      I2 => t_V_2_reg_256_reg(24),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => t_V_2_reg_256_reg(10),
      I1 => t_V_2_reg_256_reg(9),
      I2 => t_V_2_reg_256_reg(11),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => t_V_2_reg_256_reg(6),
      I1 => t_V_2_reg_256_reg(7),
      I2 => t_V_2_reg_256_reg(8),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_256_reg(5),
      I1 => t_V_2_reg_256_reg(4),
      I2 => t_V_2_reg_256_reg(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => t_V_2_reg_256_reg(0),
      I1 => t_V_2_reg_256_reg(2),
      I2 => t_V_2_reg_256_reg(1),
      O => \i__carry_i_4_n_0\
    );
\mOutPtr[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]_0\,
      I1 => ap_start,
      I2 => srcImg_rows_V_c_full_n,
      I3 => srcImg_cols_V_c_full_n,
      O => E(0)
    );
\p_Val2_s_reg_292[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => video_in_TDATA(0),
      I1 => ap_condition_pp1_exit_iter0_state5,
      I2 => video_in_TREADY_INST_0_i_1_n_0,
      I3 => p_Val2_s_reg_292(0),
      I4 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I5 => axi_data_V_1_i_reg_245(0),
      O => \p_Val2_s_reg_292[0]_i_1_n_0\
    );
\p_Val2_s_reg_292[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => video_in_TDATA(1),
      I1 => ap_condition_pp1_exit_iter0_state5,
      I2 => video_in_TREADY_INST_0_i_1_n_0,
      I3 => p_Val2_s_reg_292(1),
      I4 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I5 => axi_data_V_1_i_reg_245(1),
      O => \p_Val2_s_reg_292[1]_i_1_n_0\
    );
\p_Val2_s_reg_292[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => video_in_TDATA(2),
      I1 => ap_condition_pp1_exit_iter0_state5,
      I2 => video_in_TREADY_INST_0_i_1_n_0,
      I3 => p_Val2_s_reg_292(2),
      I4 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I5 => axi_data_V_1_i_reg_245(2),
      O => \p_Val2_s_reg_292[2]_i_1_n_0\
    );
\p_Val2_s_reg_292[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => video_in_TDATA(3),
      I1 => ap_condition_pp1_exit_iter0_state5,
      I2 => video_in_TREADY_INST_0_i_1_n_0,
      I3 => p_Val2_s_reg_292(3),
      I4 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I5 => axi_data_V_1_i_reg_245(3),
      O => \p_Val2_s_reg_292[3]_i_1_n_0\
    );
\p_Val2_s_reg_292[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => video_in_TDATA(4),
      I1 => ap_condition_pp1_exit_iter0_state5,
      I2 => video_in_TREADY_INST_0_i_1_n_0,
      I3 => p_Val2_s_reg_292(4),
      I4 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I5 => axi_data_V_1_i_reg_245(4),
      O => \p_Val2_s_reg_292[4]_i_1_n_0\
    );
\p_Val2_s_reg_292[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => video_in_TDATA(5),
      I1 => ap_condition_pp1_exit_iter0_state5,
      I2 => video_in_TREADY_INST_0_i_1_n_0,
      I3 => p_Val2_s_reg_292(5),
      I4 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I5 => axi_data_V_1_i_reg_245(5),
      O => \p_Val2_s_reg_292[5]_i_1_n_0\
    );
\p_Val2_s_reg_292[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => video_in_TDATA(6),
      I1 => ap_condition_pp1_exit_iter0_state5,
      I2 => video_in_TREADY_INST_0_i_1_n_0,
      I3 => p_Val2_s_reg_292(6),
      I4 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I5 => axi_data_V_1_i_reg_245(6),
      O => \p_Val2_s_reg_292[6]_i_1_n_0\
    );
\p_Val2_s_reg_292[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => video_in_TDATA(7),
      I1 => ap_condition_pp1_exit_iter0_state5,
      I2 => video_in_TREADY_INST_0_i_1_n_0,
      I3 => p_Val2_s_reg_292(7),
      I4 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I5 => axi_data_V_1_i_reg_245(7),
      O => \p_Val2_s_reg_292[7]_i_1_n_0\
    );
\p_Val2_s_reg_292[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_CS_fsm_pp1_stage0,
      I1 => ap_enable_reg_pp1_iter1_reg_n_0,
      I2 => \exitcond_i_reg_444_reg_n_0_[0]\,
      O => \p_Val2_s_reg_292[7]_i_2_n_0\
    );
\p_Val2_s_reg_292_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_184,
      D => \p_Val2_s_reg_292[0]_i_1_n_0\,
      Q => p_Val2_s_reg_292(0),
      R => '0'
    );
\p_Val2_s_reg_292_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_184,
      D => \p_Val2_s_reg_292[1]_i_1_n_0\,
      Q => p_Val2_s_reg_292(1),
      R => '0'
    );
\p_Val2_s_reg_292_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_184,
      D => \p_Val2_s_reg_292[2]_i_1_n_0\,
      Q => p_Val2_s_reg_292(2),
      R => '0'
    );
\p_Val2_s_reg_292_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_184,
      D => \p_Val2_s_reg_292[3]_i_1_n_0\,
      Q => p_Val2_s_reg_292(3),
      R => '0'
    );
\p_Val2_s_reg_292_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_184,
      D => \p_Val2_s_reg_292[4]_i_1_n_0\,
      Q => p_Val2_s_reg_292(4),
      R => '0'
    );
\p_Val2_s_reg_292_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_184,
      D => \p_Val2_s_reg_292[5]_i_1_n_0\,
      Q => p_Val2_s_reg_292(5),
      R => '0'
    );
\p_Val2_s_reg_292_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_184,
      D => \p_Val2_s_reg_292[6]_i_1_n_0\,
      Q => p_Val2_s_reg_292(6),
      R => '0'
    );
\p_Val2_s_reg_292_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_184,
      D => \p_Val2_s_reg_292[7]_i_1_n_0\,
      Q => p_Val2_s_reg_292(7),
      R => '0'
    );
\sof_1_i_fu_146[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => sof_1_i_fu_146,
      I1 => ap_CS_fsm_state3,
      I2 => sof_1_i_fu_1460,
      O => \sof_1_i_fu_146[0]_i_1_n_0\
    );
\sof_1_i_fu_146_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \sof_1_i_fu_146[0]_i_1_n_0\,
      Q => sof_1_i_fu_146,
      R => '0'
    );
start_once_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77777000"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => exitcond2_i_fu_365_p2,
      I2 => ap_start,
      I3 => start_for_img_cpy_opr_U0_full_n,
      I4 => \^start_once_reg\,
      O => start_once_reg_i_1_n_0
    );
start_once_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => start_once_reg_i_1_n_0,
      Q => \^start_once_reg\,
      R => \^ap_rst_n_inv\
    );
\t_V_2_reg_256[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => exitcond2_i_fu_365_p2,
      I1 => ap_CS_fsm_state4,
      I2 => sof_1_i_fu_1460,
      O => t_V_2_reg_256
    );
\t_V_2_reg_256[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020002200"
    )
        port map (
      I0 => ap_CS_fsm_pp1_stage0,
      I1 => video_in_TREADY_INST_0_i_4_n_0,
      I2 => video_in_TVALID,
      I3 => ap_enable_reg_pp1_iter0,
      I4 => video_in_TREADY_INST_0_i_1_n_0,
      I5 => ap_condition_pp1_exit_iter0_state5,
      O => sof_1_i_fu_1460
    );
\t_V_2_reg_256[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_2_reg_256_reg(0),
      O => \t_V_2_reg_256[0]_i_4_n_0\
    );
\t_V_2_reg_256_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[0]_i_3_n_7\,
      Q => t_V_2_reg_256_reg(0),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \t_V_2_reg_256_reg[0]_i_3_n_0\,
      CO(2) => \t_V_2_reg_256_reg[0]_i_3_n_1\,
      CO(1) => \t_V_2_reg_256_reg[0]_i_3_n_2\,
      CO(0) => \t_V_2_reg_256_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \t_V_2_reg_256_reg[0]_i_3_n_4\,
      O(2) => \t_V_2_reg_256_reg[0]_i_3_n_5\,
      O(1) => \t_V_2_reg_256_reg[0]_i_3_n_6\,
      O(0) => \t_V_2_reg_256_reg[0]_i_3_n_7\,
      S(3 downto 1) => t_V_2_reg_256_reg(3 downto 1),
      S(0) => \t_V_2_reg_256[0]_i_4_n_0\
    );
\t_V_2_reg_256_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[8]_i_1_n_5\,
      Q => t_V_2_reg_256_reg(10),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[8]_i_1_n_4\,
      Q => t_V_2_reg_256_reg(11),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[12]_i_1_n_7\,
      Q => t_V_2_reg_256_reg(12),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_256_reg[8]_i_1_n_0\,
      CO(3) => \t_V_2_reg_256_reg[12]_i_1_n_0\,
      CO(2) => \t_V_2_reg_256_reg[12]_i_1_n_1\,
      CO(1) => \t_V_2_reg_256_reg[12]_i_1_n_2\,
      CO(0) => \t_V_2_reg_256_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_256_reg[12]_i_1_n_4\,
      O(2) => \t_V_2_reg_256_reg[12]_i_1_n_5\,
      O(1) => \t_V_2_reg_256_reg[12]_i_1_n_6\,
      O(0) => \t_V_2_reg_256_reg[12]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_256_reg(15 downto 12)
    );
\t_V_2_reg_256_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[12]_i_1_n_6\,
      Q => t_V_2_reg_256_reg(13),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[12]_i_1_n_5\,
      Q => t_V_2_reg_256_reg(14),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[12]_i_1_n_4\,
      Q => t_V_2_reg_256_reg(15),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[16]_i_1_n_7\,
      Q => t_V_2_reg_256_reg(16),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_256_reg[12]_i_1_n_0\,
      CO(3) => \t_V_2_reg_256_reg[16]_i_1_n_0\,
      CO(2) => \t_V_2_reg_256_reg[16]_i_1_n_1\,
      CO(1) => \t_V_2_reg_256_reg[16]_i_1_n_2\,
      CO(0) => \t_V_2_reg_256_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_256_reg[16]_i_1_n_4\,
      O(2) => \t_V_2_reg_256_reg[16]_i_1_n_5\,
      O(1) => \t_V_2_reg_256_reg[16]_i_1_n_6\,
      O(0) => \t_V_2_reg_256_reg[16]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_256_reg(19 downto 16)
    );
\t_V_2_reg_256_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[16]_i_1_n_6\,
      Q => t_V_2_reg_256_reg(17),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[16]_i_1_n_5\,
      Q => t_V_2_reg_256_reg(18),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[16]_i_1_n_4\,
      Q => t_V_2_reg_256_reg(19),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[0]_i_3_n_6\,
      Q => t_V_2_reg_256_reg(1),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[20]_i_1_n_7\,
      Q => t_V_2_reg_256_reg(20),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_256_reg[16]_i_1_n_0\,
      CO(3) => \t_V_2_reg_256_reg[20]_i_1_n_0\,
      CO(2) => \t_V_2_reg_256_reg[20]_i_1_n_1\,
      CO(1) => \t_V_2_reg_256_reg[20]_i_1_n_2\,
      CO(0) => \t_V_2_reg_256_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_256_reg[20]_i_1_n_4\,
      O(2) => \t_V_2_reg_256_reg[20]_i_1_n_5\,
      O(1) => \t_V_2_reg_256_reg[20]_i_1_n_6\,
      O(0) => \t_V_2_reg_256_reg[20]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_256_reg(23 downto 20)
    );
\t_V_2_reg_256_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[20]_i_1_n_6\,
      Q => t_V_2_reg_256_reg(21),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[20]_i_1_n_5\,
      Q => t_V_2_reg_256_reg(22),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[20]_i_1_n_4\,
      Q => t_V_2_reg_256_reg(23),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[24]_i_1_n_7\,
      Q => t_V_2_reg_256_reg(24),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_256_reg[20]_i_1_n_0\,
      CO(3) => \t_V_2_reg_256_reg[24]_i_1_n_0\,
      CO(2) => \t_V_2_reg_256_reg[24]_i_1_n_1\,
      CO(1) => \t_V_2_reg_256_reg[24]_i_1_n_2\,
      CO(0) => \t_V_2_reg_256_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_256_reg[24]_i_1_n_4\,
      O(2) => \t_V_2_reg_256_reg[24]_i_1_n_5\,
      O(1) => \t_V_2_reg_256_reg[24]_i_1_n_6\,
      O(0) => \t_V_2_reg_256_reg[24]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_256_reg(27 downto 24)
    );
\t_V_2_reg_256_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[24]_i_1_n_6\,
      Q => t_V_2_reg_256_reg(25),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[24]_i_1_n_5\,
      Q => t_V_2_reg_256_reg(26),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[24]_i_1_n_4\,
      Q => t_V_2_reg_256_reg(27),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[28]_i_1_n_7\,
      Q => t_V_2_reg_256_reg(28),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_256_reg[24]_i_1_n_0\,
      CO(3) => \NLW_t_V_2_reg_256_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \t_V_2_reg_256_reg[28]_i_1_n_1\,
      CO(1) => \t_V_2_reg_256_reg[28]_i_1_n_2\,
      CO(0) => \t_V_2_reg_256_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_256_reg[28]_i_1_n_4\,
      O(2) => \t_V_2_reg_256_reg[28]_i_1_n_5\,
      O(1) => \t_V_2_reg_256_reg[28]_i_1_n_6\,
      O(0) => \t_V_2_reg_256_reg[28]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_256_reg(31 downto 28)
    );
\t_V_2_reg_256_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[28]_i_1_n_6\,
      Q => t_V_2_reg_256_reg(29),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[0]_i_3_n_5\,
      Q => t_V_2_reg_256_reg(2),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[28]_i_1_n_5\,
      Q => t_V_2_reg_256_reg(30),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[28]_i_1_n_4\,
      Q => t_V_2_reg_256_reg(31),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[0]_i_3_n_4\,
      Q => t_V_2_reg_256_reg(3),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[4]_i_1_n_7\,
      Q => t_V_2_reg_256_reg(4),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_256_reg[0]_i_3_n_0\,
      CO(3) => \t_V_2_reg_256_reg[4]_i_1_n_0\,
      CO(2) => \t_V_2_reg_256_reg[4]_i_1_n_1\,
      CO(1) => \t_V_2_reg_256_reg[4]_i_1_n_2\,
      CO(0) => \t_V_2_reg_256_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_256_reg[4]_i_1_n_4\,
      O(2) => \t_V_2_reg_256_reg[4]_i_1_n_5\,
      O(1) => \t_V_2_reg_256_reg[4]_i_1_n_6\,
      O(0) => \t_V_2_reg_256_reg[4]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_256_reg(7 downto 4)
    );
\t_V_2_reg_256_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[4]_i_1_n_6\,
      Q => t_V_2_reg_256_reg(5),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[4]_i_1_n_5\,
      Q => t_V_2_reg_256_reg(6),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[4]_i_1_n_4\,
      Q => t_V_2_reg_256_reg(7),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[8]_i_1_n_7\,
      Q => t_V_2_reg_256_reg(8),
      R => t_V_2_reg_256
    );
\t_V_2_reg_256_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \t_V_2_reg_256_reg[4]_i_1_n_0\,
      CO(3) => \t_V_2_reg_256_reg[8]_i_1_n_0\,
      CO(2) => \t_V_2_reg_256_reg[8]_i_1_n_1\,
      CO(1) => \t_V_2_reg_256_reg[8]_i_1_n_2\,
      CO(0) => \t_V_2_reg_256_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \t_V_2_reg_256_reg[8]_i_1_n_4\,
      O(2) => \t_V_2_reg_256_reg[8]_i_1_n_5\,
      O(1) => \t_V_2_reg_256_reg[8]_i_1_n_6\,
      O(0) => \t_V_2_reg_256_reg[8]_i_1_n_7\,
      S(3 downto 0) => t_V_2_reg_256_reg(11 downto 8)
    );
\t_V_2_reg_256_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_i_fu_1460,
      D => \t_V_2_reg_256_reg[8]_i_1_n_6\,
      Q => t_V_2_reg_256_reg(9),
      R => t_V_2_reg_256
    );
\t_V_reg_223_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(0),
      Q => t_V_reg_223(0),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(10),
      Q => t_V_reg_223(10),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(11),
      Q => t_V_reg_223(11),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(12),
      Q => t_V_reg_223(12),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(13),
      Q => t_V_reg_223(13),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(14),
      Q => t_V_reg_223(14),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(15),
      Q => t_V_reg_223(15),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(16),
      Q => t_V_reg_223(16),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(17),
      Q => t_V_reg_223(17),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(18),
      Q => t_V_reg_223(18),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(19),
      Q => t_V_reg_223(19),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(1),
      Q => t_V_reg_223(1),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(20),
      Q => t_V_reg_223(20),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(21),
      Q => t_V_reg_223(21),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(22),
      Q => t_V_reg_223(22),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(23),
      Q => t_V_reg_223(23),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(24),
      Q => t_V_reg_223(24),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(25),
      Q => t_V_reg_223(25),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(26),
      Q => t_V_reg_223(26),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(27),
      Q => t_V_reg_223(27),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(28),
      Q => t_V_reg_223(28),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(29),
      Q => t_V_reg_223(29),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(2),
      Q => t_V_reg_223(2),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(30),
      Q => t_V_reg_223(30),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(31),
      Q => t_V_reg_223(31),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(3),
      Q => t_V_reg_223(3),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(4),
      Q => t_V_reg_223(4),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(5),
      Q => t_V_reg_223(5),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(6),
      Q => t_V_reg_223(6),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(7),
      Q => t_V_reg_223(7),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(8),
      Q => t_V_reg_223(8),
      R => ap_CS_fsm_state3
    );
\t_V_reg_223_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_439(9),
      Q => t_V_reg_223(9),
      R => ap_CS_fsm_state3
    );
\tmp_data_V_reg_415_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_4150,
      D => video_in_TDATA(0),
      Q => tmp_data_V_reg_415(0),
      R => '0'
    );
\tmp_data_V_reg_415_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_4150,
      D => video_in_TDATA(1),
      Q => tmp_data_V_reg_415(1),
      R => '0'
    );
\tmp_data_V_reg_415_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_4150,
      D => video_in_TDATA(2),
      Q => tmp_data_V_reg_415(2),
      R => '0'
    );
\tmp_data_V_reg_415_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_4150,
      D => video_in_TDATA(3),
      Q => tmp_data_V_reg_415(3),
      R => '0'
    );
\tmp_data_V_reg_415_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_4150,
      D => video_in_TDATA(4),
      Q => tmp_data_V_reg_415(4),
      R => '0'
    );
\tmp_data_V_reg_415_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_4150,
      D => video_in_TDATA(5),
      Q => tmp_data_V_reg_415(5),
      R => '0'
    );
\tmp_data_V_reg_415_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_4150,
      D => video_in_TDATA(6),
      Q => tmp_data_V_reg_415(6),
      R => '0'
    );
\tmp_data_V_reg_415_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_4150,
      D => video_in_TDATA(7),
      Q => tmp_data_V_reg_415(7),
      R => '0'
    );
\tmp_last_V_reg_423[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => video_in_TVALID,
      O => tmp_data_V_reg_4150
    );
\tmp_last_V_reg_423_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_data_V_reg_4150,
      D => video_in_TLAST(0),
      Q => tmp_last_V_reg_423,
      R => '0'
    );
\tmp_reg_457[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => video_in_TDATA(0),
      I1 => video_in_TREADY_INST_0_i_1_n_0,
      I2 => p_Val2_s_reg_292(0),
      I3 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I4 => axi_data_V_1_i_reg_245(0),
      O => tmp_fu_396_p1(0)
    );
\tmp_reg_457[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => video_in_TDATA(1),
      I1 => video_in_TREADY_INST_0_i_1_n_0,
      I2 => p_Val2_s_reg_292(1),
      I3 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I4 => axi_data_V_1_i_reg_245(1),
      O => tmp_fu_396_p1(1)
    );
\tmp_reg_457[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => video_in_TDATA(2),
      I1 => video_in_TREADY_INST_0_i_1_n_0,
      I2 => p_Val2_s_reg_292(2),
      I3 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I4 => axi_data_V_1_i_reg_245(2),
      O => tmp_fu_396_p1(2)
    );
\tmp_reg_457[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => video_in_TDATA(3),
      I1 => video_in_TREADY_INST_0_i_1_n_0,
      I2 => p_Val2_s_reg_292(3),
      I3 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I4 => axi_data_V_1_i_reg_245(3),
      O => tmp_fu_396_p1(3)
    );
\tmp_reg_457[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => video_in_TDATA(4),
      I1 => video_in_TREADY_INST_0_i_1_n_0,
      I2 => p_Val2_s_reg_292(4),
      I3 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I4 => axi_data_V_1_i_reg_245(4),
      O => tmp_fu_396_p1(4)
    );
\tmp_reg_457[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => video_in_TDATA(5),
      I1 => video_in_TREADY_INST_0_i_1_n_0,
      I2 => p_Val2_s_reg_292(5),
      I3 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I4 => axi_data_V_1_i_reg_245(5),
      O => tmp_fu_396_p1(5)
    );
\tmp_reg_457[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => video_in_TDATA(6),
      I1 => video_in_TREADY_INST_0_i_1_n_0,
      I2 => p_Val2_s_reg_292(6),
      I3 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I4 => axi_data_V_1_i_reg_245(6),
      O => tmp_fu_396_p1(6)
    );
\tmp_reg_457[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => ap_condition_pp1_exit_iter0_state5,
      I1 => \ap_CS_fsm[4]_i_2_n_0\,
      I2 => ap_CS_fsm_pp1_stage0,
      O => \tmp_reg_457[7]_i_1_n_0\
    );
\tmp_reg_457[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => video_in_TDATA(7),
      I1 => video_in_TREADY_INST_0_i_1_n_0,
      I2 => p_Val2_s_reg_292(7),
      I3 => \p_Val2_s_reg_292[7]_i_2_n_0\,
      I4 => axi_data_V_1_i_reg_245(7),
      O => tmp_fu_396_p1(7)
    );
\tmp_reg_457_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \tmp_reg_457[7]_i_1_n_0\,
      D => tmp_fu_396_p1(0),
      Q => \SRL_SIG_reg[0][7]\(0),
      R => '0'
    );
\tmp_reg_457_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \tmp_reg_457[7]_i_1_n_0\,
      D => tmp_fu_396_p1(1),
      Q => \SRL_SIG_reg[0][7]\(1),
      R => '0'
    );
\tmp_reg_457_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \tmp_reg_457[7]_i_1_n_0\,
      D => tmp_fu_396_p1(2),
      Q => \SRL_SIG_reg[0][7]\(2),
      R => '0'
    );
\tmp_reg_457_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \tmp_reg_457[7]_i_1_n_0\,
      D => tmp_fu_396_p1(3),
      Q => \SRL_SIG_reg[0][7]\(3),
      R => '0'
    );
\tmp_reg_457_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \tmp_reg_457[7]_i_1_n_0\,
      D => tmp_fu_396_p1(4),
      Q => \SRL_SIG_reg[0][7]\(4),
      R => '0'
    );
\tmp_reg_457_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \tmp_reg_457[7]_i_1_n_0\,
      D => tmp_fu_396_p1(5),
      Q => \SRL_SIG_reg[0][7]\(5),
      R => '0'
    );
\tmp_reg_457_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \tmp_reg_457[7]_i_1_n_0\,
      D => tmp_fu_396_p1(6),
      Q => \SRL_SIG_reg[0][7]\(6),
      R => '0'
    );
\tmp_reg_457_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \tmp_reg_457[7]_i_1_n_0\,
      D => tmp_fu_396_p1(7),
      Q => \SRL_SIG_reg[0][7]\(7),
      R => '0'
    );
video_in_TREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF40FF40FF40"
    )
        port map (
      I0 => ap_condition_pp1_exit_iter0_state5,
      I1 => video_in_TREADY_INST_0_i_1_n_0,
      I2 => ap_condition_184,
      I3 => video_in_TREADY_INST_0_i_3_n_0,
      I4 => ap_CS_fsm_state2,
      I5 => video_in_TVALID,
      O => video_in_TREADY
    );
video_in_TREADY_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011111115111111"
    )
        port map (
      I0 => sof_1_i_fu_146,
      I1 => \eol_i_reg_267_reg_n_0_[0]\,
      I2 => \exitcond_i_reg_444_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp1_iter1_reg_n_0,
      I4 => ap_CS_fsm_pp1_stage0,
      I5 => \axi_last_V_2_i_reg_279_reg_n_0_[0]\,
      O => video_in_TREADY_INST_0_i_1_n_0
    );
video_in_TREADY_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CCC400000000"
    )
        port map (
      I0 => video_in_TREADY_INST_0_i_1_n_0,
      I1 => ap_enable_reg_pp1_iter0,
      I2 => ap_condition_pp1_exit_iter0_state5,
      I3 => video_in_TVALID,
      I4 => video_in_TREADY_INST_0_i_4_n_0,
      I5 => ap_CS_fsm_pp1_stage0,
      O => ap_condition_184
    );
video_in_TREADY_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => video_in_TVALID,
      I1 => \eol_2_i_reg_328_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state8,
      O => video_in_TREADY_INST_0_i_3_n_0
    );
video_in_TREADY_INST_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => srcImg_data_stream_0_full_n,
      I1 => ap_enable_reg_pp1_iter1_reg_n_0,
      I2 => \exitcond_i_reg_444_reg_n_0_[0]\,
      O => video_in_TREADY_INST_0_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_Mat2AXIvideo is
  port (
    video_out_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_user_V_fu_100_reg[0]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[0]_0\ : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    video_out_TVALID : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    Mat2AXIvideo_U0_ap_start : in STD_LOGIC;
    dstImg_data_stream_0_empty_n : in STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_Mat2AXIvideo : entity is "Mat2AXIvideo";
end img_cpy_0_Mat2AXIvideo;

architecture STRUCTURE of img_cpy_0_Mat2AXIvideo is
  signal \ap_CS_fsm[3]_i_2_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal \^ap_cs_fsm_reg[0]_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_done_INST_0_i_2_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter00 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_0 : STD_LOGIC;
  signal ap_reg_ioackin_video_out_TREADY_i_1_n_0 : STD_LOGIC;
  signal ap_reg_ioackin_video_out_TREADY_reg_n_0 : STD_LOGIC;
  signal \axi_last_V_reg_239[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_last_V_reg_239[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_last_V_reg_239[0]_i_3_n_0\ : STD_LOGIC;
  signal exitcond_fu_178_p2 : STD_LOGIC;
  signal \exitcond_reg_230[0]_i_1_n_0\ : STD_LOGIC;
  signal \exitcond_reg_230_reg_n_0_[0]\ : STD_LOGIC;
  signal i_V_fu_172_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal i_V_reg_225 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \i_V_reg_225[8]_i_2_n_0\ : STD_LOGIC;
  signal j_V_fu_184_p2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal t_V_1_reg_150 : STD_LOGIC;
  signal t_V_1_reg_1500 : STD_LOGIC;
  signal \t_V_1_reg_150[9]_i_4_n_0\ : STD_LOGIC;
  signal \t_V_1_reg_150[9]_i_6_n_0\ : STD_LOGIC;
  signal \t_V_1_reg_150[9]_i_7_n_0\ : STD_LOGIC;
  signal \t_V_1_reg_150_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal t_V_reg_139 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal t_V_reg_139_0 : STD_LOGIC;
  signal \tmp_user_V_fu_100[0]_i_1_n_0\ : STD_LOGIC;
  signal \^tmp_user_v_fu_100_reg[0]_0\ : STD_LOGIC;
  signal \^video_out_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^video_out_tuser\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1\ : label is "soft_lutpair27";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM of ap_done_INST_0 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of ap_done_INST_0_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of ap_idle_INST_0_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_last_V_reg_239[0]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \axi_last_V_reg_239[0]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \exitcond_reg_230[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i_V_reg_225[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i_V_reg_225[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i_V_reg_225[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i_V_reg_225[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i_V_reg_225[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i_V_reg_225[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \t_V_1_reg_150[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \t_V_1_reg_150[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \t_V_1_reg_150[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \t_V_1_reg_150[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \t_V_1_reg_150[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \t_V_1_reg_150[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \t_V_1_reg_150[9]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tmp_user_V_fu_100[0]_i_1\ : label is "soft_lutpair26";
begin
  \ap_CS_fsm_reg[0]_0\ <= \^ap_cs_fsm_reg[0]_0\;
  \tmp_user_V_fu_100_reg[0]_0\ <= \^tmp_user_v_fu_100_reg[0]_0\;
  video_out_TLAST(0) <= \^video_out_tlast\(0);
  video_out_TUSER(0) <= \^video_out_tuser\(0);
\ap_CS_fsm[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => Mat2AXIvideo_U0_ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => \^ap_cs_fsm_reg[0]_0\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => Mat2AXIvideo_U0_ap_start,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter00,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => \ap_CS_fsm[3]_i_2_n_0\,
      I3 => ap_CS_fsm_pp0_stage0,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_done_INST_0_i_2_n_0,
      I2 => t_V_reg_139(3),
      I3 => t_V_reg_139(5),
      I4 => t_V_reg_139(8),
      O => ap_enable_reg_pp0_iter00
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => \ap_CS_fsm[3]_i_2_n_0\,
      I2 => ap_enable_reg_pp0_iter0,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00570000FFFFFFFF"
    )
        port map (
      I0 => dstImg_data_stream_0_empty_n,
      I1 => video_out_TREADY,
      I2 => ap_reg_ioackin_video_out_TREADY_reg_n_0,
      I3 => \exitcond_reg_230_reg_n_0_[0]\,
      I4 => ap_enable_reg_pp0_iter1_reg_n_0,
      I5 => exitcond_fu_178_p2,
      O => \ap_CS_fsm[3]_i_2_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_pp0_stage0,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state5,
      R => ap_rst_n_inv
    );
ap_done_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[0]_0\,
      O => ap_done
    );
ap_done_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_done_INST_0_i_2_n_0,
      I2 => t_V_reg_139(3),
      I3 => t_V_reg_139(5),
      I4 => t_V_reg_139(8),
      O => \^ap_cs_fsm_reg[0]_0\
    );
ap_done_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => t_V_reg_139(0),
      I1 => t_V_reg_139(1),
      I2 => t_V_reg_139(4),
      I3 => t_V_reg_139(2),
      I4 => t_V_reg_139(7),
      I5 => t_V_reg_139(6),
      O => ap_done_INST_0_i_2_n_0
    );
ap_enable_reg_pp0_iter0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E000E0E0"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter00,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => ap_rst_n,
      I3 => \ap_CS_fsm[3]_i_2_n_0\,
      I4 => ap_CS_fsm_pp0_stage0,
      O => ap_enable_reg_pp0_iter0_i_1_n_0
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0_i_1_n_0,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F40404000000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter00,
      I1 => ap_enable_reg_pp0_iter1_reg_n_0,
      I2 => \t_V_1_reg_150[9]_i_4_n_0\,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => \ap_CS_fsm[3]_i_2_n_0\,
      I5 => ap_rst_n,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1_reg_n_0,
      R => '0'
    );
ap_idle_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => Mat2AXIvideo_U0_ap_start,
      O => ap_idle
    );
ap_reg_ioackin_video_out_TREADY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF000000000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_n_0,
      I1 => \exitcond_reg_230_reg_n_0_[0]\,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => dstImg_data_stream_0_empty_n,
      I4 => ap_rst_n,
      I5 => ap_reg_ioackin_video_out_TREADY_reg_n_0,
      O => ap_reg_ioackin_video_out_TREADY_i_1_n_0
    );
ap_reg_ioackin_video_out_TREADY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_reg_ioackin_video_out_TREADY_i_1_n_0,
      Q => ap_reg_ioackin_video_out_TREADY_reg_n_0,
      R => '0'
    );
\axi_last_V_reg_239[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888B8888888888"
    )
        port map (
      I0 => \^video_out_tlast\(0),
      I1 => \axi_last_V_reg_239[0]_i_2_n_0\,
      I2 => \t_V_1_reg_150_reg__0\(8),
      I3 => \t_V_1_reg_150_reg__0\(9),
      I4 => \t_V_1_reg_150_reg__0\(7),
      I5 => \axi_last_V_reg_239[0]_i_3_n_0\,
      O => \axi_last_V_reg_239[0]_i_1_n_0\
    );
\axi_last_V_reg_239[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => exitcond_fu_178_p2,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => \t_V_1_reg_150[9]_i_4_n_0\,
      O => \axi_last_V_reg_239[0]_i_2_n_0\
    );
\axi_last_V_reg_239[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(6),
      I1 => \t_V_1_reg_150[9]_i_6_n_0\,
      O => \axi_last_V_reg_239[0]_i_3_n_0\
    );
\axi_last_V_reg_239_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \axi_last_V_reg_239[0]_i_1_n_0\,
      Q => \^video_out_tlast\(0),
      R => '0'
    );
\exitcond_reg_230[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \exitcond_reg_230_reg_n_0_[0]\,
      I1 => \t_V_1_reg_150[9]_i_4_n_0\,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => exitcond_fu_178_p2,
      O => \exitcond_reg_230[0]_i_1_n_0\
    );
\exitcond_reg_230_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \exitcond_reg_230[0]_i_1_n_0\,
      Q => \exitcond_reg_230_reg_n_0_[0]\,
      R => '0'
    );
\i_V_reg_225[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_reg_139(0),
      O => i_V_fu_172_p2(0)
    );
\i_V_reg_225[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => t_V_reg_139(1),
      I1 => t_V_reg_139(0),
      O => i_V_fu_172_p2(1)
    );
\i_V_reg_225[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => t_V_reg_139(2),
      I1 => t_V_reg_139(1),
      I2 => t_V_reg_139(0),
      O => i_V_fu_172_p2(2)
    );
\i_V_reg_225[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => t_V_reg_139(3),
      I1 => t_V_reg_139(0),
      I2 => t_V_reg_139(1),
      I3 => t_V_reg_139(2),
      O => i_V_fu_172_p2(3)
    );
\i_V_reg_225[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => t_V_reg_139(4),
      I1 => t_V_reg_139(2),
      I2 => t_V_reg_139(1),
      I3 => t_V_reg_139(0),
      I4 => t_V_reg_139(3),
      O => i_V_fu_172_p2(4)
    );
\i_V_reg_225[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => t_V_reg_139(3),
      I1 => t_V_reg_139(0),
      I2 => t_V_reg_139(1),
      I3 => t_V_reg_139(2),
      I4 => t_V_reg_139(4),
      I5 => t_V_reg_139(5),
      O => i_V_fu_172_p2(5)
    );
\i_V_reg_225[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => t_V_reg_139(6),
      I1 => \i_V_reg_225[8]_i_2_n_0\,
      O => i_V_fu_172_p2(6)
    );
\i_V_reg_225[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => t_V_reg_139(7),
      I1 => \i_V_reg_225[8]_i_2_n_0\,
      I2 => t_V_reg_139(6),
      O => i_V_fu_172_p2(7)
    );
\i_V_reg_225[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => t_V_reg_139(8),
      I1 => t_V_reg_139(7),
      I2 => t_V_reg_139(6),
      I3 => \i_V_reg_225[8]_i_2_n_0\,
      O => i_V_fu_172_p2(8)
    );
\i_V_reg_225[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => t_V_reg_139(5),
      I1 => t_V_reg_139(4),
      I2 => t_V_reg_139(2),
      I3 => t_V_reg_139(1),
      I4 => t_V_reg_139(0),
      I5 => t_V_reg_139(3),
      O => \i_V_reg_225[8]_i_2_n_0\
    );
\i_V_reg_225_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_172_p2(0),
      Q => i_V_reg_225(0),
      R => '0'
    );
\i_V_reg_225_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_172_p2(1),
      Q => i_V_reg_225(1),
      R => '0'
    );
\i_V_reg_225_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_172_p2(2),
      Q => i_V_reg_225(2),
      R => '0'
    );
\i_V_reg_225_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_172_p2(3),
      Q => i_V_reg_225(3),
      R => '0'
    );
\i_V_reg_225_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_172_p2(4),
      Q => i_V_reg_225(4),
      R => '0'
    );
\i_V_reg_225_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_172_p2(5),
      Q => i_V_reg_225(5),
      R => '0'
    );
\i_V_reg_225_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_172_p2(6),
      Q => i_V_reg_225(6),
      R => '0'
    );
\i_V_reg_225_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_172_p2(7),
      Q => i_V_reg_225(7),
      R => '0'
    );
\i_V_reg_225_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_V_fu_172_p2(8),
      Q => i_V_reg_225(8),
      R => '0'
    );
\t_V_1_reg_150[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(0),
      O => j_V_fu_184_p2(0)
    );
\t_V_1_reg_150[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(1),
      I1 => \t_V_1_reg_150_reg__0\(0),
      O => j_V_fu_184_p2(1)
    );
\t_V_1_reg_150[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(2),
      I1 => \t_V_1_reg_150_reg__0\(1),
      I2 => \t_V_1_reg_150_reg__0\(0),
      O => j_V_fu_184_p2(2)
    );
\t_V_1_reg_150[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(3),
      I1 => \t_V_1_reg_150_reg__0\(0),
      I2 => \t_V_1_reg_150_reg__0\(1),
      I3 => \t_V_1_reg_150_reg__0\(2),
      O => j_V_fu_184_p2(3)
    );
\t_V_1_reg_150[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(4),
      I1 => \t_V_1_reg_150_reg__0\(2),
      I2 => \t_V_1_reg_150_reg__0\(1),
      I3 => \t_V_1_reg_150_reg__0\(0),
      I4 => \t_V_1_reg_150_reg__0\(3),
      O => j_V_fu_184_p2(4)
    );
\t_V_1_reg_150[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(5),
      I1 => \t_V_1_reg_150_reg__0\(3),
      I2 => \t_V_1_reg_150_reg__0\(0),
      I3 => \t_V_1_reg_150_reg__0\(1),
      I4 => \t_V_1_reg_150_reg__0\(2),
      I5 => \t_V_1_reg_150_reg__0\(4),
      O => j_V_fu_184_p2(5)
    );
\t_V_1_reg_150[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \t_V_1_reg_150[9]_i_6_n_0\,
      I1 => \t_V_1_reg_150_reg__0\(6),
      O => j_V_fu_184_p2(6)
    );
\t_V_1_reg_150[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(7),
      I1 => \t_V_1_reg_150[9]_i_6_n_0\,
      I2 => \t_V_1_reg_150_reg__0\(6),
      O => j_V_fu_184_p2(7)
    );
\t_V_1_reg_150[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(8),
      I1 => \t_V_1_reg_150_reg__0\(6),
      I2 => \t_V_1_reg_150[9]_i_6_n_0\,
      I3 => \t_V_1_reg_150_reg__0\(7),
      O => j_V_fu_184_p2(8)
    );
\t_V_1_reg_150[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => \t_V_1_reg_150[9]_i_4_n_0\,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => exitcond_fu_178_p2,
      I4 => ap_enable_reg_pp0_iter00,
      O => t_V_1_reg_150
    );
\t_V_1_reg_150[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => \t_V_1_reg_150[9]_i_4_n_0\,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => exitcond_fu_178_p2,
      O => t_V_1_reg_1500
    );
\t_V_1_reg_150[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(9),
      I1 => \t_V_1_reg_150_reg__0\(7),
      I2 => \t_V_1_reg_150[9]_i_6_n_0\,
      I3 => \t_V_1_reg_150_reg__0\(6),
      I4 => \t_V_1_reg_150_reg__0\(8),
      O => j_V_fu_184_p2(9)
    );
\t_V_1_reg_150[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00022222"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_n_0,
      I1 => \exitcond_reg_230_reg_n_0_[0]\,
      I2 => ap_reg_ioackin_video_out_TREADY_reg_n_0,
      I3 => video_out_TREADY,
      I4 => dstImg_data_stream_0_empty_n,
      O => \t_V_1_reg_150[9]_i_4_n_0\
    );
\t_V_1_reg_150[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(3),
      I1 => \t_V_1_reg_150_reg__0\(7),
      I2 => \t_V_1_reg_150_reg__0\(5),
      I3 => \t_V_1_reg_150_reg__0\(2),
      I4 => \t_V_1_reg_150[9]_i_7_n_0\,
      O => exitcond_fu_178_p2
    );
\t_V_1_reg_150[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(4),
      I1 => \t_V_1_reg_150_reg__0\(2),
      I2 => \t_V_1_reg_150_reg__0\(1),
      I3 => \t_V_1_reg_150_reg__0\(0),
      I4 => \t_V_1_reg_150_reg__0\(3),
      I5 => \t_V_1_reg_150_reg__0\(5),
      O => \t_V_1_reg_150[9]_i_6_n_0\
    );
\t_V_1_reg_150[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \t_V_1_reg_150_reg__0\(9),
      I1 => \t_V_1_reg_150_reg__0\(8),
      I2 => \t_V_1_reg_150_reg__0\(6),
      I3 => \t_V_1_reg_150_reg__0\(4),
      I4 => \t_V_1_reg_150_reg__0\(1),
      I5 => \t_V_1_reg_150_reg__0\(0),
      O => \t_V_1_reg_150[9]_i_7_n_0\
    );
\t_V_1_reg_150_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1500,
      D => j_V_fu_184_p2(0),
      Q => \t_V_1_reg_150_reg__0\(0),
      R => t_V_1_reg_150
    );
\t_V_1_reg_150_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1500,
      D => j_V_fu_184_p2(1),
      Q => \t_V_1_reg_150_reg__0\(1),
      R => t_V_1_reg_150
    );
\t_V_1_reg_150_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1500,
      D => j_V_fu_184_p2(2),
      Q => \t_V_1_reg_150_reg__0\(2),
      R => t_V_1_reg_150
    );
\t_V_1_reg_150_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1500,
      D => j_V_fu_184_p2(3),
      Q => \t_V_1_reg_150_reg__0\(3),
      R => t_V_1_reg_150
    );
\t_V_1_reg_150_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1500,
      D => j_V_fu_184_p2(4),
      Q => \t_V_1_reg_150_reg__0\(4),
      R => t_V_1_reg_150
    );
\t_V_1_reg_150_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1500,
      D => j_V_fu_184_p2(5),
      Q => \t_V_1_reg_150_reg__0\(5),
      R => t_V_1_reg_150
    );
\t_V_1_reg_150_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1500,
      D => j_V_fu_184_p2(6),
      Q => \t_V_1_reg_150_reg__0\(6),
      R => t_V_1_reg_150
    );
\t_V_1_reg_150_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1500,
      D => j_V_fu_184_p2(7),
      Q => \t_V_1_reg_150_reg__0\(7),
      R => t_V_1_reg_150
    );
\t_V_1_reg_150_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1500,
      D => j_V_fu_184_p2(8),
      Q => \t_V_1_reg_150_reg__0\(8),
      R => t_V_1_reg_150
    );
\t_V_1_reg_150_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_1500,
      D => j_V_fu_184_p2(9),
      Q => \t_V_1_reg_150_reg__0\(9),
      R => t_V_1_reg_150
    );
\t_V_reg_139[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Mat2AXIvideo_U0_ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state5,
      O => t_V_reg_139_0
    );
\t_V_reg_139_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_225(0),
      Q => t_V_reg_139(0),
      R => t_V_reg_139_0
    );
\t_V_reg_139_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_225(1),
      Q => t_V_reg_139(1),
      R => t_V_reg_139_0
    );
\t_V_reg_139_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_225(2),
      Q => t_V_reg_139(2),
      R => t_V_reg_139_0
    );
\t_V_reg_139_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_225(3),
      Q => t_V_reg_139(3),
      R => t_V_reg_139_0
    );
\t_V_reg_139_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_225(4),
      Q => t_V_reg_139(4),
      R => t_V_reg_139_0
    );
\t_V_reg_139_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_225(5),
      Q => t_V_reg_139(5),
      R => t_V_reg_139_0
    );
\t_V_reg_139_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_225(6),
      Q => t_V_reg_139(6),
      R => t_V_reg_139_0
    );
\t_V_reg_139_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_225(7),
      Q => t_V_reg_139(7),
      R => t_V_reg_139_0
    );
\t_V_reg_139_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_V_reg_225(8),
      Q => t_V_reg_139(8),
      R => t_V_reg_139_0
    );
\tmp_user_V_fu_100[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EA"
    )
        port map (
      I0 => \^video_out_tuser\(0),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => Mat2AXIvideo_U0_ap_start,
      I3 => \^tmp_user_v_fu_100_reg[0]_0\,
      O => \tmp_user_V_fu_100[0]_i_1_n_0\
    );
\tmp_user_V_fu_100[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E00000000000"
    )
        port map (
      I0 => video_out_TREADY,
      I1 => ap_reg_ioackin_video_out_TREADY_reg_n_0,
      I2 => dstImg_data_stream_0_empty_n,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => \exitcond_reg_230_reg_n_0_[0]\,
      I5 => ap_enable_reg_pp0_iter1_reg_n_0,
      O => \^tmp_user_v_fu_100_reg[0]_0\
    );
\tmp_user_V_fu_100_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_user_V_fu_100[0]_i_1_n_0\,
      Q => \^video_out_tuser\(0),
      R => '0'
    );
video_out_TVALID_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => ap_reg_ioackin_video_out_TREADY_reg_n_0,
      I1 => dstImg_data_stream_0_empty_n,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => \exitcond_reg_230_reg_n_0_[0]\,
      I4 => ap_enable_reg_pp0_iter1_reg_n_0,
      O => video_out_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_fifo_w10_d2_A is
  port (
    srcImg_rows_V_c6_full_n : out STD_LOGIC;
    srcImg_rows_V_c6_empty_n : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    \ap_CS_fsm_reg[0]\ : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_fifo_w10_d2_A : entity is "fifo_w10_d2_A";
end img_cpy_0_fifo_w10_d2_A;

architecture STRUCTURE of img_cpy_0_fifo_w10_d2_A is
  signal \internal_empty_n_i_1__1_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__2_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^srcimg_rows_v_c6_empty_n\ : STD_LOGIC;
  signal \^srcimg_rows_v_c6_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_2__2\ : label is "soft_lutpair37";
begin
  srcImg_rows_V_c6_empty_n <= \^srcimg_rows_v_c6_empty_n\;
  srcImg_rows_V_c6_full_n <= \^srcimg_rows_v_c6_full_n\;
\internal_empty_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => internal_full_n_reg_0,
      I3 => \ap_CS_fsm_reg[0]\,
      I4 => \^srcimg_rows_v_c6_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__1_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__1_n_0\,
      Q => \^srcimg_rows_v_c6_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE0FFFFFFF0FF"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => \^srcimg_rows_v_c6_full_n\,
      I3 => ap_rst_n,
      I4 => internal_full_n_reg_0,
      I5 => \ap_CS_fsm_reg[0]\,
      O => \internal_full_n_i_1__0_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__0_n_0\,
      Q => \^srcimg_rows_v_c6_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__1_n_0\
    );
\mOutPtr[1]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => internal_full_n_reg_0,
      I1 => \ap_CS_fsm_reg[0]\,
      I2 => \mOutPtr_reg_n_0_[1]\,
      I3 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[1]_i_2__2_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__1_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_2__2_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_fifo_w10_d2_A_2 is
  port (
    srcImg_rows_V_c_full_n : out STD_LOGIC;
    srcImg_rows_V_c_empty_n : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ap_CS_fsm_reg[0]\ : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    srcImg_cols_V_c_full_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_fifo_w10_d2_A_2 : entity is "fifo_w10_d2_A";
end img_cpy_0_fifo_w10_d2_A_2;

architecture STRUCTURE of img_cpy_0_fifo_w10_d2_A_2 is
  signal \internal_empty_n_i_1__3_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__2_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^srcimg_rows_v_c_empty_n\ : STD_LOGIC;
  signal \^srcimg_rows_v_c_full_n\ : STD_LOGIC;
begin
  srcImg_rows_V_c_empty_n <= \^srcimg_rows_v_c_empty_n\;
  srcImg_rows_V_c_full_n <= \^srcimg_rows_v_c_full_n\;
\internal_empty_n_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => \ap_CS_fsm_reg[0]\,
      I3 => internal_full_n_reg_0,
      I4 => \^srcimg_rows_v_c_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__3_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__3_n_0\,
      Q => \^srcimg_rows_v_c_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE0FFFFFFF0FF"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => \^srcimg_rows_v_c_full_n\,
      I3 => ap_rst_n,
      I4 => \ap_CS_fsm_reg[0]\,
      I5 => internal_full_n_reg_0,
      O => \internal_full_n_i_1__2_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__2_n_0\,
      Q => \^srcimg_rows_v_c_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F0080FF80FF7F00"
    )
        port map (
      I0 => srcImg_cols_V_c_full_n,
      I1 => \^srcimg_rows_v_c_full_n\,
      I2 => ap_start,
      I3 => \ap_CS_fsm_reg[0]\,
      I4 => \mOutPtr_reg_n_0_[1]\,
      I5 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[1]_i_2__0_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_2__0_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_fifo_w11_d2_A is
  port (
    srcImg_cols_V_c7_full_n : out STD_LOGIC;
    srcImg_cols_V_c7_empty_n : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    \ap_CS_fsm_reg[0]\ : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_fifo_w11_d2_A : entity is "fifo_w11_d2_A";
end img_cpy_0_fifo_w11_d2_A;

architecture STRUCTURE of img_cpy_0_fifo_w11_d2_A is
  signal \internal_empty_n_i_1__0_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__1_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^srcimg_cols_v_c7_empty_n\ : STD_LOGIC;
  signal \^srcimg_cols_v_c7_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__2\ : label is "soft_lutpair36";
begin
  srcImg_cols_V_c7_empty_n <= \^srcimg_cols_v_c7_empty_n\;
  srcImg_cols_V_c7_full_n <= \^srcimg_cols_v_c7_full_n\;
\internal_empty_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => internal_full_n_reg_0,
      I3 => \ap_CS_fsm_reg[0]\,
      I4 => \^srcimg_cols_v_c7_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__0_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__0_n_0\,
      Q => \^srcimg_cols_v_c7_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE0FFFFFFF0FF"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => \^srcimg_cols_v_c7_full_n\,
      I3 => ap_rst_n,
      I4 => internal_full_n_reg_0,
      I5 => \ap_CS_fsm_reg[0]\,
      O => \internal_full_n_i_1__1_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__1_n_0\,
      Q => \^srcimg_cols_v_c7_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__2_n_0\
    );
\mOutPtr[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => internal_full_n_reg_0,
      I1 => \ap_CS_fsm_reg[0]\,
      I2 => \mOutPtr_reg_n_0_[1]\,
      I3 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[1]_i_1__2_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__2_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1__2_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_fifo_w11_d2_A_0 is
  port (
    srcImg_cols_V_c_full_n : out STD_LOGIC;
    srcImg_cols_V_c_empty_n : out STD_LOGIC;
    internal_full_n_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ap_CS_fsm_reg[0]\ : in STD_LOGIC;
    srcImg_rows_V_c_full_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_fifo_w11_d2_A_0 : entity is "fifo_w11_d2_A";
end img_cpy_0_fifo_w11_d2_A_0;

architecture STRUCTURE of img_cpy_0_fifo_w11_d2_A_0 is
  signal \internal_empty_n_i_1__2_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__3_n_0\ : STD_LOGIC;
  signal \^internal_full_n_reg_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^srcimg_cols_v_c_empty_n\ : STD_LOGIC;
  signal \^srcimg_cols_v_c_full_n\ : STD_LOGIC;
begin
  internal_full_n_reg_0 <= \^internal_full_n_reg_0\;
  srcImg_cols_V_c_empty_n <= \^srcimg_cols_v_c_empty_n\;
  srcImg_cols_V_c_full_n <= \^srcimg_cols_v_c_full_n\;
\internal_empty_n_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => \ap_CS_fsm_reg[0]\,
      I3 => \^internal_full_n_reg_0\,
      I4 => \^srcimg_cols_v_c_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__2_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__2_n_0\,
      Q => \^srcimg_cols_v_c_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE0FFFFFFF0FF"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[1]\,
      I1 => \mOutPtr_reg_n_0_[0]\,
      I2 => \^srcimg_cols_v_c_full_n\,
      I3 => ap_rst_n,
      I4 => \ap_CS_fsm_reg[0]\,
      I5 => \^internal_full_n_reg_0\,
      O => \internal_full_n_i_1__3_n_0\
    );
\internal_full_n_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^srcimg_cols_v_c_full_n\,
      I1 => srcImg_rows_V_c_full_n,
      I2 => ap_start,
      O => \^internal_full_n_reg_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__3_n_0\,
      Q => \^srcimg_cols_v_c_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1__0_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F0080FF80FF7F00"
    )
        port map (
      I0 => \^srcimg_cols_v_c_full_n\,
      I1 => srcImg_rows_V_c_full_n,
      I2 => ap_start,
      I3 => \ap_CS_fsm_reg[0]\,
      I4 => \mOutPtr_reg_n_0_[1]\,
      I5 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__0_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_fifo_w8_d2_A_shiftReg is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \mOutPtr_reg[0]\ : in STD_LOGIC;
    \mOutPtr_reg[1]\ : in STD_LOGIC;
    ap_enable_reg_pp1_iter0_reg : in STD_LOGIC;
    \tmp_reg_457_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_fifo_w8_d2_A_shiftReg : entity is "fifo_w8_d2_A_shiftReg";
end img_cpy_0_fifo_w8_d2_A_shiftReg;

architecture STRUCTURE of img_cpy_0_fifo_w8_d2_A_shiftReg is
  signal \SRL_SIG_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][7]\ : STD_LOGIC;
begin
\SRL_SIG[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][0]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][0]\,
      O => D(0)
    );
\SRL_SIG[0][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][1]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][1]\,
      O => D(1)
    );
\SRL_SIG[0][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][2]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][2]\,
      O => D(2)
    );
\SRL_SIG[0][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][3]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][3]\,
      O => D(3)
    );
\SRL_SIG[0][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][4]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][4]\,
      O => D(4)
    );
\SRL_SIG[0][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][5]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][5]\,
      O => D(5)
    );
\SRL_SIG[0][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][6]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][6]\,
      O => D(6)
    );
\SRL_SIG[0][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][7]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][7]\,
      O => D(7)
    );
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \tmp_reg_457_reg[7]\(0),
      Q => \SRL_SIG_reg_n_0_[0][0]\,
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \tmp_reg_457_reg[7]\(1),
      Q => \SRL_SIG_reg_n_0_[0][1]\,
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \tmp_reg_457_reg[7]\(2),
      Q => \SRL_SIG_reg_n_0_[0][2]\,
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \tmp_reg_457_reg[7]\(3),
      Q => \SRL_SIG_reg_n_0_[0][3]\,
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \tmp_reg_457_reg[7]\(4),
      Q => \SRL_SIG_reg_n_0_[0][4]\,
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \tmp_reg_457_reg[7]\(5),
      Q => \SRL_SIG_reg_n_0_[0][5]\,
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \tmp_reg_457_reg[7]\(6),
      Q => \SRL_SIG_reg_n_0_[0][6]\,
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \tmp_reg_457_reg[7]\(7),
      Q => \SRL_SIG_reg_n_0_[0][7]\,
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \SRL_SIG_reg_n_0_[0][0]\,
      Q => \SRL_SIG_reg_n_0_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \SRL_SIG_reg_n_0_[0][1]\,
      Q => \SRL_SIG_reg_n_0_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \SRL_SIG_reg_n_0_[0][2]\,
      Q => \SRL_SIG_reg_n_0_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \SRL_SIG_reg_n_0_[0][3]\,
      Q => \SRL_SIG_reg_n_0_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \SRL_SIG_reg_n_0_[0][4]\,
      Q => \SRL_SIG_reg_n_0_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \SRL_SIG_reg_n_0_[0][5]\,
      Q => \SRL_SIG_reg_n_0_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \SRL_SIG_reg_n_0_[0][6]\,
      Q => \SRL_SIG_reg_n_0_[1][6]\,
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp1_iter0_reg,
      D => \SRL_SIG_reg_n_0_[0][7]\,
      Q => \SRL_SIG_reg_n_0_[1][7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_fifo_w8_d2_A_shiftReg_3 is
  port (
    video_out_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \mOutPtr_reg[0]\ : in STD_LOGIC;
    \mOutPtr_reg[1]\ : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_fifo_w8_d2_A_shiftReg_3 : entity is "fifo_w8_d2_A_shiftReg";
end img_cpy_0_fifo_w8_d2_A_shiftReg_3;

architecture STRUCTURE of img_cpy_0_fifo_w8_d2_A_shiftReg_3 is
  signal \SRL_SIG_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_0_[1][7]\ : STD_LOGIC;
begin
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(0),
      Q => \SRL_SIG_reg_n_0_[0][0]\,
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(1),
      Q => \SRL_SIG_reg_n_0_[0][1]\,
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(2),
      Q => \SRL_SIG_reg_n_0_[0][2]\,
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(3),
      Q => \SRL_SIG_reg_n_0_[0][3]\,
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(4),
      Q => \SRL_SIG_reg_n_0_[0][4]\,
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(5),
      Q => \SRL_SIG_reg_n_0_[0][5]\,
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(6),
      Q => \SRL_SIG_reg_n_0_[0][6]\,
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(7),
      Q => \SRL_SIG_reg_n_0_[0][7]\,
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][0]\,
      Q => \SRL_SIG_reg_n_0_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][1]\,
      Q => \SRL_SIG_reg_n_0_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][2]\,
      Q => \SRL_SIG_reg_n_0_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][3]\,
      Q => \SRL_SIG_reg_n_0_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][4]\,
      Q => \SRL_SIG_reg_n_0_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][5]\,
      Q => \SRL_SIG_reg_n_0_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][6]\,
      Q => \SRL_SIG_reg_n_0_[1][6]\,
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => \SRL_SIG_reg_n_0_[0][7]\,
      Q => \SRL_SIG_reg_n_0_[1][7]\,
      R => '0'
    );
\video_out_TDATA[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][0]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][0]\,
      O => video_out_TDATA(0)
    );
\video_out_TDATA[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][1]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][1]\,
      O => video_out_TDATA(1)
    );
\video_out_TDATA[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][2]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][2]\,
      O => video_out_TDATA(2)
    );
\video_out_TDATA[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][3]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][3]\,
      O => video_out_TDATA(3)
    );
\video_out_TDATA[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][4]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][4]\,
      O => video_out_TDATA(4)
    );
\video_out_TDATA[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][5]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][5]\,
      O => video_out_TDATA(5)
    );
\video_out_TDATA[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][6]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][6]\,
      O => video_out_TDATA(6)
    );
\video_out_TDATA[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SRL_SIG_reg_n_0_[1][7]\,
      I1 => \mOutPtr_reg[0]\,
      I2 => \mOutPtr_reg[1]\,
      I3 => \SRL_SIG_reg_n_0_[0][7]\,
      O => video_out_TDATA(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_img_cpy_opr is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    start_once_reg_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    internal_full_n_reg : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    shiftReg_ce : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \ap_CS_fsm_reg[0]_0\ : in STD_LOGIC;
    img_cpy_opr_U0_ap_start : in STD_LOGIC;
    start_for_Mat2AXIvideo_U0_full_n : in STD_LOGIC;
    srcImg_rows_V_c6_empty_n : in STD_LOGIC;
    srcImg_cols_V_c7_empty_n : in STD_LOGIC;
    srcImg_data_stream_0_empty_n : in STD_LOGIC;
    dstImg_data_stream_0_full_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_img_cpy_opr : entity is "img_cpy_opr";
end img_cpy_0_img_cpy_opr;

architecture STRUCTURE of img_cpy_0_img_cpy_opr is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ap_CS_fsm[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal exitcond1_fu_152_p2_carry_i_1_n_0 : STD_LOGIC;
  signal exitcond1_fu_152_p2_carry_i_2_n_0 : STD_LOGIC;
  signal exitcond1_fu_152_p2_carry_i_3_n_0 : STD_LOGIC;
  signal exitcond1_fu_152_p2_carry_i_4_n_0 : STD_LOGIC;
  signal exitcond1_fu_152_p2_carry_n_1 : STD_LOGIC;
  signal exitcond1_fu_152_p2_carry_n_2 : STD_LOGIC;
  signal exitcond1_fu_152_p2_carry_n_3 : STD_LOGIC;
  signal \exitcond_fu_163_p2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \exitcond_fu_163_p2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \exitcond_fu_163_p2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \^moutptr_reg[0]\ : STD_LOGIC;
  signal \^shiftreg_ce\ : STD_LOGIC;
  signal \start_once_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \^start_once_reg_reg_0\ : STD_LOGIC;
  signal x_i_reg_1330 : STD_LOGIC;
  signal \x_i_reg_133[0]_i_3_n_0\ : STD_LOGIC;
  signal x_i_reg_133_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \x_i_reg_133_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \x_i_reg_133_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \x_i_reg_133_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \x_i_reg_133_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \x_i_reg_133_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \x_i_reg_133_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \x_i_reg_133_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \x_i_reg_133_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \x_i_reg_133_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \x_i_reg_133_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \x_i_reg_133_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \x_i_reg_133_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \x_i_reg_133_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \x_i_reg_133_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \x_i_reg_133_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \x_i_reg_133_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \x_i_reg_133_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \x_i_reg_133_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \x_i_reg_133_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \x_i_reg_133_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \x_i_reg_133_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \x_i_reg_133_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \x_i_reg_133_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal y_fu_157_p2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal y_i_reg_122 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal y_i_reg_122_0 : STD_LOGIC;
  signal y_reg_187 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \y_reg_187_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \y_reg_187_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \y_reg_187_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg_187_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \y_reg_187_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \y_reg_187_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \y_reg_187_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \y_reg_187_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \y_reg_187_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \y_reg_187_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal NLW_exitcond1_fu_152_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_exitcond_fu_163_p2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_x_i_reg_133_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y_reg_187_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_reg_187_reg[11]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1__0\ : label is "soft_lutpair33";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM of internal_empty_n_i_2 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of internal_full_n_i_2 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \start_once_reg_i_1__0\ : label is "soft_lutpair34";
begin
  CO(0) <= \^co\(0);
  Q(2 downto 0) <= \^q\(2 downto 0);
  \ap_CS_fsm_reg[2]_0\(0) <= \^ap_cs_fsm_reg[2]_0\(0);
  \mOutPtr_reg[0]\ <= \^moutptr_reg[0]\;
  shiftReg_ce <= \^shiftreg_ce\;
  start_once_reg_reg_0 <= \^start_once_reg_reg_0\;
\SRL_SIG[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[2]_0\(0),
      I1 => srcImg_data_stream_0_empty_n,
      I2 => \^q\(2),
      I3 => dstImg_data_stream_0_full_n,
      O => \^shiftreg_ce\
    );
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EE0C"
    )
        port map (
      I0 => \^co\(0),
      I1 => \^q\(0),
      I2 => \^moutptr_reg[0]\,
      I3 => \^q\(1),
      O => \ap_CS_fsm[0]_i_1__0_n_0\
    );
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22223000"
    )
        port map (
      I0 => \^moutptr_reg[0]\,
      I1 => \^q\(1),
      I2 => \^ap_cs_fsm_reg[2]_0\(0),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => \ap_CS_fsm[1]_i_1__0_n_0\
    );
\ap_CS_fsm[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000000000000000"
    )
        port map (
      I0 => start_for_Mat2AXIvideo_U0_full_n,
      I1 => \^start_once_reg_reg_0\,
      I2 => img_cpy_opr_U0_ap_start,
      I3 => \^q\(0),
      I4 => srcImg_rows_V_c6_empty_n,
      I5 => srcImg_cols_V_c7_empty_n,
      O => \^moutptr_reg[0]\
    );
\ap_CS_fsm[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10131313"
    )
        port map (
      I0 => \^co\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^ap_cs_fsm_reg[2]_0\(0),
      I4 => \^q\(2),
      O => \ap_CS_fsm[2]_i_1__0_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => ap_rst_n_inv
    );
exitcond1_fu_152_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^co\(0),
      CO(2) => exitcond1_fu_152_p2_carry_n_1,
      CO(1) => exitcond1_fu_152_p2_carry_n_2,
      CO(0) => exitcond1_fu_152_p2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_exitcond1_fu_152_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => exitcond1_fu_152_p2_carry_i_1_n_0,
      S(2) => exitcond1_fu_152_p2_carry_i_2_n_0,
      S(1) => exitcond1_fu_152_p2_carry_i_3_n_0,
      S(0) => exitcond1_fu_152_p2_carry_i_4_n_0
    );
exitcond1_fu_152_p2_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => y_i_reg_122(11),
      I1 => y_i_reg_122(10),
      I2 => y_i_reg_122(9),
      O => exitcond1_fu_152_p2_carry_i_1_n_0
    );
exitcond1_fu_152_p2_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => y_i_reg_122(6),
      I1 => y_i_reg_122(8),
      I2 => y_i_reg_122(7),
      O => exitcond1_fu_152_p2_carry_i_2_n_0
    );
exitcond1_fu_152_p2_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => y_i_reg_122(3),
      I1 => y_i_reg_122(5),
      I2 => y_i_reg_122(4),
      O => exitcond1_fu_152_p2_carry_i_3_n_0
    );
exitcond1_fu_152_p2_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => y_i_reg_122(0),
      I1 => y_i_reg_122(2),
      I2 => y_i_reg_122(1),
      O => exitcond1_fu_152_p2_carry_i_4_n_0
    );
\exitcond_fu_163_p2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^ap_cs_fsm_reg[2]_0\(0),
      CO(2) => \exitcond_fu_163_p2_inferred__0/i__carry_n_1\,
      CO(1) => \exitcond_fu_163_p2_inferred__0/i__carry_n_2\,
      CO(0) => \exitcond_fu_163_p2_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_exitcond_fu_163_p2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => x_i_reg_133_reg(10),
      I1 => x_i_reg_133_reg(9),
      I2 => x_i_reg_133_reg(11),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => x_i_reg_133_reg(6),
      I1 => x_i_reg_133_reg(7),
      I2 => x_i_reg_133_reg(8),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => x_i_reg_133_reg(5),
      I1 => x_i_reg_133_reg(4),
      I2 => x_i_reg_133_reg(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => x_i_reg_133_reg(0),
      I1 => x_i_reg_133_reg(2),
      I2 => x_i_reg_133_reg(1),
      O => \i__carry_i_4__0_n_0\
    );
internal_empty_n_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^co\(0),
      O => internal_empty_n_reg
    );
internal_full_n_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_cpy_opr_U0_ap_start,
      I1 => \^co\(0),
      I2 => \^q\(1),
      O => internal_full_n_reg
    );
\mOutPtr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^moutptr_reg[0]\,
      I1 => \ap_CS_fsm_reg[0]_0\,
      O => E(0)
    );
\start_once_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77707700"
    )
        port map (
      I0 => \^co\(0),
      I1 => \^q\(1),
      I2 => start_for_Mat2AXIvideo_U0_full_n,
      I3 => \^start_once_reg_reg_0\,
      I4 => img_cpy_opr_U0_ap_start,
      O => \start_once_reg_i_1__0_n_0\
    );
start_once_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \start_once_reg_i_1__0_n_0\,
      Q => \^start_once_reg_reg_0\,
      R => ap_rst_n_inv
    );
\x_i_reg_133[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^co\(0),
      O => x_i_reg_1330
    );
\x_i_reg_133[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_i_reg_133_reg(0),
      O => \x_i_reg_133[0]_i_3_n_0\
    );
\x_i_reg_133_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \x_i_reg_133_reg[0]_i_2_n_7\,
      Q => x_i_reg_133_reg(0),
      R => x_i_reg_1330
    );
\x_i_reg_133_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \x_i_reg_133_reg[0]_i_2_n_0\,
      CO(2) => \x_i_reg_133_reg[0]_i_2_n_1\,
      CO(1) => \x_i_reg_133_reg[0]_i_2_n_2\,
      CO(0) => \x_i_reg_133_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \x_i_reg_133_reg[0]_i_2_n_4\,
      O(2) => \x_i_reg_133_reg[0]_i_2_n_5\,
      O(1) => \x_i_reg_133_reg[0]_i_2_n_6\,
      O(0) => \x_i_reg_133_reg[0]_i_2_n_7\,
      S(3 downto 1) => x_i_reg_133_reg(3 downto 1),
      S(0) => \x_i_reg_133[0]_i_3_n_0\
    );
\x_i_reg_133_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \x_i_reg_133_reg[8]_i_1_n_5\,
      Q => x_i_reg_133_reg(10),
      R => x_i_reg_1330
    );
\x_i_reg_133_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \x_i_reg_133_reg[8]_i_1_n_4\,
      Q => x_i_reg_133_reg(11),
      R => x_i_reg_1330
    );
\x_i_reg_133_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \x_i_reg_133_reg[0]_i_2_n_6\,
      Q => x_i_reg_133_reg(1),
      R => x_i_reg_1330
    );
\x_i_reg_133_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \x_i_reg_133_reg[0]_i_2_n_5\,
      Q => x_i_reg_133_reg(2),
      R => x_i_reg_1330
    );
\x_i_reg_133_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \x_i_reg_133_reg[0]_i_2_n_4\,
      Q => x_i_reg_133_reg(3),
      R => x_i_reg_1330
    );
\x_i_reg_133_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \x_i_reg_133_reg[4]_i_1_n_7\,
      Q => x_i_reg_133_reg(4),
      R => x_i_reg_1330
    );
\x_i_reg_133_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_i_reg_133_reg[0]_i_2_n_0\,
      CO(3) => \x_i_reg_133_reg[4]_i_1_n_0\,
      CO(2) => \x_i_reg_133_reg[4]_i_1_n_1\,
      CO(1) => \x_i_reg_133_reg[4]_i_1_n_2\,
      CO(0) => \x_i_reg_133_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \x_i_reg_133_reg[4]_i_1_n_4\,
      O(2) => \x_i_reg_133_reg[4]_i_1_n_5\,
      O(1) => \x_i_reg_133_reg[4]_i_1_n_6\,
      O(0) => \x_i_reg_133_reg[4]_i_1_n_7\,
      S(3 downto 0) => x_i_reg_133_reg(7 downto 4)
    );
\x_i_reg_133_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \x_i_reg_133_reg[4]_i_1_n_6\,
      Q => x_i_reg_133_reg(5),
      R => x_i_reg_1330
    );
\x_i_reg_133_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \x_i_reg_133_reg[4]_i_1_n_5\,
      Q => x_i_reg_133_reg(6),
      R => x_i_reg_1330
    );
\x_i_reg_133_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \x_i_reg_133_reg[4]_i_1_n_4\,
      Q => x_i_reg_133_reg(7),
      R => x_i_reg_1330
    );
\x_i_reg_133_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \x_i_reg_133_reg[8]_i_1_n_7\,
      Q => x_i_reg_133_reg(8),
      R => x_i_reg_1330
    );
\x_i_reg_133_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_i_reg_133_reg[4]_i_1_n_0\,
      CO(3) => \NLW_x_i_reg_133_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \x_i_reg_133_reg[8]_i_1_n_1\,
      CO(1) => \x_i_reg_133_reg[8]_i_1_n_2\,
      CO(0) => \x_i_reg_133_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \x_i_reg_133_reg[8]_i_1_n_4\,
      O(2) => \x_i_reg_133_reg[8]_i_1_n_5\,
      O(1) => \x_i_reg_133_reg[8]_i_1_n_6\,
      O(0) => \x_i_reg_133_reg[8]_i_1_n_7\,
      S(3 downto 0) => x_i_reg_133_reg(11 downto 8)
    );
\x_i_reg_133_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^shiftreg_ce\,
      D => \x_i_reg_133_reg[8]_i_1_n_6\,
      Q => x_i_reg_133_reg(9),
      R => x_i_reg_1330
    );
\y_i_reg_122[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^moutptr_reg[0]\,
      I1 => \^q\(2),
      I2 => \^ap_cs_fsm_reg[2]_0\(0),
      O => y_i_reg_122_0
    );
\y_i_reg_122[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[2]_0\(0),
      I1 => \^q\(2),
      O => ap_NS_fsm1
    );
\y_i_reg_122_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => y_reg_187(0),
      Q => y_i_reg_122(0),
      R => y_i_reg_122_0
    );
\y_i_reg_122_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => y_reg_187(10),
      Q => y_i_reg_122(10),
      R => y_i_reg_122_0
    );
\y_i_reg_122_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => y_reg_187(11),
      Q => y_i_reg_122(11),
      R => y_i_reg_122_0
    );
\y_i_reg_122_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => y_reg_187(1),
      Q => y_i_reg_122(1),
      R => y_i_reg_122_0
    );
\y_i_reg_122_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => y_reg_187(2),
      Q => y_i_reg_122(2),
      R => y_i_reg_122_0
    );
\y_i_reg_122_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => y_reg_187(3),
      Q => y_i_reg_122(3),
      R => y_i_reg_122_0
    );
\y_i_reg_122_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => y_reg_187(4),
      Q => y_i_reg_122(4),
      R => y_i_reg_122_0
    );
\y_i_reg_122_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => y_reg_187(5),
      Q => y_i_reg_122(5),
      R => y_i_reg_122_0
    );
\y_i_reg_122_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => y_reg_187(6),
      Q => y_i_reg_122(6),
      R => y_i_reg_122_0
    );
\y_i_reg_122_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => y_reg_187(7),
      Q => y_i_reg_122(7),
      R => y_i_reg_122_0
    );
\y_i_reg_122_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => y_reg_187(8),
      Q => y_i_reg_122(8),
      R => y_i_reg_122_0
    );
\y_i_reg_122_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => y_reg_187(9),
      Q => y_i_reg_122(9),
      R => y_i_reg_122_0
    );
\y_reg_187[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_i_reg_122(0),
      O => y_fu_157_p2(0)
    );
\y_reg_187_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^q\(1),
      D => y_fu_157_p2(0),
      Q => y_reg_187(0),
      R => '0'
    );
\y_reg_187_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^q\(1),
      D => y_fu_157_p2(10),
      Q => y_reg_187(10),
      R => '0'
    );
\y_reg_187_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^q\(1),
      D => y_fu_157_p2(11),
      Q => y_reg_187(11),
      R => '0'
    );
\y_reg_187_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_reg_187_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_y_reg_187_reg[11]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_reg_187_reg[11]_i_1_n_2\,
      CO(0) => \y_reg_187_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_y_reg_187_reg[11]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => y_fu_157_p2(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => y_i_reg_122(11 downto 9)
    );
\y_reg_187_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^q\(1),
      D => y_fu_157_p2(1),
      Q => y_reg_187(1),
      R => '0'
    );
\y_reg_187_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^q\(1),
      D => y_fu_157_p2(2),
      Q => y_reg_187(2),
      R => '0'
    );
\y_reg_187_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^q\(1),
      D => y_fu_157_p2(3),
      Q => y_reg_187(3),
      R => '0'
    );
\y_reg_187_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^q\(1),
      D => y_fu_157_p2(4),
      Q => y_reg_187(4),
      R => '0'
    );
\y_reg_187_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_reg_187_reg[4]_i_1_n_0\,
      CO(2) => \y_reg_187_reg[4]_i_1_n_1\,
      CO(1) => \y_reg_187_reg[4]_i_1_n_2\,
      CO(0) => \y_reg_187_reg[4]_i_1_n_3\,
      CYINIT => y_i_reg_122(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_fu_157_p2(4 downto 1),
      S(3 downto 0) => y_i_reg_122(4 downto 1)
    );
\y_reg_187_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^q\(1),
      D => y_fu_157_p2(5),
      Q => y_reg_187(5),
      R => '0'
    );
\y_reg_187_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^q\(1),
      D => y_fu_157_p2(6),
      Q => y_reg_187(6),
      R => '0'
    );
\y_reg_187_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^q\(1),
      D => y_fu_157_p2(7),
      Q => y_reg_187(7),
      R => '0'
    );
\y_reg_187_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^q\(1),
      D => y_fu_157_p2(8),
      Q => y_reg_187(8),
      R => '0'
    );
\y_reg_187_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_reg_187_reg[4]_i_1_n_0\,
      CO(3) => \y_reg_187_reg[8]_i_1_n_0\,
      CO(2) => \y_reg_187_reg[8]_i_1_n_1\,
      CO(1) => \y_reg_187_reg[8]_i_1_n_2\,
      CO(0) => \y_reg_187_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_fu_157_p2(8 downto 5),
      S(3 downto 0) => y_i_reg_122(8 downto 5)
    );
\y_reg_187_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^q\(1),
      D => y_fu_157_p2(9),
      Q => y_reg_187(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_start_for_Mat2AXIcud is
  port (
    start_for_Mat2AXIvideo_U0_full_n : out STD_LOGIC;
    Mat2AXIvideo_U0_ap_start : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    img_cpy_opr_U0_ap_start : in STD_LOGIC;
    start_once_reg_reg : in STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_start_for_Mat2AXIcud : entity is "start_for_Mat2AXIcud";
end img_cpy_0_start_for_Mat2AXIcud;

architecture STRUCTURE of img_cpy_0_start_for_Mat2AXIcud is
  signal \^mat2axivideo_u0_ap_start\ : STD_LOGIC;
  signal \internal_empty_n_i_1__5_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__5_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_2__0_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^start_for_mat2axivideo_u0_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_full_n_i_2__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1\ : label is "soft_lutpair38";
begin
  Mat2AXIvideo_U0_ap_start <= \^mat2axivideo_u0_ap_start\;
  start_for_Mat2AXIvideo_U0_full_n <= \^start_for_mat2axivideo_u0_full_n\;
\internal_empty_n_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888CCCC88808888"
    )
        port map (
      I0 => \^mat2axivideo_u0_ap_start\,
      I1 => ap_rst_n,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => \mOutPtr_reg_n_0_[1]\,
      I4 => \mOutPtr[1]_i_2__1_n_0\,
      I5 => \internal_full_n_i_2__0_n_0\,
      O => \internal_empty_n_i_1__5_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__5_n_0\,
      Q => \^mat2axivideo_u0_ap_start\,
      R => '0'
    );
\internal_full_n_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFDDD5DDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^start_for_mat2axivideo_u0_full_n\,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => \mOutPtr_reg_n_0_[1]\,
      I4 => \internal_full_n_i_2__0_n_0\,
      I5 => \mOutPtr[1]_i_2__1_n_0\,
      O => \internal_full_n_i_1__5_n_0\
    );
\internal_full_n_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^start_for_mat2axivideo_u0_full_n\,
      I1 => img_cpy_opr_U0_ap_start,
      I2 => start_once_reg_reg,
      O => \internal_full_n_i_2__0_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__5_n_0\,
      Q => \^start_for_mat2axivideo_u0_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5595AA6A"
    )
        port map (
      I0 => \mOutPtr[1]_i_2__1_n_0\,
      I1 => \^start_for_mat2axivideo_u0_full_n\,
      I2 => img_cpy_opr_U0_ap_start,
      I3 => start_once_reg_reg,
      I4 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAADFFF45552000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => start_once_reg_reg,
      I2 => img_cpy_opr_U0_ap_start,
      I3 => \^start_for_mat2axivideo_u0_full_n\,
      I4 => \mOutPtr[1]_i_2__1_n_0\,
      I5 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr[1]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mat2axivideo_u0_ap_start\,
      I1 => \ap_CS_fsm_reg[1]\,
      O => \mOutPtr[1]_i_2__1_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[0]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[1]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_start_for_img_cpybkb is
  port (
    start_for_img_cpy_opr_U0_full_n : out STD_LOGIC;
    img_cpy_opr_U0_ap_start : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    start_once_reg_reg : in STD_LOGIC;
    start_for_Mat2AXIvideo_U0_full_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_once_reg_reg_0 : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_start_for_img_cpybkb : entity is "start_for_img_cpybkb";
end img_cpy_0_start_for_img_cpybkb;

architecture STRUCTURE of img_cpy_0_start_for_img_cpybkb is
  signal \^img_cpy_opr_u0_ap_start\ : STD_LOGIC;
  signal internal_empty_n_i_1_n_0 : STD_LOGIC;
  signal internal_full_n_i_1_n_0 : STD_LOGIC;
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^start_for_img_cpy_opr_u0_full_n\ : STD_LOGIC;
begin
  img_cpy_opr_U0_ap_start <= \^img_cpy_opr_u0_ap_start\;
  start_for_img_cpy_opr_U0_full_n <= \^start_for_img_cpy_opr_u0_full_n\;
ap_idle_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^img_cpy_opr_u0_ap_start\,
      I1 => start_once_reg_reg,
      I2 => start_for_Mat2AXIvideo_U0_full_n,
      O => ap_idle
    );
internal_empty_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFF0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => \ap_CS_fsm_reg[1]\,
      I3 => \mOutPtr[1]_i_2_n_0\,
      I4 => \^img_cpy_opr_u0_ap_start\,
      I5 => ap_rst_n,
      O => internal_empty_n_i_1_n_0
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_empty_n_i_1_n_0,
      Q => \^img_cpy_opr_u0_ap_start\,
      R => '0'
    );
internal_full_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFDDD5DDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^start_for_img_cpy_opr_u0_full_n\,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => \mOutPtr_reg_n_0_[1]\,
      I4 => \mOutPtr[1]_i_2_n_0\,
      I5 => internal_empty_n_reg_0,
      O => internal_full_n_i_1_n_0
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_full_n_i_1_n_0,
      Q => \^start_for_img_cpy_opr_u0_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EEEEEEEE1111111"
    )
        port map (
      I0 => start_once_reg,
      I1 => start_once_reg_reg_0,
      I2 => \^img_cpy_opr_u0_ap_start\,
      I3 => CO(0),
      I4 => Q(0),
      I5 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D555BFFF2AAA4000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => CO(0),
      I3 => \^img_cpy_opr_u0_ap_start\,
      I4 => \mOutPtr[1]_i_2_n_0\,
      I5 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_start,
      I1 => \^start_for_img_cpy_opr_u0_full_n\,
      I2 => start_once_reg,
      O => \mOutPtr[1]_i_2_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[0]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[1]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_fifo_w8_d2_A is
  port (
    dstImg_data_stream_0_full_n : out STD_LOGIC;
    dstImg_data_stream_0_empty_n : out STD_LOGIC;
    video_out_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    ap_reg_ioackin_video_out_TREADY_reg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    srcImg_data_stream_0_empty_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_fifo_w8_d2_A : entity is "fifo_w8_d2_A";
end img_cpy_0_fifo_w8_d2_A;

architecture STRUCTURE of img_cpy_0_fifo_w8_d2_A is
  signal \^dstimg_data_stream_0_empty_n\ : STD_LOGIC;
  signal \^dstimg_data_stream_0_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__6_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__6_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
begin
  dstImg_data_stream_0_empty_n <= \^dstimg_data_stream_0_empty_n\;
  dstImg_data_stream_0_full_n <= \^dstimg_data_stream_0_full_n\;
U_fifo_w8_d2_A_ram: entity work.img_cpy_0_fifo_w8_d2_A_shiftReg_3
     port map (
      D(7 downto 0) => D(7 downto 0),
      ap_clk => ap_clk,
      \mOutPtr_reg[0]\ => \mOutPtr_reg_n_0_[0]\,
      \mOutPtr_reg[1]\ => \mOutPtr_reg_n_0_[1]\,
      shiftReg_ce => shiftReg_ce,
      video_out_TDATA(7 downto 0) => video_out_TDATA(7 downto 0)
    );
\internal_empty_n_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => ap_reg_ioackin_video_out_TREADY_reg,
      I3 => shiftReg_ce,
      I4 => \^dstimg_data_stream_0_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__6_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__6_n_0\,
      Q => \^dstimg_data_stream_0_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFDDD5DDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^dstimg_data_stream_0_full_n\,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => \mOutPtr_reg_n_0_[1]\,
      I4 => shiftReg_ce,
      I5 => ap_reg_ioackin_video_out_TREADY_reg,
      O => \internal_full_n_i_1__6_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__6_n_0\,
      Q => \^dstimg_data_stream_0_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"655555559AAAAAAA"
    )
        port map (
      I0 => ap_reg_ioackin_video_out_TREADY_reg,
      I1 => CO(0),
      I2 => srcImg_data_stream_0_empty_n,
      I3 => Q(0),
      I4 => \^dstimg_data_stream_0_full_n\,
      I5 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E718"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => shiftReg_ce,
      I2 => ap_reg_ioackin_video_out_TREADY_reg,
      I3 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[0]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[1]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_fifo_w8_d2_A_1 is
  port (
    srcImg_data_stream_0_full_n : out STD_LOGIC;
    srcImg_data_stream_0_empty_n : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    ap_enable_reg_pp1_iter0_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \x_i_reg_133_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    dstImg_data_stream_0_full_n : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    \tmp_reg_457_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_fifo_w8_d2_A_1 : entity is "fifo_w8_d2_A";
end img_cpy_0_fifo_w8_d2_A_1;

architecture STRUCTURE of img_cpy_0_fifo_w8_d2_A_1 is
  signal \internal_empty_n_i_1__4_n_0\ : STD_LOGIC;
  signal \internal_full_n_i_1__4_n_0\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^srcimg_data_stream_0_empty_n\ : STD_LOGIC;
  signal \^srcimg_data_stream_0_full_n\ : STD_LOGIC;
begin
  srcImg_data_stream_0_empty_n <= \^srcimg_data_stream_0_empty_n\;
  srcImg_data_stream_0_full_n <= \^srcimg_data_stream_0_full_n\;
U_fifo_w8_d2_A_ram: entity work.img_cpy_0_fifo_w8_d2_A_shiftReg
     port map (
      D(7 downto 0) => D(7 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp1_iter0_reg => ap_enable_reg_pp1_iter0_reg,
      \mOutPtr_reg[0]\ => \mOutPtr_reg_n_0_[0]\,
      \mOutPtr_reg[1]\ => \mOutPtr_reg_n_0_[1]\,
      \tmp_reg_457_reg[7]\(7 downto 0) => \tmp_reg_457_reg[7]\(7 downto 0)
    );
\internal_empty_n_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF0F0000000000"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => \mOutPtr_reg_n_0_[1]\,
      I2 => shiftReg_ce,
      I3 => ap_enable_reg_pp1_iter0_reg,
      I4 => \^srcimg_data_stream_0_empty_n\,
      I5 => ap_rst_n,
      O => \internal_empty_n_i_1__4_n_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__4_n_0\,
      Q => \^srcimg_data_stream_0_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFDDD5DDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^srcimg_data_stream_0_full_n\,
      I2 => \mOutPtr_reg_n_0_[0]\,
      I3 => \mOutPtr_reg_n_0_[1]\,
      I4 => ap_enable_reg_pp1_iter0_reg,
      I5 => shiftReg_ce,
      O => \internal_full_n_i_1__4_n_0\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__4_n_0\,
      Q => \^srcimg_data_stream_0_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000BFFFBFFF4000"
    )
        port map (
      I0 => \x_i_reg_133_reg[10]\(0),
      I1 => \^srcimg_data_stream_0_empty_n\,
      I2 => Q(0),
      I3 => dstImg_data_stream_0_full_n,
      I4 => ap_enable_reg_pp1_iter0_reg,
      I5 => \mOutPtr_reg_n_0_[0]\,
      O => \mOutPtr[0]_i_1_n_0\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E718"
    )
        port map (
      I0 => \mOutPtr_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp1_iter0_reg,
      I2 => shiftReg_ce,
      I3 => \mOutPtr_reg_n_0_[1]\,
      O => \mOutPtr[1]_i_1_n_0\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[0]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \mOutPtr[1]_i_1_n_0\,
      Q => \mOutPtr_reg_n_0_[1]\,
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0_img_cpy is
  port (
    video_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    video_in_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    video_in_TSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    video_in_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    video_out_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    video_out_TSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    video_out_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    video_in_TVALID : in STD_LOGIC;
    video_in_TREADY : out STD_LOGIC;
    video_out_TVALID : out STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_idle : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of img_cpy_0_img_cpy : entity is "img_cpy";
  attribute hls_module : string;
  attribute hls_module of img_cpy_0_img_cpy : entity is "yes";
end img_cpy_0_img_cpy;

architecture STRUCTURE of img_cpy_0_img_cpy is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal AXIvideo2Mat_U0_n_2 : STD_LOGIC;
  signal AXIvideo2Mat_U0_n_4 : STD_LOGIC;
  signal AXIvideo2Mat_U0_n_5 : STD_LOGIC;
  signal AXIvideo2Mat_U0_n_6 : STD_LOGIC;
  signal Mat2AXIvideo_U0_ap_start : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_2 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_3 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_6 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal dstImg_data_stream_0_empty_n : STD_LOGIC;
  signal dstImg_data_stream_0_full_n : STD_LOGIC;
  signal exitcond1_fu_152_p2 : STD_LOGIC;
  signal exitcond_fu_163_p2 : STD_LOGIC;
  signal img_cpy_opr_U0_ap_start : STD_LOGIC;
  signal img_cpy_opr_U0_n_2 : STD_LOGIC;
  signal img_cpy_opr_U0_n_3 : STD_LOGIC;
  signal img_cpy_opr_U0_n_4 : STD_LOGIC;
  signal img_cpy_opr_U0_n_7 : STD_LOGIC;
  signal img_cpy_opr_U0_n_8 : STD_LOGIC;
  signal img_cpy_opr_U0_n_9 : STD_LOGIC;
  signal shiftReg_ce : STD_LOGIC;
  signal srcImg_cols_V_c7_empty_n : STD_LOGIC;
  signal srcImg_cols_V_c7_full_n : STD_LOGIC;
  signal srcImg_cols_V_c_U_n_2 : STD_LOGIC;
  signal srcImg_cols_V_c_empty_n : STD_LOGIC;
  signal srcImg_cols_V_c_full_n : STD_LOGIC;
  signal srcImg_data_stream_0_U_n_2 : STD_LOGIC;
  signal srcImg_data_stream_0_U_n_3 : STD_LOGIC;
  signal srcImg_data_stream_0_U_n_4 : STD_LOGIC;
  signal srcImg_data_stream_0_U_n_5 : STD_LOGIC;
  signal srcImg_data_stream_0_U_n_6 : STD_LOGIC;
  signal srcImg_data_stream_0_U_n_7 : STD_LOGIC;
  signal srcImg_data_stream_0_U_n_8 : STD_LOGIC;
  signal srcImg_data_stream_0_U_n_9 : STD_LOGIC;
  signal srcImg_data_stream_0_empty_n : STD_LOGIC;
  signal srcImg_data_stream_0_full_n : STD_LOGIC;
  signal srcImg_rows_V_c6_empty_n : STD_LOGIC;
  signal srcImg_rows_V_c6_full_n : STD_LOGIC;
  signal srcImg_rows_V_c_empty_n : STD_LOGIC;
  signal srcImg_rows_V_c_full_n : STD_LOGIC;
  signal start_for_Mat2AXIvideo_U0_full_n : STD_LOGIC;
  signal start_for_img_cpy_opr_U0_full_n : STD_LOGIC;
  signal start_for_img_cpybkb_U_n_2 : STD_LOGIC;
  signal start_once_reg : STD_LOGIC;
  signal tmp_reg_457 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^video_out_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  video_out_TDATA(63) <= \<const1>\;
  video_out_TDATA(62) <= \<const1>\;
  video_out_TDATA(61) <= \<const1>\;
  video_out_TDATA(60) <= \<const1>\;
  video_out_TDATA(59) <= \<const1>\;
  video_out_TDATA(58) <= \<const1>\;
  video_out_TDATA(57) <= \<const1>\;
  video_out_TDATA(56) <= \<const1>\;
  video_out_TDATA(55) <= \<const1>\;
  video_out_TDATA(54) <= \<const1>\;
  video_out_TDATA(53) <= \<const1>\;
  video_out_TDATA(52) <= \<const1>\;
  video_out_TDATA(51) <= \<const1>\;
  video_out_TDATA(50) <= \<const1>\;
  video_out_TDATA(49) <= \<const1>\;
  video_out_TDATA(48) <= \<const1>\;
  video_out_TDATA(47) <= \<const1>\;
  video_out_TDATA(46) <= \<const1>\;
  video_out_TDATA(45) <= \<const1>\;
  video_out_TDATA(44) <= \<const1>\;
  video_out_TDATA(43) <= \<const1>\;
  video_out_TDATA(42) <= \<const1>\;
  video_out_TDATA(41) <= \<const1>\;
  video_out_TDATA(40) <= \<const1>\;
  video_out_TDATA(39) <= \<const1>\;
  video_out_TDATA(38) <= \<const1>\;
  video_out_TDATA(37) <= \<const1>\;
  video_out_TDATA(36) <= \<const1>\;
  video_out_TDATA(35) <= \<const1>\;
  video_out_TDATA(34) <= \<const1>\;
  video_out_TDATA(33) <= \<const1>\;
  video_out_TDATA(32) <= \<const1>\;
  video_out_TDATA(31) <= \<const1>\;
  video_out_TDATA(30) <= \<const1>\;
  video_out_TDATA(29) <= \<const1>\;
  video_out_TDATA(28) <= \<const1>\;
  video_out_TDATA(27) <= \<const1>\;
  video_out_TDATA(26) <= \<const1>\;
  video_out_TDATA(25) <= \<const1>\;
  video_out_TDATA(24) <= \<const1>\;
  video_out_TDATA(23) <= \<const1>\;
  video_out_TDATA(22) <= \<const1>\;
  video_out_TDATA(21) <= \<const1>\;
  video_out_TDATA(20) <= \<const1>\;
  video_out_TDATA(19) <= \<const1>\;
  video_out_TDATA(18) <= \<const1>\;
  video_out_TDATA(17) <= \<const1>\;
  video_out_TDATA(16) <= \<const1>\;
  video_out_TDATA(15) <= \<const1>\;
  video_out_TDATA(14) <= \<const1>\;
  video_out_TDATA(13) <= \<const1>\;
  video_out_TDATA(12) <= \<const1>\;
  video_out_TDATA(11) <= \<const1>\;
  video_out_TDATA(10) <= \<const1>\;
  video_out_TDATA(9) <= \<const1>\;
  video_out_TDATA(8) <= \<const1>\;
  video_out_TDATA(7 downto 0) <= \^video_out_tdata\(7 downto 0);
  video_out_TDEST(0) <= \<const0>\;
  video_out_TID(0) <= \<const0>\;
  video_out_TKEEP(7) <= \<const1>\;
  video_out_TKEEP(6) <= \<const1>\;
  video_out_TKEEP(5) <= \<const1>\;
  video_out_TKEEP(4) <= \<const1>\;
  video_out_TKEEP(3) <= \<const1>\;
  video_out_TKEEP(2) <= \<const1>\;
  video_out_TKEEP(1) <= \<const1>\;
  video_out_TKEEP(0) <= \<const1>\;
  video_out_TSTRB(7) <= \<const0>\;
  video_out_TSTRB(6) <= \<const0>\;
  video_out_TSTRB(5) <= \<const0>\;
  video_out_TSTRB(4) <= \<const0>\;
  video_out_TSTRB(3) <= \<const0>\;
  video_out_TSTRB(2) <= \<const0>\;
  video_out_TSTRB(1) <= \<const0>\;
  video_out_TSTRB(0) <= \<const0>\;
AXIvideo2Mat_U0: entity work.img_cpy_0_AXIvideo2Mat
     port map (
      E(0) => AXIvideo2Mat_U0_n_6,
      Q(0) => img_cpy_opr_U0_n_7,
      \SRL_SIG_reg[0][7]\(7 downto 0) => tmp_reg_457(7 downto 0),
      \SRL_SIG_reg[1][0]\ => AXIvideo2Mat_U0_n_2,
      \ap_CS_fsm_reg[0]_0\ => Mat2AXIvideo_U0_n_6,
      \ap_CS_fsm_reg[1]_0\ => AXIvideo2Mat_U0_n_5,
      ap_clk => ap_clk,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      internal_empty_n_reg => start_for_img_cpybkb_U_n_2,
      \mOutPtr_reg[0]\ => AXIvideo2Mat_U0_n_4,
      srcImg_cols_V_c7_full_n => srcImg_cols_V_c7_full_n,
      srcImg_cols_V_c_empty_n => srcImg_cols_V_c_empty_n,
      srcImg_cols_V_c_full_n => srcImg_cols_V_c_full_n,
      srcImg_data_stream_0_full_n => srcImg_data_stream_0_full_n,
      srcImg_rows_V_c6_full_n => srcImg_rows_V_c6_full_n,
      srcImg_rows_V_c_empty_n => srcImg_rows_V_c_empty_n,
      srcImg_rows_V_c_full_n => srcImg_rows_V_c_full_n,
      start_for_img_cpy_opr_U0_full_n => start_for_img_cpy_opr_U0_full_n,
      start_once_reg => start_once_reg,
      video_in_TDATA(7 downto 0) => video_in_TDATA(7 downto 0),
      video_in_TLAST(0) => video_in_TLAST(0),
      video_in_TREADY => video_in_TREADY,
      video_in_TUSER(0) => video_in_TUSER(0),
      video_in_TVALID => video_in_TVALID
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Mat2AXIvideo_U0: entity work.img_cpy_0_Mat2AXIvideo
     port map (
      Mat2AXIvideo_U0_ap_start => Mat2AXIvideo_U0_ap_start,
      \ap_CS_fsm_reg[0]_0\ => Mat2AXIvideo_U0_n_3,
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => Mat2AXIvideo_U0_n_6,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      dstImg_data_stream_0_empty_n => dstImg_data_stream_0_empty_n,
      \tmp_user_V_fu_100_reg[0]_0\ => Mat2AXIvideo_U0_n_2,
      video_out_TLAST(0) => video_out_TLAST(0),
      video_out_TREADY => video_out_TREADY,
      video_out_TUSER(0) => video_out_TUSER(0),
      video_out_TVALID => video_out_TVALID
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
dstImg_data_stream_0_U: entity work.img_cpy_0_fifo_w8_d2_A
     port map (
      CO(0) => exitcond_fu_163_p2,
      D(7) => srcImg_data_stream_0_U_n_2,
      D(6) => srcImg_data_stream_0_U_n_3,
      D(5) => srcImg_data_stream_0_U_n_4,
      D(4) => srcImg_data_stream_0_U_n_5,
      D(3) => srcImg_data_stream_0_U_n_6,
      D(2) => srcImg_data_stream_0_U_n_7,
      D(1) => srcImg_data_stream_0_U_n_8,
      D(0) => srcImg_data_stream_0_U_n_9,
      Q(0) => ap_CS_fsm_state3,
      ap_clk => ap_clk,
      ap_reg_ioackin_video_out_TREADY_reg => Mat2AXIvideo_U0_n_2,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      dstImg_data_stream_0_empty_n => dstImg_data_stream_0_empty_n,
      dstImg_data_stream_0_full_n => dstImg_data_stream_0_full_n,
      shiftReg_ce => shiftReg_ce,
      srcImg_data_stream_0_empty_n => srcImg_data_stream_0_empty_n,
      video_out_TDATA(7 downto 0) => \^video_out_tdata\(7 downto 0)
    );
img_cpy_opr_U0: entity work.img_cpy_0_img_cpy_opr
     port map (
      CO(0) => exitcond1_fu_152_p2,
      E(0) => img_cpy_opr_U0_n_3,
      Q(2) => ap_CS_fsm_state3,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => img_cpy_opr_U0_n_7,
      \ap_CS_fsm_reg[0]_0\ => AXIvideo2Mat_U0_n_5,
      \ap_CS_fsm_reg[2]_0\(0) => exitcond_fu_163_p2,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      dstImg_data_stream_0_full_n => dstImg_data_stream_0_full_n,
      img_cpy_opr_U0_ap_start => img_cpy_opr_U0_ap_start,
      internal_empty_n_reg => img_cpy_opr_U0_n_9,
      internal_full_n_reg => img_cpy_opr_U0_n_8,
      \mOutPtr_reg[0]\ => img_cpy_opr_U0_n_4,
      shiftReg_ce => shiftReg_ce,
      srcImg_cols_V_c7_empty_n => srcImg_cols_V_c7_empty_n,
      srcImg_data_stream_0_empty_n => srcImg_data_stream_0_empty_n,
      srcImg_rows_V_c6_empty_n => srcImg_rows_V_c6_empty_n,
      start_for_Mat2AXIvideo_U0_full_n => start_for_Mat2AXIvideo_U0_full_n,
      start_once_reg_reg_0 => img_cpy_opr_U0_n_2
    );
srcImg_cols_V_c7_U: entity work.img_cpy_0_fifo_w11_d2_A
     port map (
      E(0) => img_cpy_opr_U0_n_3,
      \ap_CS_fsm_reg[0]\ => AXIvideo2Mat_U0_n_5,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      internal_full_n_reg_0 => img_cpy_opr_U0_n_4,
      srcImg_cols_V_c7_empty_n => srcImg_cols_V_c7_empty_n,
      srcImg_cols_V_c7_full_n => srcImg_cols_V_c7_full_n
    );
srcImg_cols_V_c_U: entity work.img_cpy_0_fifo_w11_d2_A_0
     port map (
      E(0) => AXIvideo2Mat_U0_n_6,
      \ap_CS_fsm_reg[0]\ => AXIvideo2Mat_U0_n_5,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      internal_full_n_reg_0 => srcImg_cols_V_c_U_n_2,
      srcImg_cols_V_c_empty_n => srcImg_cols_V_c_empty_n,
      srcImg_cols_V_c_full_n => srcImg_cols_V_c_full_n,
      srcImg_rows_V_c_full_n => srcImg_rows_V_c_full_n
    );
srcImg_data_stream_0_U: entity work.img_cpy_0_fifo_w8_d2_A_1
     port map (
      D(7) => srcImg_data_stream_0_U_n_2,
      D(6) => srcImg_data_stream_0_U_n_3,
      D(5) => srcImg_data_stream_0_U_n_4,
      D(4) => srcImg_data_stream_0_U_n_5,
      D(3) => srcImg_data_stream_0_U_n_6,
      D(2) => srcImg_data_stream_0_U_n_7,
      D(1) => srcImg_data_stream_0_U_n_8,
      D(0) => srcImg_data_stream_0_U_n_9,
      Q(0) => ap_CS_fsm_state3,
      ap_clk => ap_clk,
      ap_enable_reg_pp1_iter0_reg => AXIvideo2Mat_U0_n_2,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      dstImg_data_stream_0_full_n => dstImg_data_stream_0_full_n,
      shiftReg_ce => shiftReg_ce,
      srcImg_data_stream_0_empty_n => srcImg_data_stream_0_empty_n,
      srcImg_data_stream_0_full_n => srcImg_data_stream_0_full_n,
      \tmp_reg_457_reg[7]\(7 downto 0) => tmp_reg_457(7 downto 0),
      \x_i_reg_133_reg[10]\(0) => exitcond_fu_163_p2
    );
srcImg_rows_V_c6_U: entity work.img_cpy_0_fifo_w10_d2_A
     port map (
      E(0) => img_cpy_opr_U0_n_3,
      \ap_CS_fsm_reg[0]\ => AXIvideo2Mat_U0_n_5,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      internal_full_n_reg_0 => img_cpy_opr_U0_n_4,
      srcImg_rows_V_c6_empty_n => srcImg_rows_V_c6_empty_n,
      srcImg_rows_V_c6_full_n => srcImg_rows_V_c6_full_n
    );
srcImg_rows_V_c_U: entity work.img_cpy_0_fifo_w10_d2_A_2
     port map (
      E(0) => AXIvideo2Mat_U0_n_6,
      \ap_CS_fsm_reg[0]\ => AXIvideo2Mat_U0_n_5,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      internal_full_n_reg_0 => srcImg_cols_V_c_U_n_2,
      srcImg_cols_V_c_full_n => srcImg_cols_V_c_full_n,
      srcImg_rows_V_c_empty_n => srcImg_rows_V_c_empty_n,
      srcImg_rows_V_c_full_n => srcImg_rows_V_c_full_n
    );
start_for_Mat2AXIcud_U: entity work.img_cpy_0_start_for_Mat2AXIcud
     port map (
      Mat2AXIvideo_U0_ap_start => Mat2AXIvideo_U0_ap_start,
      \ap_CS_fsm_reg[1]\ => Mat2AXIvideo_U0_n_3,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      img_cpy_opr_U0_ap_start => img_cpy_opr_U0_ap_start,
      start_for_Mat2AXIvideo_U0_full_n => start_for_Mat2AXIvideo_U0_full_n,
      start_once_reg_reg => img_cpy_opr_U0_n_2
    );
start_for_img_cpybkb_U: entity work.img_cpy_0_start_for_img_cpybkb
     port map (
      CO(0) => exitcond1_fu_152_p2,
      Q(0) => ap_CS_fsm_state2,
      \ap_CS_fsm_reg[1]\ => img_cpy_opr_U0_n_9,
      ap_clk => ap_clk,
      ap_idle => start_for_img_cpybkb_U_n_2,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      img_cpy_opr_U0_ap_start => img_cpy_opr_U0_ap_start,
      internal_empty_n_reg_0 => img_cpy_opr_U0_n_8,
      start_for_Mat2AXIvideo_U0_full_n => start_for_Mat2AXIvideo_U0_full_n,
      start_for_img_cpy_opr_U0_full_n => start_for_img_cpy_opr_U0_full_n,
      start_once_reg => start_once_reg,
      start_once_reg_reg => img_cpy_opr_U0_n_2,
      start_once_reg_reg_0 => AXIvideo2Mat_U0_n_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity img_cpy_0 is
  port (
    video_in_TVALID : in STD_LOGIC;
    video_in_TREADY : out STD_LOGIC;
    video_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    video_in_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    video_in_TSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    video_in_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TVALID : out STD_LOGIC;
    video_out_TREADY : in STD_LOGIC;
    video_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    video_out_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    video_out_TSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    video_out_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_idle : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of img_cpy_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of img_cpy_0 : entity is "img_cpy_0,img_cpy,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of img_cpy_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of img_cpy_0 : entity is "img_cpy,Vivado 2018.1";
  attribute hls_module : string;
  attribute hls_module of img_cpy_0 : entity is "yes";
end img_cpy_0;

architecture STRUCTURE of img_cpy_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF video_in:video_out, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_PARAMETER of ap_idle : signal is "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of video_in_TREADY : signal is "xilinx.com:interface:axis:1.0 video_in TREADY";
  attribute X_INTERFACE_INFO of video_in_TVALID : signal is "xilinx.com:interface:axis:1.0 video_in TVALID";
  attribute X_INTERFACE_INFO of video_out_TREADY : signal is "xilinx.com:interface:axis:1.0 video_out TREADY";
  attribute X_INTERFACE_INFO of video_out_TVALID : signal is "xilinx.com:interface:axis:1.0 video_out TVALID";
  attribute X_INTERFACE_INFO of video_in_TDATA : signal is "xilinx.com:interface:axis:1.0 video_in TDATA";
  attribute X_INTERFACE_INFO of video_in_TDEST : signal is "xilinx.com:interface:axis:1.0 video_in TDEST";
  attribute X_INTERFACE_PARAMETER of video_in_TDEST : signal is "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of video_in_TID : signal is "xilinx.com:interface:axis:1.0 video_in TID";
  attribute X_INTERFACE_INFO of video_in_TKEEP : signal is "xilinx.com:interface:axis:1.0 video_in TKEEP";
  attribute X_INTERFACE_INFO of video_in_TLAST : signal is "xilinx.com:interface:axis:1.0 video_in TLAST";
  attribute X_INTERFACE_INFO of video_in_TSTRB : signal is "xilinx.com:interface:axis:1.0 video_in TSTRB";
  attribute X_INTERFACE_INFO of video_in_TUSER : signal is "xilinx.com:interface:axis:1.0 video_in TUSER";
  attribute X_INTERFACE_INFO of video_out_TDATA : signal is "xilinx.com:interface:axis:1.0 video_out TDATA";
  attribute X_INTERFACE_INFO of video_out_TDEST : signal is "xilinx.com:interface:axis:1.0 video_out TDEST";
  attribute X_INTERFACE_PARAMETER of video_out_TDEST : signal is "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 8, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of video_out_TID : signal is "xilinx.com:interface:axis:1.0 video_out TID";
  attribute X_INTERFACE_INFO of video_out_TKEEP : signal is "xilinx.com:interface:axis:1.0 video_out TKEEP";
  attribute X_INTERFACE_INFO of video_out_TLAST : signal is "xilinx.com:interface:axis:1.0 video_out TLAST";
  attribute X_INTERFACE_INFO of video_out_TSTRB : signal is "xilinx.com:interface:axis:1.0 video_out TSTRB";
  attribute X_INTERFACE_INFO of video_out_TUSER : signal is "xilinx.com:interface:axis:1.0 video_out TUSER";
begin
inst: entity work.img_cpy_0_img_cpy
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      video_in_TDATA(63 downto 0) => video_in_TDATA(63 downto 0),
      video_in_TDEST(0) => video_in_TDEST(0),
      video_in_TID(0) => video_in_TID(0),
      video_in_TKEEP(7 downto 0) => video_in_TKEEP(7 downto 0),
      video_in_TLAST(0) => video_in_TLAST(0),
      video_in_TREADY => video_in_TREADY,
      video_in_TSTRB(7 downto 0) => video_in_TSTRB(7 downto 0),
      video_in_TUSER(0) => video_in_TUSER(0),
      video_in_TVALID => video_in_TVALID,
      video_out_TDATA(63 downto 0) => video_out_TDATA(63 downto 0),
      video_out_TDEST(0) => video_out_TDEST(0),
      video_out_TID(0) => video_out_TID(0),
      video_out_TKEEP(7 downto 0) => video_out_TKEEP(7 downto 0),
      video_out_TLAST(0) => video_out_TLAST(0),
      video_out_TREADY => video_out_TREADY,
      video_out_TSTRB(7 downto 0) => video_out_TSTRB(7 downto 0),
      video_out_TUSER(0) => video_out_TUSER(0),
      video_out_TVALID => video_out_TVALID
    );
end STRUCTURE;
