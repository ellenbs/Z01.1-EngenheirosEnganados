library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sevenSeg is
	port(
		bcd      : in  std_logic_vector(3 downto 0);
        leds    : out std_logic_vector(6 downto 0));
end entity;

architecture arch of sevenSeg is

begin


	leds <= "0000001" when ( bcd = "0000" ) -- 0
	else "1001111" when ( bcd = "0001" ) -- 1
	else "0010010" when ( bcd = "0010" ) -- 2
	else "0000110" when ( bcd = "0011" ) -- 3 
	else "1001100" when ( bcd = "0100" ) -- 4
	else "0100100" when ( bcd = "0101" ) -- 5   
	else "0100000" when ( bcd = "0110" ) -- 6
	else "0001111" when ( bcd = "0111" ) -- 7
	else "0000000" when ( bcd = "1000" ) -- 8
	else "0000100" when ( bcd = "1001" ) -- 9
	else "0000010" when ( bcd = "1010" ) -- A
	else "1100000" when ( bcd = "1011" ) -- B
	else "0110001" when ( bcd = "1100" ) -- C
	else "1000010" when ( bcd = "1101" ) -- D
	else "0110000" when ( bcd = "1110" ) -- E
	else "0111000" when ( bcd = "1111" ) -- F
	else "1000000";


end architecture;
