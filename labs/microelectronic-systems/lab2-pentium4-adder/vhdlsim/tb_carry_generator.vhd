library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TB_CARRY_GENERATOR is 
end TB_CARRY_GENERATOR; 

architecture TEST of TB_CARRY_GENERATOR is

    component CARRY_GENERATOR is
        generic (
            NBIT :          integer := 32;
            NBIT_PER_BLOCK: integer := 4
        );
        port (
            A :     in  std_logic_vector(NBIT-1 downto 0);
            B :     in  std_logic_vector(NBIT-1 downto 0);
            Cin :   in  std_logic;
            Co :    out std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0)
        );
    end component;

    -- Costanti
    constant NBIT_TEST : integer := 32;
    constant BLK_SIZE  : integer := 4;
    constant NUM_OUTS  : integer := NBIT_TEST / BLK_SIZE; -- 8 uscite di carry

    -- Segnali
    signal A_tb   : std_logic_vector(NBIT_TEST-1 downto 0) := (others => '0');
    signal B_tb   : std_logic_vector(NBIT_TEST-1 downto 0) := (others => '0');
    signal Cin_tb : std_logic := '0';
    signal Co_tb  : std_logic_vector(NUM_OUTS-1 downto 0);

begin

    -- Istanziazione del Device Under Test (DUT)
    UUT: CARRY_GENERATOR
        generic map (
            NBIT           => NBIT_TEST,
            NBIT_PER_BLOCK => BLK_SIZE
        )
        port map (
            A   => A_tb,
            B   => B_tb,
            Cin => Cin_tb,
            Co  => Co_tb
        );

    -- Generazione Stimoli
    STIMULUS: process
    begin
        -- Caso 1: Nessun Carry
        A_tb   <= x"00000000";
        B_tb   <= x"00000000";
        Cin_tb <= '0';
        wait for 10 ns; -- Co atteso: 00000000 (Binario)

        -- Caso 2: Propagazione totale del Carry In (Tutti i bit a '1' + Carry In)
        -- A=FFFFFFFF, B=00000000, Cin=1 -> il carry dovrebbe propagarsi fino in fondo!
        A_tb   <= x"FFFFFFFF";
        B_tb   <= x"00000000";
        Cin_tb <= '1';
        wait for 10 ns; -- Co atteso: 11111111 (Tutti i nodi sparsi dovrebbero avere carry 1)

        -- Caso 3: Generazione di Carry in un punto specifico
        -- Mettiamo A e B a 1 nel primo blocco da 4 bit. Si genera un carry che va nel blocco successivo.
        A_tb   <= x"0000000F";
        B_tb   <= x"00000001";
        Cin_tb <= '0';
        wait for 10 ns; -- Si genera un carry dal bit 0, si propaga fino al bit 4.

        -- Caso 4: Alternanza
        A_tb   <= x"AAAAAAAA";
        B_tb   <= x"55555555";
        Cin_tb <= '1';
        wait for 10 ns;

        wait; -- Ferma la simulazione
    end process STIMULUS;

end TEST;