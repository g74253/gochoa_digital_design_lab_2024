library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sumador_1bit is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
			  Cout : out STD_LOGIC;
           Sum : out STD_LOGIC);
end Sumador_1bit;

architecture Behavioral of Sumador_1bit is

begin

    Sum <= A xor B xor Cin;
    Cout <= (A and B) or (Cin and A) or (Cin and B);

end Behavioral;