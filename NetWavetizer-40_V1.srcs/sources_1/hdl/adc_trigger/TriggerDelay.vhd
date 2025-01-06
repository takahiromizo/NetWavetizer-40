library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library mylib;
use mylib.defAdcTrigger.all;

--library mylib;

entity TriggerDelay is
    generic(
      kNumDelay : integer:= 1024
      );
    port (
      clk          : in  std_logic;
      sigIn        : in  std_logic;
      NumDelay     : in  std_logic_vector(kWidthTriggerDelay-1 downto 0);
      delayOut     : out std_logic;
      dummyOut     : out std_logic
      );
end TriggerDelay;

architecture RTL of TriggerDelay is
  -- Internal signal declaration ---------------------------------------
  signal shift_reg : std_logic_vector(kNumDelay-1 downto 0);

begin

  --============================ body ==================================
  dummyOut        <= shift_reg(kNumDelay-1);

  u_sr : process(clk)
  begin
    if(clk'event and clk = '1') then
      shift_reg   <= shift_reg(kNumDelay-2 downto 0) & sigIn;
    end if;
  end process;
  
  u_take_trigger : process(NumDelay)
  begin
    for i in 0 to kNumDelay-1 loop
      if(std_logic_vector(to_unsigned(i, kWidthTriggerDelay)) = NumDelay) then
        delayOut    <= shift_reg(i);
      end if;
    end loop;
  end process;

end RTL;