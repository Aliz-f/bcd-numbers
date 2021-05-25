
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY bcd_3_testbench IS
END bcd_3_testbench;
 
ARCHITECTURE behavior OF bcd_3_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd_3
    PORT(
         bcd_inpu : IN  std_logic_vector(15 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal bcd_inpu : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd_3 PORT MAP (
          bcd_inpu => bcd_inpu,
          output => output
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
				bcd_inpu <= "0011001110010110"; --3396 ok
		wait for 100 ns;
				bcd_inpu <= "0001001000110100"; --1234 not ok
		wait for 100 ns;
      		bcd_inpu <= "0011010001010110"; --3456 ok
		wait for 100 ns;
				bcd_inpu <= "0010001100010100"; --2314 not ok
		wait for 100 ns;
		wait;
   end process;

END;
