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

-- DATE "11/07/2024 20:48:57"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	d_FF IS
    PORT (
	i_d : IN std_logic;
	i_en : IN std_logic;
	i_reset : IN std_logic;
	i_clock : IN std_logic;
	o_q : BUFFER std_logic;
	o_qBar : BUFFER std_logic
	);
END d_FF;

-- Design Ports Information
-- o_q	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_qBar	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clock	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_d	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_en	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_reset	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF d_FF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_d : std_logic;
SIGNAL ww_i_en : std_logic;
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_o_q : std_logic;
SIGNAL ww_o_qBar : std_logic;
SIGNAL \o_q~output_o\ : std_logic;
SIGNAL \o_qBar~output_o\ : std_logic;
SIGNAL \i_en~input_o\ : std_logic;
SIGNAL \i_clock~input_o\ : std_logic;
SIGNAL \i_reset~input_o\ : std_logic;
SIGNAL \i_d~input_o\ : std_logic;
SIGNAL \masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \slaveLatch|int_qBar~0_combout\ : std_logic;
SIGNAL \slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;

BEGIN

ww_i_d <= i_d;
ww_i_en <= i_en;
ww_i_reset <= i_reset;
ww_i_clock <= i_clock;
o_q <= ww_o_q;
o_qBar <= ww_o_qBar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \slaveLatch|int_q~0_combout\;

-- Location: IOOBUF_X3_Y0_N16
\o_q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \o_q~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\o_qBar~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \slaveLatch|int_qBar~0_combout\,
	devoe => ww_devoe,
	o => \o_qBar~output_o\);

-- Location: IOIBUF_X0_Y4_N22
\i_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_en,
	o => \i_en~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\i_clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clock,
	o => \i_clock~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\i_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_reset,
	o => \i_reset~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\i_d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_d,
	o => \i_d~input_o\);

-- Location: LCCOMB_X1_Y5_N12
\masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \masterLatch|int_q~0_combout\ = (\i_en~input_o\ & (!\i_clock~input_o\ & (!\i_reset~input_o\ & \i_d~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_en~input_o\,
	datab => \i_clock~input_o\,
	datac => \i_reset~input_o\,
	datad => \i_d~input_o\,
	combout => \masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y5_N6
\masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \masterLatch|int_q~1_combout\ = (!\masterLatch|int_q~0_combout\ & ((\masterLatch|int_q~1_combout\) # (!\i_clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \masterLatch|int_q~0_combout\,
	datab => \i_clock~input_o\,
	datad => \masterLatch|int_q~1_combout\,
	combout => \masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X1_Y5_N2
\slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \slaveLatch|int_q~0_combout\ = (\i_clock~input_o\ & (\masterLatch|int_q~1_combout\)) # (!\i_clock~input_o\ & ((\slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \masterLatch|int_q~1_combout\,
	datab => \slaveLatch|int_q~0_combout\,
	datad => \i_clock~input_o\,
	combout => \slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y5_N16
\slaveLatch|int_qBar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \slaveLatch|int_qBar~0_combout\ = (\slaveLatch|int_q~0_combout\) # ((\masterLatch|int_q~1_combout\ & \i_clock~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \masterLatch|int_q~1_combout\,
	datab => \i_clock~input_o\,
	datad => \slaveLatch|int_q~0_combout\,
	combout => \slaveLatch|int_qBar~0_combout\);

ww_o_q <= \o_q~output_o\;

ww_o_qBar <= \o_qBar~output_o\;
END structure;


