library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BOOTHMUL is
    generic (
        N : integer := 32
    );
    port (
        A : in  std_logic_vector(N-1 downto 0);
        B : in  std_logic_vector(N-1 downto 0);
        P : out std_logic_vector(2*N-1 downto 0)
    );
end BOOTHMUL;

architecture Behavioral of BOOTHMUL is
begin

    process(A, B)
        variable A_s   : signed(N-1 downto 0);
        variable tempP : signed(2*N downto 0);
        variable A_ext : signed(2*N downto 0);
        variable A_neg : signed(2*N downto 0);
        variable B_ext : std_logic_vector(N downto 0);
    begin

        A_s := signed(A);

        A_ext := resize(A_s, 2*N+1);
        A_neg := -resize(A_s, 2*N+1);

        tempP := (others => '0');

        B_ext := B & '0';

        for i in 0 to N-1 loop

    if (B_ext(i+1) = '0' and B_ext(i) = '1') then
        tempP := tempP + shift_left(A_ext, i);

    elsif (B_ext(i+1) = '1' and B_ext(i) = '0') then
        tempP := tempP + shift_left(A_neg, i);

    end if;

end loop;
        P <= std_logic_vector(tempP(2*N-1 downto 0));

    end process;

end Behavioral;