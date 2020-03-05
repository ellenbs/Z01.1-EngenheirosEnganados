library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMux8Way is
	port ( 
			din:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q0:  out STD_LOGIC;
			q1:  out STD_LOGIC;
			q2:  out STD_LOGIC;
			q3:  out STD_LOGIC;
			q4:  out STD_LOGIC;
			q5:  out STD_LOGIC;
			q6:  out STD_LOGIC;
			q7:  out STD_LOGIC);
end entity;

architecture arch of DMux8Way is
begin

	q0 <= din when sel = "000" else '0';
    q1 <= din when sel = "001" else '0';
    q2 <= din when sel = "010" else '0';
	q3 <= din when sel = "011" else '0';
	q4 <= din when sel = "100" else '0';
    q5 <= din when sel = "101" else '0';
    q6 <= din when sel = "110" else '0';
    q7 <= din when sel = "111" else '0';


end architecture;
