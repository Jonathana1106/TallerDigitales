library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity Testbench_full_adder is
end Testbench_full_adder;
 
architecture behavior of Testbench_full_adder is
 
 -- Component Declaration for the Unit Under Test (UUT)
 
 component full_adder_vhdl_code
 
 port (A: in STD_LOGIC;
		 B: in STD_LOGIC;
		 Cin: in STD_LOGIC;
		 S: out STD_LOGIC;
		 Cout: out STD_LOGIC);
 
 end component;
 
 --Inputs
 signal A: STD_LOGIC := '0';
 signal B: STD_LOGIC := '0';
 signal Cin: STD_LOGIC := '0';
 
 --Outputs
 signal S: STD_LOGIC;
 signal Cout: STD_LOGIC;
 
begin
 
 -- Instantiate the Unit Under Test (UUT)
 uut: full_adder_vhdl_code 
 
 port map (A => A,
			  B => B,
			  Cin => Cin,
			  S => S,
			  Cout => Cout);
 
 -- Stimulus process
 stim_proc: process
 begin
 -- hold reset state for 100 ns.
 wait for 10 ns;
 
 -- insert stimulus here
 A <= '1';
 B <= '0';
 Cin <= '0';
 wait for 10 ns;
 
 A <= '0';
 B <= '1';
 Cin <= '0';
 wait for 10 ns;
 
 A <= '1';
 B <= '1';
 Cin <= '0';
 wait for 10 ns;
 
 A <= '0';
 B <= '0';
 Cin <= '1';
 wait for 10 ns;
 
 A <= '1';
 B <= '0';
 Cin <= '1';
 wait for 10 ns;
 
 A <= '0';
 B <= '1';
 Cin <= '1';
 wait for 10 ns;
 
 A <= '1';
 B <= '1';
 Cin <= '1';
 wait for 10 ns;
 
end process;
 
end;
