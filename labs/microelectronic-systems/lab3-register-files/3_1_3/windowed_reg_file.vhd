library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity wregister_file is
    generic (
        BIT_WIDTH    : natural := 64;
        ADDR_WIDTH   : natural := 5;  -- from lab requirements: 3N+M = 3*8+8 = 32
        M            : integer := 8;  -- global registers
        N            : integer := 8;  -- registers for each block (IN, LOCAL, OUT)
        F            : integer := 4   -- total windows
    );
    port ( 
        CLK         : IN  std_logic;
        RESET       : IN  std_logic;
        ENABLE      : IN  std_logic;
        RD1         : IN  std_logic;
        RD2         : IN  std_logic;
        WR          : IN  std_logic;
        ADD_WR      : IN  std_logic_vector(ADDR_WIDTH - 1 downto 0);
        ADD_RD1     : IN  std_logic_vector(ADDR_WIDTH - 1 downto 0);
        ADD_RD2     : IN  std_logic_vector(ADDR_WIDTH - 1 downto 0);
        DATAIN      : IN  std_logic_vector(BIT_WIDTH - 1 downto 0);
        OUT1        : OUT std_logic_vector(BIT_WIDTH - 1 downto 0);
        OUT2        : OUT std_logic_vector(BIT_WIDTH - 1 downto 0);
        CALL        : IN  std_logic;
        RETURN_SUB  : IN  std_logic;
        SPILL       : OUT std_logic;
        FILL        : OUT std_logic
    );
end wregister_file;

architecture A of wregister_file is
    constant TOTAL_PHYS_REGS : integer := M + (2 * N * F);	-- total registers for the windows
    
    type REG_ARRAY is array(0 to TOTAL_PHYS_REGS - 1) of std_logic_vector(BIT_WIDTH - 1 downto 0);
    signal REGISTERS : REG_ARRAY;

    signal CWP        : integer range 0 to F - 1;	-- signals for windowing registers
    signal CANSAVE    : integer range 0 to F - 1;
    signal CANRESTORE : integer range 0 to F - 1;

    function get_phys_addr(virt : integer; current_cwp : integer) return integer is	-- address translation function
    begin
        if virt >= 3 * N then
            return (2 * N * F) + (virt - 3 * N);	-- global registers are mapped in the highest section of the physical array
        else	-- circular buffer for the windows
            return (virt + (current_cwp * 2 * N)) mod (2 * N * F);	-- every CWP step corresponds to 2*N positions
        end if;
    end function;

begin
    process(CLK)
        variable v_phys_wr, v_phys_rd1, v_phys_rd2 : integer;
    begin
        if rising_edge(CLK) then
            if RESET = '1' then	-- set values for reset situation
                REGISTERS <= (others => (others => '0'));
                CWP <= 0;
                CANSAVE <= F - 1;
                CANRESTORE <= 0;
                SPILL <= '0';
                FILL <= '0';
                OUT1 <= (others => '0');
                OUT2 <= (others => '0');
                
            elsif ENABLE = '1' then	-- set default values for enable
                SPILL <= '0';
                FILL <= '0';

                -- GESTIONE CONTESTO (CALL / RETURN)
                if CALL = '1' then
                    if CANSAVE > 0 then
                        CWP <= (CWP + 1) mod F;
                        CANSAVE <= CANSAVE - 1;
                        CANRESTORE <= CANRESTORE + 1;
                    else
                        SPILL <= '1'; -- spill request (end of memory)
                    end if;
                end if;

                if RETURN_SUB = '1' then
                    if CANRESTORE > 0 then
                        CWP <= (CWP - 1 + F) mod F;
                        CANSAVE <= CANSAVE + 1;
                        CANRESTORE <= CANRESTORE - 1;
                    else
                        FILL <= '1'; -- free space, memory restore request
                    end if;
                end if;

                v_phys_wr  := get_phys_addr(to_integer(unsigned(ADD_WR)), CWP); -- address translation and memory access
                v_phys_rd1 := get_phys_addr(to_integer(unsigned(ADD_RD1)), CWP);
                v_phys_rd2 := get_phys_addr(to_integer(unsigned(ADD_RD2)), CWP);

                if WR = '1' then
                    REGISTERS(v_phys_wr) <= DATAIN;
                end if;
                
                if RD1 = '1' then
                    OUT1 <= REGISTERS(v_phys_rd1);
                end if;

                if RD2 = '1' then
                    OUT2 <= REGISTERS(v_phys_rd2);
                end if;
            end if;
        end if;
    end process;
end A;