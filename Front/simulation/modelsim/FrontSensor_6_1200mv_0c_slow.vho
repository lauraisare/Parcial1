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

-- DATE "03/14/2024 09:28:53"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FrontSensor IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	front_sensor : IN std_logic;
	id_valida : IN std_logic;
	identificacion : IN std_logic_vector(4 DOWNTO 0);
	barrera_inicial : OUT std_logic;
	barrera_final : OUT std_logic;
	categoria : OUT std_logic_vector(1 DOWNTO 0);
	led_verde : BUFFER std_logic;
	led_rojo : BUFFER std_logic;
	alarm : OUT std_logic
	);
END FrontSensor;

-- Design Ports Information
-- identificacion[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_inicial	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_final	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria[0]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_verde	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_rojo	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarm	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_valida	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front_sensor	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FrontSensor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_front_sensor : std_logic;
SIGNAL ww_id_valida : std_logic;
SIGNAL ww_identificacion : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_barrera_inicial : std_logic;
SIGNAL ww_barrera_final : std_logic;
SIGNAL ww_categoria : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led_verde : std_logic;
SIGNAL ww_led_rojo : std_logic;
SIGNAL ww_alarm : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \identificacion[0]~input_o\ : std_logic;
SIGNAL \identificacion[3]~input_o\ : std_logic;
SIGNAL \identificacion[4]~input_o\ : std_logic;
SIGNAL \barrera_inicial~output_o\ : std_logic;
SIGNAL \barrera_final~output_o\ : std_logic;
SIGNAL \categoria[0]~output_o\ : std_logic;
SIGNAL \categoria[1]~output_o\ : std_logic;
SIGNAL \led_verde~output_o\ : std_logic;
SIGNAL \led_rojo~output_o\ : std_logic;
SIGNAL \alarm~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \barrera_inicial~reg0feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \id_valida~input_o\ : std_logic;
SIGNAL \alarm~0_combout\ : std_logic;
SIGNAL \vehiculo_detectado~feeder_combout\ : std_logic;
SIGNAL \vehiculo_detectado~q\ : std_logic;
SIGNAL \barrera_inicial~0_combout\ : std_logic;
SIGNAL \barrera_inicial~reg0_q\ : std_logic;
SIGNAL \front_sensor~input_o\ : std_logic;
SIGNAL \barrera_final~0_combout\ : std_logic;
SIGNAL \barrera_final~reg0_q\ : std_logic;
SIGNAL \identificacion[1]~input_o\ : std_logic;
SIGNAL \categoria[0]~reg0_q\ : std_logic;
SIGNAL \identificacion[2]~input_o\ : std_logic;
SIGNAL \categoria[1]~reg0_q\ : std_logic;
SIGNAL \led_verde~0_combout\ : std_logic;
SIGNAL \led_verde~reg0_q\ : std_logic;
SIGNAL \intentos[0]~0_combout\ : std_logic;
SIGNAL \intentos[1]~1_combout\ : std_logic;
SIGNAL \alarm~1_combout\ : std_logic;
SIGNAL \alarm~reg0_q\ : std_logic;
SIGNAL intentos : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_front_sensor <= front_sensor;
ww_id_valida <= id_valida;
ww_identificacion <= identificacion;
barrera_inicial <= ww_barrera_inicial;
barrera_final <= ww_barrera_final;
categoria <= ww_categoria;
led_verde <= ww_led_verde;
led_rojo <= ww_led_rojo;
alarm <= ww_alarm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y21_N23
\barrera_inicial~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \barrera_inicial~reg0_q\,
	devoe => ww_devoe,
	o => \barrera_inicial~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\barrera_final~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \barrera_final~reg0_q\,
	devoe => ww_devoe,
	o => \barrera_final~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\categoria[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \categoria[0]~reg0_q\,
	devoe => ww_devoe,
	o => \categoria[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\categoria[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \categoria[1]~reg0_q\,
	devoe => ww_devoe,
	o => \categoria[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\led_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_verde~reg0_q\,
	devoe => ww_devoe,
	o => \led_verde~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\led_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => intentos(0),
	devoe => ww_devoe,
	o => \led_rojo~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\alarm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarm~reg0_q\,
	devoe => ww_devoe,
	o => \alarm~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y21_N16
\barrera_inicial~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \barrera_inicial~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \barrera_inicial~reg0feeder_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y22_N1
\id_valida~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_id_valida,
	o => \id_valida~input_o\);

-- Location: LCCOMB_X1_Y21_N18
\alarm~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alarm~0_combout\ = (\id_valida~input_o\) # (\vehiculo_detectado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_valida~input_o\,
	datad => \vehiculo_detectado~q\,
	combout => \alarm~0_combout\);

-- Location: LCCOMB_X1_Y21_N10
\vehiculo_detectado~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vehiculo_detectado~feeder_combout\ = \alarm~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alarm~0_combout\,
	combout => \vehiculo_detectado~feeder_combout\);

-- Location: FF_X1_Y21_N11
vehiculo_detectado : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \vehiculo_detectado~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vehiculo_detectado~q\);

-- Location: LCCOMB_X1_Y21_N28
\barrera_inicial~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \barrera_inicial~0_combout\ = (\id_valida~input_o\ & !\vehiculo_detectado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_valida~input_o\,
	datad => \vehiculo_detectado~q\,
	combout => \barrera_inicial~0_combout\);

-- Location: FF_X1_Y21_N17
\barrera_inicial~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \barrera_inicial~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \barrera_inicial~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \barrera_inicial~reg0_q\);

-- Location: IOIBUF_X0_Y21_N1
\front_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front_sensor,
	o => \front_sensor~input_o\);

-- Location: LCCOMB_X1_Y21_N26
\barrera_final~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \barrera_final~0_combout\ = (\barrera_final~reg0_q\) # ((\front_sensor~input_o\ & \vehiculo_detectado~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \front_sensor~input_o\,
	datac => \barrera_final~reg0_q\,
	datad => \vehiculo_detectado~q\,
	combout => \barrera_final~0_combout\);

-- Location: FF_X1_Y21_N27
\barrera_final~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \barrera_final~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \barrera_final~reg0_q\);

-- Location: IOIBUF_X0_Y20_N1
\identificacion[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(1),
	o => \identificacion[1]~input_o\);

-- Location: FF_X1_Y21_N29
\categoria[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \identificacion[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \barrera_inicial~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \categoria[0]~reg0_q\);

-- Location: IOIBUF_X0_Y22_N22
\identificacion[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(2),
	o => \identificacion[2]~input_o\);

-- Location: FF_X1_Y21_N19
\categoria[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \identificacion[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \barrera_inicial~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \categoria[1]~reg0_q\);

-- Location: LCCOMB_X1_Y21_N24
\led_verde~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_verde~0_combout\ = !\led_verde~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led_verde~reg0_q\,
	combout => \led_verde~0_combout\);

-- Location: FF_X1_Y21_N25
\led_verde~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_verde~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \barrera_inicial~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_verde~reg0_q\);

-- Location: LCCOMB_X1_Y21_N30
\intentos[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \intentos[0]~0_combout\ = intentos(0) $ (((!\id_valida~input_o\ & !\vehiculo_detectado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_valida~input_o\,
	datac => intentos(0),
	datad => \vehiculo_detectado~q\,
	combout => \intentos[0]~0_combout\);

-- Location: FF_X1_Y21_N31
\intentos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \intentos[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intentos(0));

-- Location: LCCOMB_X1_Y21_N20
\intentos[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \intentos[1]~1_combout\ = intentos(1) $ (((intentos(0) & (!\id_valida~input_o\ & !\vehiculo_detectado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intentos(0),
	datab => \id_valida~input_o\,
	datac => intentos(1),
	datad => \vehiculo_detectado~q\,
	combout => \intentos[1]~1_combout\);

-- Location: FF_X1_Y21_N21
\intentos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \intentos[1]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intentos(1));

-- Location: LCCOMB_X1_Y21_N12
\alarm~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alarm~1_combout\ = (\alarm~reg0_q\) # ((intentos(0) & (intentos(1) & !\alarm~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intentos(0),
	datab => intentos(1),
	datac => \alarm~reg0_q\,
	datad => \alarm~0_combout\,
	combout => \alarm~1_combout\);

-- Location: FF_X1_Y21_N13
\alarm~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alarm~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarm~reg0_q\);

-- Location: IOIBUF_X5_Y29_N22
\identificacion[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(0),
	o => \identificacion[0]~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\identificacion[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(3),
	o => \identificacion[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\identificacion[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(4),
	o => \identificacion[4]~input_o\);

ww_barrera_inicial <= \barrera_inicial~output_o\;

ww_barrera_final <= \barrera_final~output_o\;

ww_categoria(0) <= \categoria[0]~output_o\;

ww_categoria(1) <= \categoria[1]~output_o\;

ww_led_verde <= \led_verde~output_o\;

ww_led_rojo <= \led_rojo~output_o\;

ww_alarm <= \alarm~output_o\;
END structure;


