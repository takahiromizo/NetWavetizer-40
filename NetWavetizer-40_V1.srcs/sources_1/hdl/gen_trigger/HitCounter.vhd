library ieee, mylib;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use mylib.defAdcTrigger.all;

entity HitCounter is
  port(
    -- System --
    rst               : in  std_logic;
    clk               : in  std_logic;
    DaqGate           : in  std_logic;
    
    -- input --
    Pulse             : in  std_logic;
    -- output --
    HitCount          : out std_logic_vector(kHitCountBit-1 downto 0)
    );
end HitCounter;

architecture RTL of HitCounter is
   
   signal one_shot    : std_logic;
   signal daq_gate    : std_logic;
   signal hit_count   : std_logic_vector(kHitCountBit-1 downto 0);

begin
  -- ==============================================================
  -- body
  -- ==============================================================
  -- signal connection --
  daq_gate    <= DaqGate;
  HitCount    <= hit_count;
  
  u_one_shot : entity mylib.EdgeDetector port map (rst => '0', clk => clk, dIn => Pulse, dOut => one_shot);
  
  u_counter  : process(clk, daq_gate)
  begin
    if(daq_gate = '0') then
      hit_count    <= (others => '0');
    elsif(clk'event and clk = '1') then
      if(one_shot = '1') then
        hit_count  <= hit_count + 1;
      end if;
    end if;
  end process;
  
end RTL;
