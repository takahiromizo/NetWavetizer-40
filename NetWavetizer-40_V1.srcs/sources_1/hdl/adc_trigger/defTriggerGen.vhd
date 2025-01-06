library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library mylib;
use mylib.defAdcBlock.all;

package defGenTrigger is

  function CountHit(hit : std_logic_vector) return std_logic_vector;
   
end package defGenTrigger;

package body defGenTrigger is

  function CountHit(hit : std_logic_vector) return std_logic_vector is
    variable total_hit : std_logic_vector(4 downto 0) := "00000";
  begin
    
    for i in 0 to kNumAdcInputBlock-1 loop
      if(hit(i) = '1') then
        total_hit := total_hit + 1;
      end if;
    end loop;
    
    return total_hit;
  end CountHit;

end package body defGenTrigger;