library IEEE;
use IEEE.std_logic_1164.all;

entity sumadorCompleto5BTB is
end entity;

architecture arch of sumadorCompleto5BTB is

    component sumadorCompleto5B is
        port (
            sum: out std_logic_vector (2 downto 0);
            m_c_out: out std_logic;
            n_a: in std_logic_vector (2 downto 0);
            n_b: in std_logic_vector (2 downto 0);
            m_c_in: in std_logic;
            
            sg5: out std_logic_vector (6 downto 0);
			sg4: out std_logic_vector (6 downto 0);
			sg3: out std_logic_vector (6 downto 0);
			sg2: out std_logic_vector (6 downto 0);
			sg1: out std_logic_vector (6 downto 0);
			sg0: out std_logic_vector (6 downto 0)
        );
    end component;

    signal test_a, test_b, test_sum : std_logic_vector (2 downto 0);
    signal test_c_in, test_c_out : std_logic;
    signal t_sg5, t_sg4, t_sg3, t_sg2, t_sg1, t_sg0 : std_logic_vector (6 downto 0);

begin

    unit_under_test : suma6 port map(
        sum => test_sum,
        m_c_out => test_c_out,

        n_a => test_a,
        n_b => test_b,
        m_c_in => test_c_in,
        
        sg5 => t_sg5,
		sg4 => t_sg4,
		sg3 => t_sg3,
		sg2 => t_sg2,
		sg1 => t_sg1,
		sg0 => t_sg0
    );

    generate_signals : process
    begin
        test_c_in <= '0'; test_a <= "000"; test_b <= "001"; wait for 10 ns;
        test_c_in <= '0'; test_a <= "001"; test_b <= "001"; wait for 10 ns;
        test_c_in <= '0'; test_a <= "010"; test_b <= "001"; wait for 10 ns;
        test_c_in <= '0'; test_a <= "011"; test_b <= "001"; wait for 10 ns;
        test_c_in <= '0'; test_a <= "100"; test_b <= "001"; wait for 10 ns;
        test_c_in <= '0'; test_a <= "101"; test_b <= "001"; wait for 10 ns;
        test_c_in <= '0'; test_a <= "110"; test_b <= "001"; wait for 10 ns;
        test_c_in <= '0'; test_a <= "111"; test_b <= "001"; wait for 10 ns;
        
        wait;
    end process;

end architecture;