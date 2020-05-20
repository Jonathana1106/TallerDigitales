library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity fulladder is 
	port(a, b, c_in: in STD_LOGIC;
		  sum, c_out: out STD_LOGIC);
end entity fulladder;

architecture synth of fulladder is 
	
begin

	sum <= a XOR b XOR c_in;
	
	c_out <= (a AND b) OR (c_in and (a OR b));
	
end architecture synth; 