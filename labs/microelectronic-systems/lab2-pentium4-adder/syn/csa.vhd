library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity CARRY_SELECT_BLOCK is
    generic (
        NBIT : positive := 4 
    );
    port (
        A   : in  std_logic_vector(NBIT - 1 downto 0);
        B   : in  std_logic_vector(NBIT - 1 downto 0);
        Ci  : in  std_logic; 
        S   : out std_logic_vector(NBIT - 1 downto 0)
    );
end CARRY_SELECT_BLOCK;

architecture STRUCTURAL of CARRY_SELECT_BLOCK is
   
    component RCA
        generic (NBIT : positive := 4); -- Aggiunto il generic mancante qui!
        port (
            A  : in  std_logic_vector(NBIT - 1 downto 0);
            B  : in  std_logic_vector(NBIT - 1 downto 0);
            Ci : in  std_logic;
            S  : out std_logic_vector(NBIT - 1 downto 0);
            Co : out std_logic
        );
    end component;

    component MUX21_4BIT
        generic (N : positive := 4);
        port (  
            A:  in  std_logic_vector(N - 1 downto 0);
            B:  in  std_logic_vector(N - 1 downto 0);
            S:  in  std_logic;
            Y:  out std_logic_vector(N - 1 downto 0)
        );
    end component;

    signal sum_low  : std_logic_vector(NBIT - 1 downto 0);
    signal sum_high : std_logic_vector(NBIT - 1 downto 0);

begin

    -- Istanza RCA con Carry-in = '0'
    RCA_LOW: RCA 
        generic map (NBIT => NBIT)
        port map (
            A  => A,
            B  => B,
            Ci => '0',
            S  => sum_low,
            Co => open
        );

    -- Istanza RCA con Carry-in = '1'
    RCA_HIGH: RCA 
        generic map (NBIT => NBIT)
        port map (
            A  => A,
            B  => B,
            Ci => '1',
            S  => sum_high,
            Co => open
        );

    -- Istanza MUX
    MUX_INST: MUX21_4BIT
        generic map (N => NBIT)
        port map (
            A => sum_high,
            B => sum_low,
            S => Ci,
            Y => S
        );

end STRUCTURAL;
