library IEEE, mylib;
use IEEE.STD_LOGIC_1164.ALL;

use mylib.defAD9637Adc.all;

entity Discriminator is
  port(
    -- System --
    rst            : in  std_logic;
    clk            : in  std_logic;
    ActiveCh       : in  std_logic;
    
    -- ADC data --
    AdcData        : in  std_logic_vector(kNumAdcBit-1 downto 0);
    
    -- Threshold --
    AdcThreshold   : in  std_logic_vector(kNumAdcBit-1 downto 0);
    
    -- Gate --
    GatePulse      : out std_logic
    );
end Discriminator;

architecture RTL of Discriminator is

  signal gen_gate         : std_logic_vector(1 downto 0);
  signal and_gen_gate     : std_logic;

begin
  -- ==============================================================
  -- body
  -- ==============================================================
  
  GatePulse         <= and_gen_gate and ActiveCh;
  
  u_discriminate : process(clk, rst)
  begin
    if(rst = '1') then
      gen_gate    <= (others => '0');
    elsif(clk'event and clk = '1') then
      if(AdcData < AdcThreshold) then
        gen_gate    <= gen_gate(0) & '1';
      else
        gen_gate    <= gen_gate(0) & '0';
      end if;
      
      and_gen_gate  <= gen_gate(0) and gen_gate(1); 
    end if;
  end process;
  
end RTL;