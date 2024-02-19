library IEEE, mylib;
use IEEE.STD_LOGIC_1164.ALL;
use mylib.defBCT.all;

package defA9C is

  constant kNumADC         : integer := 4; -- Number of AD9637(Pipeline ADC)s
  
  -- SPI --
  subtype kSpiCS           is std_logic_vector(3 downto 0);
  subtype kRegData         is std_logic_vector(7 downto 0);
  
  type RegDataArray is array (integer range kNumADC-1 downto 0)
    of std_logic_vector(kRegData'range);

  ----------------------------------------------------------------------
  
  type SubBusProcessType is (
    SubIdle, 
    ExecModule,
    WaitAck,
    SubDone
  );

  -- Local bus -------------------------------------------------------
  type A9CBusProcessType is (
    Init, Idle, Connect,
    Write, Read,
    Execute,
    Finalize,
    Done
  );

  -- Local Address ---------------------------------------------------
  constant kSetReg        : LocalAddressType := x"000";
  constant kSPIExec       : LocalAddressType := x"010";
  constant kADCSync       : LocalAddressType := x"020";
     
end package defA9C;