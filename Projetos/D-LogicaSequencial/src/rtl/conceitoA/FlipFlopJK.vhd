-- Elementos de Sistemas
-- FlipFlopJK.vhd

library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopJK is
	port(
		clock:  in std_logic;
		J:      in std_logic;
		K:      in std_logic;
		q:      out std_logic:= '0';
		notq:   out std_logic:= '1'
	);
end entity;

architecture arch of FlipFlopJK is
	signal qx: std_logic;
	
	begin
		
			PROCESS(CLOCK)
			begin
				if(rising_edge(clock)) then
					if(J='0' and K='0')then
						q<='0';
						notq<='1';
					elsif(J='1' and K='1')then
						q<= '1';
						notq<='0';
	
					elsif(J='0' and K='1')then
						q<='0';
						notq<='1';
	
					else
						q<='1';
						notq<='0';
	
				end if;
				
				end if;
				--q<=qx;
				--notq <=not qx;
			
		end PROCESS;
	end architecture;
	