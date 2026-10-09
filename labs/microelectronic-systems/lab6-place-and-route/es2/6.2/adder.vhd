
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_ADDER is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_ADDER;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_4BIT_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : out 
         std_logic_vector (3 downto 0));

end MUX21_4BIT_N4_7;

architecture SYN_BEHAVIORAL of MUX21_4BIT_N4_7 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => S, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => S, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => S, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => S, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_4BIT_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : out 
         std_logic_vector (3 downto 0));

end MUX21_4BIT_N4_6;

architecture SYN_BEHAVIORAL of MUX21_4BIT_N4_6 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => S, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => S, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => S, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => S, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_4BIT_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : out 
         std_logic_vector (3 downto 0));

end MUX21_4BIT_N4_5;

architecture SYN_BEHAVIORAL of MUX21_4BIT_N4_5 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => S, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => S, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => S, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => S, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_4BIT_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : out 
         std_logic_vector (3 downto 0));

end MUX21_4BIT_N4_4;

architecture SYN_BEHAVIORAL of MUX21_4BIT_N4_4 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => S, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => S, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => S, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => S, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_4BIT_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : out 
         std_logic_vector (3 downto 0));

end MUX21_4BIT_N4_3;

architecture SYN_BEHAVIORAL of MUX21_4BIT_N4_3 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => S, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => S, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => S, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => S, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_4BIT_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : out 
         std_logic_vector (3 downto 0));

end MUX21_4BIT_N4_2;

architecture SYN_BEHAVIORAL of MUX21_4BIT_N4_2 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => S, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => S, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => S, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => S, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_4BIT_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : out 
         std_logic_vector (3 downto 0));

end MUX21_4BIT_N4_1;

architecture SYN_BEHAVIORAL of MUX21_4BIT_N4_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => S, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => S, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => S, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => S, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_15 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_15;

architecture SYN_STRUCTURAL of RCA_NBIT4_15 is

   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_60 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_59 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_58 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_57 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_14;

architecture SYN_STRUCTURAL of RCA_NBIT4_14 is

   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_56 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_55 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_54 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_53 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_13;

architecture SYN_STRUCTURAL of RCA_NBIT4_13 is

   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_52 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_51 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_50 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_49 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_12;

architecture SYN_STRUCTURAL of RCA_NBIT4_12 is

   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_48 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_47 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_46 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_45 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_11;

architecture SYN_STRUCTURAL of RCA_NBIT4_11 is

   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_44 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_43 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_42 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_41 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_10;

architecture SYN_STRUCTURAL of RCA_NBIT4_10 is

   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_40 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_39 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_38 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_37 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_9;

architecture SYN_STRUCTURAL of RCA_NBIT4_9 is

   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_36 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_35 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_34 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_33 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_8;

architecture SYN_STRUCTURAL of RCA_NBIT4_8 is

   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_7;

architecture SYN_STRUCTURAL of RCA_NBIT4_7 is

   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_28 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_27 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_26 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_25 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_6;

architecture SYN_STRUCTURAL of RCA_NBIT4_6 is

   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_24 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_23 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_22 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_21 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_5;

architecture SYN_STRUCTURAL of RCA_NBIT4_5 is

   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_20 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_19 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_18 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_17 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_4;

architecture SYN_STRUCTURAL of RCA_NBIT4_4 is

   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_3;

architecture SYN_STRUCTURAL of RCA_NBIT4_3 is

   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_12 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_11 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_10 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_9 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2;

architecture SYN_STRUCTURAL of RCA_NBIT4_2 is

   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_8 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_7 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_6 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_5 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_1;

architecture SYN_STRUCTURAL of RCA_NBIT4_1 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_4 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_3 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_2 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_1 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CARRY_SELECT_BLOCK_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SELECT_BLOCK_NBIT4_7;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_NBIT4_7 is

   component MUX21_4BIT_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_low_3_port, sum_low_2_port, 
      sum_low_1_port, sum_low_0_port, sum_high_3_port, sum_high_2_port, 
      sum_high_1_port, sum_high_0_port, n_1000, n_1001 : std_logic;

begin
   
   RCA_LOW : RCA_NBIT4_14 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_low_3_port, S(2) => sum_low_2_port, S(1) => 
                           sum_low_1_port, S(0) => sum_low_0_port, Co => n_1000
                           );
   RCA_HIGH : RCA_NBIT4_13 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_high_3_port, S(2) => sum_high_2_port, S(1) => 
                           sum_high_1_port, S(0) => sum_high_0_port, Co => 
                           n_1001);
   MUX_INST : MUX21_4BIT_N4_7 port map( A(3) => sum_high_3_port, A(2) => 
                           sum_high_2_port, A(1) => sum_high_1_port, A(0) => 
                           sum_high_0_port, B(3) => sum_low_3_port, B(2) => 
                           sum_low_2_port, B(1) => sum_low_1_port, B(0) => 
                           sum_low_0_port, S => Ci, Y(3) => S(3), Y(2) => S(2),
                           Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CARRY_SELECT_BLOCK_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SELECT_BLOCK_NBIT4_6;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_NBIT4_6 is

   component MUX21_4BIT_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_low_3_port, sum_low_2_port, 
      sum_low_1_port, sum_low_0_port, sum_high_3_port, sum_high_2_port, 
      sum_high_1_port, sum_high_0_port, n_1002, n_1003 : std_logic;

begin
   
   RCA_LOW : RCA_NBIT4_12 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_low_3_port, S(2) => sum_low_2_port, S(1) => 
                           sum_low_1_port, S(0) => sum_low_0_port, Co => n_1002
                           );
   RCA_HIGH : RCA_NBIT4_11 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_high_3_port, S(2) => sum_high_2_port, S(1) => 
                           sum_high_1_port, S(0) => sum_high_0_port, Co => 
                           n_1003);
   MUX_INST : MUX21_4BIT_N4_6 port map( A(3) => sum_high_3_port, A(2) => 
                           sum_high_2_port, A(1) => sum_high_1_port, A(0) => 
                           sum_high_0_port, B(3) => sum_low_3_port, B(2) => 
                           sum_low_2_port, B(1) => sum_low_1_port, B(0) => 
                           sum_low_0_port, S => Ci, Y(3) => S(3), Y(2) => S(2),
                           Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CARRY_SELECT_BLOCK_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SELECT_BLOCK_NBIT4_5;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_NBIT4_5 is

   component MUX21_4BIT_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_low_3_port, sum_low_2_port, 
      sum_low_1_port, sum_low_0_port, sum_high_3_port, sum_high_2_port, 
      sum_high_1_port, sum_high_0_port, n_1004, n_1005 : std_logic;

begin
   
   RCA_LOW : RCA_NBIT4_10 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_low_3_port, S(2) => sum_low_2_port, S(1) => 
                           sum_low_1_port, S(0) => sum_low_0_port, Co => n_1004
                           );
   RCA_HIGH : RCA_NBIT4_9 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_high_3_port, S(2) => sum_high_2_port, S(1) => 
                           sum_high_1_port, S(0) => sum_high_0_port, Co => 
                           n_1005);
   MUX_INST : MUX21_4BIT_N4_5 port map( A(3) => sum_high_3_port, A(2) => 
                           sum_high_2_port, A(1) => sum_high_1_port, A(0) => 
                           sum_high_0_port, B(3) => sum_low_3_port, B(2) => 
                           sum_low_2_port, B(1) => sum_low_1_port, B(0) => 
                           sum_low_0_port, S => Ci, Y(3) => S(3), Y(2) => S(2),
                           Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CARRY_SELECT_BLOCK_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SELECT_BLOCK_NBIT4_4;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_NBIT4_4 is

   component MUX21_4BIT_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_low_3_port, sum_low_2_port, 
      sum_low_1_port, sum_low_0_port, sum_high_3_port, sum_high_2_port, 
      sum_high_1_port, sum_high_0_port, n_1006, n_1007 : std_logic;

begin
   
   RCA_LOW : RCA_NBIT4_8 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_low_3_port, S(2) => sum_low_2_port, S(1) => 
                           sum_low_1_port, S(0) => sum_low_0_port, Co => n_1006
                           );
   RCA_HIGH : RCA_NBIT4_7 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_high_3_port, S(2) => sum_high_2_port, S(1) => 
                           sum_high_1_port, S(0) => sum_high_0_port, Co => 
                           n_1007);
   MUX_INST : MUX21_4BIT_N4_4 port map( A(3) => sum_high_3_port, A(2) => 
                           sum_high_2_port, A(1) => sum_high_1_port, A(0) => 
                           sum_high_0_port, B(3) => sum_low_3_port, B(2) => 
                           sum_low_2_port, B(1) => sum_low_1_port, B(0) => 
                           sum_low_0_port, S => Ci, Y(3) => S(3), Y(2) => S(2),
                           Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CARRY_SELECT_BLOCK_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SELECT_BLOCK_NBIT4_3;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_NBIT4_3 is

   component MUX21_4BIT_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_low_3_port, sum_low_2_port, 
      sum_low_1_port, sum_low_0_port, sum_high_3_port, sum_high_2_port, 
      sum_high_1_port, sum_high_0_port, n_1008, n_1009 : std_logic;

begin
   
   RCA_LOW : RCA_NBIT4_6 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_low_3_port, S(2) => sum_low_2_port, S(1) => 
                           sum_low_1_port, S(0) => sum_low_0_port, Co => n_1008
                           );
   RCA_HIGH : RCA_NBIT4_5 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_high_3_port, S(2) => sum_high_2_port, S(1) => 
                           sum_high_1_port, S(0) => sum_high_0_port, Co => 
                           n_1009);
   MUX_INST : MUX21_4BIT_N4_3 port map( A(3) => sum_high_3_port, A(2) => 
                           sum_high_2_port, A(1) => sum_high_1_port, A(0) => 
                           sum_high_0_port, B(3) => sum_low_3_port, B(2) => 
                           sum_low_2_port, B(1) => sum_low_1_port, B(0) => 
                           sum_low_0_port, S => Ci, Y(3) => S(3), Y(2) => S(2),
                           Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CARRY_SELECT_BLOCK_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SELECT_BLOCK_NBIT4_2;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_NBIT4_2 is

   component MUX21_4BIT_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_low_3_port, sum_low_2_port, 
      sum_low_1_port, sum_low_0_port, sum_high_3_port, sum_high_2_port, 
      sum_high_1_port, sum_high_0_port, n_1010, n_1011 : std_logic;

begin
   
   RCA_LOW : RCA_NBIT4_4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_low_3_port, S(2) => sum_low_2_port, S(1) => 
                           sum_low_1_port, S(0) => sum_low_0_port, Co => n_1010
                           );
   RCA_HIGH : RCA_NBIT4_3 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_high_3_port, S(2) => sum_high_2_port, S(1) => 
                           sum_high_1_port, S(0) => sum_high_0_port, Co => 
                           n_1011);
   MUX_INST : MUX21_4BIT_N4_2 port map( A(3) => sum_high_3_port, A(2) => 
                           sum_high_2_port, A(1) => sum_high_1_port, A(0) => 
                           sum_high_0_port, B(3) => sum_low_3_port, B(2) => 
                           sum_low_2_port, B(1) => sum_low_1_port, B(0) => 
                           sum_low_0_port, S => Ci, Y(3) => S(3), Y(2) => S(2),
                           Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CARRY_SELECT_BLOCK_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SELECT_BLOCK_NBIT4_1;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_NBIT4_1 is

   component MUX21_4BIT_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_low_3_port, sum_low_2_port, 
      sum_low_1_port, sum_low_0_port, sum_high_3_port, sum_high_2_port, 
      sum_high_1_port, sum_high_0_port, n_1012, n_1013 : std_logic;

begin
   
   RCA_LOW : RCA_NBIT4_2 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_low_3_port, S(2) => sum_low_2_port, S(1) => 
                           sum_low_1_port, S(0) => sum_low_0_port, Co => n_1012
                           );
   RCA_HIGH : RCA_NBIT4_1 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_high_3_port, S(2) => sum_high_2_port, S(1) => 
                           sum_high_1_port, S(0) => sum_high_0_port, Co => 
                           n_1013);
   MUX_INST : MUX21_4BIT_N4_1 port map( A(3) => sum_high_3_port, A(2) => 
                           sum_high_2_port, A(1) => sum_high_1_port, A(0) => 
                           sum_high_0_port, B(3) => sum_low_3_port, B(2) => 
                           sum_low_2_port, B(1) => sum_low_1_port, B(0) => 
                           sum_low_0_port, S => Ci, Y(3) => S(3), Y(2) => S(2),
                           Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_128 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_128;

architecture SYN_BEHAVIORAL of PG_BLOCK_128 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_127 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_127;

architecture SYN_BEHAVIORAL of PG_BLOCK_127 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_126 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_126;

architecture SYN_BEHAVIORAL of PG_BLOCK_126 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_125 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_125;

architecture SYN_BEHAVIORAL of PG_BLOCK_125 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_124 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_124;

architecture SYN_BEHAVIORAL of PG_BLOCK_124 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_123 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_123;

architecture SYN_BEHAVIORAL of PG_BLOCK_123 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_122 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_122;

architecture SYN_BEHAVIORAL of PG_BLOCK_122 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_121 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_121;

architecture SYN_BEHAVIORAL of PG_BLOCK_121 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_120 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_120;

architecture SYN_BEHAVIORAL of PG_BLOCK_120 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_119 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_119;

architecture SYN_BEHAVIORAL of PG_BLOCK_119 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_118 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_118;

architecture SYN_BEHAVIORAL of PG_BLOCK_118 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_117 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_117;

architecture SYN_BEHAVIORAL of PG_BLOCK_117 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_116 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_116;

architecture SYN_BEHAVIORAL of PG_BLOCK_116 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_115 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_115;

architecture SYN_BEHAVIORAL of PG_BLOCK_115 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_114 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_114;

architecture SYN_BEHAVIORAL of PG_BLOCK_114 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_113 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_113;

architecture SYN_BEHAVIORAL of PG_BLOCK_113 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_112 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_112;

architecture SYN_BEHAVIORAL of PG_BLOCK_112 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_111 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_111;

architecture SYN_BEHAVIORAL of PG_BLOCK_111 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_110 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_110;

architecture SYN_BEHAVIORAL of PG_BLOCK_110 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_109 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_109;

architecture SYN_BEHAVIORAL of PG_BLOCK_109 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_108 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_108;

architecture SYN_BEHAVIORAL of PG_BLOCK_108 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_107 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_107;

architecture SYN_BEHAVIORAL of PG_BLOCK_107 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_106 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_106;

architecture SYN_BEHAVIORAL of PG_BLOCK_106 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_105 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_105;

architecture SYN_BEHAVIORAL of PG_BLOCK_105 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_104 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_104;

architecture SYN_BEHAVIORAL of PG_BLOCK_104 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_103 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_103;

architecture SYN_BEHAVIORAL of PG_BLOCK_103 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_102 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_102;

architecture SYN_BEHAVIORAL of PG_BLOCK_102 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_101 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_101;

architecture SYN_BEHAVIORAL of PG_BLOCK_101 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_100 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_100;

architecture SYN_BEHAVIORAL of PG_BLOCK_100 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_99 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_99;

architecture SYN_BEHAVIORAL of PG_BLOCK_99 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_98 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_98;

architecture SYN_BEHAVIORAL of PG_BLOCK_98 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_97 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_97;

architecture SYN_BEHAVIORAL of PG_BLOCK_97 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_96 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_96;

architecture SYN_BEHAVIORAL of PG_BLOCK_96 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_95 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_95;

architecture SYN_BEHAVIORAL of PG_BLOCK_95 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_94 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_94;

architecture SYN_BEHAVIORAL of PG_BLOCK_94 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_93 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_93;

architecture SYN_BEHAVIORAL of PG_BLOCK_93 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_92 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_92;

architecture SYN_BEHAVIORAL of PG_BLOCK_92 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_91 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_91;

architecture SYN_BEHAVIORAL of PG_BLOCK_91 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_90 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_90;

architecture SYN_BEHAVIORAL of PG_BLOCK_90 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_89 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_89;

architecture SYN_BEHAVIORAL of PG_BLOCK_89 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_88 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_88;

architecture SYN_BEHAVIORAL of PG_BLOCK_88 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_87 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_87;

architecture SYN_BEHAVIORAL of PG_BLOCK_87 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_86 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_86;

architecture SYN_BEHAVIORAL of PG_BLOCK_86 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_85 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_85;

architecture SYN_BEHAVIORAL of PG_BLOCK_85 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_84 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_84;

architecture SYN_BEHAVIORAL of PG_BLOCK_84 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_83 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_83;

architecture SYN_BEHAVIORAL of PG_BLOCK_83 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_82 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_82;

architecture SYN_BEHAVIORAL of PG_BLOCK_82 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_81 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_81;

architecture SYN_BEHAVIORAL of PG_BLOCK_81 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_80 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_80;

architecture SYN_BEHAVIORAL of PG_BLOCK_80 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_79 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_79;

architecture SYN_BEHAVIORAL of PG_BLOCK_79 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_78 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_78;

architecture SYN_BEHAVIORAL of PG_BLOCK_78 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_77 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_77;

architecture SYN_BEHAVIORAL of PG_BLOCK_77 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_76 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_76;

architecture SYN_BEHAVIORAL of PG_BLOCK_76 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_75 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_75;

architecture SYN_BEHAVIORAL of PG_BLOCK_75 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_74 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_74;

architecture SYN_BEHAVIORAL of PG_BLOCK_74 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_73 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_73;

architecture SYN_BEHAVIORAL of PG_BLOCK_73 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_72 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_72;

architecture SYN_BEHAVIORAL of PG_BLOCK_72 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_71 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_71;

architecture SYN_BEHAVIORAL of PG_BLOCK_71 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_70 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_70;

architecture SYN_BEHAVIORAL of PG_BLOCK_70 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_69 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_69;

architecture SYN_BEHAVIORAL of PG_BLOCK_69 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_68 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_68;

architecture SYN_BEHAVIORAL of PG_BLOCK_68 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_67 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_67;

architecture SYN_BEHAVIORAL of PG_BLOCK_67 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_66 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_66;

architecture SYN_BEHAVIORAL of PG_BLOCK_66 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_65 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_65;

architecture SYN_BEHAVIORAL of PG_BLOCK_65 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_64 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_64;

architecture SYN_BEHAVIORAL of PG_BLOCK_64 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_63 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_63;

architecture SYN_BEHAVIORAL of PG_BLOCK_63 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_62 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_62;

architecture SYN_BEHAVIORAL of PG_BLOCK_62 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_61 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_61;

architecture SYN_BEHAVIORAL of PG_BLOCK_61 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_60 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_60;

architecture SYN_BEHAVIORAL of PG_BLOCK_60 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_59 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_59;

architecture SYN_BEHAVIORAL of PG_BLOCK_59 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_58 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_58;

architecture SYN_BEHAVIORAL of PG_BLOCK_58 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_57 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_57;

architecture SYN_BEHAVIORAL of PG_BLOCK_57 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_56 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_56;

architecture SYN_BEHAVIORAL of PG_BLOCK_56 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_55 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_55;

architecture SYN_BEHAVIORAL of PG_BLOCK_55 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_54 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_54;

architecture SYN_BEHAVIORAL of PG_BLOCK_54 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_53 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_53;

architecture SYN_BEHAVIORAL of PG_BLOCK_53 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_52 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_52;

architecture SYN_BEHAVIORAL of PG_BLOCK_52 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_51 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_51;

architecture SYN_BEHAVIORAL of PG_BLOCK_51 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_50 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_50;

architecture SYN_BEHAVIORAL of PG_BLOCK_50 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_49 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_49;

architecture SYN_BEHAVIORAL of PG_BLOCK_49 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_48 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_48;

architecture SYN_BEHAVIORAL of PG_BLOCK_48 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_47 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_47;

architecture SYN_BEHAVIORAL of PG_BLOCK_47 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_46 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_46;

architecture SYN_BEHAVIORAL of PG_BLOCK_46 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_45 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_45;

architecture SYN_BEHAVIORAL of PG_BLOCK_45 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_44 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_44;

architecture SYN_BEHAVIORAL of PG_BLOCK_44 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_43 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_43;

architecture SYN_BEHAVIORAL of PG_BLOCK_43 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_42 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_42;

architecture SYN_BEHAVIORAL of PG_BLOCK_42 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_41 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_41;

architecture SYN_BEHAVIORAL of PG_BLOCK_41 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_40 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_40;

architecture SYN_BEHAVIORAL of PG_BLOCK_40 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_39 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_39;

architecture SYN_BEHAVIORAL of PG_BLOCK_39 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_38 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_38;

architecture SYN_BEHAVIORAL of PG_BLOCK_38 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_37 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_37;

architecture SYN_BEHAVIORAL of PG_BLOCK_37 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_36 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_36;

architecture SYN_BEHAVIORAL of PG_BLOCK_36 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_35 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_35;

architecture SYN_BEHAVIORAL of PG_BLOCK_35 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_34 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_34;

architecture SYN_BEHAVIORAL of PG_BLOCK_34 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_33 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_33;

architecture SYN_BEHAVIORAL of PG_BLOCK_33 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_32 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_32;

architecture SYN_BEHAVIORAL of PG_BLOCK_32 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_31 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_31;

architecture SYN_BEHAVIORAL of PG_BLOCK_31 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_30 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_30;

architecture SYN_BEHAVIORAL of PG_BLOCK_30 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_29 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_29;

architecture SYN_BEHAVIORAL of PG_BLOCK_29 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_28 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_28;

architecture SYN_BEHAVIORAL of PG_BLOCK_28 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_27 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_27;

architecture SYN_BEHAVIORAL of PG_BLOCK_27 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_26 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_26;

architecture SYN_BEHAVIORAL of PG_BLOCK_26 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_25 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_25;

architecture SYN_BEHAVIORAL of PG_BLOCK_25 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_24 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_24;

architecture SYN_BEHAVIORAL of PG_BLOCK_24 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_23 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_23;

architecture SYN_BEHAVIORAL of PG_BLOCK_23 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_22 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_22;

architecture SYN_BEHAVIORAL of PG_BLOCK_22 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_21 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_21;

architecture SYN_BEHAVIORAL of PG_BLOCK_21 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_20 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_20;

architecture SYN_BEHAVIORAL of PG_BLOCK_20 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_19 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_19;

architecture SYN_BEHAVIORAL of PG_BLOCK_19 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_18 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_18;

architecture SYN_BEHAVIORAL of PG_BLOCK_18 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_17 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_17;

architecture SYN_BEHAVIORAL of PG_BLOCK_17 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_16 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_16;

architecture SYN_BEHAVIORAL of PG_BLOCK_16 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_15 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_15;

architecture SYN_BEHAVIORAL of PG_BLOCK_15 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_14 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_14;

architecture SYN_BEHAVIORAL of PG_BLOCK_14 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_13 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_13;

architecture SYN_BEHAVIORAL of PG_BLOCK_13 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_12 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_12;

architecture SYN_BEHAVIORAL of PG_BLOCK_12 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_11 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_11;

architecture SYN_BEHAVIORAL of PG_BLOCK_11 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_10 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_10;

architecture SYN_BEHAVIORAL of PG_BLOCK_10 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_9 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_9;

architecture SYN_BEHAVIORAL of PG_BLOCK_9 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_8 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_8;

architecture SYN_BEHAVIORAL of PG_BLOCK_8 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_7 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_7;

architecture SYN_BEHAVIORAL of PG_BLOCK_7 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_6 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_6;

architecture SYN_BEHAVIORAL of PG_BLOCK_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_5 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_5;

architecture SYN_BEHAVIORAL of PG_BLOCK_5 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_4 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_4;

architecture SYN_BEHAVIORAL of PG_BLOCK_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_3 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_3;

architecture SYN_BEHAVIORAL of PG_BLOCK_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_2 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_2;

architecture SYN_BEHAVIORAL of PG_BLOCK_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_1 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_1;

architecture SYN_BEHAVIORAL of PG_BLOCK_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_5 is

   port( Pik, Gik, Gkj : in std_logic;  Gij : out std_logic);

end G_BLOCK_5;

architecture SYN_BEHAVIORAL of G_BLOCK_5 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_4 is

   port( Pik, Gik, Gkj : in std_logic;  Gij : out std_logic);

end G_BLOCK_4;

architecture SYN_BEHAVIORAL of G_BLOCK_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_3 is

   port( Pik, Gik, Gkj : in std_logic;  Gij : out std_logic);

end G_BLOCK_3;

architecture SYN_BEHAVIORAL of G_BLOCK_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_2 is

   port( Pik, Gik, Gkj : in std_logic;  Gij : out std_logic);

end G_BLOCK_2;

architecture SYN_BEHAVIORAL of G_BLOCK_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_1 is

   port( Pik, Gik, Gkj : in std_logic;  Gij : out std_logic);

end G_BLOCK_1;

architecture SYN_BEHAVIORAL of G_BLOCK_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_31 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_31;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_31 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_30 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_30;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_30 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_29 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_29;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_29 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_28 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_28;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_28 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_27 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_27;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_27 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_26 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_26;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_25 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_25;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_24 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_24;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_23 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_23;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_22 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_22;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_21 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_21;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_20 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_20;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_19 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_19;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_18 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_18;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_17 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_17;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_16 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_16;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_15 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_15;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_14 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_14;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_13 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_13;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_12 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_12;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_12 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_11 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_11;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_10 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_10;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_9 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_9;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_8 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_8;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_7 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_7;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_6 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_6;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_5 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_5;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_4 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_4;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_3 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_3;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_2 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_2;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_1 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_1;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U1 : XOR2_X1 port map( A => Ci, B => n1, Z => S);
   U2 : INV_X1 port map( A => n2, ZN => Co);
   U3 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n1, B2 => Ci, ZN => n2);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity MUX21_4BIT_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : out 
         std_logic_vector (3 downto 0));

end MUX21_4BIT_N4_0;

architecture SYN_BEHAVIORAL of MUX21_4BIT_N4_0 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => S, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => S, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => S, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => S, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity RCA_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_0;

architecture SYN_STRUCTURAL of RCA_NBIT4_0 is

   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_63 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_62 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_61 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CARRY_SELECT_BLOCK_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SELECT_BLOCK_NBIT4_0;

architecture SYN_STRUCTURAL of CARRY_SELECT_BLOCK_NBIT4_0 is

   component MUX21_4BIT_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  S : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, sum_low_3_port, sum_low_2_port, 
      sum_low_1_port, sum_low_0_port, sum_high_3_port, sum_high_2_port, 
      sum_high_1_port, sum_high_0_port, n_1014, n_1015 : std_logic;

begin
   
   RCA_LOW : RCA_NBIT4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic0_port, S(3) => 
                           sum_low_3_port, S(2) => sum_low_2_port, S(1) => 
                           sum_low_1_port, S(0) => sum_low_0_port, Co => n_1014
                           );
   RCA_HIGH : RCA_NBIT4_15 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci => X_Logic1_port, S(3) => 
                           sum_high_3_port, S(2) => sum_high_2_port, S(1) => 
                           sum_high_1_port, S(0) => sum_high_0_port, Co => 
                           n_1015);
   MUX_INST : MUX21_4BIT_N4_0 port map( A(3) => sum_high_3_port, A(2) => 
                           sum_high_2_port, A(1) => sum_high_1_port, A(0) => 
                           sum_high_0_port, B(3) => sum_low_3_port, B(2) => 
                           sum_low_2_port, B(1) => sum_low_1_port, B(0) => 
                           sum_low_0_port, S => Ci, Y(3) => S(3), Y(2) => S(2),
                           Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_BLOCK_0 is

   port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);

end PG_BLOCK_0;

architecture SYN_BEHAVIORAL of PG_BLOCK_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n1, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity G_BLOCK_0 is

   port( Pik, Gik, Gkj : in std_logic;  Gij : out std_logic);

end G_BLOCK_0;

architecture SYN_BEHAVIORAL of G_BLOCK_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity PG_NET_BLOCK_0 is

   port( A, B : in std_logic;  p, g : out std_logic);

end PG_NET_BLOCK_0;

architecture SYN_BEHAVIORAL of PG_NET_BLOCK_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : XOR2_X1 port map( A => B, B => A, Z => p);
   U2 : AND2_X1 port map( A1 => B, A2 => A, ZN => g);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector (7
         downto 0);  S : out std_logic_vector (31 downto 0));

end SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8;

architecture SYN_STRUCTURAL of SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 is

   component CARRY_SELECT_BLOCK_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SELECT_BLOCK_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SELECT_BLOCK_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SELECT_BLOCK_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SELECT_BLOCK_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SELECT_BLOCK_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SELECT_BLOCK_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SELECT_BLOCK_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;

begin
   
   CSB_INST_0 : CARRY_SELECT_BLOCK_NBIT4_0 port map( A(3) => A(3), A(2) => A(2)
                           , A(1) => A(1), A(0) => A(0), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Ci => Ci(0), S(3) 
                           => S(3), S(2) => S(2), S(1) => S(1), S(0) => S(0));
   CSB_INST_1 : CARRY_SELECT_BLOCK_NBIT4_7 port map( A(3) => A(7), A(2) => A(6)
                           , A(1) => A(5), A(0) => A(4), B(3) => B(7), B(2) => 
                           B(6), B(1) => B(5), B(0) => B(4), Ci => Ci(1), S(3) 
                           => S(7), S(2) => S(6), S(1) => S(5), S(0) => S(4));
   CSB_INST_2 : CARRY_SELECT_BLOCK_NBIT4_6 port map( A(3) => A(11), A(2) => 
                           A(10), A(1) => A(9), A(0) => A(8), B(3) => B(11), 
                           B(2) => B(10), B(1) => B(9), B(0) => B(8), Ci => 
                           Ci(2), S(3) => S(11), S(2) => S(10), S(1) => S(9), 
                           S(0) => S(8));
   CSB_INST_3 : CARRY_SELECT_BLOCK_NBIT4_5 port map( A(3) => A(15), A(2) => 
                           A(14), A(1) => A(13), A(0) => A(12), B(3) => B(15), 
                           B(2) => B(14), B(1) => B(13), B(0) => B(12), Ci => 
                           Ci(3), S(3) => S(15), S(2) => S(14), S(1) => S(13), 
                           S(0) => S(12));
   CSB_INST_4 : CARRY_SELECT_BLOCK_NBIT4_4 port map( A(3) => A(19), A(2) => 
                           A(18), A(1) => A(17), A(0) => A(16), B(3) => B(19), 
                           B(2) => B(18), B(1) => B(17), B(0) => B(16), Ci => 
                           Ci(4), S(3) => S(19), S(2) => S(18), S(1) => S(17), 
                           S(0) => S(16));
   CSB_INST_5 : CARRY_SELECT_BLOCK_NBIT4_3 port map( A(3) => A(23), A(2) => 
                           A(22), A(1) => A(21), A(0) => A(20), B(3) => B(23), 
                           B(2) => B(22), B(1) => B(21), B(0) => B(20), Ci => 
                           Ci(5), S(3) => S(23), S(2) => S(22), S(1) => S(21), 
                           S(0) => S(20));
   CSB_INST_6 : CARRY_SELECT_BLOCK_NBIT4_2 port map( A(3) => A(27), A(2) => 
                           A(26), A(1) => A(25), A(0) => A(24), B(3) => B(27), 
                           B(2) => B(26), B(1) => B(25), B(0) => B(24), Ci => 
                           Ci(6), S(3) => S(27), S(2) => S(26), S(1) => S(25), 
                           S(0) => S(24));
   CSB_INST_7 : CARRY_SELECT_BLOCK_NBIT4_1 port map( A(3) => A(31), A(2) => 
                           A(30), A(1) => A(29), A(0) => A(28), B(3) => B(31), 
                           B(2) => B(30), B(1) => B(29), B(0) => B(28), Ci => 
                           Ci(7), S(3) => S(31), S(2) => S(30), S(1) => S(29), 
                           S(0) => S(28));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co : 
         out std_logic_vector (7 downto 0));

end CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4;

architecture SYN_STRUCTURAL of CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   component G_BLOCK_1
      port( Pik, Gik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component PG_BLOCK_1
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_2
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_3
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_4
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_5
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_6
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_7
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_8
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_9
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_10
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_11
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_12
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_13
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_14
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_15
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_16
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component G_BLOCK_2
      port( Pik, Gik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component PG_BLOCK_17
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_18
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_19
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_20
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_21
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_22
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_23
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_24
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_25
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_26
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_27
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_28
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_29
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_30
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_31
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_32
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_33
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_34
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_35
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_36
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_37
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_38
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_39
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_40
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component G_BLOCK_3
      port( Pik, Gik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component PG_BLOCK_41
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_42
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_43
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_44
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_45
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_46
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_47
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_48
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_49
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_50
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_51
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_52
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_53
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_54
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_55
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_56
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_57
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_58
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_59
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_60
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_61
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_62
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_63
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_64
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_65
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_66
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_67
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_68
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component G_BLOCK_4
      port( Pik, Gik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component PG_BLOCK_69
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_70
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_71
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_72
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_73
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_74
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_75
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_76
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_77
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_78
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_79
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_80
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_81
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_82
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_83
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_84
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_85
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_86
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_87
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_88
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_89
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_90
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_91
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_92
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_93
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_94
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_95
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_96
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_97
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_98
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component G_BLOCK_5
      port( Pik, Gik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component PG_BLOCK_99
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_100
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_101
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_102
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_103
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_104
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_105
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_106
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_107
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_108
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_109
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_110
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_111
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_112
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_113
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_114
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_115
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_116
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_117
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_118
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_119
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_120
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_121
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_122
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_123
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_124
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_125
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_126
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_127
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_128
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component PG_BLOCK_0
      port( Pik, Gik, Pkj, Gkj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component G_BLOCK_0
      port( Pik, Gik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component PG_NET_BLOCK_1
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_2
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_3
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_4
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_5
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_6
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_7
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_8
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_9
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_10
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_11
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_12
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_13
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_14
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_15
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_16
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_17
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_18
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_19
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_20
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_21
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_22
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_23
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_24
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_25
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_26
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_27
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_28
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_29
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_30
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_31
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   component PG_NET_BLOCK_0
      port( A, B : in std_logic;  p, g : out std_logic);
   end component;
   
   signal X_Logic0_port, Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port,
      Co_2_port, Co_1_port, Co_0_port, P_matrix_1_31_port, P_matrix_1_30_port, 
      P_matrix_1_29_port, P_matrix_1_28_port, P_matrix_1_27_port, 
      P_matrix_1_26_port, P_matrix_1_25_port, P_matrix_1_24_port, 
      P_matrix_1_23_port, P_matrix_1_22_port, P_matrix_1_21_port, 
      P_matrix_1_20_port, P_matrix_1_19_port, P_matrix_1_18_port, 
      P_matrix_1_17_port, P_matrix_1_16_port, P_matrix_1_15_port, 
      P_matrix_1_14_port, P_matrix_1_13_port, P_matrix_1_12_port, 
      P_matrix_1_11_port, P_matrix_1_10_port, P_matrix_1_9_port, 
      P_matrix_1_8_port, P_matrix_1_7_port, P_matrix_1_6_port, 
      P_matrix_1_5_port, P_matrix_1_4_port, P_matrix_1_3_port, 
      P_matrix_1_2_port, P_matrix_0_32_port, P_matrix_0_31_port, 
      P_matrix_0_30_port, P_matrix_0_29_port, P_matrix_0_28_port, 
      P_matrix_0_27_port, P_matrix_0_26_port, P_matrix_0_25_port, 
      P_matrix_0_24_port, P_matrix_0_23_port, P_matrix_0_22_port, 
      P_matrix_0_21_port, P_matrix_0_20_port, P_matrix_0_19_port, 
      P_matrix_0_18_port, P_matrix_0_17_port, P_matrix_0_16_port, 
      P_matrix_0_15_port, P_matrix_0_14_port, P_matrix_0_13_port, 
      P_matrix_0_12_port, P_matrix_0_11_port, P_matrix_0_10_port, 
      P_matrix_0_9_port, P_matrix_0_8_port, P_matrix_0_7_port, 
      P_matrix_0_6_port, P_matrix_0_5_port, P_matrix_0_4_port, 
      P_matrix_0_3_port, P_matrix_0_2_port, P_matrix_0_1_port, 
      G_matrix_1_31_port, G_matrix_1_30_port, G_matrix_1_29_port, 
      G_matrix_1_28_port, G_matrix_1_27_port, G_matrix_1_26_port, 
      G_matrix_1_25_port, G_matrix_1_24_port, G_matrix_1_23_port, 
      G_matrix_1_22_port, G_matrix_1_21_port, G_matrix_1_20_port, 
      G_matrix_1_19_port, G_matrix_1_18_port, G_matrix_1_17_port, 
      G_matrix_1_16_port, G_matrix_1_15_port, G_matrix_1_14_port, 
      G_matrix_1_13_port, G_matrix_1_12_port, G_matrix_1_11_port, 
      G_matrix_1_10_port, G_matrix_1_9_port, G_matrix_1_8_port, 
      G_matrix_1_7_port, G_matrix_1_6_port, G_matrix_1_5_port, 
      G_matrix_1_4_port, G_matrix_1_3_port, G_matrix_1_2_port, 
      G_matrix_0_32_port, G_matrix_0_31_port, G_matrix_0_30_port, 
      G_matrix_0_29_port, G_matrix_0_28_port, G_matrix_0_27_port, 
      G_matrix_0_26_port, G_matrix_0_25_port, G_matrix_0_24_port, 
      G_matrix_0_23_port, G_matrix_0_22_port, G_matrix_0_21_port, 
      G_matrix_0_20_port, G_matrix_0_19_port, G_matrix_0_18_port, 
      G_matrix_0_17_port, G_matrix_0_16_port, G_matrix_0_15_port, 
      G_matrix_0_14_port, G_matrix_0_13_port, G_matrix_0_12_port, 
      G_matrix_0_11_port, G_matrix_0_10_port, G_matrix_0_9_port, 
      G_matrix_0_8_port, G_matrix_0_7_port, G_matrix_0_6_port, 
      G_matrix_0_5_port, G_matrix_0_4_port, G_matrix_0_3_port, 
      G_matrix_0_2_port, G_matrix_0_1_port, G_matrix_5_32_port, 
      G_matrix_5_15_port, G_matrix_5_14_port, G_matrix_5_13_port, 
      G_matrix_5_11_port, G_matrix_5_10_port, G_matrix_5_9_port, 
      G_matrix_4_32_port, G_matrix_4_31_port, G_matrix_4_30_port, 
      G_matrix_4_29_port, G_matrix_4_28_port, G_matrix_4_27_port, 
      G_matrix_4_26_port, G_matrix_4_25_port, G_matrix_4_24_port, 
      G_matrix_4_23_port, G_matrix_4_22_port, G_matrix_4_21_port, 
      G_matrix_4_20_port, G_matrix_4_19_port, G_matrix_4_18_port, 
      G_matrix_4_17_port, G_matrix_4_16_port, G_matrix_4_7_port, 
      G_matrix_4_6_port, G_matrix_4_5_port, G_matrix_3_32_port, 
      G_matrix_3_31_port, G_matrix_3_30_port, G_matrix_3_29_port, 
      G_matrix_3_28_port, G_matrix_3_27_port, G_matrix_3_26_port, 
      G_matrix_3_25_port, G_matrix_3_24_port, G_matrix_3_23_port, 
      G_matrix_3_22_port, G_matrix_3_21_port, G_matrix_3_20_port, 
      G_matrix_3_19_port, G_matrix_3_18_port, G_matrix_3_17_port, 
      G_matrix_3_16_port, G_matrix_3_15_port, G_matrix_3_14_port, 
      G_matrix_3_13_port, G_matrix_3_12_port, G_matrix_3_11_port, 
      G_matrix_3_10_port, G_matrix_3_9_port, G_matrix_3_8_port, 
      G_matrix_3_3_port, G_matrix_3_2_port, G_matrix_2_32_port, 
      G_matrix_2_31_port, G_matrix_2_30_port, G_matrix_2_29_port, 
      G_matrix_2_28_port, G_matrix_2_27_port, G_matrix_2_26_port, 
      G_matrix_2_25_port, G_matrix_2_24_port, G_matrix_2_23_port, 
      G_matrix_2_22_port, G_matrix_2_21_port, G_matrix_2_20_port, 
      G_matrix_2_19_port, G_matrix_2_18_port, G_matrix_2_17_port, 
      G_matrix_2_16_port, G_matrix_2_15_port, G_matrix_2_14_port, 
      G_matrix_2_13_port, G_matrix_2_12_port, G_matrix_2_11_port, 
      G_matrix_2_10_port, G_matrix_2_9_port, G_matrix_2_8_port, 
      G_matrix_2_7_port, G_matrix_2_6_port, G_matrix_2_5_port, 
      G_matrix_2_4_port, G_matrix_2_1_port, G_matrix_1_32_port, 
      P_matrix_5_32_port, P_matrix_5_15_port, P_matrix_5_14_port, 
      P_matrix_5_13_port, P_matrix_5_12_port, P_matrix_5_11_port, 
      P_matrix_5_10_port, P_matrix_5_9_port, P_matrix_4_32_port, 
      P_matrix_4_31_port, P_matrix_4_30_port, P_matrix_4_29_port, 
      P_matrix_4_28_port, P_matrix_4_27_port, P_matrix_4_26_port, 
      P_matrix_4_25_port, P_matrix_4_24_port, P_matrix_4_23_port, 
      P_matrix_4_22_port, P_matrix_4_21_port, P_matrix_4_20_port, 
      P_matrix_4_19_port, P_matrix_4_18_port, P_matrix_4_17_port, 
      P_matrix_4_16_port, P_matrix_4_7_port, P_matrix_4_6_port, 
      P_matrix_4_5_port, P_matrix_3_32_port, P_matrix_3_31_port, 
      P_matrix_3_30_port, P_matrix_3_29_port, P_matrix_3_28_port, 
      P_matrix_3_27_port, P_matrix_3_26_port, P_matrix_3_25_port, 
      P_matrix_3_24_port, P_matrix_3_23_port, P_matrix_3_22_port, 
      P_matrix_3_21_port, P_matrix_3_20_port, P_matrix_3_19_port, 
      P_matrix_3_18_port, P_matrix_3_17_port, P_matrix_3_16_port, 
      P_matrix_3_15_port, P_matrix_3_14_port, P_matrix_3_13_port, 
      P_matrix_3_12_port, P_matrix_3_11_port, P_matrix_3_10_port, 
      P_matrix_3_9_port, P_matrix_3_8_port, P_matrix_3_3_port, 
      P_matrix_2_32_port, P_matrix_2_31_port, P_matrix_2_30_port, 
      P_matrix_2_29_port, P_matrix_2_28_port, P_matrix_2_27_port, 
      P_matrix_2_26_port, P_matrix_2_25_port, P_matrix_2_24_port, 
      P_matrix_2_23_port, P_matrix_2_22_port, P_matrix_2_21_port, 
      P_matrix_2_20_port, P_matrix_2_19_port, P_matrix_2_18_port, 
      P_matrix_2_17_port, P_matrix_2_16_port, P_matrix_2_15_port, 
      P_matrix_2_14_port, P_matrix_2_13_port, P_matrix_2_12_port, 
      P_matrix_2_11_port, P_matrix_2_10_port, P_matrix_2_9_port, 
      P_matrix_2_8_port, P_matrix_2_7_port, P_matrix_2_6_port, 
      P_matrix_2_5_port, P_matrix_2_4_port, P_matrix_1_32_port, n_1016, n_1017,
      n_1018, n_1019, n_1020, n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, 
      n_1027, n_1028, n_1029, n_1030, n_1031, n_1032, n_1033, n_1034, n_1035, 
      n_1036, n_1037, n_1038, n_1039, n_1040, n_1041, n_1042 : std_logic;

begin
   Co <= ( Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, Co_2_port, 
      Co_1_port, Co_0_port );
   
   PG_NET_0_1 : PG_NET_BLOCK_0 port map( A => A(0), B => B(0), p => 
                           P_matrix_0_1_port, g => G_matrix_0_1_port);
   PG_NET_0_2 : PG_NET_BLOCK_31 port map( A => A(1), B => B(1), p => 
                           P_matrix_0_2_port, g => G_matrix_0_2_port);
   PG_NET_0_3 : PG_NET_BLOCK_30 port map( A => A(2), B => B(2), p => 
                           P_matrix_0_3_port, g => G_matrix_0_3_port);
   PG_NET_0_4 : PG_NET_BLOCK_29 port map( A => A(3), B => B(3), p => 
                           P_matrix_0_4_port, g => G_matrix_0_4_port);
   PG_NET_0_5 : PG_NET_BLOCK_28 port map( A => A(4), B => B(4), p => 
                           P_matrix_0_5_port, g => G_matrix_0_5_port);
   PG_NET_0_6 : PG_NET_BLOCK_27 port map( A => A(5), B => B(5), p => 
                           P_matrix_0_6_port, g => G_matrix_0_6_port);
   PG_NET_0_7 : PG_NET_BLOCK_26 port map( A => A(6), B => B(6), p => 
                           P_matrix_0_7_port, g => G_matrix_0_7_port);
   PG_NET_0_8 : PG_NET_BLOCK_25 port map( A => A(7), B => B(7), p => 
                           P_matrix_0_8_port, g => G_matrix_0_8_port);
   PG_NET_0_9 : PG_NET_BLOCK_24 port map( A => A(8), B => B(8), p => 
                           P_matrix_0_9_port, g => G_matrix_0_9_port);
   PG_NET_0_10 : PG_NET_BLOCK_23 port map( A => A(9), B => B(9), p => 
                           P_matrix_0_10_port, g => G_matrix_0_10_port);
   PG_NET_0_11 : PG_NET_BLOCK_22 port map( A => A(10), B => B(10), p => 
                           P_matrix_0_11_port, g => G_matrix_0_11_port);
   PG_NET_0_12 : PG_NET_BLOCK_21 port map( A => A(11), B => B(11), p => 
                           P_matrix_0_12_port, g => G_matrix_0_12_port);
   PG_NET_0_13 : PG_NET_BLOCK_20 port map( A => A(12), B => B(12), p => 
                           P_matrix_0_13_port, g => G_matrix_0_13_port);
   PG_NET_0_14 : PG_NET_BLOCK_19 port map( A => A(13), B => B(13), p => 
                           P_matrix_0_14_port, g => G_matrix_0_14_port);
   PG_NET_0_15 : PG_NET_BLOCK_18 port map( A => A(14), B => B(14), p => 
                           P_matrix_0_15_port, g => G_matrix_0_15_port);
   PG_NET_0_16 : PG_NET_BLOCK_17 port map( A => A(15), B => B(15), p => 
                           P_matrix_0_16_port, g => G_matrix_0_16_port);
   PG_NET_0_17 : PG_NET_BLOCK_16 port map( A => A(16), B => B(16), p => 
                           P_matrix_0_17_port, g => G_matrix_0_17_port);
   PG_NET_0_18 : PG_NET_BLOCK_15 port map( A => A(17), B => B(17), p => 
                           P_matrix_0_18_port, g => G_matrix_0_18_port);
   PG_NET_0_19 : PG_NET_BLOCK_14 port map( A => A(18), B => B(18), p => 
                           P_matrix_0_19_port, g => G_matrix_0_19_port);
   PG_NET_0_20 : PG_NET_BLOCK_13 port map( A => A(19), B => B(19), p => 
                           P_matrix_0_20_port, g => G_matrix_0_20_port);
   PG_NET_0_21 : PG_NET_BLOCK_12 port map( A => A(20), B => B(20), p => 
                           P_matrix_0_21_port, g => G_matrix_0_21_port);
   PG_NET_0_22 : PG_NET_BLOCK_11 port map( A => A(21), B => B(21), p => 
                           P_matrix_0_22_port, g => G_matrix_0_22_port);
   PG_NET_0_23 : PG_NET_BLOCK_10 port map( A => A(22), B => B(22), p => 
                           P_matrix_0_23_port, g => G_matrix_0_23_port);
   PG_NET_0_24 : PG_NET_BLOCK_9 port map( A => A(23), B => B(23), p => 
                           P_matrix_0_24_port, g => G_matrix_0_24_port);
   PG_NET_0_25 : PG_NET_BLOCK_8 port map( A => A(24), B => B(24), p => 
                           P_matrix_0_25_port, g => G_matrix_0_25_port);
   PG_NET_0_26 : PG_NET_BLOCK_7 port map( A => A(25), B => B(25), p => 
                           P_matrix_0_26_port, g => G_matrix_0_26_port);
   PG_NET_0_27 : PG_NET_BLOCK_6 port map( A => A(26), B => B(26), p => 
                           P_matrix_0_27_port, g => G_matrix_0_27_port);
   PG_NET_0_28 : PG_NET_BLOCK_5 port map( A => A(27), B => B(27), p => 
                           P_matrix_0_28_port, g => G_matrix_0_28_port);
   PG_NET_0_29 : PG_NET_BLOCK_4 port map( A => A(28), B => B(28), p => 
                           P_matrix_0_29_port, g => G_matrix_0_29_port);
   PG_NET_0_30 : PG_NET_BLOCK_3 port map( A => A(29), B => B(29), p => 
                           P_matrix_0_30_port, g => G_matrix_0_30_port);
   PG_NET_0_31 : PG_NET_BLOCK_2 port map( A => A(30), B => B(30), p => 
                           P_matrix_0_31_port, g => G_matrix_0_31_port);
   PG_NET_0_32 : PG_NET_BLOCK_1 port map( A => A(31), B => B(31), p => 
                           P_matrix_0_32_port, g => G_matrix_0_32_port);
   G_INST_1_1 : G_BLOCK_0 port map( Pik => P_matrix_0_1_port, Gik => 
                           G_matrix_0_1_port, Gkj => Cin, Gij => 
                           G_matrix_2_1_port);
   PG_INST_1_2 : PG_BLOCK_0 port map( Pik => P_matrix_0_2_port, Gik => 
                           G_matrix_0_2_port, Pkj => P_matrix_0_1_port, Gkj => 
                           G_matrix_0_1_port, Pij => P_matrix_1_2_port, Gij => 
                           G_matrix_1_2_port);
   PG_INST_1_3 : PG_BLOCK_128 port map( Pik => P_matrix_0_3_port, Gik => 
                           G_matrix_0_3_port, Pkj => P_matrix_0_2_port, Gkj => 
                           G_matrix_0_2_port, Pij => P_matrix_1_3_port, Gij => 
                           G_matrix_1_3_port);
   PG_INST_1_4 : PG_BLOCK_127 port map( Pik => P_matrix_0_4_port, Gik => 
                           G_matrix_0_4_port, Pkj => P_matrix_0_3_port, Gkj => 
                           G_matrix_0_3_port, Pij => P_matrix_1_4_port, Gij => 
                           G_matrix_1_4_port);
   PG_INST_1_5 : PG_BLOCK_126 port map( Pik => P_matrix_0_5_port, Gik => 
                           G_matrix_0_5_port, Pkj => P_matrix_0_4_port, Gkj => 
                           G_matrix_0_4_port, Pij => P_matrix_1_5_port, Gij => 
                           G_matrix_1_5_port);
   PG_INST_1_6 : PG_BLOCK_125 port map( Pik => P_matrix_0_6_port, Gik => 
                           G_matrix_0_6_port, Pkj => P_matrix_0_5_port, Gkj => 
                           G_matrix_0_5_port, Pij => P_matrix_1_6_port, Gij => 
                           G_matrix_1_6_port);
   PG_INST_1_7 : PG_BLOCK_124 port map( Pik => P_matrix_0_7_port, Gik => 
                           G_matrix_0_7_port, Pkj => P_matrix_0_6_port, Gkj => 
                           G_matrix_0_6_port, Pij => P_matrix_1_7_port, Gij => 
                           G_matrix_1_7_port);
   PG_INST_1_8 : PG_BLOCK_123 port map( Pik => P_matrix_0_8_port, Gik => 
                           G_matrix_0_8_port, Pkj => P_matrix_0_7_port, Gkj => 
                           G_matrix_0_7_port, Pij => P_matrix_1_8_port, Gij => 
                           G_matrix_1_8_port);
   PG_INST_1_9 : PG_BLOCK_122 port map( Pik => P_matrix_0_9_port, Gik => 
                           G_matrix_0_9_port, Pkj => P_matrix_0_8_port, Gkj => 
                           G_matrix_0_8_port, Pij => P_matrix_1_9_port, Gij => 
                           G_matrix_1_9_port);
   PG_INST_1_10 : PG_BLOCK_121 port map( Pik => P_matrix_0_10_port, Gik => 
                           G_matrix_0_10_port, Pkj => P_matrix_0_9_port, Gkj =>
                           G_matrix_0_9_port, Pij => P_matrix_1_10_port, Gij =>
                           G_matrix_1_10_port);
   PG_INST_1_11 : PG_BLOCK_120 port map( Pik => P_matrix_0_11_port, Gik => 
                           G_matrix_0_11_port, Pkj => P_matrix_0_10_port, Gkj 
                           => G_matrix_0_10_port, Pij => P_matrix_1_11_port, 
                           Gij => G_matrix_1_11_port);
   PG_INST_1_12 : PG_BLOCK_119 port map( Pik => P_matrix_0_12_port, Gik => 
                           G_matrix_0_12_port, Pkj => P_matrix_0_11_port, Gkj 
                           => G_matrix_0_11_port, Pij => P_matrix_1_12_port, 
                           Gij => G_matrix_1_12_port);
   PG_INST_1_13 : PG_BLOCK_118 port map( Pik => P_matrix_0_13_port, Gik => 
                           G_matrix_0_13_port, Pkj => P_matrix_0_12_port, Gkj 
                           => G_matrix_0_12_port, Pij => P_matrix_1_13_port, 
                           Gij => G_matrix_1_13_port);
   PG_INST_1_14 : PG_BLOCK_117 port map( Pik => P_matrix_0_14_port, Gik => 
                           G_matrix_0_14_port, Pkj => P_matrix_0_13_port, Gkj 
                           => G_matrix_0_13_port, Pij => P_matrix_1_14_port, 
                           Gij => G_matrix_1_14_port);
   PG_INST_1_15 : PG_BLOCK_116 port map( Pik => P_matrix_0_15_port, Gik => 
                           G_matrix_0_15_port, Pkj => P_matrix_0_14_port, Gkj 
                           => G_matrix_0_14_port, Pij => P_matrix_1_15_port, 
                           Gij => G_matrix_1_15_port);
   PG_INST_1_16 : PG_BLOCK_115 port map( Pik => P_matrix_0_16_port, Gik => 
                           G_matrix_0_16_port, Pkj => P_matrix_0_15_port, Gkj 
                           => G_matrix_0_15_port, Pij => P_matrix_1_16_port, 
                           Gij => G_matrix_1_16_port);
   PG_INST_1_17 : PG_BLOCK_114 port map( Pik => P_matrix_0_17_port, Gik => 
                           G_matrix_0_17_port, Pkj => P_matrix_0_16_port, Gkj 
                           => G_matrix_0_16_port, Pij => P_matrix_1_17_port, 
                           Gij => G_matrix_1_17_port);
   PG_INST_1_18 : PG_BLOCK_113 port map( Pik => P_matrix_0_18_port, Gik => 
                           G_matrix_0_18_port, Pkj => P_matrix_0_17_port, Gkj 
                           => G_matrix_0_17_port, Pij => P_matrix_1_18_port, 
                           Gij => G_matrix_1_18_port);
   PG_INST_1_19 : PG_BLOCK_112 port map( Pik => P_matrix_0_19_port, Gik => 
                           G_matrix_0_19_port, Pkj => P_matrix_0_18_port, Gkj 
                           => G_matrix_0_18_port, Pij => P_matrix_1_19_port, 
                           Gij => G_matrix_1_19_port);
   PG_INST_1_20 : PG_BLOCK_111 port map( Pik => P_matrix_0_20_port, Gik => 
                           G_matrix_0_20_port, Pkj => P_matrix_0_19_port, Gkj 
                           => G_matrix_0_19_port, Pij => P_matrix_1_20_port, 
                           Gij => G_matrix_1_20_port);
   PG_INST_1_21 : PG_BLOCK_110 port map( Pik => P_matrix_0_21_port, Gik => 
                           G_matrix_0_21_port, Pkj => P_matrix_0_20_port, Gkj 
                           => G_matrix_0_20_port, Pij => P_matrix_1_21_port, 
                           Gij => G_matrix_1_21_port);
   PG_INST_1_22 : PG_BLOCK_109 port map( Pik => P_matrix_0_22_port, Gik => 
                           G_matrix_0_22_port, Pkj => P_matrix_0_21_port, Gkj 
                           => G_matrix_0_21_port, Pij => P_matrix_1_22_port, 
                           Gij => G_matrix_1_22_port);
   PG_INST_1_23 : PG_BLOCK_108 port map( Pik => P_matrix_0_23_port, Gik => 
                           G_matrix_0_23_port, Pkj => P_matrix_0_22_port, Gkj 
                           => G_matrix_0_22_port, Pij => P_matrix_1_23_port, 
                           Gij => G_matrix_1_23_port);
   PG_INST_1_24 : PG_BLOCK_107 port map( Pik => P_matrix_0_24_port, Gik => 
                           G_matrix_0_24_port, Pkj => P_matrix_0_23_port, Gkj 
                           => G_matrix_0_23_port, Pij => P_matrix_1_24_port, 
                           Gij => G_matrix_1_24_port);
   PG_INST_1_25 : PG_BLOCK_106 port map( Pik => P_matrix_0_25_port, Gik => 
                           G_matrix_0_25_port, Pkj => P_matrix_0_24_port, Gkj 
                           => G_matrix_0_24_port, Pij => P_matrix_1_25_port, 
                           Gij => G_matrix_1_25_port);
   PG_INST_1_26 : PG_BLOCK_105 port map( Pik => P_matrix_0_26_port, Gik => 
                           G_matrix_0_26_port, Pkj => P_matrix_0_25_port, Gkj 
                           => G_matrix_0_25_port, Pij => P_matrix_1_26_port, 
                           Gij => G_matrix_1_26_port);
   PG_INST_1_27 : PG_BLOCK_104 port map( Pik => P_matrix_0_27_port, Gik => 
                           G_matrix_0_27_port, Pkj => P_matrix_0_26_port, Gkj 
                           => G_matrix_0_26_port, Pij => P_matrix_1_27_port, 
                           Gij => G_matrix_1_27_port);
   PG_INST_1_28 : PG_BLOCK_103 port map( Pik => P_matrix_0_28_port, Gik => 
                           G_matrix_0_28_port, Pkj => P_matrix_0_27_port, Gkj 
                           => G_matrix_0_27_port, Pij => P_matrix_1_28_port, 
                           Gij => G_matrix_1_28_port);
   PG_INST_1_29 : PG_BLOCK_102 port map( Pik => P_matrix_0_29_port, Gik => 
                           G_matrix_0_29_port, Pkj => P_matrix_0_28_port, Gkj 
                           => G_matrix_0_28_port, Pij => P_matrix_1_29_port, 
                           Gij => G_matrix_1_29_port);
   PG_INST_1_30 : PG_BLOCK_101 port map( Pik => P_matrix_0_30_port, Gik => 
                           G_matrix_0_30_port, Pkj => P_matrix_0_29_port, Gkj 
                           => G_matrix_0_29_port, Pij => P_matrix_1_30_port, 
                           Gij => G_matrix_1_30_port);
   PG_INST_1_31 : PG_BLOCK_100 port map( Pik => P_matrix_0_31_port, Gik => 
                           G_matrix_0_31_port, Pkj => P_matrix_0_30_port, Gkj 
                           => G_matrix_0_30_port, Pij => P_matrix_1_31_port, 
                           Gij => G_matrix_1_31_port);
   PG_INST_1_32 : PG_BLOCK_99 port map( Pik => P_matrix_0_32_port, Gik => 
                           G_matrix_0_32_port, Pkj => P_matrix_0_31_port, Gkj 
                           => G_matrix_0_31_port, Pij => P_matrix_1_32_port, 
                           Gij => G_matrix_1_32_port);
   G_INST_2_2 : G_BLOCK_5 port map( Pik => P_matrix_1_2_port, Gik => 
                           G_matrix_1_2_port, Gkj => Cin, Gij => 
                           G_matrix_3_2_port);
   PG_INST_2_3 : PG_BLOCK_98 port map( Pik => P_matrix_1_3_port, Gik => 
                           G_matrix_1_3_port, Pkj => X_Logic0_port, Gkj => 
                           G_matrix_2_1_port, Pij => P_matrix_3_3_port, Gij => 
                           G_matrix_3_3_port);
   PG_INST_2_4 : PG_BLOCK_97 port map( Pik => P_matrix_1_4_port, Gik => 
                           G_matrix_1_4_port, Pkj => P_matrix_1_2_port, Gkj => 
                           G_matrix_1_2_port, Pij => P_matrix_2_4_port, Gij => 
                           G_matrix_2_4_port);
   PG_INST_2_5 : PG_BLOCK_96 port map( Pik => P_matrix_1_5_port, Gik => 
                           G_matrix_1_5_port, Pkj => P_matrix_1_3_port, Gkj => 
                           G_matrix_1_3_port, Pij => P_matrix_2_5_port, Gij => 
                           G_matrix_2_5_port);
   PG_INST_2_6 : PG_BLOCK_95 port map( Pik => P_matrix_1_6_port, Gik => 
                           G_matrix_1_6_port, Pkj => P_matrix_1_4_port, Gkj => 
                           G_matrix_1_4_port, Pij => P_matrix_2_6_port, Gij => 
                           G_matrix_2_6_port);
   PG_INST_2_7 : PG_BLOCK_94 port map( Pik => P_matrix_1_7_port, Gik => 
                           G_matrix_1_7_port, Pkj => P_matrix_1_5_port, Gkj => 
                           G_matrix_1_5_port, Pij => P_matrix_2_7_port, Gij => 
                           G_matrix_2_7_port);
   PG_INST_2_8 : PG_BLOCK_93 port map( Pik => P_matrix_1_8_port, Gik => 
                           G_matrix_1_8_port, Pkj => P_matrix_1_6_port, Gkj => 
                           G_matrix_1_6_port, Pij => P_matrix_2_8_port, Gij => 
                           G_matrix_2_8_port);
   PG_INST_2_9 : PG_BLOCK_92 port map( Pik => P_matrix_1_9_port, Gik => 
                           G_matrix_1_9_port, Pkj => P_matrix_1_7_port, Gkj => 
                           G_matrix_1_7_port, Pij => P_matrix_2_9_port, Gij => 
                           G_matrix_2_9_port);
   PG_INST_2_10 : PG_BLOCK_91 port map( Pik => P_matrix_1_10_port, Gik => 
                           G_matrix_1_10_port, Pkj => P_matrix_1_8_port, Gkj =>
                           G_matrix_1_8_port, Pij => P_matrix_2_10_port, Gij =>
                           G_matrix_2_10_port);
   PG_INST_2_11 : PG_BLOCK_90 port map( Pik => P_matrix_1_11_port, Gik => 
                           G_matrix_1_11_port, Pkj => P_matrix_1_9_port, Gkj =>
                           G_matrix_1_9_port, Pij => P_matrix_2_11_port, Gij =>
                           G_matrix_2_11_port);
   PG_INST_2_12 : PG_BLOCK_89 port map( Pik => P_matrix_1_12_port, Gik => 
                           G_matrix_1_12_port, Pkj => P_matrix_1_10_port, Gkj 
                           => G_matrix_1_10_port, Pij => P_matrix_2_12_port, 
                           Gij => G_matrix_2_12_port);
   PG_INST_2_13 : PG_BLOCK_88 port map( Pik => P_matrix_1_13_port, Gik => 
                           G_matrix_1_13_port, Pkj => P_matrix_1_11_port, Gkj 
                           => G_matrix_1_11_port, Pij => P_matrix_2_13_port, 
                           Gij => G_matrix_2_13_port);
   PG_INST_2_14 : PG_BLOCK_87 port map( Pik => P_matrix_1_14_port, Gik => 
                           G_matrix_1_14_port, Pkj => P_matrix_1_12_port, Gkj 
                           => G_matrix_1_12_port, Pij => P_matrix_2_14_port, 
                           Gij => G_matrix_2_14_port);
   PG_INST_2_15 : PG_BLOCK_86 port map( Pik => P_matrix_1_15_port, Gik => 
                           G_matrix_1_15_port, Pkj => P_matrix_1_13_port, Gkj 
                           => G_matrix_1_13_port, Pij => P_matrix_2_15_port, 
                           Gij => G_matrix_2_15_port);
   PG_INST_2_16 : PG_BLOCK_85 port map( Pik => P_matrix_1_16_port, Gik => 
                           G_matrix_1_16_port, Pkj => P_matrix_1_14_port, Gkj 
                           => G_matrix_1_14_port, Pij => P_matrix_2_16_port, 
                           Gij => G_matrix_2_16_port);
   PG_INST_2_17 : PG_BLOCK_84 port map( Pik => P_matrix_1_17_port, Gik => 
                           G_matrix_1_17_port, Pkj => P_matrix_1_15_port, Gkj 
                           => G_matrix_1_15_port, Pij => P_matrix_2_17_port, 
                           Gij => G_matrix_2_17_port);
   PG_INST_2_18 : PG_BLOCK_83 port map( Pik => P_matrix_1_18_port, Gik => 
                           G_matrix_1_18_port, Pkj => P_matrix_1_16_port, Gkj 
                           => G_matrix_1_16_port, Pij => P_matrix_2_18_port, 
                           Gij => G_matrix_2_18_port);
   PG_INST_2_19 : PG_BLOCK_82 port map( Pik => P_matrix_1_19_port, Gik => 
                           G_matrix_1_19_port, Pkj => P_matrix_1_17_port, Gkj 
                           => G_matrix_1_17_port, Pij => P_matrix_2_19_port, 
                           Gij => G_matrix_2_19_port);
   PG_INST_2_20 : PG_BLOCK_81 port map( Pik => P_matrix_1_20_port, Gik => 
                           G_matrix_1_20_port, Pkj => P_matrix_1_18_port, Gkj 
                           => G_matrix_1_18_port, Pij => P_matrix_2_20_port, 
                           Gij => G_matrix_2_20_port);
   PG_INST_2_21 : PG_BLOCK_80 port map( Pik => P_matrix_1_21_port, Gik => 
                           G_matrix_1_21_port, Pkj => P_matrix_1_19_port, Gkj 
                           => G_matrix_1_19_port, Pij => P_matrix_2_21_port, 
                           Gij => G_matrix_2_21_port);
   PG_INST_2_22 : PG_BLOCK_79 port map( Pik => P_matrix_1_22_port, Gik => 
                           G_matrix_1_22_port, Pkj => P_matrix_1_20_port, Gkj 
                           => G_matrix_1_20_port, Pij => P_matrix_2_22_port, 
                           Gij => G_matrix_2_22_port);
   PG_INST_2_23 : PG_BLOCK_78 port map( Pik => P_matrix_1_23_port, Gik => 
                           G_matrix_1_23_port, Pkj => P_matrix_1_21_port, Gkj 
                           => G_matrix_1_21_port, Pij => P_matrix_2_23_port, 
                           Gij => G_matrix_2_23_port);
   PG_INST_2_24 : PG_BLOCK_77 port map( Pik => P_matrix_1_24_port, Gik => 
                           G_matrix_1_24_port, Pkj => P_matrix_1_22_port, Gkj 
                           => G_matrix_1_22_port, Pij => P_matrix_2_24_port, 
                           Gij => G_matrix_2_24_port);
   PG_INST_2_25 : PG_BLOCK_76 port map( Pik => P_matrix_1_25_port, Gik => 
                           G_matrix_1_25_port, Pkj => P_matrix_1_23_port, Gkj 
                           => G_matrix_1_23_port, Pij => P_matrix_2_25_port, 
                           Gij => G_matrix_2_25_port);
   PG_INST_2_26 : PG_BLOCK_75 port map( Pik => P_matrix_1_26_port, Gik => 
                           G_matrix_1_26_port, Pkj => P_matrix_1_24_port, Gkj 
                           => G_matrix_1_24_port, Pij => P_matrix_2_26_port, 
                           Gij => G_matrix_2_26_port);
   PG_INST_2_27 : PG_BLOCK_74 port map( Pik => P_matrix_1_27_port, Gik => 
                           G_matrix_1_27_port, Pkj => P_matrix_1_25_port, Gkj 
                           => G_matrix_1_25_port, Pij => P_matrix_2_27_port, 
                           Gij => G_matrix_2_27_port);
   PG_INST_2_28 : PG_BLOCK_73 port map( Pik => P_matrix_1_28_port, Gik => 
                           G_matrix_1_28_port, Pkj => P_matrix_1_26_port, Gkj 
                           => G_matrix_1_26_port, Pij => P_matrix_2_28_port, 
                           Gij => G_matrix_2_28_port);
   PG_INST_2_29 : PG_BLOCK_72 port map( Pik => P_matrix_1_29_port, Gik => 
                           G_matrix_1_29_port, Pkj => P_matrix_1_27_port, Gkj 
                           => G_matrix_1_27_port, Pij => P_matrix_2_29_port, 
                           Gij => G_matrix_2_29_port);
   PG_INST_2_30 : PG_BLOCK_71 port map( Pik => P_matrix_1_30_port, Gik => 
                           G_matrix_1_30_port, Pkj => P_matrix_1_28_port, Gkj 
                           => G_matrix_1_28_port, Pij => P_matrix_2_30_port, 
                           Gij => G_matrix_2_30_port);
   PG_INST_2_31 : PG_BLOCK_70 port map( Pik => P_matrix_1_31_port, Gik => 
                           G_matrix_1_31_port, Pkj => P_matrix_1_29_port, Gkj 
                           => G_matrix_1_29_port, Pij => P_matrix_2_31_port, 
                           Gij => G_matrix_2_31_port);
   PG_INST_2_32 : PG_BLOCK_69 port map( Pik => P_matrix_1_32_port, Gik => 
                           G_matrix_1_32_port, Pkj => P_matrix_1_30_port, Gkj 
                           => G_matrix_1_30_port, Pij => P_matrix_2_32_port, 
                           Gij => G_matrix_2_32_port);
   G_INST_3_4 : G_BLOCK_4 port map( Pik => P_matrix_2_4_port, Gik => 
                           G_matrix_2_4_port, Gkj => Cin, Gij => Co_0_port);
   PG_INST_3_5 : PG_BLOCK_68 port map( Pik => P_matrix_2_5_port, Gik => 
                           G_matrix_2_5_port, Pkj => X_Logic0_port, Gkj => 
                           G_matrix_2_1_port, Pij => P_matrix_4_5_port, Gij => 
                           G_matrix_4_5_port);
   PG_INST_3_6 : PG_BLOCK_67 port map( Pik => P_matrix_2_6_port, Gik => 
                           G_matrix_2_6_port, Pkj => X_Logic0_port, Gkj => 
                           G_matrix_3_2_port, Pij => P_matrix_4_6_port, Gij => 
                           G_matrix_4_6_port);
   PG_INST_3_7 : PG_BLOCK_66 port map( Pik => P_matrix_2_7_port, Gik => 
                           G_matrix_2_7_port, Pkj => P_matrix_3_3_port, Gkj => 
                           G_matrix_3_3_port, Pij => P_matrix_4_7_port, Gij => 
                           G_matrix_4_7_port);
   PG_INST_3_8 : PG_BLOCK_65 port map( Pik => P_matrix_2_8_port, Gik => 
                           G_matrix_2_8_port, Pkj => P_matrix_2_4_port, Gkj => 
                           G_matrix_2_4_port, Pij => P_matrix_3_8_port, Gij => 
                           G_matrix_3_8_port);
   PG_INST_3_9 : PG_BLOCK_64 port map( Pik => P_matrix_2_9_port, Gik => 
                           G_matrix_2_9_port, Pkj => P_matrix_2_5_port, Gkj => 
                           G_matrix_2_5_port, Pij => P_matrix_3_9_port, Gij => 
                           G_matrix_3_9_port);
   PG_INST_3_10 : PG_BLOCK_63 port map( Pik => P_matrix_2_10_port, Gik => 
                           G_matrix_2_10_port, Pkj => P_matrix_2_6_port, Gkj =>
                           G_matrix_2_6_port, Pij => P_matrix_3_10_port, Gij =>
                           G_matrix_3_10_port);
   PG_INST_3_11 : PG_BLOCK_62 port map( Pik => P_matrix_2_11_port, Gik => 
                           G_matrix_2_11_port, Pkj => P_matrix_2_7_port, Gkj =>
                           G_matrix_2_7_port, Pij => P_matrix_3_11_port, Gij =>
                           G_matrix_3_11_port);
   PG_INST_3_12 : PG_BLOCK_61 port map( Pik => P_matrix_2_12_port, Gik => 
                           G_matrix_2_12_port, Pkj => P_matrix_2_8_port, Gkj =>
                           G_matrix_2_8_port, Pij => P_matrix_3_12_port, Gij =>
                           G_matrix_3_12_port);
   PG_INST_3_13 : PG_BLOCK_60 port map( Pik => P_matrix_2_13_port, Gik => 
                           G_matrix_2_13_port, Pkj => P_matrix_2_9_port, Gkj =>
                           G_matrix_2_9_port, Pij => P_matrix_3_13_port, Gij =>
                           G_matrix_3_13_port);
   PG_INST_3_14 : PG_BLOCK_59 port map( Pik => P_matrix_2_14_port, Gik => 
                           G_matrix_2_14_port, Pkj => P_matrix_2_10_port, Gkj 
                           => G_matrix_2_10_port, Pij => P_matrix_3_14_port, 
                           Gij => G_matrix_3_14_port);
   PG_INST_3_15 : PG_BLOCK_58 port map( Pik => P_matrix_2_15_port, Gik => 
                           G_matrix_2_15_port, Pkj => P_matrix_2_11_port, Gkj 
                           => G_matrix_2_11_port, Pij => P_matrix_3_15_port, 
                           Gij => G_matrix_3_15_port);
   PG_INST_3_16 : PG_BLOCK_57 port map( Pik => P_matrix_2_16_port, Gik => 
                           G_matrix_2_16_port, Pkj => P_matrix_2_12_port, Gkj 
                           => G_matrix_2_12_port, Pij => P_matrix_3_16_port, 
                           Gij => G_matrix_3_16_port);
   PG_INST_3_17 : PG_BLOCK_56 port map( Pik => P_matrix_2_17_port, Gik => 
                           G_matrix_2_17_port, Pkj => P_matrix_2_13_port, Gkj 
                           => G_matrix_2_13_port, Pij => P_matrix_3_17_port, 
                           Gij => G_matrix_3_17_port);
   PG_INST_3_18 : PG_BLOCK_55 port map( Pik => P_matrix_2_18_port, Gik => 
                           G_matrix_2_18_port, Pkj => P_matrix_2_14_port, Gkj 
                           => G_matrix_2_14_port, Pij => P_matrix_3_18_port, 
                           Gij => G_matrix_3_18_port);
   PG_INST_3_19 : PG_BLOCK_54 port map( Pik => P_matrix_2_19_port, Gik => 
                           G_matrix_2_19_port, Pkj => P_matrix_2_15_port, Gkj 
                           => G_matrix_2_15_port, Pij => P_matrix_3_19_port, 
                           Gij => G_matrix_3_19_port);
   PG_INST_3_20 : PG_BLOCK_53 port map( Pik => P_matrix_2_20_port, Gik => 
                           G_matrix_2_20_port, Pkj => P_matrix_2_16_port, Gkj 
                           => G_matrix_2_16_port, Pij => P_matrix_3_20_port, 
                           Gij => G_matrix_3_20_port);
   PG_INST_3_21 : PG_BLOCK_52 port map( Pik => P_matrix_2_21_port, Gik => 
                           G_matrix_2_21_port, Pkj => P_matrix_2_17_port, Gkj 
                           => G_matrix_2_17_port, Pij => P_matrix_3_21_port, 
                           Gij => G_matrix_3_21_port);
   PG_INST_3_22 : PG_BLOCK_51 port map( Pik => P_matrix_2_22_port, Gik => 
                           G_matrix_2_22_port, Pkj => P_matrix_2_18_port, Gkj 
                           => G_matrix_2_18_port, Pij => P_matrix_3_22_port, 
                           Gij => G_matrix_3_22_port);
   PG_INST_3_23 : PG_BLOCK_50 port map( Pik => P_matrix_2_23_port, Gik => 
                           G_matrix_2_23_port, Pkj => P_matrix_2_19_port, Gkj 
                           => G_matrix_2_19_port, Pij => P_matrix_3_23_port, 
                           Gij => G_matrix_3_23_port);
   PG_INST_3_24 : PG_BLOCK_49 port map( Pik => P_matrix_2_24_port, Gik => 
                           G_matrix_2_24_port, Pkj => P_matrix_2_20_port, Gkj 
                           => G_matrix_2_20_port, Pij => P_matrix_3_24_port, 
                           Gij => G_matrix_3_24_port);
   PG_INST_3_25 : PG_BLOCK_48 port map( Pik => P_matrix_2_25_port, Gik => 
                           G_matrix_2_25_port, Pkj => P_matrix_2_21_port, Gkj 
                           => G_matrix_2_21_port, Pij => P_matrix_3_25_port, 
                           Gij => G_matrix_3_25_port);
   PG_INST_3_26 : PG_BLOCK_47 port map( Pik => P_matrix_2_26_port, Gik => 
                           G_matrix_2_26_port, Pkj => P_matrix_2_22_port, Gkj 
                           => G_matrix_2_22_port, Pij => P_matrix_3_26_port, 
                           Gij => G_matrix_3_26_port);
   PG_INST_3_27 : PG_BLOCK_46 port map( Pik => P_matrix_2_27_port, Gik => 
                           G_matrix_2_27_port, Pkj => P_matrix_2_23_port, Gkj 
                           => G_matrix_2_23_port, Pij => P_matrix_3_27_port, 
                           Gij => G_matrix_3_27_port);
   PG_INST_3_28 : PG_BLOCK_45 port map( Pik => P_matrix_2_28_port, Gik => 
                           G_matrix_2_28_port, Pkj => P_matrix_2_24_port, Gkj 
                           => G_matrix_2_24_port, Pij => P_matrix_3_28_port, 
                           Gij => G_matrix_3_28_port);
   PG_INST_3_29 : PG_BLOCK_44 port map( Pik => P_matrix_2_29_port, Gik => 
                           G_matrix_2_29_port, Pkj => P_matrix_2_25_port, Gkj 
                           => G_matrix_2_25_port, Pij => P_matrix_3_29_port, 
                           Gij => G_matrix_3_29_port);
   PG_INST_3_30 : PG_BLOCK_43 port map( Pik => P_matrix_2_30_port, Gik => 
                           G_matrix_2_30_port, Pkj => P_matrix_2_26_port, Gkj 
                           => G_matrix_2_26_port, Pij => P_matrix_3_30_port, 
                           Gij => G_matrix_3_30_port);
   PG_INST_3_31 : PG_BLOCK_42 port map( Pik => P_matrix_2_31_port, Gik => 
                           G_matrix_2_31_port, Pkj => P_matrix_2_27_port, Gkj 
                           => G_matrix_2_27_port, Pij => P_matrix_3_31_port, 
                           Gij => G_matrix_3_31_port);
   PG_INST_3_32 : PG_BLOCK_41 port map( Pik => P_matrix_2_32_port, Gik => 
                           G_matrix_2_32_port, Pkj => P_matrix_2_28_port, Gkj 
                           => G_matrix_2_28_port, Pij => P_matrix_3_32_port, 
                           Gij => G_matrix_3_32_port);
   G_INST_4_8 : G_BLOCK_3 port map( Pik => P_matrix_3_8_port, Gik => 
                           G_matrix_3_8_port, Gkj => Cin, Gij => Co_1_port);
   PG_INST_4_9 : PG_BLOCK_40 port map( Pik => P_matrix_3_9_port, Gik => 
                           G_matrix_3_9_port, Pkj => X_Logic0_port, Gkj => 
                           G_matrix_2_1_port, Pij => P_matrix_5_9_port, Gij => 
                           G_matrix_5_9_port);
   PG_INST_4_10 : PG_BLOCK_39 port map( Pik => P_matrix_3_10_port, Gik => 
                           G_matrix_3_10_port, Pkj => X_Logic0_port, Gkj => 
                           G_matrix_3_2_port, Pij => P_matrix_5_10_port, Gij =>
                           G_matrix_5_10_port);
   PG_INST_4_11 : PG_BLOCK_38 port map( Pik => P_matrix_3_11_port, Gik => 
                           G_matrix_3_11_port, Pkj => P_matrix_3_3_port, Gkj =>
                           G_matrix_3_3_port, Pij => P_matrix_5_11_port, Gij =>
                           G_matrix_5_11_port);
   PG_INST_4_12 : PG_BLOCK_37 port map( Pik => P_matrix_3_12_port, Gik => 
                           G_matrix_3_12_port, Pkj => X_Logic0_port, Gkj => 
                           Co_0_port, Pij => P_matrix_5_12_port, Gij => 
                           Co_2_port);
   PG_INST_4_13 : PG_BLOCK_36 port map( Pik => P_matrix_3_13_port, Gik => 
                           G_matrix_3_13_port, Pkj => P_matrix_4_5_port, Gkj =>
                           G_matrix_4_5_port, Pij => P_matrix_5_13_port, Gij =>
                           G_matrix_5_13_port);
   PG_INST_4_14 : PG_BLOCK_35 port map( Pik => P_matrix_3_14_port, Gik => 
                           G_matrix_3_14_port, Pkj => P_matrix_4_6_port, Gkj =>
                           G_matrix_4_6_port, Pij => P_matrix_5_14_port, Gij =>
                           G_matrix_5_14_port);
   PG_INST_4_15 : PG_BLOCK_34 port map( Pik => P_matrix_3_15_port, Gik => 
                           G_matrix_3_15_port, Pkj => P_matrix_4_7_port, Gkj =>
                           G_matrix_4_7_port, Pij => P_matrix_5_15_port, Gij =>
                           G_matrix_5_15_port);
   PG_INST_4_16 : PG_BLOCK_33 port map( Pik => P_matrix_3_16_port, Gik => 
                           G_matrix_3_16_port, Pkj => P_matrix_3_8_port, Gkj =>
                           G_matrix_3_8_port, Pij => P_matrix_4_16_port, Gij =>
                           G_matrix_4_16_port);
   PG_INST_4_17 : PG_BLOCK_32 port map( Pik => P_matrix_3_17_port, Gik => 
                           G_matrix_3_17_port, Pkj => P_matrix_3_9_port, Gkj =>
                           G_matrix_3_9_port, Pij => P_matrix_4_17_port, Gij =>
                           G_matrix_4_17_port);
   PG_INST_4_18 : PG_BLOCK_31 port map( Pik => P_matrix_3_18_port, Gik => 
                           G_matrix_3_18_port, Pkj => P_matrix_3_10_port, Gkj 
                           => G_matrix_3_10_port, Pij => P_matrix_4_18_port, 
                           Gij => G_matrix_4_18_port);
   PG_INST_4_19 : PG_BLOCK_30 port map( Pik => P_matrix_3_19_port, Gik => 
                           G_matrix_3_19_port, Pkj => P_matrix_3_11_port, Gkj 
                           => G_matrix_3_11_port, Pij => P_matrix_4_19_port, 
                           Gij => G_matrix_4_19_port);
   PG_INST_4_20 : PG_BLOCK_29 port map( Pik => P_matrix_3_20_port, Gik => 
                           G_matrix_3_20_port, Pkj => P_matrix_3_12_port, Gkj 
                           => G_matrix_3_12_port, Pij => P_matrix_4_20_port, 
                           Gij => G_matrix_4_20_port);
   PG_INST_4_21 : PG_BLOCK_28 port map( Pik => P_matrix_3_21_port, Gik => 
                           G_matrix_3_21_port, Pkj => P_matrix_3_13_port, Gkj 
                           => G_matrix_3_13_port, Pij => P_matrix_4_21_port, 
                           Gij => G_matrix_4_21_port);
   PG_INST_4_22 : PG_BLOCK_27 port map( Pik => P_matrix_3_22_port, Gik => 
                           G_matrix_3_22_port, Pkj => P_matrix_3_14_port, Gkj 
                           => G_matrix_3_14_port, Pij => P_matrix_4_22_port, 
                           Gij => G_matrix_4_22_port);
   PG_INST_4_23 : PG_BLOCK_26 port map( Pik => P_matrix_3_23_port, Gik => 
                           G_matrix_3_23_port, Pkj => P_matrix_3_15_port, Gkj 
                           => G_matrix_3_15_port, Pij => P_matrix_4_23_port, 
                           Gij => G_matrix_4_23_port);
   PG_INST_4_24 : PG_BLOCK_25 port map( Pik => P_matrix_3_24_port, Gik => 
                           G_matrix_3_24_port, Pkj => P_matrix_3_16_port, Gkj 
                           => G_matrix_3_16_port, Pij => P_matrix_4_24_port, 
                           Gij => G_matrix_4_24_port);
   PG_INST_4_25 : PG_BLOCK_24 port map( Pik => P_matrix_3_25_port, Gik => 
                           G_matrix_3_25_port, Pkj => P_matrix_3_17_port, Gkj 
                           => G_matrix_3_17_port, Pij => P_matrix_4_25_port, 
                           Gij => G_matrix_4_25_port);
   PG_INST_4_26 : PG_BLOCK_23 port map( Pik => P_matrix_3_26_port, Gik => 
                           G_matrix_3_26_port, Pkj => P_matrix_3_18_port, Gkj 
                           => G_matrix_3_18_port, Pij => P_matrix_4_26_port, 
                           Gij => G_matrix_4_26_port);
   PG_INST_4_27 : PG_BLOCK_22 port map( Pik => P_matrix_3_27_port, Gik => 
                           G_matrix_3_27_port, Pkj => P_matrix_3_19_port, Gkj 
                           => G_matrix_3_19_port, Pij => P_matrix_4_27_port, 
                           Gij => G_matrix_4_27_port);
   PG_INST_4_28 : PG_BLOCK_21 port map( Pik => P_matrix_3_28_port, Gik => 
                           G_matrix_3_28_port, Pkj => P_matrix_3_20_port, Gkj 
                           => G_matrix_3_20_port, Pij => P_matrix_4_28_port, 
                           Gij => G_matrix_4_28_port);
   PG_INST_4_29 : PG_BLOCK_20 port map( Pik => P_matrix_3_29_port, Gik => 
                           G_matrix_3_29_port, Pkj => P_matrix_3_21_port, Gkj 
                           => G_matrix_3_21_port, Pij => P_matrix_4_29_port, 
                           Gij => G_matrix_4_29_port);
   PG_INST_4_30 : PG_BLOCK_19 port map( Pik => P_matrix_3_30_port, Gik => 
                           G_matrix_3_30_port, Pkj => P_matrix_3_22_port, Gkj 
                           => G_matrix_3_22_port, Pij => P_matrix_4_30_port, 
                           Gij => G_matrix_4_30_port);
   PG_INST_4_31 : PG_BLOCK_18 port map( Pik => P_matrix_3_31_port, Gik => 
                           G_matrix_3_31_port, Pkj => P_matrix_3_23_port, Gkj 
                           => G_matrix_3_23_port, Pij => P_matrix_4_31_port, 
                           Gij => G_matrix_4_31_port);
   PG_INST_4_32 : PG_BLOCK_17 port map( Pik => P_matrix_3_32_port, Gik => 
                           G_matrix_3_32_port, Pkj => P_matrix_3_24_port, Gkj 
                           => G_matrix_3_24_port, Pij => P_matrix_4_32_port, 
                           Gij => G_matrix_4_32_port);
   G_INST_5_16 : G_BLOCK_2 port map( Pik => P_matrix_4_16_port, Gik => 
                           G_matrix_4_16_port, Gkj => Cin, Gij => Co_3_port);
   PG_INST_5_17 : PG_BLOCK_16 port map( Pik => P_matrix_4_17_port, Gik => 
                           G_matrix_4_17_port, Pkj => X_Logic0_port, Gkj => 
                           G_matrix_2_1_port, Pij => n_1016, Gij => n_1017);
   PG_INST_5_18 : PG_BLOCK_15 port map( Pik => P_matrix_4_18_port, Gik => 
                           G_matrix_4_18_port, Pkj => X_Logic0_port, Gkj => 
                           G_matrix_3_2_port, Pij => n_1018, Gij => n_1019);
   PG_INST_5_19 : PG_BLOCK_14 port map( Pik => P_matrix_4_19_port, Gik => 
                           G_matrix_4_19_port, Pkj => P_matrix_3_3_port, Gkj =>
                           G_matrix_3_3_port, Pij => n_1020, Gij => n_1021);
   PG_INST_5_20 : PG_BLOCK_13 port map( Pik => P_matrix_4_20_port, Gik => 
                           G_matrix_4_20_port, Pkj => X_Logic0_port, Gkj => 
                           Co_0_port, Pij => n_1022, Gij => Co_4_port);
   PG_INST_5_21 : PG_BLOCK_12 port map( Pik => P_matrix_4_21_port, Gik => 
                           G_matrix_4_21_port, Pkj => P_matrix_4_5_port, Gkj =>
                           G_matrix_4_5_port, Pij => n_1023, Gij => n_1024);
   PG_INST_5_22 : PG_BLOCK_11 port map( Pik => P_matrix_4_22_port, Gik => 
                           G_matrix_4_22_port, Pkj => P_matrix_4_6_port, Gkj =>
                           G_matrix_4_6_port, Pij => n_1025, Gij => n_1026);
   PG_INST_5_23 : PG_BLOCK_10 port map( Pik => P_matrix_4_23_port, Gik => 
                           G_matrix_4_23_port, Pkj => P_matrix_4_7_port, Gkj =>
                           G_matrix_4_7_port, Pij => n_1027, Gij => n_1028);
   PG_INST_5_24 : PG_BLOCK_9 port map( Pik => P_matrix_4_24_port, Gik => 
                           G_matrix_4_24_port, Pkj => X_Logic0_port, Gkj => 
                           Co_1_port, Pij => n_1029, Gij => Co_5_port);
   PG_INST_5_25 : PG_BLOCK_8 port map( Pik => P_matrix_4_25_port, Gik => 
                           G_matrix_4_25_port, Pkj => P_matrix_5_9_port, Gkj =>
                           G_matrix_5_9_port, Pij => n_1030, Gij => n_1031);
   PG_INST_5_26 : PG_BLOCK_7 port map( Pik => P_matrix_4_26_port, Gik => 
                           G_matrix_4_26_port, Pkj => P_matrix_5_10_port, Gkj 
                           => G_matrix_5_10_port, Pij => n_1032, Gij => n_1033)
                           ;
   PG_INST_5_27 : PG_BLOCK_6 port map( Pik => P_matrix_4_27_port, Gik => 
                           G_matrix_4_27_port, Pkj => P_matrix_5_11_port, Gkj 
                           => G_matrix_5_11_port, Pij => n_1034, Gij => n_1035)
                           ;
   PG_INST_5_28 : PG_BLOCK_5 port map( Pik => P_matrix_4_28_port, Gik => 
                           G_matrix_4_28_port, Pkj => P_matrix_5_12_port, Gkj 
                           => Co_2_port, Pij => n_1036, Gij => Co_6_port);
   PG_INST_5_29 : PG_BLOCK_4 port map( Pik => P_matrix_4_29_port, Gik => 
                           G_matrix_4_29_port, Pkj => P_matrix_5_13_port, Gkj 
                           => G_matrix_5_13_port, Pij => n_1037, Gij => n_1038)
                           ;
   PG_INST_5_30 : PG_BLOCK_3 port map( Pik => P_matrix_4_30_port, Gik => 
                           G_matrix_4_30_port, Pkj => P_matrix_5_14_port, Gkj 
                           => G_matrix_5_14_port, Pij => n_1039, Gij => n_1040)
                           ;
   PG_INST_5_31 : PG_BLOCK_2 port map( Pik => P_matrix_4_31_port, Gik => 
                           G_matrix_4_31_port, Pkj => P_matrix_5_15_port, Gkj 
                           => G_matrix_5_15_port, Pij => n_1041, Gij => n_1042)
                           ;
   PG_INST_5_32 : PG_BLOCK_1 port map( Pik => P_matrix_4_32_port, Gik => 
                           G_matrix_4_32_port, Pkj => P_matrix_4_16_port, Gkj 
                           => G_matrix_4_16_port, Pij => P_matrix_5_32_port, 
                           Gij => G_matrix_5_32_port);
   G_INST_6_32 : G_BLOCK_1 port map( Pik => P_matrix_5_32_port, Gik => 
                           G_matrix_5_32_port, Gkj => Cin, Gij => Co_7_port);
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER.all;

entity P4_ADDER is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  Cout : out std_logic);

end P4_ADDER;

architecture SYN_STRUCTURAL of P4_ADDER is

   component SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector
            (7 downto 0);  S : out std_logic_vector (31 downto 0));
   end component;
   
   component CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (7 downto 0));
   end component;
   
   signal carry_in_sum_7_port, carry_in_sum_6_port, carry_in_sum_5_port, 
      carry_in_sum_4_port, carry_in_sum_3_port, carry_in_sum_2_port, 
      carry_in_sum_1_port : std_logic;

begin
   
   CG : CARRY_GENERATOR_NBIT32_NBIT_PER_BLOCK4 port map( A(31) => A(31), A(30) 
                           => A(30), A(29) => A(29), A(28) => A(28), A(27) => 
                           A(27), A(26) => A(26), A(25) => A(25), A(24) => 
                           A(24), A(23) => A(23), A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), B(31) => B(31), B(30) => 
                           B(30), B(29) => B(29), B(28) => B(28), B(27) => 
                           B(27), B(26) => B(26), B(25) => B(25), B(24) => 
                           B(24), B(23) => B(23), B(22) => B(22), B(21) => 
                           B(21), B(20) => B(20), B(19) => B(19), B(18) => 
                           B(18), B(17) => B(17), B(16) => B(16), B(15) => 
                           B(15), B(14) => B(14), B(13) => B(13), B(12) => 
                           B(12), B(11) => B(11), B(10) => B(10), B(9) => B(9),
                           B(8) => B(8), B(7) => B(7), B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Cin => Cin, Co(7) => Cout, 
                           Co(6) => carry_in_sum_7_port, Co(5) => 
                           carry_in_sum_6_port, Co(4) => carry_in_sum_5_port, 
                           Co(3) => carry_in_sum_4_port, Co(2) => 
                           carry_in_sum_3_port, Co(1) => carry_in_sum_2_port, 
                           Co(0) => carry_in_sum_1_port);
   SG : SUM_GENERATOR_NBIT_PER_BLOCK4_NBLOCKS8 port map( A(31) => A(31), A(30) 
                           => A(30), A(29) => A(29), A(28) => A(28), A(27) => 
                           A(27), A(26) => A(26), A(25) => A(25), A(24) => 
                           A(24), A(23) => A(23), A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), B(31) => B(31), B(30) => 
                           B(30), B(29) => B(29), B(28) => B(28), B(27) => 
                           B(27), B(26) => B(26), B(25) => B(25), B(24) => 
                           B(24), B(23) => B(23), B(22) => B(22), B(21) => 
                           B(21), B(20) => B(20), B(19) => B(19), B(18) => 
                           B(18), B(17) => B(17), B(16) => B(16), B(15) => 
                           B(15), B(14) => B(14), B(13) => B(13), B(12) => 
                           B(12), B(11) => B(11), B(10) => B(10), B(9) => B(9),
                           B(8) => B(8), B(7) => B(7), B(6) => B(6), B(5) => 
                           B(5), B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci(7) => carry_in_sum_7_port,
                           Ci(6) => carry_in_sum_6_port, Ci(5) => 
                           carry_in_sum_5_port, Ci(4) => carry_in_sum_4_port, 
                           Ci(3) => carry_in_sum_3_port, Ci(2) => 
                           carry_in_sum_2_port, Ci(1) => carry_in_sum_1_port, 
                           Ci(0) => Cin, S(31) => S(31), S(30) => S(30), S(29) 
                           => S(29), S(28) => S(28), S(27) => S(27), S(26) => 
                           S(26), S(25) => S(25), S(24) => S(24), S(23) => 
                           S(23), S(22) => S(22), S(21) => S(21), S(20) => 
                           S(20), S(19) => S(19), S(18) => S(18), S(17) => 
                           S(17), S(16) => S(16), S(15) => S(15), S(14) => 
                           S(14), S(13) => S(13), S(12) => S(12), S(11) => 
                           S(11), S(10) => S(10), S(9) => S(9), S(8) => S(8), 
                           S(7) => S(7), S(6) => S(6), S(5) => S(5), S(4) => 
                           S(4), S(3) => S(3), S(2) => S(2), S(1) => S(1), S(0)
                           => S(0));

end SYN_STRUCTURAL;
