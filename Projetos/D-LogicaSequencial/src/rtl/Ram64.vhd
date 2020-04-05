-- Elementos de Sistemas
-- by Luciano Soares
-- Ram64.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Ram64 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 5 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of Ram64 is

	component Ram8 is
		port(
			clock:   in  STD_LOGIC;
			input:   in  STD_LOGIC_VECTOR(15 downto 0);
			load:    in  STD_LOGIC;
			address: in  STD_LOGIC_VECTOR( 2 downto 0);
			output:  out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component Mux8Way16 is
		port (
				a:   in  STD_LOGIC_VECTOR(15 downto 0);
				b:   in  STD_LOGIC_VECTOR(15 downto 0);
				c:   in  STD_LOGIC_VECTOR(15 downto 0);
				d:   in  STD_LOGIC_VECTOR(15 downto 0);
				e:   in  STD_LOGIC_VECTOR(15 downto 0);
				f:   in  STD_LOGIC_VECTOR(15 downto 0);
				g:   in  STD_LOGIC_VECTOR(15 downto 0);
				h:   in  STD_LOGIC_VECTOR(15 downto 0);
				sel: in  STD_LOGIC_VECTOR( 2 downto 0);
				q:   out STD_LOGIC_VECTOR(15 downto 0));
	end component;

	component DMux8Way is
		port (
			a:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q0:  out STD_LOGIC;
			q1:  out STD_LOGIC;
			q2:  out STD_LOGIC;
			q3:  out STD_LOGIC;
			q4:  out STD_LOGIC;
			q5:  out STD_LOGIC;
			q6:  out STD_LOGIC;
			q7:  out STD_LOGIC);
	end component;

	signal load0, load1, load2, load3, load4, load5, load6, load7 : STD_LOGIC;
	signal output0, output1, output2, output3, output4, output5, output6, output7 : STD_LOGIC_VECTOR(15 downto 0);

begin
	ram8: Ram8 port map (clock, input, load0, address, output);

	mux8way16_0: Mux8Way16 port map (a, b, c, d, e, f, g, h, load0, output);
	mux8way16_1: Mux8Way16 port map (a, b, c, d, e, f, g, h, load1, output);
	mux8way16_2: Mux8Way16 port map (a, b, c, d, e, f, g, h, load2, output);

	dmux8way:DMux8Way port map (a, load, output0, output1, output2, output3, output4, output5, output6, output7)

	--ram8_2: Ram8 port map (clock, input, load(9), address, output(9))
	--ram8_3: Ram8 port map (clock, input, load(10), address, output(10))
	--ram8_4: Ram8 port map (clock, input, load(11), address, output(11))
	--ram8_5: Ram8 port map (clock, input, load(12), address, output(12))
	--ram8_6: Ram8 port map (clock, input, load(13), address, output(13))
	--ram8_7: Ram8 port map (clock, input, load(14), address, output(14))
	--ram8_8: Ram8 port map (clock, input, load(15), address, output(15))
	--ram8_9: Ram8 port map (clock, input, load(16), address, output(16))

end architecture;
