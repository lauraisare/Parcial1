library verilog;
use verilog.vl_types.all;
entity PagoPeaje_vlg_check_tst is
    port(
        SemaforoSalida  : in     vl_logic;
        Tarifa          : in     vl_logic_vector(2 downto 0);
        UsuarioPagado   : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end PagoPeaje_vlg_check_tst;
