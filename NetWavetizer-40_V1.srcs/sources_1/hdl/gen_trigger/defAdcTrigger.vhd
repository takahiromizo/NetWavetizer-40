library ieee;
use ieee.std_logic_1164.all;

library mylib;
use mylib.defBCT.all;

package defAdcTrigger is

  constant kNumChBit               : integer := 5;
  constant kNumThreshBit           : integer := 12;
  

  constant kWidthTriggerDelay      : integer := 12; --[bit]
  constant kWidthDiscriPeriod      : integer := 12; --[bit]
  constant kHitCountBit            : integer := 32; --[bit]
  constant kWidthVETO              : integer := 12; --[bit]

  -- Local Address ----------------------------------------------------
  constant kChSelection            : LocalAddressType := x"000"; -- W/R, [4:0],  ch selection to prepare for ADC threshold
  constant kAdcThreshold           : LocalAddressType := x"010"; -- W/R, [11:0], ADC Threshold
  constant kVETOPeriod             : LocalAddressType := x"020"; -- W/R, [9:0],  VETO period [clock]
  constant kTriggerDelay           : LocalAddressType := x"030"; -- W/R, [10:0], Trigger Delay [clock]
  constant kActiveDiscri           : LocalAddressType := x"040"; -- W/R, [10:0], Discriminator active period [clock]
  constant kHitCount               : LocalAddressType := x"050"; -- W/R, [4:0],  Number of coincidence counts
                                                                 --              0 : self trigger mode(for measuring pedestal)
  constant kActiveCh               : LocalAddressType := x"060"; -- W/R, [31:0], If certain ch is treated as active, corresponding bit is set high.
                                                                 --              Ex) we want to use ch0, ch3, ch30
                                                                 --                  -> 0100 0000 0000 0000 0000 0000 0000 1001
  constant kTotalHit               : LocalAddressType := x"070"; -- R,   [31:0], total single or coincidence count
  
end package defAdcTrigger;