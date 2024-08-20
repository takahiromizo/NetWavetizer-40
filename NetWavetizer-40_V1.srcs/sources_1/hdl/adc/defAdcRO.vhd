library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library mylib;
use mylib.defAD9637Adc.all;

package defAdcRO is
  constant kNumADCBlock       : integer := 4;

  type AdcDataBlockArray  is array(integer range kNumADCBlock*kNumAdcCh-1 downto 0) of AdcDataType;
  type AdcFrameBlockArray is array(integer range kNumADCBlock-1 downto 0)           of AdcDataType;

  type TapBlockArray      is array(integer range kNumADCBlock-1 downto 0)           of TapArray;

  function GetInvPolarity(index : integer) return std_logic_vector;
  function GetGenFlagIdelayCtrl(index : integer) return boolean;
  function GetIdelayGroup(index : integer) return string;
  
  function GetTapValues(index : integer) return TapArray;

end package defAdcRO;

-- -----------------------------------------------------------------------
-- Package body
-- -----------------------------------------------------------------------
package body defAdcRO is
  
  -- GetInvPolarity ------------------------------------------------------
  function GetInvPolarity(index : integer) return std_logic_vector is
  begin
    case index is
      when 0      => return("000000000");
      when 1      => return("000000000");
      when 2      => return("000000000");
      when 3      => return("010110110");
      when others => return("000000000");

    end case;
  end GetInvPolarity;

  -- GetGenFlagIdelayCtrl -------------------------------------------------
  function GetGenFlagIdelayCtrl(index : integer) return boolean is
    variable result : boolean;
  begin
    if(index = 0) then
      result  := true;
    elsif(index = 1) then
      result  := true;
    elsif(index = 2) then
      result  := true;
    else
      result  := true;
    end if;

    return result;

  end GetGenFlagIdelayCtrl;

  -- GetIdelay Group ------------------------------------------------------
  function GetIdelayGroup(index : integer) return string is
  begin
    if(index = 0) then
      return("idelay_0");
    elsif(index = 1) then
      return("idelay_1");
    elsif(index = 2) then
      return("idelay_2");
    else
      return("idelay_3");
    end if;
    
  end GetIdelayGroup;
  

  -- GetTapValues ---------------------------------------------------------
  function GetTapValues(index : integer) return TapArray is
  begin
    if (index = 0) then
      return("01111", "01111", "01010", "01111", "01111", "01111", "01111", "01111", "01111");
    elsif (index = 1) then
      return("01111", "01111", "01111", "01111", "01001", "01111", "01111", "01111", "01111");
    elsif (index = 2) then
      return("01111", "01111", "01111", "01111", "01111", "01001", "01010", "01111", "01111");
    else
      return("01111", "01111", "01111", "01010", "01111", "01111", "01111", "01111", "01111");
    end if;

  end GetTapValues;

end package body defAdcRO;
