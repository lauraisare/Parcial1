library IEEE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Contador5 is
    Port (
        front_sensor : in STD_LOGIC;
        back_sensor : in STD_LOGIC;
        contador_out : out STD_LOGIC_VECTOR(6 downto 0)  -- Salida para display de 7 segmentos
    );
end Contador5;

architecture Contador5_arch of Contador5 is
    signal contador : INTEGER range 0 to 5 := 0;
    signal display_segments : STD_LOGIC_VECTOR(6 downto 0);  
begin
    proceso_contador: process(front_sensor, back_sensor)
    begin
        if front_sensor = '1' then
            contador <= contador + 1;
        elsif back_sensor = '1' then
            contador <= 0;
        end if;
    end process proceso_contador;

  
    process (contador)
    begin
        case contador is
            when 0 => display_segments <= "1000000";  -- 0
            when 1 => display_segments <= "1111001";  -- 1
            when 2 => display_segments <= "0100100";  -- 2
            when 3 => display_segments <= "0110000";  -- 3
            when 4 => display_segments <= "0011001";  -- 4
            when 5 => display_segments <= "0010010";  -- 5
            when others => display_segments <= "1111111"; 
        end case;
    end process;

    contador_out <= display_segments;  
	 
end Contador5_arch;
