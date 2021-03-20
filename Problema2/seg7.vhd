library IEEE;
use IEEE.std_logic_1164.all;

entity seg7 is
    port(
        entry: in std_logic;
        segx: out std_logic_vector (6 downto 0)
    );

end;

architecture arch of seg7 is
    begin
        process(entry)
        begin
            if entry = '1' then
                segx <= "1001111";
            else
                segx <= "1111110";
            end if;
        end process;
    end;