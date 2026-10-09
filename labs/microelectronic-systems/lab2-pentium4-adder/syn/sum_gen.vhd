library ieee; 
use ieee.std_logic_1164.all; 

entity SUM_GENERATOR is 
    generic (
        NBIT_PER_BLOCK : integer := 4;
        NBLOCKS        : integer := 8
    );
    port (
        A  : in  std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 downto 0);
        B  : in  std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 downto 0);
        Ci : in  std_logic_vector(NBLOCKS - 1 downto 0);
        S  : out std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 downto 0)
    );
end SUM_GENERATOR;

architecture STRUCTURAL of SUM_GENERATOR is

    
    component CARRY_SELECT_BLOCK
        generic (
            NBIT : positive := 4
        );
        port (
            A   : in  std_logic_vector(NBIT - 1 downto 0);
            B   : in  std_logic_vector(NBIT - 1 downto 0);
            Ci  : in  std_logic;
            S   : out std_logic_vector(NBIT - 1 downto 0)
        );
    end component;

begin

    -- 2. Creiamo un array di NBLOCKS blocchi
    CSB_ARRAY : for i in 0 to NBLOCKS - 1 generate
        
        CSB_INST : CARRY_SELECT_BLOCK
            generic map (
                NBIT => NBIT_PER_BLOCK
            )
            port map (
                -- Estraiamo le fette esatte dai vettori (es. da 3 downto 0, poi da 7 downto 4, ecc.)
                A  => A(((i + 1) * NBIT_PER_BLOCK) - 1 downto i * NBIT_PER_BLOCK),
                B  => B(((i + 1) * NBIT_PER_BLOCK) - 1 downto i * NBIT_PER_BLOCK),
                -- Ogni blocco prende il suo specifico bit di Carry-in dall'array Ci
                Ci => Ci(i),
                -- Anche l'uscita viene mappata sulla fetta corrispondente del vettore S
                S  => S(((i + 1) * NBIT_PER_BLOCK) - 1 downto i * NBIT_PER_BLOCK)
            );
            
    end generate CSB_ARRAY;

end STRUCTURAL;