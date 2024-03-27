library verilog;
use verilog.vl_types.all;
entity Contador5_vlg_sample_tst is
    port(
        back_sensor     : in     vl_logic;
        front_sensor    : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Contador5_vlg_sample_tst;
