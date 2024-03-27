library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PagoPeaje is
    Port (
   
        Categoria : in std_logic_vector(1 downto 0); 
        Pago : in std_logic;
        Tarifa : out std_logic_vector(2 downto 0); 
        UsuarioPagado : out std_logic; 
		  SemaforoSalida : out std_logic 
    );
end PagoPeaje;

architecture PagoPeaje_arch of PagoPeaje is

    signal TarifaInterna : std_logic_vector(2 downto 0); 
    signal SumaTarifa : std_logic_vector(2 downto 0); 
	 
begin
    
    process(Categoria)
    begin
        case Categoria is
            when "01" => TarifaInterna <= "001"; -- CATI
            when "10" => TarifaInterna <= "010"; -- CATII
            when "11" => TarifaInterna <= "100"; -- CATIII
            when others => TarifaInterna <= "000"; -- Sin categoria
        end case;
    end process;

    
    SumaTarifa <= TarifaInterna when Pago = '1' else "000";

    UsuarioPagado <= '1' when Pago = '1' else '0';

    Tarifa <= SumaTarifa;
	 
    SemaforoSalida <= '1' when Pago = '1' else '0';
	 
end PagoPeaje_arch;
