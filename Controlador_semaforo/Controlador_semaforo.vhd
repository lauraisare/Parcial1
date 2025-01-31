library ieee;
use ieee.std_logic_1164.all;

entity Controlador_semaforo is
    port (
        -- Entrada de control del semáforo
		  barrera_cerrada : in std_logic;
        carril_cerrado : in std_logic;
        -- Salidas del semáforo
        semaforo_rojo : out std_logic;
        semaforo_verde : out std_logic
    );
end Controlador_semaforo;

architecture Controlador_semaforo_arch of Controlador_semaforo is
begin
    process (carril_cerrado)
    begin
        if carril_cerrado = '1' or barrera_cerrada='1' then
            semaforo_rojo <= '1'; -- Rojo
            semaforo_verde <= '0'; -- Apagado
        else
            semaforo_rojo <= '0'; -- Apagado
            semaforo_verde <= '1'; -- Verde
        end if;
    end process;
end Controlador_semaforo_arch;