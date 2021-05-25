LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY bcd_11_testbench IS
END bcd_11_testbench;
 
ARCHITECTURE behavior OF bcd_11_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd_11
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
   uut: bcd_11 PORT MAP (
          bcd_inpu => bcd_inpu,
          output => output
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
				bcd_inpu <="0001000001111000"; --1078 OK
		wait for 100 ns;
				bcd_inpu <="0100010101000101"; --4545 NOT
		wait for 100 ns;
				bcd_inpu <="0001001100100000"; --1320 OK
		wait for 100 ns;
				bcd_inpu <="1000010110000100"; --8584 NOT
		wait for 100 ns;
				bcd_inpu <="0001000100010001"; --1111 OK
		wait for 100 ns;
      wait;
   end process;

END;
