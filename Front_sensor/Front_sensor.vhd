library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Front_sensor is
    port (
        
        vehiculo_detectado : in std_logic;
        identificacion_valida : in std_logic;
        identificacion : in std_logic_vector(4 downto 0); 
        solicita_identification : out std_logic;
        control_barrera : out std_logic;
        led_verde : out std_logic;
        led_rojo : out std_logic;
        categoria : out std_logic_vector(1 downto 0);
        display : out std_logic_vector(4 downto 0)
    );
end Front_sensor;

architecture Front_sensor_arch of Front_sensor is
  
    type State is (inactivo, esperar_identificacion, verificacion, identificacion_correcta, identificacion_incorrecta);
    signal estado_actual, proximo_estado : estado;

    signal intentos: integer range 0 to 3;
    signal count : integer range 0 to 50000000;

    

    signal identificacion_display : std_logic_vector(4 downto 0);

begin
    
    process (vehiculo_detectado, identificacion_valida, timer_count)
    begin
        estado_actual <= proximo_estado;
        case estado_actual is
            when inactivo =>
                if vehiculo_detectado = '1' then
                    proximo_estado <= esperar_identificacion;
                else
                    proximo_estado <= inactivo;
                end if;

            when esperar_identificacion =>
                if vehiculo_detectado = '0' then
                    proximo_estado <= inactivo;
                elsif identificacion_valida = '1' then
                    proximo_estado <= verificacion;
                    intentos <= 0;
                else
                    proximo_estado <= esperar_identificacion;
                end if;

            when verificacion =>
                if identificacion_valida = '1' then
                    if intentos < 3 then
                        proximo_estado <= identificacion_correcta;
                    else
                        proximo_estado <= identificacion_incorrecta;
                    end if;
                else
                    proximo_estado <= esperar_identificacion;
                end if;

            when identificacion_correcta =>
                if count < 50000000 then
                    proximo_estado <= identificacion_correcta;
                else
                    proximo_estado <= inactivo;
                end if;

            when identificacion_incorrecta =>
                if count < 1000000000 then
                    proximo_estado <= identificacion_incorrecta;
                else
                    proximo_estado <= esperar_identificacion;
                end if;

            when others =>
                proximo_estado <= inactivo;
        end case;
    end process;



end Front_sensor_arch;
				 
							 
						  
						
						  
