library ieee;
use ieee.std_logic_1164.all;

entity Semaforo_salida is
    port (
        -- Entrada de control del semáforo
		  SemaforoSalida : in std_logic;
       
        -- Salidas del semáforo
        semaforo_rojo : out std_logic;
        semaforo_verde : out std_logic
    );
end Semaforo_salida;

architecture Semaforo_salida_arch of Semaforo_salida is
begin
    process (SemaforoSalida)
    begin
        if SemaforoSalida = '1' then
            semaforo_rojo <= '0'; -- Rojo
            semaforo_verde <= '1'; -- Apagado
        else
            semaforo_rojo <= '1'; -- Apagado
            semaforo_verde <= '0'; -- Verde
        end if;
    end process;
end Semaforo_salida_arch;