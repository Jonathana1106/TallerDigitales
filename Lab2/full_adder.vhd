library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity full_adder is 
	port(a, b, Cin: in STD_LOGIC;
		  sum, Cout: out STD_LOGIC);
end entity full_adder;

architecture synth of full_adder is 
	
begin

	sum <= a XOR b XOR Cin;
	
	Cout <= (a AND b) OR (Cin and (a OR b));
	
end architecture synth; 