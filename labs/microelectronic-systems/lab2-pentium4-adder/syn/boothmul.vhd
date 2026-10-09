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



architecture STR_BEH of BOOTHMUL is

    -- Radix-4: servono N/2 prodotti parziali

    constant NUM_PP : integer := N / 2;

    

    type PP_ARRAY is array (0 to NUM_PP-1) of signed(2*N-1 downto 0);

    signal partial_products : PP_ARRAY;



    signal B_padded : std_logic_vector(N downto 0);

    signal A_signed : signed(N-1 downto 0);



begin

    A_signed <= signed(A);

    B_padded <= B & '0'; -- Zero implicito in posizione B(-1)



    -- PARTE STRUTTURALE: Generazione Prodotti Parziali (Encoder + Mux)

    GEN_ENCODERS: for i in 0 to NUM_PP-1 generate

        process(B_padded, A_signed)

            variable triplet : std_logic_vector(2 downto 0);

            variable tmp_pp  : signed(N downto 0); -- N+1 per gestire il 2*A

        begin

            triplet := B_padded(2*i+2 downto 2*i);

            

            case triplet is

                when "001" | "010" => tmp_pp := resize(A_signed, N+1);          -- +A

                when "011"         => tmp_pp := A_signed & '0';                 -- +2A

                when "100"         => tmp_pp := -(A_signed & '0');              -- -2A

                when "101" | "110" => tmp_pp := resize(-A_signed, N+1);         -- -A

                when others        => tmp_pp := (others => '0');                -- 0

            end case;



            -- Shift e estensione del segno a 2N bit (Posizionamento del PP)

            partial_products(i) <= shift_left(resize(tmp_pp, 2*N), 2*i);

        end process;

    end generate GEN_ENCODERS;



    -- PARTE COMPORTAMENTALE: Somma dei prodotti parziali (Sommatore ad albero/catena)

    SUM_PROCESS: process(partial_products)

        variable res_sum : signed(2*N-1 downto 0);

    begin

        res_sum := (others => '0');

        for i in 0 to NUM_PP-1 loop

            res_sum := res_sum + partial_products(i);

        end loop;

        P <= std_logic_vector(res_sum);

    end process SUM_PROCESS;



end STR_BEH;
