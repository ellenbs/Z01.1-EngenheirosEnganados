-- Elementos de Sistemas
-- developed by Luciano Soares
-- file: PC.vhd
-- date: 4/4/2017

-- Contador de 16bits
-- if (reset[t] == 1) out[t+1] = 0
-- else if (load[t] == 1)  out[t+1] = in[t]
-- else if (inc[t] == 1) out[t+1] = out[t] + 1
-- else out[t+1] = out[t]

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity PC is
    port(
        clock     : in  STD_LOGIC;
        increment : in  STD_LOGIC;
        load      : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        input     : in  STD_LOGIC_VECTOR(15 downto 0);
        output    : out STD_LOGIC_VECTOR(15 downto 0)
    );
end entity;

architecture arch of PC is

  component Mux_for_PC is
    port(
	    a:   in  STD_LOGIC_VECTOR(15 downto 0);
		b:   in  STD_LOGIC_VECTOR(15 downto 0);
		sel: in  STD_LOGIC;  
		q:   out STD_LOGIC_VECTOR(15 downto 0));
   end component;

  component Inc16 is
      port(
          a   :  in STD_LOGIC_VECTOR(15 downto 0);
          q   : out STD_LOGIC_VECTOR(15 downto 0)
          );
  end component;

  component Register16 is
      port(
          clock:   in STD_LOGIC;
          input:   in STD_LOGIC_VECTOR(15 downto 0);
          load:    in STD_LOGIC;
          output: out STD_LOGIC_VECTOR(15 downto 0)
        );
   end component;

   signal out_pc : std_logic_vector(15 downto 0);
   signal inc_out : std_logic_vector(15 downto 0);
   signal m_inc_out : std_logic_vector(15 downto 0);
   signal m_load_out : std_logic_vector(15 downto 0);
   signal m_reset_out : std_logic_vector(15 downto 0);

begin
    inc: Inc16 port map(out_pc, inc_out);

    mux_inc: Mux_for_PC port map(out_pc, inc_out, increment, m_inc_out);

    mux_load: Mux_for_PC port map(m_inc_out,input,load,m_load_out);

    mux_reset: Mux_for_PC port map(m_load_out,"0000000000000000",reset,m_reset_out);

    Reg16: Register16 port map(clock,m_reset_out,'1',out_pc);

    output <= out_pc;
end architecture;
