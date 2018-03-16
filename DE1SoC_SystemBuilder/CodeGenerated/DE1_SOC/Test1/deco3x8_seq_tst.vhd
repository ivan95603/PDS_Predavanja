library ieee;
use ieee.std_logic_1164.all;

entity deco3x8_seq_tst is

end deco3x8_seq_tst;
 architecture beh of deco3x8_seq_tst is
   component deco3x8_seq
       port (
    ip: in  std_logic_vector(2 downto 0);   -- inputs
    op: out std_logic_vector(7 downto 0));  -- outputs

end component;
    signal ip_s : std_logic_vector(2 downto 0);  -- signals
    signal op_s : std_logic_vector(7 downto 0);  -- output signals
 begin  -- beh

u1 : deco3x8_seq port map (
  ip => ip_s,
  op => op_s);

tst_p: process
   begin
      ip_s<="000";
       wait for 100 ns;
       ip_s<="001";
       wait for 100 ns;
       ip_s<="010";
       wait for 100 ns;
       ip_s<="011";
       wait for 100 ns;
       ip_s<="100";
       wait for 100 ns;
       ip_s<="101";
       wait for 100 ns;
       ip_s<="110";
       wait for 100 ns;
       ip_s<="111";
       wait for 100 ns;
    end process;
 end beh;