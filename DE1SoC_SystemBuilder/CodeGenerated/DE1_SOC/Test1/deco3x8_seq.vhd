library ieee;
use ieee.std_logic_1164.all;

entity deco3x8_seq is
  
  port (
    ip : in  std_logic_vector(2 downto 0);   -- input
    op : out std_logic_vector(7 downto 0));  -- output

end deco3x8_seq;

architecture beh of deco3x8_seq is

begin  -- beh

deco : process (ip)
  variable temp : std_logic_vector(7 downto 0);
  begin
    case ip is
      when "000" => temp := "00000001";
      when "001" => temp := "00000010";
      when "010" => temp := "00000100";
      when "011" => temp := "00001000";
      when "100" => temp := "00010000";
      when "101" => temp := "00100000";
      when "110" => temp := "01000000";
      when "111" => temp := "10000000";
      when others => temp := "XXXXXXXX";
    end case;
    op <= temp;
 end process deco;
end beh;