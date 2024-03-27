library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith;
use ieee.std_logic_unsigned;

entity PeajeCompleto is 
    port(  
        clk : in std_logic;
        reset : in std_logic;
        front_sensor : in std_logic;
        id_valida : in std_logic;
        identificacion : in std_logic_vector(4 downto 0);
        barrera_cerrada : in std_logic;
        carril_cerrado : in std_logic;
        Pago_out : in std_logic;
        back_sensor: in std_logic;
        semaforo_rojo_entrada : out std_logic;
        semaforo_verde_entrada : out std_logic;
        semaforo_rojo_salida : out std_logic;
        semaforo_verde_salida : out std_logic;
        barrera_inicial : out std_logic;
        barrera_final : out std_logic;
        led_verde : out std_logic;
        led_rojo : out std_logic;
        alarm : out std_logic;
		  categoria : out std_logic_vector(1 downto 0);
        tarifa : out std_logic_vector(2 downto 0);
        usuario_pagado : out std_logic;
		  semaforo_out : out std_logic;
        contador_vehiculo : out integer range 0 to 59;
        contador_out : out std_logic_vector(6 downto 0)
    );
end PeajeCompleto;

architecture PeajeCompleto_arch of PeajeCompleto is
  
    signal categoria_int : std_logic_vector(1 downto 0);
    signal semaforo_salida_int : std_logic;
	 signal contador_out_int : std_LOGIC_VECTOR(3 downto 0);
	 
component Controlador_semaforo
     port (

		  barrera_cerrada : in std_logic;
        carril_cerrado : in std_logic;
  
        semaforo_rojo : out std_logic;
        semaforo_verde : out std_logic
    );
end component;

component FrontSensor
    Port (
       
        clk : in std_logic; 
        reset : in std_logic;  
        front_sensor : in std_logic;  
        id_valida : in std_logic;  
        identificacion : in std_logic_vector(4 downto 0);  
        barrera_inicial : out std_logic; 
        barrera_final : out std_logic;  
        categoria : out std_logic_vector(1 downto 0);  
        led_verde : buffer std_logic; 
        led_rojo : buffer std_logic;  
        alarm : out std_logic  
    );
end component;

component Semaforo_salida
    port (
        -- Entrada de control del semáforo
		  SemaforoSalida : in std_logic;
       
        -- Salidas del semáforo
        semaforo_rojo : out std_logic;
        semaforo_verde : out std_logic
    );
end component;

component PagoPeaje 
    Port (
   
        Categoria : in std_logic_vector(1 downto 0); 
        Pago : in std_logic;
        Tarifa : out std_logic_vector(2 downto 0); 
        UsuarioPagado : out std_logic; 
		  SemaforoSalida : out std_logic 
    );
end component;

component Contador5 
    Port (
        front_sensor : in STD_LOGIC;
        back_sensor : in STD_LOGIC;
        contador_out : out STD_LOGIC_VECTOR(6 downto 0)  -- Salida para display de 7 segmentos
    );
end component;

component Contador1
    Port (
   
        reset : in STD_LOGIC;
        front_sensor : in STD_LOGIC;  -- Sensor delantero
        Contador_vehiculo : out INTEGER range 0 to 59
    );
end component;

component decoBCD 
	port
	(
		IA	: in std_logic_vector(3 downto 0);
		F:out std_logic_vector(6 downto 0));

end component;

  

begin

    Controlador : Controlador_semaforo
port map (
    barrera_cerrada => barrera_cerrada,
    carril_cerrado => carril_cerrado,
    semaforo_rojo => semaforo_rojo_entrada,
    semaforo_verde => semaforo_verde_entrada
);

Sensor : FrontSensor
port map (
    clk => clk,
    reset => reset,
    front_sensor => front_sensor,
    id_valida => id_valida,
    identificacion => identificacion,
    barrera_inicial => barrera_inicial,
    barrera_final => barrera_final,
    categoria => categoria_int,
    led_verde => led_verde,
    led_rojo => led_rojo,
    alarm => alarm
);

SemaforoSalida : Semaforo_salida
port map (
    SemaforoSalida => semaforo_salida_int,
    semaforo_rojo => semaforo_rojo_salida,
    semaforo_verde => semaforo_verde_salida
);

Pago : PagoPeaje
port map (
    Categoria => categoria_int,
    Pago => Pago_out,
    Tarifa => tarifa,
    UsuarioPagado => usuario_pagado,
    SemaforoSalida => semaforo_salida_int
);

Contador_5seg : Contador5
    port map (
        front_sensor => front_sensor,
        back_sensor => back_sensor,
		  contador_out => contador_out_int
   );
 
Contador_1min : Contador1
port map (
    reset => reset,
    front_sensor => front_sensor,
    Contador_vehiculo => contador_vehiculo
);

    contador_out <= contador_out_int;
    categoria <= categoria_int;
    semaforo_out <= semaforo_salida_int;
	 
	 A2: decoBCD port map (IA => contador_out_int, F=>contador_out); 
    

end PeajeCompleto_arch;
