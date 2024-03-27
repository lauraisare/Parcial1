library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity FrontSensor is
    Port (
       
        clk : in std_logic; 
        reset : in std_logic;  
        front_sensor : in std_logic;  
        id_valida : in std_logic;  
        identificacion : in std_logic_vector(4 downto 0);  
        barrera_inicial : out std_logic; 
        barrera_final : out std_logic;  
        categoria : out std_logic_vector(1 downto 0);  
        led_verde : buffer std_logic; 
        led_rojo : buffer std_logic;  
        alarm : out std_logic  
    );
end FrontSensor;

architecture FrontSensor_arch of FrontSensor is
   
    signal intentos : integer range 0 to 3 := 0; 
    signal vehiculo_detectado : boolean := false;  
    type categoria_vehiculo is (SC, CATI, CATII, CATIII);  
    
begin
   

    process (clk, reset)
    begin
        if reset = '1' then
            
            intentos <= 0;
            vehiculo_detectado <= false;
            barrera_inicial <= '0';
            barrera_final <= '0';
            categoria <= "00";
            led_verde <= '0';
            led_rojo <= '0';
            alarm <= '0';
				
        elsif rising_edge(clk) then
		  
            if not vehiculo_detectado then
               
                if id_valida = '1' then
					 
                    case identificacion(2 downto 1) is
                        when "00" =>
                            categoria <= "00";  -- Sin categoria
							   when "01" =>
                            categoria <= "01";  -- Categoría CATI
                        when "10" =>
                            categoria <= "10";  -- Categoría CATII
                        when "11" =>
                            categoria <= "11";  -- Categoría CATIII
                        when others =>
                            null; 
                    end case;
						  
                    barrera_inicial <= '1';  
                    led_verde <= not led_verde after 500 ms;  
                    vehiculo_detectado <= true;
                else
                    intentos <= intentos + 1;
                    led_rojo <= not led_rojo after 1 sec;  
                    if intentos = 3 then
                        alarm <= '1';  
                    end if;
                end if;
            else
               
                if front_sensor = '1' then
                    barrera_final <= '1';  
                end if;
            end if;
        end if;
    end process;
end FrontSensor_arch;
