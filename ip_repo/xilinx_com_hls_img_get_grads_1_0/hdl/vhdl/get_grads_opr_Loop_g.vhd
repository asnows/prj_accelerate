-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity get_grads_opr_Loop_g is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_read : IN STD_LOGIC_VECTOR (12 downto 0);
    p_read1 : IN STD_LOGIC_VECTOR (12 downto 0);
    line_buffer_val_1_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    line_buffer_val_1_ce0 : OUT STD_LOGIC;
    line_buffer_val_1_we0 : OUT STD_LOGIC;
    line_buffer_val_1_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    line_buffer_val_1_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    line_buffer_val_0_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    line_buffer_val_0_ce0 : OUT STD_LOGIC;
    line_buffer_val_0_we0 : OUT STD_LOGIC;
    line_buffer_val_0_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    line_buffer_val_0_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    line_buffer_val_2_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    line_buffer_val_2_ce0 : OUT STD_LOGIC;
    line_buffer_val_2_we0 : OUT STD_LOGIC;
    line_buffer_val_2_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    line_buffer_val_2_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    dstImg_data_stream_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dstImg_data_stream_V_full_n : IN STD_LOGIC;
    dstImg_data_stream_V_write : OUT STD_LOGIC;
    srcImg_data_stream_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    srcImg_data_stream_V_empty_n : IN STD_LOGIC;
    srcImg_data_stream_V_read : OUT STD_LOGIC );
end;


architecture behav of get_grads_opr_Loop_g is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv13_1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal dstImg_data_stream_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal or_cond_i_reg_690 : STD_LOGIC_VECTOR (0 downto 0);
    signal srcImg_data_stream_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal brmerge_i_reg_643 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal tmp_5_fu_227_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_5_reg_596 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_6_fu_233_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_6_reg_601 : STD_LOGIC_VECTOR (12 downto 0);
    signal y_fu_244_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal y_reg_609 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_3_i_fu_250_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_i_reg_614 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond1_fu_239_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal rev_fu_261_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal rev_reg_619 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_fu_277_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_reg_624 : STD_LOGIC_VECTOR (0 downto 0);
    signal window_val_1_1_2_reg_629 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal x_fu_291_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal x_reg_638 : STD_LOGIC_VECTOR (12 downto 0);
    signal brmerge_i_fu_303_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_fu_286_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_i_fu_308_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_6_i_reg_648 : STD_LOGIC_VECTOR (63 downto 0);
    signal line_buffer_val_1_a_1_reg_653 : STD_LOGIC_VECTOR (9 downto 0);
    signal line_buffer_val_2_a_1_reg_658 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_221_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_i_reg_663 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state4 : BOOLEAN;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp2_fu_331_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp2_reg_685 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_i_fu_343_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal window_val_2_2_1_fu_357_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_val_2_2_1_reg_694 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal window_val_1_2_1_fu_364_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_val_1_2_1_reg_699 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_val_0_2_1_fu_370_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_val_0_2_1_reg_704 : STD_LOGIC_VECTOR (7 downto 0);
    signal gx_fu_385_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal gx_reg_709 : STD_LOGIC_VECTOR (8 downto 0);
    signal gy_fu_399_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal gy_reg_715 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_3_reg_721 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_reg_726 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp12_fu_538_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp12_reg_731 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal y_i_reg_198 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_phi_mux_x_i_phi_fu_213_p4 : STD_LOGIC_VECTOR (12 downto 0);
    signal x_i_reg_209 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_block_state8 : BOOLEAN;
    signal tmp_7_i_fu_314_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal window_val_0_2_2_fu_94 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_val_1_1_fu_98 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_val_1_1_1_fu_102 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_val_2_2_2_fu_106 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_221_p0 : STD_LOGIC_VECTOR (12 downto 0);
    signal ult_fu_256_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_267_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal rev1_fu_297_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_fu_321_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_23_i_fu_337_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_cast_i_fu_381_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_12_cast_i_fu_377_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_13_cast_i_fu_391_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_14_cast_i_fu_395_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal xs_V_3_fu_424_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal xs_V_1_i_cast_i_fu_429_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Result_s_fu_433_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal x_cast1_i_fu_421_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal agg_result_V_i_i_fu_443_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal xs_V_fu_457_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal xs_V_1_i_cast_i5_fu_462_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Result_1_fu_466_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal x_cast1_i2_fu_454_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal agg_result_V_i_i8_fu_476_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal Temp_fu_483_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_10_fu_493_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_fu_450_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_9_fu_489_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp1_fu_503_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_21_i_fu_513_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal brmerge1_i_fu_509_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp_fu_527_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp1_fu_533_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_22_i_fu_519_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_239_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    x_i_reg_209_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((or_cond_i_reg_690 = ap_const_lv1_0) and (dstImg_data_stream_V_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                x_i_reg_209 <= x_reg_638;
            elsif (((exitcond1_fu_239_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                x_i_reg_209 <= ap_const_lv13_0;
            end if; 
        end if;
    end process;

    y_i_reg_198_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond_fu_286_p2 = ap_const_lv1_1))) then 
                y_i_reg_198 <= y_reg_609;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                y_i_reg_198 <= ap_const_lv13_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_286_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                brmerge_i_reg_643 <= brmerge_i_fu_303_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                gx_reg_709 <= gx_fu_385_p2;
                gy_reg_715 <= gy_fu_399_p2;
                tmp_3_reg_721 <= gx_fu_385_p2(8 downto 8);
                tmp_8_reg_726 <= gy_fu_399_p2(8 downto 8);
                window_val_0_2_1_reg_704 <= window_val_0_2_1_fu_370_p3;
                window_val_1_2_1_reg_699 <= window_val_1_2_1_fu_364_p3;
                window_val_2_2_1_reg_694 <= window_val_2_2_1_fu_357_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                icmp2_reg_685 <= icmp2_fu_331_p2;
                or_cond_i_reg_690 <= or_cond_i_fu_343_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_239_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                icmp_reg_624 <= icmp_fu_277_p2;
                rev_reg_619 <= rev_fu_261_p2;
                tmp_3_i_reg_614 <= tmp_3_i_fu_250_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_286_p2 = ap_const_lv1_0) and (brmerge_i_fu_303_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                line_buffer_val_1_a_1_reg_653 <= tmp_6_i_fu_308_p1(10 - 1 downto 0);
                line_buffer_val_2_a_1_reg_658 <= tmp_6_i_fu_308_p1(10 - 1 downto 0);
                    tmp_6_i_reg_648(12 downto 0) <= tmp_6_i_fu_308_p1(12 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                tmp12_reg_731 <= tmp12_fu_538_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((brmerge_i_reg_643 = ap_const_lv1_0) and (srcImg_data_stream_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                tmp_5_i_reg_663 <= grp_fu_221_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                tmp_5_reg_596 <= tmp_5_fu_227_p2;
                tmp_6_reg_601 <= tmp_6_fu_233_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((or_cond_i_reg_690 = ap_const_lv1_0) and (dstImg_data_stream_V_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                window_val_0_2_2_fu_94 <= window_val_0_2_1_reg_704;
                window_val_1_1_1_fu_102 <= window_val_1_2_1_reg_699;
                window_val_1_1_fu_98 <= window_val_1_1_2_reg_629;
                window_val_2_2_2_fu_106 <= window_val_2_2_1_reg_694;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                window_val_1_1_2_reg_629 <= window_val_1_1_1_fu_102;
                x_reg_638 <= x_fu_291_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                y_reg_609 <= y_fu_244_p2;
            end if;
        end if;
    end process;
    tmp_6_i_reg_648(63 downto 13) <= "000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, dstImg_data_stream_V_full_n, srcImg_data_stream_V_empty_n, ap_CS_fsm_state8, or_cond_i_reg_690, ap_CS_fsm_state4, brmerge_i_reg_643, ap_CS_fsm_state2, exitcond1_fu_239_p2, ap_CS_fsm_state3, exitcond_fu_286_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_239_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond_fu_286_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if ((not(((brmerge_i_reg_643 = ap_const_lv1_0) and (srcImg_data_stream_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if ((not(((or_cond_i_reg_690 = ap_const_lv1_0) and (dstImg_data_stream_V_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    Temp_fu_483_p2 <= std_logic_vector(unsigned(agg_result_V_i_i8_fu_476_p3) + unsigned(agg_result_V_i_i_fu_443_p3));
    agg_result_V_i_i8_fu_476_p3 <= 
        p_Result_1_fu_466_p4 when (tmp_8_reg_726(0) = '1') else 
        x_cast1_i2_fu_454_p1;
    agg_result_V_i_i_fu_443_p3 <= 
        p_Result_s_fu_433_p4 when (tmp_3_reg_721(0) = '1') else 
        x_cast1_i_fu_421_p1;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state4_assign_proc : process(srcImg_data_stream_V_empty_n, brmerge_i_reg_643)
    begin
                ap_block_state4 <= ((brmerge_i_reg_643 = ap_const_lv1_0) and (srcImg_data_stream_V_empty_n = ap_const_logic_0));
    end process;


    ap_block_state8_assign_proc : process(dstImg_data_stream_V_full_n, or_cond_i_reg_690)
    begin
                ap_block_state8 <= ((or_cond_i_reg_690 = ap_const_lv1_0) and (dstImg_data_stream_V_full_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, exitcond1_fu_239_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_239_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_phi_mux_x_i_phi_fu_213_p4 <= x_i_reg_209;

    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond1_fu_239_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_239_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    brmerge1_i_fu_509_p2 <= (icmp_reg_624 or brmerge_i_reg_643);
    brmerge_i_fu_303_p2 <= (rev_reg_619 or rev1_fu_297_p2);

    dstImg_data_stream_V_blk_n_assign_proc : process(dstImg_data_stream_V_full_n, ap_CS_fsm_state8, or_cond_i_reg_690)
    begin
        if (((or_cond_i_reg_690 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            dstImg_data_stream_V_blk_n <= dstImg_data_stream_V_full_n;
        else 
            dstImg_data_stream_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dstImg_data_stream_V_din <= tmp12_reg_731;

    dstImg_data_stream_V_write_assign_proc : process(dstImg_data_stream_V_full_n, ap_CS_fsm_state8, or_cond_i_reg_690)
    begin
        if ((not(((or_cond_i_reg_690 = ap_const_lv1_0) and (dstImg_data_stream_V_full_n = ap_const_logic_0))) and (or_cond_i_reg_690 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            dstImg_data_stream_V_write <= ap_const_logic_1;
        else 
            dstImg_data_stream_V_write <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_239_p2 <= "1" when (y_i_reg_198 = tmp_6_reg_601) else "0";
    exitcond_fu_286_p2 <= "1" when (x_i_reg_209 = tmp_5_reg_596) else "0";

    grp_fu_221_p0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state3, ap_phi_mux_x_i_phi_fu_213_p4, x_i_reg_209)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_fu_221_p0 <= x_i_reg_209;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_221_p0 <= ap_phi_mux_x_i_phi_fu_213_p4;
        else 
            grp_fu_221_p0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;

    grp_fu_221_p2 <= "1" when (unsigned(grp_fu_221_p0) < unsigned(p_read1)) else "0";
    gx_fu_385_p2 <= std_logic_vector(unsigned(tmp_11_cast_i_fu_381_p1) - unsigned(tmp_12_cast_i_fu_377_p1));
    gy_fu_399_p2 <= std_logic_vector(unsigned(tmp_13_cast_i_fu_391_p1) - unsigned(tmp_14_cast_i_fu_395_p1));
    icmp1_fu_503_p2 <= "1" when (signed(tmp_10_fu_493_p4) > signed(ap_const_lv8_0)) else "0";
    icmp2_fu_331_p2 <= "0" when (tmp_11_fu_321_p4 = ap_const_lv12_0) else "1";
    icmp_fu_277_p2 <= "1" when (tmp_fu_267_p4 = ap_const_lv12_0) else "0";

    line_buffer_val_0_address0_assign_proc : process(ap_CS_fsm_state4, tmp_6_i_reg_648, ap_CS_fsm_state5, tmp_7_i_fu_314_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            line_buffer_val_0_address0 <= tmp_7_i_fu_314_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            line_buffer_val_0_address0 <= tmp_6_i_reg_648(10 - 1 downto 0);
        else 
            line_buffer_val_0_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    line_buffer_val_0_ce0_assign_proc : process(srcImg_data_stream_V_empty_n, ap_CS_fsm_state4, brmerge_i_reg_643, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (not(((brmerge_i_reg_643 = ap_const_lv1_0) and (srcImg_data_stream_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            line_buffer_val_0_ce0 <= ap_const_logic_1;
        else 
            line_buffer_val_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    line_buffer_val_0_d0 <= line_buffer_val_1_q0;

    line_buffer_val_0_we0_assign_proc : process(srcImg_data_stream_V_empty_n, ap_CS_fsm_state4, brmerge_i_reg_643)
    begin
        if ((not(((brmerge_i_reg_643 = ap_const_lv1_0) and (srcImg_data_stream_V_empty_n = ap_const_logic_0))) and (brmerge_i_reg_643 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            line_buffer_val_0_we0 <= ap_const_logic_1;
        else 
            line_buffer_val_0_we0 <= ap_const_logic_0;
        end if; 
    end process;


    line_buffer_val_1_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state3, tmp_6_i_fu_308_p1, line_buffer_val_1_a_1_reg_653, ap_CS_fsm_state5, tmp_7_i_fu_314_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            line_buffer_val_1_address0 <= tmp_7_i_fu_314_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            line_buffer_val_1_address0 <= line_buffer_val_1_a_1_reg_653;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            line_buffer_val_1_address0 <= tmp_6_i_fu_308_p1(10 - 1 downto 0);
        else 
            line_buffer_val_1_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    line_buffer_val_1_ce0_assign_proc : process(srcImg_data_stream_V_empty_n, ap_CS_fsm_state4, brmerge_i_reg_643, ap_CS_fsm_state3, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state3) or (not(((brmerge_i_reg_643 = ap_const_lv1_0) and (srcImg_data_stream_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            line_buffer_val_1_ce0 <= ap_const_logic_1;
        else 
            line_buffer_val_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    line_buffer_val_1_d0 <= line_buffer_val_2_q0;

    line_buffer_val_1_we0_assign_proc : process(srcImg_data_stream_V_empty_n, ap_CS_fsm_state4, brmerge_i_reg_643)
    begin
        if ((not(((brmerge_i_reg_643 = ap_const_lv1_0) and (srcImg_data_stream_V_empty_n = ap_const_logic_0))) and (brmerge_i_reg_643 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            line_buffer_val_1_we0 <= ap_const_logic_1;
        else 
            line_buffer_val_1_we0 <= ap_const_logic_0;
        end if; 
    end process;


    line_buffer_val_2_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state3, tmp_6_i_fu_308_p1, line_buffer_val_2_a_1_reg_658, ap_CS_fsm_state5, tmp_7_i_fu_314_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            line_buffer_val_2_address0 <= tmp_7_i_fu_314_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            line_buffer_val_2_address0 <= line_buffer_val_2_a_1_reg_658;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            line_buffer_val_2_address0 <= tmp_6_i_fu_308_p1(10 - 1 downto 0);
        else 
            line_buffer_val_2_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    line_buffer_val_2_ce0_assign_proc : process(srcImg_data_stream_V_empty_n, ap_CS_fsm_state4, brmerge_i_reg_643, ap_CS_fsm_state3, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state3) or (not(((brmerge_i_reg_643 = ap_const_lv1_0) and (srcImg_data_stream_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
            line_buffer_val_2_ce0 <= ap_const_logic_1;
        else 
            line_buffer_val_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    line_buffer_val_2_d0 <= srcImg_data_stream_V_dout;

    line_buffer_val_2_we0_assign_proc : process(srcImg_data_stream_V_empty_n, ap_CS_fsm_state4, brmerge_i_reg_643)
    begin
        if ((not(((brmerge_i_reg_643 = ap_const_lv1_0) and (srcImg_data_stream_V_empty_n = ap_const_logic_0))) and (brmerge_i_reg_643 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            line_buffer_val_2_we0 <= ap_const_logic_1;
        else 
            line_buffer_val_2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    or_cond_i_fu_343_p2 <= (tmp_3_i_reg_614 or tmp_23_i_fu_337_p2);
    
    p_Result_1_fu_466_p4_proc : process(xs_V_1_i_cast_i5_fu_462_p1)
    begin
        p_Result_1_fu_466_p4 <= xs_V_1_i_cast_i5_fu_462_p1;
        p_Result_1_fu_466_p4(15) <= ap_const_lv1_0(0);
    end process;

    
    p_Result_s_fu_433_p4_proc : process(xs_V_1_i_cast_i_fu_429_p1)
    begin
        p_Result_s_fu_433_p4 <= xs_V_1_i_cast_i_fu_429_p1;
        p_Result_s_fu_433_p4(15) <= ap_const_lv1_0(0);
    end process;

    rev1_fu_297_p2 <= (grp_fu_221_p2 xor ap_const_lv1_1);
    rev_fu_261_p2 <= (ult_fu_256_p2 xor ap_const_lv1_1);
    sel_tmp1_fu_533_p2 <= (sel_tmp_fu_527_p2 and icmp2_reg_685);
    sel_tmp_fu_527_p2 <= (brmerge1_i_fu_509_p2 xor ap_const_lv1_1);

    srcImg_data_stream_V_blk_n_assign_proc : process(srcImg_data_stream_V_empty_n, ap_CS_fsm_state4, brmerge_i_reg_643)
    begin
        if (((brmerge_i_reg_643 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            srcImg_data_stream_V_blk_n <= srcImg_data_stream_V_empty_n;
        else 
            srcImg_data_stream_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    srcImg_data_stream_V_read_assign_proc : process(srcImg_data_stream_V_empty_n, ap_CS_fsm_state4, brmerge_i_reg_643)
    begin
        if ((not(((brmerge_i_reg_643 = ap_const_lv1_0) and (srcImg_data_stream_V_empty_n = ap_const_logic_0))) and (brmerge_i_reg_643 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            srcImg_data_stream_V_read <= ap_const_logic_1;
        else 
            srcImg_data_stream_V_read <= ap_const_logic_0;
        end if; 
    end process;

    tmp12_fu_538_p3 <= 
        tmp_22_i_fu_519_p3 when (sel_tmp1_fu_533_p2(0) = '1') else 
        ap_const_lv8_0;
    tmp_10_fu_493_p4 <= Temp_fu_483_p2(15 downto 8);
    tmp_11_cast_i_fu_381_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(window_val_1_1_fu_98),9));
    tmp_11_fu_321_p4 <= x_i_reg_209(12 downto 1);
    tmp_12_cast_i_fu_377_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(window_val_1_2_1_fu_364_p3),9));
    tmp_13_cast_i_fu_391_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(window_val_0_2_2_fu_94),9));
    tmp_14_cast_i_fu_395_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(window_val_2_2_2_fu_106),9));
    tmp_21_i_fu_513_p2 <= std_logic_vector(unsigned(tmp_4_fu_450_p1) + unsigned(tmp_9_fu_489_p1));
    tmp_22_i_fu_519_p3 <= 
        ap_const_lv8_FF when (icmp1_fu_503_p2(0) = '1') else 
        tmp_21_i_fu_513_p2;
    tmp_23_i_fu_337_p2 <= "1" when (x_i_reg_209 = ap_const_lv13_0) else "0";
    tmp_3_i_fu_250_p2 <= "1" when (y_i_reg_198 = ap_const_lv13_0) else "0";
    tmp_4_fu_450_p1 <= agg_result_V_i_i_fu_443_p3(8 - 1 downto 0);
    tmp_5_fu_227_p2 <= std_logic_vector(unsigned(p_read1) + unsigned(ap_const_lv13_1));
    tmp_6_fu_233_p2 <= std_logic_vector(unsigned(p_read) + unsigned(ap_const_lv13_1));
    tmp_6_i_fu_308_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x_i_reg_209),64));
    tmp_7_i_fu_314_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x_i_reg_209),64));
    tmp_9_fu_489_p1 <= agg_result_V_i_i8_fu_476_p3(8 - 1 downto 0);
    tmp_fu_267_p4 <= y_i_reg_198(12 downto 1);
    ult_fu_256_p2 <= "1" when (unsigned(y_i_reg_198) < unsigned(p_read)) else "0";
    window_val_0_2_1_fu_370_p3 <= 
        line_buffer_val_0_q0 when (tmp_5_i_reg_663(0) = '1') else 
        window_val_0_2_2_fu_94;
    window_val_1_2_1_fu_364_p3 <= 
        line_buffer_val_1_q0 when (tmp_5_i_reg_663(0) = '1') else 
        window_val_1_1_2_reg_629;
    window_val_2_2_1_fu_357_p3 <= 
        line_buffer_val_2_q0 when (tmp_5_i_reg_663(0) = '1') else 
        window_val_2_2_2_fu_106;
        x_cast1_i2_fu_454_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(gy_reg_715),16));

        x_cast1_i_fu_421_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(gx_reg_709),16));

    x_fu_291_p2 <= std_logic_vector(unsigned(x_i_reg_209) + unsigned(ap_const_lv13_1));
        xs_V_1_i_cast_i5_fu_462_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(xs_V_fu_457_p2),16));

        xs_V_1_i_cast_i_fu_429_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(xs_V_3_fu_424_p2),16));

    xs_V_3_fu_424_p2 <= std_logic_vector(unsigned(ap_const_lv9_0) - unsigned(gx_reg_709));
    xs_V_fu_457_p2 <= std_logic_vector(unsigned(ap_const_lv9_0) - unsigned(gy_reg_715));
    y_fu_244_p2 <= std_logic_vector(unsigned(y_i_reg_198) + unsigned(ap_const_lv13_1));
end behav;