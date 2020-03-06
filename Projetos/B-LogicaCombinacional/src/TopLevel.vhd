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
--        SW      : in  std_logic_vector(9 downto 0);
		  SW      : in  std_logic_vector(3 downto 0);
        HEX0    : out std_logic_vector(6 downto 0); -- 7seg0
		  HEX1    : out std_logic_vector(6 downto 0);
		  HEX2    : out std_logic_vector(6 downto 0);
		  HEX3    : out std_logic_vector(6 downto 0);
		  HEX4    : out std_logic_vector(6 downto 0);
		  HEX5    : out std_logic_vector(6 downto 0);
		  HEX7    : out std_logic_vector(6 downto 0);
		  HEX8    : out std_logic_vector(6 downto 0);
		  HEX9    : out std_logic_vector(6 downto 0);
        LEDR    : out std_logic_vector(9 downto 0);
		  clk, reset: in std_logic;
        binary_in: in std_logic_vector(N-1 downto 0);
        bcd0, bcd1, bcd2, bcd3, bcd4: out std_logic_vector(3 downto 0)
		  
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



	u1 : work.binarioToBcd port map(clk   => CLOCK_50,
												  reset => '0',
												  binary_in => SW,
												  bcd0  => LEDR(3 downto 0),
												  bcd1  => LEDR(7 downto 4),
												  bcd2  => LEDR(8 downto 5),
												  bcd3  => open,
												  bcd4  => open);


end rtl;