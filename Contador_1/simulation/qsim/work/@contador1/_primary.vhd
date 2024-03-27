library verilog;
use verilog.vl_types.all;
entity Contador1 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        Front_sensor    : in     vl_logic;
        vehicle_count   : out    vl_logic_vector(5 downto 0)
    );
end Contador1;
