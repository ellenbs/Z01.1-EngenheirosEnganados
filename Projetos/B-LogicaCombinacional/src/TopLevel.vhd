--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	generic(N: positive := 10);
    port(
        SW      : in  std_logic_vector(9 downto 0);
        HEX0    : out std_logic_vector(6 downto 0); -- 7seg0
		  HEX1    : out std_logic_vector(6 downto 0);
		  HEX2    : out std_logic_vector(6 downto 0);
		  CLOCK_50, reset: in std_logic;
        binary_in: in std_logic_vector(N-1 downto 0);
        bcd0, bcd1, bcd2, bcd3, bcd4: out std_logic_vector(3 downto 0)
    );


end TopLevel;



----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------
signal bcd0Signal0 : std_logic_vector(3 downto 0);
signal bcd0Signal1 : std_logic_vector(3 downto 0);
signal bcd0Signal2 : std_logic_vector(3 downto 0);


---------------
-- implementacao
---------------
begin



   u1 : work.binarioToBcd port map(clk   => CLOCK_50,
                                   reset => '0',
                                   binary_in => SW,
                                   bcd0  => bcd0Signal0, --LEDR(3 downto 0),
                                   bcd1  => bcd0Signal1,
                                   bcd2  => bcd0Signal2,
                                   bcd3  => open);
											  
	HEX0 <= "1000000" when ( bcd0Signal0 = "0000" ) -- 0
		else "1111001" when ( bcd0Signal0 = "0001" ) -- 1
		else "0100100" when ( bcd0Signal0 = "0010" ) -- 2
		else "0110000" when ( bcd0Signal0 = "0011" ) -- 3 
		else "0011001" when ( bcd0Signal0 = "0100" ) -- 4
		else "0010010" when ( bcd0Signal0 = "0101" ) -- 5   
		else "0000010" when ( bcd0Signal0 = "0110" ) -- 6
		else "1111000" when ( bcd0Signal0 = "0111" ) -- 7
		else "0000000" when ( bcd0Signal0 = "1000" ) -- 8
		else "0010000" when ( bcd0Signal0 = "1001" ) -- 9
		else "0100000" when ( bcd0Signal0 = "1010" ) -- A
		else "0000011" when ( bcd0Signal0 = "1011" ) -- B
		else "1000110" when ( bcd0Signal0 = "1100" ) -- C
		else "0100001" when ( bcd0Signal0 = "1101" ) -- D
		else "0000110" when ( bcd0Signal0 = "1110" ) -- E
		else "0001110" when ( bcd0Signal0 = "1111" ) -- F
		else "1000000";
		
	HEX1 <= "1000000" when ( bcd0Signal1 = "0000" ) -- 0
		else "1111001" when ( bcd0Signal1 = "0001" ) -- 1
		else "0100100" when ( bcd0Signal1 = "0010" ) -- 2
		else "0110000" when ( bcd0Signal1 = "0011" ) -- 3 
		else "0011001" when ( bcd0Signal1 = "0100" ) -- 4
		else "0010010" when ( bcd0Signal1 = "0101" ) -- 5   
		else "0000010" when ( bcd0Signal1 = "0110" ) -- 6
		else "1111000" when ( bcd0Signal1 = "0111" ) -- 7
		else "0000000" when ( bcd0Signal1 = "1000" ) -- 8
		else "0010000" when ( bcd0Signal1 = "1001" ) -- 9
		else "1000000";
		
	HEX2 <= "1000000" when ( bcd0Signal2 = "0000" ) -- 0
		else "1111001" when ( bcd0Signal2 = "0001" ) -- 1
		else "0100100" when ( bcd0Signal2 = "0010" ) -- 2
		else "0110000" when ( bcd0Signal2 = "0011" ) -- 3 
		else "0011001" when ( bcd0Signal2 = "0100" ) -- 4
		else "0010010" when ( bcd0Signal2 = "0101" ) -- 5   
		else "0000010" when ( bcd0Signal2 = "0110" ) -- 6
		else "1111000" when ( bcd0Signal2 = "0111" ) -- 7
		else "0000000" when ( bcd0Signal2 = "1000" ) -- 8
		else "0010000" when ( bcd0Signal2 = "1001" ) -- 9
		else "1000000";
		

end rtl;

