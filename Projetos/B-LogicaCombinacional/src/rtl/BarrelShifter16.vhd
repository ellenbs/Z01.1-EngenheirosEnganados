library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BarrelShifter16 is
	port ( 
			a:    in  STD_LOGIC_VECTOR(15 downto 0);   -- input vector
			dir:  in  std_logic;                       -- 0=>left 1=>right
			size: in  std_logic_vector(3 downto 0);    -- shift amount
			q:    out STD_LOGIC_VECTOR(15 downto 0));  -- output vector (shifted)
end entity;

architecture rtl of BarrelShifter16 is
	begin
		process(a,size)
		begin
			case size is
				when "0000" =>
							q<=a;
				when "0001" =>
							q <= a(0) & a(15 downto 1) when (dir = '1') else
								a(14 downto 0) & a(15);
				when "0010" =>
							q <= a(1 downto 0) & a(15 downto 2) when (dir = '1') else
							a(13 downto 0) & a(15 downto 14);
				when "0011" =>
							q <= a(2 downto 0) & a(15 downto 3) when (dir = '1') else
							a(12 downto 0) & a(15 downto 13);
				when "0100" =>
							q <= a(3 downto 0) & a(15 downto 4) when (dir = '1') else
							a(11 downto 0) & a(15 downto 12);
				when "0101" =>
							q <= a(4 downto 0) & a(15 downto 5) when (dir = '1') else
							a(10 downto 0) & a(15 downto 11);
				when "0110" =>
							q <= a(5 downto 0) & a(15 downto 6) when (dir = '1') else
							a(9 downto 0) & a(15 downto 10);
				when "0111" =>
							q <= a(6 downto 0) & a(15 downto 7) when (dir = '1') else
							a(8 downto 0) & a(15 downto 9);
				when "1000" =>
							q <= a(7 downto 0) & a(15 downto 8) when (dir = '1') else
							a(7 downto 0) & a(15 downto 8);
				when "1001" =>
							q <= a(8 downto 0) & a(15 downto 9) when (dir = '1') else
							a(6 downto 0) & a(15 downto 7);
				when "1010" =>
							q <= a(9 downto 0) & a(15 downto 10) when (dir = '1') else
							a(5 downto 0) &  a(15 downto 6);
				when "1011" =>
							q <= a(10 downto 0) & a(15 downto 11) when (dir = '1') else
							a(4 downto 0) &  a(15 downto 5);
				when "1100" =>
							q <= a(11 downto 0) & a(15 downto 12) when (dir = '1') else
							a(3 downto 0) &  a(15 downto 4);
				when "1101" =>
							q <= a(12 downto 0) & a(15 downto 13) when (dir = '1') else
							a(2 downto 0) &  a(15 downto 3);
				when "1110" =>
							q <= a(13 downto 0) & a(15 downto 14) when (dir = '1') else
							a(1 downto 0) &  a(15 downto 2);
				when "1111" =>
							q <= a(14 downto 0) & a(15) when (dir = '1') else
							a(0) &  a(15 downto 1);
				when others =>
							q <= a;
				
			end case;
		end process;
	
	end architecture;
	
	