library verilog;
use verilog.vl_types.all;
entity Controlador_semaforo_vlg_sample_tst is
    port(
        barrera_cerrada : in     vl_logic;
        carril_cerrado  : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Controlador_semaforo_vlg_sample_tst;
