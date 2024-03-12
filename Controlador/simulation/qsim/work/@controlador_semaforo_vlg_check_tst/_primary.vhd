library verilog;
use verilog.vl_types.all;
entity Controlador_semaforo_vlg_check_tst is
    port(
        semaforo_rojo   : in     vl_logic;
        semaforo_verde  : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Controlador_semaforo_vlg_check_tst;
