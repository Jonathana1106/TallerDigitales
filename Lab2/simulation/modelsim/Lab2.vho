-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "03/05/2020 21:32:39"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fullAdder4Bits_w_Display IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Y1 : OUT std_logic_vector(6 DOWNTO 0);
	Y2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END fullAdder4Bits_w_Display;

-- Design Ports Information
-- Y1[0]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1[1]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1[3]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1[4]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1[5]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2[1]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2[2]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2[4]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2[5]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2[6]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fullAdder4Bits_w_Display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Y2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \fulladder4bit|bit1|c_out~0_combout\ : std_logic;
SIGNAL \fulladder4bit|bit1|sum~combout\ : std_logic;
SIGNAL \fulladder4bit|bit0|sum~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \fulladder4bit|bit3|sum~0_combout\ : std_logic;
SIGNAL \display1|g~0_combout\ : std_logic;
SIGNAL \display1|f~0_combout\ : std_logic;
SIGNAL \display1|e~0_combout\ : std_logic;
SIGNAL \display1|d~0_combout\ : std_logic;
SIGNAL \display1|c~0_combout\ : std_logic;
SIGNAL \display1|b~0_combout\ : std_logic;
SIGNAL \display1|a~0_combout\ : std_logic;
SIGNAL \fulladder4bit|bit3|c_out~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \fulladder4bit|bit3|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_a~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_b~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_d~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_e~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_f~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_g~0_combout\ : std_logic;
SIGNAL \fulladder4bit|bit0|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \fulladder4bit|bit3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \fulladder4bit|bit1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \fulladder4bit|bit1|ALT_INV_c_out~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
Y1 <= ww_Y1;
Y2 <= ww_Y2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\fulladder4bit|bit3|ALT_INV_c_out~0_combout\ <= NOT \fulladder4bit|bit3|c_out~0_combout\;
\display1|ALT_INV_a~0_combout\ <= NOT \display1|a~0_combout\;
\display1|ALT_INV_b~0_combout\ <= NOT \display1|b~0_combout\;
\display1|ALT_INV_c~0_combout\ <= NOT \display1|c~0_combout\;
\display1|ALT_INV_d~0_combout\ <= NOT \display1|d~0_combout\;
\display1|ALT_INV_e~0_combout\ <= NOT \display1|e~0_combout\;
\display1|ALT_INV_f~0_combout\ <= NOT \display1|f~0_combout\;
\display1|ALT_INV_g~0_combout\ <= NOT \display1|g~0_combout\;
\fulladder4bit|bit0|ALT_INV_sum~0_combout\ <= NOT \fulladder4bit|bit0|sum~0_combout\;
\fulladder4bit|bit3|ALT_INV_sum~0_combout\ <= NOT \fulladder4bit|bit3|sum~0_combout\;
\fulladder4bit|bit1|ALT_INV_sum~combout\ <= NOT \fulladder4bit|bit1|sum~combout\;
\fulladder4bit|bit1|ALT_INV_c_out~0_combout\ <= NOT \fulladder4bit|bit1|c_out~0_combout\;

-- Location: IOOBUF_X89_Y20_N96
\Y1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_g~0_combout\,
	devoe => ww_devoe,
	o => ww_Y1(0));

-- Location: IOOBUF_X89_Y21_N5
\Y1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_f~0_combout\,
	devoe => ww_devoe,
	o => ww_Y1(1));

-- Location: IOOBUF_X89_Y21_N56
\Y1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_e~0_combout\,
	devoe => ww_devoe,
	o => ww_Y1(2));

-- Location: IOOBUF_X89_Y23_N39
\Y1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_d~0_combout\,
	devoe => ww_devoe,
	o => ww_Y1(3));

-- Location: IOOBUF_X89_Y21_N22
\Y1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_c~0_combout\,
	devoe => ww_devoe,
	o => ww_Y1(4));

-- Location: IOOBUF_X89_Y21_N39
\Y1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_b~0_combout\,
	devoe => ww_devoe,
	o => ww_Y1(5));

-- Location: IOOBUF_X89_Y16_N5
\Y1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_a~0_combout\,
	devoe => ww_devoe,
	o => ww_Y1(6));

-- Location: IOOBUF_X12_Y0_N19
\Y2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Y2(0));

-- Location: IOOBUF_X56_Y0_N53
\Y2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Y2(1));

-- Location: IOOBUF_X8_Y81_N53
\Y2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Y2(2));

-- Location: IOOBUF_X56_Y0_N2
\Y2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Y2(3));

-- Location: IOOBUF_X89_Y20_N62
\Y2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fulladder4bit|bit3|ALT_INV_c_out~0_combout\,
	devoe => ww_devoe,
	o => ww_Y2(4));

-- Location: IOOBUF_X89_Y20_N79
\Y2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fulladder4bit|bit3|ALT_INV_c_out~0_combout\,
	devoe => ww_devoe,
	o => ww_Y2(5));

-- Location: IOOBUF_X2_Y0_N59
\Y2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_Y2(6));

-- Location: IOIBUF_X89_Y23_N21
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X89_Y16_N55
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X89_Y25_N4
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X88_Y21_N30
\fulladder4bit|bit1|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladder4bit|bit1|c_out~0_combout\ = ( \B[1]~input_o\ & ( ((\A[0]~input_o\ & \B[0]~input_o\)) # (\A[1]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\A[0]~input_o\ & (\B[0]~input_o\ & \A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \fulladder4bit|bit1|c_out~0_combout\);

-- Location: LABCELL_X88_Y21_N33
\fulladder4bit|bit1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladder4bit|bit1|sum~combout\ = ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\A[0]~input_o\) # (!\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111011101110000100011110111000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \fulladder4bit|bit1|sum~combout\);

-- Location: LABCELL_X88_Y21_N12
\fulladder4bit|bit0|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladder4bit|bit0|sum~0_combout\ = ( \B[0]~input_o\ & ( !\A[0]~input_o\ ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \fulladder4bit|bit0|sum~0_combout\);

-- Location: IOIBUF_X89_Y25_N21
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X88_Y21_N6
\fulladder4bit|bit3|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladder4bit|bit3|sum~0_combout\ = ( \A[3]~input_o\ & ( !\B[3]~input_o\ ) ) # ( !\A[3]~input_o\ & ( \B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \fulladder4bit|bit3|sum~0_combout\);

-- Location: LABCELL_X88_Y21_N48
\display1|g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|g~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\ & (((!\fulladder4bit|bit1|c_out~0_combout\ & \fulladder4bit|bit0|sum~0_combout\)) # (\fulladder4bit|bit1|sum~combout\))) # (\A[2]~input_o\ & 
-- ((!\fulladder4bit|bit1|c_out~0_combout\ & (\fulladder4bit|bit1|sum~combout\)) # (\fulladder4bit|bit1|c_out~0_combout\ & ((!\fulladder4bit|bit1|sum~combout\) # (!\fulladder4bit|bit0|sum~0_combout\))))) ) ) ) # ( !\B[2]~input_o\ & ( 
-- \fulladder4bit|bit3|sum~0_combout\ & ( ((!\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # (\fulladder4bit|bit0|sum~0_combout\))) # (\A[2]~input_o\ & (!\fulladder4bit|bit1|c_out~0_combout\ & \fulladder4bit|bit0|sum~0_combout\))) # 
-- (\fulladder4bit|bit1|sum~combout\) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\ & (((!\fulladder4bit|bit1|sum~combout\) # (!\fulladder4bit|bit0|sum~0_combout\)) # (\fulladder4bit|bit1|c_out~0_combout\))) # 
-- (\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # ((\fulladder4bit|bit0|sum~0_combout\) # (\fulladder4bit|bit1|sum~combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( (!\fulladder4bit|bit1|sum~combout\ & 
-- (((\fulladder4bit|bit1|c_out~0_combout\)) # (\A[2]~input_o\))) # (\fulladder4bit|bit1|sum~combout\ & ((!\fulladder4bit|bit0|sum~0_combout\) # (!\A[2]~input_o\ $ (\fulladder4bit|bit1|c_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111001111011111111011110001111111011110001111110011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	combout => \display1|g~0_combout\);

-- Location: LABCELL_X88_Y21_N24
\display1|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|f~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\ & (!\fulladder4bit|bit1|c_out~0_combout\ & ((!\fulladder4bit|bit0|sum~0_combout\) # (\fulladder4bit|bit1|sum~combout\)))) # (\A[2]~input_o\ & 
-- (\fulladder4bit|bit1|c_out~0_combout\ & ((!\fulladder4bit|bit1|sum~combout\) # (!\fulladder4bit|bit0|sum~0_combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( \fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # 
-- ((!\fulladder4bit|bit0|sum~0_combout\) # (\fulladder4bit|bit1|sum~combout\)))) # (\A[2]~input_o\ & (!\fulladder4bit|bit1|c_out~0_combout\ & ((!\fulladder4bit|bit0|sum~0_combout\) # (\fulladder4bit|bit1|sum~combout\)))) ) ) ) # ( \B[2]~input_o\ & ( 
-- !\fulladder4bit|bit3|sum~0_combout\ & ( (!\fulladder4bit|bit0|sum~0_combout\) # ((!\A[2]~input_o\ & ((!\fulladder4bit|bit1|sum~combout\) # (\fulladder4bit|bit1|c_out~0_combout\))) # (\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # 
-- (\fulladder4bit|bit1|sum~combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\ & (\fulladder4bit|bit1|c_out~0_combout\ & ((!\fulladder4bit|bit1|sum~combout\) # (!\fulladder4bit|bit0|sum~0_combout\)))) # 
-- (\A[2]~input_o\ & (((!\fulladder4bit|bit1|sum~combout\) # (!\fulladder4bit|bit0|sum~0_combout\)) # (\fulladder4bit|bit1|c_out~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110001111111111110011111101110100011101001100100011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	combout => \display1|f~0_combout\);

-- Location: LABCELL_X88_Y21_N0
\display1|e~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|e~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # ((\fulladder4bit|bit1|sum~combout\ & !\fulladder4bit|bit0|sum~0_combout\)))) # (\A[2]~input_o\ & 
-- (((\fulladder4bit|bit1|sum~combout\ & !\fulladder4bit|bit0|sum~0_combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( \fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\ & (((!\fulladder4bit|bit0|sum~0_combout\) # (\fulladder4bit|bit1|sum~combout\)) # 
-- (\fulladder4bit|bit1|c_out~0_combout\))) # (\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # ((\fulladder4bit|bit1|sum~combout\ & !\fulladder4bit|bit0|sum~0_combout\)))) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( 
-- (!\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\ & (\fulladder4bit|bit1|sum~combout\ & !\fulladder4bit|bit0|sum~0_combout\)) # (\fulladder4bit|bit1|c_out~0_combout\ & ((!\fulladder4bit|bit0|sum~0_combout\) # 
-- (\fulladder4bit|bit1|sum~combout\))))) # (\A[2]~input_o\ & (((!\fulladder4bit|bit0|sum~0_combout\) # (\fulladder4bit|bit1|sum~combout\)) # (\fulladder4bit|bit1|c_out~0_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( 
-- (!\fulladder4bit|bit1|sum~combout\ & (\A[2]~input_o\ & (\fulladder4bit|bit1|c_out~0_combout\ & !\fulladder4bit|bit0|sum~0_combout\))) # (\fulladder4bit|bit1|sum~combout\ & ((!\fulladder4bit|bit0|sum~0_combout\) # ((\A[2]~input_o\ & 
-- \fulladder4bit|bit1|c_out~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100000001011111110001011111101111011011101000111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	combout => \display1|e~0_combout\);

-- Location: LABCELL_X88_Y21_N36
\display1|d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|d~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit3|sum~0_combout\ & ( (!\fulladder4bit|bit0|sum~0_combout\ & (((!\A[2]~input_o\ & !\fulladder4bit|bit1|c_out~0_combout\)) # (\fulladder4bit|bit1|sum~combout\))) # 
-- (\fulladder4bit|bit0|sum~0_combout\ & (!\A[2]~input_o\ $ (!\fulladder4bit|bit1|c_out~0_combout\ $ (!\fulladder4bit|bit1|sum~combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( \fulladder4bit|bit3|sum~0_combout\ & ( (!\fulladder4bit|bit0|sum~0_combout\ & 
-- ((!\A[2]~input_o\ & ((!\fulladder4bit|bit1|sum~combout\) # (\fulladder4bit|bit1|c_out~0_combout\))) # (\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # (\fulladder4bit|bit1|sum~combout\))))) # (\fulladder4bit|bit0|sum~0_combout\ & 
-- (!\A[2]~input_o\ $ (!\fulladder4bit|bit1|c_out~0_combout\ $ (\fulladder4bit|bit1|sum~combout\)))) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\ & (!\fulladder4bit|bit1|c_out~0_combout\ $ 
-- (!\fulladder4bit|bit1|sum~combout\ $ (\fulladder4bit|bit0|sum~0_combout\)))) # (\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\ & (!\fulladder4bit|bit1|sum~combout\ $ (\fulladder4bit|bit0|sum~0_combout\))) # (\fulladder4bit|bit1|c_out~0_combout\ 
-- & ((!\fulladder4bit|bit1|sum~combout\) # (!\fulladder4bit|bit0|sum~0_combout\))))) ) ) ) # ( !\B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( !\fulladder4bit|bit1|sum~combout\ $ (((!\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # 
-- (!\fulladder4bit|bit0|sum~0_combout\))) # (\A[2]~input_o\ & (!\fulladder4bit|bit1|c_out~0_combout\ $ (\fulladder4bit|bit0|sum~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001101001011110011001011011100111011010011000111110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	combout => \display1|d~0_combout\);

-- Location: LABCELL_X88_Y21_N42
\display1|c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|c~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\ & (\fulladder4bit|bit0|sum~0_combout\ & ((!\fulladder4bit|bit1|sum~combout\) # (\fulladder4bit|bit1|c_out~0_combout\)))) # (\A[2]~input_o\ & 
-- (((\fulladder4bit|bit0|sum~0_combout\)) # (\fulladder4bit|bit1|c_out~0_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \fulladder4bit|bit3|sum~0_combout\ & ( (!\fulladder4bit|bit0|sum~0_combout\ & (!\A[2]~input_o\ & (!\fulladder4bit|bit1|c_out~0_combout\))) # 
-- (\fulladder4bit|bit0|sum~0_combout\ & ((!\fulladder4bit|bit1|sum~combout\) # (!\A[2]~input_o\ $ (\fulladder4bit|bit1|c_out~0_combout\)))) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\) # 
-- ((!\fulladder4bit|bit1|c_out~0_combout\) # ((!\fulladder4bit|bit1|sum~combout\ & \fulladder4bit|bit0|sum~0_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( ((\fulladder4bit|bit0|sum~0_combout\) # 
-- (\fulladder4bit|bit1|c_out~0_combout\)) # (\A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111111011101111111010001000111110010001000111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	combout => \display1|c~0_combout\);

-- Location: LABCELL_X88_Y21_N18
\display1|b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|b~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit3|sum~0_combout\ & ( (!\fulladder4bit|bit1|sum~combout\ & (!\fulladder4bit|bit0|sum~0_combout\ $ (((!\A[2]~input_o\) # (!\fulladder4bit|bit1|c_out~0_combout\))))) # 
-- (\fulladder4bit|bit1|sum~combout\ & ((!\A[2]~input_o\ & (\fulladder4bit|bit1|c_out~0_combout\)) # (\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\) # (\fulladder4bit|bit0|sum~0_combout\))))) ) ) ) # ( !\B[2]~input_o\ & ( 
-- \fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\ & ((!\fulladder4bit|bit0|sum~0_combout\ & (!\fulladder4bit|bit1|c_out~0_combout\)) # (\fulladder4bit|bit0|sum~0_combout\ & ((!\fulladder4bit|bit1|sum~combout\))))) # (\A[2]~input_o\ & 
-- ((!\fulladder4bit|bit1|sum~combout\ & ((\fulladder4bit|bit0|sum~0_combout\))) # (\fulladder4bit|bit1|sum~combout\ & (\fulladder4bit|bit1|c_out~0_combout\)))) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( 
-- (!\fulladder4bit|bit0|sum~0_combout\ & ((!\A[2]~input_o\ & ((!\fulladder4bit|bit1|sum~combout\) # (\fulladder4bit|bit1|c_out~0_combout\))) # (\A[2]~input_o\ & (!\fulladder4bit|bit1|c_out~0_combout\)))) # (\fulladder4bit|bit0|sum~0_combout\ & 
-- (!\fulladder4bit|bit1|sum~combout\ $ (((!\A[2]~input_o\ & !\fulladder4bit|bit1|c_out~0_combout\))))) ) ) ) # ( !\B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\ & 
-- ((\fulladder4bit|bit0|sum~0_combout\) # (\fulladder4bit|bit1|sum~combout\))) # (\fulladder4bit|bit1|c_out~0_combout\ & (!\fulladder4bit|bit1|sum~combout\ $ (\fulladder4bit|bit0|sum~0_combout\))))) # (\A[2]~input_o\ & 
-- ((!\fulladder4bit|bit1|c_out~0_combout\ & (!\fulladder4bit|bit1|sum~combout\ $ (\fulladder4bit|bit0|sum~0_combout\))) # (\fulladder4bit|bit1|c_out~0_combout\ & ((!\fulladder4bit|bit1|sum~combout\) # (!\fulladder4bit|bit0|sum~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100110011110111001100111100010001001111100010001011011100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	combout => \display1|b~0_combout\);

-- Location: LABCELL_X88_Y21_N54
\display1|a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|a~0_combout\ = ( \B[2]~input_o\ & ( \fulladder4bit|bit3|sum~0_combout\ & ( ((!\A[2]~input_o\ & (!\fulladder4bit|bit1|c_out~0_combout\ & !\fulladder4bit|bit0|sum~0_combout\)) # (\A[2]~input_o\ & (\fulladder4bit|bit1|c_out~0_combout\ & 
-- \fulladder4bit|bit0|sum~0_combout\))) # (\fulladder4bit|bit1|sum~combout\) ) ) ) # ( !\B[2]~input_o\ & ( \fulladder4bit|bit3|sum~0_combout\ & ( (!\A[2]~input_o\ & ((!\fulladder4bit|bit0|sum~0_combout\) # (!\fulladder4bit|bit1|c_out~0_combout\ $ 
-- (\fulladder4bit|bit1|sum~combout\)))) # (\A[2]~input_o\ & (((!\fulladder4bit|bit1|c_out~0_combout\ & !\fulladder4bit|bit0|sum~0_combout\)) # (\fulladder4bit|bit1|sum~combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( 
-- (!\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\ & ((\fulladder4bit|bit0|sum~0_combout\) # (\fulladder4bit|bit1|sum~combout\))) # (\fulladder4bit|bit1|c_out~0_combout\ & ((!\fulladder4bit|bit1|sum~combout\) # 
-- (!\fulladder4bit|bit0|sum~0_combout\))))) # (\A[2]~input_o\ & ((!\fulladder4bit|bit0|sum~0_combout\) # (!\fulladder4bit|bit1|c_out~0_combout\ $ (\fulladder4bit|bit1|sum~combout\)))) ) ) ) # ( !\B[2]~input_o\ & ( !\fulladder4bit|bit3|sum~0_combout\ & ( 
-- (!\A[2]~input_o\ & (((\fulladder4bit|bit1|c_out~0_combout\ & \fulladder4bit|bit0|sum~0_combout\)) # (\fulladder4bit|bit1|sum~combout\))) # (\A[2]~input_o\ & ((!\fulladder4bit|bit1|c_out~0_combout\ & ((\fulladder4bit|bit0|sum~0_combout\) # 
-- (\fulladder4bit|bit1|sum~combout\))) # (\fulladder4bit|bit1|c_out~0_combout\ & ((!\fulladder4bit|bit1|sum~combout\) # (!\fulladder4bit|bit0|sum~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111101111110011111111110100111101111100001111000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datac => \fulladder4bit|bit1|ALT_INV_sum~combout\,
	datad => \fulladder4bit|bit0|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \fulladder4bit|bit3|ALT_INV_sum~0_combout\,
	combout => \display1|a~0_combout\);

-- Location: LABCELL_X88_Y21_N15
\fulladder4bit|bit3|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fulladder4bit|bit3|c_out~0_combout\ = ( \A[3]~input_o\ & ( ((!\A[2]~input_o\ & (\fulladder4bit|bit1|c_out~0_combout\ & \B[2]~input_o\)) # (\A[2]~input_o\ & ((\B[2]~input_o\) # (\fulladder4bit|bit1|c_out~0_combout\)))) # (\B[3]~input_o\) ) ) # ( 
-- !\A[3]~input_o\ & ( (\B[3]~input_o\ & ((!\A[2]~input_o\ & (\fulladder4bit|bit1|c_out~0_combout\ & \B[2]~input_o\)) # (\A[2]~input_o\ & ((\B[2]~input_o\) # (\fulladder4bit|bit1|c_out~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000001011100010111111111110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \fulladder4bit|bit1|ALT_INV_c_out~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \fulladder4bit|bit3|c_out~0_combout\);

-- Location: LABCELL_X7_Y4_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


