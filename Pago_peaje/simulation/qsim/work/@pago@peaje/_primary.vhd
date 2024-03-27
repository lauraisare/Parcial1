library verilog;
use verilog.vl_types.all;
entity PagoPeaje is
    port(
        Categoria       : in     vl_logic_vector(1 downto 0);
        Pago            : in     vl_logic;
        Tarifa          : out    vl_logic_vector(2 downto 0);
        UsuarioPagado   : out    vl_logic;
        SemaforoSalida  : out    vl_logic
    );
end PagoPeaje;
