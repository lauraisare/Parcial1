library verilog;
use verilog.vl_types.all;
entity FrontSensor_vlg_check_tst is
    port(
        alarm           : in     vl_logic;
        barrera_final   : in     vl_logic;
        barrera_inicial : in     vl_logic;
        categoria       : in     vl_logic_vector(1 downto 0);
        led_rojo        : in     vl_logic;
        led_verde       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FrontSensor_vlg_check_tst;
