library ieee;
use ieee.std_logic_1164.all;

entity P4_ADDER is
    -- L'entità ora ha solo NBIT, esattamente come dichiarato nel testbench
    generic (
        NBIT : integer := 32
    );
    port (
        A    : in  std_logic_vector(NBIT-1 downto 0);
        B    : in  std_logic_vector(NBIT-1 downto 0);
        Cin  : in  std_logic;
        S    : out std_logic_vector(NBIT-1 downto 0);
        Cout : out std_logic
    );
end P4_ADDER;

architecture STRUCTURAL of P4_ADDER is

    -- Spostiamo la dimensione del blocco in una costante interna all'architettura
    constant NBIT_PER_BLOCK : integer := 4; 
    constant NUM_BLOCKS     : integer := NBIT / NBIT_PER_BLOCK;

    -- 1. Generatore di Carry ad Albero
    component CARRY_GENERATOR
        generic ( NBIT : integer; NBIT_PER_BLOCK : integer );
        port (
            A   : in  std_logic_vector(NBIT-1 downto 0);
            B   : in  std_logic_vector(NBIT-1 downto 0);
            Cin : in  std_logic;
            Co  : out std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0)
        );
    end component;

    -- 2. Sommatore con selezione di Carry
    component SUM_GENERATOR
        generic ( NBIT_PER_BLOCK : integer; NBLOCKS : integer );
        port (
            A  : in  std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 downto 0);
            B  : in  std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 downto 0);
            Ci : in  std_logic_vector(NBLOCKS - 1 downto 0);
            S  : out std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 downto 0)
        );
    end component;

    -- Segnali interni per il cablaggio tra i due macro-blocchi
    signal carry_out_tree : std_logic_vector(NUM_BLOCKS-1 downto 0);
    signal carry_in_sum   : std_logic_vector(NUM_BLOCKS-1 downto 0);

begin

    -- ====================================================================
    -- CABLAGGIO DEGLI ARRAY DI CARRY (Shift dei segnali)
    -- ====================================================================
    -- Il blocco 0 del Sum Generator riceve il Cin globale in ingresso
    carry_in_sum(0) <= Cin;
    
    -- I blocchi successivi ricevono i carry generati dall'albero (C4, C8, C12...)
    carry_in_sum(NUM_BLOCKS-1 downto 1) <= carry_out_tree(NUM_BLOCKS-2 downto 0);

    -- Il Carry Out totale dell'adder è l'ultimo bit generato dall'albero (C32)
    Cout <= carry_out_tree(NUM_BLOCKS-1);

    -- ====================================================================
    -- ISTANZIAZIONE COMPONENTI
    -- ====================================================================
    CG: CARRY_GENERATOR
        generic map ( 
            NBIT           => NBIT, 
            NBIT_PER_BLOCK => NBIT_PER_BLOCK 
        )
        port map ( 
            A   => A, 
            B   => B, 
            Cin => Cin, 
            Co  => carry_out_tree 
        );

    SG: SUM_GENERATOR
        generic map ( 
            NBIT_PER_BLOCK => NBIT_PER_BLOCK, 
            NBLOCKS        => NUM_BLOCKS 
        )
        port map ( 
            A  => A, 
            B  => B, 
            Ci => carry_in_sum, 
            S  => S 
        );

end STRUCTURAL;