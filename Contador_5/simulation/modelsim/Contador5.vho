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

-- DATE "03/19/2024 13:19:16"

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

ENTITY 	Contador5 IS
    PORT (
	front_sensor : IN std_logic;
	back_sensor : IN std_logic;
	contador_out : OUT std_logic_vector(6 DOWNTO 0)
	);
END Contador5;

-- Design Ports Information
-- contador_out[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador_out[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador_out[2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador_out[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador_out[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador_out[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contador_out[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front_sensor	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- back_sensor	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_front_sensor : std_logic;
SIGNAL ww_back_sensor : std_logic;
SIGNAL ww_contador_out : std_logic_vector(6 DOWNTO 0);
SIGNAL \contador[1]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador_out[0]~output_o\ : std_logic;
SIGNAL \contador_out[1]~output_o\ : std_logic;
SIGNAL \contador_out[2]~output_o\ : std_logic;
SIGNAL \contador_out[3]~output_o\ : std_logic;
SIGNAL \contador_out[4]~output_o\ : std_logic;
SIGNAL \contador_out[5]~output_o\ : std_logic;
SIGNAL \contador_out[6]~output_o\ : std_logic;
SIGNAL \front_sensor~input_o\ : std_logic;
SIGNAL \back_sensor~input_o\ : std_logic;
SIGNAL \contador[1]~1_combout\ : std_logic;
SIGNAL \contador[1]~1clkctrl_outclk\ : std_logic;
SIGNAL \contador[0]~2_combout\ : std_logic;
SIGNAL \contador[1]~3_combout\ : std_logic;
SIGNAL \contador[2]~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL contador : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_front_sensor <= front_sensor;
ww_back_sensor <= back_sensor;
contador_out <= ww_contador_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\contador[1]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \contador[1]~1_combout\);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X19_Y0_N9
\contador_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \contador_out[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\contador_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \contador_out[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\contador_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \contador_out[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\contador_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \contador_out[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\contador_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \contador_out[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\contador_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \contador_out[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\contador_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \contador_out[6]~output_o\);

-- Location: IOIBUF_X19_Y0_N22
\front_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front_sensor,
	o => \front_sensor~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\back_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_back_sensor,
	o => \back_sensor~input_o\);

-- Location: LCCOMB_X20_Y1_N6
\contador[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~1_combout\ = (\front_sensor~input_o\) # (\back_sensor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \front_sensor~input_o\,
	datad => \back_sensor~input_o\,
	combout => \contador[1]~1_combout\);

-- Location: CLKCTRL_G17
\contador[1]~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \contador[1]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \contador[1]~1clkctrl_outclk\);

-- Location: LCCOMB_X20_Y1_N2
\contador[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~2_combout\ = (contador(0)) # (!\front_sensor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \front_sensor~input_o\,
	datad => contador(0),
	combout => \contador[0]~2_combout\);

-- Location: LCCOMB_X20_Y1_N28
\contador[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- contador(0) = (GLOBAL(\contador[1]~1clkctrl_outclk\) & ((!\contador[0]~2_combout\))) # (!GLOBAL(\contador[1]~1clkctrl_outclk\) & (contador(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datac => \contador[1]~1clkctrl_outclk\,
	datad => \contador[0]~2_combout\,
	combout => contador(0));

-- Location: LCCOMB_X20_Y1_N20
\contador[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~3_combout\ = (\front_sensor~input_o\ & (contador(0) $ (contador(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datac => contador(0),
	datad => contador(1),
	combout => \contador[1]~3_combout\);

-- Location: LCCOMB_X20_Y1_N10
\contador[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- contador(1) = (GLOBAL(\contador[1]~1clkctrl_outclk\) & ((\contador[1]~3_combout\))) # (!GLOBAL(\contador[1]~1clkctrl_outclk\) & (contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datac => \contador[1]~1clkctrl_outclk\,
	datad => \contador[1]~3_combout\,
	combout => contador(1));

-- Location: LCCOMB_X20_Y1_N16
\contador[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~0_combout\ = (\front_sensor~input_o\ & (contador(2) $ (((contador(0) & contador(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \front_sensor~input_o\,
	datab => contador(0),
	datac => contador(2),
	datad => contador(1),
	combout => \contador[2]~0_combout\);

-- Location: LCCOMB_X20_Y1_N14
\contador[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- contador(2) = (GLOBAL(\contador[1]~1clkctrl_outclk\) & ((\contador[2]~0_combout\))) # (!GLOBAL(\contador[1]~1clkctrl_outclk\) & (contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datac => \contador[1]~1clkctrl_outclk\,
	datad => \contador[2]~0_combout\,
	combout => contador(2));

-- Location: LCCOMB_X20_Y1_N30
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!contador(1) & (contador(2) $ (contador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(1),
	datad => contador(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X20_Y1_N22
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (contador(2) & contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datad => contador(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X20_Y1_N26
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (contador(1) & !contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(1),
	datad => contador(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X20_Y1_N12
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (contador(2)) # (contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datad => contador(0),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X20_Y1_N18
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (contador(1)) # ((!contador(2) & contador(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(1),
	datad => contador(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X20_Y1_N24
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (contador(1)) # (contador(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(1),
	datad => contador(2),
	combout => \Mux0~0_combout\);

ww_contador_out(0) <= \contador_out[0]~output_o\;

ww_contador_out(1) <= \contador_out[1]~output_o\;

ww_contador_out(2) <= \contador_out[2]~output_o\;

ww_contador_out(3) <= \contador_out[3]~output_o\;

ww_contador_out(4) <= \contador_out[4]~output_o\;

ww_contador_out(5) <= \contador_out[5]~output_o\;

ww_contador_out(6) <= \contador_out[6]~output_o\;
END structure;


