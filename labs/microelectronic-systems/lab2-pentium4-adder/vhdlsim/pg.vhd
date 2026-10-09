library ieee;
use ieee.std_logic_1164.all;

entity PG_NET_BLOCK is
    port (
        A : in  std_logic;
        B : in  std_logic;
        p : out std_logic;
        g : out std_logic
    );
end PG_NET_BLOCK;

architecture BEHAVIORAL of PG_NET_BLOCK is
begin
    -- Formulas: p_i = a_i xor b_i  |  g_i = a_i and b_i
    p <= A xor B;
    g <= A and B;
end BEHAVIORAL;