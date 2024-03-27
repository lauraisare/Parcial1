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

-- DATE "03/14/2024 16:33:06"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PagoPeaje IS
    PORT (
	Categoria : IN std_logic_vector(1 DOWNTO 0);
	Pago : IN std_logic;
	Tarifa : OUT std_logic_vector(2 DOWNTO 0);
	UsuarioPagado : OUT std_logic;
	SemaforoSalida : OUT std_logic
	);
END PagoPeaje;

-- Design Ports Information
-- Tarifa[0]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tarifa[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tarifa[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UsuarioPagado	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SemaforoSalida	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Categoria[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pago	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Categoria[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PagoPeaje IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Categoria : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Pago : std_logic;
SIGNAL ww_Tarifa : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_UsuarioPagado : std_logic;
SIGNAL ww_SemaforoSalida : std_logic;
SIGNAL \Tarifa[0]~output_o\ : std_logic;
SIGNAL \Tarifa[1]~output_o\ : std_logic;
SIGNAL \Tarifa[2]~output_o\ : std_logic;
SIGNAL \UsuarioPagado~output_o\ : std_logic;
SIGNAL \SemaforoSalida~output_o\ : std_logic;
SIGNAL \Categoria[0]~input_o\ : std_logic;
SIGNAL \Pago~input_o\ : std_logic;
SIGNAL \Categoria[1]~input_o\ : std_logic;
SIGNAL \SumaTarifa~0_combout\ : std_logic;
SIGNAL \SumaTarifa~1_combout\ : std_logic;
SIGNAL \SumaTarifa~2_combout\ : std_logic;

BEGIN

ww_Categoria <= Categoria;
ww_Pago <= Pago;
Tarifa <= ww_Tarifa;
UsuarioPagado <= ww_UsuarioPagado;
SemaforoSalida <= ww_SemaforoSalida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y20_N2
\Tarifa[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SumaTarifa~0_combout\,
	devoe => ww_devoe,
	o => \Tarifa[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\Tarifa[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SumaTarifa~1_combout\,
	devoe => ww_devoe,
	o => \Tarifa[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\Tarifa[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SumaTarifa~2_combout\,
	devoe => ww_devoe,
	o => \Tarifa[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\UsuarioPagado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Pago~input_o\,
	devoe => ww_devoe,
	o => \UsuarioPagado~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\SemaforoSalida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Pago~input_o\,
	devoe => ww_devoe,
	o => \SemaforoSalida~output_o\);

-- Location: IOIBUF_X0_Y10_N15
\Categoria[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Categoria(0),
	o => \Categoria[0]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\Pago~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pago,
	o => \Pago~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\Categoria[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Categoria(1),
	o => \Categoria[1]~input_o\);

-- Location: LCCOMB_X1_Y11_N0
\SumaTarifa~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SumaTarifa~0_combout\ = (\Categoria[0]~input_o\ & (\Pago~input_o\ & !\Categoria[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Categoria[0]~input_o\,
	datab => \Pago~input_o\,
	datad => \Categoria[1]~input_o\,
	combout => \SumaTarifa~0_combout\);

-- Location: LCCOMB_X1_Y11_N18
\SumaTarifa~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SumaTarifa~1_combout\ = (!\Categoria[0]~input_o\ & (\Pago~input_o\ & \Categoria[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Categoria[0]~input_o\,
	datab => \Pago~input_o\,
	datad => \Categoria[1]~input_o\,
	combout => \SumaTarifa~1_combout\);

-- Location: LCCOMB_X1_Y11_N4
\SumaTarifa~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SumaTarifa~2_combout\ = (\Categoria[0]~input_o\ & (\Pago~input_o\ & \Categoria[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Categoria[0]~input_o\,
	datab => \Pago~input_o\,
	datad => \Categoria[1]~input_o\,
	combout => \SumaTarifa~2_combout\);

ww_Tarifa(0) <= \Tarifa[0]~output_o\;

ww_Tarifa(1) <= \Tarifa[1]~output_o\;

ww_Tarifa(2) <= \Tarifa[2]~output_o\;

ww_UsuarioPagado <= \UsuarioPagado~output_o\;

ww_SemaforoSalida <= \SemaforoSalida~output_o\;
END structure;


