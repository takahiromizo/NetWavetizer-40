library IEEE, mylib;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use mylib.defAD9637Adc.all;
use mylib.defAdcTrigger.all;
use mylib.defSelfVETO.all;

entity SelfVETO is
  port(
    -- System --
    rst            : in  std_logic;
    clk            : in  std_logic;
    
    VetoPeriod     : std_logic_vector(kWidthVETO-1 downto 0);
    ActivePeriod   : std_logic_vector(kWidthDiscriPeriod-1 downto 0);
    
    -- Gate --
    GatePulseIn    : in  std_logic;
    GatePulseOut   : out std_logic
    );
end SelfVETO;

architecture RTL of SelfVETO is

  signal en_count         : std_logic;
  signal stop_count       : std_logic;
  signal veto_flag        : std_logic;
  signal veto_hold        : std_logic;
  signal pulse            : std_logic;

begin
  -- ==============================================================
  -- body
  -- ==============================================================
  
  GatePulseOut   <= pulse;
  
  u_selfveto : process(clk)
    variable veto_count    : integer range 0 to kVetoCountRange;
    variable active_count  : integer range 0 to kActiveCountRange;
  begin
    if(rst = '1') then
      en_count        <= '0';
      stop_count      <= '0';
      veto_flag       <= '0';
      veto_hold       <= '0';
      pulse           <= '0';
      
    elsif(clk'event and clk = '1') then 
      if((veto_flag = '1' or en_count = '1') and (not stop_count = '1')) then
        if(active_count = conv_integer(ActivePeriod)-1) then
          null;
        else
          active_count  := active_count + 1;
          en_count      <= '1';
          veto_flag     <= '0';
        end if;
      elsif(stop_count = '1') then
        null;
      else
        veto_flag     <= GatePulseIn;
      end if;
      
      -- Self VETO --
      if(active_count = conv_integer(ActivePeriod)-1 or veto_hold = '1') then
        if(veto_count = conv_integer(VetoPeriod)) then
          en_count      <= '0';
          veto_flag     <= '0';
          stop_count    <= '0';
          pulse         <= '0';
          veto_hold     <= '0';
          veto_count    := 0;
          active_count  := 0;
        else
          stop_count    <= '1';
          pulse         <= '0';
          veto_hold     <= '1';
          veto_count    := veto_count + 1;
        end if;
        
      else
        pulse      <= GatePulseIn;
        
      end if;
    end if;
  end process;
  
end RTL;