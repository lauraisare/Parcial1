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

-- DATE "03/19/2024 11:59:25"

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

ENTITY 	Semaforo_salida IS
    PORT (
	SemaforoSalida : IN std_logic;
	semaforo_rojo : OUT std_logic;
	semaforo_verde : OUT std_logic
	);
END Semaforo_salida;

-- Design Ports Information
-- semaforo_rojo	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_verde	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SemaforoSalida	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Semaforo_salida IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SemaforoSalida : std_logic;
SIGNAL ww_semaforo_rojo : std_logic;
SIGNAL ww_semaforo_verde : std_logic;
SIGNAL \semaforo_rojo~output_o\ : std_logic;
SIGNAL \semaforo_verde~output_o\ : std_logic;
SIGNAL \SemaforoSalida~input_o\ : std_logic;
SIGNAL \ALT_INV_SemaforoSalida~input_o\ : std_logic;

BEGIN

ww_SemaforoSalida <= SemaforoSalida;
semaforo_rojo <= ww_semaforo_rojo;
semaforo_verde <= ww_semaforo_verde;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SemaforoSalida~input_o\ <= NOT \SemaforoSalida~input_o\;

-- Location: IOOBUF_X7_Y29_N23
\semaforo_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SemaforoSalida~input_o\,
	devoe => ww_devoe,
	o => \semaforo_rojo~output_o\);

-- Location: IOOBUF_X11_Y29_N23
\semaforo_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SemaforoSalida~input_o\,
	devoe => ww_devoe,
	o => \semaforo_verde~output_o\);

-- Location: IOIBUF_X9_Y29_N1
\SemaforoSalida~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SemaforoSalida,
	o => \SemaforoSalida~input_o\);

ww_semaforo_rojo <= \semaforo_rojo~output_o\;

ww_semaforo_verde <= \semaforo_verde~output_o\;
END structure;


