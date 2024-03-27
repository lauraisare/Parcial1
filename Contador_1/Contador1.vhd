library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Contador1 is
    Port (
   
        reset : in STD_LOGIC;
        front_sensor : in STD_LOGIC;  -- Sensor delantero
        Contador_vehiculo : out INTEGER range 0 to 59
    );
end Contador1;

architecture Contador1_arch of Contador1 is
    signal counter : INTEGER range 0 to 59 := 0;
    signal vehiculo_detectado : BOOLEAN := false;
begin
    process (front_sensor, reset) begin
	 
        if reset = '1' then
            counter <= 0;
            vehiculo_detectado <= false;
        elsif front_sensor = '1' and not vehiculo_detectado then
            counter <= counter + 1;
            vehiculo_detectado <= true;
				
        elsif front_sensor = '0' then
            vehiculo_detectado <= false;
        end if;
    end process;

     Contador_vehiculo <= counter;
	  
end Contador1_arch;
