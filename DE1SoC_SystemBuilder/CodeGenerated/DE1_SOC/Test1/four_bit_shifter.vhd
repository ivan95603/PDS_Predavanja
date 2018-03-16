 library IEEE;  
 use IEEE.STD_LOGIC_1164.ALL;  
 use IEEE.STD_LOGIC_ARITH.ALL;  
 use IEEE.STD_LOGIC_UNSIGNED.ALL;  
 -- ENTITY  
 entity four_bit_shifter is  
   Port ( Data_In : in std_logic_vector(3 downto 0);  
       G : in std_logic_vector(2 downto 0);  
       Output : out std_logic_vector(3 downto 0));  
 end four_bit_shifter;  
 -- ARCHITECTURE  
 architecture Behavioral of four_bit_shifter is  
 -- COMPONENTS  
 component nBitShiftRotateM   
   generic(n:positive:=4);  
       Port (Data_In1 : in std_logic_vector(n-1 downto 0);  
             Data_In2 : in std_logic_vector(n-1 downto 0);  
             Right_In : in std_logic;  
             Right_Select : in std_logic;  
             Left_In : in std_logic;  
             Left_Select : in std_logic;  
             Control : in std_logic_vector (1 downto 0);  
          Output : out std_logic_vector (n-1 downto 0));  
 end component;  
 component shiftcontrollogic   
   Port ( input : in STD_LOGIC_VECTOR (2 downto 0);  
       output : out STD_LOGIC_VECTOR (1 downto 0));  
 end component;  
 -- SIGNAL  
 signal shift_control : std_logic_vector (1 downto 0);  
 begin  
      logic_device : shiftcontrollogic port map (G, shift_control);  
      -- instantiate an n-bit shift_rotate device with generic value "n"   
      -- mapped to a bit-width of 4. Note that the second data input is   
      -- connected directly to ground by using the 4-bit value "0000".   
      shift_device : nBitShiftRotateM  generic map (4) port map (Data_In, "0000", G(0), G(1), G(0), G(1), shift_control, Output);   
 end Behavioral;  
 -- G2 G1 G0  
 -- 0 0 0 gets input no change  
 -- 0 0 1 shift input right  
 -- 0 1 0 shift input to the right and introduce a 0  
 -- 0 1 1 shift input to the right and introduce a 1  
 -- 1 0 0 gets input no change  
 -- 1 0 1 shift input  
 -- 1 1 0 shift input to the left and introduce a 0  
 -- 1 1 1 shift input to the left and introduce a 1  