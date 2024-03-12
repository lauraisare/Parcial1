library verilog;
use verilog.vl_types.all;
entity Controlador_semaforo is
    port(
        carril_cerrado  : in     vl_logic;
        semaforo_rojo   : out    vl_logic;
        semaforo_verde  : out    vl_logic
    );
end Controlador_semaforo;
