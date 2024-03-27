library verilog;
use verilog.vl_types.all;
entity Semaforo_salida_vlg_sample_tst is
    port(
        SemaforoSalida  : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Semaforo_salida_vlg_sample_tst;
