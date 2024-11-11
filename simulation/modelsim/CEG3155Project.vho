-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/11/2024 17:14:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	trafficLighttopLevel IS
    PORT (
	GClock : IN std_logic;
	GReset : IN std_logic;
	SSCS : IN std_logic;
	MSC : IN std_logic_vector(3 DOWNTO 0);
	SSC : IN std_logic_vector(3 DOWNTO 0);
	MSTL : OUT std_logic_vector(2 DOWNTO 0);
	SSTL : OUT std_logic_vector(2 DOWNTO 0);
	SegmentOut : OUT std_logic_vector(13 DOWNTO 0)
	);
END trafficLighttopLevel;

-- Design Ports Information
-- MSTL[0]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTL[1]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTL[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSTL[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSTL[1]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSTL[2]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[1]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[3]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[4]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[6]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[8]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[9]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[10]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[11]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[12]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[13]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSCS	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GReset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSC[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSC[2]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSC[1]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSC[0]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF trafficLighttopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_GClock : std_logic;
SIGNAL ww_GReset : std_logic;
SIGNAL ww_SSCS : std_logic;
SIGNAL ww_MSC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SSC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MSTL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SSTL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SegmentOut : std_logic_vector(13 DOWNTO 0);
SIGNAL \GReset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSTL[0]~output_o\ : std_logic;
SIGNAL \MSTL[1]~output_o\ : std_logic;
SIGNAL \MSTL[2]~output_o\ : std_logic;
SIGNAL \SSTL[0]~output_o\ : std_logic;
SIGNAL \SSTL[1]~output_o\ : std_logic;
SIGNAL \SSTL[2]~output_o\ : std_logic;
SIGNAL \SegmentOut[0]~output_o\ : std_logic;
SIGNAL \SegmentOut[1]~output_o\ : std_logic;
SIGNAL \SegmentOut[2]~output_o\ : std_logic;
SIGNAL \SegmentOut[3]~output_o\ : std_logic;
SIGNAL \SegmentOut[4]~output_o\ : std_logic;
SIGNAL \SegmentOut[5]~output_o\ : std_logic;
SIGNAL \SegmentOut[6]~output_o\ : std_logic;
SIGNAL \SegmentOut[7]~output_o\ : std_logic;
SIGNAL \SegmentOut[8]~output_o\ : std_logic;
SIGNAL \SegmentOut[9]~output_o\ : std_logic;
SIGNAL \SegmentOut[10]~output_o\ : std_logic;
SIGNAL \SegmentOut[11]~output_o\ : std_logic;
SIGNAL \SegmentOut[12]~output_o\ : std_logic;
SIGNAL \SegmentOut[13]~output_o\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter_4bit_MTT|FF0|int_q~0_combout\ : std_logic;
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \GReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter_4bit_MTT|FF0|int_q~q\ : std_logic;
SIGNAL \counter_4bit_MTT|FF1|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_MTT|FF1|int_q~q\ : std_logic;
SIGNAL \counter_4bit_MTT|FF2|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_MTT|FF2|int_q~q\ : std_logic;
SIGNAL \counter_4bit_MTT|FF3|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_MTT|FF3|int_q~1_combout\ : std_logic;
SIGNAL \counter_4bit_MTT|FF3|int_q~q\ : std_logic;
SIGNAL \equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\ : std_logic;
SIGNAL \MSC[2]~input_o\ : std_logic;
SIGNAL \MSC[3]~input_o\ : std_logic;
SIGNAL \SSCS~input_o\ : std_logic;
SIGNAL \MSC[0]~input_o\ : std_logic;
SIGNAL \MSC[1]~input_o\ : std_logic;
SIGNAL \equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\ : std_logic;
SIGNAL \counter_4bit_MSLTimer|FF3|int_q~1_combout\ : std_logic;
SIGNAL \counter_4bit_MSLTimer|FF3|int_q~q\ : std_logic;
SIGNAL \equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\ : std_logic;
SIGNAL \MSLTHoldCond~combout\ : std_logic;
SIGNAL \counter_4bit_MSLTimer|FF0|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_MSLTimer|FF0|int_q~q\ : std_logic;
SIGNAL \counter_4bit_MSLTimer|FF1|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_MSLTimer|FF1|int_q~q\ : std_logic;
SIGNAL \counter_4bit_MSLTimer|FF3|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_MSLTimer|FF2|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_MSLTimer|FF2|int_q~q\ : std_logic;
SIGNAL \equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\ : std_logic;
SIGNAL \MSTLIsYellow~0_combout\ : std_logic;
SIGNAL \MSTLIsYellow~1_combout\ : std_logic;
SIGNAL \d_FF_MSTL_Low|int_q~q\ : std_logic;
SIGNAL \counter_4bit_SSLTimer|FF0|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_SSLTimer|FF0|int_q~q\ : std_logic;
SIGNAL \counter_4bit_SSLTimer|FF1|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_SSLTimer|FF1|int_q~q\ : std_logic;
SIGNAL \counter_4bit_SSLTimer|FF2|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_SSLTimer|FF2|int_q~q\ : std_logic;
SIGNAL \counter_4bit_SSLTimer|FF3|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_SSLTimer|FF3|int_q~1_combout\ : std_logic;
SIGNAL \counter_4bit_SSLTimer|FF3|int_q~q\ : std_logic;
SIGNAL \SSC[3]~input_o\ : std_logic;
SIGNAL \SSC[2]~input_o\ : std_logic;
SIGNAL \SSC[1]~input_o\ : std_logic;
SIGNAL \SSC[0]~input_o\ : std_logic;
SIGNAL \equality_Comparator_4bit_SSLT_SSC|isEqual~0_combout\ : std_logic;
SIGNAL \equality_Comparator_4bit_SSLT_SSC|isEqual~1_combout\ : std_logic;
SIGNAL \equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\ : std_logic;
SIGNAL \SSTLIsGreen~0_combout\ : std_logic;
SIGNAL \d_FF_SSTL_High|int_q~q\ : std_logic;
SIGNAL \SSTLIsYellow~combout\ : std_logic;
SIGNAL \d_FF_SSTL_Low|int_q~q\ : std_logic;
SIGNAL \counter_4bit_SST|FF0|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_SST|FF0|int_q~q\ : std_logic;
SIGNAL \counter_4bit_SST|FF1|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_SST|FF1|int_q~q\ : std_logic;
SIGNAL \counter_4bit_SST|FF2|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_SST|FF2|int_q~q\ : std_logic;
SIGNAL \counter_4bit_SST|FF3|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_SST|FF3|int_q~1_combout\ : std_logic;
SIGNAL \counter_4bit_SST|FF3|int_q~q\ : std_logic;
SIGNAL \MSTLIsGreen~1_combout\ : std_logic;
SIGNAL \MSTLIsGreen~0_combout\ : std_logic;
SIGNAL \MSTLIsGreen~2_combout\ : std_logic;
SIGNAL \d_FF_MSTL_High|int_q~q\ : std_logic;
SIGNAL \MSTL~0_combout\ : std_logic;
SIGNAL \displayOnBCD[2]~1_combout\ : std_logic;
SIGNAL \displayOnBCD[1]~3_combout\ : std_logic;
SIGNAL \displayOnBCD[3]~2_combout\ : std_logic;
SIGNAL \displayOnBCD[0]~0_combout\ : std_logic;
SIGNAL \BCD_to_7Segment_inst|seg[0]~0_combout\ : std_logic;
SIGNAL \BCD_to_7Segment_inst|seg[1]~1_combout\ : std_logic;
SIGNAL \BCD_to_7Segment_inst|seg[2]~2_combout\ : std_logic;
SIGNAL \BCD_to_7Segment_inst|seg[3]~3_combout\ : std_logic;
SIGNAL \BCD_to_7Segment_inst|seg[4]~4_combout\ : std_logic;
SIGNAL \BCD_to_7Segment_inst|seg[5]~5_combout\ : std_logic;
SIGNAL \BCD_to_7Segment_inst|seg[6]~6_combout\ : std_logic;
SIGNAL \BCD_to_7Segment_inst|seg[8]~7_combout\ : std_logic;
SIGNAL \ALT_INV_GReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_MSTL~0_combout\ : std_logic;

BEGIN

ww_GClock <= GClock;
ww_GReset <= GReset;
ww_SSCS <= SSCS;
ww_MSC <= MSC;
ww_SSC <= SSC;
MSTL <= ww_MSTL;
SSTL <= ww_SSTL;
SegmentOut <= ww_SegmentOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\GReset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GReset~input_o\);

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);
\ALT_INV_GReset~inputclkctrl_outclk\ <= NOT \GReset~inputclkctrl_outclk\;
\ALT_INV_MSTL~0_combout\ <= NOT \MSTL~0_combout\;

-- Location: IOOBUF_X115_Y13_N9
\MSTL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_MSTL~0_combout\,
	devoe => ww_devoe,
	o => \MSTL[0]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\MSTL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_FF_MSTL_Low|int_q~q\,
	devoe => ww_devoe,
	o => \MSTL[1]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\MSTL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_FF_MSTL_High|int_q~q\,
	devoe => ww_devoe,
	o => \MSTL[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\SSTL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MSTLIsGreen~0_combout\,
	devoe => ww_devoe,
	o => \SSTL[0]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\SSTL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_FF_SSTL_Low|int_q~q\,
	devoe => ww_devoe,
	o => \SSTL[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\SSTL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_FF_SSTL_High|int_q~q\,
	devoe => ww_devoe,
	o => \SSTL[2]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\SegmentOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7Segment_inst|seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[0]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\SegmentOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7Segment_inst|seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[1]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\SegmentOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7Segment_inst|seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[2]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\SegmentOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7Segment_inst|seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[3]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\SegmentOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7Segment_inst|seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\SegmentOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7Segment_inst|seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\SegmentOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7Segment_inst|seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[6]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\SegmentOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SegmentOut[7]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\SegmentOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7Segment_inst|seg[8]~7_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[8]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\SegmentOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7Segment_inst|seg[8]~7_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[9]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\SegmentOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SegmentOut[10]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\SegmentOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SegmentOut[11]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\SegmentOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SegmentOut[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\SegmentOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SegmentOut[13]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\GClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: CLKCTRL_G2
\GClock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GClock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GClock~inputclkctrl_outclk\);

-- Location: LCCOMB_X112_Y17_N4
\counter_4bit_MTT|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_MTT|FF0|int_q~0_combout\ = \counter_4bit_MTT|FF0|int_q~q\ $ (\d_FF_MSTL_Low|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4bit_MTT|FF0|int_q~q\,
	datad => \d_FF_MSTL_Low|int_q~q\,
	combout => \counter_4bit_MTT|FF0|int_q~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\GReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GReset,
	o => \GReset~input_o\);

-- Location: CLKCTRL_G4
\GReset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GReset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GReset~inputclkctrl_outclk\);

-- Location: FF_X112_Y17_N5
\counter_4bit_MTT|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_MTT|FF0|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_MTT|FF0|int_q~q\);

-- Location: LCCOMB_X112_Y17_N14
\counter_4bit_MTT|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_MTT|FF1|int_q~0_combout\ = \counter_4bit_MTT|FF1|int_q~q\ $ (((\counter_4bit_MTT|FF0|int_q~q\ & \d_FF_MSTL_Low|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_4bit_MTT|FF0|int_q~q\,
	datac => \counter_4bit_MTT|FF1|int_q~q\,
	datad => \d_FF_MSTL_Low|int_q~q\,
	combout => \counter_4bit_MTT|FF1|int_q~0_combout\);

-- Location: FF_X112_Y17_N15
\counter_4bit_MTT|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_MTT|FF1|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_MTT|FF1|int_q~q\);

-- Location: LCCOMB_X113_Y17_N18
\counter_4bit_MTT|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_MTT|FF2|int_q~0_combout\ = \counter_4bit_MTT|FF2|int_q~q\ $ (((\counter_4bit_MTT|FF1|int_q~q\ & (\counter_4bit_MTT|FF0|int_q~q\ & \d_FF_MSTL_Low|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_MTT|FF1|int_q~q\,
	datab => \counter_4bit_MTT|FF0|int_q~q\,
	datac => \counter_4bit_MTT|FF2|int_q~q\,
	datad => \d_FF_MSTL_Low|int_q~q\,
	combout => \counter_4bit_MTT|FF2|int_q~0_combout\);

-- Location: FF_X113_Y17_N19
\counter_4bit_MTT|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_MTT|FF2|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_MTT|FF2|int_q~q\);

-- Location: LCCOMB_X113_Y17_N22
\counter_4bit_MTT|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_MTT|FF3|int_q~0_combout\ = (\counter_4bit_MTT|FF1|int_q~q\ & (\counter_4bit_MTT|FF2|int_q~q\ & (\counter_4bit_MTT|FF0|int_q~q\ & \d_FF_MSTL_Low|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_MTT|FF1|int_q~q\,
	datab => \counter_4bit_MTT|FF2|int_q~q\,
	datac => \counter_4bit_MTT|FF0|int_q~q\,
	datad => \d_FF_MSTL_Low|int_q~q\,
	combout => \counter_4bit_MTT|FF3|int_q~0_combout\);

-- Location: LCCOMB_X113_Y17_N26
\counter_4bit_MTT|FF3|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_MTT|FF3|int_q~1_combout\ = \counter_4bit_MTT|FF3|int_q~q\ $ (\counter_4bit_MTT|FF3|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4bit_MTT|FF3|int_q~q\,
	datad => \counter_4bit_MTT|FF3|int_q~0_combout\,
	combout => \counter_4bit_MTT|FF3|int_q~1_combout\);

-- Location: FF_X113_Y17_N27
\counter_4bit_MTT|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_MTT|FF3|int_q~1_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_MTT|FF3|int_q~q\);

-- Location: LCCOMB_X113_Y17_N6
\equality_Comparator_4bit_MTTTT_MT|isEqual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\ = (\counter_4bit_MTT|FF3|int_q~q\ & \counter_4bit_MTT|FF2|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4bit_MTT|FF3|int_q~q\,
	datad => \counter_4bit_MTT|FF2|int_q~q\,
	combout => \equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\MSC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(2),
	o => \MSC[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\MSC[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(3),
	o => \MSC[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SSCS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSCS,
	o => \SSCS~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\MSC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(0),
	o => \MSC[0]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\MSC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(1),
	o => \MSC[1]~input_o\);

-- Location: LCCOMB_X114_Y17_N8
\equality_Comparator_4bit_MSLT_MSC|isEqual~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\ = (\MSC[1]~input_o\ & (\counter_4bit_MSLTimer|FF1|int_q~q\ & ((\counter_4bit_MSLTimer|FF0|int_q~q\) # (!\MSC[0]~input_o\)))) # (!\MSC[1]~input_o\ & ((\counter_4bit_MSLTimer|FF0|int_q~q\) # 
-- ((\counter_4bit_MSLTimer|FF1|int_q~q\) # (!\MSC[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_MSLTimer|FF0|int_q~q\,
	datab => \MSC[0]~input_o\,
	datac => \MSC[1]~input_o\,
	datad => \counter_4bit_MSLTimer|FF1|int_q~q\,
	combout => \equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\);

-- Location: LCCOMB_X114_Y17_N18
\counter_4bit_MSLTimer|FF3|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_MSLTimer|FF3|int_q~1_combout\ = \counter_4bit_MSLTimer|FF3|int_q~q\ $ (((\counter_4bit_MSLTimer|FF2|int_q~q\ & \counter_4bit_MSLTimer|FF3|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_MSLTimer|FF2|int_q~q\,
	datac => \counter_4bit_MSLTimer|FF3|int_q~q\,
	datad => \counter_4bit_MSLTimer|FF3|int_q~0_combout\,
	combout => \counter_4bit_MSLTimer|FF3|int_q~1_combout\);

-- Location: FF_X114_Y17_N19
\counter_4bit_MSLTimer|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_MSLTimer|FF3|int_q~1_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_MSLTimer|FF3|int_q~q\);

-- Location: LCCOMB_X114_Y17_N2
\equality_Comparator_4bit_MSLT_MSC|isEqual~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\ = (\MSC[2]~input_o\ & (\counter_4bit_MSLTimer|FF2|int_q~q\ & (\MSC[3]~input_o\ $ (!\counter_4bit_MSLTimer|FF3|int_q~q\)))) # (!\MSC[2]~input_o\ & (!\counter_4bit_MSLTimer|FF2|int_q~q\ & 
-- (\MSC[3]~input_o\ $ (!\counter_4bit_MSLTimer|FF3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[2]~input_o\,
	datab => \MSC[3]~input_o\,
	datac => \counter_4bit_MSLTimer|FF2|int_q~q\,
	datad => \counter_4bit_MSLTimer|FF3|int_q~q\,
	combout => \equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\);

-- Location: LCCOMB_X114_Y17_N28
MSLTHoldCond : cycloneive_lcell_comb
-- Equation(s):
-- \MSLTHoldCond~combout\ = (!\SSCS~input_o\ & ((\equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\) # ((\equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\ & \equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSCS~input_o\,
	datab => \equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\,
	datac => \equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\,
	datad => \equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\,
	combout => \MSLTHoldCond~combout\);

-- Location: LCCOMB_X114_Y17_N6
\counter_4bit_MSLTimer|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_MSLTimer|FF0|int_q~0_combout\ = \counter_4bit_MSLTimer|FF0|int_q~q\ $ (((\d_FF_MSTL_High|int_q~q\ & !\MSLTHoldCond~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_FF_MSTL_High|int_q~q\,
	datac => \counter_4bit_MSLTimer|FF0|int_q~q\,
	datad => \MSLTHoldCond~combout\,
	combout => \counter_4bit_MSLTimer|FF0|int_q~0_combout\);

-- Location: FF_X114_Y17_N7
\counter_4bit_MSLTimer|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_MSLTimer|FF0|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_MSLTimer|FF0|int_q~q\);

-- Location: LCCOMB_X114_Y17_N16
\counter_4bit_MSLTimer|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_MSLTimer|FF1|int_q~0_combout\ = \counter_4bit_MSLTimer|FF1|int_q~q\ $ (((\counter_4bit_MSLTimer|FF0|int_q~q\ & (\d_FF_MSTL_High|int_q~q\ & !\MSLTHoldCond~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_MSLTimer|FF0|int_q~q\,
	datab => \d_FF_MSTL_High|int_q~q\,
	datac => \counter_4bit_MSLTimer|FF1|int_q~q\,
	datad => \MSLTHoldCond~combout\,
	combout => \counter_4bit_MSLTimer|FF1|int_q~0_combout\);

-- Location: FF_X114_Y17_N17
\counter_4bit_MSLTimer|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_MSLTimer|FF1|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_MSLTimer|FF1|int_q~q\);

-- Location: LCCOMB_X114_Y17_N10
\counter_4bit_MSLTimer|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_MSLTimer|FF3|int_q~0_combout\ = (\d_FF_MSTL_High|int_q~q\ & (\counter_4bit_MSLTimer|FF1|int_q~q\ & (\counter_4bit_MSLTimer|FF0|int_q~q\ & !\MSLTHoldCond~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_FF_MSTL_High|int_q~q\,
	datab => \counter_4bit_MSLTimer|FF1|int_q~q\,
	datac => \counter_4bit_MSLTimer|FF0|int_q~q\,
	datad => \MSLTHoldCond~combout\,
	combout => \counter_4bit_MSLTimer|FF3|int_q~0_combout\);

-- Location: LCCOMB_X114_Y17_N4
\counter_4bit_MSLTimer|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_MSLTimer|FF2|int_q~0_combout\ = \counter_4bit_MSLTimer|FF2|int_q~q\ $ (\counter_4bit_MSLTimer|FF3|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4bit_MSLTimer|FF2|int_q~q\,
	datad => \counter_4bit_MSLTimer|FF3|int_q~0_combout\,
	combout => \counter_4bit_MSLTimer|FF2|int_q~0_combout\);

-- Location: FF_X114_Y17_N5
\counter_4bit_MSLTimer|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_MSLTimer|FF2|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_MSLTimer|FF2|int_q~q\);

-- Location: LCCOMB_X114_Y17_N26
\equality_Comparator_4bit_MSLT_MSC|isEqual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\ = (\MSC[3]~input_o\ & (!\MSC[2]~input_o\ & (\counter_4bit_MSLTimer|FF2|int_q~q\ & \counter_4bit_MSLTimer|FF3|int_q~q\))) # (!\MSC[3]~input_o\ & ((\counter_4bit_MSLTimer|FF3|int_q~q\) # 
-- ((!\MSC[2]~input_o\ & \counter_4bit_MSLTimer|FF2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[2]~input_o\,
	datab => \MSC[3]~input_o\,
	datac => \counter_4bit_MSLTimer|FF2|int_q~q\,
	datad => \counter_4bit_MSLTimer|FF3|int_q~q\,
	combout => \equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\);

-- Location: LCCOMB_X114_Y17_N12
\MSTLIsYellow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSTLIsYellow~0_combout\ = (\SSCS~input_o\ & ((\equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\) # ((\equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\ & \equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\,
	datab => \SSCS~input_o\,
	datac => \equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\,
	datad => \equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\,
	combout => \MSTLIsYellow~0_combout\);

-- Location: LCCOMB_X114_Y17_N22
\MSTLIsYellow~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSTLIsYellow~1_combout\ = (\d_FF_MSTL_High|int_q~q\ & (!\d_FF_MSTL_Low|int_q~q\ & ((\MSTLIsYellow~0_combout\)))) # (!\d_FF_MSTL_High|int_q~q\ & (\d_FF_MSTL_Low|int_q~q\ & (!\equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_FF_MSTL_High|int_q~q\,
	datab => \d_FF_MSTL_Low|int_q~q\,
	datac => \equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\,
	datad => \MSTLIsYellow~0_combout\,
	combout => \MSTLIsYellow~1_combout\);

-- Location: FF_X114_Y17_N31
\d_FF_MSTL_Low|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \MSTLIsYellow~1_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_FF_MSTL_Low|int_q~q\);

-- Location: LCCOMB_X113_Y17_N8
\counter_4bit_SSLTimer|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_SSLTimer|FF0|int_q~0_combout\ = \counter_4bit_SSLTimer|FF0|int_q~q\ $ (\d_FF_SSTL_High|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4bit_SSLTimer|FF0|int_q~q\,
	datad => \d_FF_SSTL_High|int_q~q\,
	combout => \counter_4bit_SSLTimer|FF0|int_q~0_combout\);

-- Location: FF_X113_Y17_N9
\counter_4bit_SSLTimer|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_SSLTimer|FF0|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_SSLTimer|FF0|int_q~q\);

-- Location: LCCOMB_X113_Y17_N2
\counter_4bit_SSLTimer|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_SSLTimer|FF1|int_q~0_combout\ = \counter_4bit_SSLTimer|FF1|int_q~q\ $ (((\counter_4bit_SSLTimer|FF0|int_q~q\ & \d_FF_SSTL_High|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_SSLTimer|FF0|int_q~q\,
	datac => \counter_4bit_SSLTimer|FF1|int_q~q\,
	datad => \d_FF_SSTL_High|int_q~q\,
	combout => \counter_4bit_SSLTimer|FF1|int_q~0_combout\);

-- Location: FF_X113_Y17_N3
\counter_4bit_SSLTimer|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_SSLTimer|FF1|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_SSLTimer|FF1|int_q~q\);

-- Location: LCCOMB_X113_Y17_N4
\counter_4bit_SSLTimer|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_SSLTimer|FF2|int_q~0_combout\ = \counter_4bit_SSLTimer|FF2|int_q~q\ $ (((\counter_4bit_SSLTimer|FF0|int_q~q\ & (\counter_4bit_SSLTimer|FF1|int_q~q\ & \d_FF_SSTL_High|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_SSLTimer|FF0|int_q~q\,
	datab => \counter_4bit_SSLTimer|FF1|int_q~q\,
	datac => \counter_4bit_SSLTimer|FF2|int_q~q\,
	datad => \d_FF_SSTL_High|int_q~q\,
	combout => \counter_4bit_SSLTimer|FF2|int_q~0_combout\);

-- Location: FF_X113_Y17_N5
\counter_4bit_SSLTimer|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_SSLTimer|FF2|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_SSLTimer|FF2|int_q~q\);

-- Location: LCCOMB_X113_Y17_N12
\counter_4bit_SSLTimer|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_SSLTimer|FF3|int_q~0_combout\ = (\counter_4bit_SSLTimer|FF0|int_q~q\ & (\d_FF_SSTL_High|int_q~q\ & (\counter_4bit_SSLTimer|FF2|int_q~q\ & \counter_4bit_SSLTimer|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_SSLTimer|FF0|int_q~q\,
	datab => \d_FF_SSTL_High|int_q~q\,
	datac => \counter_4bit_SSLTimer|FF2|int_q~q\,
	datad => \counter_4bit_SSLTimer|FF1|int_q~q\,
	combout => \counter_4bit_SSLTimer|FF3|int_q~0_combout\);

-- Location: LCCOMB_X113_Y17_N24
\counter_4bit_SSLTimer|FF3|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_SSLTimer|FF3|int_q~1_combout\ = \counter_4bit_SSLTimer|FF3|int_q~q\ $ (\counter_4bit_SSLTimer|FF3|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4bit_SSLTimer|FF3|int_q~q\,
	datad => \counter_4bit_SSLTimer|FF3|int_q~0_combout\,
	combout => \counter_4bit_SSLTimer|FF3|int_q~1_combout\);

-- Location: FF_X113_Y17_N25
\counter_4bit_SSLTimer|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_SSLTimer|FF3|int_q~1_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_SSLTimer|FF3|int_q~q\);

-- Location: IOIBUF_X115_Y18_N1
\SSC[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSC(3),
	o => \SSC[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SSC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSC(2),
	o => \SSC[2]~input_o\);

-- Location: IOIBUF_X115_Y11_N1
\SSC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSC(1),
	o => \SSC[1]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SSC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSC(0),
	o => \SSC[0]~input_o\);

-- Location: LCCOMB_X113_Y17_N0
\equality_Comparator_4bit_SSLT_SSC|isEqual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \equality_Comparator_4bit_SSLT_SSC|isEqual~0_combout\ = (\SSC[1]~input_o\ & (((\SSC[0]~input_o\ & !\counter_4bit_SSLTimer|FF0|int_q~q\)) # (!\counter_4bit_SSLTimer|FF1|int_q~q\))) # (!\SSC[1]~input_o\ & (\SSC[0]~input_o\ & 
-- (!\counter_4bit_SSLTimer|FF0|int_q~q\ & !\counter_4bit_SSLTimer|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC[1]~input_o\,
	datab => \SSC[0]~input_o\,
	datac => \counter_4bit_SSLTimer|FF0|int_q~q\,
	datad => \counter_4bit_SSLTimer|FF1|int_q~q\,
	combout => \equality_Comparator_4bit_SSLT_SSC|isEqual~0_combout\);

-- Location: LCCOMB_X113_Y17_N10
\equality_Comparator_4bit_SSLT_SSC|isEqual~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \equality_Comparator_4bit_SSLT_SSC|isEqual~1_combout\ = (\SSC[2]~input_o\ & ((\equality_Comparator_4bit_SSLT_SSC|isEqual~0_combout\) # (!\counter_4bit_SSLTimer|FF2|int_q~q\))) # (!\SSC[2]~input_o\ & (!\counter_4bit_SSLTimer|FF2|int_q~q\ & 
-- \equality_Comparator_4bit_SSLT_SSC|isEqual~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC[2]~input_o\,
	datac => \counter_4bit_SSLTimer|FF2|int_q~q\,
	datad => \equality_Comparator_4bit_SSLT_SSC|isEqual~0_combout\,
	combout => \equality_Comparator_4bit_SSLT_SSC|isEqual~1_combout\);

-- Location: LCCOMB_X113_Y17_N28
\equality_Comparator_4bit_SSLT_SSC|isEqual~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\ = (\counter_4bit_SSLTimer|FF3|int_q~q\ & (\SSC[3]~input_o\ & \equality_Comparator_4bit_SSLT_SSC|isEqual~1_combout\)) # (!\counter_4bit_SSLTimer|FF3|int_q~q\ & ((\SSC[3]~input_o\) # 
-- (\equality_Comparator_4bit_SSLT_SSC|isEqual~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_4bit_SSLTimer|FF3|int_q~q\,
	datac => \SSC[3]~input_o\,
	datad => \equality_Comparator_4bit_SSLT_SSC|isEqual~1_combout\,
	combout => \equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\);

-- Location: LCCOMB_X113_Y17_N16
\SSTLIsGreen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSTLIsGreen~0_combout\ = (!\d_FF_SSTL_Low|int_q~q\ & ((\d_FF_SSTL_High|int_q~q\ & ((\equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\))) # (!\d_FF_SSTL_High|int_q~q\ & (\equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\,
	datab => \d_FF_SSTL_Low|int_q~q\,
	datac => \d_FF_SSTL_High|int_q~q\,
	datad => \equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\,
	combout => \SSTLIsGreen~0_combout\);

-- Location: FF_X113_Y17_N17
\d_FF_SSTL_High|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \SSTLIsGreen~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_FF_SSTL_High|int_q~q\);

-- Location: LCCOMB_X113_Y17_N14
SSTLIsYellow : cycloneive_lcell_comb
-- Equation(s):
-- \SSTLIsYellow~combout\ = (\d_FF_SSTL_High|int_q~q\ & (((!\d_FF_SSTL_Low|int_q~q\ & !\equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\)))) # (!\d_FF_SSTL_High|int_q~q\ & (!\counter_4bit_SST|FF3|int_q~q\ & (\d_FF_SSTL_Low|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_SST|FF3|int_q~q\,
	datab => \d_FF_SSTL_High|int_q~q\,
	datac => \d_FF_SSTL_Low|int_q~q\,
	datad => \equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\,
	combout => \SSTLIsYellow~combout\);

-- Location: FF_X113_Y17_N15
\d_FF_SSTL_Low|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \SSTLIsYellow~combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_FF_SSTL_Low|int_q~q\);

-- Location: LCCOMB_X112_Y17_N10
\counter_4bit_SST|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_SST|FF0|int_q~0_combout\ = \d_FF_SSTL_Low|int_q~q\ $ (\counter_4bit_SST|FF0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_FF_SSTL_Low|int_q~q\,
	datac => \counter_4bit_SST|FF0|int_q~q\,
	combout => \counter_4bit_SST|FF0|int_q~0_combout\);

-- Location: FF_X112_Y17_N11
\counter_4bit_SST|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_SST|FF0|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_SST|FF0|int_q~q\);

-- Location: LCCOMB_X112_Y17_N12
\counter_4bit_SST|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_SST|FF1|int_q~0_combout\ = \counter_4bit_SST|FF1|int_q~q\ $ (((\d_FF_SSTL_Low|int_q~q\ & \counter_4bit_SST|FF0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_FF_SSTL_Low|int_q~q\,
	datac => \counter_4bit_SST|FF1|int_q~q\,
	datad => \counter_4bit_SST|FF0|int_q~q\,
	combout => \counter_4bit_SST|FF1|int_q~0_combout\);

-- Location: FF_X112_Y17_N13
\counter_4bit_SST|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_SST|FF1|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_SST|FF1|int_q~q\);

-- Location: LCCOMB_X112_Y17_N6
\counter_4bit_SST|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_SST|FF2|int_q~0_combout\ = \counter_4bit_SST|FF2|int_q~q\ $ (((\counter_4bit_SST|FF1|int_q~q\ & (\d_FF_SSTL_Low|int_q~q\ & \counter_4bit_SST|FF0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_SST|FF1|int_q~q\,
	datab => \d_FF_SSTL_Low|int_q~q\,
	datac => \counter_4bit_SST|FF2|int_q~q\,
	datad => \counter_4bit_SST|FF0|int_q~q\,
	combout => \counter_4bit_SST|FF2|int_q~0_combout\);

-- Location: FF_X112_Y17_N7
\counter_4bit_SST|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_SST|FF2|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_SST|FF2|int_q~q\);

-- Location: LCCOMB_X113_Y17_N30
\counter_4bit_SST|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_SST|FF3|int_q~0_combout\ = (\counter_4bit_SST|FF0|int_q~q\ & (\d_FF_SSTL_Low|int_q~q\ & (\counter_4bit_SST|FF2|int_q~q\ & \counter_4bit_SST|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_SST|FF0|int_q~q\,
	datab => \d_FF_SSTL_Low|int_q~q\,
	datac => \counter_4bit_SST|FF2|int_q~q\,
	datad => \counter_4bit_SST|FF1|int_q~q\,
	combout => \counter_4bit_SST|FF3|int_q~0_combout\);

-- Location: LCCOMB_X114_Y17_N20
\counter_4bit_SST|FF3|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_SST|FF3|int_q~1_combout\ = \counter_4bit_SST|FF3|int_q~q\ $ (\counter_4bit_SST|FF3|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4bit_SST|FF3|int_q~q\,
	datad => \counter_4bit_SST|FF3|int_q~0_combout\,
	combout => \counter_4bit_SST|FF3|int_q~1_combout\);

-- Location: FF_X114_Y17_N21
\counter_4bit_SST|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \counter_4bit_SST|FF3|int_q~1_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_SST|FF3|int_q~q\);

-- Location: LCCOMB_X114_Y17_N30
\MSTLIsGreen~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSTLIsGreen~1_combout\ = ((\counter_4bit_SST|FF3|int_q~q\) # (!\d_FF_MSTL_Low|int_q~q\)) # (!\d_FF_MSTL_High|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_FF_MSTL_High|int_q~q\,
	datac => \d_FF_MSTL_Low|int_q~q\,
	datad => \counter_4bit_SST|FF3|int_q~q\,
	combout => \MSTLIsGreen~1_combout\);

-- Location: LCCOMB_X114_Y17_N24
\MSTLIsGreen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSTLIsGreen~0_combout\ = (!\d_FF_SSTL_Low|int_q~q\ & !\d_FF_SSTL_High|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_FF_SSTL_Low|int_q~q\,
	datac => \d_FF_SSTL_High|int_q~q\,
	combout => \MSTLIsGreen~0_combout\);

-- Location: LCCOMB_X114_Y17_N0
\MSTLIsGreen~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSTLIsGreen~2_combout\ = (\MSTLIsGreen~1_combout\ & (!\equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\ & (!\MSTLIsYellow~1_combout\ & \MSTLIsGreen~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSTLIsGreen~1_combout\,
	datab => \equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\,
	datac => \MSTLIsYellow~1_combout\,
	datad => \MSTLIsGreen~0_combout\,
	combout => \MSTLIsGreen~2_combout\);

-- Location: FF_X114_Y17_N1
\d_FF_MSTL_High|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \MSTLIsGreen~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_FF_MSTL_High|int_q~q\);

-- Location: LCCOMB_X114_Y13_N24
\MSTL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSTL~0_combout\ = (\d_FF_MSTL_High|int_q~q\) # (\d_FF_MSTL_Low|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_FF_MSTL_High|int_q~q\,
	datac => \d_FF_MSTL_Low|int_q~q\,
	combout => \MSTL~0_combout\);

-- Location: LCCOMB_X112_Y17_N20
\displayOnBCD[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOnBCD[2]~1_combout\ = (\counter_4bit_SST|FF2|int_q~q\) # ((\counter_4bit_MTT|FF2|int_q~q\) # ((\counter_4bit_MSLTimer|FF2|int_q~q\) # (\counter_4bit_SSLTimer|FF2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_SST|FF2|int_q~q\,
	datab => \counter_4bit_MTT|FF2|int_q~q\,
	datac => \counter_4bit_MSLTimer|FF2|int_q~q\,
	datad => \counter_4bit_SSLTimer|FF2|int_q~q\,
	combout => \displayOnBCD[2]~1_combout\);

-- Location: LCCOMB_X113_Y17_N20
\displayOnBCD[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOnBCD[1]~3_combout\ = (\counter_4bit_SST|FF1|int_q~q\) # ((\counter_4bit_SSLTimer|FF1|int_q~q\) # ((\counter_4bit_MSLTimer|FF1|int_q~q\) # (\counter_4bit_MTT|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_SST|FF1|int_q~q\,
	datab => \counter_4bit_SSLTimer|FF1|int_q~q\,
	datac => \counter_4bit_MSLTimer|FF1|int_q~q\,
	datad => \counter_4bit_MTT|FF1|int_q~q\,
	combout => \displayOnBCD[1]~3_combout\);

-- Location: LCCOMB_X114_Y17_N14
\displayOnBCD[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOnBCD[3]~2_combout\ = (\counter_4bit_SST|FF3|int_q~q\) # ((\counter_4bit_SSLTimer|FF3|int_q~q\) # ((\counter_4bit_MTT|FF3|int_q~q\) # (\counter_4bit_MSLTimer|FF3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_SST|FF3|int_q~q\,
	datab => \counter_4bit_SSLTimer|FF3|int_q~q\,
	datac => \counter_4bit_MTT|FF3|int_q~q\,
	datad => \counter_4bit_MSLTimer|FF3|int_q~q\,
	combout => \displayOnBCD[3]~2_combout\);

-- Location: LCCOMB_X112_Y17_N24
\displayOnBCD[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displayOnBCD[0]~0_combout\ = (\counter_4bit_MSLTimer|FF0|int_q~q\) # ((\counter_4bit_MTT|FF0|int_q~q\) # ((\counter_4bit_SSLTimer|FF0|int_q~q\) # (\counter_4bit_SST|FF0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_MSLTimer|FF0|int_q~q\,
	datab => \counter_4bit_MTT|FF0|int_q~q\,
	datac => \counter_4bit_SSLTimer|FF0|int_q~q\,
	datad => \counter_4bit_SST|FF0|int_q~q\,
	combout => \displayOnBCD[0]~0_combout\);

-- Location: LCCOMB_X114_Y20_N16
\BCD_to_7Segment_inst|seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_to_7Segment_inst|seg[0]~0_combout\ = (\displayOnBCD[1]~3_combout\ & ((\displayOnBCD[2]~1_combout\ $ (!\displayOnBCD[0]~0_combout\)) # (!\displayOnBCD[3]~2_combout\))) # (!\displayOnBCD[1]~3_combout\ & ((\displayOnBCD[3]~2_combout\) # 
-- ((!\displayOnBCD[2]~1_combout\ & !\displayOnBCD[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOnBCD[2]~1_combout\,
	datab => \displayOnBCD[1]~3_combout\,
	datac => \displayOnBCD[3]~2_combout\,
	datad => \displayOnBCD[0]~0_combout\,
	combout => \BCD_to_7Segment_inst|seg[0]~0_combout\);

-- Location: LCCOMB_X114_Y20_N18
\BCD_to_7Segment_inst|seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_to_7Segment_inst|seg[1]~1_combout\ = (\displayOnBCD[3]~2_combout\ & ((\displayOnBCD[2]~1_combout\) # (\displayOnBCD[1]~3_combout\ $ (!\displayOnBCD[0]~0_combout\)))) # (!\displayOnBCD[3]~2_combout\ & ((\displayOnBCD[1]~3_combout\) # 
-- (\displayOnBCD[2]~1_combout\ $ (\displayOnBCD[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOnBCD[2]~1_combout\,
	datab => \displayOnBCD[1]~3_combout\,
	datac => \displayOnBCD[3]~2_combout\,
	datad => \displayOnBCD[0]~0_combout\,
	combout => \BCD_to_7Segment_inst|seg[1]~1_combout\);

-- Location: LCCOMB_X114_Y20_N24
\BCD_to_7Segment_inst|seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_to_7Segment_inst|seg[2]~2_combout\ = ((\displayOnBCD[2]~1_combout\ & (\displayOnBCD[1]~3_combout\)) # (!\displayOnBCD[2]~1_combout\ & ((\displayOnBCD[3]~2_combout\) # (!\displayOnBCD[1]~3_combout\)))) # (!\displayOnBCD[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOnBCD[2]~1_combout\,
	datab => \displayOnBCD[1]~3_combout\,
	datac => \displayOnBCD[3]~2_combout\,
	datad => \displayOnBCD[0]~0_combout\,
	combout => \BCD_to_7Segment_inst|seg[2]~2_combout\);

-- Location: LCCOMB_X114_Y20_N6
\BCD_to_7Segment_inst|seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_to_7Segment_inst|seg[3]~3_combout\ = (\displayOnBCD[1]~3_combout\ & ((\displayOnBCD[2]~1_combout\ $ (!\displayOnBCD[0]~0_combout\)) # (!\displayOnBCD[3]~2_combout\))) # (!\displayOnBCD[1]~3_combout\ & (\displayOnBCD[3]~2_combout\ $ 
-- (((!\displayOnBCD[2]~1_combout\ & !\displayOnBCD[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110001101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOnBCD[2]~1_combout\,
	datab => \displayOnBCD[1]~3_combout\,
	datac => \displayOnBCD[3]~2_combout\,
	datad => \displayOnBCD[0]~0_combout\,
	combout => \BCD_to_7Segment_inst|seg[3]~3_combout\);

-- Location: LCCOMB_X114_Y20_N0
\BCD_to_7Segment_inst|seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_to_7Segment_inst|seg[4]~4_combout\ = (\displayOnBCD[0]~0_combout\ & ((\displayOnBCD[1]~3_combout\ & ((\displayOnBCD[2]~1_combout\) # (!\displayOnBCD[3]~2_combout\))) # (!\displayOnBCD[1]~3_combout\ & ((\displayOnBCD[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOnBCD[2]~1_combout\,
	datab => \displayOnBCD[1]~3_combout\,
	datac => \displayOnBCD[3]~2_combout\,
	datad => \displayOnBCD[0]~0_combout\,
	combout => \BCD_to_7Segment_inst|seg[4]~4_combout\);

-- Location: LCCOMB_X114_Y20_N2
\BCD_to_7Segment_inst|seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_to_7Segment_inst|seg[5]~5_combout\ = (\displayOnBCD[2]~1_combout\ & (\displayOnBCD[1]~3_combout\ & ((\displayOnBCD[0]~0_combout\) # (!\displayOnBCD[3]~2_combout\)))) # (!\displayOnBCD[2]~1_combout\ & ((\displayOnBCD[1]~3_combout\ & 
-- (\displayOnBCD[3]~2_combout\)) # (!\displayOnBCD[1]~3_combout\ & ((\displayOnBCD[0]~0_combout\) # (!\displayOnBCD[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOnBCD[2]~1_combout\,
	datab => \displayOnBCD[1]~3_combout\,
	datac => \displayOnBCD[3]~2_combout\,
	datad => \displayOnBCD[0]~0_combout\,
	combout => \BCD_to_7Segment_inst|seg[5]~5_combout\);

-- Location: LCCOMB_X114_Y20_N8
\BCD_to_7Segment_inst|seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_to_7Segment_inst|seg[6]~6_combout\ = (\displayOnBCD[2]~1_combout\ & (\displayOnBCD[1]~3_combout\ $ ((\displayOnBCD[3]~2_combout\)))) # (!\displayOnBCD[2]~1_combout\ & ((\displayOnBCD[1]~3_combout\) # ((\displayOnBCD[0]~0_combout\) # 
-- (!\displayOnBCD[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOnBCD[2]~1_combout\,
	datab => \displayOnBCD[1]~3_combout\,
	datac => \displayOnBCD[3]~2_combout\,
	datad => \displayOnBCD[0]~0_combout\,
	combout => \BCD_to_7Segment_inst|seg[6]~6_combout\);

-- Location: LCCOMB_X114_Y20_N30
\BCD_to_7Segment_inst|seg[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD_to_7Segment_inst|seg[8]~7_combout\ = (!\displayOnBCD[3]~2_combout\ & ((!\displayOnBCD[1]~3_combout\) # (!\displayOnBCD[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayOnBCD[2]~1_combout\,
	datab => \displayOnBCD[1]~3_combout\,
	datac => \displayOnBCD[3]~2_combout\,
	combout => \BCD_to_7Segment_inst|seg[8]~7_combout\);

ww_MSTL(0) <= \MSTL[0]~output_o\;

ww_MSTL(1) <= \MSTL[1]~output_o\;

ww_MSTL(2) <= \MSTL[2]~output_o\;

ww_SSTL(0) <= \SSTL[0]~output_o\;

ww_SSTL(1) <= \SSTL[1]~output_o\;

ww_SSTL(2) <= \SSTL[2]~output_o\;

ww_SegmentOut(0) <= \SegmentOut[0]~output_o\;

ww_SegmentOut(1) <= \SegmentOut[1]~output_o\;

ww_SegmentOut(2) <= \SegmentOut[2]~output_o\;

ww_SegmentOut(3) <= \SegmentOut[3]~output_o\;

ww_SegmentOut(4) <= \SegmentOut[4]~output_o\;

ww_SegmentOut(5) <= \SegmentOut[5]~output_o\;

ww_SegmentOut(6) <= \SegmentOut[6]~output_o\;

ww_SegmentOut(7) <= \SegmentOut[7]~output_o\;

ww_SegmentOut(8) <= \SegmentOut[8]~output_o\;

ww_SegmentOut(9) <= \SegmentOut[9]~output_o\;

ww_SegmentOut(10) <= \SegmentOut[10]~output_o\;

ww_SegmentOut(11) <= \SegmentOut[11]~output_o\;

ww_SegmentOut(12) <= \SegmentOut[12]~output_o\;

ww_SegmentOut(13) <= \SegmentOut[13]~output_o\;
END structure;


