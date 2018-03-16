-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Standard Edition"

-- DATE "03/13/2018 17:12:56"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	nbitregister IS
    PORT (
	Dinputs : IN std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	reset : IN std_logic;
	preset : IN std_logic;
	q : BUFFER std_logic_vector(3 DOWNTO 0);
	qnot : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END nbitregister;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qnot[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qnot[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qnot[2]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qnot[3]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dinputs[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- preset	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dinputs[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dinputs[2]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dinputs[3]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nbitregister IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Dinputs : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_preset : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_qnot : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \preset~input_o\ : std_logic;
SIGNAL \inst:0:A|q~5_combout\ : std_logic;
SIGNAL \inst:0:A|q~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Dinputs[0]~input_o\ : std_logic;
SIGNAL \inst:0:A|q~3_combout\ : std_logic;
SIGNAL \inst:0:A|q~0_combout\ : std_logic;
SIGNAL \inst:0:A|q~_emulated_q\ : std_logic;
SIGNAL \inst:0:A|q~2_combout\ : std_logic;
SIGNAL \Dinputs[1]~input_o\ : std_logic;
SIGNAL \inst:1:A|q~1_combout\ : std_logic;
SIGNAL \inst:1:A|q~_emulated_q\ : std_logic;
SIGNAL \inst:1:A|q~0_combout\ : std_logic;
SIGNAL \Dinputs[2]~input_o\ : std_logic;
SIGNAL \inst:2:A|q~1_combout\ : std_logic;
SIGNAL \inst:2:A|q~_emulated_q\ : std_logic;
SIGNAL \inst:2:A|q~0_combout\ : std_logic;
SIGNAL \Dinputs[3]~input_o\ : std_logic;
SIGNAL \inst:3:A|q~1_combout\ : std_logic;
SIGNAL \inst:3:A|q~_emulated_q\ : std_logic;
SIGNAL \inst:3:A|q~0_combout\ : std_logic;
SIGNAL \inst:0:A|qnot~1_combout\ : std_logic;
SIGNAL \inst:0:A|qnot~3_combout\ : std_logic;
SIGNAL \inst:0:A|qnot~0_combout\ : std_logic;
SIGNAL \inst:0:A|qnot~_emulated_q\ : std_logic;
SIGNAL \inst:0:A|qnot~2_combout\ : std_logic;
SIGNAL \inst:1:A|qnot~1_combout\ : std_logic;
SIGNAL \inst:1:A|qnot~_emulated_q\ : std_logic;
SIGNAL \inst:1:A|qnot~0_combout\ : std_logic;
SIGNAL \inst:2:A|qnot~1_combout\ : std_logic;
SIGNAL \inst:2:A|qnot~_emulated_q\ : std_logic;
SIGNAL \inst:2:A|qnot~0_combout\ : std_logic;
SIGNAL \inst:3:A|qnot~1_combout\ : std_logic;
SIGNAL \inst:3:A|qnot~_emulated_q\ : std_logic;
SIGNAL \inst:3:A|qnot~0_combout\ : std_logic;
SIGNAL \ALT_INV_Dinputs[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Dinputs[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Dinputs[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_preset~input_o\ : std_logic;
SIGNAL \ALT_INV_Dinputs[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \inst:0:A|ALT_INV_qnot~1_combout\ : std_logic;
SIGNAL \inst:0:A|ALT_INV_q~1_combout\ : std_logic;
SIGNAL \inst:0:A|ALT_INV_qnot~0_combout\ : std_logic;
SIGNAL \inst:0:A|ALT_INV_q~5_combout\ : std_logic;
SIGNAL \inst:0:A|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \inst:3:A|ALT_INV_qnot~_emulated_q\ : std_logic;
SIGNAL \inst:2:A|ALT_INV_qnot~_emulated_q\ : std_logic;
SIGNAL \inst:1:A|ALT_INV_qnot~_emulated_q\ : std_logic;
SIGNAL \inst:0:A|ALT_INV_qnot~_emulated_q\ : std_logic;
SIGNAL \inst:3:A|ALT_INV_q~_emulated_q\ : std_logic;
SIGNAL \inst:2:A|ALT_INV_q~_emulated_q\ : std_logic;
SIGNAL \inst:1:A|ALT_INV_q~_emulated_q\ : std_logic;
SIGNAL \inst:0:A|ALT_INV_q~_emulated_q\ : std_logic;

BEGIN

ww_Dinputs <= Dinputs;
ww_CLK <= CLK;
ww_reset <= reset;
ww_preset <= preset;
q <= ww_q;
qnot <= ww_qnot;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Dinputs[3]~input_o\ <= NOT \Dinputs[3]~input_o\;
\ALT_INV_Dinputs[2]~input_o\ <= NOT \Dinputs[2]~input_o\;
\ALT_INV_Dinputs[1]~input_o\ <= NOT \Dinputs[1]~input_o\;
\ALT_INV_preset~input_o\ <= NOT \preset~input_o\;
\ALT_INV_Dinputs[0]~input_o\ <= NOT \Dinputs[0]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\inst:0:A|ALT_INV_qnot~1_combout\ <= NOT \inst:0:A|qnot~1_combout\;
\inst:0:A|ALT_INV_q~1_combout\ <= NOT \inst:0:A|q~1_combout\;
\inst:0:A|ALT_INV_qnot~0_combout\ <= NOT \inst:0:A|qnot~0_combout\;
\inst:0:A|ALT_INV_q~5_combout\ <= NOT \inst:0:A|q~5_combout\;
\inst:0:A|ALT_INV_q~0_combout\ <= NOT \inst:0:A|q~0_combout\;
\inst:3:A|ALT_INV_qnot~_emulated_q\ <= NOT \inst:3:A|qnot~_emulated_q\;
\inst:2:A|ALT_INV_qnot~_emulated_q\ <= NOT \inst:2:A|qnot~_emulated_q\;
\inst:1:A|ALT_INV_qnot~_emulated_q\ <= NOT \inst:1:A|qnot~_emulated_q\;
\inst:0:A|ALT_INV_qnot~_emulated_q\ <= NOT \inst:0:A|qnot~_emulated_q\;
\inst:3:A|ALT_INV_q~_emulated_q\ <= NOT \inst:3:A|q~_emulated_q\;
\inst:2:A|ALT_INV_q~_emulated_q\ <= NOT \inst:2:A|q~_emulated_q\;
\inst:1:A|ALT_INV_q~_emulated_q\ <= NOT \inst:1:A|q~_emulated_q\;
\inst:0:A|ALT_INV_q~_emulated_q\ <= NOT \inst:0:A|q~_emulated_q\;

-- Location: IOOBUF_X89_Y25_N56
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst:0:A|q~2_combout\,
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X89_Y23_N5
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst:1:A|q~0_combout\,
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X89_Y23_N56
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst:2:A|q~0_combout\,
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X89_Y25_N5
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst:3:A|q~0_combout\,
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOOBUF_X89_Y20_N45
\qnot[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst:0:A|qnot~2_combout\,
	devoe => ww_devoe,
	o => ww_qnot(0));

-- Location: IOOBUF_X89_Y20_N79
\qnot[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst:1:A|qnot~0_combout\,
	devoe => ww_devoe,
	o => ww_qnot(1));

-- Location: IOOBUF_X89_Y23_N39
\qnot[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst:2:A|qnot~0_combout\,
	devoe => ww_devoe,
	o => ww_qnot(2));

-- Location: IOOBUF_X89_Y25_N39
\qnot[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst:3:A|qnot~0_combout\,
	devoe => ww_devoe,
	o => ww_qnot(3));

-- Location: IOIBUF_X89_Y23_N21
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\preset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_preset,
	o => \preset~input_o\);

-- Location: LABCELL_X88_Y23_N57
\inst:0:A|q~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:0:A|q~5_combout\ = (!\reset~input_o\ & \preset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_preset~input_o\,
	combout => \inst:0:A|q~5_combout\);

-- Location: LABCELL_X88_Y23_N36
\inst:0:A|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:0:A|q~1_combout\ = (!\reset~input_o\ & ((\inst:0:A|q~1_combout\) # (\inst:0:A|q~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \inst:0:A|ALT_INV_q~5_combout\,
	datad => \inst:0:A|ALT_INV_q~1_combout\,
	combout => \inst:0:A|q~1_combout\);

-- Location: IOIBUF_X89_Y25_N21
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y21_N4
\Dinputs[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dinputs(0),
	o => \Dinputs[0]~input_o\);

-- Location: LABCELL_X88_Y23_N33
\inst:0:A|q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:0:A|q~3_combout\ = !\inst:0:A|q~1_combout\ $ (!\Dinputs[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst:0:A|ALT_INV_q~1_combout\,
	datac => \ALT_INV_Dinputs[0]~input_o\,
	combout => \inst:0:A|q~3_combout\);

-- Location: MLABCELL_X87_Y23_N0
\inst:0:A|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:0:A|q~0_combout\ = ( \inst:0:A|q~5_combout\ & ( \reset~input_o\ ) ) # ( !\inst:0:A|q~5_combout\ & ( \reset~input_o\ ) ) # ( \inst:0:A|q~5_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst:0:A|ALT_INV_q~5_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst:0:A|q~0_combout\);

-- Location: FF_X88_Y23_N35
\inst:0:A|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst:0:A|q~3_combout\,
	clrn => \inst:0:A|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst:0:A|q~_emulated_q\);

-- Location: LABCELL_X88_Y23_N39
\inst:0:A|q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:0:A|q~2_combout\ = ( \inst:0:A|q~_emulated_q\ & ( (!\reset~input_o\ & ((!\inst:0:A|q~1_combout\) # (\inst:0:A|q~5_combout\))) ) ) # ( !\inst:0:A|q~_emulated_q\ & ( (!\reset~input_o\ & ((\inst:0:A|q~1_combout\) # (\inst:0:A|q~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \inst:0:A|ALT_INV_q~5_combout\,
	datad => \inst:0:A|ALT_INV_q~1_combout\,
	dataf => \inst:0:A|ALT_INV_q~_emulated_q\,
	combout => \inst:0:A|q~2_combout\);

-- Location: IOIBUF_X89_Y21_N21
\Dinputs[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dinputs(1),
	o => \Dinputs[1]~input_o\);

-- Location: LABCELL_X88_Y23_N12
\inst:1:A|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:1:A|q~1_combout\ = ( \Dinputs[1]~input_o\ & ( !\inst:0:A|q~1_combout\ ) ) # ( !\Dinputs[1]~input_o\ & ( \inst:0:A|q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst:0:A|ALT_INV_q~1_combout\,
	dataf => \ALT_INV_Dinputs[1]~input_o\,
	combout => \inst:1:A|q~1_combout\);

-- Location: FF_X88_Y23_N14
\inst:1:A|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst:1:A|q~1_combout\,
	clrn => \inst:0:A|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst:1:A|q~_emulated_q\);

-- Location: LABCELL_X88_Y23_N18
\inst:1:A|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:1:A|q~0_combout\ = ( !\reset~input_o\ & ( (!\inst:1:A|q~_emulated_q\ $ (!\inst:0:A|q~1_combout\)) # (\inst:0:A|q~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111110101010111111111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst:0:A|ALT_INV_q~5_combout\,
	datac => \inst:1:A|ALT_INV_q~_emulated_q\,
	datad => \inst:0:A|ALT_INV_q~1_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst:1:A|q~0_combout\);

-- Location: IOIBUF_X89_Y20_N95
\Dinputs[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dinputs(2),
	o => \Dinputs[2]~input_o\);

-- Location: LABCELL_X88_Y23_N30
\inst:2:A|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:2:A|q~1_combout\ = ( \Dinputs[2]~input_o\ & ( !\inst:0:A|q~1_combout\ ) ) # ( !\Dinputs[2]~input_o\ & ( \inst:0:A|q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst:0:A|ALT_INV_q~1_combout\,
	dataf => \ALT_INV_Dinputs[2]~input_o\,
	combout => \inst:2:A|q~1_combout\);

-- Location: FF_X88_Y23_N32
\inst:2:A|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst:2:A|q~1_combout\,
	clrn => \inst:0:A|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst:2:A|q~_emulated_q\);

-- Location: LABCELL_X88_Y23_N21
\inst:2:A|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:2:A|q~0_combout\ = ( !\reset~input_o\ & ( (!\inst:2:A|q~_emulated_q\ $ (!\inst:0:A|q~1_combout\)) # (\inst:0:A|q~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111110101010111111111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst:0:A|ALT_INV_q~5_combout\,
	datac => \inst:2:A|ALT_INV_q~_emulated_q\,
	datad => \inst:0:A|ALT_INV_q~1_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst:2:A|q~0_combout\);

-- Location: IOIBUF_X89_Y21_N38
\Dinputs[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dinputs(3),
	o => \Dinputs[3]~input_o\);

-- Location: LABCELL_X88_Y23_N15
\inst:3:A|q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:3:A|q~1_combout\ = ( \Dinputs[3]~input_o\ & ( !\inst:0:A|q~1_combout\ ) ) # ( !\Dinputs[3]~input_o\ & ( \inst:0:A|q~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst:0:A|ALT_INV_q~1_combout\,
	dataf => \ALT_INV_Dinputs[3]~input_o\,
	combout => \inst:3:A|q~1_combout\);

-- Location: FF_X88_Y23_N17
\inst:3:A|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst:3:A|q~1_combout\,
	clrn => \inst:0:A|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst:3:A|q~_emulated_q\);

-- Location: LABCELL_X88_Y23_N54
\inst:3:A|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:3:A|q~0_combout\ = ( \inst:3:A|q~_emulated_q\ & ( (!\reset~input_o\ & ((!\inst:0:A|q~1_combout\) # (\inst:0:A|q~5_combout\))) ) ) # ( !\inst:3:A|q~_emulated_q\ & ( (!\reset~input_o\ & ((\inst:0:A|q~1_combout\) # (\inst:0:A|q~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \inst:0:A|ALT_INV_q~5_combout\,
	datad => \inst:0:A|ALT_INV_q~1_combout\,
	dataf => \inst:3:A|ALT_INV_q~_emulated_q\,
	combout => \inst:3:A|q~0_combout\);

-- Location: LABCELL_X88_Y23_N27
\inst:0:A|qnot~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:0:A|qnot~1_combout\ = ( \inst:0:A|qnot~1_combout\ & ( !\inst:0:A|q~5_combout\ ) ) # ( !\inst:0:A|qnot~1_combout\ & ( (\reset~input_o\ & !\inst:0:A|q~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \inst:0:A|ALT_INV_q~5_combout\,
	dataf => \inst:0:A|ALT_INV_qnot~1_combout\,
	combout => \inst:0:A|qnot~1_combout\);

-- Location: LABCELL_X88_Y23_N3
\inst:0:A|qnot~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:0:A|qnot~3_combout\ = !\inst:0:A|qnot~1_combout\ $ (\Dinputs[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst:0:A|ALT_INV_qnot~1_combout\,
	datac => \ALT_INV_Dinputs[0]~input_o\,
	combout => \inst:0:A|qnot~3_combout\);

-- Location: LABCELL_X88_Y23_N24
\inst:0:A|qnot~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:0:A|qnot~0_combout\ = (\inst:0:A|q~5_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \inst:0:A|ALT_INV_q~5_combout\,
	combout => \inst:0:A|qnot~0_combout\);

-- Location: FF_X88_Y23_N5
\inst:0:A|qnot~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst:0:A|qnot~3_combout\,
	clrn => \inst:0:A|ALT_INV_qnot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst:0:A|qnot~_emulated_q\);

-- Location: LABCELL_X88_Y23_N0
\inst:0:A|qnot~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:0:A|qnot~2_combout\ = ( \reset~input_o\ & ( !\inst:0:A|q~5_combout\ ) ) # ( !\reset~input_o\ & ( (!\inst:0:A|q~5_combout\ & (!\inst:0:A|qnot~1_combout\ $ (!\inst:0:A|qnot~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst:0:A|ALT_INV_q~5_combout\,
	datab => \inst:0:A|ALT_INV_qnot~1_combout\,
	datac => \inst:0:A|ALT_INV_qnot~_emulated_q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst:0:A|qnot~2_combout\);

-- Location: LABCELL_X88_Y23_N6
\inst:1:A|qnot~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:1:A|qnot~1_combout\ = ( \Dinputs[1]~input_o\ & ( \inst:0:A|qnot~1_combout\ ) ) # ( !\Dinputs[1]~input_o\ & ( !\inst:0:A|qnot~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst:0:A|ALT_INV_qnot~1_combout\,
	dataf => \ALT_INV_Dinputs[1]~input_o\,
	combout => \inst:1:A|qnot~1_combout\);

-- Location: FF_X88_Y23_N7
\inst:1:A|qnot~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst:1:A|qnot~1_combout\,
	clrn => \inst:0:A|ALT_INV_qnot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst:1:A|qnot~_emulated_q\);

-- Location: LABCELL_X88_Y23_N9
\inst:1:A|qnot~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:1:A|qnot~0_combout\ = ( \reset~input_o\ & ( !\inst:0:A|q~5_combout\ ) ) # ( !\reset~input_o\ & ( (!\inst:0:A|q~5_combout\ & (!\inst:1:A|qnot~_emulated_q\ $ (!\inst:0:A|qnot~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst:1:A|ALT_INV_qnot~_emulated_q\,
	datab => \inst:0:A|ALT_INV_qnot~1_combout\,
	datac => \inst:0:A|ALT_INV_q~5_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst:1:A|qnot~0_combout\);

-- Location: LABCELL_X88_Y23_N45
\inst:2:A|qnot~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:2:A|qnot~1_combout\ = ( \Dinputs[2]~input_o\ & ( \inst:0:A|qnot~1_combout\ ) ) # ( !\Dinputs[2]~input_o\ & ( !\inst:0:A|qnot~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst:0:A|ALT_INV_qnot~1_combout\,
	dataf => \ALT_INV_Dinputs[2]~input_o\,
	combout => \inst:2:A|qnot~1_combout\);

-- Location: FF_X88_Y23_N47
\inst:2:A|qnot~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst:2:A|qnot~1_combout\,
	clrn => \inst:0:A|ALT_INV_qnot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst:2:A|qnot~_emulated_q\);

-- Location: LABCELL_X88_Y23_N42
\inst:2:A|qnot~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:2:A|qnot~0_combout\ = ( \reset~input_o\ & ( !\inst:0:A|q~5_combout\ ) ) # ( !\reset~input_o\ & ( (!\inst:0:A|q~5_combout\ & (!\inst:0:A|qnot~1_combout\ $ (!\inst:2:A|qnot~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst:0:A|ALT_INV_qnot~1_combout\,
	datac => \inst:0:A|ALT_INV_q~5_combout\,
	datad => \inst:2:A|ALT_INV_qnot~_emulated_q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst:2:A|qnot~0_combout\);

-- Location: LABCELL_X88_Y23_N51
\inst:3:A|qnot~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:3:A|qnot~1_combout\ = ( \Dinputs[3]~input_o\ & ( \inst:0:A|qnot~1_combout\ ) ) # ( !\Dinputs[3]~input_o\ & ( !\inst:0:A|qnot~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst:0:A|ALT_INV_qnot~1_combout\,
	dataf => \ALT_INV_Dinputs[3]~input_o\,
	combout => \inst:3:A|qnot~1_combout\);

-- Location: FF_X88_Y23_N53
\inst:3:A|qnot~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst:3:A|qnot~1_combout\,
	clrn => \inst:0:A|ALT_INV_qnot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst:3:A|qnot~_emulated_q\);

-- Location: LABCELL_X88_Y23_N48
\inst:3:A|qnot~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst:3:A|qnot~0_combout\ = ( \reset~input_o\ & ( !\inst:0:A|q~5_combout\ ) ) # ( !\reset~input_o\ & ( (!\inst:0:A|q~5_combout\ & (!\inst:0:A|qnot~1_combout\ $ (!\inst:3:A|qnot~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst:0:A|ALT_INV_qnot~1_combout\,
	datac => \inst:3:A|ALT_INV_qnot~_emulated_q\,
	datad => \inst:0:A|ALT_INV_q~5_combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \inst:3:A|qnot~0_combout\);

-- Location: LABCELL_X30_Y44_N3
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


