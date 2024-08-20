library IEEE, mylib;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use mylib.defAdcBlock.all;
use mylib.defGenTrigger.all;

entity GenTrigger is
  port(
    clk                 : in  std_logic;
    
    Hit                 : in  std_logic_vector(kNumAdcInputBlock-1 downto 0);
    HitCount            : in  std_logic_vector(4 downto 0);
    Trigger             : out std_logic
    );
end GenTrigger;    

architecture RTL of GenTrigger is

  signal self_trig_cnt   : std_logic_vector(17 downto 0);
  signal trig            : std_logic;
  signal total_hit       : std_logic_vector(4 downto 0);

begin
  -- ========================================================================
  -- body
  -- ========================================================================
  Trigger            <= trig;
  
  u_hit_count : process(clk)
  begin
    if(clk'event and clk = '1') then
      total_hit          <= CountHit(Hit);
    end if;
  end process;
  
  u_judge : process(clk)
  begin
    if(clk'event and clk = '1') then
      if(HitCount = "00000") then
        if(self_trig_cnt = x"3d090") then
        --if(self_trig_cnt = x"3e8") then
          trig             <= '1';
          self_trig_cnt    <= (others => '0');
        else
          trig             <= '0';
          self_trig_cnt    <= self_trig_cnt + 1;
        end if;
      else
        if(total_hit >= HitCount) then
          trig             <= '1';
        else
          trig             <= '0';
        end if;
      end if;
    end if;
  end process;

end RTL;