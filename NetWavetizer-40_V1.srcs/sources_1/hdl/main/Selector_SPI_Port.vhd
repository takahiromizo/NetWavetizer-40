library ieee, mylib;
use ieee.std_logic_1164.all;
use mylib.defA9C.all;

entity Selector_SPI_Port is
  Port (
    csbIn     : in  std_logic_vector(kNumADC-1 downto 0);
    sckIn     : in  std_logic_vector(kNumADC-1 downto 0);
    sddirIn   : in  std_logic_vector(kNumADC-1 downto 0);
    sdoIn     : in  std_logic_vector(kNumADC-1 downto 0);
    
    sckOut    : out std_logic_vector(kNumADC-1 downto 0);
    sddirOut  : out std_logic_vector(kNumADC-1 downto 0);
    sdoOut    : out std_logic
    );
end Selector_SPI_Port;

architecture RTL of Selector_SPI_Port is

begin

  sckOut     <= sckIn;   -- Purpose : to syncronize timing with sdoOut
              
  sddirOut   <= sddirIn; -- Purpose : to syncronize timing with sdoOut
  
  sdoOut     <= sdoIn(0) when(csbIn = "1110") else
                sdoIn(1) when(csbIn = "1101") else
                sdoIn(2) when(csbIn = "1011") else
                sdoIn(3) when(csbIn = "0111") else
                '0';
end RTL;
