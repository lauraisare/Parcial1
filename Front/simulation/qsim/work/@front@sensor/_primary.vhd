library verilog;
use verilog.vl_types.all;
entity FrontSensor is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        front_sensor    : in     vl_logic;
        id_valida       : in     vl_logic;
        identificacion  : in     vl_logic_vector(4 downto 0);
        barrera_inicial : out    vl_logic;
        barrera_final   : out    vl_logic;
        categoria       : out    vl_logic_vector(1 downto 0);
        led_verde       : out    vl_logic;
        led_rojo        : out    vl_logic;
        alarm           : out    vl_logic
    );
end FrontSensor;
