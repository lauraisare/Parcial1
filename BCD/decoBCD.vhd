library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decoBCD is
	port
	(
		IA	: in std_logic_vector(3 downto 0);
		F:out std_logic_vector(6 downto 0));

end decoBCD;

architecture Behavioral of decoBCD is 



begin
		
   F <= "1000000" when IA= "0000" else
        "1111001" when IA= "0001" else
		  "0100100" when IA= "0010" else
		  "0110000" when IA= "0011" else
		  "0011001" when IA= "0100" else
		  "0010010" when IA= "0101" else
		  "0000011" when IA= "0110" else
		  "1111000" when IA= "0111" else
		  "0000000" when IA= "1000" else
		  "0011000" when IA= "1001" else
		  "1111111";
		


end Behavioral;