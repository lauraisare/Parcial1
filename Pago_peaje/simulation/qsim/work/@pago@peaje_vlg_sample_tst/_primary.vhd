library verilog;
use verilog.vl_types.all;
entity PagoPeaje_vlg_sample_tst is
    port(
        Categoria       : in     vl_logic_vector(1 downto 0);
        Pago            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end PagoPeaje_vlg_sample_tst;
