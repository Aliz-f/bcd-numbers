library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd_11 is
port(
	bcd_inpu :in std_logic_vector(15 downto 0);
	output : out std_logic
);
end bcd_11;

architecture bcd_11_arch of bcd_11 is

signal sum : integer;

begin

sum <=  to_integer(unsigned(bcd_inpu(15 downto 12))) - to_integer(unsigned(bcd_inpu(11 downto 8))) + to_integer(unsigned(bcd_inpu(7 downto 4)))- to_integer(unsigned(bcd_inpu(3 downto 0)));

output <= '1' when (sum mod 11 = 0 or sum = 0) else '0';			 

end bcd_11_arch;

