library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity full_adder_4_bits is

	port (A: in STD_LOGIC_VECTOR (3 downto 0);
			B: in STD_LOGIC_VECTOR (3 downto 0);
			--Cin: in STD_LOGIC;
		   Y: out STD_LOGIC_VECTOR (3 downto 0);
			Cout: out STD_LOGIC);

end entity full_adder_4_bits;

architecture synth of full_adder_4_bits is

signal carry: STD_LOGIC_VECTOR(3 downto 0);

begin

	carry(0) <= '0';

	bit0: entity WORK.full_adder port map (a => A(0), b => B(0), sum => Y(0), Cin => carry(0), Cout => carry(1));
	bit1: entity WORK.full_adder port map (a => A(1), b => B(1), sum => Y(1), Cin => carry(1), Cout => carry(2));
   bit2: entity WORK.full_adder port map (a => A(2), b => B(2), sum => Y(2), Cin => carry(2), Cout => carry(3));
   bit3: entity WORK.full_adder port map (a => A(3), b => B(3), sum => Y(3), Cin => carry(3), Cout => Cout);

end architecture synth;