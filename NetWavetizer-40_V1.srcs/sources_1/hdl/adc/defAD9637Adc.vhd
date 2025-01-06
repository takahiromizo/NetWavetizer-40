library ieee;
use ieee.std_logic_1164.all;

library mylib;

package defAD9637Adc is
  -- SYSTEM ------------------------------------------------------
  constant kWidthSys          : integer := 1;
  constant kWidthDev          : integer := 6; -- AD9637 outputs 12 bit ADC data. But ISERDESE2 doesn't support 12 bit.
                                              -- We receive as 6 bit data and switch from 6 bit to 12 bit using two 6 bit data
                                              -- to acheive 12 bit data reception. So kWidthDev is defined as 6.

  constant kSyncLength        : integer := 4;

  -- IDELAY --
  type IdelayControlProcessType is (
    Init,
    TapLoad,
    IdelayAdjusted
    );

  -- Bitslip --
  constant kMaxPattCheck      : integer := 32;
  constant kPattOkThreshold   : integer := 16;

  type BitslipControlProcessType is (
    Init,
    WaitStart,
    CheckFramePatt,
    BitSlip,
    BitslipFinished,
    BitslipFailure
    );

  -- Pattern match --
  constant kNumPattMatchCycle : integer := 16;
  
  -- Clock adjustment(clk_smp) --
  type ClkSmpControlProcessType is (
    Init,
    Waiting,
    CheckPatt,
    Shift,
    ClkSmpAdjusted,
    ClkSmpFailure
    );

-- ADC data format ------------------------------------------------
 constant kNumAdcCh           : integer := 8;
 constant kNumAdcBit          : integer := 12;
 constant kNumSerdesBit       : integer := 6;  -- 6 for the same reason as kWidthDev
 constant kNumTapBit          : integer := 5;
 constant kNumFrame           : integer := 1;


 subtype AdcDataType     is std_logic_vector(kNumAdcBit-1 downto 0);
 subtype FcoDataType     is std_logic_vector(kNumAdcBit-1 downto 0);
 subtype AdcDataSubType  is std_logic_vector(kNumSerdesBit-1 downto 0);
 subtype TapType         is std_logic_vector(kNumTapBit-1 downto 0);

 type AdcDataArray       is array (integer range kNumAdcCh-1 downto 0) of AdcDataType;
 type DataFrameArray     is array (integer range kNumAdcCh+kNumFrame-1 downto 0) of AdcDataType;
 type TapArray           is array (integer range kNumAdcCh+kNumFrame-1 downto 0) of TapType;

end package defAD9637Adc;
