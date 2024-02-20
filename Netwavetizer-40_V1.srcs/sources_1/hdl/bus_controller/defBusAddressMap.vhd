library ieee;
use ieee.std_logic_1164.all;

package defBusAddressMap is

  constant kCurrentVersion      : std_logic_vector(31 downto 0):= x"A0000200";
  constant kNumModules          : natural:= 3;

  constant kWidthModuleID       : positive:=4;

  -- Local Bus index ------------------------------------------------------
  subtype ModuleID is integer range -1 to kNumModules-1;
  type Leaf is record
    ID : ModuleID;
  end record;

  type Binder is array (integer range <>) of Leaf;
  constant kC6C	  : Leaf := (ID => 0);
  constant kSDS	  : Leaf := (ID => 1);
  constant kFMP   : Leaf := (ID => 2);
  constant kDummy : Leaf := (ID => -1);

  function GetID(mid_ext_bus: std_logic_vector(kWidthModuleID-1 downto 0))  return ModuleID;
  constant kMidBCT          : std_logic_vector(kWidthModuleID-1 downto 0) := "1110";

end package defBusAddressMap;

package body defBusAddressMap is

  -- Local Module ID ------------------------------------------------------
  -- Module ID Map
  -- <Module ID : 31-28> + <Local Address 27 - 16>
  -- SiTCP:		  1111 (Reserved)
  -- MidBCT:		1110
  function GetID(mid_ext_bus: std_logic_vector(kWidthModuleID-1 downto 0)) return ModuleID is
  begin
    case mid_ext_bus is
      when "1011"   => return kC6C.ID;
      when "1100"   => return kSDS.ID;
      when "1101"   => return kFMP.ID;
      when others   => return kDummy.ID;
    end case;
  end function GetID;

end package body defBusAddressMap;
