library ieee, mylib;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use mylib.defAdcTrigger.all;

entity EdgeCounter is
  port(
    -- System --
    rst               : in  std_logic;
    clk               : in  std_logic;
    
    -- input --
    Pulse             : in  std_logic;
    -- output --
    EdgeCount          : out std_logic_vector(kEdgeCountBit-1 downto 0)
    );
end EdgeCounter;

architecture RTL of EdgeCounter is
   
   signal one_shot    : std_logic;
   signal edge_count   : std_logic_vector(kEdgeCountBit-1 downto 0);

begin
  -- ==============================================================
  -- body
  -- ==============================================================
  -- signal connection --
  EdgeCount    <= edge_count;
  
  u_one_shot : entity mylib.EdgeDetector port map (rst => '0', clk => clk, dIn => Pulse, dOut => one_shot);
  
  u_counter  : process(clk, rst)
  begin
    if(rst = '1') then
      edge_count    <= (others => '0');
    elsif(clk'event and clk = '1') then
      if(one_shot = '1') then
        edge_count  <= edge_count + 1;
      end if;
    end if;
  end process;
  
end RTL;
