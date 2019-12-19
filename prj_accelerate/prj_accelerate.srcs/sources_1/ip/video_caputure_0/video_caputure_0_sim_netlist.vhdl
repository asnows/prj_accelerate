-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Aug  8 15:28:31 2019
-- Host        : VT2OB6D7ZB52FZ0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/WorkSpace/project/FPGA/prj_accelerate/prj_accelerate/prj_accelerate.srcs/sources_1/ip/video_caputure_0/video_caputure_0_sim_netlist.vhdl
-- Design      : video_caputure_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity video_caputure_0_video_caputure is
  port (
    m_axis_tuser : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    vsync : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of video_caputure_0_video_caputure : entity is "video_caputure";
end video_caputure_0_video_caputure;

architecture STRUCTURE of video_caputure_0_video_caputure is
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \row_pixels_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \row_pixels_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \row_pixels_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \row_pixels_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \row_pixels_count[9]_i_5_n_0\ : STD_LOGIC;
  signal \row_pixels_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tlast_tmp_i_1_n_0 : STD_LOGIC;
  signal tlast_tmp_i_2_n_0 : STD_LOGIC;
  signal tuser_tmp : STD_LOGIC;
  signal tuser_tmp_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axis_tuser_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \row_pixels_count[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \row_pixels_count[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \row_pixels_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \row_pixels_count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \row_pixels_count[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \row_pixels_count[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \row_pixels_count[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \row_pixels_count[9]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \row_pixels_count[9]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of tlast_tmp_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of tuser_tmp_i_1 : label is "soft_lutpair4";
begin
m_axis_tuser_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tuser_tmp,
      I1 => s_axis_tvalid,
      O => m_axis_tuser
    );
\row_pixels_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(0),
      O => \row_pixels_count[0]_i_1_n_0\
    );
\row_pixels_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(0),
      I1 => \row_pixels_count_reg__0\(1),
      O => p_0_in(1)
    );
\row_pixels_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(1),
      I1 => \row_pixels_count_reg__0\(0),
      I2 => \row_pixels_count_reg__0\(2),
      O => p_0_in(2)
    );
\row_pixels_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(2),
      I1 => \row_pixels_count_reg__0\(0),
      I2 => \row_pixels_count_reg__0\(1),
      I3 => \row_pixels_count_reg__0\(3),
      O => p_0_in(3)
    );
\row_pixels_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(3),
      I1 => \row_pixels_count_reg__0\(1),
      I2 => \row_pixels_count_reg__0\(0),
      I3 => \row_pixels_count_reg__0\(2),
      I4 => \row_pixels_count_reg__0\(4),
      O => p_0_in(4)
    );
\row_pixels_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(4),
      I1 => \row_pixels_count_reg__0\(2),
      I2 => \row_pixels_count_reg__0\(0),
      I3 => \row_pixels_count_reg__0\(1),
      I4 => \row_pixels_count_reg__0\(3),
      I5 => \row_pixels_count_reg__0\(5),
      O => p_0_in(5)
    );
\row_pixels_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \row_pixels_count[9]_i_5_n_0\,
      I1 => \row_pixels_count_reg__0\(6),
      O => p_0_in(6)
    );
\row_pixels_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(6),
      I1 => \row_pixels_count[9]_i_5_n_0\,
      I2 => \row_pixels_count_reg__0\(7),
      O => p_0_in(7)
    );
\row_pixels_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(7),
      I1 => \row_pixels_count[9]_i_5_n_0\,
      I2 => \row_pixels_count_reg__0\(6),
      I3 => \row_pixels_count_reg__0\(8),
      O => p_0_in(8)
    );
\row_pixels_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAE000000"
    )
        port map (
      I0 => \row_pixels_count[9]_i_4_n_0\,
      I1 => \row_pixels_count_reg__0\(6),
      I2 => \row_pixels_count[9]_i_5_n_0\,
      I3 => \row_pixels_count[9]_i_2_n_0\,
      I4 => \row_pixels_count_reg__0\(9),
      I5 => vsync,
      O => \row_pixels_count[9]_i_1_n_0\
    );
\row_pixels_count[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      O => \row_pixels_count[9]_i_2_n_0\
    );
\row_pixels_count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(8),
      I1 => \row_pixels_count_reg__0\(6),
      I2 => \row_pixels_count[9]_i_5_n_0\,
      I3 => \row_pixels_count_reg__0\(7),
      I4 => \row_pixels_count_reg__0\(9),
      O => p_0_in(9)
    );
\row_pixels_count[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(7),
      I1 => \row_pixels_count_reg__0\(8),
      O => \row_pixels_count[9]_i_4_n_0\
    );
\row_pixels_count[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(4),
      I1 => \row_pixels_count_reg__0\(2),
      I2 => \row_pixels_count_reg__0\(0),
      I3 => \row_pixels_count_reg__0\(1),
      I4 => \row_pixels_count_reg__0\(3),
      I5 => \row_pixels_count_reg__0\(5),
      O => \row_pixels_count[9]_i_5_n_0\
    );
\row_pixels_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \row_pixels_count[9]_i_2_n_0\,
      D => \row_pixels_count[0]_i_1_n_0\,
      Q => \row_pixels_count_reg__0\(0),
      R => \row_pixels_count[9]_i_1_n_0\
    );
\row_pixels_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \row_pixels_count[9]_i_2_n_0\,
      D => p_0_in(1),
      Q => \row_pixels_count_reg__0\(1),
      R => \row_pixels_count[9]_i_1_n_0\
    );
\row_pixels_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \row_pixels_count[9]_i_2_n_0\,
      D => p_0_in(2),
      Q => \row_pixels_count_reg__0\(2),
      R => \row_pixels_count[9]_i_1_n_0\
    );
\row_pixels_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \row_pixels_count[9]_i_2_n_0\,
      D => p_0_in(3),
      Q => \row_pixels_count_reg__0\(3),
      R => \row_pixels_count[9]_i_1_n_0\
    );
\row_pixels_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \row_pixels_count[9]_i_2_n_0\,
      D => p_0_in(4),
      Q => \row_pixels_count_reg__0\(4),
      R => \row_pixels_count[9]_i_1_n_0\
    );
\row_pixels_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \row_pixels_count[9]_i_2_n_0\,
      D => p_0_in(5),
      Q => \row_pixels_count_reg__0\(5),
      R => \row_pixels_count[9]_i_1_n_0\
    );
\row_pixels_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \row_pixels_count[9]_i_2_n_0\,
      D => p_0_in(6),
      Q => \row_pixels_count_reg__0\(6),
      R => \row_pixels_count[9]_i_1_n_0\
    );
\row_pixels_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \row_pixels_count[9]_i_2_n_0\,
      D => p_0_in(7),
      Q => \row_pixels_count_reg__0\(7),
      R => \row_pixels_count[9]_i_1_n_0\
    );
\row_pixels_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \row_pixels_count[9]_i_2_n_0\,
      D => p_0_in(8),
      Q => \row_pixels_count_reg__0\(8),
      R => \row_pixels_count[9]_i_1_n_0\
    );
\row_pixels_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axis_aclk,
      CE => \row_pixels_count[9]_i_2_n_0\,
      D => p_0_in(9),
      Q => \row_pixels_count_reg__0\(9),
      R => \row_pixels_count[9]_i_1_n_0\
    );
tlast_tmp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(7),
      I1 => \row_pixels_count_reg__0\(8),
      I2 => \row_pixels_count_reg__0\(1),
      I3 => \row_pixels_count_reg__0\(0),
      I4 => tlast_tmp_i_2_n_0,
      O => tlast_tmp_i_1_n_0
    );
tlast_tmp_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \row_pixels_count_reg__0\(4),
      I1 => \row_pixels_count_reg__0\(5),
      I2 => \row_pixels_count_reg__0\(2),
      I3 => \row_pixels_count_reg__0\(3),
      I4 => \row_pixels_count_reg__0\(9),
      I5 => \row_pixels_count_reg__0\(6),
      O => tlast_tmp_i_2_n_0
    );
tlast_tmp_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => tlast_tmp_i_1_n_0,
      Q => m_axis_tlast,
      R => '0'
    );
tuser_tmp_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => tuser_tmp,
      I2 => vsync,
      O => tuser_tmp_i_1_n_0
    );
tuser_tmp_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => tuser_tmp_i_1_n_0,
      Q => tuser_tmp,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity video_caputure_0 is
  port (
    vsync : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of video_caputure_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of video_caputure_0 : entity is "video_caputure_0,video_caputure,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of video_caputure_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of video_caputure_0 : entity is "video_caputure,Vivado 2018.1";
end video_caputure_0;

architecture STRUCTURE of video_caputure_0 is
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 s_axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tdata\(63 downto 0) <= s_axis_tdata(63 downto 0);
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(63 downto 0) <= \^s_axis_tdata\(63 downto 0);
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
inst: entity work.video_caputure_0_video_caputure
     port map (
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => \^m_axis_tready\,
      m_axis_tuser => m_axis_tuser,
      s_axis_aclk => s_axis_aclk,
      s_axis_tvalid => \^s_axis_tvalid\,
      vsync => vsync
    );
end STRUCTURE;
