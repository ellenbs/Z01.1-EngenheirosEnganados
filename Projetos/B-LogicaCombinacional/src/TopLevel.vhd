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
    port(
        SW      : in  std_logic_vector(9 downto 0);
        HEX0    : out std_logic_vector(6 downto 0); -- 7seg0
--		  HEX1    : out std_logic_vector(13 downto 7);
--		  HEX2    : out std_logic_vector(20 downto 14);
--		  HEX3    : out std_logic_vector(27 downto 21);
--		  HEX4    : out std_logic_vector(34 downto 28);
--		  HEX5    : out std_logic_vector(41 downto 35);
--		  HEX7    : out std_logic_vector(48 downto 42);
--		  HEX8    : out std_logic_vector(55 downto 49);
--		  HEX9    : out std_logic_vector(62 downto 56);
        LEDR    : out std_logic_vector(9 downto 0)
    );
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------

---------------
-- implementacao
---------------
begin

	HEX0 <= “1000000” when (SW = '0000000000') -- 0
		else “1001111” when (SW = '0000000001') -- 1
		else “0010010” when (SW = '0000000010') -- 2
		else “0000110” when (SW = '0000000011') -- 3
		else “1001100” when (SW = '0000000100') -- 4
		else “0100100” when (SW = '0000000101') -- 5
		else “0100000” when (SW = '0000000110') -- 6
		else “0001111” when (SW = '0000000111') -- 7
		else “0000000” when (SW = '0000001000') -- 8
		else “0000100” when (SW = '0000001001') -- 9
		else “0100000” when (SW = '0000001010') -- A
		else “0000011” when (SW = '0000001100') -- B
		else “1000110” when (SW = '0000001101') -- C
		else “0100001” when (SW = '0000001101') -- D
		else “0000110” when (SW = '0000001110') -- E
		else “0001110” when (SW = '0000001111') -- F
		else “1111111”


end rtl;
