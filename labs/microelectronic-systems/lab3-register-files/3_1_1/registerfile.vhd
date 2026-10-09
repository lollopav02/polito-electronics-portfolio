library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.all;

entity register_file is
    generic (
        BIT_WIDTH    : natural := 64;
        ADDR_WIDTH   : natural := 5;
        REG_NUMBER   : natural := 32
    );
    port ( 
        CLK     : IN  std_logic;
        RESET   : IN  std_logic;
        ENABLE  : IN  std_logic;
        RD1     : IN  std_logic;
        RD2     : IN  std_logic;
        WR      : IN  std_logic;
        ADD_WR  : IN  std_logic_vector(ADDR_WIDTH - 1 downto 0);
        ADD_RD1 : IN  std_logic_vector(ADDR_WIDTH - 1 downto 0);
        ADD_RD2 : IN  std_logic_vector(ADDR_WIDTH - 1 downto 0);
        DATAIN  : IN  std_logic_vector(BIT_WIDTH - 1 downto 0);
        OUT1    : OUT std_logic_vector(BIT_WIDTH - 1 downto 0);
        OUT2    : OUT std_logic_vector(BIT_WIDTH - 1 downto 0)
    );
end register_file;

architecture A of register_file is
    type REG_ARRAY is array(0 to REG_NUMBER - 1) of std_logic_vector(BIT_WIDTH - 1 downto 0);
    signal REGISTERS : REG_ARRAY; 		-- is a matrix of 32 registers 64 bits each
begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then    						-- synchronous reset
                REGISTERS <= (others => (others => '0'));			-- double others function since we are working on an a matrix	
		OUT1 <= (others => '0');					-- outputs are forced to zero when reset signal is active
		OUT2 <= (others => '0');
            elsif ENABLE = '1' then
                if WR = '1' then
                    REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN;	--addresses are first used as unsigned binary values,
									--then converted as integers to choose the correct register	
                end if;
                
                if RD1 = '1' then
                    OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
                end if;

                if RD2 = '1' then
                    OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2)));
                end if;
            end if;
        end if;
    end process;

end A;

