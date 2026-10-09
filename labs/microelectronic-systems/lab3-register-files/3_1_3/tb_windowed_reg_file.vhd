library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity TBWREGISTERFILE is
end TBWREGISTERFILE;

architecture TESTA of TBWREGISTERFILE is
    signal CLK        : std_logic := '0';
    signal RESET      : std_logic := '0';
    signal ENABLE     : std_logic := '0';
    signal RD1, RD2   : std_logic := '0';
    signal WR         : std_logic := '0';
    signal ADD_WR     : std_logic_vector(4 downto 0) := (others => '0');
    signal ADD_RD1    : std_logic_vector(4 downto 0) := (others => '0');
    signal ADD_RD2    : std_logic_vector(4 downto 0) := (others => '0');
    signal DATAIN     : std_logic_vector(63 downto 0) := (others => '0');
    signal OUT1, OUT2 : std_logic_vector(63 downto 0);
    signal CALL       : std_logic := '0';
    signal RETURN_SUB : std_logic := '0';
    signal SPILL, FILL : std_logic;

    component wregister_file
        generic (
            BIT_WIDTH    : natural;
            ADDR_WIDTH   : natural;
            M, N, F      : integer
        );
        port ( 
            CLK, RESET, ENABLE, RD1, RD2, WR : IN std_logic;
            ADD_WR, ADD_RD1, ADD_RD2         : IN std_logic_vector;
            DATAIN                           : IN std_logic_vector;
            OUT1, OUT2                       : OUT std_logic_vector;
            CALL, RETURN_SUB                 : IN std_logic;
            SPILL, FILL                      : OUT std_logic
        );
    end component;

begin 
    RG: wregister_file 
        generic map (BIT_WIDTH => 64, ADDR_WIDTH => 5, M => 8, N => 8, F => 4)
        port map (
            CLK => CLK, RESET => RESET, ENABLE => ENABLE, 
            RD1 => RD1, RD2 => RD2, WR => WR, 
            ADD_WR => ADD_WR, ADD_RD1 => ADD_RD1, ADD_RD2 => ADD_RD2, 
            DATAIN => DATAIN, OUT1 => OUT1, OUT2 => OUT2, 
            CALL => CALL, RETURN_SUB => RETURN_SUB, SPILL => SPILL, FILL => FILL
        );

    PCLOCK : process
    begin
        CLK <= '0'; wait for 0.5 ns;
        CLK <= '1'; wait for 0.5 ns;
    end process;


    STIMULI : process
    begin

        RESET <= '1';
        ENABLE <= '0';
        wait for 4 ns;
        
        RESET <= '0';
        ENABLE <= '1';
        wait for 1 ns;

        -- Writing xAA at the virtual address 8 (LOCAL Window 0)
        ADD_WR <= "01000";
        DATAIN <= x"00000000000000AA";
        WR <= '1';
        wait for 2 ns;
        WR <= '0';
        
        -- Check the writing
        ADD_RD1 <= "01000";
        RD1 <= '1';
        wait for 2 ns;
        RD1 <= '0';
        wait for 2 ns;

        -- CALL (Change context: Window 0 -> Window 1)
        CALL <= '1';
        wait for 2 ns;
        CALL <= '0';
        wait for 2 ns;

        -- Re-read the same virtual address to check if the call changed the window
        -- We should read 0 because it is a different window
        ADD_RD1 <= "01000";
        RD1 <= '1';
        wait for 2 ns;
        RD1 <= '0';
        wait for 2 ns;

        -- Writing xBB at the virtual address 8 (LOCAL Window 1)
        ADD_WR <= "01000";
        DATAIN <= x"00000000000000BB";
        WR <= '1';
        wait for 2 ns;
        WR <= '0';
        wait for 2 ns;

        -- RETURN (Change context: Window 1 -> Window 0)
        RETURN_SUB <= '1';
        wait for 2 ns;
        RETURN_SUB <= '0';
        wait for 2 ns;

        -- Re-read the same virtual address to check if the return changed the window
        -- We should read xAA because it is returned to window 0
        ADD_RD1 <= "01000";
        RD1 <= '1';
        wait for 4 ns;
        RD1 <= '0';
	
	wait;
    end process;

end TESTA;