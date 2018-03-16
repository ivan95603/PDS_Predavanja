LIBRARY ieee;  
 USE ieee.std_logic_1164.ALL;  
 ENTITY d_flipflop_test IS  
 END d_flipflop_test;  
 ARCHITECTURE behavior OF d_flipflop_test IS   
   -- Component Declaration for the Unit Under Test (UUT)  
   COMPONENT D_flipflop  
   PORT(  
      d : IN std_logic;  
      reset : IN std_logic;  
      preset : IN std_logic;  
      clk : IN std_logic;  
      q : OUT std_logic;  
      qnot : OUT std_logic  
     );  
   END COMPONENT;  
   --Inputs  
   signal d : std_logic := '0';  
   signal reset : std_logic := '0';  
   signal preset : std_logic := '0';  
   signal clk : std_logic := '0';  
       --Outputs  
   signal q : std_logic;  
   signal qnot : std_logic;  
   -- Clock period definitions  
   constant clk_period : time := 10 ns;  
 BEGIN  
      -- Instantiate the Unit Under Test (UUT)  
   uut: D_flipflop PORT MAP (  
      d => d,  
      reset => reset,  
      preset => preset,  
      clk => clk,  
      q => q,  
      qnot => qnot  
     );  
 -- SET CLOCK PERIOD  
      clk <= not clk after 50 ns; -- period = 100ns  
      tb : PROCESS  
      BEGIN  
           -- Wait 100 ns for global reset to finish  
           wait for 100 ns;  
           -- both outputs start undefined 'U'  
           reset <= '1';  
           d <= '1';  
           -- this sets Q to '0' and Q_bar to '1'  
           -- note that while reset is asserted, the flip-flop  
           -- does not react to the clock signal  
           wait for 120ns;  
           d <= '0';  
           -- this sets Q to '0' and Q_bar to '1'  
           -- note that while reset is asserted, the flip-flop  
           -- does not react to the clock signal   
           wait for 120ns;  
           reset <= '0';  
           -- after reset changes to 0, the Q output value will toggle   
           -- on each rising clock edge.   
           wait for 100 ns;  
           -- both outputs start undefined 'U'  
           preset <= '1';  
           d <= '1';  
           -- this sets Q to '0' and Q_bar to '1'  
           -- note that while reset is asserted, the flip-flop  
           -- does not react to the clock signal  
           wait for 120ns;  
           d <= '0';  
           -- this sets Q to '0' and Q_bar to '1'  
           -- note that while reset is asserted, the flip-flop  
           -- does not react to the clock signal  
           wait for 120ns;  
           preset <= '0';  
           wait for 100 ns;  
           -- both outputs start undefined 'U'  
           d <= '1';  
           -- this sets Q to '0' and Q_bar to '1'  
           -- note that while reset is asserted, the flip-flop  
           -- does not react to the clock signal  
           wait for 120ns;  
           d <= '0';  
    wait;  
   end process;  
 END;  