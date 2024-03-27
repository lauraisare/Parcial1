library verilog;
use verilog.vl_types.all;
entity Contador1_vlg_check_tst is
    port(
        vehicle_count   : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end Contador1_vlg_check_tst;
