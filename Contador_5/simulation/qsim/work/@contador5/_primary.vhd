library verilog;
use verilog.vl_types.all;
entity Contador5 is
    port(
        front_sensor    : in     vl_logic;
        back_sensor     : in     vl_logic;
        contador_out    : out    vl_logic_vector(6 downto 0)
    );
end Contador5;
