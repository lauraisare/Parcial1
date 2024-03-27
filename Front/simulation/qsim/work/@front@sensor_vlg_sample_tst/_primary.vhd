library verilog;
use verilog.vl_types.all;
entity FrontSensor_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        front_sensor    : in     vl_logic;
        id_valida       : in     vl_logic;
        identificacion  : in     vl_logic_vector(4 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FrontSensor_vlg_sample_tst;
