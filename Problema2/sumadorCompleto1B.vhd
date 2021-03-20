library IEEE;
use IEEE.std_logic_1164.all;

entity sumadorCompleto1B is
    port(
        c, c_out: out std_logic;
        a, b, c_in: std_logic;
        seg: out std_logic_vector (6 downto 0)
    );

end;

architecture arch of sumadorCompleto1B is
    signal c_aux: std_logic;
    component  seg7 is
        port(
            entry: in std_logic;
            segx: out std_logic_vector (6 downto 0)
        );
    end component;

    begin
        c <= (((not c_in) and (not a) and b) or ((not c_in) and a and (not b)) or ((c_in) and (not a) and (not b))or((c_in)and(a)and(b)));

        c_aux <= (((not c_in) and (not a) and b) or ((not c_in) and a and (not b)) or ((c_in) and (not a) and (not b))or((c_in)and(a)and(b)));

        c_out <= ((a and b) or ((c_in) and b) or ((c_in) and a));

        bit_x: seg7 port map (entry => c_aux, segx => seg);
    end;