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

-- DATE "03/19/2024 23:57:34"

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

ENTITY 	PeajeCompleto IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	front_sensor : IN std_logic;
	id_valida : IN std_logic;
	identificacion : IN std_logic_vector(4 DOWNTO 0);
	barrera_cerrada : IN std_logic;
	carril_cerrado : IN std_logic;
	Pago_out : IN std_logic;
	back_sensor : IN std_logic;
	semaforo_rojo_entrada : BUFFER std_logic;
	semaforo_verde_entrada : BUFFER std_logic;
	semaforo_rojo_salida : BUFFER std_logic;
	semaforo_verde_salida : BUFFER std_logic;
	barrera_inicial : BUFFER std_logic;
	barrera_final : BUFFER std_logic;
	led_verde : BUFFER std_logic;
	led_rojo : BUFFER std_logic;
	alarm : BUFFER std_logic;
	categoria : BUFFER std_logic_vector(1 DOWNTO 0);
	tarifa : BUFFER std_logic_vector(2 DOWNTO 0);
	usuario_pagado : BUFFER std_logic;
	semaforo_out : BUFFER std_logic;
	contador_vehiculo : BUFFER std_logic_vector(5 DOWNTO 0);
	display_salida : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END PeajeCompleto;

-- Design Ports Information
-- identificacion[0]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[3]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_rojo_entrada	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_verde_entrada	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_rojo_salida	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_verde_salida	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_inicial	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_final	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_verde	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_rojo	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarm	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- categoria[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tarifa[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- usuario_pagado	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_out	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador_vehiculo[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador_vehiculo[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador_vehiculo[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador_vehiculo[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador_vehiculo[4]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador_vehiculo[5]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_salida[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_salida[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_salida[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_salida[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_salida[4]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_salida[5]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_salida[6]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_cerrada	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carril_cerrado	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pago_out	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- id_valida	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front_sensor	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[1]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- identificacion[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PeajeCompleto IS
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
SIGNAL ww_barrera_cerrada : std_logic;
SIGNAL ww_carril_cerrado : std_logic;
SIGNAL ww_Pago_out : std_logic;
SIGNAL ww_back_sensor : std_logic;
SIGNAL ww_semaforo_rojo_entrada : std_logic;
SIGNAL ww_semaforo_verde_entrada : std_logic;
SIGNAL ww_semaforo_rojo_salida : std_logic;
SIGNAL ww_semaforo_verde_salida : std_logic;
SIGNAL ww_barrera_inicial : std_logic;
SIGNAL ww_barrera_final : std_logic;
SIGNAL ww_led_verde : std_logic;
SIGNAL ww_led_rojo : std_logic;
SIGNAL ww_alarm : std_logic;
SIGNAL ww_categoria : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_tarifa : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_usuario_pagado : std_logic;
SIGNAL ww_semaforo_out : std_logic;
SIGNAL ww_contador_vehiculo : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_display_salida : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Contador_1min|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Contador_5seg|contador[1]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \identificacion[0]~input_o\ : std_logic;
SIGNAL \identificacion[3]~input_o\ : std_logic;
SIGNAL \identificacion[4]~input_o\ : std_logic;
SIGNAL \semaforo_rojo_entrada~output_o\ : std_logic;
SIGNAL \semaforo_verde_entrada~output_o\ : std_logic;
SIGNAL \semaforo_rojo_salida~output_o\ : std_logic;
SIGNAL \semaforo_verde_salida~output_o\ : std_logic;
SIGNAL \barrera_inicial~output_o\ : std_logic;
SIGNAL \barrera_final~output_o\ : std_logic;
SIGNAL \led_verde~output_o\ : std_logic;
SIGNAL \led_rojo~output_o\ : std_logic;
SIGNAL \alarm~output_o\ : std_logic;
SIGNAL \categoria[0]~output_o\ : std_logic;
SIGNAL \categoria[1]~output_o\ : std_logic;
SIGNAL \tarifa[0]~output_o\ : std_logic;
SIGNAL \tarifa[1]~output_o\ : std_logic;
SIGNAL \tarifa[2]~output_o\ : std_logic;
SIGNAL \usuario_pagado~output_o\ : std_logic;
SIGNAL \semaforo_out~output_o\ : std_logic;
SIGNAL \contador_vehiculo[0]~output_o\ : std_logic;
SIGNAL \contador_vehiculo[1]~output_o\ : std_logic;
SIGNAL \contador_vehiculo[2]~output_o\ : std_logic;
SIGNAL \contador_vehiculo[3]~output_o\ : std_logic;
SIGNAL \contador_vehiculo[4]~output_o\ : std_logic;
SIGNAL \contador_vehiculo[5]~output_o\ : std_logic;
SIGNAL \display_salida[0]~output_o\ : std_logic;
SIGNAL \display_salida[1]~output_o\ : std_logic;
SIGNAL \display_salida[2]~output_o\ : std_logic;
SIGNAL \display_salida[3]~output_o\ : std_logic;
SIGNAL \display_salida[4]~output_o\ : std_logic;
SIGNAL \display_salida[5]~output_o\ : std_logic;
SIGNAL \display_salida[6]~output_o\ : std_logic;
SIGNAL \carril_cerrado~input_o\ : std_logic;
SIGNAL \barrera_cerrada~input_o\ : std_logic;
SIGNAL \Controlador|semaforo_rojo~combout\ : std_logic;
SIGNAL \Pago_out~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Sensor|barrera_inicial~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \id_valida~input_o\ : std_logic;
SIGNAL \Sensor|alarm~0_combout\ : std_logic;
SIGNAL \Sensor|vehiculo_detectado~q\ : std_logic;
SIGNAL \Sensor|barrera_inicial~0_combout\ : std_logic;
SIGNAL \Sensor|barrera_inicial~q\ : std_logic;
SIGNAL \front_sensor~input_o\ : std_logic;
SIGNAL \Sensor|barrera_final~0_combout\ : std_logic;
SIGNAL \Sensor|barrera_final~feeder_combout\ : std_logic;
SIGNAL \Sensor|barrera_final~q\ : std_logic;
SIGNAL \Sensor|led_verde~0_combout\ : std_logic;
SIGNAL \Sensor|led_verde~q\ : std_logic;
SIGNAL \Sensor|intentos[0]~0_combout\ : std_logic;
SIGNAL \Sensor|intentos[1]~1_combout\ : std_logic;
SIGNAL \Sensor|alarm~1_combout\ : std_logic;
SIGNAL \Sensor|alarm~q\ : std_logic;
SIGNAL \identificacion[1]~input_o\ : std_logic;
SIGNAL \identificacion[2]~input_o\ : std_logic;
SIGNAL \Pago|Tarifa[0]~0_combout\ : std_logic;
SIGNAL \Pago|Tarifa[1]~1_combout\ : std_logic;
SIGNAL \Pago|Tarifa[2]~2_combout\ : std_logic;
SIGNAL \Contador_1min|comb~0_combout\ : std_logic;
SIGNAL \Contador_1min|process_0~0_combout\ : std_logic;
SIGNAL \Contador_1min|vehiculo_detectado~combout\ : std_logic;
SIGNAL \Contador_1min|counter[0]~0_combout\ : std_logic;
SIGNAL \Contador_1min|Add0~0_combout\ : std_logic;
SIGNAL \Contador_1min|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Contador_1min|Add0~1\ : std_logic;
SIGNAL \Contador_1min|Add0~2_combout\ : std_logic;
SIGNAL \Contador_1min|Add0~3\ : std_logic;
SIGNAL \Contador_1min|Add0~4_combout\ : std_logic;
SIGNAL \Contador_1min|Add0~5\ : std_logic;
SIGNAL \Contador_1min|Add0~6_combout\ : std_logic;
SIGNAL \Contador_1min|Add0~7\ : std_logic;
SIGNAL \Contador_1min|Add0~8_combout\ : std_logic;
SIGNAL \back_sensor~input_o\ : std_logic;
SIGNAL \Contador_5seg|contador[1]~1_combout\ : std_logic;
SIGNAL \Contador_5seg|contador[1]~1clkctrl_outclk\ : std_logic;
SIGNAL \Contador_5seg|contador[0]~2_combout\ : std_logic;
SIGNAL \Contador_5seg|contador[1]~3_combout\ : std_logic;
SIGNAL \Contador_5seg|contador[2]~0_combout\ : std_logic;
SIGNAL \Contador_5seg|Mux6~0_combout\ : std_logic;
SIGNAL \Contador_5seg|Mux2~0_combout\ : std_logic;
SIGNAL \Contador_5seg|Mux4~0_combout\ : std_logic;
SIGNAL \Contador_5seg|Mux2~1_combout\ : std_logic;
SIGNAL \Contador_5seg|Mux1~0_combout\ : std_logic;
SIGNAL \Contador_5seg|Mux0~0_combout\ : std_logic;
SIGNAL \Contador_1min|counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Contador_5seg|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Sensor|categoria\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Sensor|intentos\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Contador_5seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Controlador|ALT_INV_semaforo_rojo~combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Pago_out~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_front_sensor <= front_sensor;
ww_id_valida <= id_valida;
ww_identificacion <= identificacion;
ww_barrera_cerrada <= barrera_cerrada;
ww_carril_cerrado <= carril_cerrado;
ww_Pago_out <= Pago_out;
ww_back_sensor <= back_sensor;
semaforo_rojo_entrada <= ww_semaforo_rojo_entrada;
semaforo_verde_entrada <= ww_semaforo_verde_entrada;
semaforo_rojo_salida <= ww_semaforo_rojo_salida;
semaforo_verde_salida <= ww_semaforo_verde_salida;
barrera_inicial <= ww_barrera_inicial;
barrera_final <= ww_barrera_final;
led_verde <= ww_led_verde;
led_rojo <= ww_led_rojo;
alarm <= ww_alarm;
categoria <= ww_categoria;
tarifa <= ww_tarifa;
usuario_pagado <= ww_usuario_pagado;
semaforo_out <= ww_semaforo_out;
contador_vehiculo <= ww_contador_vehiculo;
display_salida <= ww_display_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\Contador_1min|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Contador_1min|process_0~0_combout\);

\Contador_5seg|contador[1]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Contador_5seg|contador[1]~1_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\Contador_5seg|ALT_INV_Mux0~0_combout\ <= NOT \Contador_5seg|Mux0~0_combout\;
\Controlador|ALT_INV_semaforo_rojo~combout\ <= NOT \Controlador|semaforo_rojo~combout\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_Pago_out~input_o\ <= NOT \Pago_out~input_o\;

-- Location: IOOBUF_X0_Y4_N23
\semaforo_rojo_entrada~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controlador|semaforo_rojo~combout\,
	devoe => ww_devoe,
	o => \semaforo_rojo_entrada~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\semaforo_verde_entrada~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Controlador|ALT_INV_semaforo_rojo~combout\,
	devoe => ww_devoe,
	o => \semaforo_verde_entrada~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\semaforo_rojo_salida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Pago_out~input_o\,
	devoe => ww_devoe,
	o => \semaforo_rojo_salida~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\semaforo_verde_salida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Pago_out~input_o\,
	devoe => ww_devoe,
	o => \semaforo_verde_salida~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\barrera_inicial~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor|barrera_inicial~q\,
	devoe => ww_devoe,
	o => \barrera_inicial~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\barrera_final~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor|barrera_final~q\,
	devoe => ww_devoe,
	o => \barrera_final~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\led_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor|led_verde~q\,
	devoe => ww_devoe,
	o => \led_verde~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\led_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor|intentos\(0),
	devoe => ww_devoe,
	o => \led_rojo~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\alarm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor|alarm~q\,
	devoe => ww_devoe,
	o => \alarm~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\categoria[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor|categoria\(0),
	devoe => ww_devoe,
	o => \categoria[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\categoria[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sensor|categoria\(1),
	devoe => ww_devoe,
	o => \categoria[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\tarifa[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Pago|Tarifa[0]~0_combout\,
	devoe => ww_devoe,
	o => \tarifa[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\tarifa[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Pago|Tarifa[1]~1_combout\,
	devoe => ww_devoe,
	o => \tarifa[1]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\tarifa[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Pago|Tarifa[2]~2_combout\,
	devoe => ww_devoe,
	o => \tarifa[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\usuario_pagado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Pago_out~input_o\,
	devoe => ww_devoe,
	o => \usuario_pagado~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\semaforo_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Pago_out~input_o\,
	devoe => ww_devoe,
	o => \semaforo_out~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\contador_vehiculo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_1min|counter[0]~0_combout\,
	devoe => ww_devoe,
	o => \contador_vehiculo[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\contador_vehiculo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_1min|counter\(1),
	devoe => ww_devoe,
	o => \contador_vehiculo[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\contador_vehiculo[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_1min|counter\(2),
	devoe => ww_devoe,
	o => \contador_vehiculo[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\contador_vehiculo[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_1min|counter\(3),
	devoe => ww_devoe,
	o => \contador_vehiculo[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\contador_vehiculo[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_1min|counter\(4),
	devoe => ww_devoe,
	o => \contador_vehiculo[4]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\contador_vehiculo[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_1min|counter\(5),
	devoe => ww_devoe,
	o => \contador_vehiculo[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\display_salida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_5seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display_salida[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\display_salida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_5seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display_salida[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\display_salida[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_5seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display_salida[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\display_salida[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_5seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display_salida[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\display_salida[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_5seg|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \display_salida[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\display_salida[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_5seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display_salida[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\display_salida[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Contador_5seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display_salida[6]~output_o\);

-- Location: IOIBUF_X0_Y3_N1
\carril_cerrado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carril_cerrado,
	o => \carril_cerrado~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\barrera_cerrada~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barrera_cerrada,
	o => \barrera_cerrada~input_o\);

-- Location: LCCOMB_X1_Y3_N0
\Controlador|semaforo_rojo\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controlador|semaforo_rojo~combout\ = (\carril_cerrado~input_o\) # (\barrera_cerrada~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \carril_cerrado~input_o\,
	datad => \barrera_cerrada~input_o\,
	combout => \Controlador|semaforo_rojo~combout\);

-- Location: IOIBUF_X0_Y27_N22
\Pago_out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pago_out,
	o => \Pago_out~input_o\);

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

-- Location: LCCOMB_X1_Y24_N20
\Sensor|barrera_inicial~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sensor|barrera_inicial~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Sensor|barrera_inicial~feeder_combout\);

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

-- Location: IOIBUF_X0_Y25_N1
\id_valida~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_id_valida,
	o => \id_valida~input_o\);

-- Location: LCCOMB_X1_Y24_N24
\Sensor|alarm~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sensor|alarm~0_combout\ = (\id_valida~input_o\) # (\Sensor|vehiculo_detectado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \id_valida~input_o\,
	datad => \Sensor|vehiculo_detectado~q\,
	combout => \Sensor|alarm~0_combout\);

-- Location: FF_X1_Y24_N7
\Sensor|vehiculo_detectado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Sensor|alarm~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sensor|vehiculo_detectado~q\);

-- Location: LCCOMB_X1_Y24_N30
\Sensor|barrera_inicial~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sensor|barrera_inicial~0_combout\ = (\id_valida~input_o\ & !\Sensor|vehiculo_detectado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_valida~input_o\,
	datad => \Sensor|vehiculo_detectado~q\,
	combout => \Sensor|barrera_inicial~0_combout\);

-- Location: FF_X1_Y24_N21
\Sensor|barrera_inicial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Sensor|barrera_inicial~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Sensor|barrera_inicial~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sensor|barrera_inicial~q\);

-- Location: IOIBUF_X0_Y24_N22
\front_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front_sensor,
	o => \front_sensor~input_o\);

-- Location: LCCOMB_X1_Y24_N28
\Sensor|barrera_final~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sensor|barrera_final~0_combout\ = (\Sensor|barrera_final~q\) # ((\Sensor|vehiculo_detectado~q\ & \front_sensor~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor|vehiculo_detectado~q\,
	datab => \front_sensor~input_o\,
	datad => \Sensor|barrera_final~q\,
	combout => \Sensor|barrera_final~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\Sensor|barrera_final~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sensor|barrera_final~feeder_combout\ = \Sensor|barrera_final~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Sensor|barrera_final~0_combout\,
	combout => \Sensor|barrera_final~feeder_combout\);

-- Location: FF_X1_Y24_N11
\Sensor|barrera_final\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Sensor|barrera_final~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sensor|barrera_final~q\);

-- Location: LCCOMB_X1_Y24_N12
\Sensor|led_verde~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sensor|led_verde~0_combout\ = !\Sensor|led_verde~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sensor|led_verde~q\,
	combout => \Sensor|led_verde~0_combout\);

-- Location: FF_X1_Y24_N13
\Sensor|led_verde\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Sensor|led_verde~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Sensor|barrera_inicial~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sensor|led_verde~q\);

-- Location: LCCOMB_X1_Y24_N22
\Sensor|intentos[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sensor|intentos[0]~0_combout\ = \Sensor|intentos\(0) $ (((!\id_valida~input_o\ & !\Sensor|vehiculo_detectado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id_valida~input_o\,
	datac => \Sensor|intentos\(0),
	datad => \Sensor|vehiculo_detectado~q\,
	combout => \Sensor|intentos[0]~0_combout\);

-- Location: FF_X1_Y24_N23
\Sensor|intentos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Sensor|intentos[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sensor|intentos\(0));

-- Location: LCCOMB_X1_Y24_N18
\Sensor|intentos[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sensor|intentos[1]~1_combout\ = \Sensor|intentos\(1) $ (((\Sensor|intentos\(0) & (!\id_valida~input_o\ & !\Sensor|vehiculo_detectado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor|intentos\(0),
	datab => \id_valida~input_o\,
	datac => \Sensor|intentos\(1),
	datad => \Sensor|vehiculo_detectado~q\,
	combout => \Sensor|intentos[1]~1_combout\);

-- Location: FF_X1_Y24_N19
\Sensor|intentos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Sensor|intentos[1]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sensor|intentos\(1));

-- Location: LCCOMB_X1_Y24_N16
\Sensor|alarm~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sensor|alarm~1_combout\ = (\Sensor|alarm~q\) # ((\Sensor|intentos\(0) & (\Sensor|intentos\(1) & !\Sensor|alarm~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor|intentos\(0),
	datab => \Sensor|intentos\(1),
	datac => \Sensor|alarm~q\,
	datad => \Sensor|alarm~0_combout\,
	combout => \Sensor|alarm~1_combout\);

-- Location: FF_X1_Y24_N17
\Sensor|alarm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Sensor|alarm~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sensor|alarm~q\);

-- Location: IOIBUF_X0_Y24_N1
\identificacion[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(1),
	o => \identificacion[1]~input_o\);

-- Location: FF_X1_Y24_N31
\Sensor|categoria[0]\ : dffeas
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
	ena => \Sensor|barrera_inicial~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sensor|categoria\(0));

-- Location: IOIBUF_X0_Y24_N15
\identificacion[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(2),
	o => \identificacion[2]~input_o\);

-- Location: FF_X1_Y24_N29
\Sensor|categoria[1]\ : dffeas
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
	ena => \Sensor|barrera_inicial~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sensor|categoria\(1));

-- Location: LCCOMB_X1_Y24_N6
\Pago|Tarifa[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Pago|Tarifa[0]~0_combout\ = (\Sensor|categoria\(0) & (\Pago_out~input_o\ & !\Sensor|categoria\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sensor|categoria\(0),
	datab => \Pago_out~input_o\,
	datad => \Sensor|categoria\(1),
	combout => \Pago|Tarifa[0]~0_combout\);

-- Location: LCCOMB_X1_Y24_N8
\Pago|Tarifa[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Pago|Tarifa[1]~1_combout\ = (!\Sensor|categoria\(0) & (\Pago_out~input_o\ & \Sensor|categoria\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sensor|categoria\(0),
	datac => \Pago_out~input_o\,
	datad => \Sensor|categoria\(1),
	combout => \Pago|Tarifa[1]~1_combout\);

-- Location: LCCOMB_X1_Y24_N14
\Pago|Tarifa[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Pago|Tarifa[2]~2_combout\ = (\Sensor|categoria\(0) & (\Pago_out~input_o\ & \Sensor|categoria\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sensor|categoria\(0),
	datac => \Pago_out~input_o\,
	datad => \Sensor|categoria\(1),
	combout => \Pago|Tarifa[2]~2_combout\);

-- Location: LCCOMB_X1_Y14_N0
\Contador_1min|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|comb~0_combout\ = (\reset~input_o\) # (!\front_sensor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datad => \reset~input_o\,
	combout => \Contador_1min|comb~0_combout\);

-- Location: LCCOMB_X1_Y14_N28
\Contador_1min|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|process_0~0_combout\ = (\front_sensor~input_o\ & !\Contador_1min|vehiculo_detectado~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \front_sensor~input_o\,
	datad => \Contador_1min|vehiculo_detectado~combout\,
	combout => \Contador_1min|process_0~0_combout\);

-- Location: LCCOMB_X1_Y14_N2
\Contador_1min|vehiculo_detectado\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|vehiculo_detectado~combout\ = (!\Contador_1min|comb~0_combout\ & ((\Contador_1min|process_0~0_combout\) # (\Contador_1min|vehiculo_detectado~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Contador_1min|comb~0_combout\,
	datac => \Contador_1min|process_0~0_combout\,
	datad => \Contador_1min|vehiculo_detectado~combout\,
	combout => \Contador_1min|vehiculo_detectado~combout\);

-- Location: LCCOMB_X1_Y22_N16
\Contador_1min|counter[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|counter[0]~0_combout\ = (!\reset~input_o\ & (\Contador_1min|counter[0]~0_combout\ $ (((!\Contador_1min|vehiculo_detectado~combout\ & \front_sensor~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Contador_1min|vehiculo_detectado~combout\,
	datac => \Contador_1min|counter[0]~0_combout\,
	datad => \front_sensor~input_o\,
	combout => \Contador_1min|counter[0]~0_combout\);

-- Location: LCCOMB_X1_Y22_N18
\Contador_1min|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|Add0~0_combout\ = (\Contador_1min|counter\(1) & (\Contador_1min|counter[0]~0_combout\ $ (VCC))) # (!\Contador_1min|counter\(1) & (\Contador_1min|counter[0]~0_combout\ & VCC))
-- \Contador_1min|Add0~1\ = CARRY((\Contador_1min|counter\(1) & \Contador_1min|counter[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_1min|counter\(1),
	datab => \Contador_1min|counter[0]~0_combout\,
	datad => VCC,
	combout => \Contador_1min|Add0~0_combout\,
	cout => \Contador_1min|Add0~1\);

-- Location: CLKCTRL_G1
\Contador_1min|process_0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Contador_1min|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Contador_1min|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y22_N30
\Contador_1min|counter[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|counter\(1) = (!\reset~input_o\ & ((GLOBAL(\Contador_1min|process_0~0clkctrl_outclk\) & (\Contador_1min|Add0~0_combout\)) # (!GLOBAL(\Contador_1min|process_0~0clkctrl_outclk\) & ((\Contador_1min|counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Contador_1min|Add0~0_combout\,
	datac => \Contador_1min|counter\(1),
	datad => \Contador_1min|process_0~0clkctrl_outclk\,
	combout => \Contador_1min|counter\(1));

-- Location: LCCOMB_X1_Y22_N20
\Contador_1min|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|Add0~2_combout\ = (\Contador_1min|counter\(2) & (!\Contador_1min|Add0~1\)) # (!\Contador_1min|counter\(2) & ((\Contador_1min|Add0~1\) # (GND)))
-- \Contador_1min|Add0~3\ = CARRY((!\Contador_1min|Add0~1\) # (!\Contador_1min|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_1min|counter\(2),
	datad => VCC,
	cin => \Contador_1min|Add0~1\,
	combout => \Contador_1min|Add0~2_combout\,
	cout => \Contador_1min|Add0~3\);

-- Location: LCCOMB_X1_Y22_N12
\Contador_1min|counter[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|counter\(2) = (!\reset~input_o\ & ((GLOBAL(\Contador_1min|process_0~0clkctrl_outclk\) & (\Contador_1min|Add0~2_combout\)) # (!GLOBAL(\Contador_1min|process_0~0clkctrl_outclk\) & ((\Contador_1min|counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Contador_1min|Add0~2_combout\,
	datac => \Contador_1min|counter\(2),
	datad => \Contador_1min|process_0~0clkctrl_outclk\,
	combout => \Contador_1min|counter\(2));

-- Location: LCCOMB_X1_Y22_N22
\Contador_1min|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|Add0~4_combout\ = (\Contador_1min|counter\(3) & (\Contador_1min|Add0~3\ $ (GND))) # (!\Contador_1min|counter\(3) & (!\Contador_1min|Add0~3\ & VCC))
-- \Contador_1min|Add0~5\ = CARRY((\Contador_1min|counter\(3) & !\Contador_1min|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador_1min|counter\(3),
	datad => VCC,
	cin => \Contador_1min|Add0~3\,
	combout => \Contador_1min|Add0~4_combout\,
	cout => \Contador_1min|Add0~5\);

-- Location: LCCOMB_X1_Y22_N2
\Contador_1min|counter[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|counter\(3) = (!\reset~input_o\ & ((GLOBAL(\Contador_1min|process_0~0clkctrl_outclk\) & (\Contador_1min|Add0~4_combout\)) # (!GLOBAL(\Contador_1min|process_0~0clkctrl_outclk\) & ((\Contador_1min|counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_1min|Add0~4_combout\,
	datab => \Contador_1min|counter\(3),
	datac => \reset~input_o\,
	datad => \Contador_1min|process_0~0clkctrl_outclk\,
	combout => \Contador_1min|counter\(3));

-- Location: LCCOMB_X1_Y22_N24
\Contador_1min|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|Add0~6_combout\ = (\Contador_1min|counter\(4) & (!\Contador_1min|Add0~5\)) # (!\Contador_1min|counter\(4) & ((\Contador_1min|Add0~5\) # (GND)))
-- \Contador_1min|Add0~7\ = CARRY((!\Contador_1min|Add0~5\) # (!\Contador_1min|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador_1min|counter\(4),
	datad => VCC,
	cin => \Contador_1min|Add0~5\,
	combout => \Contador_1min|Add0~6_combout\,
	cout => \Contador_1min|Add0~7\);

-- Location: LCCOMB_X1_Y22_N28
\Contador_1min|counter[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|counter\(4) = (!\reset~input_o\ & ((GLOBAL(\Contador_1min|process_0~0clkctrl_outclk\) & (\Contador_1min|Add0~6_combout\)) # (!GLOBAL(\Contador_1min|process_0~0clkctrl_outclk\) & ((\Contador_1min|counter\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Contador_1min|Add0~6_combout\,
	datac => \Contador_1min|counter\(4),
	datad => \Contador_1min|process_0~0clkctrl_outclk\,
	combout => \Contador_1min|counter\(4));

-- Location: LCCOMB_X1_Y22_N26
\Contador_1min|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|Add0~8_combout\ = \Contador_1min|counter\(5) $ (!\Contador_1min|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Contador_1min|counter\(5),
	cin => \Contador_1min|Add0~7\,
	combout => \Contador_1min|Add0~8_combout\);

-- Location: LCCOMB_X1_Y22_N14
\Contador_1min|counter[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_1min|counter\(5) = (!\reset~input_o\ & ((GLOBAL(\Contador_1min|process_0~0clkctrl_outclk\) & ((\Contador_1min|Add0~8_combout\))) # (!GLOBAL(\Contador_1min|process_0~0clkctrl_outclk\) & (\Contador_1min|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Contador_1min|counter\(5),
	datac => \Contador_1min|Add0~8_combout\,
	datad => \Contador_1min|process_0~0clkctrl_outclk\,
	combout => \Contador_1min|counter\(5));

-- Location: IOIBUF_X0_Y12_N22
\back_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_back_sensor,
	o => \back_sensor~input_o\);

-- Location: LCCOMB_X1_Y14_N14
\Contador_5seg|contador[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|contador[1]~1_combout\ = (\front_sensor~input_o\) # (\back_sensor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \front_sensor~input_o\,
	datad => \back_sensor~input_o\,
	combout => \Contador_5seg|contador[1]~1_combout\);

-- Location: CLKCTRL_G0
\Contador_5seg|contador[1]~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Contador_5seg|contador[1]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Contador_5seg|contador[1]~1clkctrl_outclk\);

-- Location: LCCOMB_X1_Y21_N2
\Contador_5seg|contador[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|contador[0]~2_combout\ = (\Contador_5seg|contador\(0)) # (!\front_sensor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \front_sensor~input_o\,
	datad => \Contador_5seg|contador\(0),
	combout => \Contador_5seg|contador[0]~2_combout\);

-- Location: LCCOMB_X1_Y21_N20
\Contador_5seg|contador[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|contador\(0) = (GLOBAL(\Contador_5seg|contador[1]~1clkctrl_outclk\) & ((!\Contador_5seg|contador[0]~2_combout\))) # (!GLOBAL(\Contador_5seg|contador[1]~1clkctrl_outclk\) & (\Contador_5seg|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_5seg|contador\(0),
	datac => \Contador_5seg|contador[1]~1clkctrl_outclk\,
	datad => \Contador_5seg|contador[0]~2_combout\,
	combout => \Contador_5seg|contador\(0));

-- Location: LCCOMB_X1_Y21_N12
\Contador_5seg|contador[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|contador[1]~3_combout\ = (\front_sensor~input_o\ & (\Contador_5seg|contador\(0) $ (\Contador_5seg|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datac => \Contador_5seg|contador\(0),
	datad => \Contador_5seg|contador\(1),
	combout => \Contador_5seg|contador[1]~3_combout\);

-- Location: LCCOMB_X1_Y21_N18
\Contador_5seg|contador[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|contador\(1) = (GLOBAL(\Contador_5seg|contador[1]~1clkctrl_outclk\) & ((\Contador_5seg|contador[1]~3_combout\))) # (!GLOBAL(\Contador_5seg|contador[1]~1clkctrl_outclk\) & (\Contador_5seg|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Contador_5seg|contador\(1),
	datac => \Contador_5seg|contador[1]~1clkctrl_outclk\,
	datad => \Contador_5seg|contador[1]~3_combout\,
	combout => \Contador_5seg|contador\(1));

-- Location: LCCOMB_X1_Y21_N24
\Contador_5seg|contador[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|contador[2]~0_combout\ = (\front_sensor~input_o\ & (\Contador_5seg|contador\(2) $ (((\Contador_5seg|contador\(0) & \Contador_5seg|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datab => \Contador_5seg|contador\(0),
	datac => \Contador_5seg|contador\(2),
	datad => \Contador_5seg|contador\(1),
	combout => \Contador_5seg|contador[2]~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
\Contador_5seg|contador[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|contador\(2) = (GLOBAL(\Contador_5seg|contador[1]~1clkctrl_outclk\) & ((\Contador_5seg|contador[2]~0_combout\))) # (!GLOBAL(\Contador_5seg|contador[1]~1clkctrl_outclk\) & (\Contador_5seg|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_5seg|contador\(2),
	datac => \Contador_5seg|contador[1]~1clkctrl_outclk\,
	datad => \Contador_5seg|contador[2]~0_combout\,
	combout => \Contador_5seg|contador\(2));

-- Location: LCCOMB_X1_Y21_N28
\Contador_5seg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|Mux6~0_combout\ = (!\Contador_5seg|contador\(1) & (\Contador_5seg|contador\(0) $ (\Contador_5seg|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_5seg|contador\(0),
	datab => \Contador_5seg|contador\(2),
	datac => \Contador_5seg|contador\(1),
	combout => \Contador_5seg|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y21_N14
\Contador_5seg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|Mux2~0_combout\ = (\Contador_5seg|contador\(2) & \Contador_5seg|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Contador_5seg|contador\(2),
	datac => \Contador_5seg|contador\(0),
	combout => \Contador_5seg|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y21_N0
\Contador_5seg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|Mux4~0_combout\ = (!\Contador_5seg|contador\(0) & \Contador_5seg|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_5seg|contador\(0),
	datac => \Contador_5seg|contador\(1),
	combout => \Contador_5seg|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y21_N10
\Contador_5seg|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|Mux2~1_combout\ = (\Contador_5seg|contador\(2)) # (\Contador_5seg|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Contador_5seg|contador\(2),
	datac => \Contador_5seg|contador\(0),
	combout => \Contador_5seg|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y21_N16
\Contador_5seg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|Mux1~0_combout\ = (\Contador_5seg|contador\(1)) # ((\Contador_5seg|contador\(0) & !\Contador_5seg|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Contador_5seg|contador\(0),
	datab => \Contador_5seg|contador\(2),
	datac => \Contador_5seg|contador\(1),
	combout => \Contador_5seg|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y21_N30
\Contador_5seg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Contador_5seg|Mux0~0_combout\ = (\Contador_5seg|contador\(1)) # (\Contador_5seg|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Contador_5seg|contador\(1),
	datad => \Contador_5seg|contador\(2),
	combout => \Contador_5seg|Mux0~0_combout\);

-- Location: IOIBUF_X37_Y29_N29
\identificacion[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(0),
	o => \identificacion[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\identificacion[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(3),
	o => \identificacion[3]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\identificacion[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_identificacion(4),
	o => \identificacion[4]~input_o\);

ww_semaforo_rojo_entrada <= \semaforo_rojo_entrada~output_o\;

ww_semaforo_verde_entrada <= \semaforo_verde_entrada~output_o\;

ww_semaforo_rojo_salida <= \semaforo_rojo_salida~output_o\;

ww_semaforo_verde_salida <= \semaforo_verde_salida~output_o\;

ww_barrera_inicial <= \barrera_inicial~output_o\;

ww_barrera_final <= \barrera_final~output_o\;

ww_led_verde <= \led_verde~output_o\;

ww_led_rojo <= \led_rojo~output_o\;

ww_alarm <= \alarm~output_o\;

ww_categoria(0) <= \categoria[0]~output_o\;

ww_categoria(1) <= \categoria[1]~output_o\;

ww_tarifa(0) <= \tarifa[0]~output_o\;

ww_tarifa(1) <= \tarifa[1]~output_o\;

ww_tarifa(2) <= \tarifa[2]~output_o\;

ww_usuario_pagado <= \usuario_pagado~output_o\;

ww_semaforo_out <= \semaforo_out~output_o\;

ww_contador_vehiculo(0) <= \contador_vehiculo[0]~output_o\;

ww_contador_vehiculo(1) <= \contador_vehiculo[1]~output_o\;

ww_contador_vehiculo(2) <= \contador_vehiculo[2]~output_o\;

ww_contador_vehiculo(3) <= \contador_vehiculo[3]~output_o\;

ww_contador_vehiculo(4) <= \contador_vehiculo[4]~output_o\;

ww_contador_vehiculo(5) <= \contador_vehiculo[5]~output_o\;

ww_display_salida(0) <= \display_salida[0]~output_o\;

ww_display_salida(1) <= \display_salida[1]~output_o\;

ww_display_salida(2) <= \display_salida[2]~output_o\;

ww_display_salida(3) <= \display_salida[3]~output_o\;

ww_display_salida(4) <= \display_salida[4]~output_o\;

ww_display_salida(5) <= \display_salida[5]~output_o\;

ww_display_salida(6) <= \display_salida[6]~output_o\;
END structure;


