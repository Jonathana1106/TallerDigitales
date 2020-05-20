library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity ripple_adder_tb is
end ripple_adder_tb;
 
architecture behavior of ripple_adder_tb is
 
-- Component Declaration for the Unit Under Test (UUT)
 
component ripple_adder

	port(A: in STD_LOGIC_VECTOR(3 downto 0);
		  B: in STD_LOGIC_VECTOR(3 downto 0);
		  Cin: in STD_LOGIC;
		  S: out STD_LOGIC_VECTOR(3 downto 0);
		  Cout: out STD_LOGIC);

end component;
 
--Inputs
signal A: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal B: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal Cin: STD_LOGIC := '0';
 
--Outputs
signal S: STD_LOGIC_VECTOR(3 downto 0);
signal Cout: STD_LOGIC;
 
begin
 
-- Instantiate the Unit Under Test (UUT)
uut: ripple_adder 

port map (A => A,
			 B => B,
			 Cin => Cin,
			 S => S,
			 Cout => Cout);
 
-- Stimulus process
stim_proc: process
begin
-- hold reset state for 100 ns.
wait for 100 ns;
A <= "0110";
B <= "1100";
 
wait for 100 ns;
A <= "1111";
B <= "1100";
 
wait for 100 ns;
A <= "0110";
B <= "0111";
 
wait for 100 ns;
A <= "0110";
B <= "1110";
 
wait for 100 ns;
A <= "1111";
B <= "1111";
 
wait;
 
end process;
 
end;