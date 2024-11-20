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

-- DATE "11/20/2024 18:20:50"

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
	TxD : BUFFER std_logic;
	MSTL : BUFFER std_logic_vector(2 DOWNTO 0);
	SSTL : BUFFER std_logic_vector(2 DOWNTO 0);
	SegmentOut : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END debuggableTrafficLightController;

-- Design Ports Information
-- RxD	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxD	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTL[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTL[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSTL[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSTL[0]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSTL[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSTL[2]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[7]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[8]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[10]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[11]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[12]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SegmentOut[13]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GReset	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- simClock	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSCS	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[3]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux_2to1_1bit_chooseClock|d_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \trafficLighttopLevel_inst|BrakeNextState~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_inst|incrementByteCounter~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RxD~input_o\ : std_logic;
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
SIGNAL \clk_div_inst|clock_1MHz~q\ : std_logic;
SIGNAL \mux_2to1_1bit_chooseClock|d_out~combout\ : std_logic;
SIGNAL \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\ : std_logic;
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|resetCheck~combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~q\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~q\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~q\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|td_2~0_combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~q\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF5|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF5|int_q~q\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|equality_Comparator_6bit_check41|isEqual~0_combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|equality_Comparator_6bit_check41|isEqual~combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|d_FF_Gate_isEqual|int_q~q\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|STDDiv41ClockValue~combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|d_FF_Gate_clk|int_q~feeder_combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|d_FF_Gate_clk|int_q~q\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~feeder_combout\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~q\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~feeder_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~feeder_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|TDRE~combout\ : std_logic;
SIGNAL \UART_inst|d_FF_latchTDRE|int_q~q\ : std_logic;
SIGNAL \UART_inst|incrementByteCounter~combout\ : std_logic;
SIGNAL \UART_inst|incrementByteCounter~clkctrl_outclk\ : std_logic;
SIGNAL \UART_inst|counter_4bit_BytesSent|FF0|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|counter_4bit_BytesSent|FF1|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\ : std_logic;
SIGNAL \UART_inst|equality_Comparator_4bit_sent6Bytes|isEqual~0_combout\ : std_logic;
SIGNAL \UART_inst|d_FF_proceedStateLatched|int_q~q\ : std_logic;
SIGNAL \UART_inst|ResetByteCounter~combout\ : std_logic;
SIGNAL \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ : std_logic;
SIGNAL \UART_inst|counter_4bit_BytesSent|FF2|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ : std_logic;
SIGNAL \UART_inst|counter_4bit_BytesSent|FF3|int_q~0_combout\ : std_logic;
SIGNAL \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\ : std_logic;
SIGNAL \UART_inst|Equal6~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\ : std_logic;
SIGNAL \SW2[3]~input_o\ : std_logic;
SIGNAL \debouncer_sw23|int_d2Input~combout\ : std_logic;
SIGNAL \debouncer_sw23|second|int_q~q\ : std_logic;
SIGNAL \debouncer_sw23|int_d1Input~0_combout\ : std_logic;
SIGNAL \debouncer_sw23|first|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|mux_2to1_4bit_inst|d_out[0]~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~q\ : std_logic;
SIGNAL \SW2[1]~input_o\ : std_logic;
SIGNAL \debouncer_sw21|int_d2Input~combout\ : std_logic;
SIGNAL \debouncer_sw21|second|int_q~q\ : std_logic;
SIGNAL \debouncer_sw21|int_d1Input~0_combout\ : std_logic;
SIGNAL \debouncer_sw21|first|int_q~q\ : std_logic;
SIGNAL \SW2[2]~input_o\ : std_logic;
SIGNAL \debouncer_sw22|int_d1Input~0_combout\ : std_logic;
SIGNAL \debouncer_sw22|first|int_q~q\ : std_logic;
SIGNAL \debouncer_sw22|int_d2Input~combout\ : std_logic;
SIGNAL \debouncer_sw22|second|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\ : std_logic;
SIGNAL \SW2[0]~input_o\ : std_logic;
SIGNAL \debouncer_sw20|int_d1Input~0_combout\ : std_logic;
SIGNAL \debouncer_sw20|first|int_q~q\ : std_logic;
SIGNAL \debouncer_sw20|int_d2Input~combout\ : std_logic;
SIGNAL \debouncer_sw20|second|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|equalcond~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~6_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|SSTLIsGreen~2_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF1|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|SSTLIsYellow~combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|MSTLIsGreen~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|MSTLIsGreen~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|MSTLIsYellow~0_combout\ : std_logic;
SIGNAL \SSCS~input_o\ : std_logic;
SIGNAL \debouncer_SCSS|int_d1Input~0_combout\ : std_logic;
SIGNAL \debouncer_SCSS|first|int_q~q\ : std_logic;
SIGNAL \debouncer_SCSS|int_d2Input~combout\ : std_logic;
SIGNAL \debouncer_SCSS|second|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|MSTLIsYellow~1_combout\ : std_logic;
SIGNAL \SW1[3]~input_o\ : std_logic;
SIGNAL \debouncer_sw13|int_d1Input~0_combout\ : std_logic;
SIGNAL \debouncer_sw13|first|int_q~q\ : std_logic;
SIGNAL \debouncer_sw13|int_d2Input~combout\ : std_logic;
SIGNAL \debouncer_sw13|second|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|MSLTHoldCond~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~q\ : std_logic;
SIGNAL \SW1[2]~input_o\ : std_logic;
SIGNAL \debouncer_sw12|int_d2Input~combout\ : std_logic;
SIGNAL \debouncer_sw12|second|int_q~q\ : std_logic;
SIGNAL \debouncer_sw12|int_d1Input~0_combout\ : std_logic;
SIGNAL \debouncer_sw12|first|int_q~q\ : std_logic;
SIGNAL \SW1[1]~input_o\ : std_logic;
SIGNAL \debouncer_sw11|int_d2Input~combout\ : std_logic;
SIGNAL \debouncer_sw11|second|int_q~q\ : std_logic;
SIGNAL \debouncer_sw11|int_d1Input~0_combout\ : std_logic;
SIGNAL \debouncer_sw11|first|int_q~q\ : std_logic;
SIGNAL \SW1[0]~input_o\ : std_logic;
SIGNAL \debouncer_sw10|int_d1Input~0_combout\ : std_logic;
SIGNAL \debouncer_sw10|first|int_q~q\ : std_logic;
SIGNAL \debouncer_sw10|int_d2Input~combout\ : std_logic;
SIGNAL \debouncer_sw10|second|int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~3_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|MSTLIsYellow~combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|MSTLIsGreen~2_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ : std_logic;
SIGNAL \UART_inst|WordToSend~0_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|BrakeNextState~combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|BrakeNextState~clkctrl_outclk\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ : std_logic;
SIGNAL \UART_inst|WordToSend[35]~1_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend~6_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~4_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~5_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~2_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~3_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~7_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~8_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst0|int_q~q\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~24_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~25_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~26_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~27_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~28_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst3|int_q~q\ : std_logic;
SIGNAL \UART_inst|Equal9~0_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[4]~16_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[1]~13_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[4]~17_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[4]~29_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[4]~30_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[1]~11_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[1]~12_combout\ : std_logic;
SIGNAL \UART_inst|Equal6~1_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[1]~33_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[1]~14_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[4]~31_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst4|int_q~q\ : std_logic;
SIGNAL \UART_inst|ByteToSend[6]~32_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst6|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit9|int_q~feeder_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit9|int_q~q\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~19_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~20_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~21_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~22_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[0]~23_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst2|int_q~q\ : std_logic;
SIGNAL \UART_inst|ByteToSend[1]~15_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[1]~9_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[1]~10_combout\ : std_logic;
SIGNAL \UART_inst|ByteToSend[1]~18_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst1|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~8_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~9_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~10_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit8|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[7]~7_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit7|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs~6_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit6|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[5]~5_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit5|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[4]~4_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit4|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[3]~3_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit3|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[2]~2_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit2|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[1]~1_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit1|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs~0_combout\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit0|int_q~q\ : std_logic;
SIGNAL \UART_inst|UARTTransmitter_inst|mux_2to1_1bit_selout|d_out~combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ : std_logic;
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
SIGNAL \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_GReset~input_o\ : std_logic;
SIGNAL \UART_inst|BaudRateGen_inst|ALT_INV_resetCheck~combout\ : std_logic;
SIGNAL \UART_inst|ALT_INV_ResetByteCounter~combout\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_SSTL_Low|ALT_INV_int_q~q\ : std_logic;
SIGNAL \trafficLighttopLevel_inst|d_FF_SSTL_High|ALT_INV_int_q~q\ : std_logic;

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

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);

\mux_2to1_1bit_chooseClock|d_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mux_2to1_1bit_chooseClock|d_out~combout\);

\trafficLighttopLevel_inst|BrakeNextState~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \trafficLighttopLevel_inst|BrakeNextState~combout\);

\UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~q\);

\UART_inst|incrementByteCounter~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UART_inst|incrementByteCounter~combout\);
\ALT_INV_GReset~input_o\ <= NOT \GReset~input_o\;
\UART_inst|BaudRateGen_inst|ALT_INV_resetCheck~combout\ <= NOT \UART_inst|BaudRateGen_inst|resetCheck~combout\;
\UART_inst|ALT_INV_ResetByteCounter~combout\ <= NOT \UART_inst|ResetByteCounter~combout\;
\trafficLighttopLevel_inst|d_FF_SSTL_Low|ALT_INV_int_q~q\ <= NOT \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\;
\trafficLighttopLevel_inst|d_FF_SSTL_High|ALT_INV_int_q~q\ <= NOT \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\;

-- Location: IOOBUF_X13_Y73_N23
\TxD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_inst|UARTTransmitter_inst|mux_2to1_1bit_selout|d_out~combout\,
	devoe => ww_devoe,
	o => \TxD~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\MSTL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_inst|WordToSend~0_combout\,
	devoe => ww_devoe,
	o => \MSTL[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\MSTL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	devoe => ww_devoe,
	o => \MSTL[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\MSTL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	devoe => ww_devoe,
	o => \MSTL[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\SSTL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|MSTLIsGreen~0_combout\,
	devoe => ww_devoe,
	o => \SSTL[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\SSTL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	devoe => ww_devoe,
	o => \SSTL[1]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\SSTL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	devoe => ww_devoe,
	o => \SSTL[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X107_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X115_Y67_N16
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

-- Location: IOOBUF_X115_Y69_N2
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

-- Location: IOOBUF_X115_Y41_N2
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

-- Location: IOOBUF_X115_Y30_N9
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

-- Location: IOOBUF_X115_Y25_N23
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

-- Location: IOOBUF_X115_Y30_N2
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

-- Location: IOOBUF_X115_Y20_N9
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

-- Location: IOOBUF_X115_Y22_N2
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

-- Location: IOOBUF_X115_Y28_N9
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

-- Location: IOIBUF_X115_Y13_N1
\simClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_simClock,
	o => \simClock~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\GClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X98_Y37_N14
\clk_div_inst|count_1Mhz[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|count_1Mhz[0]~5_combout\ = \clk_div_inst|count_1Mhz\(0) $ (VCC)
-- \clk_div_inst|count_1Mhz[0]~6\ = CARRY(\clk_div_inst|count_1Mhz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|count_1Mhz\(0),
	datad => VCC,
	combout => \clk_div_inst|count_1Mhz[0]~5_combout\,
	cout => \clk_div_inst|count_1Mhz[0]~6\);

-- Location: LCCOMB_X98_Y37_N20
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

-- Location: LCCOMB_X98_Y37_N22
\clk_div_inst|count_1Mhz[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|count_1Mhz[4]~13_combout\ = \clk_div_inst|count_1Mhz\(4) $ (!\clk_div_inst|count_1Mhz[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|count_1Mhz\(4),
	cin => \clk_div_inst|count_1Mhz[3]~12\,
	combout => \clk_div_inst|count_1Mhz[4]~13_combout\);

-- Location: FF_X98_Y37_N23
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

-- Location: LCCOMB_X98_Y37_N2
\clk_div_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~0_combout\ = (\clk_div_inst|count_1Mhz\(4) & \clk_div_inst|count_1Mhz\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div_inst|count_1Mhz\(4),
	datad => \clk_div_inst|count_1Mhz\(3),
	combout => \clk_div_inst|LessThan0~0_combout\);

-- Location: FF_X98_Y37_N15
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

-- Location: LCCOMB_X98_Y37_N16
\clk_div_inst|count_1Mhz[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|count_1Mhz[1]~7_combout\ = (\clk_div_inst|count_1Mhz\(1) & (!\clk_div_inst|count_1Mhz[0]~6\)) # (!\clk_div_inst|count_1Mhz\(1) & ((\clk_div_inst|count_1Mhz[0]~6\) # (GND)))
-- \clk_div_inst|count_1Mhz[1]~8\ = CARRY((!\clk_div_inst|count_1Mhz[0]~6\) # (!\clk_div_inst|count_1Mhz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|count_1Mhz\(1),
	datad => VCC,
	cin => \clk_div_inst|count_1Mhz[0]~6\,
	combout => \clk_div_inst|count_1Mhz[1]~7_combout\,
	cout => \clk_div_inst|count_1Mhz[1]~8\);

-- Location: FF_X98_Y37_N17
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

-- Location: LCCOMB_X98_Y37_N18
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

-- Location: FF_X98_Y37_N19
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

-- Location: FF_X98_Y37_N21
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

-- Location: LCCOMB_X98_Y37_N0
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

-- Location: FF_X98_Y37_N1
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

-- Location: FF_X98_Y38_N1
\clk_div_inst|clock_1MHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \clk_div_inst|clock_1Mhz_int~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clock_1MHz~q\);

-- Location: LCCOMB_X98_Y38_N0
\mux_2to1_1bit_chooseClock|d_out\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_1bit_chooseClock|d_out~combout\ = LCELL((\simClock~input_o\ & ((\GClock~input_o\))) # (!\simClock~input_o\ & (\clk_div_inst|clock_1MHz~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \simClock~input_o\,
	datac => \clk_div_inst|clock_1MHz~q\,
	datad => \GClock~input_o\,
	combout => \mux_2to1_1bit_chooseClock|d_out~combout\);

-- Location: CLKCTRL_G8
\mux_2to1_1bit_chooseClock|d_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N8
\GReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GReset,
	o => \GReset~input_o\);

-- Location: LCCOMB_X99_Y41_N24
\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~0_combout\ = !\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\,
	combout => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~0_combout\);

-- Location: LCCOMB_X99_Y41_N20
\UART_inst|BaudRateGen_inst|resetCheck\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|resetCheck~combout\ = (\GReset~input_o\) # (\UART_inst|BaudRateGen_inst|d_FF_Gate_isEqual|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GReset~input_o\,
	datad => \UART_inst|BaudRateGen_inst|d_FF_Gate_isEqual|int_q~q\,
	combout => \UART_inst|BaudRateGen_inst|resetCheck~combout\);

-- Location: FF_X99_Y41_N25
\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~0_combout\,
	clrn => \UART_inst|BaudRateGen_inst|ALT_INV_resetCheck~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\);

-- Location: LCCOMB_X99_Y41_N22
\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~0_combout\ = \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~q\ $ (\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~q\,
	datad => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\,
	combout => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~0_combout\);

-- Location: FF_X99_Y41_N23
\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~0_combout\,
	clrn => \UART_inst|BaudRateGen_inst|ALT_INV_resetCheck~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~q\);

-- Location: LCCOMB_X99_Y41_N28
\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~0_combout\ = \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~q\ $ (((\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~q\ & 
-- \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~q\,
	datac => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~q\,
	datad => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\,
	combout => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~0_combout\);

-- Location: FF_X99_Y41_N29
\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~0_combout\,
	clrn => \UART_inst|BaudRateGen_inst|ALT_INV_resetCheck~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~q\);

-- Location: LCCOMB_X99_Y41_N14
\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~0_combout\ = \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~q\ $ (((\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~q\ & 
-- (\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\ & \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~q\,
	datab => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\,
	datac => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~q\,
	datad => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~q\,
	combout => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~0_combout\);

-- Location: FF_X99_Y41_N15
\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~0_combout\,
	clrn => \UART_inst|BaudRateGen_inst|ALT_INV_resetCheck~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~q\);

-- Location: LCCOMB_X99_Y41_N10
\UART_inst|BaudRateGen_inst|counter_6bit_div41|td_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|counter_6bit_div41|td_2~0_combout\ = (\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~q\ & (\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\ & (\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~q\ & 
-- \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~q\,
	datab => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\,
	datac => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~q\,
	datad => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~q\,
	combout => \UART_inst|BaudRateGen_inst|counter_6bit_div41|td_2~0_combout\);

-- Location: LCCOMB_X99_Y41_N26
\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~0_combout\ = \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~q\ $ (\UART_inst|BaudRateGen_inst|counter_6bit_div41|td_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~q\,
	datad => \UART_inst|BaudRateGen_inst|counter_6bit_div41|td_2~0_combout\,
	combout => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~0_combout\);

-- Location: FF_X99_Y41_N27
\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~0_combout\,
	clrn => \UART_inst|BaudRateGen_inst|ALT_INV_resetCheck~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~q\);

-- Location: LCCOMB_X99_Y41_N8
\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF5|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF5|int_q~0_combout\ = \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF5|int_q~q\ $ (((\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~q\ & 
-- \UART_inst|BaudRateGen_inst|counter_6bit_div41|td_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~q\,
	datac => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF5|int_q~q\,
	datad => \UART_inst|BaudRateGen_inst|counter_6bit_div41|td_2~0_combout\,
	combout => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF5|int_q~0_combout\);

-- Location: FF_X99_Y41_N9
\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF5|int_q~0_combout\,
	clrn => \UART_inst|BaudRateGen_inst|ALT_INV_resetCheck~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF5|int_q~q\);

-- Location: LCCOMB_X99_Y41_N6
\UART_inst|BaudRateGen_inst|equality_Comparator_6bit_check41|isEqual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|equality_Comparator_6bit_check41|isEqual~0_combout\ = (!\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~q\ & (!\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\ & 
-- (\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~q\ & !\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF1|int_q~q\,
	datab => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF0|int_q~q\,
	datac => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF3|int_q~q\,
	datad => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF2|int_q~q\,
	combout => \UART_inst|BaudRateGen_inst|equality_Comparator_6bit_check41|isEqual~0_combout\);

-- Location: LCCOMB_X99_Y41_N12
\UART_inst|BaudRateGen_inst|equality_Comparator_6bit_check41|isEqual\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|equality_Comparator_6bit_check41|isEqual~combout\ = (!\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~q\ & (\UART_inst|BaudRateGen_inst|counter_6bit_div41|FF5|int_q~q\ & 
-- \UART_inst|BaudRateGen_inst|equality_Comparator_6bit_check41|isEqual~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF4|int_q~q\,
	datac => \UART_inst|BaudRateGen_inst|counter_6bit_div41|FF5|int_q~q\,
	datad => \UART_inst|BaudRateGen_inst|equality_Comparator_6bit_check41|isEqual~0_combout\,
	combout => \UART_inst|BaudRateGen_inst|equality_Comparator_6bit_check41|isEqual~combout\);

-- Location: FF_X99_Y41_N13
\UART_inst|BaudRateGen_inst|d_FF_Gate_isEqual|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|BaudRateGen_inst|equality_Comparator_6bit_check41|isEqual~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|BaudRateGen_inst|d_FF_Gate_isEqual|int_q~q\);

-- Location: LCCOMB_X100_Y41_N30
\UART_inst|BaudRateGen_inst|STDDiv41ClockValue\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|STDDiv41ClockValue~combout\ = (\GReset~input_o\) # (\UART_inst|BaudRateGen_inst|d_FF_Gate_clk|int_q~q\ $ (\UART_inst|BaudRateGen_inst|d_FF_Gate_isEqual|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|BaudRateGen_inst|d_FF_Gate_clk|int_q~q\,
	datac => \GReset~input_o\,
	datad => \UART_inst|BaudRateGen_inst|d_FF_Gate_isEqual|int_q~q\,
	combout => \UART_inst|BaudRateGen_inst|STDDiv41ClockValue~combout\);

-- Location: LCCOMB_X100_Y41_N28
\UART_inst|BaudRateGen_inst|d_FF_Gate_clk|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|d_FF_Gate_clk|int_q~feeder_combout\ = \UART_inst|BaudRateGen_inst|STDDiv41ClockValue~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_inst|BaudRateGen_inst|STDDiv41ClockValue~combout\,
	combout => \UART_inst|BaudRateGen_inst|d_FF_Gate_clk|int_q~feeder_combout\);

-- Location: FF_X100_Y41_N29
\UART_inst|BaudRateGen_inst|d_FF_Gate_clk|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|BaudRateGen_inst|d_FF_Gate_clk|int_q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|BaudRateGen_inst|d_FF_Gate_clk|int_q~q\);

-- Location: LCCOMB_X100_Y41_N26
\UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~0_combout\ = !\UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~q\,
	combout => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~0_combout\);

-- Location: LCCOMB_X100_Y41_N22
\UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~feeder_combout\ = \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~0_combout\,
	combout => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~feeder_combout\);

-- Location: FF_X100_Y41_N23
\UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|d_FF_Gate_clk|int_q~q\,
	d => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~q\);

-- Location: CLKCTRL_G5
\UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\);

-- Location: LCCOMB_X99_Y38_N22
\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~0_combout\ = (!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\ & (((!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\ & 
-- !\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\)) # (!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\,
	datab => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~0_combout\);

-- Location: LCCOMB_X99_Y38_N28
\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~feeder_combout\ = \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~0_combout\,
	combout => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~feeder_combout\);

-- Location: FF_X99_Y38_N29
\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\,
	d => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\);

-- Location: LCCOMB_X99_Y38_N18
\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~0_combout\ = (\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\ & (\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\ & 
-- (!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\ & \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\))) # (!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\ & 
-- (!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\ & (\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\,
	datab => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~0_combout\);

-- Location: FF_X99_Y38_N19
\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~q\,
	d => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\);

-- Location: LCCOMB_X99_Y38_N16
\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~0_combout\ = (\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\ & (!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\ & 
-- (!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\ & \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\))) # (!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\ & 
-- ((\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\ $ (\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\,
	datab => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~0_combout\);

-- Location: LCCOMB_X99_Y38_N26
\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~feeder_combout\ = \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~0_combout\,
	combout => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~feeder_combout\);

-- Location: FF_X99_Y38_N27
\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\,
	d => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\);

-- Location: LCCOMB_X99_Y38_N24
\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~0_combout\ = (!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\ & (\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\ $ 
-- (((\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\ & \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\,
	datab => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~0_combout\);

-- Location: FF_X99_Y38_N25
\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~q\,
	d => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\);

-- Location: LCCOMB_X98_Y38_N6
\UART_inst|UARTTransmitter_inst|TDRE\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|TDRE~combout\ = (\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\ & (((\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\)))) # 
-- (!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\ & ((\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\ & (\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\)) # 
-- (!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\ & (!\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\ & !\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\,
	datab => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF0|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|TDRE~combout\);

-- Location: FF_X98_Y38_N7
\UART_inst|d_FF_latchTDRE|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~combout\,
	d => \UART_inst|UARTTransmitter_inst|TDRE~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|d_FF_latchTDRE|int_q~q\);

-- Location: LCCOMB_X99_Y38_N30
\UART_inst|incrementByteCounter\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|incrementByteCounter~combout\ = LCELL((\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\ & (\UART_inst|d_FF_latchTDRE|int_q~q\ & ((\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\) # 
-- (\UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF1|int_q~q\,
	datab => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF3|int_q~q\,
	datac => \UART_inst|d_FF_latchTDRE|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|counter_4bit_count_10|FF2|int_q~q\,
	combout => \UART_inst|incrementByteCounter~combout\);

-- Location: CLKCTRL_G7
\UART_inst|incrementByteCounter~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UART_inst|incrementByteCounter~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UART_inst|incrementByteCounter~clkctrl_outclk\);

-- Location: LCCOMB_X103_Y38_N28
\UART_inst|counter_4bit_BytesSent|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|counter_4bit_BytesSent|FF0|int_q~0_combout\ = !\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	combout => \UART_inst|counter_4bit_BytesSent|FF0|int_q~0_combout\);

-- Location: LCCOMB_X103_Y38_N2
\UART_inst|counter_4bit_BytesSent|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|counter_4bit_BytesSent|FF1|int_q~0_combout\ = \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\ $ (\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	datad => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	combout => \UART_inst|counter_4bit_BytesSent|FF1|int_q~0_combout\);

-- Location: FF_X103_Y38_N3
\UART_inst|counter_4bit_BytesSent|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|incrementByteCounter~clkctrl_outclk\,
	d => \UART_inst|counter_4bit_BytesSent|FF1|int_q~0_combout\,
	clrn => \UART_inst|ALT_INV_ResetByteCounter~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\);

-- Location: LCCOMB_X103_Y38_N6
\UART_inst|equality_Comparator_4bit_sent6Bytes|isEqual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|equality_Comparator_4bit_sent6Bytes|isEqual~0_combout\ = (\UART_inst|counter_4bit_BytesSent|FF3|int_q~q\) # ((\UART_inst|counter_4bit_BytesSent|FF1|int_q~q\ & \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	datab => \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\,
	datac => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	combout => \UART_inst|equality_Comparator_4bit_sent6Bytes|isEqual~0_combout\);

-- Location: FF_X103_Y38_N7
\UART_inst|d_FF_proceedStateLatched|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~combout\,
	d => \UART_inst|equality_Comparator_4bit_sent6Bytes|isEqual~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|d_FF_proceedStateLatched|int_q~q\);

-- Location: LCCOMB_X103_Y38_N8
\UART_inst|ResetByteCounter\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ResetByteCounter~combout\ = (\GReset~input_o\) # (\UART_inst|d_FF_proceedStateLatched|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GReset~input_o\,
	datad => \UART_inst|d_FF_proceedStateLatched|int_q~q\,
	combout => \UART_inst|ResetByteCounter~combout\);

-- Location: FF_X103_Y38_N29
\UART_inst|counter_4bit_BytesSent|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|incrementByteCounter~clkctrl_outclk\,
	d => \UART_inst|counter_4bit_BytesSent|FF0|int_q~0_combout\,
	clrn => \UART_inst|ALT_INV_ResetByteCounter~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\);

-- Location: LCCOMB_X103_Y38_N12
\UART_inst|counter_4bit_BytesSent|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|counter_4bit_BytesSent|FF2|int_q~0_combout\ = \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ $ (((\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	datac => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	datad => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	combout => \UART_inst|counter_4bit_BytesSent|FF2|int_q~0_combout\);

-- Location: FF_X103_Y38_N13
\UART_inst|counter_4bit_BytesSent|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|incrementByteCounter~clkctrl_outclk\,
	d => \UART_inst|counter_4bit_BytesSent|FF2|int_q~0_combout\,
	clrn => \UART_inst|ALT_INV_ResetByteCounter~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\);

-- Location: LCCOMB_X103_Y38_N4
\UART_inst|counter_4bit_BytesSent|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|counter_4bit_BytesSent|FF3|int_q~0_combout\ = \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\ $ (((\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ & (\UART_inst|counter_4bit_BytesSent|FF1|int_q~q\ & 
-- \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	datab => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	datac => \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\,
	datad => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	combout => \UART_inst|counter_4bit_BytesSent|FF3|int_q~0_combout\);

-- Location: FF_X103_Y38_N5
\UART_inst|counter_4bit_BytesSent|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|incrementByteCounter~clkctrl_outclk\,
	d => \UART_inst|counter_4bit_BytesSent|FF3|int_q~0_combout\,
	clrn => \UART_inst|ALT_INV_ResetByteCounter~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\);

-- Location: LCCOMB_X103_Y38_N24
\UART_inst|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|Equal6~0_combout\ = (!\UART_inst|counter_4bit_BytesSent|FF3|int_q~q\ & !\UART_inst|counter_4bit_BytesSent|FF1|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\,
	datad => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	combout => \UART_inst|Equal6~0_combout\);

-- Location: LCCOMB_X102_Y40_N28
\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0_combout\ = (!\UART_inst|d_FF_proceedStateLatched|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\ & 
-- \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|d_FF_proceedStateLatched|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0_combout\);

-- Location: LCCOMB_X102_Y40_N12
\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0_combout\ & (((\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~q\)))) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0_combout\ & (\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~q\ $ (\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~0_combout\);

-- Location: FF_X102_Y40_N13
\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~q\);

-- Location: LCCOMB_X102_Y40_N0
\trafficLighttopLevel_inst|counter_4bit_MTT|td_2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(3) = \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\ $ (((\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\ & 
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(3));

-- Location: LCCOMB_X102_Y40_N30
\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~1_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0_combout\ & (((\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\)))) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0_combout\ & (\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & ((\trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(3),
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~1_combout\);

-- Location: FF_X102_Y40_N31
\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~1_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\);

-- Location: LCCOMB_X102_Y40_N8
\trafficLighttopLevel_inst|equality_Comparator_4bit_MTTTT_MT|isEqual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\ & \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\);

-- Location: LCCOMB_X102_Y40_N22
\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~0_combout\ = (\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~q\ $ (((\UART_inst|d_FF_proceedStateLatched|int_q~q\) # 
-- (!\trafficLighttopLevel_inst|equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\,
	datab => \UART_inst|d_FF_proceedStateLatched|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~0_combout\);

-- Location: FF_X102_Y40_N23
\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~q\);

-- Location: LCCOMB_X102_Y40_N10
\trafficLighttopLevel_inst|counter_4bit_MTT|td_2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(2) = \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\ $ (((\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~q\ & \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(2));

-- Location: LCCOMB_X102_Y40_N20
\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0_combout\ & (((\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\)))) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0_combout\ & (\trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(2) & ((\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|td_2\(2),
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~0_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~0_combout\);

-- Location: FF_X102_Y40_N21
\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\);

-- Location: IOIBUF_X115_Y15_N1
\SW2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(3),
	o => \SW2[3]~input_o\);

-- Location: LCCOMB_X99_Y39_N2
\debouncer_sw23|int_d2Input\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw23|int_d2Input~combout\ = (!\debouncer_sw23|first|int_q~q\ & (!\debouncer_sw23|second|int_q~q\ & \SW2[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw23|first|int_q~q\,
	datac => \debouncer_sw23|second|int_q~q\,
	datad => \SW2[3]~input_o\,
	combout => \debouncer_sw23|int_d2Input~combout\);

-- Location: FF_X99_Y39_N3
\debouncer_sw23|second|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw23|int_d2Input~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw23|second|int_q~q\);

-- Location: LCCOMB_X99_Y39_N0
\debouncer_sw23|int_d1Input~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw23|int_d1Input~0_combout\ = (\SW2[3]~input_o\ & ((\debouncer_sw23|second|int_q~q\) # (\debouncer_sw23|first|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw23|second|int_q~q\,
	datac => \debouncer_sw23|first|int_q~q\,
	datad => \SW2[3]~input_o\,
	combout => \debouncer_sw23|int_d1Input~0_combout\);

-- Location: FF_X99_Y39_N1
\debouncer_sw23|first|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw23|int_d1Input~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw23|first|int_q~q\);

-- Location: LCCOMB_X102_Y39_N8
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|mux_2to1_4bit_inst|d_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|mux_2to1_4bit_inst|d_out[0]~0_combout\ = \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\ $ (((\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~6_combout\) # 
-- (\UART_inst|d_FF_proceedStateLatched|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~6_combout\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\,
	datad => \UART_inst|d_FF_proceedStateLatched|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|mux_2to1_4bit_inst|d_out[0]~0_combout\);

-- Location: FF_X102_Y39_N9
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|mux_2to1_4bit_inst|d_out[0]~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	sclr => \trafficLighttopLevel_inst|d_FF_SSTL_High|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\);

-- Location: LCCOMB_X102_Y39_N6
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0_combout\ = ((\UART_inst|d_FF_proceedStateLatched|int_q~q\) # (\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~6_combout\)) # 
-- (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datab => \UART_inst|d_FF_proceedStateLatched|int_q~q\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~6_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0_combout\);

-- Location: LCCOMB_X102_Y39_N12
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~1_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0_combout\ & (\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & 
-- (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\ $ (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\)))) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0_combout\ & 
-- (((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~1_combout\);

-- Location: FF_X102_Y39_N13
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~1_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\);

-- Location: LCCOMB_X102_Y39_N16
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(2) = \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\ $ (((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\ & \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(2));

-- Location: LCCOMB_X102_Y39_N22
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0_combout\ & (\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & 
-- (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(2)))) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0_combout\ & (((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(2),
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~0_combout\);

-- Location: FF_X102_Y39_N23
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\);

-- Location: LCCOMB_X102_Y39_N28
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(3) = \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~q\ $ (((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\ & 
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(3));

-- Location: LCCOMB_X102_Y39_N4
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0_combout\ & (\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & 
-- (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(3)))) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0_combout\ & (((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|td_2\(3),
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~0_combout\);

-- Location: FF_X102_Y39_N5
\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~q\);

-- Location: IOIBUF_X115_Y11_N8
\SW2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(1),
	o => \SW2[1]~input_o\);

-- Location: LCCOMB_X102_Y39_N30
\debouncer_sw21|int_d2Input\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw21|int_d2Input~combout\ = (!\debouncer_sw21|first|int_q~q\ & (!\debouncer_sw21|second|int_q~q\ & \SW2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw21|first|int_q~q\,
	datac => \debouncer_sw21|second|int_q~q\,
	datad => \SW2[1]~input_o\,
	combout => \debouncer_sw21|int_d2Input~combout\);

-- Location: FF_X102_Y39_N31
\debouncer_sw21|second|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw21|int_d2Input~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw21|second|int_q~q\);

-- Location: LCCOMB_X102_Y39_N24
\debouncer_sw21|int_d1Input~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw21|int_d1Input~0_combout\ = (\SW2[1]~input_o\ & ((\debouncer_sw21|second|int_q~q\) # (\debouncer_sw21|first|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw21|second|int_q~q\,
	datac => \debouncer_sw21|first|int_q~q\,
	datad => \SW2[1]~input_o\,
	combout => \debouncer_sw21|int_d1Input~0_combout\);

-- Location: FF_X102_Y39_N25
\debouncer_sw21|first|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw21|int_d1Input~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw21|first|int_q~q\);

-- Location: IOIBUF_X115_Y10_N1
\SW2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(2),
	o => \SW2[2]~input_o\);

-- Location: LCCOMB_X103_Y39_N20
\debouncer_sw22|int_d1Input~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw22|int_d1Input~0_combout\ = (\SW2[2]~input_o\ & ((\debouncer_sw22|second|int_q~q\) # (\debouncer_sw22|first|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw22|second|int_q~q\,
	datac => \debouncer_sw22|first|int_q~q\,
	datad => \SW2[2]~input_o\,
	combout => \debouncer_sw22|int_d1Input~0_combout\);

-- Location: FF_X103_Y39_N21
\debouncer_sw22|first|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw22|int_d1Input~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw22|first|int_q~q\);

-- Location: LCCOMB_X103_Y39_N30
\debouncer_sw22|int_d2Input\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw22|int_d2Input~combout\ = (!\debouncer_sw22|first|int_q~q\ & (!\debouncer_sw22|second|int_q~q\ & \SW2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw22|first|int_q~q\,
	datac => \debouncer_sw22|second|int_q~q\,
	datad => \SW2[2]~input_o\,
	combout => \debouncer_sw22|int_d2Input~combout\);

-- Location: FF_X103_Y39_N31
\debouncer_sw22|second|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw22|int_d2Input~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw22|second|int_q~q\);

-- Location: LCCOMB_X102_Y39_N26
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\ $ (((\debouncer_sw22|second|int_q~q\) # 
-- (!\debouncer_sw22|first|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw22|second|int_q~q\,
	datab => \debouncer_sw22|first|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(0),
	o => \SW2[0]~input_o\);

-- Location: LCCOMB_X101_Y39_N2
\debouncer_sw20|int_d1Input~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw20|int_d1Input~0_combout\ = (\SW2[0]~input_o\ & ((\debouncer_sw20|second|int_q~q\) # (\debouncer_sw20|first|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw20|second|int_q~q\,
	datac => \debouncer_sw20|first|int_q~q\,
	datad => \SW2[0]~input_o\,
	combout => \debouncer_sw20|int_d1Input~0_combout\);

-- Location: FF_X101_Y39_N3
\debouncer_sw20|first|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw20|int_d1Input~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw20|first|int_q~q\);

-- Location: LCCOMB_X101_Y39_N24
\debouncer_sw20|int_d2Input\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw20|int_d2Input~combout\ = (!\debouncer_sw20|first|int_q~q\ & (!\debouncer_sw20|second|int_q~q\ & \SW2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw20|first|int_q~q\,
	datac => \debouncer_sw20|second|int_q~q\,
	datad => \SW2[0]~input_o\,
	combout => \debouncer_sw20|int_d2Input~combout\);

-- Location: FF_X101_Y39_N25
\debouncer_sw20|second|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw20|int_d2Input~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw20|second|int_q~q\);

-- Location: LCCOMB_X102_Y39_N0
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|equalcond~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|equalcond~0_combout\ = \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\ $ (((\debouncer_sw21|second|int_q~q\) # (!\debouncer_sw21|first|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw21|second|int_q~q\,
	datac => \debouncer_sw21|first|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|equalcond~0_combout\);

-- Location: LCCOMB_X102_Y39_N10
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4_combout\ = (\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|equalcond~0_combout\ & ((\debouncer_sw20|second|int_q~q\) # 
-- ((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\) # (!\debouncer_sw20|first|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw20|second|int_q~q\,
	datab => \debouncer_sw20|first|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|equalcond~0_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4_combout\);

-- Location: LCCOMB_X102_Y39_N2
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\ & (((\debouncer_sw22|second|int_q~q\) # 
-- (\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4_combout\)) # (!\debouncer_sw22|first|int_q~q\))) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\ & 
-- (\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4_combout\ & ((\debouncer_sw22|second|int_q~q\) # (!\debouncer_sw22|first|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw22|first|int_q~q\,
	datab => \debouncer_sw22|second|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~4_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3_combout\);

-- Location: LCCOMB_X102_Y39_N20
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\ = (!\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3_combout\ & (((\debouncer_sw21|first|int_q~q\ & !\debouncer_sw21|second|int_q~q\)) # 
-- (!\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw21|first|int_q~q\,
	datab => \debouncer_sw21|second|int_q~q\,
	datac => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~2_combout\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~3_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\);

-- Location: LCCOMB_X102_Y39_N18
\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~6_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~q\ & (\debouncer_sw23|first|int_q~q\ & (!\debouncer_sw23|second|int_q~q\ & 
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\))) # (!\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~q\ & ((\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\) # 
-- ((\debouncer_sw23|first|int_q~q\ & !\debouncer_sw23|second|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw23|first|int_q~q\,
	datab => \debouncer_sw23|second|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~5_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~6_combout\);

-- Location: LCCOMB_X102_Y38_N8
\trafficLighttopLevel_inst|SSTLIsGreen~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|SSTLIsGreen~2_combout\ = (\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (((\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~6_combout\)))) # (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & 
-- (\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~6_combout\,
	combout => \trafficLighttopLevel_inst|SSTLIsGreen~2_combout\);

-- Location: LCCOMB_X102_Y40_N4
\trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~0_combout\ = (\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~q\ $ (((\UART_inst|d_FF_proceedStateLatched|int_q~q\) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\,
	datab => \UART_inst|d_FF_proceedStateLatched|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~0_combout\);

-- Location: FF_X102_Y40_N5
\trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~q\);

-- Location: LCCOMB_X102_Y40_N16
\trafficLighttopLevel_inst|counter_4bit_SST|td_2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|td_2\(1) = \trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~q\ $ (\trafficLighttopLevel_inst|counter_4bit_SST|FF1|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|td_2\(1));

-- Location: LCCOMB_X102_Y40_N2
\trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~0_combout\ = (\UART_inst|d_FF_proceedStateLatched|int_q~q\) # ((!\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\) # (!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_inst|d_FF_proceedStateLatched|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~0_combout\);

-- Location: FF_X102_Y40_N17
\trafficLighttopLevel_inst|counter_4bit_SST|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_SST|td_2\(1),
	clrn => \ALT_INV_GReset~input_o\,
	sclr => \trafficLighttopLevel_inst|d_FF_SSTL_Low|ALT_INV_int_q~q\,
	ena => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|int_q~q\);

-- Location: LCCOMB_X102_Y40_N24
\trafficLighttopLevel_inst|counter_4bit_SST|td_2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|td_2\(2) = \trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~q\ $ (((\trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~q\ & \trafficLighttopLevel_inst|counter_4bit_SST|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|td_2\(2));

-- Location: FF_X102_Y40_N25
\trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_SST|td_2\(2),
	clrn => \ALT_INV_GReset~input_o\,
	sclr => \trafficLighttopLevel_inst|d_FF_SSTL_Low|ALT_INV_int_q~q\,
	ena => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~q\);

-- Location: LCCOMB_X102_Y40_N18
\trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SST|FF1|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~q\ & \trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~0_combout\);

-- Location: LCCOMB_X102_Y40_N14
\trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~1_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\ & ((!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~0_combout\) # (!\UART_inst|d_FF_proceedStateLatched|int_q~q\))) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\ & ((\trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_inst|d_FF_proceedStateLatched|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~1_combout\);

-- Location: FF_X102_Y40_N15
\trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~1_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	sclr => \trafficLighttopLevel_inst|d_FF_SSTL_Low|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\);

-- Location: LCCOMB_X102_Y38_N12
\trafficLighttopLevel_inst|SSTLIsYellow\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|SSTLIsYellow~combout\ = (\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (((!\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\ & !\trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~6_combout\)))) # 
-- (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (!\trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\ & (\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_SSLT_SSC|isEqual~6_combout\,
	combout => \trafficLighttopLevel_inst|SSTLIsYellow~combout\);

-- Location: FF_X102_Y38_N13
\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \trafficLighttopLevel_inst|BrakeNextState~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|SSTLIsYellow~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\);

-- Location: FF_X102_Y38_N9
\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \trafficLighttopLevel_inst|BrakeNextState~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|SSTLIsGreen~2_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	sclr => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\);

-- Location: LCCOMB_X102_Y38_N6
\trafficLighttopLevel_inst|MSTLIsGreen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|MSTLIsGreen~0_combout\ = (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & !\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	combout => \trafficLighttopLevel_inst|MSTLIsGreen~0_combout\);

-- Location: LCCOMB_X102_Y40_N26
\trafficLighttopLevel_inst|MSTLIsGreen~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|MSTLIsGreen~1_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\) # ((!\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\) # (!\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	combout => \trafficLighttopLevel_inst|MSTLIsGreen~1_combout\);

-- Location: LCCOMB_X102_Y38_N28
\trafficLighttopLevel_inst|MSTLIsYellow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|MSTLIsYellow~0_combout\ = (!\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ & (\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & ((!\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\) # 
-- (!\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\,
	combout => \trafficLighttopLevel_inst|MSTLIsYellow~0_combout\);

-- Location: IOIBUF_X115_Y6_N15
\SSCS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSCS,
	o => \SSCS~input_o\);

-- Location: LCCOMB_X107_Y37_N8
\debouncer_SCSS|int_d1Input~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_SCSS|int_d1Input~0_combout\ = (\SSCS~input_o\ & ((\debouncer_SCSS|second|int_q~q\) # (\debouncer_SCSS|first|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_SCSS|second|int_q~q\,
	datac => \debouncer_SCSS|first|int_q~q\,
	datad => \SSCS~input_o\,
	combout => \debouncer_SCSS|int_d1Input~0_combout\);

-- Location: FF_X107_Y37_N9
\debouncer_SCSS|first|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_SCSS|int_d1Input~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_SCSS|first|int_q~q\);

-- Location: LCCOMB_X107_Y37_N18
\debouncer_SCSS|int_d2Input\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_SCSS|int_d2Input~combout\ = (!\debouncer_SCSS|first|int_q~q\ & (!\debouncer_SCSS|second|int_q~q\ & \SSCS~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_SCSS|first|int_q~q\,
	datac => \debouncer_SCSS|second|int_q~q\,
	datad => \SSCS~input_o\,
	combout => \debouncer_SCSS|int_d2Input~combout\);

-- Location: FF_X107_Y37_N19
\debouncer_SCSS|second|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_SCSS|int_d2Input~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_SCSS|second|int_q~q\);

-- Location: LCCOMB_X103_Y38_N10
\trafficLighttopLevel_inst|MSTLIsYellow~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|MSTLIsYellow~1_combout\ = (!\debouncer_SCSS|second|int_q~q\ & (!\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & (\debouncer_SCSS|first|int_q~q\ & \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_SCSS|second|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datac => \debouncer_SCSS|first|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	combout => \trafficLighttopLevel_inst|MSTLIsYellow~1_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(3),
	o => \SW1[3]~input_o\);

-- Location: LCCOMB_X107_Y39_N4
\debouncer_sw13|int_d1Input~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw13|int_d1Input~0_combout\ = (\SW1[3]~input_o\ & ((\debouncer_sw13|second|int_q~q\) # (\debouncer_sw13|first|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw13|second|int_q~q\,
	datac => \debouncer_sw13|first|int_q~q\,
	datad => \SW1[3]~input_o\,
	combout => \debouncer_sw13|int_d1Input~0_combout\);

-- Location: FF_X107_Y39_N5
\debouncer_sw13|first|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw13|int_d1Input~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw13|first|int_q~q\);

-- Location: LCCOMB_X107_Y39_N22
\debouncer_sw13|int_d2Input\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw13|int_d2Input~combout\ = (!\debouncer_sw13|first|int_q~q\ & (!\debouncer_sw13|second|int_q~q\ & \SW1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw13|first|int_q~q\,
	datac => \debouncer_sw13|second|int_q~q\,
	datad => \SW1[3]~input_o\,
	combout => \debouncer_sw13|int_d2Input~combout\);

-- Location: FF_X107_Y39_N23
\debouncer_sw13|second|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw13|int_d2Input~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw13|second|int_q~q\);

-- Location: LCCOMB_X103_Y39_N28
\trafficLighttopLevel_inst|MSLTHoldCond~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|MSLTHoldCond~0_combout\ = (\trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~3_combout\ & ((\debouncer_SCSS|second|int_q~q\) # ((!\debouncer_SCSS|first|int_q~q\) # 
-- (!\UART_inst|d_FF_proceedStateLatched|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_SCSS|second|int_q~q\,
	datab => \UART_inst|d_FF_proceedStateLatched|int_q~q\,
	datac => \debouncer_SCSS|first|int_q~q\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~3_combout\,
	combout => \trafficLighttopLevel_inst|MSLTHoldCond~0_combout\);

-- Location: LCCOMB_X103_Y39_N0
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~0_combout\ = (\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\ $ (!\trafficLighttopLevel_inst|MSLTHoldCond~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\,
	datad => \trafficLighttopLevel_inst|MSLTHoldCond~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~0_combout\);

-- Location: FF_X103_Y39_N1
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\);

-- Location: LCCOMB_X103_Y39_N18
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~0_combout\ = (\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\ $ (((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\ 
-- & !\trafficLighttopLevel_inst|MSLTHoldCond~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\,
	datad => \trafficLighttopLevel_inst|MSLTHoldCond~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~0_combout\);

-- Location: FF_X103_Y39_N19
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\);

-- Location: LCCOMB_X103_Y39_N26
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(2) = \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\ $ (((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\ & \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(2));

-- Location: LCCOMB_X103_Y39_N22
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~0_combout\ = (\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ & ((\trafficLighttopLevel_inst|MSLTHoldCond~0_combout\ & ((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\))) # 
-- (!\trafficLighttopLevel_inst|MSLTHoldCond~0_combout\ & (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(2),
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\,
	datad => \trafficLighttopLevel_inst|MSLTHoldCond~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~0_combout\);

-- Location: FF_X103_Y39_N23
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\);

-- Location: LCCOMB_X103_Y39_N4
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(3) = \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~q\ $ (((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\ & (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\ & 
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(3));

-- Location: LCCOMB_X103_Y39_N8
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~0_combout\ = (\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ & ((\trafficLighttopLevel_inst|MSLTHoldCond~0_combout\ & ((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~q\))) # 
-- (!\trafficLighttopLevel_inst|MSLTHoldCond~0_combout\ & (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|td_2\(3),
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|MSLTHoldCond~0_combout\,
	combout => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~0_combout\);

-- Location: FF_X103_Y39_N9
\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~q\);

-- Location: IOIBUF_X115_Y15_N8
\SW1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(2),
	o => \SW1[2]~input_o\);

-- Location: LCCOMB_X100_Y39_N24
\debouncer_sw12|int_d2Input\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw12|int_d2Input~combout\ = (!\debouncer_sw12|first|int_q~q\ & (!\debouncer_sw12|second|int_q~q\ & \SW1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw12|first|int_q~q\,
	datac => \debouncer_sw12|second|int_q~q\,
	datad => \SW1[2]~input_o\,
	combout => \debouncer_sw12|int_d2Input~combout\);

-- Location: FF_X100_Y39_N25
\debouncer_sw12|second|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw12|int_d2Input~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw12|second|int_q~q\);

-- Location: LCCOMB_X100_Y39_N10
\debouncer_sw12|int_d1Input~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw12|int_d1Input~0_combout\ = (\SW1[2]~input_o\ & ((\debouncer_sw12|second|int_q~q\) # (\debouncer_sw12|first|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw12|second|int_q~q\,
	datac => \debouncer_sw12|first|int_q~q\,
	datad => \SW1[2]~input_o\,
	combout => \debouncer_sw12|int_d1Input~0_combout\);

-- Location: FF_X100_Y39_N11
\debouncer_sw12|first|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw12|int_d1Input~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw12|first|int_q~q\);

-- Location: IOIBUF_X115_Y14_N1
\SW1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(1),
	o => \SW1[1]~input_o\);

-- Location: LCCOMB_X106_Y39_N8
\debouncer_sw11|int_d2Input\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw11|int_d2Input~combout\ = (!\debouncer_sw11|first|int_q~q\ & (!\debouncer_sw11|second|int_q~q\ & \SW1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw11|first|int_q~q\,
	datac => \debouncer_sw11|second|int_q~q\,
	datad => \SW1[1]~input_o\,
	combout => \debouncer_sw11|int_d2Input~combout\);

-- Location: FF_X106_Y39_N9
\debouncer_sw11|second|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw11|int_d2Input~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw11|second|int_q~q\);

-- Location: LCCOMB_X106_Y39_N10
\debouncer_sw11|int_d1Input~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw11|int_d1Input~0_combout\ = (\SW1[1]~input_o\ & ((\debouncer_sw11|second|int_q~q\) # (\debouncer_sw11|first|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw11|second|int_q~q\,
	datac => \debouncer_sw11|first|int_q~q\,
	datad => \SW1[1]~input_o\,
	combout => \debouncer_sw11|int_d1Input~0_combout\);

-- Location: FF_X106_Y39_N11
\debouncer_sw11|first|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw11|int_d1Input~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw11|first|int_q~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(0),
	o => \SW1[0]~input_o\);

-- Location: LCCOMB_X105_Y39_N22
\debouncer_sw10|int_d1Input~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw10|int_d1Input~0_combout\ = (\SW1[0]~input_o\ & ((\debouncer_sw10|second|int_q~q\) # (\debouncer_sw10|first|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_sw10|second|int_q~q\,
	datac => \debouncer_sw10|first|int_q~q\,
	datad => \SW1[0]~input_o\,
	combout => \debouncer_sw10|int_d1Input~0_combout\);

-- Location: FF_X105_Y39_N23
\debouncer_sw10|first|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw10|int_d1Input~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw10|first|int_q~q\);

-- Location: LCCOMB_X105_Y39_N4
\debouncer_sw10|int_d2Input\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_sw10|int_d2Input~combout\ = (!\debouncer_sw10|first|int_q~q\ & (!\debouncer_sw10|second|int_q~q\ & \SW1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw10|first|int_q~q\,
	datac => \debouncer_sw10|second|int_q~q\,
	datad => \SW1[0]~input_o\,
	combout => \debouncer_sw10|int_d2Input~combout\);

-- Location: FF_X105_Y39_N5
\debouncer_sw10|second|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \debouncer_sw10|int_d2Input~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_sw10|second|int_q~q\);

-- Location: LCCOMB_X103_Y39_N16
\trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\ = (!\debouncer_sw10|second|int_q~q\ & (\debouncer_sw10|first|int_q~q\ & !\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw10|second|int_q~q\,
	datab => \debouncer_sw10|first|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\);

-- Location: LCCOMB_X103_Y39_N6
\trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\ & (\debouncer_sw11|first|int_q~q\ & (!\debouncer_sw11|second|int_q~q\ & 
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\))) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\ & ((\trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\) # 
-- ((\debouncer_sw11|first|int_q~q\ & !\debouncer_sw11|second|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw11|first|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\,
	datac => \debouncer_sw11|second|int_q~q\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~0_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\);

-- Location: LCCOMB_X103_Y39_N2
\trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\ & (((\debouncer_sw12|second|int_q~q\) # 
-- (!\trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\)) # (!\debouncer_sw12|first|int_q~q\))) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\ & 
-- (!\trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\ & ((\debouncer_sw12|second|int_q~q\) # (!\debouncer_sw12|first|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw12|first|int_q~q\,
	datab => \debouncer_sw12|second|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~1_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\);

-- Location: LCCOMB_X103_Y39_N24
\trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~3_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~q\ & ((\debouncer_sw13|second|int_q~q\) # 
-- ((\trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\) # (!\debouncer_sw13|first|int_q~q\)))) # (!\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~q\ & 
-- (\trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\ & ((\debouncer_sw13|second|int_q~q\) # (!\debouncer_sw13|first|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_sw13|second|int_q~q\,
	datab => \debouncer_sw13|first|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~2_combout\,
	combout => \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~3_combout\);

-- Location: LCCOMB_X102_Y38_N24
\trafficLighttopLevel_inst|MSTLIsYellow\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|MSTLIsYellow~combout\ = (\trafficLighttopLevel_inst|MSTLIsYellow~0_combout\) # ((\trafficLighttopLevel_inst|MSTLIsYellow~1_combout\ & \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trafficLighttopLevel_inst|MSTLIsYellow~0_combout\,
	datac => \trafficLighttopLevel_inst|MSTLIsYellow~1_combout\,
	datad => \trafficLighttopLevel_inst|equality_Comparator_4bit_MSLT_MSC|isEqual~3_combout\,
	combout => \trafficLighttopLevel_inst|MSTLIsYellow~combout\);

-- Location: LCCOMB_X102_Y38_N22
\trafficLighttopLevel_inst|MSTLIsGreen~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|MSTLIsGreen~2_combout\ = (\trafficLighttopLevel_inst|MSTLIsGreen~0_combout\ & (!\trafficLighttopLevel_inst|equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\ & (\trafficLighttopLevel_inst|MSTLIsGreen~1_combout\ & 
-- !\trafficLighttopLevel_inst|MSTLIsYellow~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|MSTLIsGreen~0_combout\,
	datab => \trafficLighttopLevel_inst|equality_Comparator_4bit_MTTTT_MT|isEqual~0_combout\,
	datac => \trafficLighttopLevel_inst|MSTLIsGreen~1_combout\,
	datad => \trafficLighttopLevel_inst|MSTLIsYellow~combout\,
	combout => \trafficLighttopLevel_inst|MSTLIsGreen~2_combout\);

-- Location: FF_X102_Y38_N23
\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \trafficLighttopLevel_inst|BrakeNextState~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|MSTLIsGreen~2_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\);

-- Location: LCCOMB_X102_Y38_N18
\UART_inst|WordToSend~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|WordToSend~0_combout\ = (!\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & !\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	combout => \UART_inst|WordToSend~0_combout\);

-- Location: LCCOMB_X98_Y38_N30
\trafficLighttopLevel_inst|BrakeNextState\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BrakeNextState~combout\ = LCELL((\mux_2to1_1bit_chooseClock|d_out~combout\ & ((\UART_inst|d_FF_proceedStateLatched|int_q~q\) # ((\trafficLighttopLevel_inst|MSTLIsGreen~0_combout\ & \UART_inst|WordToSend~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|MSTLIsGreen~0_combout\,
	datab => \UART_inst|WordToSend~0_combout\,
	datac => \UART_inst|d_FF_proceedStateLatched|int_q~q\,
	datad => \mux_2to1_1bit_chooseClock|d_out~combout\,
	combout => \trafficLighttopLevel_inst|BrakeNextState~combout\);

-- Location: CLKCTRL_G6
\trafficLighttopLevel_inst|BrakeNextState~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \trafficLighttopLevel_inst|BrakeNextState~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \trafficLighttopLevel_inst|BrakeNextState~clkctrl_outclk\);

-- Location: FF_X102_Y38_N25
\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \trafficLighttopLevel_inst|BrakeNextState~clkctrl_outclk\,
	d => \trafficLighttopLevel_inst|MSTLIsYellow~combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\);

-- Location: LCCOMB_X102_Y38_N14
\UART_inst|WordToSend[35]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|WordToSend[35]~1_combout\ = (\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (!\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ & !\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\))) 
-- # (!\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & ((\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (!\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ & !\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\)) # 
-- (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & ((!\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\) # (!\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	combout => \UART_inst|WordToSend[35]~1_combout\);

-- Location: LCCOMB_X101_Y38_N14
\UART_inst|ByteToSend~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend~6_combout\ = (\UART_inst|Equal6~0_combout\ & (\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & (\UART_inst|WordToSend[35]~1_combout\ & \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|Equal6~0_combout\,
	datab => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	datac => \UART_inst|WordToSend[35]~1_combout\,
	datad => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	combout => \UART_inst|ByteToSend~6_combout\);

-- Location: LCCOMB_X101_Y38_N22
\UART_inst|ByteToSend[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~4_combout\ = (!\UART_inst|counter_4bit_BytesSent|FF1|int_q~q\ & (\UART_inst|WordToSend~0_combout\ & (\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ $ (\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	datad => \UART_inst|WordToSend~0_combout\,
	combout => \UART_inst|ByteToSend[0]~4_combout\);

-- Location: LCCOMB_X101_Y38_N4
\UART_inst|ByteToSend[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~5_combout\ = (\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & (\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\)) # (!\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & ((\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ & 
-- (\UART_inst|ByteToSend[0]~4_combout\)) # (!\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ & ((\UART_inst|WordToSend[35]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	datab => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	datac => \UART_inst|ByteToSend[0]~4_combout\,
	datad => \UART_inst|WordToSend[35]~1_combout\,
	combout => \UART_inst|ByteToSend[0]~5_combout\);

-- Location: LCCOMB_X101_Y38_N10
\UART_inst|ByteToSend[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~2_combout\ = (\UART_inst|counter_4bit_BytesSent|FF1|int_q~q\ & (\UART_inst|WordToSend~0_combout\ & (\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ $ (\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	datad => \UART_inst|WordToSend~0_combout\,
	combout => \UART_inst|ByteToSend[0]~2_combout\);

-- Location: LCCOMB_X101_Y38_N16
\UART_inst|ByteToSend[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~3_combout\ = (\UART_inst|ByteToSend[0]~2_combout\) # ((\trafficLighttopLevel_inst|MSTLIsGreen~0_combout\ & ((!\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\) # (!\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|MSTLIsGreen~0_combout\,
	datab => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	datad => \UART_inst|ByteToSend[0]~2_combout\,
	combout => \UART_inst|ByteToSend[0]~3_combout\);

-- Location: LCCOMB_X101_Y38_N28
\UART_inst|ByteToSend[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~7_combout\ = (\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & ((\UART_inst|ByteToSend[0]~5_combout\ & (\UART_inst|ByteToSend~6_combout\)) # (!\UART_inst|ByteToSend[0]~5_combout\ & ((\UART_inst|ByteToSend[0]~3_combout\))))) # 
-- (!\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & (((\UART_inst|ByteToSend[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	datab => \UART_inst|ByteToSend~6_combout\,
	datac => \UART_inst|ByteToSend[0]~5_combout\,
	datad => \UART_inst|ByteToSend[0]~3_combout\,
	combout => \UART_inst|ByteToSend[0]~7_combout\);

-- Location: LCCOMB_X101_Y38_N8
\UART_inst|ByteToSend[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~8_combout\ = (!\UART_inst|counter_4bit_BytesSent|FF3|int_q~q\ & \UART_inst|ByteToSend[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\,
	datad => \UART_inst|ByteToSend[0]~7_combout\,
	combout => \UART_inst|ByteToSend[0]~8_combout\);

-- Location: FF_X101_Y38_N9
\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|ByteToSend[0]~8_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst0|int_q~q\);

-- Location: LCCOMB_X101_Y38_N12
\UART_inst|ByteToSend[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~24_combout\ = (!\UART_inst|counter_4bit_BytesSent|FF1|int_q~q\ & (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\ & \UART_inst|WordToSend~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	datad => \UART_inst|WordToSend~0_combout\,
	combout => \UART_inst|ByteToSend[0]~24_combout\);

-- Location: LCCOMB_X101_Y38_N18
\UART_inst|ByteToSend[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~25_combout\ = (\UART_inst|counter_4bit_BytesSent|FF1|int_q~q\) # (((\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\) # (!\trafficLighttopLevel_inst|MSTLIsGreen~0_combout\)) # 
-- (!\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	datad => \trafficLighttopLevel_inst|MSTLIsGreen~0_combout\,
	combout => \UART_inst|ByteToSend[0]~25_combout\);

-- Location: LCCOMB_X101_Y38_N20
\UART_inst|ByteToSend[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~26_combout\ = (\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & ((\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\) # ((!\UART_inst|ByteToSend[0]~25_combout\)))) # (!\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & 
-- (!\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ & (\UART_inst|WordToSend[35]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	datab => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	datac => \UART_inst|WordToSend[35]~1_combout\,
	datad => \UART_inst|ByteToSend[0]~25_combout\,
	combout => \UART_inst|ByteToSend[0]~26_combout\);

-- Location: LCCOMB_X101_Y38_N6
\UART_inst|ByteToSend[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~27_combout\ = (\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ & ((\UART_inst|ByteToSend[0]~26_combout\ & (\UART_inst|ByteToSend~6_combout\)) # (!\UART_inst|ByteToSend[0]~26_combout\ & ((\UART_inst|ByteToSend[0]~24_combout\))))) # 
-- (!\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ & (((\UART_inst|ByteToSend[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	datab => \UART_inst|ByteToSend~6_combout\,
	datac => \UART_inst|ByteToSend[0]~24_combout\,
	datad => \UART_inst|ByteToSend[0]~26_combout\,
	combout => \UART_inst|ByteToSend[0]~27_combout\);

-- Location: LCCOMB_X101_Y38_N30
\UART_inst|ByteToSend[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~28_combout\ = (!\UART_inst|counter_4bit_BytesSent|FF3|int_q~q\ & \UART_inst|ByteToSend[0]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\,
	datad => \UART_inst|ByteToSend[0]~27_combout\,
	combout => \UART_inst|ByteToSend[0]~28_combout\);

-- Location: FF_X101_Y38_N31
\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|ByteToSend[0]~28_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst3|int_q~q\);

-- Location: LCCOMB_X105_Y38_N12
\UART_inst|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|Equal9~0_combout\ = (!\UART_inst|counter_4bit_BytesSent|FF3|int_q~q\ & (\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & (!\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ & !\UART_inst|counter_4bit_BytesSent|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\,
	datab => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	datac => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	datad => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	combout => \UART_inst|Equal9~0_combout\);

-- Location: LCCOMB_X103_Y38_N30
\UART_inst|ByteToSend[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[4]~16_combout\ = (!\UART_inst|counter_4bit_BytesSent|FF1|int_q~q\ & !\UART_inst|counter_4bit_BytesSent|FF3|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	datac => \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\,
	combout => \UART_inst|ByteToSend[4]~16_combout\);

-- Location: LCCOMB_X102_Y38_N20
\UART_inst|ByteToSend[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[1]~13_combout\ = (\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (!\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ & !\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\))) 
-- # (!\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & ((\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (!\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ & !\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\)) # 
-- (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ $ (\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	combout => \UART_inst|ByteToSend[1]~13_combout\);

-- Location: LCCOMB_X102_Y38_N0
\UART_inst|ByteToSend[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[4]~17_combout\ = (\UART_inst|ByteToSend[4]~16_combout\ & (!\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & (\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ & \UART_inst|ByteToSend[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|ByteToSend[4]~16_combout\,
	datab => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	datac => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	datad => \UART_inst|ByteToSend[1]~13_combout\,
	combout => \UART_inst|ByteToSend[4]~17_combout\);

-- Location: LCCOMB_X102_Y38_N4
\UART_inst|ByteToSend[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[4]~29_combout\ = (\UART_inst|ByteToSend[4]~17_combout\ & (((\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\) # (!\UART_inst|WordToSend~0_combout\)) # (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datab => \UART_inst|ByteToSend[4]~17_combout\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	datad => \UART_inst|WordToSend~0_combout\,
	combout => \UART_inst|ByteToSend[4]~29_combout\);

-- Location: LCCOMB_X102_Y38_N26
\UART_inst|ByteToSend[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[4]~30_combout\ = (!\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ & ((\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (!\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & !\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\)) 
-- # (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ $ (\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	combout => \UART_inst|ByteToSend[4]~30_combout\);

-- Location: LCCOMB_X103_Y38_N20
\UART_inst|ByteToSend[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[1]~11_combout\ = (\UART_inst|counter_4bit_BytesSent|FF3|int_q~q\) # (\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\,
	datac => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	combout => \UART_inst|ByteToSend[1]~11_combout\);

-- Location: LCCOMB_X103_Y38_N14
\UART_inst|ByteToSend[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[1]~12_combout\ = (\UART_inst|ByteToSend[1]~11_combout\ & (\UART_inst|WordToSend~0_combout\ & (\trafficLighttopLevel_inst|MSTLIsGreen~0_combout\))) # (!\UART_inst|ByteToSend[1]~11_combout\ & (((\UART_inst|WordToSend[35]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|ByteToSend[1]~11_combout\,
	datab => \UART_inst|WordToSend~0_combout\,
	datac => \trafficLighttopLevel_inst|MSTLIsGreen~0_combout\,
	datad => \UART_inst|WordToSend[35]~1_combout\,
	combout => \UART_inst|ByteToSend[1]~12_combout\);

-- Location: LCCOMB_X103_Y38_N26
\UART_inst|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|Equal6~1_combout\ = (!\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & (!\UART_inst|counter_4bit_BytesSent|FF3|int_q~q\ & (\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ & !\UART_inst|counter_4bit_BytesSent|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	datab => \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\,
	datac => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	datad => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	combout => \UART_inst|Equal6~1_combout\);

-- Location: LCCOMB_X103_Y38_N18
\UART_inst|ByteToSend[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[1]~33_combout\ = (\UART_inst|Equal6~1_combout\ & (\UART_inst|ByteToSend[1]~13_combout\ & ((\UART_inst|counter_4bit_BytesSent|FF3|int_q~q\) # (\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\)))) # (!\UART_inst|Equal6~1_combout\ & 
-- ((\UART_inst|counter_4bit_BytesSent|FF3|int_q~q\) # ((\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|Equal6~1_combout\,
	datab => \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\,
	datac => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	datad => \UART_inst|ByteToSend[1]~13_combout\,
	combout => \UART_inst|ByteToSend[1]~33_combout\);

-- Location: LCCOMB_X103_Y38_N22
\UART_inst|ByteToSend[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[1]~14_combout\ = (\UART_inst|ByteToSend[1]~12_combout\ & (!\UART_inst|ByteToSend[1]~33_combout\ & ((\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\) # (!\UART_inst|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	datab => \UART_inst|Equal6~0_combout\,
	datac => \UART_inst|ByteToSend[1]~12_combout\,
	datad => \UART_inst|ByteToSend[1]~33_combout\,
	combout => \UART_inst|ByteToSend[1]~14_combout\);

-- Location: LCCOMB_X102_Y38_N10
\UART_inst|ByteToSend[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[4]~31_combout\ = (\UART_inst|ByteToSend[4]~29_combout\) # ((\UART_inst|ByteToSend[1]~14_combout\) # ((\UART_inst|Equal9~0_combout\ & \UART_inst|ByteToSend[4]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|Equal9~0_combout\,
	datab => \UART_inst|ByteToSend[4]~29_combout\,
	datac => \UART_inst|ByteToSend[4]~30_combout\,
	datad => \UART_inst|ByteToSend[1]~14_combout\,
	combout => \UART_inst|ByteToSend[4]~31_combout\);

-- Location: FF_X102_Y38_N11
\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|ByteToSend[4]~31_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst4|int_q~q\);

-- Location: LCCOMB_X100_Y38_N0
\UART_inst|ByteToSend[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[6]~32_combout\ = (\UART_inst|WordToSend[35]~1_combout\ & ((\UART_inst|Equal6~1_combout\) # (!\UART_inst|ByteToSend[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_inst|ByteToSend[1]~11_combout\,
	datac => \UART_inst|Equal6~1_combout\,
	datad => \UART_inst|WordToSend[35]~1_combout\,
	combout => \UART_inst|ByteToSend[6]~32_combout\);

-- Location: FF_X100_Y38_N1
\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|ByteToSend[6]~32_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst6|int_q~q\);

-- Location: LCCOMB_X100_Y38_N24
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit9|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit9|int_q~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit9|int_q~feeder_combout\);

-- Location: FF_X100_Y38_N25
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit9|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\,
	d => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit9|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit9|int_q~q\);

-- Location: LCCOMB_X103_Y38_N16
\UART_inst|ByteToSend[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~19_combout\ = (\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\) # ((\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\) # ((\UART_inst|counter_4bit_BytesSent|FF1|int_q~q\) # (\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datac => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	combout => \UART_inst|ByteToSend[0]~19_combout\);

-- Location: LCCOMB_X101_Y38_N0
\UART_inst|ByteToSend[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~20_combout\ = (\UART_inst|counter_4bit_BytesSent|FF1|int_q~q\) # ((\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\) # ((!\UART_inst|WordToSend~0_combout\) # (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF1|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datad => \UART_inst|WordToSend~0_combout\,
	combout => \UART_inst|ByteToSend[0]~20_combout\);

-- Location: LCCOMB_X101_Y38_N2
\UART_inst|ByteToSend[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~21_combout\ = (\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & (((\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\)))) # (!\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & ((\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ & 
-- ((!\UART_inst|ByteToSend[0]~20_combout\))) # (!\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ & (\UART_inst|WordToSend[35]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	datab => \UART_inst|WordToSend[35]~1_combout\,
	datac => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	datad => \UART_inst|ByteToSend[0]~20_combout\,
	combout => \UART_inst|ByteToSend[0]~21_combout\);

-- Location: LCCOMB_X101_Y38_N24
\UART_inst|ByteToSend[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~22_combout\ = (\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & ((\UART_inst|ByteToSend[0]~21_combout\ & ((\UART_inst|ByteToSend~6_combout\))) # (!\UART_inst|ByteToSend[0]~21_combout\ & (!\UART_inst|ByteToSend[0]~19_combout\)))) # 
-- (!\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & (((\UART_inst|ByteToSend[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|ByteToSend[0]~19_combout\,
	datab => \UART_inst|ByteToSend~6_combout\,
	datac => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	datad => \UART_inst|ByteToSend[0]~21_combout\,
	combout => \UART_inst|ByteToSend[0]~22_combout\);

-- Location: LCCOMB_X101_Y38_N26
\UART_inst|ByteToSend[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[0]~23_combout\ = (!\UART_inst|counter_4bit_BytesSent|FF3|int_q~q\ & \UART_inst|ByteToSend[0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_inst|counter_4bit_BytesSent|FF3|int_q~q\,
	datad => \UART_inst|ByteToSend[0]~22_combout\,
	combout => \UART_inst|ByteToSend[0]~23_combout\);

-- Location: FF_X101_Y38_N27
\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|ByteToSend[0]~23_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst2|int_q~q\);

-- Location: LCCOMB_X102_Y38_N2
\UART_inst|ByteToSend[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[1]~15_combout\ = (!\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\ & ((\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (!\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & !\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\)) 
-- # (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & (\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ $ (\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	combout => \UART_inst|ByteToSend[1]~15_combout\);

-- Location: LCCOMB_X102_Y38_N30
\UART_inst|ByteToSend[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[1]~9_combout\ = (!\trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\ & ((\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ & (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\ & !\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\)) 
-- # (!\trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\ & ((!\trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\) # (!\trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|d_FF_MSTL_Low|int_q~q\,
	datab => \trafficLighttopLevel_inst|d_FF_MSTL_High|int_q~q\,
	datac => \trafficLighttopLevel_inst|d_FF_SSTL_High|int_q~q\,
	datad => \trafficLighttopLevel_inst|d_FF_SSTL_Low|int_q~q\,
	combout => \UART_inst|ByteToSend[1]~9_combout\);

-- Location: LCCOMB_X103_Y38_N0
\UART_inst|ByteToSend[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[1]~10_combout\ = (!\UART_inst|counter_4bit_BytesSent|FF2|int_q~q\ & (\UART_inst|Equal6~0_combout\ & (\UART_inst|counter_4bit_BytesSent|FF0|int_q~q\ & \UART_inst|ByteToSend[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|counter_4bit_BytesSent|FF2|int_q~q\,
	datab => \UART_inst|Equal6~0_combout\,
	datac => \UART_inst|counter_4bit_BytesSent|FF0|int_q~q\,
	datad => \UART_inst|ByteToSend[1]~9_combout\,
	combout => \UART_inst|ByteToSend[1]~10_combout\);

-- Location: LCCOMB_X102_Y38_N16
\UART_inst|ByteToSend[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|ByteToSend[1]~18_combout\ = (\UART_inst|ByteToSend[1]~10_combout\) # ((\UART_inst|ByteToSend[1]~14_combout\) # ((\UART_inst|ByteToSend[1]~15_combout\ & \UART_inst|ByteToSend[4]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|ByteToSend[1]~15_combout\,
	datab => \UART_inst|ByteToSend[1]~10_combout\,
	datac => \UART_inst|ByteToSend[4]~17_combout\,
	datad => \UART_inst|ByteToSend[1]~14_combout\,
	combout => \UART_inst|ByteToSend[1]~18_combout\);

-- Location: FF_X102_Y38_N17
\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mux_2to1_1bit_chooseClock|d_out~clkctrl_outclk\,
	d => \UART_inst|ByteToSend[1]~18_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst1|int_q~q\);

-- Location: LCCOMB_X100_Y38_N10
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~8_combout\ = \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst3|int_q~q\ $ (\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst2|int_q~q\ $ 
-- (\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst0|int_q~q\ $ (\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst3|int_q~q\,
	datab => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst2|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst0|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst1|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~8_combout\);

-- Location: LCCOMB_X100_Y38_N16
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~9_combout\ = (\UART_inst|d_FF_latchTDRE|int_q~q\ & ((\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~8_combout\))) # (!\UART_inst|d_FF_latchTDRE|int_q~q\ & 
-- (\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit9|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|d_FF_latchTDRE|int_q~q\,
	datab => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit9|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~8_combout\,
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~9_combout\);

-- Location: LCCOMB_X100_Y38_N26
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~10_combout\ = \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~9_combout\ $ (((\UART_inst|d_FF_latchTDRE|int_q~q\ & 
-- (\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst6|int_q~q\ $ (\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst4|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|d_FF_latchTDRE|int_q~q\,
	datab => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst6|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst4|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~9_combout\,
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~10_combout\);

-- Location: FF_X100_Y38_N27
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit8|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\,
	d => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[8]~10_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit8|int_q~q\);

-- Location: LCCOMB_X100_Y38_N28
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[7]~7_combout\ = (\UART_inst|d_FF_latchTDRE|int_q~q\ & ((\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst6|int_q~q\))) # (!\UART_inst|d_FF_latchTDRE|int_q~q\ & 
-- (\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit8|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|d_FF_latchTDRE|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit8|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst6|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[7]~7_combout\);

-- Location: FF_X100_Y38_N29
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\,
	d => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[7]~7_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit7|int_q~q\);

-- Location: LCCOMB_X100_Y38_N6
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs~6_combout\ = (!\UART_inst|d_FF_latchTDRE|int_q~q\ & \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit7|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|d_FF_latchTDRE|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit7|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs~6_combout\);

-- Location: LCCOMB_X100_Y38_N30
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit6|int_q~feeder_combout\ = \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs~6_combout\,
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit6|int_q~feeder_combout\);

-- Location: FF_X100_Y38_N31
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\,
	d => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit6|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit6|int_q~q\);

-- Location: LCCOMB_X100_Y38_N20
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[5]~5_combout\ = (\UART_inst|d_FF_latchTDRE|int_q~q\ & (\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst4|int_q~q\)) # (!\UART_inst|d_FF_latchTDRE|int_q~q\ & 
-- ((\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit6|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst4|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit6|int_q~q\,
	datad => \UART_inst|d_FF_latchTDRE|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[5]~5_combout\);

-- Location: FF_X100_Y38_N21
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\,
	d => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[5]~5_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit5|int_q~q\);

-- Location: LCCOMB_X100_Y38_N14
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[4]~4_combout\ = (\UART_inst|d_FF_latchTDRE|int_q~q\ & (\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst3|int_q~q\)) # (!\UART_inst|d_FF_latchTDRE|int_q~q\ & 
-- ((\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit5|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|d_FF_latchTDRE|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst3|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit5|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[4]~4_combout\);

-- Location: FF_X100_Y38_N15
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\,
	d => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[4]~4_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit4|int_q~q\);

-- Location: LCCOMB_X100_Y38_N8
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[3]~3_combout\ = (\UART_inst|d_FF_latchTDRE|int_q~q\ & ((\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst2|int_q~q\))) # (!\UART_inst|d_FF_latchTDRE|int_q~q\ & 
-- (\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit4|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|d_FF_latchTDRE|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit4|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst2|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[3]~3_combout\);

-- Location: FF_X100_Y38_N9
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\,
	d => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[3]~3_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit3|int_q~q\);

-- Location: LCCOMB_X100_Y38_N22
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[2]~2_combout\ = (\UART_inst|d_FF_latchTDRE|int_q~q\ & ((\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst1|int_q~q\))) # (!\UART_inst|d_FF_latchTDRE|int_q~q\ & 
-- (\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit3|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|d_FF_latchTDRE|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit3|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst1|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[2]~2_combout\);

-- Location: FF_X100_Y38_N23
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\,
	d => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[2]~2_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit2|int_q~q\);

-- Location: LCCOMB_X100_Y38_N18
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[1]~1_combout\ = (\UART_inst|d_FF_latchTDRE|int_q~q\ & (\UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst0|int_q~q\)) # (!\UART_inst|d_FF_latchTDRE|int_q~q\ & 
-- ((\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_inst|UARTTransmitter_inst|dFF_8bitID|dff_inst0|int_q~q\,
	datac => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit2|int_q~q\,
	datad => \UART_inst|d_FF_latchTDRE|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[1]~1_combout\);

-- Location: FF_X100_Y38_N19
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\,
	d => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs[1]~1_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit1|int_q~q\);

-- Location: LCCOMB_X100_Y38_N4
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs~0_combout\ = (!\UART_inst|d_FF_latchTDRE|int_q~q\ & \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit1|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_inst|d_FF_latchTDRE|int_q~q\,
	datad => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit1|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs~0_combout\);

-- Location: FF_X100_Y38_N13
\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UART_inst|BaudRateGen_inst|counter_8bit_inst|FF0|int_q~clkctrl_outclk\,
	asdata => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|d_sigs~0_combout\,
	clrn => \ALT_INV_GReset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit0|int_q~q\);

-- Location: LCCOMB_X100_Y38_N12
\UART_inst|UARTTransmitter_inst|mux_2to1_1bit_selout|d_out\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_inst|UARTTransmitter_inst|mux_2to1_1bit_selout|d_out~combout\ = (\UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit0|int_q~q\) # (\UART_inst|d_FF_latchTDRE|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_inst|UARTTransmitter_inst|ParallelInSerialOut_8BitTXD|bit0|int_q~q\,
	datad => \UART_inst|d_FF_latchTDRE|int_q~q\,
	combout => \UART_inst|UARTTransmitter_inst|mux_2to1_1bit_selout|d_out~combout\);

-- Location: LCCOMB_X102_Y39_N14
\trafficLighttopLevel_inst|displayOnBCD[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\) # ((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~q\) # ((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~q\) # 
-- (\trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF3|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF3|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF3|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF3|int_q~q\,
	combout => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\);

-- Location: LCCOMB_X103_Y40_N10
\trafficLighttopLevel_inst|displayOnBCD[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SST|FF1|int_q~q\) # ((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\) # ((\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\) # 
-- (\trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SST|FF1|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF1|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF1|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_MTT|FF1|int_q~q\,
	combout => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\);

-- Location: LCCOMB_X102_Y40_N6
\trafficLighttopLevel_inst|displayOnBCD[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ = (\trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~q\) # ((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\) # ((\trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~q\) # 
-- (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_MTT|FF0|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF0|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_SST|FF0|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF0|int_q~q\,
	combout => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\);

-- Location: LCCOMB_X103_Y40_N12
\trafficLighttopLevel_inst|displayOnBCD[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\ = (\trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\) # ((\trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\) # ((\trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\) # 
-- (\trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|counter_4bit_SSLTimer|FF2|int_q~q\,
	datab => \trafficLighttopLevel_inst|counter_4bit_MTT|FF2|int_q~q\,
	datac => \trafficLighttopLevel_inst|counter_4bit_MSLTimer|FF2|int_q~q\,
	datad => \trafficLighttopLevel_inst|counter_4bit_SST|FF2|int_q~q\,
	combout => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\);

-- Location: LCCOMB_X103_Y47_N4
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[0]~0_combout\ = (\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ $ (!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\)) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\))) # (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\) # ((!\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ & 
-- !\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[0]~0_combout\);

-- Location: LCCOMB_X103_Y47_N18
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[1]~1_combout\ = (\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\) # (\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ $ 
-- (!\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\)))) # (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\) # (\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ $ 
-- (\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[1]~1_combout\);

-- Location: LCCOMB_X103_Y47_N0
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[2]~2_combout\ = ((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\) # (\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\))) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & ((!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\)))) # (!\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[2]~2_combout\);

-- Location: LCCOMB_X103_Y47_N14
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[3]~3_combout\ = (\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ $ (!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\)) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\))) # (!\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & (\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ $ (((!\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ & 
-- !\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[3]~3_combout\);

-- Location: LCCOMB_X103_Y47_N8
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[4]~4_combout\ = (\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\))) # (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & (\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[4]~4_combout\);

-- Location: LCCOMB_X103_Y47_N2
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[5]~5_combout\ = (\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & ((\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\))) # (!\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ & (\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\ & !\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\)))) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & (\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\ $ (((!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[5]~5_combout\);

-- Location: LCCOMB_X103_Y47_N12
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[6]~6_combout\ = (\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\ & (\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ $ ((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\)))) # 
-- (!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\ & (((\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\) # (\trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\)) # (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datac => \trafficLighttopLevel_inst|displayOnBCD[0]~0_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[6]~6_combout\);

-- Location: LCCOMB_X103_Y40_N28
\trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[8]~7_combout\ = (!\trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\ & ((!\trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\) # (!\trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trafficLighttopLevel_inst|displayOnBCD[1]~3_combout\,
	datab => \trafficLighttopLevel_inst|displayOnBCD[3]~2_combout\,
	datad => \trafficLighttopLevel_inst|displayOnBCD[2]~1_combout\,
	combout => \trafficLighttopLevel_inst|BCD_to_7Segment_inst|seg[8]~7_combout\);

-- Location: IOIBUF_X27_Y73_N8
\RxD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RxD,
	o => \RxD~input_o\);

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


