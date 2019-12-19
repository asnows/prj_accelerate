-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:maxtri7x7_shift:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT maxtri7x7_shift_0
  PORT (
    vsync : IN STD_LOGIC;
    s_axis_aclk : IN STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axis_tlast : IN STD_LOGIC;
    s_axis_tuser : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    m_axis_line_buff_0_tlast : OUT STD_LOGIC;
    m_axis_line_buff_0_tuser : OUT STD_LOGIC;
    m_axis_line_buff_0_tvalid : OUT STD_LOGIC;
    m_axis_line_buff_0_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_line_buff_1_tlast : OUT STD_LOGIC;
    m_axis_line_buff_1_tuser : OUT STD_LOGIC;
    m_axis_line_buff_1_tvalid : OUT STD_LOGIC;
    m_axis_line_buff_1_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_line_buff_2_tlast : OUT STD_LOGIC;
    m_axis_line_buff_2_tuser : OUT STD_LOGIC;
    m_axis_line_buff_2_tvalid : OUT STD_LOGIC;
    m_axis_line_buff_2_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_line_buff_3_tlast : OUT STD_LOGIC;
    m_axis_line_buff_3_tuser : OUT STD_LOGIC;
    m_axis_line_buff_3_tvalid : OUT STD_LOGIC;
    m_axis_line_buff_3_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_line_buff_4_tlast : OUT STD_LOGIC;
    m_axis_line_buff_4_tuser : OUT STD_LOGIC;
    m_axis_line_buff_4_tvalid : OUT STD_LOGIC;
    m_axis_line_buff_4_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_line_buff_5_tlast : OUT STD_LOGIC;
    m_axis_line_buff_5_tuser : OUT STD_LOGIC;
    m_axis_line_buff_5_tvalid : OUT STD_LOGIC;
    m_axis_line_buff_5_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_line_buff_6_tlast : OUT STD_LOGIC;
    m_axis_line_buff_6_tuser : OUT STD_LOGIC;
    m_axis_line_buff_6_tvalid : OUT STD_LOGIC;
    m_axis_line_buff_6_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : maxtri7x7_shift_0
  PORT MAP (
    vsync => vsync,
    s_axis_aclk => s_axis_aclk,
    s_axis_tdata => s_axis_tdata,
    s_axis_tlast => s_axis_tlast,
    s_axis_tuser => s_axis_tuser,
    s_axis_tvalid => s_axis_tvalid,
    m_axis_line_buff_0_tlast => m_axis_line_buff_0_tlast,
    m_axis_line_buff_0_tuser => m_axis_line_buff_0_tuser,
    m_axis_line_buff_0_tvalid => m_axis_line_buff_0_tvalid,
    m_axis_line_buff_0_tdata => m_axis_line_buff_0_tdata,
    m_axis_line_buff_1_tlast => m_axis_line_buff_1_tlast,
    m_axis_line_buff_1_tuser => m_axis_line_buff_1_tuser,
    m_axis_line_buff_1_tvalid => m_axis_line_buff_1_tvalid,
    m_axis_line_buff_1_tdata => m_axis_line_buff_1_tdata,
    m_axis_line_buff_2_tlast => m_axis_line_buff_2_tlast,
    m_axis_line_buff_2_tuser => m_axis_line_buff_2_tuser,
    m_axis_line_buff_2_tvalid => m_axis_line_buff_2_tvalid,
    m_axis_line_buff_2_tdata => m_axis_line_buff_2_tdata,
    m_axis_line_buff_3_tlast => m_axis_line_buff_3_tlast,
    m_axis_line_buff_3_tuser => m_axis_line_buff_3_tuser,
    m_axis_line_buff_3_tvalid => m_axis_line_buff_3_tvalid,
    m_axis_line_buff_3_tdata => m_axis_line_buff_3_tdata,
    m_axis_line_buff_4_tlast => m_axis_line_buff_4_tlast,
    m_axis_line_buff_4_tuser => m_axis_line_buff_4_tuser,
    m_axis_line_buff_4_tvalid => m_axis_line_buff_4_tvalid,
    m_axis_line_buff_4_tdata => m_axis_line_buff_4_tdata,
    m_axis_line_buff_5_tlast => m_axis_line_buff_5_tlast,
    m_axis_line_buff_5_tuser => m_axis_line_buff_5_tuser,
    m_axis_line_buff_5_tvalid => m_axis_line_buff_5_tvalid,
    m_axis_line_buff_5_tdata => m_axis_line_buff_5_tdata,
    m_axis_line_buff_6_tlast => m_axis_line_buff_6_tlast,
    m_axis_line_buff_6_tuser => m_axis_line_buff_6_tuser,
    m_axis_line_buff_6_tvalid => m_axis_line_buff_6_tvalid,
    m_axis_line_buff_6_tdata => m_axis_line_buff_6_tdata
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file maxtri7x7_shift_0.vhd when simulating
-- the core, maxtri7x7_shift_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

