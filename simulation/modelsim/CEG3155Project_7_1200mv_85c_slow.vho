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

-- DATE "11/14/2024 21:17:10"

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

ENTITY 	UARTReciever IS
    PORT (
	RxD : IN std_logic;
	GReset : IN std_logic;
	BClkx8 : IN std_logic;
	GClock : IN std_logic;
	RecieveOut : OUT std_logic_vector(7 DOWNTO 0);
	RDRF : OUT std_logic
	);
END UARTReciever;

-- Design Ports Information
-- RecieveOut[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RecieveOut[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RecieveOut[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RecieveOut[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RecieveOut[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RecieveOut[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RecieveOut[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RecieveOut[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDRF	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GReset	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RxD	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BClkx8	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UARTReciever IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RxD : std_logic;
SIGNAL ww_GReset : std_logic;
SIGNAL ww_BClkx8 : std_logic;
SIGNAL ww_GClock : std_logic;
SIGNAL ww_RecieveOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RDRF : std_logic;
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d_FF_latch8|int_q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \captureBit~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BClkx8~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GReset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RecieveOut[0]~output_o\ : std_logic;
SIGNAL \RecieveOut[1]~output_o\ : std_logic;
SIGNAL \RecieveOut[2]~output_o\ : std_logic;
SIGNAL \RecieveOut[3]~output_o\ : std_logic;
SIGNAL \RecieveOut[4]~output_o\ : std_logic;
SIGNAL \RecieveOut[5]~output_o\ : std_logic;
SIGNAL \RecieveOut[6]~output_o\ : std_logic;
SIGNAL \RecieveOut[7]~output_o\ : std_logic;
SIGNAL \RDRF~output_o\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \BClkx8~input_o\ : std_logic;
SIGNAL \BClkx8~inputclkctrl_outclk\ : std_logic;
SIGNAL \RxD~input_o\ : std_logic;
SIGNAL \counter_4bit_counteight|FF0|int_q~0_combout\ : std_logic;
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \GReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter_4bit_counteight|FF0|int_q~q\ : std_logic;
SIGNAL \counter_4bit_counteight|FF1|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_counteight|FF1|int_q~feeder_combout\ : std_logic;
SIGNAL \counter_4bit_counteight|FF1|int_q~q\ : std_logic;
SIGNAL \counter_4bit_counteight|FF2|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_counteight|FF2|int_q~q\ : std_logic;
SIGNAL \counter_4bit_counteight|FF3|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_counteight|FF3|int_q~q\ : std_logic;
SIGNAL \isAtEight~3_combout\ : std_logic;
SIGNAL \counter_4bit_countmiddle|FF0|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_countmiddle|FF0|int_q~q\ : std_logic;
SIGNAL \counter_4bit_countmiddle|FF1|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_countmiddle|FF1|int_q~q\ : std_logic;
SIGNAL \counter_4bit_countmiddle|FF2|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_countmiddle|FF2|int_q~q\ : std_logic;
SIGNAL \counter_4bit_countmiddle|FF3|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_countmiddle|FF3|int_q~q\ : std_logic;
SIGNAL \isInMiddle~0_combout\ : std_logic;
SIGNAL \isInMiddle~1_combout\ : std_logic;
SIGNAL \d_FF_latch4|int_q~q\ : std_logic;
SIGNAL \captureBit~combout\ : std_logic;
SIGNAL \captureBit~clkctrl_outclk\ : std_logic;
SIGNAL \counter_4bit_countRecieved|FF0|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_countRecieved|FF1|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_countRecieved|FF1|int_q~q\ : std_logic;
SIGNAL \counter_4bit_countRecieved|FF2|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_countRecieved|FF2|int_q~q\ : std_logic;
SIGNAL \counter_4bit_countRecieved|FF3|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_countRecieved|FF3|int_q~q\ : std_logic;
SIGNAL \equality_Comparator_4bit_finishsmpl|isEqual~0_combout\ : std_logic;
SIGNAL \d_FF_finishedCap|int_q~feeder_combout\ : std_logic;
SIGNAL \d_FF_finishedCap|int_q~q\ : std_logic;
SIGNAL \resetbitCounter~combout\ : std_logic;
SIGNAL \counter_4bit_countRecieved|FF0|int_q~q\ : std_logic;
SIGNAL \isAtEight~2_combout\ : std_logic;
SIGNAL \isAtEight~4_combout\ : std_logic;
SIGNAL \d_FF_latch8|int_q~q\ : std_logic;
SIGNAL \d_FF_latch8|int_q~clkctrl_outclk\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit7|int_q~q\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit6|int_q~q\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit5|int_q~q\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit4|int_q~q\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit3|int_q~q\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit2|int_q~q\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit1|int_q~q\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \SerialInParallelOut_8Bitinst|bit0|int_q~q\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst0|int_q~feeder_combout\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst0|int_q~q\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst1|int_q~feeder_combout\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst1|int_q~q\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst2|int_q~feeder_combout\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst2|int_q~q\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst3|int_q~feeder_combout\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst3|int_q~q\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst4|int_q~feeder_combout\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst4|int_q~q\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst5|int_q~feeder_combout\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst5|int_q~q\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst6|int_q~feeder_combout\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst6|int_q~q\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst7|int_q~feeder_combout\ : std_logic;
SIGNAL \dFF_8bit_RDR|dff_inst7|int_q~q\ : std_logic;
SIGNAL \counter_4bit_countmiddle|td_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_4bit_counteight|td_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_GReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_resetbitCounter~combout\ : std_logic;

BEGIN

ww_RxD <= RxD;
ww_GReset <= GReset;
ww_BClkx8 <= BClkx8;
ww_GClock <= GClock;
RecieveOut <= ww_RecieveOut;
RDRF <= ww_RDRF;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);

\d_FF_latch8|int_q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \d_FF_latch8|int_q~q\);

\captureBit~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \captureBit~combout\);

\BClkx8~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \BClkx8~input_o\);

\GReset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GReset~input_o\);
\ALT_INV_GReset~inputclkctrl_outclk\ <= NOT \GReset~inputclkctrl_outclk\;
\ALT_INV_resetbitCounter~combout\ <= NOT \resetbitCounter~combout\;

-- Location: IOOBUF_X62_Y73_N23
\RecieveOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dFF_8bit_RDR|dff_inst0|int_q~q\,
	devoe => ww_devoe,
	o => \RecieveOut[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\RecieveOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dFF_8bit_RDR|dff_inst1|int_q~q\,
	devoe => ww_devoe,
	o => \RecieveOut[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\RecieveOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dFF_8bit_RDR|dff_inst2|int_q~q\,
	devoe => ww_devoe,
	o => \RecieveOut[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\RecieveOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dFF_8bit_RDR|dff_inst3|int_q~q\,
	devoe => ww_devoe,
	o => \RecieveOut[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\RecieveOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dFF_8bit_RDR|dff_inst4|int_q~q\,
	devoe => ww_devoe,
	o => \RecieveOut[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\RecieveOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dFF_8bit_RDR|dff_inst5|int_q~q\,
	devoe => ww_devoe,
	o => \RecieveOut[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\RecieveOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dFF_8bit_RDR|dff_inst6|int_q~q\,
	devoe => ww_devoe,
	o => \RecieveOut[6]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\RecieveOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dFF_8bit_RDR|dff_inst7|int_q~q\,
	devoe => ww_devoe,
	o => \RecieveOut[7]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\RDRF~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \equality_Comparator_4bit_finishsmpl|isEqual~0_combout\,
	devoe => ww_devoe,
	o => \RDRF~output_o\);

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

-- Location: IOIBUF_X0_Y36_N8
\BClkx8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BClkx8,
	o => \BClkx8~input_o\);

-- Location: CLKCTRL_G2
\BClkx8~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BClkx8~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BClkx8~inputclkctrl_outclk\);

-- Location: IOIBUF_X60_Y73_N1
\RxD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RxD,
	o => \RxD~input_o\);

-- Location: LCCOMB_X56_Y72_N2
\counter_4bit_counteight|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_counteight|FF0|int_q~0_combout\ = (\d_FF_latch8|int_q~q\ & !\counter_4bit_counteight|FF0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_FF_latch8|int_q~q\,
	datad => \counter_4bit_counteight|FF0|int_q~q\,
	combout => \counter_4bit_counteight|FF0|int_q~0_combout\);

-- Location: IOIBUF_X58_Y0_N15
\GReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GReset,
	o => \GReset~input_o\);

-- Location: CLKCTRL_G19
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

-- Location: FF_X56_Y72_N11
\counter_4bit_counteight|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BClkx8~inputclkctrl_outclk\,
	asdata => \counter_4bit_counteight|FF0|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_counteight|FF0|int_q~q\);

-- Location: LCCOMB_X56_Y72_N0
\counter_4bit_counteight|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_counteight|FF1|int_q~0_combout\ = (\d_FF_latch8|int_q~q\ & (\counter_4bit_counteight|FF0|int_q~q\ $ (\counter_4bit_counteight|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_counteight|FF0|int_q~q\,
	datab => \d_FF_latch8|int_q~q\,
	datad => \counter_4bit_counteight|FF1|int_q~q\,
	combout => \counter_4bit_counteight|FF1|int_q~0_combout\);

-- Location: LCCOMB_X56_Y72_N8
\counter_4bit_counteight|FF1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_counteight|FF1|int_q~feeder_combout\ = \counter_4bit_counteight|FF1|int_q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4bit_counteight|FF1|int_q~0_combout\,
	combout => \counter_4bit_counteight|FF1|int_q~feeder_combout\);

-- Location: FF_X56_Y72_N9
\counter_4bit_counteight|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BClkx8~inputclkctrl_outclk\,
	d => \counter_4bit_counteight|FF1|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_counteight|FF1|int_q~q\);

-- Location: LCCOMB_X56_Y72_N12
\counter_4bit_counteight|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_counteight|FF2|int_q~0_combout\ = (\d_FF_latch8|int_q~q\ & (\counter_4bit_counteight|FF2|int_q~q\ $ (((\counter_4bit_counteight|FF0|int_q~q\ & \counter_4bit_counteight|FF1|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_counteight|FF0|int_q~q\,
	datab => \d_FF_latch8|int_q~q\,
	datac => \counter_4bit_counteight|FF2|int_q~q\,
	datad => \counter_4bit_counteight|FF1|int_q~q\,
	combout => \counter_4bit_counteight|FF2|int_q~0_combout\);

-- Location: FF_X56_Y72_N31
\counter_4bit_counteight|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BClkx8~inputclkctrl_outclk\,
	asdata => \counter_4bit_counteight|FF2|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_counteight|FF2|int_q~q\);

-- Location: LCCOMB_X56_Y72_N10
\counter_4bit_counteight|td_2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_counteight|td_2\(3) = \counter_4bit_counteight|FF3|int_q~q\ $ (((\counter_4bit_counteight|FF2|int_q~q\ & (\counter_4bit_counteight|FF1|int_q~q\ & \counter_4bit_counteight|FF0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_counteight|FF2|int_q~q\,
	datab => \counter_4bit_counteight|FF1|int_q~q\,
	datac => \counter_4bit_counteight|FF0|int_q~q\,
	datad => \counter_4bit_counteight|FF3|int_q~q\,
	combout => \counter_4bit_counteight|td_2\(3));

-- Location: LCCOMB_X56_Y72_N4
\counter_4bit_counteight|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_counteight|FF3|int_q~0_combout\ = (\d_FF_latch8|int_q~q\ & \counter_4bit_counteight|td_2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d_FF_latch8|int_q~q\,
	datad => \counter_4bit_counteight|td_2\(3),
	combout => \counter_4bit_counteight|FF3|int_q~0_combout\);

-- Location: FF_X56_Y72_N5
\counter_4bit_counteight|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BClkx8~inputclkctrl_outclk\,
	d => \counter_4bit_counteight|FF3|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_counteight|FF3|int_q~q\);

-- Location: LCCOMB_X56_Y72_N30
\isAtEight~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \isAtEight~3_combout\ = (!\counter_4bit_counteight|FF0|int_q~q\ & (\counter_4bit_counteight|FF1|int_q~q\ & (\counter_4bit_counteight|FF2|int_q~q\ & !\counter_4bit_counteight|FF3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_counteight|FF0|int_q~q\,
	datab => \counter_4bit_counteight|FF1|int_q~q\,
	datac => \counter_4bit_counteight|FF2|int_q~q\,
	datad => \counter_4bit_counteight|FF3|int_q~q\,
	combout => \isAtEight~3_combout\);

-- Location: LCCOMB_X56_Y72_N6
\counter_4bit_countmiddle|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_countmiddle|FF0|int_q~0_combout\ = (!\counter_4bit_countmiddle|FF0|int_q~q\ & \isInMiddle~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4bit_countmiddle|FF0|int_q~q\,
	datad => \isInMiddle~1_combout\,
	combout => \counter_4bit_countmiddle|FF0|int_q~0_combout\);

-- Location: FF_X56_Y72_N7
\counter_4bit_countmiddle|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BClkx8~inputclkctrl_outclk\,
	d => \counter_4bit_countmiddle|FF0|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_countmiddle|FF0|int_q~q\);

-- Location: LCCOMB_X56_Y72_N14
\counter_4bit_countmiddle|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_countmiddle|FF1|int_q~0_combout\ = (\isInMiddle~1_combout\ & (\counter_4bit_countmiddle|FF0|int_q~q\ $ (\counter_4bit_countmiddle|FF1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_countmiddle|FF0|int_q~q\,
	datac => \counter_4bit_countmiddle|FF1|int_q~q\,
	datad => \isInMiddle~1_combout\,
	combout => \counter_4bit_countmiddle|FF1|int_q~0_combout\);

-- Location: FF_X56_Y72_N15
\counter_4bit_countmiddle|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BClkx8~inputclkctrl_outclk\,
	d => \counter_4bit_countmiddle|FF1|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_countmiddle|FF1|int_q~q\);

-- Location: LCCOMB_X56_Y72_N22
\counter_4bit_countmiddle|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_countmiddle|FF2|int_q~0_combout\ = (\isInMiddle~1_combout\ & (\counter_4bit_countmiddle|FF2|int_q~q\ $ (((\counter_4bit_countmiddle|FF1|int_q~q\ & \counter_4bit_countmiddle|FF0|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_countmiddle|FF1|int_q~q\,
	datab => \counter_4bit_countmiddle|FF0|int_q~q\,
	datac => \counter_4bit_countmiddle|FF2|int_q~q\,
	datad => \isInMiddle~1_combout\,
	combout => \counter_4bit_countmiddle|FF2|int_q~0_combout\);

-- Location: FF_X56_Y72_N23
\counter_4bit_countmiddle|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BClkx8~inputclkctrl_outclk\,
	d => \counter_4bit_countmiddle|FF2|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_countmiddle|FF2|int_q~q\);

-- Location: LCCOMB_X56_Y72_N26
\counter_4bit_countmiddle|td_2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_countmiddle|td_2\(3) = \counter_4bit_countmiddle|FF3|int_q~q\ $ (((\counter_4bit_countmiddle|FF0|int_q~q\ & (\counter_4bit_countmiddle|FF2|int_q~q\ & \counter_4bit_countmiddle|FF1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_countmiddle|FF0|int_q~q\,
	datab => \counter_4bit_countmiddle|FF3|int_q~q\,
	datac => \counter_4bit_countmiddle|FF2|int_q~q\,
	datad => \counter_4bit_countmiddle|FF1|int_q~q\,
	combout => \counter_4bit_countmiddle|td_2\(3));

-- Location: LCCOMB_X56_Y72_N28
\counter_4bit_countmiddle|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_countmiddle|FF3|int_q~0_combout\ = (\counter_4bit_countmiddle|td_2\(3) & \isInMiddle~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4bit_countmiddle|td_2\(3),
	datad => \isInMiddle~1_combout\,
	combout => \counter_4bit_countmiddle|FF3|int_q~0_combout\);

-- Location: FF_X56_Y72_N29
\counter_4bit_countmiddle|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BClkx8~inputclkctrl_outclk\,
	d => \counter_4bit_countmiddle|FF3|int_q~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_countmiddle|FF3|int_q~q\);

-- Location: LCCOMB_X56_Y72_N20
\isInMiddle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \isInMiddle~0_combout\ = (\counter_4bit_countmiddle|FF0|int_q~q\ & (\counter_4bit_countmiddle|FF1|int_q~q\ & (!\counter_4bit_countmiddle|FF2|int_q~q\ & !\counter_4bit_countmiddle|FF3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_countmiddle|FF0|int_q~q\,
	datab => \counter_4bit_countmiddle|FF1|int_q~q\,
	datac => \counter_4bit_countmiddle|FF2|int_q~q\,
	datad => \counter_4bit_countmiddle|FF3|int_q~q\,
	combout => \isInMiddle~0_combout\);

-- Location: LCCOMB_X56_Y72_N18
\isInMiddle~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \isInMiddle~1_combout\ = (\isAtEight~2_combout\ & (!\isInMiddle~0_combout\ & ((\RxD~input_o\) # (\isInMiddle~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RxD~input_o\,
	datab => \isInMiddle~1_combout\,
	datac => \isAtEight~2_combout\,
	datad => \isInMiddle~0_combout\,
	combout => \isInMiddle~1_combout\);

-- Location: FF_X56_Y72_N3
\d_FF_latch4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BClkx8~input_o\,
	asdata => \isInMiddle~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_FF_latch4|int_q~q\);

-- Location: LCCOMB_X56_Y72_N16
captureBit : cycloneive_lcell_comb
-- Equation(s):
-- \captureBit~combout\ = LCELL((!\d_FF_latch4|int_q~q\ & \d_FF_latch8|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d_FF_latch4|int_q~q\,
	datad => \d_FF_latch8|int_q~q\,
	combout => \captureBit~combout\);

-- Location: CLKCTRL_G12
\captureBit~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \captureBit~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \captureBit~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y72_N10
\counter_4bit_countRecieved|FF0|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_countRecieved|FF0|int_q~0_combout\ = !\counter_4bit_countRecieved|FF0|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4bit_countRecieved|FF0|int_q~q\,
	combout => \counter_4bit_countRecieved|FF0|int_q~0_combout\);

-- Location: LCCOMB_X55_Y72_N8
\counter_4bit_countRecieved|FF1|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_countRecieved|FF1|int_q~0_combout\ = \counter_4bit_countRecieved|FF1|int_q~q\ $ (\counter_4bit_countRecieved|FF0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter_4bit_countRecieved|FF1|int_q~q\,
	datad => \counter_4bit_countRecieved|FF0|int_q~q\,
	combout => \counter_4bit_countRecieved|FF1|int_q~0_combout\);

-- Location: FF_X55_Y72_N9
\counter_4bit_countRecieved|FF1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \captureBit~clkctrl_outclk\,
	d => \counter_4bit_countRecieved|FF1|int_q~0_combout\,
	clrn => \ALT_INV_resetbitCounter~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_countRecieved|FF1|int_q~q\);

-- Location: LCCOMB_X55_Y72_N2
\counter_4bit_countRecieved|FF2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_countRecieved|FF2|int_q~0_combout\ = \counter_4bit_countRecieved|FF2|int_q~q\ $ (((\counter_4bit_countRecieved|FF1|int_q~q\ & \counter_4bit_countRecieved|FF0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_4bit_countRecieved|FF1|int_q~q\,
	datac => \counter_4bit_countRecieved|FF2|int_q~q\,
	datad => \counter_4bit_countRecieved|FF0|int_q~q\,
	combout => \counter_4bit_countRecieved|FF2|int_q~0_combout\);

-- Location: FF_X55_Y72_N3
\counter_4bit_countRecieved|FF2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \captureBit~clkctrl_outclk\,
	d => \counter_4bit_countRecieved|FF2|int_q~0_combout\,
	clrn => \ALT_INV_resetbitCounter~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_countRecieved|FF2|int_q~q\);

-- Location: LCCOMB_X55_Y72_N4
\counter_4bit_countRecieved|FF3|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_countRecieved|FF3|int_q~0_combout\ = \counter_4bit_countRecieved|FF3|int_q~q\ $ (((\counter_4bit_countRecieved|FF0|int_q~q\ & (\counter_4bit_countRecieved|FF2|int_q~q\ & \counter_4bit_countRecieved|FF1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_countRecieved|FF0|int_q~q\,
	datab => \counter_4bit_countRecieved|FF2|int_q~q\,
	datac => \counter_4bit_countRecieved|FF3|int_q~q\,
	datad => \counter_4bit_countRecieved|FF1|int_q~q\,
	combout => \counter_4bit_countRecieved|FF3|int_q~0_combout\);

-- Location: FF_X55_Y72_N5
\counter_4bit_countRecieved|FF3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \captureBit~clkctrl_outclk\,
	d => \counter_4bit_countRecieved|FF3|int_q~0_combout\,
	clrn => \ALT_INV_resetbitCounter~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_countRecieved|FF3|int_q~q\);

-- Location: LCCOMB_X55_Y72_N28
\equality_Comparator_4bit_finishsmpl|isEqual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \equality_Comparator_4bit_finishsmpl|isEqual~0_combout\ = (\counter_4bit_countRecieved|FF3|int_q~q\ & ((\counter_4bit_countRecieved|FF0|int_q~q\) # ((\counter_4bit_countRecieved|FF2|int_q~q\) # (\counter_4bit_countRecieved|FF1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_countRecieved|FF0|int_q~q\,
	datab => \counter_4bit_countRecieved|FF3|int_q~q\,
	datac => \counter_4bit_countRecieved|FF2|int_q~q\,
	datad => \counter_4bit_countRecieved|FF1|int_q~q\,
	combout => \equality_Comparator_4bit_finishsmpl|isEqual~0_combout\);

-- Location: LCCOMB_X55_Y72_N18
\d_FF_finishedCap|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_FF_finishedCap|int_q~feeder_combout\ = \equality_Comparator_4bit_finishsmpl|isEqual~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \equality_Comparator_4bit_finishsmpl|isEqual~0_combout\,
	combout => \d_FF_finishedCap|int_q~feeder_combout\);

-- Location: FF_X55_Y72_N19
\d_FF_finishedCap|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BClkx8~inputclkctrl_outclk\,
	d => \d_FF_finishedCap|int_q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_FF_finishedCap|int_q~q\);

-- Location: LCCOMB_X55_Y72_N20
resetbitCounter : cycloneive_lcell_comb
-- Equation(s):
-- \resetbitCounter~combout\ = (\GReset~input_o\) # (\d_FF_finishedCap|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GReset~input_o\,
	datad => \d_FF_finishedCap|int_q~q\,
	combout => \resetbitCounter~combout\);

-- Location: FF_X55_Y72_N11
\counter_4bit_countRecieved|FF0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \captureBit~clkctrl_outclk\,
	d => \counter_4bit_countRecieved|FF0|int_q~0_combout\,
	clrn => \ALT_INV_resetbitCounter~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_4bit_countRecieved|FF0|int_q~q\);

-- Location: LCCOMB_X55_Y72_N6
\isAtEight~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \isAtEight~2_combout\ = (!\counter_4bit_countRecieved|FF0|int_q~q\ & (!\counter_4bit_countRecieved|FF1|int_q~q\ & (!\counter_4bit_countRecieved|FF3|int_q~q\ & !\counter_4bit_countRecieved|FF2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_countRecieved|FF0|int_q~q\,
	datab => \counter_4bit_countRecieved|FF1|int_q~q\,
	datac => \counter_4bit_countRecieved|FF3|int_q~q\,
	datad => \counter_4bit_countRecieved|FF2|int_q~q\,
	combout => \isAtEight~2_combout\);

-- Location: LCCOMB_X56_Y72_N24
\isAtEight~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \isAtEight~4_combout\ = (\isAtEight~2_combout\ & (!\RxD~input_o\ & ((!\isInMiddle~1_combout\)))) # (!\isAtEight~2_combout\ & (((!\isAtEight~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RxD~input_o\,
	datab => \isAtEight~3_combout\,
	datac => \isAtEight~2_combout\,
	datad => \isInMiddle~1_combout\,
	combout => \isAtEight~4_combout\);

-- Location: FF_X56_Y72_N25
\d_FF_latch8|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BClkx8~inputclkctrl_outclk\,
	d => \isAtEight~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_FF_latch8|int_q~q\);

-- Location: CLKCTRL_G11
\d_FF_latch8|int_q~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \d_FF_latch8|int_q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \d_FF_latch8|int_q~clkctrl_outclk\);

-- Location: FF_X59_Y72_N3
\SerialInParallelOut_8Bitinst|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d_FF_latch8|int_q~clkctrl_outclk\,
	asdata => \RxD~input_o\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SerialInParallelOut_8Bitinst|bit7|int_q~q\);

-- Location: LCCOMB_X59_Y72_N0
\SerialInParallelOut_8Bitinst|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SerialInParallelOut_8Bitinst|bit6|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit7|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SerialInParallelOut_8Bitinst|bit7|int_q~q\,
	combout => \SerialInParallelOut_8Bitinst|bit6|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N1
\SerialInParallelOut_8Bitinst|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d_FF_latch8|int_q~clkctrl_outclk\,
	d => \SerialInParallelOut_8Bitinst|bit6|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SerialInParallelOut_8Bitinst|bit6|int_q~q\);

-- Location: LCCOMB_X59_Y72_N10
\SerialInParallelOut_8Bitinst|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SerialInParallelOut_8Bitinst|bit5|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit6|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SerialInParallelOut_8Bitinst|bit6|int_q~q\,
	combout => \SerialInParallelOut_8Bitinst|bit5|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N11
\SerialInParallelOut_8Bitinst|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d_FF_latch8|int_q~clkctrl_outclk\,
	d => \SerialInParallelOut_8Bitinst|bit5|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SerialInParallelOut_8Bitinst|bit5|int_q~q\);

-- Location: LCCOMB_X59_Y72_N24
\SerialInParallelOut_8Bitinst|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SerialInParallelOut_8Bitinst|bit4|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit5|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SerialInParallelOut_8Bitinst|bit5|int_q~q\,
	combout => \SerialInParallelOut_8Bitinst|bit4|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N25
\SerialInParallelOut_8Bitinst|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d_FF_latch8|int_q~clkctrl_outclk\,
	d => \SerialInParallelOut_8Bitinst|bit4|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SerialInParallelOut_8Bitinst|bit4|int_q~q\);

-- Location: LCCOMB_X59_Y72_N18
\SerialInParallelOut_8Bitinst|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SerialInParallelOut_8Bitinst|bit3|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit4|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SerialInParallelOut_8Bitinst|bit4|int_q~q\,
	combout => \SerialInParallelOut_8Bitinst|bit3|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N19
\SerialInParallelOut_8Bitinst|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d_FF_latch8|int_q~clkctrl_outclk\,
	d => \SerialInParallelOut_8Bitinst|bit3|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SerialInParallelOut_8Bitinst|bit3|int_q~q\);

-- Location: LCCOMB_X59_Y72_N12
\SerialInParallelOut_8Bitinst|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SerialInParallelOut_8Bitinst|bit2|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit3|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SerialInParallelOut_8Bitinst|bit3|int_q~q\,
	combout => \SerialInParallelOut_8Bitinst|bit2|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N13
\SerialInParallelOut_8Bitinst|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d_FF_latch8|int_q~clkctrl_outclk\,
	d => \SerialInParallelOut_8Bitinst|bit2|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SerialInParallelOut_8Bitinst|bit2|int_q~q\);

-- Location: LCCOMB_X59_Y72_N6
\SerialInParallelOut_8Bitinst|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SerialInParallelOut_8Bitinst|bit1|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit2|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SerialInParallelOut_8Bitinst|bit2|int_q~q\,
	combout => \SerialInParallelOut_8Bitinst|bit1|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N7
\SerialInParallelOut_8Bitinst|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d_FF_latch8|int_q~clkctrl_outclk\,
	d => \SerialInParallelOut_8Bitinst|bit1|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SerialInParallelOut_8Bitinst|bit1|int_q~q\);

-- Location: LCCOMB_X59_Y72_N20
\SerialInParallelOut_8Bitinst|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SerialInParallelOut_8Bitinst|bit0|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit1|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SerialInParallelOut_8Bitinst|bit1|int_q~q\,
	combout => \SerialInParallelOut_8Bitinst|bit0|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N21
\SerialInParallelOut_8Bitinst|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \d_FF_latch8|int_q~clkctrl_outclk\,
	d => \SerialInParallelOut_8Bitinst|bit0|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SerialInParallelOut_8Bitinst|bit0|int_q~q\);

-- Location: LCCOMB_X59_Y72_N28
\dFF_8bit_RDR|dff_inst0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dFF_8bit_RDR|dff_inst0|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit0|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SerialInParallelOut_8Bitinst|bit0|int_q~q\,
	combout => \dFF_8bit_RDR|dff_inst0|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N29
\dFF_8bit_RDR|dff_inst0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dFF_8bit_RDR|dff_inst0|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dFF_8bit_RDR|dff_inst0|int_q~q\);

-- Location: LCCOMB_X59_Y72_N22
\dFF_8bit_RDR|dff_inst1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dFF_8bit_RDR|dff_inst1|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit1|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SerialInParallelOut_8Bitinst|bit1|int_q~q\,
	combout => \dFF_8bit_RDR|dff_inst1|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N23
\dFF_8bit_RDR|dff_inst1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dFF_8bit_RDR|dff_inst1|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dFF_8bit_RDR|dff_inst1|int_q~q\);

-- Location: LCCOMB_X59_Y72_N8
\dFF_8bit_RDR|dff_inst2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dFF_8bit_RDR|dff_inst2|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit2|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SerialInParallelOut_8Bitinst|bit2|int_q~q\,
	combout => \dFF_8bit_RDR|dff_inst2|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N9
\dFF_8bit_RDR|dff_inst2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dFF_8bit_RDR|dff_inst2|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dFF_8bit_RDR|dff_inst2|int_q~q\);

-- Location: LCCOMB_X59_Y72_N30
\dFF_8bit_RDR|dff_inst3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dFF_8bit_RDR|dff_inst3|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit3|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SerialInParallelOut_8Bitinst|bit3|int_q~q\,
	combout => \dFF_8bit_RDR|dff_inst3|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N31
\dFF_8bit_RDR|dff_inst3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dFF_8bit_RDR|dff_inst3|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dFF_8bit_RDR|dff_inst3|int_q~q\);

-- Location: LCCOMB_X59_Y72_N16
\dFF_8bit_RDR|dff_inst4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dFF_8bit_RDR|dff_inst4|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit4|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SerialInParallelOut_8Bitinst|bit4|int_q~q\,
	combout => \dFF_8bit_RDR|dff_inst4|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N17
\dFF_8bit_RDR|dff_inst4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dFF_8bit_RDR|dff_inst4|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dFF_8bit_RDR|dff_inst4|int_q~q\);

-- Location: LCCOMB_X59_Y72_N26
\dFF_8bit_RDR|dff_inst5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dFF_8bit_RDR|dff_inst5|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit5|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SerialInParallelOut_8Bitinst|bit5|int_q~q\,
	combout => \dFF_8bit_RDR|dff_inst5|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N27
\dFF_8bit_RDR|dff_inst5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dFF_8bit_RDR|dff_inst5|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dFF_8bit_RDR|dff_inst5|int_q~q\);

-- Location: LCCOMB_X59_Y72_N4
\dFF_8bit_RDR|dff_inst6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dFF_8bit_RDR|dff_inst6|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit6|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SerialInParallelOut_8Bitinst|bit6|int_q~q\,
	combout => \dFF_8bit_RDR|dff_inst6|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N5
\dFF_8bit_RDR|dff_inst6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dFF_8bit_RDR|dff_inst6|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dFF_8bit_RDR|dff_inst6|int_q~q\);

-- Location: LCCOMB_X59_Y72_N14
\dFF_8bit_RDR|dff_inst7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dFF_8bit_RDR|dff_inst7|int_q~feeder_combout\ = \SerialInParallelOut_8Bitinst|bit7|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SerialInParallelOut_8Bitinst|bit7|int_q~q\,
	combout => \dFF_8bit_RDR|dff_inst7|int_q~feeder_combout\);

-- Location: FF_X59_Y72_N15
\dFF_8bit_RDR|dff_inst7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \dFF_8bit_RDR|dff_inst7|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dFF_8bit_RDR|dff_inst7|int_q~q\);

ww_RecieveOut(0) <= \RecieveOut[0]~output_o\;

ww_RecieveOut(1) <= \RecieveOut[1]~output_o\;

ww_RecieveOut(2) <= \RecieveOut[2]~output_o\;

ww_RecieveOut(3) <= \RecieveOut[3]~output_o\;

ww_RecieveOut(4) <= \RecieveOut[4]~output_o\;

ww_RecieveOut(5) <= \RecieveOut[5]~output_o\;

ww_RecieveOut(6) <= \RecieveOut[6]~output_o\;

ww_RecieveOut(7) <= \RecieveOut[7]~output_o\;

ww_RDRF <= \RDRF~output_o\;
END structure;


