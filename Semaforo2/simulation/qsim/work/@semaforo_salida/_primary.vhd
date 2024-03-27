library verilog;
use verilog.vl_types.all;
entity Semaforo_salida is
    port(
        SemaforoSalida  : in     vl_logic;
        semaforo_rojo   : out    vl_logic;
        semaforo_verde  : out    vl_logic
    );
end Semaforo_salida;
