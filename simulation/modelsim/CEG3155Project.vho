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

-- DATE "11/02/2024 18:45:13"

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

ENTITY 	debuggableTrafficLightController IS
    PORT (
	GClock : IN std_logic;
	GReset : IN std_logic;
	SSCS : IN std_logic;
	RxD : IN std_logic;
	simClock : IN std_logic;
	SW1 : IN std_logic_vector(3 DOWNTO 0);
	SW2 : IN std_logic_vector(3 DOWNTO 0);
	TxD : OUT std_logic;
	MSTL : OUT std_logic_vector(2 DOWNTO 0);
	SSTL : OUT std_logic_vector(2 DOWNTO 0);
	SegmentOut : OUT std_logic_vector(13 DOWNTO 0)
	);
END debuggableTrafficLightController;

-- Design Ports Information
-- SSCS	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RxD	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[0]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxD	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTL[0]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTL[1]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTL[2]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSTL[0]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSTL[1]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSTL[2]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[4]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[5]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[7]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[8]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[9]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[10]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[11]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[12]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[13]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- simClock	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GReset	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[3]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[2]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF debuggableTrafficLightController IS
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
SIGNAL ww_RxD : std_logic;
SIGNAL ww_simClock : std_logic;
SIGNAL ww_SW1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TxD : std_logic;
SIGNAL ww_MSTL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SSTL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SegmentOut : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk_div_inst|clock_1Mhz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SSCS~input_o\ : std_logic;
SIGNAL \RxD~input_o\ : std_logic;
SIGNAL \SW1[0]~input_o\ : std_logic;
SIGNAL \SW1[1]~input_o\ : std_logic;
SIGNAL \SW1[2]~input_o\ : std_logic;
SIGNAL \SW1[3]~input_o\ : std_logic;
SIGNAL \TxD~output_o\ : std_logic;
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
SIGNAL \simClock~input_o\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_div_inst|count_1Mhz[0]~5_combout\ : std_logic;
SIGNAL \clk_div_inst|count_1Mhz[3]~12\ : std_logic;
SIGNAL \clk_div_inst|count_1Mhz[4]~13_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \clk_div_inst|count_1Mhz[0]~6\ : std_logic;
SIGNAL \clk_div_inst|count_1Mhz[1]~7_combout\ : std_logic;
SIGNAL \clk_div_inst|count_1Mhz[1]~8\ : std_logic;
SIGNAL \clk_div_inst|count_1Mhz[2]~9_combout\ : std_logic;
SIGNAL \clk_div_inst|count_1Mhz[2]~10\ : std_logic;
SIGNAL \clk_div_inst|count_1Mhz[3]~11_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \clk_div_inst|clock_1Mhz_int~q\ : std_logic;
SIGNAL \clk_div_inst|clock_1Mhz_int~clkctrl_outclk\ : std_logic;
SIGNAL \clk_div_inst|count_100Khz[1]~1_combout\ : std_logic;
SIGNAL \clk_div_inst|count_100Khz~2_combout\ : std_logic;
SIGNAL \clk_div_inst|count_100Khz~0_combout\ : std_logic;
SIGNAL \clk_div_inst|clock_100Khz_int~0_combout\ : std_logic;
SIGNAL \clk_div_inst|clock_100Khz_int~q\ : std_logic;
SIGNAL \clk_div_inst|clock_100KHz~feeder_combout\ : std_logic;
SIGNAL \clk_div_inst|clock_100KHz~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \SW2[2]~input_o\ : std_logic;
SIGNAL \debouncer_sw22|second|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \debouncer_sw22|first|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \debouncer_sw22|first|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \debouncer_sw22|second|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \debouncer_sw22|second|masterLatch|int_q~2_combout\ : std_logic;
SIGNAL \debouncer_sw22|second|slaveLatch|int_qBar~1_combout\ : std_logic;
SIGNAL \debouncer_sw22|int_debouncedRaw~1_combout\ : std_logic;
SIGNAL \debouncer_sw22|int_debouncedRaw~2_combout\ : std_logic;
SIGNAL \SW2[3]~input_o\ : std_logic;
SIGNAL \debouncer_sw23|second|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \debouncer_sw23|first|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \debouncer_sw23|first|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \debouncer_sw23|second|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \debouncer_sw23|second|masterLatch|int_q~2_combout\ : std_logic;
SIGNAL \debouncer_sw23|second|slaveLatch|int_qBar~1_combout\ : std_logic;
SIGNAL \debouncer_sw23|int_debouncedRaw~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~1_combout\ : std_logic;
SIGNAL \SW2[1]~input_o\ : std_logic;
SIGNAL \debouncer_sw21|second|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \debouncer_sw21|second|masterLatch|int_q~2_combout\ : std_logic;
SIGNAL \debouncer_sw21|second|slaveLatch|int_qBar~1_combout\ : std_logic;
SIGNAL \debouncer_sw21|second|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \debouncer_sw21|first|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \debouncer_sw21|first|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \debouncer_sw21|int_debouncedRaw~1_combout\ : std_logic;
SIGNAL \debouncer_sw21|int_debouncedRaw~2_combout\ : std_logic;
SIGNAL \SW2[0]~input_o\ : std_logic;
SIGNAL \debouncer_sw20|second|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \debouncer_sw20|first|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \debouncer_sw20|first|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \debouncer_sw20|second|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \debouncer_sw20|second|masterLatch|int_q~2_combout\ : std_logic;
SIGNAL \debouncer_sw20|second|slaveLatch|int_qBar~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|equalcond~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~2_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~2_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_MSTL_High|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|MSTLIsYellow~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_MSTL_Low|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_MSTL_Low|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|SSTLIsGreen~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|SSTLIsGreen~combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_SSTL_High|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[0]~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[1]~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[2]~2_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[3]~3_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[4]~4_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[5]~5_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[6]~6_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[8]~7_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|td_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_div_inst|count_1Mhz\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_div_inst|count_100Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_GClock <= GClock;
ww_GReset <= GReset;
ww_SSCS <= SSCS;
ww_RxD <= RxD;
ww_simClock <= simClock;
ww_SW1 <= SW1;
ww_SW2 <= SW2;
TxD <= ww_TxD;
MSTL <= ww_MSTL;
SSTL <= ww_SSTL;
SegmentOut <= ww_SegmentOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_div_inst|clock_1Mhz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div_inst|clock_1Mhz_int~q\);

\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\);

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);

-- Location: IOOBUF_X60_Y73_N16
\TxD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TxD~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\MSTL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MSTL[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\MSTL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MSTL[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\MSTL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MSTL[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\SSTL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SSTL[0]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\SSTL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SSTL[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\SSTL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SSTL[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\SegmentOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[0]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\SegmentOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[1]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\SegmentOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[2]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\SegmentOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[3]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\SegmentOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[4]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\SegmentOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[5]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\SegmentOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[6]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
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

-- Location: IOOBUF_X0_Y52_N23
\SegmentOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[8]~7_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[8]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\SegmentOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[8]~7_combout\,
	devoe => ww_devoe,
	o => \SegmentOut[9]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N16
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X115_Y26_N16
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

-- Location: IOIBUF_X0_Y45_N22
\simClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_simClock,
	o => \simClock~input_o\);

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

-- Location: LCCOMB_X57_Y1_N10
\clk_div_inst|count_1Mhz[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|count_1Mhz[0]~5_combout\ = \clk_div_inst|count_1Mhz\(0) $ (VCC)
-- \clk_div_inst|count_1Mhz[0]~6\ = CARRY(\clk_div_inst|count_1Mhz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|count_1Mhz\(0),
	datad => VCC,
	combout => \clk_div_inst|count_1Mhz[0]~5_combout\,
	cout => \clk_div_inst|count_1Mhz[0]~6\);

-- Location: LCCOMB_X57_Y1_N16
\clk_div_inst|count_1Mhz[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|count_1Mhz[3]~11_combout\ = (\clk_div_inst|count_1Mhz\(3) & (!\clk_div_inst|count_1Mhz[2]~10\)) # (!\clk_div_inst|count_1Mhz\(3) & ((\clk_div_inst|count_1Mhz[2]~10\) # (GND)))
-- \clk_div_inst|count_1Mhz[3]~12\ = CARRY((!\clk_div_inst|count_1Mhz[2]~10\) # (!\clk_div_inst|count_1Mhz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|count_1Mhz\(3),
	datad => VCC,
	cin => \clk_div_inst|count_1Mhz[2]~10\,
	combout => \clk_div_inst|count_1Mhz[3]~11_combout\,
	cout => \clk_div_inst|count_1Mhz[3]~12\);

-- Location: LCCOMB_X57_Y1_N18
\clk_div_inst|count_1Mhz[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|count_1Mhz[4]~13_combout\ = \clk_div_inst|count_1Mhz[3]~12\ $ (!\clk_div_inst|count_1Mhz\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_inst|count_1Mhz\(4),
	cin => \clk_div_inst|count_1Mhz[3]~12\,
	combout => \clk_div_inst|count_1Mhz[4]~13_combout\);

-- Location: FF_X57_Y1_N19
\clk_div_inst|count_1Mhz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \clk_div_inst|count_1Mhz[4]~13_combout\,
	sclr => \clk_div_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|count_1Mhz\(4));

-- Location: LCCOMB_X57_Y1_N6
\clk_div_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~0_combout\ = (\clk_div_inst|count_1Mhz\(3) & \clk_div_inst|count_1Mhz\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|count_1Mhz\(3),
	datad => \clk_div_inst|count_1Mhz\(4),
	combout => \clk_div_inst|LessThan0~0_combout\);

-- Location: FF_X57_Y1_N11
\clk_div_inst|count_1Mhz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \clk_div_inst|count_1Mhz[0]~5_combout\,
	sclr => \clk_div_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|count_1Mhz\(0));

-- Location: LCCOMB_X57_Y1_N12
\clk_div_inst|count_1Mhz[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|count_1Mhz[1]~7_combout\ = (\clk_div_inst|count_1Mhz\(1) & (!\clk_div_inst|count_1Mhz[0]~6\)) # (!\clk_div_inst|count_1Mhz\(1) & ((\clk_div_inst|count_1Mhz[0]~6\) # (GND)))
-- \clk_div_inst|count_1Mhz[1]~8\ = CARRY((!\clk_div_inst|count_1Mhz[0]~6\) # (!\clk_div_inst|count_1Mhz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|count_1Mhz\(1),
	datad => VCC,
	cin => \clk_div_inst|count_1Mhz[0]~6\,
	combout => \clk_div_inst|count_1Mhz[1]~7_combout\,
	cout => \clk_div_inst|count_1Mhz[1]~8\);

-- Location: FF_X57_Y1_N13
\clk_div_inst|count_1Mhz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \clk_div_inst|count_1Mhz[1]~7_combout\,
	sclr => \clk_div_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|count_1Mhz\(1));

-- Location: LCCOMB_X57_Y1_N14
\clk_div_inst|count_1Mhz[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|count_1Mhz[2]~9_combout\ = (\clk_div_inst|count_1Mhz\(2) & (\clk_div_inst|count_1Mhz[1]~8\ $ (GND))) # (!\clk_div_inst|count_1Mhz\(2) & (!\clk_div_inst|count_1Mhz[1]~8\ & VCC))
-- \clk_div_inst|count_1Mhz[2]~10\ = CARRY((\clk_div_inst|count_1Mhz\(2) & !\clk_div_inst|count_1Mhz[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|count_1Mhz\(2),
	datad => VCC,
	cin => \clk_div_inst|count_1Mhz[1]~8\,
	combout => \clk_div_inst|count_1Mhz[2]~9_combout\,
	cout => \clk_div_inst|count_1Mhz[2]~10\);

-- Location: FF_X57_Y1_N15
\clk_div_inst|count_1Mhz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \clk_div_inst|count_1Mhz[2]~9_combout\,
	sclr => \clk_div_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|count_1Mhz\(2));

-- Location: FF_X57_Y1_N17
\clk_div_inst|count_1Mhz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \clk_div_inst|count_1Mhz[3]~11_combout\,
	sclr => \clk_div_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|count_1Mhz\(3));

-- Location: LCCOMB_X57_Y1_N30
\clk_div_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan1~0_combout\ = (\clk_div_inst|count_1Mhz\(4)) # ((\clk_div_inst|count_1Mhz\(3) & \clk_div_inst|count_1Mhz\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|count_1Mhz\(3),
	datac => \clk_div_inst|count_1Mhz\(2),
	datad => \clk_div_inst|count_1Mhz\(4),
	combout => \clk_div_inst|LessThan1~0_combout\);

-- Location: FF_X57_Y1_N31
\clk_div_inst|clock_1Mhz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \clk_div_inst|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clock_1Mhz_int~q\);

-- Location: CLKCTRL_G15
\clk_div_inst|clock_1Mhz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_inst|clock_1Mhz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_inst|clock_1Mhz_int~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y44_N18
\clk_div_inst|count_100Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|count_100Khz[1]~1_combout\ = \clk_div_inst|count_100Khz\(1) $ (\clk_div_inst|count_100Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_inst|count_100Khz\(1),
	datad => \clk_div_inst|count_100Khz\(0),
	combout => \clk_div_inst|count_100Khz[1]~1_combout\);

-- Location: FF_X1_Y44_N19
\clk_div_inst|count_100Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clock_1Mhz_int~clkctrl_outclk\,
	d => \clk_div_inst|count_100Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|count_100Khz\(1));

-- Location: LCCOMB_X1_Y44_N28
\clk_div_inst|count_100Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|count_100Khz~2_combout\ = (\clk_div_inst|count_100Khz\(0) & (\clk_div_inst|count_100Khz\(2) $ (\clk_div_inst|count_100Khz\(1)))) # (!\clk_div_inst|count_100Khz\(0) & (\clk_div_inst|count_100Khz\(2) & \clk_div_inst|count_100Khz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|count_100Khz\(0),
	datac => \clk_div_inst|count_100Khz\(2),
	datad => \clk_div_inst|count_100Khz\(1),
	combout => \clk_div_inst|count_100Khz~2_combout\);

-- Location: FF_X1_Y44_N29
\clk_div_inst|count_100Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clock_1Mhz_int~clkctrl_outclk\,
	d => \clk_div_inst|count_100Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|count_100Khz\(2));

-- Location: LCCOMB_X1_Y44_N24
\clk_div_inst|count_100Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|count_100Khz~0_combout\ = (!\clk_div_inst|count_100Khz\(0) & ((\clk_div_inst|count_100Khz\(1)) # (!\clk_div_inst|count_100Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|count_100Khz\(1),
	datac => \clk_div_inst|count_100Khz\(0),
	datad => \clk_div_inst|count_100Khz\(2),
	combout => \clk_div_inst|count_100Khz~0_combout\);

-- Location: FF_X1_Y44_N25
\clk_div_inst|count_100Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clock_1Mhz_int~clkctrl_outclk\,
	d => \clk_div_inst|count_100Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|count_100Khz\(0));

-- Location: LCCOMB_X1_Y44_N10
\clk_div_inst|clock_100Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|clock_100Khz_int~0_combout\ = \clk_div_inst|clock_100Khz_int~q\ $ (((!\clk_div_inst|count_100Khz\(0) & (\clk_div_inst|count_100Khz\(2) & !\clk_div_inst|count_100Khz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|count_100Khz\(0),
	datab => \clk_div_inst|count_100Khz\(2),
	datac => \clk_div_inst|clock_100Khz_int~q\,
	datad => \clk_div_inst|count_100Khz\(1),
	combout => \clk_div_inst|clock_100Khz_int~0_combout\);

-- Location: FF_X1_Y44_N11
\clk_div_inst|clock_100Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clock_1Mhz_int~clkctrl_outclk\,
	d => \clk_div_inst|clock_100Khz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clock_100Khz_int~q\);

-- Location: LCCOMB_X1_Y44_N20
\clk_div_inst|clock_100KHz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|clock_100KHz~feeder_combout\ = \clk_div_inst|clock_100Khz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_inst|clock_100Khz_int~q\,
	combout => \clk_div_inst|clock_100KHz~feeder_combout\);

-- Location: FF_X1_Y44_N21
\clk_div_inst|clock_100KHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \clk_div_inst|clock_100KHz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clock_100KHz~q\);

-- Location: LCCOMB_X1_Y44_N0
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ = (\simClock~input_o\ & (\GClock~input_o\)) # (!\simClock~input_o\ & ((\clk_div_inst|clock_100KHz~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simClock~input_o\,
	datac => \GClock~input_o\,
	datad => \clk_div_inst|clock_100KHz~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\);

-- Location: CLKCTRL_G4
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y49_N28
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~0_combout\ = (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~1_combout\ & ((\simClock~input_o\ & (\GClock~input_o\)) # (!\simClock~input_o\ & 
-- ((\clk_div_inst|clock_100KHz~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simClock~input_o\,
	datab => \GClock~input_o\,
	datac => \clk_div_inst|clock_100KHz~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~1_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~0_combout\);

-- Location: IOIBUF_X0_Y45_N15
\GReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GReset,
	o => \GReset~input_o\);

-- Location: LCCOMB_X4_Y49_N2
\trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\ = (!\GReset~input_o\ & (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & 
-- !\trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GReset~input_o\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y49_N8
\trafficLighttopLevel_inst|counter_4bit_SST|FF0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF0|masterLatch|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SST|FF0|masterLatch|int_q~0_combout\ & (((!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\)) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\))) # (!\trafficLighttopLevel_inst|counter_4bit_SST|FF0|masterLatch|int_q~0_combout\ & (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & 
-- ((!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|masterLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y49_N20
\trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_SST|FF0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|masterLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y49_N2
\trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~0_combout\ = (!\trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~1_combout\ & ((\simClock~input_o\ & (\GClock~input_o\)) # (!\simClock~input_o\ & 
-- ((\clk_div_inst|clock_100KHz~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GClock~input_o\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~1_combout\,
	datac => \clk_div_inst|clock_100KHz~q\,
	datad => \simClock~input_o\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y49_N28
\trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~1_combout\ = (!\trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~0_combout\ & ((\trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\ $ 
-- (!\trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X4_Y49_N12
\trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~1_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|masterLatch|int_q~1_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y49_N14
\trafficLighttopLevel_inst|counter_4bit_SST|td_2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|td_2\(2) = \trafficLighttopLevel_inst|counter_4bit_SST|FF2|slaveLatch|int_q~0_combout\ $ (((\trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\) # 
-- (\trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|td_2\(2));

-- Location: LCCOMB_X4_Y49_N4
\trafficLighttopLevel_inst|counter_4bit_SST|FF2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF2|masterLatch|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & (\trafficLighttopLevel_inst|counter_4bit_SST|FF2|masterLatch|int_q~0_combout\ & 
-- ((!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_SST|td_2\(2))))) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & 
-- (((!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_SST|td_2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|masterLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|td_2\(2),
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y49_N30
\trafficLighttopLevel_inst|counter_4bit_SST|FF2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF2|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_SST|FF2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_SST|FF2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|masterLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y49_N22
\trafficLighttopLevel_inst|counter_4bit_SST|td_2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|td_2\(3) = \trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\ $ (((\trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\) # 
-- ((\trafficLighttopLevel_inst|counter_4bit_SST|FF2|slaveLatch|int_q~0_combout\) # (\trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|td_2\(3));

-- Location: LCCOMB_X4_Y49_N16
\trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~1_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SST|td_2\(3) & (!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\ & 
-- ((\trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~1_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\)))) # (!\trafficLighttopLevel_inst|counter_4bit_SST|td_2\(3) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~1_combout\) # ((!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SST|td_2\(3),
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~1_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X4_Y49_N24
\trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~1_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~1_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y49_N0
\trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~0_combout\ = (!\trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~2_combout\ & ((\simClock~input_o\ & (\GClock~input_o\)) # (!\simClock~input_o\ & ((\clk_div_inst|clock_100KHz~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GClock~input_o\,
	datab => \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~2_combout\,
	datac => \clk_div_inst|clock_100KHz~q\,
	datad => \simClock~input_o\,
	combout => \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y49_N26
\trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~1_combout\ = (\trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~0_combout\) # ((\trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\ & 
-- (\trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\ & \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X1_Y49_N8
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(2) = \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\ $ (((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\) # 
-- (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(2));

-- Location: LCCOMB_X1_Y49_N14
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|masterLatch|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|masterLatch|int_q~0_combout\ & 
-- ((!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(2))))) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & 
-- (((!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|masterLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(2),
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y49_N12
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\);

-- Location: IOIBUF_X0_Y34_N15
\SW2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(2),
	o => \SW2[2]~input_o\);

-- Location: LCCOMB_X1_Y36_N30
\debouncer_sw22|second|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw22|second|masterLatch|int_q~0_combout\ = (!\GReset~input_o\ & (\SW2[2]~input_o\ & !\GClock~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GReset~input_o\,
	datac => \SW2[2]~input_o\,
	datad => \GClock~input_o\,
	combout => \debouncer_sw22|second|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N6
\debouncer_sw22|first|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw22|first|masterLatch|int_q~0_combout\ = (\GClock~input_o\ & (\debouncer_sw22|first|masterLatch|int_q~0_combout\ & ((\debouncer_sw22|second|masterLatch|int_q~1_combout\) # (!\debouncer_sw22|second|masterLatch|int_q~0_combout\)))) # 
-- (!\GClock~input_o\ & (((\debouncer_sw22|second|masterLatch|int_q~1_combout\) # (!\debouncer_sw22|second|masterLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GClock~input_o\,
	datab => \debouncer_sw22|first|masterLatch|int_q~0_combout\,
	datac => \debouncer_sw22|second|masterLatch|int_q~0_combout\,
	datad => \debouncer_sw22|second|masterLatch|int_q~1_combout\,
	combout => \debouncer_sw22|first|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N4
\debouncer_sw22|first|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw22|first|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\debouncer_sw22|first|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\debouncer_sw22|first|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw22|first|slaveLatch|int_q~0_combout\,
	datac => \debouncer_sw22|first|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \debouncer_sw22|first|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N28
\debouncer_sw22|second|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw22|second|masterLatch|int_q~1_combout\ = (\debouncer_sw22|first|slaveLatch|int_q~0_combout\ & !\debouncer_sw22|second|slaveLatch|int_qBar~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer_sw22|first|slaveLatch|int_q~0_combout\,
	datad => \debouncer_sw22|second|slaveLatch|int_qBar~1_combout\,
	combout => \debouncer_sw22|second|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X1_Y36_N12
\debouncer_sw22|second|masterLatch|int_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw22|second|masterLatch|int_q~2_combout\ = (\GClock~input_o\ & (\debouncer_sw22|second|masterLatch|int_q~2_combout\ & ((!\debouncer_sw22|second|masterLatch|int_q~1_combout\) # (!\debouncer_sw22|second|masterLatch|int_q~0_combout\)))) # 
-- (!\GClock~input_o\ & (((!\debouncer_sw22|second|masterLatch|int_q~1_combout\) # (!\debouncer_sw22|second|masterLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GClock~input_o\,
	datab => \debouncer_sw22|second|masterLatch|int_q~2_combout\,
	datac => \debouncer_sw22|second|masterLatch|int_q~0_combout\,
	datad => \debouncer_sw22|second|masterLatch|int_q~1_combout\,
	combout => \debouncer_sw22|second|masterLatch|int_q~2_combout\);

-- Location: LCCOMB_X1_Y36_N18
\debouncer_sw22|second|slaveLatch|int_qBar~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw22|second|slaveLatch|int_qBar~1_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((!\debouncer_sw22|second|masterLatch|int_q~2_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\debouncer_sw22|second|slaveLatch|int_qBar~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw22|second|slaveLatch|int_qBar~1_combout\,
	datac => \debouncer_sw22|second|masterLatch|int_q~2_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \debouncer_sw22|second|slaveLatch|int_qBar~1_combout\);

-- Location: LCCOMB_X1_Y36_N8
\debouncer_sw22|int_debouncedRaw~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw22|int_debouncedRaw~1_combout\ = (\debouncer_sw22|first|slaveLatch|int_q~0_combout\) # ((\GClock~input_o\ & ((\debouncer_sw22|first|masterLatch|int_q~0_combout\) # (!\debouncer_sw22|second|masterLatch|int_q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw22|second|masterLatch|int_q~2_combout\,
	datab => \debouncer_sw22|first|slaveLatch|int_q~0_combout\,
	datac => \GClock~input_o\,
	datad => \debouncer_sw22|first|masterLatch|int_q~0_combout\,
	combout => \debouncer_sw22|int_debouncedRaw~1_combout\);

-- Location: LCCOMB_X2_Y49_N24
\debouncer_sw22|int_debouncedRaw~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw22|int_debouncedRaw~2_combout\ = (\debouncer_sw22|second|slaveLatch|int_qBar~1_combout\) # (\debouncer_sw22|int_debouncedRaw~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw22|second|slaveLatch|int_qBar~1_combout\,
	datac => \debouncer_sw22|int_debouncedRaw~1_combout\,
	combout => \debouncer_sw22|int_debouncedRaw~2_combout\);

-- Location: IOIBUF_X0_Y35_N1
\SW2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(3),
	o => \SW2[3]~input_o\);

-- Location: LCCOMB_X2_Y36_N2
\debouncer_sw23|second|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw23|second|masterLatch|int_q~0_combout\ = (!\GReset~input_o\ & (\SW2[3]~input_o\ & !\GClock~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GReset~input_o\,
	datab => \SW2[3]~input_o\,
	datad => \GClock~input_o\,
	combout => \debouncer_sw23|second|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N14
\debouncer_sw23|first|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw23|first|masterLatch|int_q~0_combout\ = (\debouncer_sw23|first|masterLatch|int_q~0_combout\ & (((\debouncer_sw23|second|masterLatch|int_q~1_combout\) # (!\debouncer_sw23|second|masterLatch|int_q~0_combout\)))) # 
-- (!\debouncer_sw23|first|masterLatch|int_q~0_combout\ & (!\GClock~input_o\ & ((\debouncer_sw23|second|masterLatch|int_q~1_combout\) # (!\debouncer_sw23|second|masterLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw23|first|masterLatch|int_q~0_combout\,
	datab => \GClock~input_o\,
	datac => \debouncer_sw23|second|masterLatch|int_q~1_combout\,
	datad => \debouncer_sw23|second|masterLatch|int_q~0_combout\,
	combout => \debouncer_sw23|first|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N20
\debouncer_sw23|first|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw23|first|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\debouncer_sw23|first|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\debouncer_sw23|first|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw23|first|slaveLatch|int_q~0_combout\,
	datac => \debouncer_sw23|first|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \debouncer_sw23|first|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N4
\debouncer_sw23|second|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw23|second|masterLatch|int_q~1_combout\ = (!\debouncer_sw23|second|slaveLatch|int_qBar~1_combout\ & \debouncer_sw23|first|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer_sw23|second|slaveLatch|int_qBar~1_combout\,
	datad => \debouncer_sw23|first|slaveLatch|int_q~0_combout\,
	combout => \debouncer_sw23|second|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X2_Y36_N16
\debouncer_sw23|second|masterLatch|int_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw23|second|masterLatch|int_q~2_combout\ = (\debouncer_sw23|second|masterLatch|int_q~2_combout\ & (((!\debouncer_sw23|second|masterLatch|int_q~0_combout\) # (!\debouncer_sw23|second|masterLatch|int_q~1_combout\)))) # 
-- (!\debouncer_sw23|second|masterLatch|int_q~2_combout\ & (!\GClock~input_o\ & ((!\debouncer_sw23|second|masterLatch|int_q~0_combout\) # (!\debouncer_sw23|second|masterLatch|int_q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw23|second|masterLatch|int_q~2_combout\,
	datab => \GClock~input_o\,
	datac => \debouncer_sw23|second|masterLatch|int_q~1_combout\,
	datad => \debouncer_sw23|second|masterLatch|int_q~0_combout\,
	combout => \debouncer_sw23|second|masterLatch|int_q~2_combout\);

-- Location: LCCOMB_X2_Y36_N30
\debouncer_sw23|second|slaveLatch|int_qBar~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw23|second|slaveLatch|int_qBar~1_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((!\debouncer_sw23|second|masterLatch|int_q~2_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\debouncer_sw23|second|slaveLatch|int_qBar~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw23|second|slaveLatch|int_qBar~1_combout\,
	datab => \debouncer_sw23|second|masterLatch|int_q~2_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \debouncer_sw23|second|slaveLatch|int_qBar~1_combout\);

-- Location: LCCOMB_X2_Y49_N28
\debouncer_sw23|int_debouncedRaw~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw23|int_debouncedRaw~1_combout\ = (\debouncer_sw23|first|slaveLatch|int_q~0_combout\) # ((\GClock~input_o\ & ((\debouncer_sw23|first|masterLatch|int_q~0_combout\) # (!\debouncer_sw23|second|masterLatch|int_q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw23|first|slaveLatch|int_q~0_combout\,
	datab => \GClock~input_o\,
	datac => \debouncer_sw23|first|masterLatch|int_q~0_combout\,
	datad => \debouncer_sw23|second|masterLatch|int_q~2_combout\,
	combout => \debouncer_sw23|int_debouncedRaw~1_combout\);

-- Location: LCCOMB_X2_Y49_N2
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~0_combout\ = (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\ & ((\debouncer_sw22|second|slaveLatch|int_qBar~1_combout\) # 
-- (\debouncer_sw22|int_debouncedRaw~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\,
	datab => \debouncer_sw22|second|slaveLatch|int_qBar~1_combout\,
	datad => \debouncer_sw22|int_debouncedRaw~1_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~0_combout\);

-- Location: LCCOMB_X2_Y49_N4
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~1_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\ & (\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~0_combout\ & 
-- ((\debouncer_sw23|second|slaveLatch|int_qBar~1_combout\) # (\debouncer_sw23|int_debouncedRaw~1_combout\)))) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\ & ((\debouncer_sw23|second|slaveLatch|int_qBar~1_combout\) # 
-- ((\debouncer_sw23|int_debouncedRaw~1_combout\) # (\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\,
	datab => \debouncer_sw23|second|slaveLatch|int_qBar~1_combout\,
	datac => \debouncer_sw23|int_debouncedRaw~1_combout\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~0_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~1_combout\);

-- Location: IOIBUF_X0_Y35_N15
\SW2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(1),
	o => \SW2[1]~input_o\);

-- Location: LCCOMB_X1_Y36_N26
\debouncer_sw21|second|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw21|second|masterLatch|int_q~0_combout\ = (\SW2[1]~input_o\ & (!\GReset~input_o\ & !\GClock~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~input_o\,
	datac => \GReset~input_o\,
	datad => \GClock~input_o\,
	combout => \debouncer_sw21|second|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N0
\debouncer_sw21|second|masterLatch|int_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw21|second|masterLatch|int_q~2_combout\ = (\GClock~input_o\ & (\debouncer_sw21|second|masterLatch|int_q~2_combout\ & ((!\debouncer_sw21|second|masterLatch|int_q~1_combout\) # (!\debouncer_sw21|second|masterLatch|int_q~0_combout\)))) # 
-- (!\GClock~input_o\ & (((!\debouncer_sw21|second|masterLatch|int_q~1_combout\) # (!\debouncer_sw21|second|masterLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GClock~input_o\,
	datab => \debouncer_sw21|second|masterLatch|int_q~2_combout\,
	datac => \debouncer_sw21|second|masterLatch|int_q~0_combout\,
	datad => \debouncer_sw21|second|masterLatch|int_q~1_combout\,
	combout => \debouncer_sw21|second|masterLatch|int_q~2_combout\);

-- Location: LCCOMB_X1_Y36_N2
\debouncer_sw21|second|slaveLatch|int_qBar~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw21|second|slaveLatch|int_qBar~1_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (!\debouncer_sw21|second|masterLatch|int_q~2_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & ((\debouncer_sw21|second|slaveLatch|int_qBar~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw21|second|masterLatch|int_q~2_combout\,
	datac => \debouncer_sw21|second|slaveLatch|int_qBar~1_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \debouncer_sw21|second|slaveLatch|int_qBar~1_combout\);

-- Location: LCCOMB_X1_Y36_N16
\debouncer_sw21|second|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw21|second|masterLatch|int_q~1_combout\ = (!\debouncer_sw21|second|slaveLatch|int_qBar~1_combout\ & \debouncer_sw21|first|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw21|second|slaveLatch|int_qBar~1_combout\,
	datad => \debouncer_sw21|first|slaveLatch|int_q~0_combout\,
	combout => \debouncer_sw21|second|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X1_Y36_N14
\debouncer_sw21|first|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw21|first|masterLatch|int_q~0_combout\ = (\debouncer_sw21|first|masterLatch|int_q~0_combout\ & (((\debouncer_sw21|second|masterLatch|int_q~1_combout\) # (!\debouncer_sw21|second|masterLatch|int_q~0_combout\)))) # 
-- (!\debouncer_sw21|first|masterLatch|int_q~0_combout\ & (!\GClock~input_o\ & ((\debouncer_sw21|second|masterLatch|int_q~1_combout\) # (!\debouncer_sw21|second|masterLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw21|first|masterLatch|int_q~0_combout\,
	datab => \GClock~input_o\,
	datac => \debouncer_sw21|second|masterLatch|int_q~0_combout\,
	datad => \debouncer_sw21|second|masterLatch|int_q~1_combout\,
	combout => \debouncer_sw21|first|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N20
\debouncer_sw21|first|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw21|first|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\debouncer_sw21|first|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\debouncer_sw21|first|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw21|first|slaveLatch|int_q~0_combout\,
	datac => \debouncer_sw21|first|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \debouncer_sw21|first|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N10
\debouncer_sw21|int_debouncedRaw~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw21|int_debouncedRaw~1_combout\ = (\debouncer_sw21|first|masterLatch|int_q~0_combout\) # (!\debouncer_sw21|second|masterLatch|int_q~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer_sw21|first|masterLatch|int_q~0_combout\,
	datad => \debouncer_sw21|second|masterLatch|int_q~2_combout\,
	combout => \debouncer_sw21|int_debouncedRaw~1_combout\);

-- Location: LCCOMB_X1_Y36_N24
\debouncer_sw21|int_debouncedRaw~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw21|int_debouncedRaw~2_combout\ = (\debouncer_sw21|first|slaveLatch|int_q~0_combout\) # ((\debouncer_sw21|second|slaveLatch|int_qBar~1_combout\) # ((\GClock~input_o\ & \debouncer_sw21|int_debouncedRaw~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GClock~input_o\,
	datab => \debouncer_sw21|first|slaveLatch|int_q~0_combout\,
	datac => \debouncer_sw21|second|slaveLatch|int_qBar~1_combout\,
	datad => \debouncer_sw21|int_debouncedRaw~1_combout\,
	combout => \debouncer_sw21|int_debouncedRaw~2_combout\);

-- Location: IOIBUF_X0_Y35_N8
\SW2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(0),
	o => \SW2[0]~input_o\);

-- Location: LCCOMB_X2_Y36_N28
\debouncer_sw20|second|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw20|second|masterLatch|int_q~0_combout\ = (!\GReset~input_o\ & (\SW2[0]~input_o\ & !\GClock~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GReset~input_o\,
	datac => \SW2[0]~input_o\,
	datad => \GClock~input_o\,
	combout => \debouncer_sw20|second|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N12
\debouncer_sw20|first|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw20|first|masterLatch|int_q~0_combout\ = (\debouncer_sw20|first|masterLatch|int_q~0_combout\ & (((\debouncer_sw20|second|masterLatch|int_q~1_combout\) # (!\debouncer_sw20|second|masterLatch|int_q~0_combout\)))) # 
-- (!\debouncer_sw20|first|masterLatch|int_q~0_combout\ & (!\GClock~input_o\ & ((\debouncer_sw20|second|masterLatch|int_q~1_combout\) # (!\debouncer_sw20|second|masterLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw20|first|masterLatch|int_q~0_combout\,
	datab => \GClock~input_o\,
	datac => \debouncer_sw20|second|masterLatch|int_q~1_combout\,
	datad => \debouncer_sw20|second|masterLatch|int_q~0_combout\,
	combout => \debouncer_sw20|first|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N6
\debouncer_sw20|first|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw20|first|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\debouncer_sw20|first|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\debouncer_sw20|first|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw20|first|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \debouncer_sw20|first|masterLatch|int_q~0_combout\,
	combout => \debouncer_sw20|first|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N22
\debouncer_sw20|second|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw20|second|masterLatch|int_q~1_combout\ = (!\debouncer_sw20|second|slaveLatch|int_qBar~1_combout\ & \debouncer_sw20|first|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer_sw20|second|slaveLatch|int_qBar~1_combout\,
	datad => \debouncer_sw20|first|slaveLatch|int_q~0_combout\,
	combout => \debouncer_sw20|second|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X2_Y36_N26
\debouncer_sw20|second|masterLatch|int_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw20|second|masterLatch|int_q~2_combout\ = (\debouncer_sw20|second|masterLatch|int_q~2_combout\ & (((!\debouncer_sw20|second|masterLatch|int_q~0_combout\) # (!\debouncer_sw20|second|masterLatch|int_q~1_combout\)))) # 
-- (!\debouncer_sw20|second|masterLatch|int_q~2_combout\ & (!\GClock~input_o\ & ((!\debouncer_sw20|second|masterLatch|int_q~0_combout\) # (!\debouncer_sw20|second|masterLatch|int_q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw20|second|masterLatch|int_q~2_combout\,
	datab => \GClock~input_o\,
	datac => \debouncer_sw20|second|masterLatch|int_q~1_combout\,
	datad => \debouncer_sw20|second|masterLatch|int_q~0_combout\,
	combout => \debouncer_sw20|second|masterLatch|int_q~2_combout\);

-- Location: LCCOMB_X2_Y36_N8
\debouncer_sw20|second|slaveLatch|int_qBar~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw20|second|slaveLatch|int_qBar~1_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (!\debouncer_sw20|second|masterLatch|int_q~2_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & ((\debouncer_sw20|second|slaveLatch|int_qBar~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw20|second|masterLatch|int_q~2_combout\,
	datac => \debouncer_sw20|second|slaveLatch|int_qBar~1_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \debouncer_sw20|second|slaveLatch|int_qBar~1_combout\);

-- Location: LCCOMB_X2_Y36_N24
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\ = (\debouncer_sw20|first|slaveLatch|int_q~0_combout\) # ((\GClock~input_o\ & ((\debouncer_sw20|first|masterLatch|int_q~0_combout\) # 
-- (!\debouncer_sw20|second|masterLatch|int_q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GClock~input_o\,
	datab => \debouncer_sw20|first|slaveLatch|int_q~0_combout\,
	datac => \debouncer_sw20|second|masterLatch|int_q~2_combout\,
	datad => \debouncer_sw20|first|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\);

-- Location: LCCOMB_X2_Y49_N26
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3_combout\ = (\debouncer_sw20|second|slaveLatch|int_qBar~1_combout\) # ((\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw20|second|slaveLatch|int_qBar~1_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3_combout\);

-- Location: LCCOMB_X2_Y49_N20
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|equalcond~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|equalcond~0_combout\ = \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\ $ (((\debouncer_sw23|second|slaveLatch|int_qBar~1_combout\) # 
-- (\debouncer_sw23|int_debouncedRaw~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw23|second|slaveLatch|int_qBar~1_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\,
	datad => \debouncer_sw23|int_debouncedRaw~1_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|equalcond~0_combout\);

-- Location: LCCOMB_X2_Y49_N6
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4_combout\ = (!\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|equalcond~0_combout\ & ((\debouncer_sw21|int_debouncedRaw~2_combout\ & 
-- ((\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\))) # (!\debouncer_sw21|int_debouncedRaw~2_combout\ & 
-- (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\ & \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw21|int_debouncedRaw~2_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3_combout\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|equalcond~0_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4_combout\);

-- Location: LCCOMB_X2_Y49_N10
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\ = (\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~1_combout\) # ((\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4_combout\ & 
-- (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\ $ (!\debouncer_sw22|int_debouncedRaw~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\,
	datab => \debouncer_sw22|int_debouncedRaw~2_combout\,
	datac => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~1_combout\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\);

-- Location: LCCOMB_X2_Y49_N18
\trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~2_combout\ = (!\trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~1_combout\ & (((!\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\) # 
-- (!\trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~1_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\,
	combout => \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~2_combout\);

-- Location: LCCOMB_X2_Y49_N22
\trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & ((\trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~2_combout\))) # 
-- (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & (\trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_Low|masterLatch|int_q~2_combout\,
	combout => \trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y49_N4
\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~0_combout\ = (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~1_combout\ & ((\simClock~input_o\ & (\GClock~input_o\)) # (!\simClock~input_o\ & 
-- ((\clk_div_inst|clock_100KHz~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GClock~input_o\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~1_combout\,
	datac => \clk_div_inst|clock_100KHz~q\,
	datad => \simClock~input_o\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y49_N6
\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~1_combout\ = (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~0_combout\ & ((\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\ $ 
-- (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X4_Y49_N10
\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~1_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|masterLatch|int_q~1_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y49_N22
\trafficLighttopLevel_inst|counter_4bit_MTT|td_2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(2) = \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\ $ (((\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\) # 
-- (\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(2));

-- Location: LCCOMB_X3_Y49_N28
\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|masterLatch|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(2) & (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\ & 
-- ((\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\)))) # (!\trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(2) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|masterLatch|int_q~0_combout\) # ((!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(2),
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|masterLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y49_N18
\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y49_N10
\trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~0_combout\ = (\trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\ & ((\trafficLighttopLevel_inst|d_FF_MSTL_High|slaveLatch|int_q~0_combout\) # 
-- ((\trafficLighttopLevel_inst|d_FF_MSTL_Low|slaveLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_High|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|d_FF_MSTL_Low|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y49_N20
\trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~1_combout\ = (\trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\ & (!\GReset~input_o\ & (!\trafficLighttopLevel_inst|MSTLIsYellow~0_combout\ & 
-- \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\,
	datab => \GReset~input_o\,
	datac => \trafficLighttopLevel_inst|MSTLIsYellow~0_combout\,
	datad => \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X2_Y49_N14
\trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~2_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & (((\trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~2_combout\)))) # 
-- (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & (((\trafficLighttopLevel_inst|SSTLIsGreen~combout\)) # (!\trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~1_combout\,
	datab => \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~2_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	datad => \trafficLighttopLevel_inst|SSTLIsGreen~combout\,
	combout => \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~2_combout\);

-- Location: LCCOMB_X3_Y49_N30
\trafficLighttopLevel_inst|d_FF_MSTL_High|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|d_FF_MSTL_High|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & (\trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~2_combout\)) # 
-- (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & ((\trafficLighttopLevel_inst|d_FF_MSTL_High|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_High|masterLatch|int_q~2_combout\,
	datac => \trafficLighttopLevel_inst|d_FF_MSTL_High|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|d_FF_MSTL_High|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y49_N4
\trafficLighttopLevel_inst|MSTLIsYellow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|MSTLIsYellow~0_combout\ = (\trafficLighttopLevel_inst|d_FF_MSTL_High|slaveLatch|int_q~0_combout\ & (!\trafficLighttopLevel_inst|d_FF_MSTL_Low|slaveLatch|int_q~0_combout\ & 
-- ((\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\) # (\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|d_FF_MSTL_High|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|d_FF_MSTL_Low|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|MSTLIsYellow~0_combout\);

-- Location: LCCOMB_X3_Y49_N26
\trafficLighttopLevel_inst|d_FF_MSTL_Low|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|d_FF_MSTL_Low|masterLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & (\trafficLighttopLevel_inst|d_FF_MSTL_Low|masterLatch|int_q~0_combout\)) # 
-- (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & (((\GReset~input_o\) # (!\trafficLighttopLevel_inst|MSTLIsYellow~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_Low|masterLatch|int_q~0_combout\,
	datab => \GReset~input_o\,
	datac => \trafficLighttopLevel_inst|MSTLIsYellow~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|d_FF_MSTL_Low|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y49_N24
\trafficLighttopLevel_inst|d_FF_MSTL_Low|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|d_FF_MSTL_Low|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & ((\trafficLighttopLevel_inst|d_FF_MSTL_Low|masterLatch|int_q~0_combout\))) # 
-- (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & (\trafficLighttopLevel_inst|d_FF_MSTL_Low|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|d_FF_MSTL_Low|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	datad => \trafficLighttopLevel_inst|d_FF_MSTL_Low|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|d_FF_MSTL_Low|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y49_N6
\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\ = (!\GReset~input_o\ & (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & 
-- !\trafficLighttopLevel_inst|d_FF_MSTL_Low|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GReset~input_o\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|d_FF_MSTL_Low|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y49_N0
\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|masterLatch|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|masterLatch|int_q~0_combout\ & (((!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\)) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\))) # (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|masterLatch|int_q~0_combout\ & (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & 
-- ((!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|masterLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y49_N16
\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y49_N2
\trafficLighttopLevel_inst|counter_4bit_MTT|td_2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(3) = \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\ $ (((\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\) # 
-- ((\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\) # (\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(3));

-- Location: LCCOMB_X3_Y49_N8
\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~1_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~1_combout\ & (((!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\)) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(3)))) # (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~1_combout\ & (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & 
-- ((!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~1_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(3),
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X3_Y49_N12
\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~1_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|masterLatch|int_q~1_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y49_N14
\trafficLighttopLevel_inst|SSTLIsGreen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|SSTLIsGreen~0_combout\ = (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\ & (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\ & 
-- (\trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\ & \trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|SSTLIsGreen~0_combout\);

-- Location: LCCOMB_X2_Y49_N0
\trafficLighttopLevel_inst|SSTLIsGreen\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|SSTLIsGreen~combout\ = (\trafficLighttopLevel_inst|SSTLIsGreen~0_combout\) # ((\trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\ & (!\trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\ & 
-- !\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_Low|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|SSTLIsGreen~0_combout\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\,
	combout => \trafficLighttopLevel_inst|SSTLIsGreen~combout\);

-- Location: LCCOMB_X2_Y49_N8
\trafficLighttopLevel_inst|d_FF_SSTL_High|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|d_FF_SSTL_High|masterLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & (((\trafficLighttopLevel_inst|d_FF_SSTL_High|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & ((\GReset~input_o\) # ((!\trafficLighttopLevel_inst|SSTLIsGreen~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GReset~input_o\,
	datab => \trafficLighttopLevel_inst|SSTLIsGreen~combout\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_High|masterLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|d_FF_SSTL_High|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y49_N16
\trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & ((\trafficLighttopLevel_inst|d_FF_SSTL_High|masterLatch|int_q~0_combout\))) # 
-- (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & (\trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_High|masterLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y49_N24
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\ = (!\GReset~input_o\ & (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & 
-- !\trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GReset~input_o\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_High|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y49_N10
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|masterLatch|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|masterLatch|int_q~0_combout\ & 
-- (((!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\))) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|masterLatch|int_q~0_combout\ & (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & 
-- ((!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|masterLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y49_N16
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y49_N2
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~1_combout\ = (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~0_combout\ & ((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\ $ 
-- (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X1_Y49_N6
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~1_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|masterLatch|int_q~1_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y49_N4
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(3) = \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\ $ (((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\) # 
-- ((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\) # (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(3));

-- Location: LCCOMB_X1_Y49_N18
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~1_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~1_combout\ & 
-- (((!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(3)))) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~1_combout\ & 
-- (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & ((!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~1_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(3),
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X2_Y49_N30
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~1_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|masterLatch|int_q~1_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y48_N12
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~0_combout\ = (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~1_combout\ & ((\simClock~input_o\ & ((\GClock~input_o\))) # (!\simClock~input_o\ & 
-- (\clk_div_inst|clock_100KHz~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simClock~input_o\,
	datab => \clk_div_inst|clock_100KHz~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~1_combout\,
	datad => \GClock~input_o\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y48_N24
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\ = (!\GReset~input_o\ & (!\trafficLighttopLevel_inst|d_FF_MSTL_High|slaveLatch|int_q~0_combout\ & 
-- !\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GReset~input_o\,
	datac => \trafficLighttopLevel_inst|d_FF_MSTL_High|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y48_N22
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|masterLatch|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|masterLatch|int_q~0_combout\ & 
-- (((!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\))) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|masterLatch|int_q~0_combout\ & (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & 
-- ((!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|masterLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y48_N20
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|masterLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\);

-- Location: LCCOMB_X1_Y48_N6
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~1_combout\ = (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~0_combout\ & ((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\ $ 
-- (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X1_Y48_N26
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~1_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|masterLatch|int_q~1_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y48_N28
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(2) = \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|slaveLatch|int_q~0_combout\ $ (((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\) # 
-- (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(2));

-- Location: LCCOMB_X1_Y48_N30
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|masterLatch|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|masterLatch|int_q~0_combout\ & 
-- (((!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(2)))) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|masterLatch|int_q~0_combout\ & 
-- (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & ((!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|masterLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(2),
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y48_N10
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|masterLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y48_N8
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(3) = \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|slaveLatch|int_q~0_combout\ $ (((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|slaveLatch|int_q~0_combout\) # 
-- ((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\) # (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(3));

-- Location: LCCOMB_X1_Y48_N14
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~1_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~1_combout\ & 
-- ((!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(3))))) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\ & 
-- (((!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~1_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(3),
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X1_Y48_N16
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|slaveLatch|int_q~0_combout\ = (GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- ((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~1_combout\))) # (!GLOBAL(\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\) & 
-- (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|masterLatch|int_q~1_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~0clkctrl_outclk\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y49_N0
\trafficLighttopLevel_inst|displayOnBCD[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ = (((!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\)) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|slaveLatch|int_q~0_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\);

-- Location: LCCOMB_X1_Y49_N12
\trafficLighttopLevel_inst|displayOnBCD[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ = (((!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\)) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|slaveLatch|int_q~1_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\);

-- Location: LCCOMB_X1_Y49_N26
\trafficLighttopLevel_inst|displayOnBCD[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ = (((!\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\)) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\);

-- Location: LCCOMB_X1_Y49_N30
\trafficLighttopLevel_inst|displayOnBCD[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\ = (((!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|slaveLatch|int_q~0_combout\) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\)) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_SST|FF2|slaveLatch|int_q~0_combout\)) # (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|slaveLatch|int_q~0_combout\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|slaveLatch|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|slaveLatch|int_q~0_combout\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|slaveLatch|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\);

-- Location: LCCOMB_X1_Y49_N20
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[0]~0_combout\ = (\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ $ (!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\)) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\))) # (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\) # ((!\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ & 
-- !\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[0]~0_combout\);

-- Location: LCCOMB_X1_Y50_N0
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[1]~1_combout\ = (\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\) # (\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ $ 
-- (!\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\)))) # (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\) # (\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\ $ 
-- (\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[1]~1_combout\);

-- Location: LCCOMB_X1_Y50_N14
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[2]~2_combout\ = ((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\) # (\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\))) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & ((!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\)))) # (!\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[2]~2_combout\);

-- Location: LCCOMB_X1_Y50_N16
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[3]~3_combout\ = (\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\ $ (!\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\)) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\))) # (!\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & (\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ $ (((!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\ & 
-- !\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[3]~3_combout\);

-- Location: LCCOMB_X1_Y50_N22
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[4]~4_combout\ = (\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\))) # (!\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & (\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[4]~4_combout\);

-- Location: LCCOMB_X1_Y49_N22
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[5]~5_combout\ = (\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\))) # (!\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ & (\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & !\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\)))) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ $ (!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[5]~5_combout\);

-- Location: LCCOMB_X1_Y50_N12
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[6]~6_combout\ = (\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\ & (\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ $ ((\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\)))) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\) # ((\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\) # (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[6]~6_combout\);

-- Location: LCCOMB_X1_Y50_N10
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[8]~7_combout\ = (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((!\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\) # (!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[8]~7_combout\);

-- Location: IOIBUF_X54_Y0_N8
\SSCS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSCS,
	o => \SSCS~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\RxD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RxD,
	o => \RxD~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(0),
	o => \SW1[0]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\SW1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(1),
	o => \SW1[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\SW1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(2),
	o => \SW1[2]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\SW1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(3),
	o => \SW1[3]~input_o\);

ww_TxD <= \TxD~output_o\;

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


