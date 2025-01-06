-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
-- Date        : Fri Dec 22 16:53:50 2023
-- Host        : DESKTOP-E13TS30 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/mizoguchi/FW_Develop/NetWavetizer-40_V1/NetWavetizer-40_V1.gen/sources_1/ip/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_sim_netlist.vhdl
-- Design      : gig_ethernet_pcs_pma
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    userclk2 : in STD_LOGIC;
    enablealign : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_reset_sync;

architecture STRUCTURE of gig_ethernet_pcs_pma_reset_sync is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => '0',
      PRE => enablealign,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg1,
      PRE => enablealign,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg2,
      PRE => enablealign,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg3,
      PRE => enablealign,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg4,
      PRE => enablealign,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_reset_sync_1 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_reset_sync_1 : entity is "gig_ethernet_pcs_pma_reset_sync";
end gig_ethernet_pcs_pma_reset_sync_1;

architecture STRUCTURE of gig_ethernet_pcs_pma_reset_sync_1 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg1,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg2,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg3,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg4,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_reset_sync_2 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_reset_sync_2 : entity is "gig_ethernet_pcs_pma_reset_sync";
end gig_ethernet_pcs_pma_reset_sync_2;

architecture STRUCTURE of gig_ethernet_pcs_pma_reset_sync_2 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => SR(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg1,
      PRE => SR(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg2,
      PRE => SR(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg3,
      PRE => SR(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg4,
      PRE => SR(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_reset_sync_4 is
  port (
    reset_out : out STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_reset_sync_4 : entity is "gig_ethernet_pcs_pma_reset_sync";
end gig_ethernet_pcs_pma_reset_sync_4;

architecture STRUCTURE of gig_ethernet_pcs_pma_reset_sync_4 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => '0',
      PRE => SR(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_sync_reg1,
      PRE => SR(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_sync_reg2,
      PRE => SR(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_sync_reg3,
      PRE => SR(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_sync_reg4,
      PRE => SR(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_reset_sync_5 is
  port (
    reset_out : out STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_reset_sync_5 : entity is "gig_ethernet_pcs_pma_reset_sync";
end gig_ethernet_pcs_pma_reset_sync_5;

architecture STRUCTURE of gig_ethernet_pcs_pma_reset_sync_5 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => '0',
      PRE => reset_sync5_0,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_sync_reg1,
      PRE => reset_sync5_0,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_sync_reg2,
      PRE => reset_sync5_0,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_sync_reg3,
      PRE => reset_sync5_0,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_sync_reg4,
      PRE => reset_sync5_0,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_reset_wtd_timer is
  port (
    reset : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_reset_wtd_timer;

architecture STRUCTURE of gig_ethernet_pcs_pma_reset_wtd_timer is
  signal \counter_stg1[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg1[5]_i_3_n_0\ : STD_LOGIC;
  signal counter_stg1_reg : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \counter_stg1_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \counter_stg2[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_stg2_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_stg2_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal counter_stg30 : STD_LOGIC;
  signal \counter_stg3[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_stg3[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_stg3[0]_i_5_n_0\ : STD_LOGIC;
  signal counter_stg3_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_stg3_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal reset0 : STD_LOGIC;
  signal reset_i_2_n_0 : STD_LOGIC;
  signal reset_i_3_n_0 : STD_LOGIC;
  signal reset_i_4_n_0 : STD_LOGIC;
  signal reset_i_5_n_0 : STD_LOGIC;
  signal reset_i_6_n_0 : STD_LOGIC;
  signal reset_i_7_n_0 : STD_LOGIC;
  signal \NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_stg1[0]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \counter_stg1[1]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \counter_stg1[2]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \counter_stg1[3]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \counter_stg1[4]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \counter_stg1[5]_i_3\ : label is "soft_lutpair112";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg3_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg3_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg3_reg[8]_i_1\ : label is 11;
begin
\counter_stg1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_stg1_reg__0\(0),
      O => plusOp(0)
    );
\counter_stg1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_stg1_reg__0\(1),
      I1 => \counter_stg1_reg__0\(0),
      O => plusOp(1)
    );
\counter_stg1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_stg1_reg__0\(2),
      I1 => \counter_stg1_reg__0\(1),
      I2 => \counter_stg1_reg__0\(0),
      O => plusOp(2)
    );
\counter_stg1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_stg1_reg__0\(0),
      I1 => \counter_stg1_reg__0\(1),
      I2 => \counter_stg1_reg__0\(2),
      I3 => \counter_stg1_reg__0\(3),
      O => plusOp(3)
    );
\counter_stg1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter_stg1_reg__0\(4),
      I1 => \counter_stg1_reg__0\(0),
      I2 => \counter_stg1_reg__0\(1),
      I3 => \counter_stg1_reg__0\(2),
      I4 => \counter_stg1_reg__0\(3),
      O => plusOp(4)
    );
\counter_stg1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => data_out,
      I1 => \counter_stg1[5]_i_3_n_0\,
      I2 => reset0,
      O => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => counter_stg1_reg(5),
      I1 => \counter_stg1_reg__0\(3),
      I2 => \counter_stg1_reg__0\(2),
      I3 => \counter_stg1_reg__0\(1),
      I4 => \counter_stg1_reg__0\(0),
      I5 => \counter_stg1_reg__0\(4),
      O => plusOp(5)
    );
\counter_stg1[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \counter_stg1_reg__0\(4),
      I1 => \counter_stg1_reg__0\(0),
      I2 => \counter_stg1_reg__0\(1),
      I3 => \counter_stg1_reg__0\(2),
      I4 => \counter_stg1_reg__0\(3),
      O => \counter_stg1[5]_i_3_n_0\
    );
\counter_stg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(0),
      Q => \counter_stg1_reg__0\(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(1),
      Q => \counter_stg1_reg__0\(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(2),
      Q => \counter_stg1_reg__0\(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(3),
      Q => \counter_stg1_reg__0\(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(4),
      Q => \counter_stg1_reg__0\(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(5),
      Q => counter_stg1_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => counter_stg1_reg(5),
      I1 => \counter_stg1_reg__0\(3),
      I2 => \counter_stg1_reg__0\(2),
      I3 => \counter_stg1_reg__0\(1),
      I4 => \counter_stg1_reg__0\(0),
      I5 => \counter_stg1_reg__0\(4),
      O => eqOp
    );
\counter_stg2[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_stg2_reg(0),
      O => \counter_stg2[0]_i_3_n_0\
    );
\counter_stg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_7\,
      Q => counter_stg2_reg(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_stg2_reg[0]_i_2_n_0\,
      CO(2) => \counter_stg2_reg[0]_i_2_n_1\,
      CO(1) => \counter_stg2_reg[0]_i_2_n_2\,
      CO(0) => \counter_stg2_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_stg2_reg[0]_i_2_n_4\,
      O(2) => \counter_stg2_reg[0]_i_2_n_5\,
      O(1) => \counter_stg2_reg[0]_i_2_n_6\,
      O(0) => \counter_stg2_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_stg2_reg(3 downto 1),
      S(0) => \counter_stg2[0]_i_3_n_0\
    );
\counter_stg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_5\,
      Q => counter_stg2_reg(10),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_4\,
      Q => counter_stg2_reg(11),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_6\,
      Q => counter_stg2_reg(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_5\,
      Q => counter_stg2_reg(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_4\,
      Q => counter_stg2_reg(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_7\,
      Q => counter_stg2_reg(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg2_reg[0]_i_2_n_0\,
      CO(3) => \counter_stg2_reg[4]_i_1_n_0\,
      CO(2) => \counter_stg2_reg[4]_i_1_n_1\,
      CO(1) => \counter_stg2_reg[4]_i_1_n_2\,
      CO(0) => \counter_stg2_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg2_reg[4]_i_1_n_4\,
      O(2) => \counter_stg2_reg[4]_i_1_n_5\,
      O(1) => \counter_stg2_reg[4]_i_1_n_6\,
      O(0) => \counter_stg2_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_stg2_reg(7 downto 4)
    );
\counter_stg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_6\,
      Q => counter_stg2_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_5\,
      Q => counter_stg2_reg(6),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_4\,
      Q => counter_stg2_reg(7),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_7\,
      Q => counter_stg2_reg(8),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg2_reg[4]_i_1_n_0\,
      CO(3) => \NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_stg2_reg[8]_i_1_n_1\,
      CO(1) => \counter_stg2_reg[8]_i_1_n_2\,
      CO(0) => \counter_stg2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg2_reg[8]_i_1_n_4\,
      O(2) => \counter_stg2_reg[8]_i_1_n_5\,
      O(1) => \counter_stg2_reg[8]_i_1_n_6\,
      O(0) => \counter_stg2_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_stg2_reg(11 downto 8)
    );
\counter_stg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_6\,
      Q => counter_stg2_reg(9),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \counter_stg1[5]_i_3_n_0\,
      I1 => counter_stg2_reg(8),
      I2 => counter_stg2_reg(4),
      I3 => counter_stg2_reg(3),
      I4 => \counter_stg3[0]_i_3_n_0\,
      I5 => \counter_stg3[0]_i_4_n_0\,
      O => counter_stg30
    );
\counter_stg3[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_stg2_reg(7),
      I1 => counter_stg2_reg(6),
      I2 => counter_stg2_reg(1),
      I3 => counter_stg2_reg(2),
      O => \counter_stg3[0]_i_3_n_0\
    );
\counter_stg3[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => counter_stg2_reg(11),
      I1 => counter_stg1_reg(5),
      I2 => counter_stg2_reg(5),
      I3 => counter_stg2_reg(9),
      I4 => counter_stg2_reg(0),
      I5 => counter_stg2_reg(10),
      O => \counter_stg3[0]_i_4_n_0\
    );
\counter_stg3[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_stg3_reg(0),
      O => \counter_stg3[0]_i_5_n_0\
    );
\counter_stg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_7\,
      Q => counter_stg3_reg(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_stg3_reg[0]_i_2_n_0\,
      CO(2) => \counter_stg3_reg[0]_i_2_n_1\,
      CO(1) => \counter_stg3_reg[0]_i_2_n_2\,
      CO(0) => \counter_stg3_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_stg3_reg[0]_i_2_n_4\,
      O(2) => \counter_stg3_reg[0]_i_2_n_5\,
      O(1) => \counter_stg3_reg[0]_i_2_n_6\,
      O(0) => \counter_stg3_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_stg3_reg(3 downto 1),
      S(0) => \counter_stg3[0]_i_5_n_0\
    );
\counter_stg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_5\,
      Q => counter_stg3_reg(10),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_4\,
      Q => counter_stg3_reg(11),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_6\,
      Q => counter_stg3_reg(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_5\,
      Q => counter_stg3_reg(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_4\,
      Q => counter_stg3_reg(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_7\,
      Q => counter_stg3_reg(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg3_reg[0]_i_2_n_0\,
      CO(3) => \counter_stg3_reg[4]_i_1_n_0\,
      CO(2) => \counter_stg3_reg[4]_i_1_n_1\,
      CO(1) => \counter_stg3_reg[4]_i_1_n_2\,
      CO(0) => \counter_stg3_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg3_reg[4]_i_1_n_4\,
      O(2) => \counter_stg3_reg[4]_i_1_n_5\,
      O(1) => \counter_stg3_reg[4]_i_1_n_6\,
      O(0) => \counter_stg3_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_stg3_reg(7 downto 4)
    );
\counter_stg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_6\,
      Q => counter_stg3_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_5\,
      Q => counter_stg3_reg(6),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_4\,
      Q => counter_stg3_reg(7),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_7\,
      Q => counter_stg3_reg(8),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg3_reg[4]_i_1_n_0\,
      CO(3) => \NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_stg3_reg[8]_i_1_n_1\,
      CO(1) => \counter_stg3_reg[8]_i_1_n_2\,
      CO(0) => \counter_stg3_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg3_reg[8]_i_1_n_4\,
      O(2) => \counter_stg3_reg[8]_i_1_n_5\,
      O(1) => \counter_stg3_reg[8]_i_1_n_6\,
      O(0) => \counter_stg3_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_stg3_reg(11 downto 8)
    );
\counter_stg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_6\,
      Q => counter_stg3_reg(9),
      R => \counter_stg1[5]_i_1_n_0\
    );
reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => reset_i_2_n_0,
      I1 => reset_i_3_n_0,
      I2 => reset_i_4_n_0,
      I3 => reset_i_5_n_0,
      I4 => reset_i_6_n_0,
      I5 => reset_i_7_n_0,
      O => reset0
    );
reset_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => counter_stg2_reg(3),
      I1 => counter_stg2_reg(4),
      I2 => counter_stg2_reg(8),
      O => reset_i_2_n_0
    );
reset_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_stg3_reg(0),
      I1 => counter_stg3_reg(8),
      I2 => counter_stg2_reg(9),
      I3 => counter_stg3_reg(10),
      O => reset_i_3_n_0
    );
reset_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => counter_stg2_reg(7),
      I1 => counter_stg2_reg(0),
      I2 => counter_stg3_reg(6),
      I3 => counter_stg3_reg(7),
      O => reset_i_4_n_0
    );
reset_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => counter_stg2_reg(2),
      I1 => counter_stg3_reg(2),
      I2 => counter_stg3_reg(11),
      I3 => counter_stg2_reg(5),
      O => reset_i_5_n_0
    );
reset_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => counter_stg3_reg(4),
      I1 => counter_stg3_reg(5),
      I2 => counter_stg2_reg(6),
      I3 => counter_stg3_reg(1),
      O => reset_i_6_n_0
    );
reset_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => counter_stg2_reg(11),
      I1 => counter_stg1_reg(5),
      I2 => counter_stg3_reg(9),
      I3 => counter_stg2_reg(1),
      I4 => counter_stg3_reg(3),
      I5 => counter_stg2_reg(10),
      O => reset_i_7_n_0
    );
reset_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset0,
      Q => reset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_sync_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_0 is
  port (
    resetdone : out STD_LOGIC;
    resetdone_0 : in STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_0 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_0;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_0 is
  signal data_out : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
resetdone_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_out,
      I1 => resetdone_0,
      O => resetdone
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_10 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_10 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_10;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_10 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_11 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_11 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_11;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_11 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_12 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_12 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_12;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_12 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_13 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_13 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_13;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_13 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_14 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_time_out_reg : out STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]\ : out STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_rx_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_rx_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_1\ : in STD_LOGIC;
    reset_time_out_reg_1 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_3\ : in STD_LOGIC;
    time_tlock_max : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]_0\ : in STD_LOGIC;
    time_out_wait_bypass_s3 : in STD_LOGIC;
    rx_fsm_reset_done_int_reg : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    reset_time_out_reg_2 : in STD_LOGIC;
    reset_time_out_reg_3 : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_14 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_14;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_14 is
  signal \FSM_sequential_rx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal data_valid_sync : STD_LOGIC;
  signal \reset_time_out_i_2__0_n_0\ : STD_LOGIC;
  signal rx_fsm_reset_done_int : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[1]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_5\ : label is "soft_lutpair53";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAABAAAAA"
    )
        port map (
      I0 => \FSM_sequential_rx_state_reg[0]_2\,
      I1 => Q(1),
      I2 => \FSM_sequential_rx_state_reg[0]_3\,
      I3 => reset_time_out_reg_0,
      I4 => time_tlock_max,
      I5 => \FSM_sequential_rx_state[1]_i_2_n_0\,
      O => D(0)
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000034342434"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \FSM_sequential_rx_state_reg[1]_0\,
      I5 => \FSM_sequential_rx_state[1]_i_2_n_0\,
      O => D(1)
    );
\FSM_sequential_rx_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => Q(3),
      I1 => \FSM_sequential_rx_state_reg[1]\,
      I2 => reset_time_out_reg_0,
      I3 => data_valid_sync,
      O => \FSM_sequential_rx_state[1]_i_2_n_0\
    );
\FSM_sequential_rx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F2F0FFF0F2"
    )
        port map (
      I0 => Q(1),
      I1 => \FSM_sequential_rx_state_reg[0]\(0),
      I2 => \FSM_sequential_rx_state[3]_i_3_n_0\,
      I3 => Q(3),
      I4 => Q(0),
      I5 => \FSM_sequential_rx_state_reg[0]_0\,
      O => E(0)
    );
\FSM_sequential_rx_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF0CC00FEFFCC00"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_5_n_0\,
      I1 => \FSM_sequential_rx_state_reg[3]_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      I5 => time_out_wait_bypass_s3,
      O => D(2)
    );
\FSM_sequential_rx_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => \reset_time_out_i_2__0_n_0\,
      I1 => \FSM_sequential_rx_state[1]_i_2_n_0\,
      I2 => \FSM_sequential_rx_state_reg[0]_1\,
      I3 => reset_time_out_reg_1,
      I4 => Q(0),
      O => \FSM_sequential_rx_state[3]_i_3_n_0\
    );
\FSM_sequential_rx_state[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => data_valid_sync,
      I1 => reset_time_out_reg_0,
      I2 => \FSM_sequential_rx_state_reg[1]\,
      O => \FSM_sequential_rx_state[3]_i_5_n_0\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_valid_sync,
      R => '0'
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFE00"
    )
        port map (
      I0 => \reset_time_out_i_2__0_n_0\,
      I1 => reset_time_out_reg_2,
      I2 => reset_time_out_reg_1,
      I3 => reset_time_out_reg_3,
      I4 => reset_time_out_reg_0,
      O => reset_time_out_reg
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33CF00A0"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => data_valid_sync,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      O => \reset_time_out_i_2__0_n_0\
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => rx_fsm_reset_done_int,
      I1 => rx_fsm_reset_done_int_i_3_n_0,
      I2 => Q(3),
      I3 => Q(2),
      I4 => data_in,
      O => \FSM_sequential_rx_state_reg[3]\
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => reset_time_out_reg_0,
      I1 => rx_fsm_reset_done_int_reg,
      I2 => Q(0),
      I3 => data_valid_sync,
      I4 => Q(2),
      O => rx_fsm_reset_done_int
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C302C3C0C302C30"
    )
        port map (
      I0 => rx_fsm_reset_done_int_reg,
      I1 => Q(0),
      I2 => Q(1),
      I3 => data_valid_sync,
      I4 => reset_time_out_reg_0,
      I5 => \FSM_sequential_rx_state_reg[1]\,
      O => rx_fsm_reset_done_int_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_15 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_15 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_15;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_15 is
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
  data_out <= \^data_out\;
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_locked,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_out\,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_16 is
  port (
    \FSM_sequential_rx_state_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxresetdone_s3 : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_16 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_16;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_16 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal pll0lock_sync : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_pll0lock_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => pll0lock_sync,
      R => '0'
    );
\reset_time_out_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008800F0"
    )
        port map (
      I0 => Q(0),
      I1 => rxresetdone_s3,
      I2 => pll0lock_sync,
      I3 => Q(2),
      I4 => Q(1),
      O => \FSM_sequential_rx_state_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_17 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_17 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_17;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_17 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_18 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_18 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_18;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_18 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_19 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_19 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_19;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_19 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_3 is
  port (
    data_out : out STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_3 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_3;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_3 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => status_vector(0),
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_6 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_6 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_6;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_6 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_7 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_time_out_reg : out STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_tx_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_3\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mmcm_lock_reclocked : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_4\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_5\ : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    \FSM_sequential_tx_state[3]_i_7_0\ : in STD_LOGIC;
    \FSM_sequential_tx_state[3]_i_7_1\ : in STD_LOGIC;
    reset_time_out_reg_1 : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_7 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_7;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_7 is
  signal \FSM_sequential_tx_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal pll0lock_sync : STD_LOGIC;
  signal reset_time_out_i_3_n_0 : STD_LOGIC;
  signal reset_time_out_i_4_n_0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_tx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF01"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[0]\(0),
      I1 => \FSM_sequential_tx_state_reg[0]_0\,
      I2 => \FSM_sequential_tx_state_reg[0]_1\,
      I3 => \FSM_sequential_tx_state_reg[0]_2\,
      I4 => \FSM_sequential_tx_state[3]_i_6_n_0\,
      I5 => \FSM_sequential_tx_state[3]_i_7_n_0\,
      O => E(0)
    );
\FSM_sequential_tx_state[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => pll0lock_sync,
      I1 => \FSM_sequential_tx_state[3]_i_7_0\,
      I2 => \FSM_sequential_tx_state[3]_i_7_1\,
      O => \FSM_sequential_tx_state[3]_i_11_n_0\
    );
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E000"
    )
        port map (
      I0 => pll0lock_sync,
      I1 => \FSM_sequential_tx_state_reg[0]_3\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(2),
      O => \FSM_sequential_tx_state[3]_i_6_n_0\
    );
\FSM_sequential_tx_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000DD000F"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[0]_4\,
      I1 => mmcm_lock_reclocked,
      I2 => \FSM_sequential_tx_state[3]_i_11_n_0\,
      I3 => Q(1),
      I4 => Q(2),
      I5 => \FSM_sequential_tx_state_reg[0]_5\,
      O => \FSM_sequential_tx_state[3]_i_7_n_0\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_pll0lock_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => pll0lock_sync,
      R => '0'
    );
reset_time_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => reset_time_out_reg_1,
      I1 => reset_time_out_i_3_n_0,
      I2 => reset_time_out_i_4_n_0,
      I3 => reset_time_out,
      O => reset_time_out_reg
    );
reset_time_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004F000000440000"
    )
        port map (
      I0 => Q(2),
      I1 => pll0lock_sync,
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => mmcm_lock_reclocked,
      O => reset_time_out_i_3_n_0
    );
reset_time_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C08FF0C0C08FC"
    )
        port map (
      I0 => pll0lock_sync,
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => reset_time_out_reg_0,
      O => reset_time_out_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_8 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_8 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_8;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_8 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_sync_block_9 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_sync_block_9 : entity is "gig_ethernet_pcs_pma_sync_block";
end gig_ethernet_pcs_pma_sync_block_9;

architecture STRUCTURE of gig_ethernet_pcs_pma_sync_block_9 is
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
  data_out <= \^data_out\;
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_locked,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_out\,
      O => SR(0)
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
KYJWzR4vcKBSZu8Xwex/6tmg53LVElcHlSQriBXJNPcz87+7TONysl4izxwXP9yEvug1aeLMuJV9
QpCnAYHZHXfLsNRjUCmA+BPVRelbdqqB52e3uXeIusRdKf9bJK4vTbT3G0lEoFHH5X7C9bSLI4YT
sZUjuHirRGeJHd/b3e0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
yo2V0dC7eF/FmwCqmZxlpuXtmB0HywmWLHJT2jcPSMAC1OXxijmfEbvJ+5lPdLPxXgr9jwwXxwMr
v6iklkYNq+D0goSg8ugfBWwguc77JQVz+jMEKP5qhn7Ri+tKZ00wMjngOlr69eLBesdgH5S7cB58
MceEDf75gNDYQTVzBMlKHcS2mYGmDQkhlgD+FDqOy0bnjw5cKAR61rsdl0A5rMVryGdDWCMhdTU1
ZF8hcDIYUHZBc1Rt5KmxBFRnumpyZkvST8/JckJYBT4n5h8I+vWWI5/wUepjQAwCpQDRQx1ya6wF
c65P3BGTHHaZgJ18lQGc+LhcI9bXwV/MpMi4vw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
FMyPG7pILxysnSMbT2vgWSttyZukEuB9wb0W6Enmto1g4p73zQOy/y6J4k8CeKOmBonMsMxgR96B
7ymzkfztYO6rjGzDtyLRZci3g/2lEhq7hFZJpTsqrjCfl6rJRxYEFWRru2wNunKSy8gmBjTS/oYO
W2Fyj3KEM9HxqjqZyog=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Iv7mhm24oKZE/f/TTAt2P/10rXi8j8ceh05JuZQyLJt6z2wemUiiehGVSeIEc+J/5A8Ky+p5jZlR
zcDz/M6c20lBgNhKjU5Y5/MHKgHsXLEYT6mdLioI9YMqgbzgxL4Wl5NSDSxpPVJXa6dKPuX6edQ+
O9X4vUbFWfAhQRmpfaMfpkrepNBfrxu83VYFIDBh9Oojikqnqx0cHXIwFJoUpIHHG4CxxVcaEr6Z
ckCcd8GW/diuMXklBhICPDSmVB8npY6equ70WXNvlpGqCwoAjF+X+W+fUFLKSuFq9RhGZ5fZpSUd
SuqmoFu4K0kSHyOI0uGqPxSbF4IXp1jtRXncIw==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
G1Dg5WUJaLlOLKvgoRqVkbfWuFm3+8fXpsCVayvBniajy/El8hUFZpcvlPgh+rWnnYMXGY1+dgcv
tDit+krZVNCgFHV62uCLpEWe2SLCJrR+6CKtb1o7z3H46ojm1rD3p8jitykUqmFj/lWwZwCa4lim
i6Pb1Xa2ZSoV3OD/bC+nQ5fvju/wDCxruGqzxHiUM2N1jb5uZk4YmAdOZyHHdgs0GdFQhuc7ZrW1
gZo5cJKb8Km1Wd8ARflhofc0R7eS2WmC87uF4r0un9/OaTBgYqsqLOpX5bnGEEge+qTEKWDyL4h8
Ume5IveElh7cPp3ShEIH/D4P5T//a6ibft2Ehw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
g5+VIKoLaErnfHgoHvjVbfqwQzBWMaP4R2LjkVr68qIXmeoeDhzRRLQ4wlH2S/rFzovDzSTBGdIH
oYYiMg609yl+k/B0IljBcarVRsDmlnXA7zxLHWEVsbDmINIsmSgfnKupCURx4WTMiTEEnzpFOgSG
FNO38PbbriYMLv1VGWMjraOnk5lpxKjghmEvEUYWdOVXtm35Hrwap5YAyCOqPfL4p2v1H2kOgkPc
Vzn++2QRO74wFlIWhRH7Sd/lyg0d/qv8cKPWbGlk4FtIBDWRpbH4IRSA97sUSTUS667ZXQ10dti3
LWf7wAVnNVkHNDGi5ztKc3PoV7Bz/abjdFbXkQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dqvjRf66eFgeN/Z8ybsPcYyyIE05+qB7A909cHStC2BZH94z9sKHr0fQY+x+VvxYGTniR1aGjPx0
53ONyQQVvubqZtHZYB2iWA6RzLHFnzu1fS2eVpSg3lf815QAPoyC1mqE9mV9uFW9XFNDA4sTGbsE
Mm0X/palJ2COd2driADaaF01JZ04gAffkGtpLrHWtH/LHgHRjXt6AyI5/CdmubuRcdM1FUvp/aec
tl/Keptqbs1dnnUMqMTDG7zPcKewV3+EukMtVuc2RguUzNM9zom97XVDLrwA52GD2wn6OgEjqW/v
WrDNmT+/pCGVhQbbEbc+krAFY12VnOMEQVU1SQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
vt6GqHaOeiXWiOhNHC/zgACS4w7PkN49ZzDNMk5JhLGd7+8h4IyHdcFgaF/HLlCR/eReBugWAosy
AaMap069hD7E94rLEU7fFxdbkZYD6qLfs9Gu+ij9YllluEaMg4o+AqGHNNeYYWvs2nl4L5laUAfa
rYPwqHTRWLtqj1pmCtIp/YNnRATHP7qibNftjKYmVOdFpGM9mVr48pZYhbHe9OJtqKtLbzRIJrIn
XvtuJdPHttlExSyMmORUbaLYh5oiwdUbKKxCiAfz1mHaxpbH7EQEjplH6DVHCR0wl4UUpLpS4XqY
m2xvNOHiblEfeMbqSa6geR72WnSxMQyg3r+EDmXpy6WQLES2V1n7H/8kkv6d64A3A6sCbo65No25
Wvo8CYTCnPsHPuPOj79pIFf7guIv0k5LashTfHLLIR5JkLQKHAYzeu7qwv4NIUhIsngmILHqlN57
g42UvS9VND0MpaQoTa73SKy0/uXKITax5YnsQT6gB9Zuh4v93mQiuwse

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OYMs23XUcbQ/M2VNEw2Xoqu7rprn0Zo52KrgROUZzOWxj2vqiE8/ZJRGyB640nrUUC48KRLpb0um
E7OYiTf+sF8tYI49vr5OGew9/TE/Sv8rMLuAP9LLfXxqGyylb9KuDHYuzHEHi31oLMR7ew+Ki243
py8iOp9Ucpu7AaeoqYLp4bTRee7GH4YKqWARaTtjbQtBGhsk8oL2ZfgW1eR6HGkMrRekYlvvymo6
tgV2IVO0xrmS/XBmTYaV4/LYaZVOn0Tydjcx+A1ERtrPrvPIn3HSuREXxKrg7P0B+4lmpJlTBOSW
Pgun3bqS7nhgp22NV4RNku457E5J0aTZylZ2wg==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
KnsZLKALDWqncIJgzAKfboAuo1VaWQUcXKcdRXyL4Ex6lEqsmmKTvxZ6EfVlq4HiuTHkw5MX+NK3
1g2d9wfipvhz8BH563axa8qzO9xe2utPb9F2ISfN1Ds/KOGS9CrQOp3fWf3Y+gk1h1XF/G+BeUAd
v+eyBhX4zlryy63IOrd6NXvYMXdZijqYhV0BlhV3rj6h7oLGezgoNXJZmXnX5xTnIKcQdZouA88t
q/0lfTuWkYlGmOlNEYGIHNrd8AGkElTrxjKoRYVp71MYrclJ7UA0LgOLL9ClcDM7WM6zrXFsmPdL
31jIWwy/HWrK4DuuyP/SScJg8qoy5TJLTbbvew==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
e6JH08Az14VwmgDMM6NOUSh9Oz7q+rduGKFU5Jb8XZOaLO8kMDmApqoiHHUZcoKttzzKMBTFVbns
ACZQBPxPvUO8eIA9UpHKrHjydiosMrG4UheuLv4ocQY+xjVga6bwymdKcX29JCXvl3Y0e66unMl2
m6p9QvQVNUvDPFde0n8uMKr7vTUEe30tITbHs9xHBQFlARKj7GCj5g7KKJHY64BjBjObX8NWO+we
GuhjRWN/wtE1u/CGXwx6E+J8USIu+2ydw3NCPMWN9r1XR6ivKEZJQX/qS1veF16Mpnl+VaU7q5R9
fAvl220pPNb9Li/+/Q9p1PLYcagpeKsg+lo36g==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 159856)
`protect data_block
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
ZJuPHKvT+ZF82nOBeSKRSLMygn1Efn4MYPiiFw==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_RX_STARTUP_FSM is
  port (
    data_in : out STD_LOGIC;
    gt0_rxuserrdy_t : out STD_LOGIC;
    gt0_gtrxreset_gt : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    userclk : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    gt0_gtrxreset_gt_d1_reg : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    data_out : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_RX_STARTUP_FSM;

architecture STRUCTURE of gig_ethernet_pcs_pma_RX_STARTUP_FSM is
  signal \FSM_sequential_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal GTRXRESET : STD_LOGIC;
  signal RXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_reg_n_0 : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC;
  signal \^gt0_rxuserrdy_t\ : STD_LOGIC;
  signal gtrxreset_i_i_1_n_0 : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_4__0_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal init_wait_done : STD_LOGIC;
  signal \init_wait_done_i_1__0_n_0\ : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_4__0_n_0\ : STD_LOGIC;
  signal mmcm_lock_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mmcm_lock_i : STD_LOGIC;
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal mmcm_lock_reclocked_i_1_n_0 : STD_LOGIC;
  signal \mmcm_lock_reclocked_i_2__0_n_0\ : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reset_time_out_i_3__0_n_0\ : STD_LOGIC;
  signal reset_time_out_i_5_n_0 : STD_LOGIC;
  signal reset_time_out_reg_n_0 : STD_LOGIC;
  signal \run_phase_alignment_int_i_1__0_n_0\ : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s2 : STD_LOGIC;
  signal run_phase_alignment_int_s3_reg_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rx_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rxresetdone_s2 : STD_LOGIC;
  signal rxresetdone_s3 : STD_LOGIC;
  signal sync_data_valid_n_0 : STD_LOGIC;
  signal sync_data_valid_n_4 : STD_LOGIC;
  signal sync_data_valid_n_5 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_0 : STD_LOGIC;
  signal sync_pll0lock_n_0 : STD_LOGIC;
  signal time_out_100us_i_1_n_0 : STD_LOGIC;
  signal time_out_100us_i_2_n_0 : STD_LOGIC;
  signal time_out_100us_i_3_n_0 : STD_LOGIC;
  signal time_out_100us_i_4_n_0 : STD_LOGIC;
  signal time_out_100us_i_5_n_0 : STD_LOGIC;
  signal time_out_100us_i_6_n_0 : STD_LOGIC;
  signal time_out_100us_reg_n_0 : STD_LOGIC;
  signal time_out_1us_i_1_n_0 : STD_LOGIC;
  signal time_out_1us_i_2_n_0 : STD_LOGIC;
  signal time_out_1us_i_3_n_0 : STD_LOGIC;
  signal time_out_1us_reg_n_0 : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal time_out_2ms_i_2_n_0 : STD_LOGIC;
  signal \time_out_2ms_i_3__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_4_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \time_out_counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal \time_out_wait_bypass_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_4__0_n_0\ : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal time_tlock_max1 : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_1\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_2\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_3\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_n_3\ : STD_LOGIC;
  signal time_tlock_max1_carry_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_5_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_6_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_7_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_8_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_n_1 : STD_LOGIC;
  signal time_tlock_max1_carry_n_2 : STD_LOGIC;
  signal time_tlock_max1_carry_n_3 : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt0__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wait_time_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4__0_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_time_tlock_max1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_tlock_max1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_tlock_max1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_tlock_max1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[0]_i_3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[2]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_4\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_6\ : label is "soft_lutpair54";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[0]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[1]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[2]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[3]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute SOFT_HLUTNM of check_tlock_max_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_3__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_4__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_4__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \reset_time_out_i_3__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of reset_time_out_i_5 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of time_out_100us_i_3 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of time_out_100us_i_4 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of time_out_1us_i_2 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of time_out_2ms_i_2 : label is "soft_lutpair61";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[0]_i_2__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[16]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[8]_i_1__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of time_tlock_max1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \time_tlock_max1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \time_tlock_max1_carry__1\ : label is 11;
  attribute SOFT_HLUTNM of time_tlock_max_i_1 : label is "soft_lutpair66";
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[0]_i_3__0\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[8]_i_1__0\ : label is 11;
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \wait_time_cnt[6]_i_4__0\ : label is "soft_lutpair57";
begin
  data_in <= \^data_in\;
  gt0_rxuserrdy_t <= \^gt0_rxuserrdy_t\;
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFFCFF00FF00FF"
    )
        port map (
      I0 => rx_state(2),
      I1 => time_out_2ms_reg_n_0,
      I2 => rx_state(3),
      I3 => rx_state(0),
      I4 => reset_time_out_reg_n_0,
      I5 => rx_state(1),
      O => \FSM_sequential_rx_state[0]_i_2_n_0\
    );
\FSM_sequential_rx_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(3),
      O => \FSM_sequential_rx_state[0]_i_3_n_0\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003F0040000F0040"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => rx_state(1),
      I2 => rx_state(0),
      I3 => rx_state(3),
      I4 => rx_state(2),
      I5 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      O => \rx_state__0\(2)
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_time_out_reg_n_0,
      I1 => time_tlock_max,
      O => \FSM_sequential_rx_state[2]_i_2_n_0\
    );
\FSM_sequential_rx_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DCDC505C"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => time_tlock_max,
      I4 => reset_time_out_reg_n_0,
      O => \FSM_sequential_rx_state[3]_i_4_n_0\
    );
\FSM_sequential_rx_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D000"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => reset_time_out_reg_n_0,
      I2 => rx_state(2),
      I3 => rx_state(1),
      O => \FSM_sequential_rx_state[3]_i_6_n_0\
    );
\FSM_sequential_rx_state[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => init_wait_done_reg_n_0,
      I1 => rx_state(2),
      I2 => reset_time_out_reg_0,
      I3 => rx_state(1),
      I4 => rx_state(0),
      O => \FSM_sequential_rx_state[3]_i_7_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_data_valid_n_0,
      D => \rx_state__0\(0),
      Q => rx_state(0),
      R => pma_reset
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_data_valid_n_0,
      D => \rx_state__0\(1),
      Q => rx_state(1),
      R => pma_reset
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_data_valid_n_0,
      D => \rx_state__0\(2),
      Q => rx_state(2),
      R => pma_reset
    );
\FSM_sequential_rx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_data_valid_n_0,
      D => \rx_state__0\(3),
      Q => rx_state(3),
      R => pma_reset
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => \^gt0_rxuserrdy_t\,
      O => RXUSERRDY_i_1_n_0
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => RXUSERRDY_i_1_n_0,
      Q => \^gt0_rxuserrdy_t\,
      R => pma_reset
    );
check_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => check_tlock_max_reg_n_0,
      I1 => rx_state(3),
      I2 => rx_state(1),
      I3 => rx_state(0),
      I4 => rx_state(2),
      O => check_tlock_max_i_1_n_0
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => check_tlock_max_i_1_n_0,
      Q => check_tlock_max_reg_n_0,
      R => pma_reset
    );
gt0_gtrxreset_gt_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => GTRXRESET,
      I1 => \^data_in\,
      I2 => gt0_gtrxreset_gt_d1_reg,
      O => gt0_gtrxreset_gt
    );
gtrxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0004"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => rx_state(3),
      I3 => rx_state(1),
      I4 => GTRXRESET,
      O => gtrxreset_i_i_1_n_0
    );
gtrxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gtrxreset_i_i_1_n_0,
      Q => GTRXRESET,
      R => pma_reset
    );
\init_wait_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => \init_wait_count[0]_i_1__0_n_0\
    );
\init_wait_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(0),
      O => \p_0_in__2\(1)
    );
\init_wait_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      O => \p_0_in__2\(2)
    );
\init_wait_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(3),
      O => \p_0_in__2\(3)
    );
\init_wait_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(4),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(3),
      O => \p_0_in__2\(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(3),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(2),
      I4 => init_wait_count_reg(1),
      I5 => init_wait_count_reg(4),
      O => \p_0_in__2\(5)
    );
\init_wait_count[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(6),
      I2 => init_wait_count_reg(4),
      I3 => \init_wait_count[6]_i_3__0_n_0\,
      I4 => init_wait_count_reg(5),
      I5 => init_wait_count_reg(3),
      O => init_wait_count
    );
\init_wait_count[6]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(6),
      I1 => init_wait_count_reg(4),
      I2 => \init_wait_count[6]_i_4__0_n_0\,
      I3 => init_wait_count_reg(5),
      O => \p_0_in__2\(6)
    );
\init_wait_count[6]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      O => \init_wait_count[6]_i_3__0_n_0\
    );
\init_wait_count[6]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(1),
      O => \init_wait_count[6]_i_4__0_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \init_wait_count[0]_i_1__0_n_0\,
      Q => init_wait_count_reg(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__2\(1),
      Q => init_wait_count_reg(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__2\(2),
      Q => init_wait_count_reg(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__2\(3),
      Q => init_wait_count_reg(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__2\(4),
      Q => init_wait_count_reg(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__2\(5),
      Q => init_wait_count_reg(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__2\(6),
      Q => init_wait_count_reg(6)
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => init_wait_done,
      I1 => init_wait_done_reg_n_0,
      O => \init_wait_done_i_1__0_n_0\
    );
\init_wait_done_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(5),
      I2 => \init_wait_count[6]_i_3__0_n_0\,
      I3 => init_wait_count_reg(4),
      I4 => init_wait_count_reg(6),
      I5 => init_wait_count_reg(0),
      O => init_wait_done
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      CLR => pma_reset,
      D => \init_wait_done_i_1__0_n_0\,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      O => \p_0_in__3\(0)
    );
\mmcm_lock_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(1),
      I1 => mmcm_lock_count_reg(0),
      O => \p_0_in__3\(1)
    );
\mmcm_lock_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mmcm_lock_count_reg(2),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(0),
      O => \p_0_in__3\(2)
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(3),
      O => \p_0_in__3\(3)
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(2),
      I4 => mmcm_lock_count_reg(3),
      O => \p_0_in__3\(4)
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(3),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(4),
      O => \p_0_in__3\(5)
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_count_reg(4),
      I2 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I3 => mmcm_lock_count_reg(5),
      O => \p_0_in__3\(6)
    );
\mmcm_lock_count[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_count_reg(4),
      I2 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I3 => mmcm_lock_count_reg(5),
      I4 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_2__0_n_0\
    );
\mmcm_lock_count[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(7),
      I1 => mmcm_lock_count_reg(5),
      I2 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I3 => mmcm_lock_count_reg(4),
      I4 => mmcm_lock_count_reg(6),
      O => \p_0_in__3\(7)
    );
\mmcm_lock_count[7]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(0),
      O => \mmcm_lock_count[7]_i_4__0_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(0),
      Q => mmcm_lock_count_reg(0),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(1),
      Q => mmcm_lock_count_reg(1),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(2),
      Q => mmcm_lock_count_reg(2),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(3),
      Q => mmcm_lock_count_reg(3),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(4),
      Q => mmcm_lock_count_reg(4),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(5),
      Q => mmcm_lock_count_reg(5),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(6),
      Q => mmcm_lock_count_reg(6),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(7),
      Q => mmcm_lock_count_reg(7),
      R => sync_mmcm_lock_reclocked_n_0
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => mmcm_lock_count_reg(7),
      I2 => \mmcm_lock_reclocked_i_2__0_n_0\,
      I3 => mmcm_lock_count_reg(6),
      I4 => mmcm_lock_i,
      O => mmcm_lock_reclocked_i_1_n_0
    );
\mmcm_lock_reclocked_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(3),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(4),
      O => \mmcm_lock_reclocked_i_2__0_n_0\
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_lock_reclocked_i_1_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
\reset_time_out_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001F0011"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => rx_state(0),
      I3 => rx_state(1),
      I4 => reset_time_out_reg_0,
      O => \reset_time_out_i_3__0_n_0\
    );
reset_time_out_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C3C0EFC"
    )
        port map (
      I0 => reset_time_out_reg_0,
      I1 => rx_state(0),
      I2 => rx_state(3),
      I3 => rx_state(2),
      I4 => rx_state(1),
      O => reset_time_out_i_5_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_data_valid_n_4,
      Q => reset_time_out_reg_n_0,
      S => pma_reset
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0010"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(3),
      I3 => rx_state(0),
      I4 => run_phase_alignment_int_reg_n_0,
      O => \run_phase_alignment_int_i_1__0_n_0\
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \run_phase_alignment_int_i_1__0_n_0\,
      Q => run_phase_alignment_int_reg_n_0,
      R => pma_reset
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => run_phase_alignment_int_s2,
      Q => run_phase_alignment_int_s3_reg_n_0,
      R => '0'
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_data_valid_n_5,
      Q => \^data_in\,
      R => pma_reset
    );
rx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => rx_fsm_reset_done_int_s2,
      Q => rx_fsm_reset_done_int_s3,
      R => '0'
    );
rxresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => rxresetdone_s2,
      Q => rxresetdone_s3,
      R => '0'
    );
sync_RXRESETDONE: entity work.gig_ethernet_pcs_pma_sync_block_13
     port map (
      data_out => rxresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_data_valid: entity work.gig_ethernet_pcs_pma_sync_block_14
     port map (
      D(2) => \rx_state__0\(3),
      D(1 downto 0) => \rx_state__0\(1 downto 0),
      E(0) => sync_data_valid_n_0,
      \FSM_sequential_rx_state_reg[0]\(0) => \wait_time_cnt[6]_i_2__0_n_0\,
      \FSM_sequential_rx_state_reg[0]_0\ => \FSM_sequential_rx_state[3]_i_4_n_0\,
      \FSM_sequential_rx_state_reg[0]_1\ => \FSM_sequential_rx_state[3]_i_7_n_0\,
      \FSM_sequential_rx_state_reg[0]_2\ => \FSM_sequential_rx_state[0]_i_2_n_0\,
      \FSM_sequential_rx_state_reg[0]_3\ => \FSM_sequential_rx_state[0]_i_3_n_0\,
      \FSM_sequential_rx_state_reg[1]\ => time_out_100us_reg_n_0,
      \FSM_sequential_rx_state_reg[1]_0\ => \FSM_sequential_rx_state[2]_i_2_n_0\,
      \FSM_sequential_rx_state_reg[3]\ => sync_data_valid_n_5,
      \FSM_sequential_rx_state_reg[3]_0\ => \FSM_sequential_rx_state[3]_i_6_n_0\,
      Q(3 downto 0) => rx_state(3 downto 0),
      data_in => \^data_in\,
      data_out => data_out,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      reset_time_out_reg => sync_data_valid_n_4,
      reset_time_out_reg_0 => reset_time_out_reg_n_0,
      reset_time_out_reg_1 => sync_pll0lock_n_0,
      reset_time_out_reg_2 => \reset_time_out_i_3__0_n_0\,
      reset_time_out_reg_3 => reset_time_out_i_5_n_0,
      rx_fsm_reset_done_int_reg => time_out_1us_reg_n_0,
      time_out_wait_bypass_s3 => time_out_wait_bypass_s3,
      time_tlock_max => time_tlock_max
    );
sync_mmcm_lock_reclocked: entity work.gig_ethernet_pcs_pma_sync_block_15
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked
    );
sync_pll0lock: entity work.gig_ethernet_pcs_pma_sync_block_16
     port map (
      \FSM_sequential_rx_state_reg[1]\ => sync_pll0lock_n_0,
      Q(2 downto 0) => rx_state(3 downto 1),
      gt0_pll0lock_in => gt0_pll0lock_in,
      independent_clock_bufg => independent_clock_bufg,
      rxresetdone_s3 => rxresetdone_s3
    );
sync_run_phase_alignment_int: entity work.gig_ethernet_pcs_pma_sync_block_17
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => run_phase_alignment_int_s2,
      userclk => userclk
    );
sync_rx_fsm_reset_done_int: entity work.gig_ethernet_pcs_pma_sync_block_18
     port map (
      data_in => \^data_in\,
      data_out => rx_fsm_reset_done_int_s2,
      userclk => userclk
    );
sync_time_out_wait_bypass: entity work.gig_ethernet_pcs_pma_sync_block_19
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
time_out_100us_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => time_out_100us_i_2_n_0,
      I1 => time_out_100us_i_3_n_0,
      I2 => time_out_100us_i_4_n_0,
      I3 => time_out_100us_i_5_n_0,
      I4 => time_out_100us_reg_n_0,
      O => time_out_100us_i_1_n_0
    );
time_out_100us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(5),
      I3 => time_out_counter_reg(8),
      I4 => time_out_counter_reg(13),
      I5 => time_out_100us_i_6_n_0,
      O => time_out_100us_i_2_n_0
    );
time_out_100us_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_counter_reg(18),
      I1 => time_out_counter_reg(19),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(17),
      O => time_out_100us_i_3_n_0
    );
time_out_100us_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(9),
      O => time_out_100us_i_4_n_0
    );
time_out_100us_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(15),
      I4 => time_out_counter_reg(12),
      O => time_out_100us_i_5_n_0
    );
time_out_100us_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(6),
      O => time_out_100us_i_6_n_0
    );
time_out_100us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_100us_i_1_n_0,
      Q => time_out_100us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_1us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => time_out_1us_i_2_n_0,
      I1 => time_out_counter_reg(19),
      I2 => time_out_counter_reg(18),
      I3 => time_out_1us_i_3_n_0,
      I4 => time_out_2ms_i_4_n_0,
      I5 => time_out_1us_reg_n_0,
      O => time_out_1us_i_1_n_0
    );
time_out_1us_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(16),
      O => time_out_1us_i_2_n_0
    );
time_out_1us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(3),
      I4 => time_out_counter_reg(2),
      I5 => time_out_counter_reg(10),
      O => time_out_1us_i_3_n_0
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_1us_i_1_n_0,
      Q => time_out_1us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_2ms_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00080000"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(10),
      I2 => time_out_2ms_i_2_n_0,
      I3 => \time_out_2ms_i_3__0_n_0\,
      I4 => time_out_2ms_i_4_n_0,
      I5 => time_out_2ms_reg_n_0,
      O => time_out_2ms_i_1_n_0
    );
time_out_2ms_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(2),
      O => time_out_2ms_i_2_n_0
    );
\time_out_2ms_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(18),
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(8),
      I4 => time_out_counter_reg(16),
      I5 => time_out_counter_reg(19),
      O => \time_out_2ms_i_3__0_n_0\
    );
time_out_2ms_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => time_out_100us_i_5_n_0,
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(11),
      I4 => time_out_counter_reg(5),
      I5 => time_out_counter_reg(7),
      O => time_out_2ms_i_4_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => reset_time_out_reg_n_0
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(2),
      I4 => \time_out_2ms_i_3__0_n_0\,
      I5 => time_out_2ms_i_4_n_0,
      O => time_out_counter
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_3_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2__0_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2__0_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2__0_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2__0_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2__0_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_3_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(3) => \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \time_out_counter_reg[16]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[16]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[16]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[16]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[16]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(19 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_5\,
      Q => time_out_counter_reg(18),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_4\,
      Q => time_out_counter_reg(19),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out_reg_n_0
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => rx_fsm_reset_done_int_s3,
      I2 => \time_out_wait_bypass_i_2__0_n_0\,
      I3 => run_phase_alignment_int_s3_reg_n_0,
      O => time_out_wait_bypass_i_1_n_0
    );
\time_out_wait_bypass_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \time_out_wait_bypass_i_3__0_n_0\,
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(11),
      I3 => wait_bypass_count_reg(0),
      I4 => \time_out_wait_bypass_i_4__0_n_0\,
      O => \time_out_wait_bypass_i_2__0_n_0\
    );
\time_out_wait_bypass_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(9),
      I1 => wait_bypass_count_reg(4),
      I2 => wait_bypass_count_reg(12),
      I3 => wait_bypass_count_reg(2),
      O => \time_out_wait_bypass_i_3__0_n_0\
    );
\time_out_wait_bypass_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => wait_bypass_count_reg(5),
      I1 => wait_bypass_count_reg(7),
      I2 => wait_bypass_count_reg(3),
      I3 => wait_bypass_count_reg(6),
      I4 => wait_bypass_count_reg(10),
      I5 => wait_bypass_count_reg(8),
      O => \time_out_wait_bypass_i_4__0_n_0\
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => time_tlock_max1_carry_n_0,
      CO(2) => time_tlock_max1_carry_n_1,
      CO(1) => time_tlock_max1_carry_n_2,
      CO(0) => time_tlock_max1_carry_n_3,
      CYINIT => '0',
      DI(3) => time_tlock_max1_carry_i_1_n_0,
      DI(2) => time_tlock_max1_carry_i_2_n_0,
      DI(1) => time_tlock_max1_carry_i_3_n_0,
      DI(0) => time_tlock_max1_carry_i_4_n_0,
      O(3 downto 0) => NLW_time_tlock_max1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => time_tlock_max1_carry_i_5_n_0,
      S(2) => time_tlock_max1_carry_i_6_n_0,
      S(1) => time_tlock_max1_carry_i_7_n_0,
      S(0) => time_tlock_max1_carry_i_8_n_0
    );
\time_tlock_max1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => time_tlock_max1_carry_n_0,
      CO(3) => \time_tlock_max1_carry__0_n_0\,
      CO(2) => \time_tlock_max1_carry__0_n_1\,
      CO(1) => \time_tlock_max1_carry__0_n_2\,
      CO(0) => \time_tlock_max1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => time_out_counter_reg(15),
      DI(2) => \time_tlock_max1_carry__0_i_1_n_0\,
      DI(1) => '0',
      DI(0) => \time_tlock_max1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_time_tlock_max1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \time_tlock_max1_carry__0_i_3_n_0\,
      S(2) => \time_tlock_max1_carry__0_i_4_n_0\,
      S(1) => \time_tlock_max1_carry__0_i_5_n_0\,
      S(0) => \time_tlock_max1_carry__0_i_6_n_0\
    );
\time_tlock_max1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(12),
      O => \time_tlock_max1_carry__0_i_1_n_0\
    );
\time_tlock_max1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(9),
      O => \time_tlock_max1_carry__0_i_2_n_0\
    );
\time_tlock_max1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(15),
      O => \time_tlock_max1_carry__0_i_3_n_0\
    );
\time_tlock_max1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(13),
      O => \time_tlock_max1_carry__0_i_4_n_0\
    );
\time_tlock_max1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(11),
      O => \time_tlock_max1_carry__0_i_5_n_0\
    );
\time_tlock_max1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(8),
      O => \time_tlock_max1_carry__0_i_6_n_0\
    );
\time_tlock_max1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_tlock_max1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_time_tlock_max1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => time_tlock_max1,
      CO(0) => \time_tlock_max1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \time_tlock_max1_carry__1_i_1_n_0\,
      DI(0) => \time_tlock_max1_carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW_time_tlock_max1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \time_tlock_max1_carry__1_i_3_n_0\,
      S(0) => \time_tlock_max1_carry__1_i_4_n_0\
    );
\time_tlock_max1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(19),
      I1 => time_out_counter_reg(18),
      O => \time_tlock_max1_carry__1_i_1_n_0\
    );
\time_tlock_max1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(16),
      O => \time_tlock_max1_carry__1_i_2_n_0\
    );
\time_tlock_max1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(18),
      I1 => time_out_counter_reg(19),
      O => \time_tlock_max1_carry__1_i_3_n_0\
    );
\time_tlock_max1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      O => \time_tlock_max1_carry__1_i_4_n_0\
    );
time_tlock_max1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(6),
      O => time_tlock_max1_carry_i_1_n_0
    );
time_tlock_max1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(5),
      O => time_tlock_max1_carry_i_2_n_0
    );
time_tlock_max1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(2),
      O => time_tlock_max1_carry_i_3_n_0
    );
time_tlock_max1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      O => time_tlock_max1_carry_i_4_n_0
    );
time_tlock_max1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(7),
      O => time_tlock_max1_carry_i_5_n_0
    );
time_tlock_max1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(4),
      O => time_tlock_max1_carry_i_6_n_0
    );
time_tlock_max1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(3),
      O => time_tlock_max1_carry_i_7_n_0
    );
time_tlock_max1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      O => time_tlock_max1_carry_i_8_n_0
    );
time_tlock_max_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => check_tlock_max_reg_n_0,
      I1 => time_tlock_max1,
      I2 => time_tlock_max,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max,
      R => reset_time_out_reg_n_0
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3_reg_n_0,
      O => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_out_wait_bypass_i_2__0_n_0\,
      I1 => rx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2__0_n_0\
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      Q => wait_bypass_count_reg(0),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3__0_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3__0_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(10),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(11),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(12),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(12)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      Q => wait_bypass_count_reg(1),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      Q => wait_bypass_count_reg(2),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      Q => wait_bypass_count_reg(3),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(4),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(5),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(6),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(7),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(8),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(9),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_time_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => \wait_time_cnt0__0\(0)
    );
\wait_time_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      O => \wait_time_cnt[1]_i_1__0_n_0\
    );
\wait_time_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(2),
      O => \wait_time_cnt0__0\(2)
    );
\wait_time_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt0__0\(3)
    );
\wait_time_cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[4]_i_1__0_n_0\
    );
\wait_time_cnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(5),
      I1 => wait_time_cnt_reg(3),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(0),
      I4 => wait_time_cnt_reg(2),
      I5 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[5]_i_1__0_n_0\
    );
\wait_time_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => rx_state(0),
      I1 => rx_state(1),
      I2 => rx_state(3),
      O => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt[6]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(4),
      I2 => \wait_time_cnt[6]_i_4__0_n_0\,
      I3 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[6]_i_2__0_n_0\
    );
\wait_time_cnt[6]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(4),
      I2 => \wait_time_cnt[6]_i_4__0_n_0\,
      I3 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[6]_i_3__0_n_0\
    );
\wait_time_cnt[6]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[6]_i_4__0_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(0),
      Q => wait_time_cnt_reg(0),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[1]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(1),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(2),
      Q => wait_time_cnt_reg(2),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(3),
      Q => wait_time_cnt_reg(3),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[4]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(4),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[5]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(5),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[6]_i_3__0_n_0\,
      Q => wait_time_cnt_reg(6),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_TX_STARTUP_FSM is
  port (
    mmcm_reset : out STD_LOGIC;
    PLL0_RESET_reg_0 : out STD_LOGIC;
    data_in : out STD_LOGIC;
    gt0_txuserrdy_t : out STD_LOGIC;
    gt0_gttxreset_in0_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    userclk : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    gtpe2_i : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_TX_STARTUP_FSM;

architecture STRUCTURE of gig_ethernet_pcs_pma_TX_STARTUP_FSM is
  signal \FSM_sequential_tx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_9_n_0\ : STD_LOGIC;
  signal GTTXRESET : STD_LOGIC;
  signal MMCM_RESET_i_1_n_0 : STD_LOGIC;
  signal PLL0_RESET_i_1_n_0 : STD_LOGIC;
  signal PLL0_RESET_i_2_n_0 : STD_LOGIC;
  signal \^pll0_reset_reg_0\ : STD_LOGIC;
  signal TXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC;
  signal data_out : STD_LOGIC;
  signal \^gt0_txuserrdy_t\ : STD_LOGIC;
  signal gttxreset_i_i_1_n_0 : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_3_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_4_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal init_wait_done : STD_LOGIC;
  signal init_wait_done_i_1_n_0 : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_4_n_0\ : STD_LOGIC;
  signal mmcm_lock_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mmcm_lock_i : STD_LOGIC;
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal mmcm_lock_reclocked_i_1_n_0 : STD_LOGIC;
  signal mmcm_lock_reclocked_i_2_n_0 : STD_LOGIC;
  signal \^mmcm_reset\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pll_reset_asserted_i_1_n_0 : STD_LOGIC;
  signal pll_reset_asserted_i_2_n_0 : STD_LOGIC;
  signal pll_reset_asserted_reg_n_0 : STD_LOGIC;
  signal refclk_stable_count : STD_LOGIC;
  signal \refclk_stable_count[0]_i_10_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_11_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_9_n_0\ : STD_LOGIC;
  signal refclk_stable_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \refclk_stable_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal refclk_stable_i_1_n_0 : STD_LOGIC;
  signal refclk_stable_reg_n_0 : STD_LOGIC;
  signal reset_time_out : STD_LOGIC;
  signal reset_time_out_i_2_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_i_1_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s3 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sync_PLL0LOCK_n_0 : STD_LOGIC;
  signal sync_PLL0LOCK_n_1 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_0 : STD_LOGIC;
  signal time_out_2ms : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal time_out_2ms_i_3_n_0 : STD_LOGIC;
  signal \time_out_2ms_i_4__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_5_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_500us_i_1_n_0 : STD_LOGIC;
  signal time_out_500us_i_2_n_0 : STD_LOGIC;
  signal time_out_500us_i_3_n_0 : STD_LOGIC;
  signal time_out_500us_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \time_out_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_2_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_3_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_4_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_5_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max_reg_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tx_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal txresetdone_s2 : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal wait_time_cnt0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wait_time_cnt0_0 : STD_LOGIC;
  signal \wait_time_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_3\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[2]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_10\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_4\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_8\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_9\ : label is "soft_lutpair83";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[3]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute SOFT_HLUTNM of MMCM_RESET_i_1 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of PLL0_RESET_i_2 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of TXUSERRDY_i_1 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of gttxreset_i_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_3\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_4\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of init_wait_done_i_1 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_4\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of pll_reset_asserted_i_2 : label is "soft_lutpair79";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of run_phase_alignment_int_i_1 : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of time_out_2ms_i_1 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of time_out_2ms_i_3 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of time_out_2ms_i_5 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of time_out_500us_i_3 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_3__0\ : label is "soft_lutpair69";
  attribute ADDER_THRESHOLD of \time_out_counter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of time_tlock_max_i_1 : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of time_tlock_max_i_2 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of time_tlock_max_i_4 : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of tx_fsm_reset_done_int_i_1 : label is "soft_lutpair82";
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \wait_time_cnt[6]_i_4\ : label is "soft_lutpair75";
begin
  PLL0_RESET_reg_0 <= \^pll0_reset_reg_0\;
  data_in <= \^data_in\;
  gt0_txuserrdy_t <= \^gt0_txuserrdy_t\;
  mmcm_reset <= \^mmcm_reset\;
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAABFFABAAABAFA"
    )
        port map (
      I0 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_tx_state[0]_i_3_n_0\,
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I5 => time_out_2ms_reg_n_0,
      O => \tx_state__0\(0)
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      O => \FSM_sequential_tx_state[0]_i_2_n_0\
    );
\FSM_sequential_tx_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_out_500us_reg_n_0,
      O => \FSM_sequential_tx_state[0]_i_3_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002C003C"
    )
        port map (
      I0 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I1 => tx_state(1),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => tx_state(2),
      O => \tx_state__0\(1)
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000500C000F000F0"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I2 => tx_state(2),
      I3 => tx_state(3),
      I4 => tx_state(1),
      I5 => tx_state(0),
      O => \tx_state__0\(2)
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => time_tlock_max_reg_n_0,
      I2 => reset_time_out,
      O => \FSM_sequential_tx_state[2]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_tlock_max_reg_n_0,
      O => \FSM_sequential_tx_state[3]_i_10_n_0\
    );
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FF4444"
    )
        port map (
      I0 => time_out_wait_bypass_s3,
      I1 => tx_state(3),
      I2 => reset_time_out,
      I3 => time_out_500us_reg_n_0,
      I4 => \FSM_sequential_tx_state[3]_i_8_n_0\,
      O => \tx_state__0\(3)
    );
\FSM_sequential_tx_state[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(1),
      O => \FSM_sequential_tx_state[3]_i_3_n_0\
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      O => \FSM_sequential_tx_state[3]_i_4_n_0\
    );
\FSM_sequential_tx_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88C888C8FFFF88C8"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => \FSM_sequential_tx_state[3]_i_8_n_0\,
      I2 => time_out_500us_reg_n_0,
      I3 => reset_time_out,
      I4 => \FSM_sequential_tx_state[3]_i_9_n_0\,
      I5 => tx_state(0),
      O => \FSM_sequential_tx_state[3]_i_5_n_0\
    );
\FSM_sequential_tx_state[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      I2 => tx_state(1),
      I3 => tx_state(2),
      O => \FSM_sequential_tx_state[3]_i_8_n_0\
    );
\FSM_sequential_tx_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => init_wait_done_reg_n_0,
      I3 => tx_state(3),
      O => \FSM_sequential_tx_state[3]_i_9_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_PLL0LOCK_n_0,
      D => \tx_state__0\(0),
      Q => tx_state(0),
      R => pma_reset
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_PLL0LOCK_n_0,
      D => \tx_state__0\(1),
      Q => tx_state(1),
      R => pma_reset
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_PLL0LOCK_n_0,
      D => \tx_state__0\(2),
      Q => tx_state(2),
      R => pma_reset
    );
\FSM_sequential_tx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_PLL0LOCK_n_0,
      D => \tx_state__0\(3),
      Q => tx_state(3),
      R => pma_reset
    );
MMCM_RESET_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAABAA"
    )
        port map (
      I0 => \^mmcm_reset\,
      I1 => tx_state(1),
      I2 => tx_state(3),
      I3 => tx_state(0),
      I4 => tx_state(2),
      O => MMCM_RESET_i_1_n_0
    );
MMCM_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => MMCM_RESET_i_1_n_0,
      Q => \^mmcm_reset\,
      R => pma_reset
    );
PLL0_RESET_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF1F00"
    )
        port map (
      I0 => gt0_pll0refclklost_in,
      I1 => pll_reset_asserted_reg_n_0,
      I2 => refclk_stable_reg_n_0,
      I3 => PLL0_RESET_i_2_n_0,
      I4 => \^pll0_reset_reg_0\,
      O => PLL0_RESET_i_1_n_0
    );
PLL0_RESET_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(3),
      O => PLL0_RESET_i_2_n_0
    );
PLL0_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => PLL0_RESET_i_1_n_0,
      Q => \^pll0_reset_reg_0\,
      R => pma_reset
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0800"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(1),
      I2 => tx_state(3),
      I3 => tx_state(0),
      I4 => \^gt0_txuserrdy_t\,
      O => TXUSERRDY_i_1_n_0
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => TXUSERRDY_i_1_n_0,
      Q => \^gt0_txuserrdy_t\,
      R => pma_reset
    );
gtpe2_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => GTTXRESET,
      I1 => \^data_in\,
      I2 => gtpe2_i,
      O => gt0_gttxreset_in0_out
    );
gttxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(2),
      I2 => tx_state(1),
      I3 => tx_state(3),
      I4 => GTTXRESET,
      O => gttxreset_i_i_1_n_0
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gttxreset_i_i_1_n_0,
      Q => GTTXRESET,
      R => pma_reset
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => \init_wait_count[0]_i_1_n_0\
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(0),
      O => \p_0_in__0\(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      O => \p_0_in__0\(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(3),
      O => \p_0_in__0\(3)
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(4),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(3),
      O => \p_0_in__0\(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(3),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(2),
      I4 => init_wait_count_reg(1),
      I5 => init_wait_count_reg(4),
      O => \p_0_in__0\(5)
    );
\init_wait_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(6),
      I2 => init_wait_count_reg(4),
      I3 => \init_wait_count[6]_i_3_n_0\,
      I4 => init_wait_count_reg(5),
      I5 => init_wait_count_reg(3),
      O => init_wait_count
    );
\init_wait_count[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(6),
      I1 => init_wait_count_reg(4),
      I2 => \init_wait_count[6]_i_4_n_0\,
      I3 => init_wait_count_reg(5),
      O => \p_0_in__0\(6)
    );
\init_wait_count[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      O => \init_wait_count[6]_i_3_n_0\
    );
\init_wait_count[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(1),
      O => \init_wait_count[6]_i_4_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \init_wait_count[0]_i_1_n_0\,
      Q => init_wait_count_reg(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__0\(1),
      Q => init_wait_count_reg(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__0\(2),
      Q => init_wait_count_reg(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__0\(3),
      Q => init_wait_count_reg(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__0\(4),
      Q => init_wait_count_reg(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__0\(5),
      Q => init_wait_count_reg(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__0\(6),
      Q => init_wait_count_reg(6)
    );
init_wait_done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => init_wait_done,
      I1 => init_wait_done_reg_n_0,
      O => init_wait_done_i_1_n_0
    );
init_wait_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(5),
      I2 => \init_wait_count[6]_i_3_n_0\,
      I3 => init_wait_count_reg(4),
      I4 => init_wait_count_reg(6),
      I5 => init_wait_count_reg(0),
      O => init_wait_done
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      CLR => pma_reset,
      D => init_wait_done_i_1_n_0,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      O => \p_0_in__1\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(1),
      I1 => mmcm_lock_count_reg(0),
      O => \p_0_in__1\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mmcm_lock_count_reg(2),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(0),
      O => \p_0_in__1\(2)
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(3),
      O => \p_0_in__1\(3)
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(2),
      I4 => mmcm_lock_count_reg(3),
      O => \p_0_in__1\(4)
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(3),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(4),
      O => \p_0_in__1\(5)
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_count_reg(4),
      I2 => \mmcm_lock_count[7]_i_4_n_0\,
      I3 => mmcm_lock_count_reg(5),
      O => \p_0_in__1\(6)
    );
\mmcm_lock_count[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_count_reg(4),
      I2 => \mmcm_lock_count[7]_i_4_n_0\,
      I3 => mmcm_lock_count_reg(5),
      I4 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_2_n_0\
    );
\mmcm_lock_count[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(7),
      I1 => mmcm_lock_count_reg(5),
      I2 => \mmcm_lock_count[7]_i_4_n_0\,
      I3 => mmcm_lock_count_reg(4),
      I4 => mmcm_lock_count_reg(6),
      O => \p_0_in__1\(7)
    );
\mmcm_lock_count[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(0),
      O => \mmcm_lock_count[7]_i_4_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(0),
      Q => mmcm_lock_count_reg(0),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(1),
      Q => mmcm_lock_count_reg(1),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(2),
      Q => mmcm_lock_count_reg(2),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(3),
      Q => mmcm_lock_count_reg(3),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(4),
      Q => mmcm_lock_count_reg(4),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(5),
      Q => mmcm_lock_count_reg(5),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(6),
      Q => mmcm_lock_count_reg(6),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(7),
      Q => mmcm_lock_count_reg(7),
      R => sync_mmcm_lock_reclocked_n_0
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => mmcm_lock_count_reg(7),
      I2 => mmcm_lock_reclocked_i_2_n_0,
      I3 => mmcm_lock_count_reg(6),
      I4 => mmcm_lock_i,
      O => mmcm_lock_reclocked_i_1_n_0
    );
mmcm_lock_reclocked_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(3),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(4),
      O => mmcm_lock_reclocked_i_2_n_0
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_lock_reclocked_i_1_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F00000F155"
    )
        port map (
      I0 => tx_state(3),
      I1 => gt0_pll0refclklost_in,
      I2 => pll_reset_asserted_reg_n_0,
      I3 => refclk_stable_reg_n_0,
      I4 => tx_state(1),
      I5 => pll_reset_asserted_i_2_n_0,
      O => pll_reset_asserted_i_1_n_0
    );
pll_reset_asserted_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      I2 => tx_state(2),
      O => pll_reset_asserted_i_2_n_0
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pll_reset_asserted_i_1_n_0,
      Q => pll_reset_asserted_reg_n_0,
      R => pma_reset
    );
\refclk_stable_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \refclk_stable_count[0]_i_3_n_0\,
      I1 => \refclk_stable_count[0]_i_4_n_0\,
      I2 => \refclk_stable_count[0]_i_5_n_0\,
      I3 => \refclk_stable_count[0]_i_6_n_0\,
      O => refclk_stable_count
    );
\refclk_stable_count[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => refclk_stable_count_reg(24),
      I1 => refclk_stable_count_reg(5),
      I2 => refclk_stable_count_reg(3),
      I3 => refclk_stable_count_reg(28),
      O => \refclk_stable_count[0]_i_10_n_0\
    );
\refclk_stable_count[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => refclk_stable_count_reg(11),
      I1 => refclk_stable_count_reg(30),
      I2 => refclk_stable_count_reg(15),
      I3 => refclk_stable_count_reg(31),
      O => \refclk_stable_count[0]_i_11_n_0\
    );
\refclk_stable_count[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => refclk_stable_count_reg(21),
      I1 => refclk_stable_count_reg(13),
      I2 => refclk_stable_count_reg(29),
      I3 => refclk_stable_count_reg(14),
      I4 => \refclk_stable_count[0]_i_8_n_0\,
      O => \refclk_stable_count[0]_i_3_n_0\
    );
\refclk_stable_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => refclk_stable_count_reg(1),
      I1 => refclk_stable_count_reg(6),
      I2 => refclk_stable_count_reg(23),
      I3 => refclk_stable_count_reg(9),
      I4 => \refclk_stable_count[0]_i_9_n_0\,
      O => \refclk_stable_count[0]_i_4_n_0\
    );
\refclk_stable_count[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => refclk_stable_count_reg(20),
      I1 => refclk_stable_count_reg(12),
      I2 => refclk_stable_count_reg(16),
      I3 => refclk_stable_count_reg(0),
      I4 => \refclk_stable_count[0]_i_10_n_0\,
      O => \refclk_stable_count[0]_i_5_n_0\
    );
\refclk_stable_count[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => refclk_stable_count_reg(26),
      I1 => refclk_stable_count_reg(19),
      I2 => refclk_stable_count_reg(17),
      I3 => refclk_stable_count_reg(10),
      I4 => \refclk_stable_count[0]_i_11_n_0\,
      O => \refclk_stable_count[0]_i_6_n_0\
    );
\refclk_stable_count[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => refclk_stable_count_reg(0),
      O => \refclk_stable_count[0]_i_7_n_0\
    );
\refclk_stable_count[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => refclk_stable_count_reg(8),
      I1 => refclk_stable_count_reg(7),
      I2 => refclk_stable_count_reg(25),
      I3 => refclk_stable_count_reg(2),
      O => \refclk_stable_count[0]_i_8_n_0\
    );
\refclk_stable_count[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => refclk_stable_count_reg(22),
      I1 => refclk_stable_count_reg(4),
      I2 => refclk_stable_count_reg(18),
      I3 => refclk_stable_count_reg(27),
      O => \refclk_stable_count[0]_i_9_n_0\
    );
\refclk_stable_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_7\,
      Q => refclk_stable_count_reg(0),
      R => '0'
    );
\refclk_stable_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \refclk_stable_count_reg[0]_i_2_n_0\,
      CO(2) => \refclk_stable_count_reg[0]_i_2_n_1\,
      CO(1) => \refclk_stable_count_reg[0]_i_2_n_2\,
      CO(0) => \refclk_stable_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \refclk_stable_count_reg[0]_i_2_n_4\,
      O(2) => \refclk_stable_count_reg[0]_i_2_n_5\,
      O(1) => \refclk_stable_count_reg[0]_i_2_n_6\,
      O(0) => \refclk_stable_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => refclk_stable_count_reg(3 downto 1),
      S(0) => \refclk_stable_count[0]_i_7_n_0\
    );
\refclk_stable_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_5\,
      Q => refclk_stable_count_reg(10),
      R => '0'
    );
\refclk_stable_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_4\,
      Q => refclk_stable_count_reg(11),
      R => '0'
    );
\refclk_stable_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_7\,
      Q => refclk_stable_count_reg(12),
      R => '0'
    );
\refclk_stable_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[8]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[12]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[12]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[12]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[12]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[12]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[12]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(15 downto 12)
    );
\refclk_stable_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_6\,
      Q => refclk_stable_count_reg(13),
      R => '0'
    );
\refclk_stable_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_5\,
      Q => refclk_stable_count_reg(14),
      R => '0'
    );
\refclk_stable_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_4\,
      Q => refclk_stable_count_reg(15),
      R => '0'
    );
\refclk_stable_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_7\,
      Q => refclk_stable_count_reg(16),
      R => '0'
    );
\refclk_stable_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[12]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[16]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[16]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[16]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[16]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[16]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[16]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(19 downto 16)
    );
\refclk_stable_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_6\,
      Q => refclk_stable_count_reg(17),
      R => '0'
    );
\refclk_stable_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_5\,
      Q => refclk_stable_count_reg(18),
      R => '0'
    );
\refclk_stable_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_4\,
      Q => refclk_stable_count_reg(19),
      R => '0'
    );
\refclk_stable_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_6\,
      Q => refclk_stable_count_reg(1),
      R => '0'
    );
\refclk_stable_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_7\,
      Q => refclk_stable_count_reg(20),
      R => '0'
    );
\refclk_stable_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[16]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[20]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[20]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[20]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[20]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[20]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[20]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[20]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(23 downto 20)
    );
\refclk_stable_count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_6\,
      Q => refclk_stable_count_reg(21),
      R => '0'
    );
\refclk_stable_count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_5\,
      Q => refclk_stable_count_reg(22),
      R => '0'
    );
\refclk_stable_count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_4\,
      Q => refclk_stable_count_reg(23),
      R => '0'
    );
\refclk_stable_count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_7\,
      Q => refclk_stable_count_reg(24),
      R => '0'
    );
\refclk_stable_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[20]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[24]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[24]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[24]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[24]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[24]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[24]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[24]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(27 downto 24)
    );
\refclk_stable_count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_6\,
      Q => refclk_stable_count_reg(25),
      R => '0'
    );
\refclk_stable_count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_5\,
      Q => refclk_stable_count_reg(26),
      R => '0'
    );
\refclk_stable_count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_4\,
      Q => refclk_stable_count_reg(27),
      R => '0'
    );
\refclk_stable_count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_7\,
      Q => refclk_stable_count_reg(28),
      R => '0'
    );
\refclk_stable_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \refclk_stable_count_reg[28]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[28]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[28]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[28]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[28]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[28]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(31 downto 28)
    );
\refclk_stable_count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_6\,
      Q => refclk_stable_count_reg(29),
      R => '0'
    );
\refclk_stable_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_5\,
      Q => refclk_stable_count_reg(2),
      R => '0'
    );
\refclk_stable_count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_5\,
      Q => refclk_stable_count_reg(30),
      R => '0'
    );
\refclk_stable_count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_4\,
      Q => refclk_stable_count_reg(31),
      R => '0'
    );
\refclk_stable_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_4\,
      Q => refclk_stable_count_reg(3),
      R => '0'
    );
\refclk_stable_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_7\,
      Q => refclk_stable_count_reg(4),
      R => '0'
    );
\refclk_stable_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[0]_i_2_n_0\,
      CO(3) => \refclk_stable_count_reg[4]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[4]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[4]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[4]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[4]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[4]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(7 downto 4)
    );
\refclk_stable_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_6\,
      Q => refclk_stable_count_reg(5),
      R => '0'
    );
\refclk_stable_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_5\,
      Q => refclk_stable_count_reg(6),
      R => '0'
    );
\refclk_stable_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_4\,
      Q => refclk_stable_count_reg(7),
      R => '0'
    );
\refclk_stable_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_7\,
      Q => refclk_stable_count_reg(8),
      R => '0'
    );
\refclk_stable_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[4]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[8]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[8]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[8]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[8]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[8]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[8]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(11 downto 8)
    );
\refclk_stable_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_6\,
      Q => refclk_stable_count_reg(9),
      R => '0'
    );
refclk_stable_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \refclk_stable_count[0]_i_6_n_0\,
      I1 => \refclk_stable_count[0]_i_5_n_0\,
      I2 => \refclk_stable_count[0]_i_4_n_0\,
      I3 => \refclk_stable_count[0]_i_3_n_0\,
      O => refclk_stable_i_1_n_0
    );
refclk_stable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => refclk_stable_i_1_n_0,
      Q => refclk_stable_reg_n_0,
      R => '0'
    );
reset_time_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AC000C000CF0FC"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => init_wait_done_reg_n_0,
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => tx_state(1),
      I5 => tx_state(2),
      O => reset_time_out_i_2_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_PLL0LOCK_n_1,
      Q => reset_time_out,
      R => pma_reset
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0100"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => run_phase_alignment_int_reg_n_0,
      O => run_phase_alignment_int_i_1_n_0
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => run_phase_alignment_int_i_1_n_0,
      Q => run_phase_alignment_int_reg_n_0,
      R => pma_reset
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_out,
      Q => run_phase_alignment_int_s3,
      R => '0'
    );
sync_PLL0LOCK: entity work.gig_ethernet_pcs_pma_sync_block_7
     port map (
      E(0) => sync_PLL0LOCK_n_0,
      \FSM_sequential_tx_state[3]_i_7_0\ => refclk_stable_reg_n_0,
      \FSM_sequential_tx_state[3]_i_7_1\ => pll_reset_asserted_reg_n_0,
      \FSM_sequential_tx_state_reg[0]\(0) => sel,
      \FSM_sequential_tx_state_reg[0]_0\ => \FSM_sequential_tx_state[3]_i_3_n_0\,
      \FSM_sequential_tx_state_reg[0]_1\ => \FSM_sequential_tx_state[3]_i_4_n_0\,
      \FSM_sequential_tx_state_reg[0]_2\ => \FSM_sequential_tx_state[3]_i_5_n_0\,
      \FSM_sequential_tx_state_reg[0]_3\ => time_out_2ms_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_4\ => \FSM_sequential_tx_state[3]_i_10_n_0\,
      \FSM_sequential_tx_state_reg[0]_5\ => \FSM_sequential_tx_state[0]_i_2_n_0\,
      Q(3 downto 0) => tx_state(3 downto 0),
      gt0_pll0lock_in => gt0_pll0lock_in,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      reset_time_out => reset_time_out,
      reset_time_out_reg => sync_PLL0LOCK_n_1,
      reset_time_out_reg_0 => init_wait_done_reg_n_0,
      reset_time_out_reg_1 => reset_time_out_i_2_n_0
    );
sync_TXRESETDONE: entity work.gig_ethernet_pcs_pma_sync_block_8
     port map (
      data_out => txresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_mmcm_lock_reclocked: entity work.gig_ethernet_pcs_pma_sync_block_9
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked
    );
sync_run_phase_alignment_int: entity work.gig_ethernet_pcs_pma_sync_block_10
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => data_out,
      userclk => userclk
    );
sync_time_out_wait_bypass: entity work.gig_ethernet_pcs_pma_sync_block_11
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_tx_fsm_reset_done_int: entity work.gig_ethernet_pcs_pma_sync_block_12
     port map (
      data_in => \^data_in\,
      data_out => tx_fsm_reset_done_int_s2,
      userclk => userclk
    );
time_out_2ms_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => time_out_2ms,
      I2 => reset_time_out,
      O => time_out_2ms_i_1_n_0
    );
\time_out_2ms_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(7),
      I2 => time_out_2ms_i_3_n_0,
      I3 => \time_out_2ms_i_4__0_n_0\,
      I4 => \time_out_counter[0]_i_3__0_n_0\,
      I5 => time_out_2ms_i_5_n_0,
      O => time_out_2ms
    );
time_out_2ms_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(6),
      O => time_out_2ms_i_3_n_0
    );
\time_out_2ms_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(4),
      I5 => time_out_counter_reg(2),
      O => \time_out_2ms_i_4__0_n_0\
    );
time_out_2ms_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(15),
      O => time_out_2ms_i_5_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => '0'
    );
time_out_500us_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => time_out_500us_reg_n_0,
      I1 => time_out_500us_i_2_n_0,
      I2 => time_out_500us_i_3_n_0,
      I3 => reset_time_out,
      O => time_out_500us_i_1_n_0
    );
time_out_500us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \time_out_2ms_i_4__0_n_0\,
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(6),
      I4 => time_out_counter_reg(7),
      I5 => time_out_counter_reg(14),
      O => time_out_500us_i_2_n_0
    );
time_out_500us_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => time_tlock_max_i_4_n_0,
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(12),
      I4 => time_out_counter_reg(15),
      O => time_out_500us_i_3_n_0
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_500us_i_1_n_0,
      Q => time_out_500us_reg_n_0,
      R => '0'
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(16),
      I3 => \time_out_counter[0]_i_3__0_n_0\,
      I4 => time_out_500us_i_2_n_0,
      O => time_out_counter
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(18),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(12),
      I4 => time_out_counter_reg(5),
      O => \time_out_counter[0]_i_3__0_n_0\
    );
\time_out_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \time_out_counter_reg[16]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \time_out_counter_reg[16]_i_1_n_5\,
      O(1) => \time_out_counter_reg[16]_i_1_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => time_out_counter_reg(18 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_5\,
      Q => time_out_counter_reg(18),
      R => reset_time_out
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => tx_fsm_reset_done_int_s3,
      I2 => time_out_wait_bypass_i_2_n_0,
      I3 => run_phase_alignment_int_s3,
      O => time_out_wait_bypass_i_1_n_0
    );
time_out_wait_bypass_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFFFFFFF"
    )
        port map (
      I0 => time_out_wait_bypass_i_3_n_0,
      I1 => time_out_wait_bypass_i_4_n_0,
      I2 => wait_bypass_count_reg(5),
      I3 => wait_bypass_count_reg(13),
      I4 => wait_bypass_count_reg(11),
      I5 => time_out_wait_bypass_i_5_n_0,
      O => time_out_wait_bypass_i_2_n_0
    );
time_out_wait_bypass_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => wait_bypass_count_reg(16),
      I1 => wait_bypass_count_reg(9),
      I2 => wait_bypass_count_reg(12),
      I3 => wait_bypass_count_reg(10),
      O => time_out_wait_bypass_i_3_n_0
    );
time_out_wait_bypass_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(4),
      I1 => wait_bypass_count_reg(15),
      I2 => wait_bypass_count_reg(6),
      I3 => wait_bypass_count_reg(0),
      O => time_out_wait_bypass_i_4_n_0
    );
time_out_wait_bypass_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => wait_bypass_count_reg(8),
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(7),
      I3 => wait_bypass_count_reg(14),
      I4 => wait_bypass_count_reg(2),
      I5 => wait_bypass_count_reg(3),
      O => time_out_wait_bypass_i_5_n_0
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAAE"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => time_tlock_max_i_2_n_0,
      I2 => time_tlock_max_i_3_n_0,
      I3 => time_tlock_max_i_4_n_0,
      I4 => reset_time_out,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(1),
      I3 => \time_out_2ms_i_4__0_n_0\,
      O => time_tlock_max_i_2_n_0
    );
time_tlock_max_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(7),
      I4 => time_out_counter_reg(12),
      I5 => time_out_counter_reg(14),
      O => time_tlock_max_i_3_n_0
    );
time_tlock_max_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(17),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(18),
      O => time_tlock_max_i_4_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max_reg_n_0,
      R => '0'
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => \^data_in\,
      O => tx_fsm_reset_done_int_i_1_n_0
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => tx_fsm_reset_done_int_i_1_n_0,
      Q => \^data_in\,
      R => pma_reset
    );
tx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => tx_fsm_reset_done_int_s2,
      Q => tx_fsm_reset_done_int_s3,
      R => '0'
    );
txresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => txresetdone_s2,
      Q => txresetdone_s3,
      R => '0'
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3,
      O => clear
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_wait_bypass_i_2_n_0,
      I1 => tx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2_n_0\
    );
\wait_bypass_count[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_7\,
      Q => wait_bypass_count_reg(0),
      R => clear
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_5\,
      Q => wait_bypass_count_reg(10),
      R => clear
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_4\,
      Q => wait_bypass_count_reg(11),
      R => clear
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_7\,
      Q => wait_bypass_count_reg(12),
      R => clear
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[12]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[12]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[12]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[12]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[12]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(15 downto 12)
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_6\,
      Q => wait_bypass_count_reg(13),
      R => clear
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_5\,
      Q => wait_bypass_count_reg(14),
      R => clear
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_4\,
      Q => wait_bypass_count_reg(15),
      R => clear
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[16]_i_1_n_7\,
      Q => wait_bypass_count_reg(16),
      R => clear
    );
\wait_bypass_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(16)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_6\,
      Q => wait_bypass_count_reg(1),
      R => clear
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_5\,
      Q => wait_bypass_count_reg(2),
      R => clear
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_4\,
      Q => wait_bypass_count_reg(3),
      R => clear
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_7\,
      Q => wait_bypass_count_reg(4),
      R => clear
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_6\,
      Q => wait_bypass_count_reg(5),
      R => clear
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_5\,
      Q => wait_bypass_count_reg(6),
      R => clear
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_4\,
      Q => wait_bypass_count_reg(7),
      R => clear
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_7\,
      Q => wait_bypass_count_reg(8),
      R => clear
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_6\,
      Q => wait_bypass_count_reg(9),
      R => clear
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => wait_time_cnt0(0)
    );
\wait_time_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      O => \wait_time_cnt[1]_i_1_n_0\
    );
\wait_time_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(2),
      O => wait_time_cnt0(2)
    );
\wait_time_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(3),
      O => wait_time_cnt0(3)
    );
\wait_time_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[4]_i_1_n_0\
    );
\wait_time_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(5),
      I1 => wait_time_cnt_reg(3),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(0),
      I4 => wait_time_cnt_reg(2),
      I5 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[5]_i_1_n_0\
    );
\wait_time_cnt[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(3),
      O => wait_time_cnt0_0
    );
\wait_time_cnt[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(4),
      I2 => \wait_time_cnt[6]_i_4_n_0\,
      I3 => wait_time_cnt_reg(5),
      O => sel
    );
\wait_time_cnt[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(4),
      I2 => \wait_time_cnt[6]_i_4_n_0\,
      I3 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[6]_i_3_n_0\
    );
\wait_time_cnt[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[6]_i_4_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(0),
      Q => wait_time_cnt_reg(0),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[1]_i_1_n_0\,
      Q => wait_time_cnt_reg(1),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(2),
      Q => wait_time_cnt_reg(2),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(3),
      Q => wait_time_cnt_reg(3),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[4]_i_1_n_0\,
      Q => wait_time_cnt_reg(4),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[5]_i_1_n_0\,
      Q => wait_time_cnt_reg(5),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[6]_i_3_n_0\,
      Q => wait_time_cnt_reg(6),
      S => wait_time_cnt0_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_gtwizard_gtrxreset_seq is
  port (
    GTRXRESET : out STD_LOGIC;
    \FSM_onehot_state_reg[5]_0\ : out STD_LOGIC;
    DRPDI : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_state_reg[7]_0\ : out STD_LOGIC;
    DRPADDR : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk_bufg : in STD_LOGIC;
    \original_rd_data_reg[0]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in : in STD_LOGIC;
    reset_sync5 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end gig_ethernet_pcs_pma_gtwizard_gtrxreset_seq;

architecture STRUCTURE of gig_ethernet_pcs_pma_gtwizard_gtrxreset_seq is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal drp_op_done : STD_LOGIC;
  signal drp_op_done_o_i_1_n_0 : STD_LOGIC;
  signal flag : STD_LOGIC;
  signal flag_i_1_n_0 : STD_LOGIC;
  signal flag_reg_n_0 : STD_LOGIC;
  signal \gtrxreset_i__0\ : STD_LOGIC;
  signal gtrxreset_in_sync : STD_LOGIC;
  signal gtrxreset_s : STD_LOGIC;
  signal gtrxreset_ss : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal next_rd_data : STD_LOGIC;
  signal original_rd_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal original_rd_data0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal \rd_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_reg_n_0_[11]\ : STD_LOGIC;
  signal rst_sync : STD_LOGIC;
  signal rxpmaresetdone_s : STD_LOGIC;
  signal rxpmaresetdone_ss : STD_LOGIC;
  signal rxpmaresetdone_sss : STD_LOGIC;
  signal rxpmaresetdone_sync : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair103";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute SOFT_HLUTNM of drp_op_done_o_i_1 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of gtpe2_i_i_1 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of gtpe2_i_i_10 : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of gtpe2_i_i_11 : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of gtpe2_i_i_12 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of gtpe2_i_i_13 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of gtpe2_i_i_14 : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of gtpe2_i_i_15 : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of gtpe2_i_i_16 : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of gtpe2_i_i_17 : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of gtpe2_i_i_18 : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of gtpe2_i_i_19 : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of gtpe2_i_i_2 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of gtpe2_i_i_20 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of gtpe2_i_i_4 : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of gtpe2_i_i_5 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of gtpe2_i_i_6 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of gtpe2_i_i_7 : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of gtpe2_i_i_8 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of gtpe2_i_i_9 : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \rd_data[0]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \rd_data[10]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \rd_data[11]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \rd_data[12]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \rd_data[13]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \rd_data[14]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \rd_data[15]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \rd_data[1]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \rd_data[2]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \rd_data[3]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \rd_data[4]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \rd_data[5]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \rd_data[6]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \rd_data[7]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \rd_data[8]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \rd_data[9]_i_1\ : label is "soft_lutpair107";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_2_in,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => flag,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \original_rd_data_reg[0]_0\,
      I1 => flag,
      I2 => gtrxreset_ss,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_1_in,
      I1 => rxpmaresetdone_ss,
      I2 => rxpmaresetdone_sss,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD0D0D0"
    )
        port map (
      I0 => rxpmaresetdone_sss,
      I1 => rxpmaresetdone_ss,
      I2 => p_1_in,
      I3 => \original_rd_data_reg[0]_0\,
      I4 => p_3_in,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => p_3_in,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => \original_rd_data_reg[0]_0\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => p_0_in,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => gtrxreset_ss,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => flag
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      PRE => rst_sync,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => p_2_in
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => p_1_in
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => p_3_in
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => p_0_in
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\
    );
drp_op_done_o_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => flag,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => drp_op_done,
      O => drp_op_done_o_i_1_n_0
    );
drp_op_done_o_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => gtrxreset_ss,
      D => drp_op_done_o_i_1_n_0,
      Q => drp_op_done
    );
flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => flag,
      I1 => flag_reg_n_0,
      I2 => p_2_in,
      I3 => p_1_in,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      I5 => p_3_in,
      O => flag_i_1_n_0
    );
flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => flag_i_1_n_0,
      Q => flag_reg_n_0,
      R => '0'
    );
gtpe2_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => p_2_in,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => drp_op_done,
      O => \FSM_onehot_state_reg[7]_0\
    );
gtpe2_i_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(9),
      I3 => drp_op_done,
      O => DRPDI(9)
    );
gtpe2_i_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(8),
      I3 => drp_op_done,
      O => DRPDI(8)
    );
gtpe2_i_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(7),
      I3 => drp_op_done,
      O => DRPDI(7)
    );
gtpe2_i_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(6),
      I3 => drp_op_done,
      O => DRPDI(6)
    );
gtpe2_i_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(5),
      I3 => drp_op_done,
      O => DRPDI(5)
    );
gtpe2_i_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(4),
      I3 => drp_op_done,
      O => DRPDI(4)
    );
gtpe2_i_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(3),
      I3 => drp_op_done,
      O => DRPDI(3)
    );
gtpe2_i_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(2),
      I3 => drp_op_done,
      O => DRPDI(2)
    );
gtpe2_i_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(1),
      I3 => drp_op_done,
      O => DRPDI(1)
    );
gtpe2_i_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(0),
      I3 => drp_op_done,
      O => DRPDI(0)
    );
gtpe2_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => p_2_in,
      I2 => drp_op_done,
      O => \FSM_onehot_state_reg[5]_0\
    );
gtpe2_i_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drp_op_done,
      O => DRPADDR(0)
    );
gtpe2_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(15),
      I3 => drp_op_done,
      O => DRPDI(15)
    );
gtpe2_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(14),
      I3 => drp_op_done,
      O => DRPDI(14)
    );
gtpe2_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(13),
      I3 => drp_op_done,
      O => DRPDI(13)
    );
gtpe2_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(12),
      I3 => drp_op_done,
      O => DRPDI(12)
    );
gtpe2_i_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \rd_data_reg_n_0_[11]\,
      I1 => p_2_in,
      I2 => drp_op_done,
      O => DRPDI(11)
    );
gtpe2_i_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(10),
      I3 => drp_op_done,
      O => DRPDI(10)
    );
gtrxreset_i: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => p_3_in,
      I2 => gtrxreset_ss,
      I3 => p_1_in,
      I4 => p_0_in,
      I5 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \gtrxreset_i__0\
    );
gtrxreset_o_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \gtrxreset_i__0\,
      Q => GTRXRESET
    );
gtrxreset_s_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => gtrxreset_in_sync,
      Q => gtrxreset_s
    );
gtrxreset_ss_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => gtrxreset_s,
      Q => gtrxreset_ss
    );
\original_rd_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => flag_reg_n_0,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => p_0_in,
      O => original_rd_data0
    );
\original_rd_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(0),
      Q => original_rd_data(0),
      R => '0'
    );
\original_rd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(10),
      Q => original_rd_data(10),
      R => '0'
    );
\original_rd_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(11),
      Q => original_rd_data(11),
      R => '0'
    );
\original_rd_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(12),
      Q => original_rd_data(12),
      R => '0'
    );
\original_rd_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(13),
      Q => original_rd_data(13),
      R => '0'
    );
\original_rd_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(14),
      Q => original_rd_data(14),
      R => '0'
    );
\original_rd_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(15),
      Q => original_rd_data(15),
      R => '0'
    );
\original_rd_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(1),
      Q => original_rd_data(1),
      R => '0'
    );
\original_rd_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(2),
      Q => original_rd_data(2),
      R => '0'
    );
\original_rd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(3),
      Q => original_rd_data(3),
      R => '0'
    );
\original_rd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(4),
      Q => original_rd_data(4),
      R => '0'
    );
\original_rd_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(5),
      Q => original_rd_data(5),
      R => '0'
    );
\original_rd_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(6),
      Q => original_rd_data(6),
      R => '0'
    );
\original_rd_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(7),
      Q => original_rd_data(7),
      R => '0'
    );
\original_rd_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(8),
      Q => original_rd_data(8),
      R => '0'
    );
\original_rd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(9),
      Q => original_rd_data(9),
      R => '0'
    );
\rd_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(0),
      I1 => original_rd_data(0),
      I2 => flag_reg_n_0,
      O => \rd_data[0]_i_1_n_0\
    );
\rd_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(10),
      I1 => original_rd_data(10),
      I2 => flag_reg_n_0,
      O => \rd_data[10]_i_1_n_0\
    );
\rd_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(11),
      I1 => original_rd_data(11),
      I2 => flag_reg_n_0,
      O => \rd_data[11]_i_1_n_0\
    );
\rd_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(12),
      I1 => original_rd_data(12),
      I2 => flag_reg_n_0,
      O => \rd_data[12]_i_1_n_0\
    );
\rd_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(13),
      I1 => original_rd_data(13),
      I2 => flag_reg_n_0,
      O => \rd_data[13]_i_1_n_0\
    );
\rd_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(14),
      I1 => original_rd_data(14),
      I2 => flag_reg_n_0,
      O => \rd_data[14]_i_1_n_0\
    );
\rd_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => \original_rd_data_reg[0]_0\,
      O => next_rd_data
    );
\rd_data[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(15),
      I1 => original_rd_data(15),
      I2 => flag_reg_n_0,
      O => \rd_data[15]_i_2_n_0\
    );
\rd_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(1),
      I1 => original_rd_data(1),
      I2 => flag_reg_n_0,
      O => \rd_data[1]_i_1_n_0\
    );
\rd_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(2),
      I1 => original_rd_data(2),
      I2 => flag_reg_n_0,
      O => \rd_data[2]_i_1_n_0\
    );
\rd_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(3),
      I1 => original_rd_data(3),
      I2 => flag_reg_n_0,
      O => \rd_data[3]_i_1_n_0\
    );
\rd_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(4),
      I1 => original_rd_data(4),
      I2 => flag_reg_n_0,
      O => \rd_data[4]_i_1_n_0\
    );
\rd_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(5),
      I1 => original_rd_data(5),
      I2 => flag_reg_n_0,
      O => \rd_data[5]_i_1_n_0\
    );
\rd_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(6),
      I1 => original_rd_data(6),
      I2 => flag_reg_n_0,
      O => \rd_data[6]_i_1_n_0\
    );
\rd_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(7),
      I1 => original_rd_data(7),
      I2 => flag_reg_n_0,
      O => \rd_data[7]_i_1_n_0\
    );
\rd_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(8),
      I1 => original_rd_data(8),
      I2 => flag_reg_n_0,
      O => \rd_data[8]_i_1_n_0\
    );
\rd_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(9),
      I1 => original_rd_data(9),
      I2 => flag_reg_n_0,
      O => \rd_data[9]_i_1_n_0\
    );
\rd_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[0]_i_1_n_0\,
      Q => in7(0)
    );
\rd_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[10]_i_1_n_0\,
      Q => in7(10)
    );
\rd_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[11]_i_1_n_0\,
      Q => \rd_data_reg_n_0_[11]\
    );
\rd_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[12]_i_1_n_0\,
      Q => in7(12)
    );
\rd_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[13]_i_1_n_0\,
      Q => in7(13)
    );
\rd_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[14]_i_1_n_0\,
      Q => in7(14)
    );
\rd_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[15]_i_2_n_0\,
      Q => in7(15)
    );
\rd_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[1]_i_1_n_0\,
      Q => in7(1)
    );
\rd_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[2]_i_1_n_0\,
      Q => in7(2)
    );
\rd_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[3]_i_1_n_0\,
      Q => in7(3)
    );
\rd_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[4]_i_1_n_0\,
      Q => in7(4)
    );
\rd_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[5]_i_1_n_0\,
      Q => in7(5)
    );
\rd_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[6]_i_1_n_0\,
      Q => in7(6)
    );
\rd_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[7]_i_1_n_0\,
      Q => in7(7)
    );
\rd_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[8]_i_1_n_0\,
      Q => in7(8)
    );
\rd_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[9]_i_1_n_0\,
      Q => in7(9)
    );
rxpmaresetdone_s_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => rxpmaresetdone_sync,
      Q => rxpmaresetdone_s
    );
rxpmaresetdone_ss_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => rxpmaresetdone_s,
      Q => rxpmaresetdone_ss
    );
rxpmaresetdone_sss_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => rxpmaresetdone_ss,
      Q => rxpmaresetdone_sss
    );
sync_gtrxreset_in: entity work.gig_ethernet_pcs_pma_reset_sync_4
     port map (
      SR(0) => SR(0),
      gtrefclk_bufg => gtrefclk_bufg,
      reset_out => gtrxreset_in_sync
    );
sync_rst_sync: entity work.gig_ethernet_pcs_pma_reset_sync_5
     port map (
      gtrefclk_bufg => gtrefclk_bufg,
      reset_out => rst_sync,
      reset_sync5_0 => reset_sync5
    );
sync_rxpmaresetdone: entity work.gig_ethernet_pcs_pma_sync_block_6
     port map (
      data_in => data_in,
      data_out => rxpmaresetdone_sync,
      gtrefclk_bufg => gtrefclk_bufg
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
KYJWzR4vcKBSZu8Xwex/6tmg53LVElcHlSQriBXJNPcz87+7TONysl4izxwXP9yEvug1aeLMuJV9
QpCnAYHZHXfLsNRjUCmA+BPVRelbdqqB52e3uXeIusRdKf9bJK4vTbT3G0lEoFHH5X7C9bSLI4YT
sZUjuHirRGeJHd/b3e0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
yo2V0dC7eF/FmwCqmZxlpuXtmB0HywmWLHJT2jcPSMAC1OXxijmfEbvJ+5lPdLPxXgr9jwwXxwMr
v6iklkYNq+D0goSg8ugfBWwguc77JQVz+jMEKP5qhn7Ri+tKZ00wMjngOlr69eLBesdgH5S7cB58
MceEDf75gNDYQTVzBMlKHcS2mYGmDQkhlgD+FDqOy0bnjw5cKAR61rsdl0A5rMVryGdDWCMhdTU1
ZF8hcDIYUHZBc1Rt5KmxBFRnumpyZkvST8/JckJYBT4n5h8I+vWWI5/wUepjQAwCpQDRQx1ya6wF
c65P3BGTHHaZgJ18lQGc+LhcI9bXwV/MpMi4vw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
FMyPG7pILxysnSMbT2vgWSttyZukEuB9wb0W6Enmto1g4p73zQOy/y6J4k8CeKOmBonMsMxgR96B
7ymzkfztYO6rjGzDtyLRZci3g/2lEhq7hFZJpTsqrjCfl6rJRxYEFWRru2wNunKSy8gmBjTS/oYO
W2Fyj3KEM9HxqjqZyog=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Iv7mhm24oKZE/f/TTAt2P/10rXi8j8ceh05JuZQyLJt6z2wemUiiehGVSeIEc+J/5A8Ky+p5jZlR
zcDz/M6c20lBgNhKjU5Y5/MHKgHsXLEYT6mdLioI9YMqgbzgxL4Wl5NSDSxpPVJXa6dKPuX6edQ+
O9X4vUbFWfAhQRmpfaMfpkrepNBfrxu83VYFIDBh9Oojikqnqx0cHXIwFJoUpIHHG4CxxVcaEr6Z
ckCcd8GW/diuMXklBhICPDSmVB8npY6equ70WXNvlpGqCwoAjF+X+W+fUFLKSuFq9RhGZ5fZpSUd
SuqmoFu4K0kSHyOI0uGqPxSbF4IXp1jtRXncIw==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
G1Dg5WUJaLlOLKvgoRqVkbfWuFm3+8fXpsCVayvBniajy/El8hUFZpcvlPgh+rWnnYMXGY1+dgcv
tDit+krZVNCgFHV62uCLpEWe2SLCJrR+6CKtb1o7z3H46ojm1rD3p8jitykUqmFj/lWwZwCa4lim
i6Pb1Xa2ZSoV3OD/bC+nQ5fvju/wDCxruGqzxHiUM2N1jb5uZk4YmAdOZyHHdgs0GdFQhuc7ZrW1
gZo5cJKb8Km1Wd8ARflhofc0R7eS2WmC87uF4r0un9/OaTBgYqsqLOpX5bnGEEge+qTEKWDyL4h8
Ume5IveElh7cPp3ShEIH/D4P5T//a6ibft2Ehw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
g5+VIKoLaErnfHgoHvjVbfqwQzBWMaP4R2LjkVr68qIXmeoeDhzRRLQ4wlH2S/rFzovDzSTBGdIH
oYYiMg609yl+k/B0IljBcarVRsDmlnXA7zxLHWEVsbDmINIsmSgfnKupCURx4WTMiTEEnzpFOgSG
FNO38PbbriYMLv1VGWMjraOnk5lpxKjghmEvEUYWdOVXtm35Hrwap5YAyCOqPfL4p2v1H2kOgkPc
Vzn++2QRO74wFlIWhRH7Sd/lyg0d/qv8cKPWbGlk4FtIBDWRpbH4IRSA97sUSTUS667ZXQ10dti3
LWf7wAVnNVkHNDGi5ztKc3PoV7Bz/abjdFbXkQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dqvjRf66eFgeN/Z8ybsPcYyyIE05+qB7A909cHStC2BZH94z9sKHr0fQY+x+VvxYGTniR1aGjPx0
53ONyQQVvubqZtHZYB2iWA6RzLHFnzu1fS2eVpSg3lf815QAPoyC1mqE9mV9uFW9XFNDA4sTGbsE
Mm0X/palJ2COd2driADaaF01JZ04gAffkGtpLrHWtH/LHgHRjXt6AyI5/CdmubuRcdM1FUvp/aec
tl/Keptqbs1dnnUMqMTDG7zPcKewV3+EukMtVuc2RguUzNM9zom97XVDLrwA52GD2wn6OgEjqW/v
WrDNmT+/pCGVhQbbEbc+krAFY12VnOMEQVU1SQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
vt6GqHaOeiXWiOhNHC/zgACS4w7PkN49ZzDNMk5JhLGd7+8h4IyHdcFgaF/HLlCR/eReBugWAosy
AaMap069hD7E94rLEU7fFxdbkZYD6qLfs9Gu+ij9YllluEaMg4o+AqGHNNeYYWvs2nl4L5laUAfa
rYPwqHTRWLtqj1pmCtIp/YNnRATHP7qibNftjKYmVOdFpGM9mVr48pZYhbHe9OJtqKtLbzRIJrIn
XvtuJdPHttlExSyMmORUbaLYh5oiwdUbKKxCiAfz1mHaxpbH7EQEjplH6DVHCR0wl4UUpLpS4XqY
m2xvNOHiblEfeMbqSa6geR72WnSxMQyg3r+EDmXpy6WQLES2V1n7H/8kkv6d64A3A6sCbo65No25
Wvo8CYTCnPsHPuPOj79pIFf7guIv0k5LashTfHLLIR5JkLQKHAYzeu7qwv4NIUhIsngmILHqlN57
g42UvS9VND0MpaQoTa73SKy0/uXKITax5YnsQT6gB9Zuh4v93mQiuwse

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OYMs23XUcbQ/M2VNEw2Xoqu7rprn0Zo52KrgROUZzOWxj2vqiE8/ZJRGyB640nrUUC48KRLpb0um
E7OYiTf+sF8tYI49vr5OGew9/TE/Sv8rMLuAP9LLfXxqGyylb9KuDHYuzHEHi31oLMR7ew+Ki243
py8iOp9Ucpu7AaeoqYLp4bTRee7GH4YKqWARaTtjbQtBGhsk8oL2ZfgW1eR6HGkMrRekYlvvymo6
tgV2IVO0xrmS/XBmTYaV4/LYaZVOn0Tydjcx+A1ERtrPrvPIn3HSuREXxKrg7P0B+4lmpJlTBOSW
Pgun3bqS7nhgp22NV4RNku457E5J0aTZylZ2wg==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
KnsZLKALDWqncIJgzAKfboAuo1VaWQUcXKcdRXyL4Ex6lEqsmmKTvxZ6EfVlq4HiuTHkw5MX+NK3
1g2d9wfipvhz8BH563axa8qzO9xe2utPb9F2ISfN1Ds/KOGS9CrQOp3fWf3Y+gk1h1XF/G+BeUAd
v+eyBhX4zlryy63IOrd6NXvYMXdZijqYhV0BlhV3rj6h7oLGezgoNXJZmXnX5xTnIKcQdZouA88t
q/0lfTuWkYlGmOlNEYGIHNrd8AGkElTrxjKoRYVp71MYrclJ7UA0LgOLL9ClcDM7WM6zrXFsmPdL
31jIWwy/HWrK4DuuyP/SScJg8qoy5TJLTbbvew==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
e6JH08Az14VwmgDMM6NOUSh9Oz7q+rduGKFU5Jb8XZOaLO8kMDmApqoiHHUZcoKttzzKMBTFVbns
ACZQBPxPvUO8eIA9UpHKrHjydiosMrG4UheuLv4ocQY+xjVga6bwymdKcX29JCXvl3Y0e66unMl2
m6p9QvQVNUvDPFde0n8uMKr7vTUEe30tITbHs9xHBQFlARKj7GCj5g7KKJHY64BjBjObX8NWO+we
GuhjRWN/wtE1u/CGXwx6E+J8USIu+2ydw3NCPMWN9r1XR6ivKEZJQX/qS1veF16Mpnl+VaU7q5R9
fAvl220pPNb9Li/+/Q9p1PLYcagpeKsg+lo36g==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15904)
`protect data_block
r2+DOdmUVw8TU1j7gy7OBI5OroEzNW/3DjOJ89N1YBlan7jfrreKVkbzmEg4V9aLpONalmfyaVVi
ZuGhrQc95/VsOg8hxqDuJzDkHDiemXcIKSbMlblT09xEYyLdkf1E9ePyNkaH7Y/1Ww9aANTllPeN
vrzIVkkjrxR92H5B7UdAOCSjoXeXzHELR7aLrPI+p04pk4noNy4W4l63ZY+dxDK3EKntq6WPdiD/
iL1tJcF2AoF+CyyXqvbMh2PsV3A76t5FHYKaceDfdOJR38hRA3+D+bq1xOa/EO/y/RGkcWIlICE9
3Qdo3Wgh02RrqgBhKOgpFZJ5MRExIOQSzTKCn6t7R+DVfr6aEdHv6nFHsGIhSFXxMytE7STn+JTp
iyo3RIgOEIhff61ptIA1i3y5WOzvw6TY4LVr3o+PDmtyHCoweWyfxMOzCNuJ13+lNoD/WTNr5RfA
nYv4RtBRdJzLpEaDPLVQjz55TKupLvkc6z2xt3ZOwJqkKEJ02HnYOZ2KNsvDBlgYn8JDYXjd88Ad
wrhbeBjJV68P2b62qWW/wwJDWAAZpY9RRbdP9rDMZE2diK/nKR+vuKbsTHy4UcIMms4diaDQ8vac
VeLLgztLYm9ElUqeP3hABn+E9HhGf58pdg6oZ0DgKC7080oOYzDuL2KXwj4Q0/iWxrBU0CrL2ES2
jg2NDDplA9CnJ8AQHFV0/M9eyslAmkQFct4Os2Eyxj56qREbnjtFzxK08AaJ7ThugrUQVo9VGIa8
sbAl2CQobNZ+QfpRuoe4X+roLMNBSxSzMgoX5VHNdAGyHJ8cbUvuXrWr5pYnVISGMrylKB5FVa6U
XTmT/hDDSJUhHqv2d9PW8dQSxpR13TEFWZGgBX+yuP4e7VK3MgPBQkZGS3rHiG5ccZ8DHLcM4pRG
j3KPJnSQmVZtN5ebZMtn8QYeBWzDcptF0nJJQyarA2fc+rvRx4DDBIq41T7BknZDLjMVZt/UJlZW
ciyJYgxS1+g+xbbQpczfKQVqVSQ/lJuZzNeB0UTXh3D848NrLOWJ7g5qY+qpPtPs+38EBDAqtsWr
PO0bcN34/5podR0Xll4KOPwcBLpy4I50BjpPoqCPckEVmv28pJNpOtYUQaYJjwzY1ILvClN+qozA
ANpAoy+cB1Lt/B6Zf32V0G2c+2cGT+hgKjwKjdCoFNi5YME1iBT49Rfql/ZRrW88bndyvmyg+A+K
Q3lxkLEGqlT1N10xG2VK1RFsQA1PZyrCVMc89JcEailZADKecwLznPAy4DIexnM+A9wKl2l9OVJB
+OdC7DEmpoCqmg7aDjYmG/E/XVio21v6Ge+kEABwp6Tgn/1GSreAofxmeWTQp5WO0Z8lQs5YbVVz
pw5uz3JC9ukbEc1xG20cTiAZFLjRt4vym5yoeNg4x/e4Od86B0NmLODgGsTMqcCGvB12cKIZdxjC
PWceIJ5ttBjUPA2yhpvA61m0ItWDMuHk52Wr5Td9fMVCwzODCjIwg/zO4yqBM4y856QhLr5mf00i
ML/INA5z0AHPQd09M9y3jZwMO/+bGwVrpQk+jtXtB9sxNCuFl3/yPd8fCfHyRsDuYFNVRsGD151b
doRaY8vALViqOEE/VqQehDVNB2NQr9hZtP46yBPlXrQZHfEvNGbb3X8Z4il/FjvGY0dANlR0156w
0pawgpWG1XpJioqwT0eIqSygR7bJNgZF3pGAsB4SoOruGze/GWVlxdNqWajpAHFhpDel/B0uPJM6
xJsGzp+pWJS7+jLE7ytLZ5dBkS7Zehd3B6pgJxDXjQjuY4V+Pmsb+GDNiPxfP/6751XSdVsl+Lm4
M7csRSY5YbYG1ekslDFOOspPzQpkuWSDHwu9vjuG307Wkn1ihA3dh6C2O8ltjtlclV80wAijJv7J
8kakPRR8mOzdpDrp3vCuqqfcQk+ZURfCglnBfTKaOO/w/wFFSuz9iyDCq/hpbGZAbUo9ryYFHMG8
MpzHzTUrEdeazBq6/2SBuhDAeMFt2anvlf3jHItq4ruvlaipaPiSu6MEZu34jSAouVd+X9IfiXH6
E5VSoJdyLeyKv6Hei5ljA3LsHYPcokqsGGT2V5p3GrZn9LnWFQZUWbrE07bSBYikjSjSQhI3FI+S
JWAyJpkzcrQkwyieMVpdATQbg+g1opRb7EHy0t1/RtFpoqDihmZVdM8XEOZKO4N7Jc7p2pV1FqAM
0Jx7dtz84uROOU7rntD9ZRph2H+z+0V04Xmv0lDszVlTZbd0odUaegFnnAkJxSBP8Y+j6xqHS3/4
oNqnLk+Z0JIZ+VNrFVBsHKmHd14Bwz6YWTy3DGprlNxFxjCMNO2LiCd4H1oNJTDQbjzq/L4NYhDX
ohtEx5TCt5/cWFjwzhqQ4kQJWP0HJcIYvwhkkZ+aM9kBgjU+2Pyq9iqSy0pr48qkqM+EGMhC6wKo
ZSMfFjCe0EotEcjTLUu+9gRV5fA2/hDSLDMmTbwcDwzk1KYieEWH9BsESEkUV5xBGTIWwrOP0zG4
2/79F7i9bRcRlTpridnZ1xvzs27q+FbqVYBFq5QOp1fH3/dY0zOZmwbz3ayObBRDQcSXPNyTteM2
OCsxPKdVlR8DX7dl2A9RyQjdFTUO4SA4sPIx9BmdgAye9wIxSrDuezhI+luyhGoELLLlH6J4ET4J
ECBqwpApup8IfZWoqcZmC4WTZwyvhNIrDwzohBoRw1ia9u4oIebbwvewV2hIYAQIQffIYtoq1ISp
4/9Iqu8MzAM/gYZHUBKx9ER/BatlGvAAP89TmLY4UI23BFNekkRWC7tiJw4azWmlwqqJb4Mw4AS9
x9/z8qMZOMtt5ZSwRihzR/Yo4sP2BL5DO5jyraiz/wA0nxwMnK8EYKbHYbZCJqslG1bkvYXXr9Nl
HjzQBBCSx93dGvb9TenBSifClatE68WqtnC6laZ9rYpvHd/Rb7LXc8a+GJyhQADZsSsm5Y9pwQo7
mnASdD5m1vr2rCLf1wuvJVv84Ea0LcXrkd4VH9Iyxn6RXZHuidTmW7BxeOc6sy3ItEAExczl/4to
o0x/m5Tn9+XhQO+Bt2tw/fa4fgLQ2VqRMteQZUGk3ZYCb728UHc1hxSGcQgE2gqIYu6yKRkl41ib
/tr3xcOzdnta440odh4kaCSGWJEHpQKkkrmneTRPzv2sHer+tphs3x1/EhSh1RaXRZskjkMbU6la
3vKUBRwp3a46uS2hnwYQePTxL5h4LJaT7v95WkSX++1GOIMF130cyZJRQ/JIJwzQoL/4jztpy0WV
S3YxSpUDUllDFhD6UkcCaUX59FUbV2KhaZSi1sxQq7uBIU6/CuKiNS80qzqI2qhbNrlDM2Os9N7g
zHVDkIvZN9xaBb+AdySrhg9Ww4RFy82P6UQ0PC3+ck18rY8lcdcIkDm9AsjhDdon7cDQ7seklW3U
5dO10hX+ZsTsONxXa9bGbaDMXnh1Neg/PyMCMZIo9Npbgj1J/rTg0kIPGlwiNHFKNr7OSA6oihnT
RTOhCX584NUbRIR+MPkfZsJ8elSkUJutRJukiShbuWlUJZHQ8oxy6SJGm/sngusTT/sTjW8abhv0
u63Gjx3jzBFH7CNxrsu7kaBbHKKgqqbKKHStzt53f55P5pU3WenQhKJxFD3QT+AaYyQG2hLO3xLn
E9my236dQyEo570PdvlfOAQKBq2rXCAjRahenAghWGFo9DOu9nIrLLMPJocS83ZamrFFujbItM5A
eYSvRi7ho3+fTXp7fU60zvnNrtuaL4LVyQ3fnyAF2am5bnDOSZ+3QV8Xdg29cS1mDyxpSWQXoPvO
an2RAV9J6g/VGNKizlU1z5NZW7n9DxzRh1h3ehKUI/fHnqy0BZTpnT+KJYvn9V2xDuadsCAWrd+r
yp2/8LeXlZ1l3k/hxqRLsvvAOgUuRXsk6d8+I9pZLUqh7YBDgnP8ck/hVL0dRpfQqrAe5ZGN5ssS
lXegryouATH/vevn9oboRBPlTxnSX70+zAkGfgkbYORFHLj7TWIbusFkPCuGFk+EEnw+Gh/dKW8D
AD7XGN+tjwNu4wyUEq40byyquJxH2dCjrnP0GaO3+7WO/D56pyZQN09DwJcrdJWJF53LHbCgnMY6
VAxXq7oCYRZ/8edTVR2teECkpMWy3hPCxPA9soNqh6kzmjoAA6ouHpQLL4WQHBiZ06lJlIXphBkA
DtnIMrsLwZU6YIB1cHxH0jwKYA5qCyIxpiGKAFi8+JsJNIJs+3V/BMyMyjzh7IEpRWmJFnzURV01
VPTFjY9SnaVsgBeH/3nJUNEZsBJhrDC4Yo0gmm0yrA/JaqIeWhFox7RtFYQr695+W5OVqREEgPKu
iOkBl/Cr1VaYV5cva7KPPz0nA67NKE66/N/TAlUSojb18Yr9/9bWFOUFOCWCz0rmzpaJjadIwMj9
0amzHjPNnsFTZza50wx/l4TBzIsFcVEjwjRoT1mZhSPbj/o1EY1512A9rMIdmRRdBwEoNyNVp9ig
gXVUlDSqM/87Qmwks63BI88mvVJTfHfQzgGtSlm7euZOQY5gWeU+ootlxE+1l830n29aMsfl2sMu
zPkSdSmc6nEYbV7atJKRYSMcq6f33RSkqgJbJzhwdUT1TwLhVnd8RTdoDlEAFZgtarA9TMHtrGRY
7djovteBPzOIAK2YMSKSKshOo3zVC/0J/LX37JRDEau/pDdoKjxjyNhXWP6VvoMhZ++bBkbOB2dT
RDbYDxPOO9A3BPHut9EpFA9jBc6DE3mswK2hykcEJG+SwfusZFerZCPfdASmiudj8MueMRTkACYi
oqua7uSE8uIOdGAhOqPOZT+vpbOuN5JZv/3tlwTUTYsaeU28mWcmcauFNk2dKcJxpadYoXodmlGa
+68c1DEt0vDGMLbTO7pcjA+o/qe7ncmku716ZpyIoq5uy9g8WftpK+EbArdRiNkBnFq54kg8tLLE
GCktGkidSXPhUW2kUsUQSOuJLUPQnixzxU72Qa4t1rX+sVRQ33b9yXaHIO8ddCsZiT2g1Tc1dVOn
iC9UkEQJEpAhcsx5gDZrak9a+QiXzGrYWlcYrlpfIjXWvNsvPXmU49GHlhOK1FNT+h4COsAjlaQ8
v5fsgI0k79xNWqRKO6EdhA2K6wosFV5Q+3BWGc4ZWcKaH18xHROK0Sqc4odUeiEP+X5kOd6JT2x5
q9vghzF2EBsOT7yyO5RkvEZj0G95CVcM0I5hY5dLMQ9TP1bJZcstPQfHjAVxpz2htAhTa+OGgTJw
aGJbRTXgw/JpohX3eKI5bA6V6LobkPdRmyvYYIStad/JxP2xunvNcCiUrI0hrM01KtpVMAxw3os6
BqoTiCwvWUeTkXEDbTqpI6WbuFzUJmh4y68UyMP1PM6eITE/CkvZ9B+DjtomKvPjfmY4n8Bhx/Vu
GsS6QYi2Oekz6+bOnAWGCAyY67lBOxhAlZ1V1uN7AROTFwHOB1fxyNafA2ODWrL00WEkIHxO9fAN
402/YlTSpj70/7NiNGqXjsWyWH/vJRcN1gWlYeLHjheRE/A335n4wCvS8J4sKQQGqpBnUCMiO1rR
CQbGmsXWKx5Z8DSX02IXcklAUfuR2MVyEF6UIEmaoqg9O0pEwanYWAxegh4UN/JNtPBwNSPNOdXH
/wh76sv0YABsggTjw6Ax7XePVtwxmrasPRGebLZodA84GPcasKLqJAATNMQEp99jPvbFmjlYMbvi
2G16QMrdJfYhu+6JZfdAJ0UvuHA9PiwegcDYJlr5yX7Dr++W0Ojnl1Zn8d9MTDNQZzz9mvzWTxcn
v6VULzTUXglIIpS4C0uL3A4JJJq94auGE6yULQqb/PGRl17mF+ADiDVFT65hZAJtHdlsXdT0VYfi
Yxz3iwu9Qh6mhJI3Qo/j6uOUEvoEu83v94ihe5j/6fnM39ZIeXSm7cYXUq7Oc+GlYZrck78lommU
1T+h9zFOa1h2kEwrXms3eVL6gQ2RCEP89i0GpXazJZprJLVa0A4UwuNu6D9NktPb7d/S6hHlde79
PGGMQn3ZriVFoKcgcgoS/18RNBJs9UHVG9WBiH9ahRi8zh+Dp0yRNAWpv4mIqydCqXZKt33zXm1q
D73sxt0ls4EjAzQAj0mWiUjFuRfrw5gryzq6pb1GtAzD/9gU/pYX//1RsTYNUFeXku3Ja0xEhhSR
rT6jQ7uqq3nf8OStVyl2+nwWdRdA41SedocKajQxQpjfytNiG2vUjVxHyshkDdmPDxIRZJEHCPdt
8/aHTa55NFpn3vV0Tyb2Jiw2MDDmc37JnuKjy0XfP2rqDqMkU9mB7Ia3TPqvIyf0RKbVY1wkPdrf
S+FM9zH4dXJ0OBUS37ZYInBhlcYjbp2W6V02Uq0fsED7vPkkTCTz1fos+X7ZKITiIneD7D7AJDIx
9U6yHaIjSbKgTqwGcZ7T+9ACtom5UgiUrUn+Rx8nfWVyAEFLF7yHtrh1/5XZlEDJyk8/bmLFX0xz
pwPR3TRVpiKv/JvmH5ndWl8fIQc4NZd0Gqgxe9jJzmj31XvWX2gNl/QYCju8nq2c6eJLsxoQCl0n
GyKkDr/N3IK3ttAqYOwInOZV3wBRQkFR5Iy/8Mz1QQ9LZdKwtbW0fZmMN6rI2ulfrCe8x8slzsVW
y6/r3wSdGXkmZ7+JOAR0dOHMk1VUHCUbMw7w18l1KfK9TDn4GM46QT2ORK+rtuw4mPjWaUrrm/Tp
ugqGvUf93CB59yW2rvK8VQ5AaiqhtQPExkaAJrtjTiCGh6VzCPUQ3N78BdiqDvMwpuedZ8/4gsAK
+FpsygL7Gm1cISb4ivnqHUPb/ORwEPhS6AQVZUx9YX+19kVnLrPz64qiq/F3Hx2QvyXmutivwwzn
8NXl5bsvYzmoX5e7I6HyErqXF5QPs0iVreYK0+DA0p2cA4SSQcgMB6qGM6t46bm3NRe3bwIvQXWi
PMJ5k5D382bctVzRJizEqq97XwfFmomC818fyDSZX8qDV4ZTiaQLjM2Mg9WXRhMimV8sUsypC0xr
f0jrE9pDWKnlqyV4+Py+QS1lZZEtpHIYHgLiw/B6/GOwU2NRnVbX+rvufs3J9m7RbwyKvYd/TgUw
7j/3HcMLWN3kaYNfPsdSf1hKgDk/Uu2zpmu4pDwg7ZOIFNqW0G/Xpdd1iZIuWGwTogGNu2BRZhoe
WpifR0Ak4veHhPSSnznbJ88jQkoutZWKdFA7aXTVJswflMpWXnUI2cZGm0I2ezE1DFI4MMoa0AXx
LQo4GvneHs2mSAse7NV5VZajYR3R/Dq04ct9ADr299xiNO9warbNAEXE3xWH5TteduYZJWdG55zD
8lT8OfV1Tjn7i3imkqyGfOfdv4kM+THiKpmQ+vhEjI6qv7hCerTrSTWrDoS7+Bm+iDLrgKM0tVu2
dDF+mBEkZ0a1jW29wzqV731U2+ytLaaCPPSWlP4vlkX4/EANQevwygpMFMjna40/6uqnYis3OCry
a94ySCpbBLQWUB/oYUzbdcsfub2wCRLLkh9vQ7fYAo7DAbvc9G8LV5sP04Geya6H9sNC2cds9qbT
FMUpoTTjXOyBYUBqMpT6oe0a0xYvV8G+WLaiNNKZ/BUvphChNyv16P1l3hv/QjWCSseLFQcr3MfD
TXnDFgoL5vGwnikrL7J4h6lWG5W4nQ/+XIeD+IopRc3PGobAp4E0HZu1PLOF/GJqPtbM92O5AJOG
O2Pa2d7/ybgvkbrvH25PyMons0lRoa6NQjFw30XCDi/02S5CmdkACvfp+LpqfF7p7RaHZTIp1N76
k2ob709EQ9xCPGpIpdtiE9P8lanZearjY0A9xE2CUOAZgbpyMvnOzxIfxxnpU91w/Y3Q2TCiwhmV
yvPLD4vxw71guCGzY+VVxL1GJl30GU64obyrDeWDgjEw5FV034vDZ8yt0iU5ltgN/oKciJFxZmjh
2AP1GQyq5kMxsOUQdTaBNP5w3JlgZWr2cbNq/nFKwUNzUTRyt1LwnLqO96Vsb9Za+cxO6TA2BnPI
Q/XXBLsQsrg4TkVJGRIhFf+4wgPr9n7zSL9J0c6NYDJ6S+mXKVxc8rYuQKlcbnFpo/hfvJFrZvRq
iZsQ6olDTmc4aWJkPdsW+MxLfqf6FHfCmoD8b4VLOTK/ws6xObvBJAAdL7+jyEPwDdUaV8tIDIor
+Z/9+m4kLzlD+uR4RlMaEuatOxBQSSsVOwcTU1YRTItVXgMvZvy5+k7XK8fDJawcWRtMz+MOE3ye
mRX+GbwThRpC2wIKvHfQUH1Mreso9TN5uFGHoTa0JBdVnq+xETfO0g5vw8BVIgoy94IXhtpPRRbQ
R1m1F76d+xBv++axXStL0VurRZKKqka2ZYWPuncrk9DbcojZmsD7TmUiy++ffASNQM9Ma+k8wZld
/C6gLKUx7/DIocUj+uqIBA3xIVYuWTxkOGHqSXmlPx4XPoNYufBwbCelyHytPlRhV/T+scv5LIvj
kjMIp70ciIRzlLUGzxIrO3c0Cyj9R3Lepjr7HKrSXdeobub/xJuF7GfIf8D8NjAneH5idYLiRfnI
q7BBPZyw4WpMpdW42vsYAkWK8mVEFL6xh5wrsFJl9gfFP4US+52Zo5/pFu9jA71bKeSONsng1aJ1
3OpCliOUNuNOSNehYIK8iC0dY8/SoYRjY31XrtjUB0pKZgk8sj1Zqa+CrJ/9subVIVqlpp8pcGbE
df6y7x4q79QblZxE6z4xw3STRKyoYRtzvQC9gfXHuD25Q+GEzMPyHqQcS7hc6WdXiqLVUVs7S3aI
zJ0G51hzZtKSg1ed4w7dIaf1xty8MsuR99H6Is69zB7I0dsP0659FNMzyIWrZ1kIR/bfDyONy9WW
RTqrWpjheKCLAzZ8gK2E2AJxtAJcxqYuNrYq6vEQksJRxiW8Oxv/nCfnS1/ELftDRzW74vGXrnCT
KE8pPteozcb+u48cLPp6VdOxirf9ssH4S+EIXrK+bB11Bu/IZmfK6ssd5NnIg0+YbPB8DpDCdBDj
zSdFrjp3DhL4zFlBwkJ7Wkv9FxrOOuwk3t6Ww6BrUbAFeNq4rob790aTYrWYlLU1BY/CFTmr384F
YNBWGeC/nNLdxHrh/0u4sdIxL8CiM22JMe8EQx4yQz9owiyEvPGHGYih3glVWEwftVAho/5L9ve6
q6fzDIZ2GufTImHTX61OW1X15mjStZFGZCOCpg3CJsPHj8DSOuXc9seqH2mOOdKK5ZXsXhG0UYXX
7rfVzLIVRm1DskP8+raLeHkZTGOq4RcYNggTqWLPqO0CrsTagUxz8zQJgBIknqC+ayMkPnEecy7x
/duTacizNybpyd1QMtpjdLXwP1h8GFLQgBLnwX/T0L2X3JkJPymtMFmduNmXVXOjfdISVvNHTSXd
Mnspl42H5AEm0qxdvKgkvXgjuCeOO9vmegOGzGKbqXSkc2Fj9h/YN4P6M5sxGEjS+/cGEWRUKLlS
XZ2D8JqGGRLNQC03t1i0je4kcc8jriRK46sAJrQaqZ3nyiv2yeyb/lbGlkeXD9TiJLe1j50Tapjp
ecGWYlHwGKiJydMXgFZqxEOd80Wjn4TCeQO8EflVEkpHJxcjGOp8FZUTt+HWBnEMutdSXzNsMiLv
0+Kb0JvP77mqRPCuAzC/QeZoxWTmdWkdAgoO5yN4r53cVguu+NMJLCbyXWeG6sI2f9bQBJjJjBGW
pLw645O3ZQm5/1gDR/n3ccA+AaIqu//alpTXoxXc6xlkr82/6NdXOV1KAhVS0eorU5UMM2s2c6RC
Fxj4lehq9Dx5cWiv5MdLqZSYq9ZFmwmKgONfAmCLGGMRFnDIeAe3o1pvEIWcRiAevX88YBbPaXX1
JeP6zrCKU6uR/yXM2JR7H33TpVthK5HtRXZiTPC4Rj8fM+tIKYJrTGdGpKOCLNht4UPqHrpCd4QX
6ERgYT7T2sfgKiXEvAf1vJmtJRxS+YT+DFKooDsV1+sW6+yHXbQ0pdzRhoa/FGRBbPkq0PFNq3U4
kd1Z88nHEJLCIP+luGDrjDwqgKff2Etwp8EhY6+4b2rXwn+nXNZrlJpab0vLpkSiqFXCYyvYfj8u
a1imA7arT+acn0xZ6Vg7aKGmjPpVPmnF/UErb+69GsBoON4qx4isf3y9i3wDvrePFejMQqEYXdYT
QT8aO+iELXCp6jokn1QK4FYgYmlwIifEbUT2sil0ltsZWIGQApxOKNkcjdje7TN+VOOGE7XPa3SE
7a2x8HFhLSvqslhxq3p4tPGLMFhxq5oZuHEK1H1I6gEkyUWYsYbAIeILKNngxzKFt2iWDFTm4Jq+
LPupymHYjGcQNzpF1xt+00LoK7kPdj3G12o5BDUkJWm/52D9iuwWWcwvsbwS2POouDJo0C7QbZ0s
Jurd0jrKGCer8hlbUeeUT9U/3aj3dLHECJouuLMWQeNcFVzJZe0DabGHYJ9VXflkUrWNbgZ2TI02
6LzpSlu1P81jH2VDqvaRN3+jJG02DbQFaWuKIcvzypnjGPPyqpGOkwQMGpKqAdQw06SJ3dwpdl7c
tDa8t3sNse5fVAn958NgWb5oWfrXPkEBJ/6wVT0uot3QjHMWNi4mlcPJXVY9WdT16UdGy5e+tspk
fdGSl8Xmbedn23QjV7NSkdHvC+gLQJi15Av4YSelPgDH2v7nGYf8kof7Qnu1WTPGtbQmpTFt6Ecm
paG6r8fZVJovLtcYdSHJrp2FhFyLLbL4886wUAN7Kc+vHJp7lgMzP+SIaSz0PpEUEeVHQemJEu9m
7NM2kNTuvSbuI1w3UT33mwxhCWpbuBoZlY4aCrg6Na8igMmoVFQZjF06D62M00OIIfyLkGJ198Bp
hm3LG6SR/yttGY/QS0q7/K8uX4pKgXx7OfkSmTxTXZeR1MLAYF0h/igN0nrg43zi92Zlf9oIig06
ZF8SF1imAzrZ/wLbP8yM309+0KYOZ+2p+Fg8TMHutTWrVVLavf/5LvvUjJfO9qGyFUpHSK8jPDlG
dNqUewjD+HZxriKoSpYWC442GYRpKX9AB8/Th4JNjjYEgLteCcupr4Ez5majig5eGQ6T/XiXLYNF
YFWvulkCxToz7we2X70teKn6YrQXFdeAVhcGdbJBU5RucwgetLIzoq1K1Vo7gwN0FJsfVFSfATQ+
eDD2sDGUqPVzKvf59i4lS8gnZWwIxUip8joSoCBwahCCoT79v6eT8fAxW+FP4gCVunbTXIbJtJA5
pny4DdONL4yVlDue879Bds/IrTD4oNL0jHk9XE6NvPegUdGUdIDsv7CJLk3I/A9ufHI99f5Fv9Am
wdIsGVejgCmrUTcnlaYL627tSaiT5ZpZtlZnmRgWXOMAL5buILg98gYO1v6SqMamBwBwb5IU6QZr
NHWzEef1K7Ssk7QrT+waH1jFzyDrswP69MrGKqyvcLP/CwJIRC5MX7x5YTeTAlU7l/27AI/93D0s
9ojz9zsT8q82zwh61JpWUDT6PraYh+zcxVB7jQQkiTxFngkTuwggj79YQDHhNc4WpkqvMP89vLFq
ZhTyAhz6VNReFV/gTpQW07UfDMIIZ17bMa2QbrqpjwFz3IfV0KpiKMRK2F0kIfCXG8GOw+9+0oan
7fwFP/mGdBkqIqE/v3vAKputRiS7XKmky+cKVvB3I8UTmvpFJ9qsPiAaU/5dvyiRQOo5GjJxnyXu
EjhqVYnjOXtH1tOLAPBNXHxU8D4stE2NxoebeiBNYt/Jbyn2GoAhEnowenSCElYOdaG7AadGlMGs
PW1PZkmCfe/EOEx/8QqjW5if4PVLeORBLOAJnnPqiYgtbpzpkHo0t3omgJt7JRAn0lyV4LIRRVsZ
C6N8F98MDTo9vuFOlMp3ZDCJPZOfjNHyqyKf8X2wksyzgqKRDv3fQ8LgbDHf62+F2Dk37h8EWtcN
b50W3YApDb1uz/mY2aOVJNmYCvX9uS9qsdiZgKl+wJN9gq6UVwEq6jYRl21mzS1a+G/N0XEo2MwI
nqnd4aWzyEoYKVE3/fAckcm8QDOdLaltwBtUeAoXXiM7BjEGO3EqId4+J06aQ7UTDiCTYnwyXMDW
/nUJmHJLFE4h4Bo5rIMEb2nCzqK+NxE9n0CHTW2c+pe75vKfWZJBxe4lQEh683hQjn3yeRks74AK
8rCpgP62UW1UUi3LzM0bkUGXmzDgnQ3SulncxmGJypouDvLwEDHy3v17+B7rne3UA1mvv4nFnFUq
XBRltB2mdW5+mmE5t7c9T6L3SjL1fqoy0c5l/jsx5Dge1MZN8OYtqj/Ssya+oZsCur08KnJ7U2jp
T+qIg9Fh15gJhhT9nSsIXyhSSXCKnhgmNzodNsd6Ln+9YOAs+ZCKrXwhIhT8l1GdLH9FhCoi2hYs
r52vtbJVsccFTb9+Taj3hy9N7WAn9Qa9ai2FkA4mImKcqQlKUxOo4l48zpkNm24yhW4T8hmHnLiF
SGS/jFR6przEc4fzLR10vCAwGsqhtrmUGQrl1ZK5nbkptc2Df7Bs8+feGjr1kbQewiEbOz9hUKR5
jg244dI79ga1why7MmxiT5HgcyMwOVYTqqOtF/LdAdntjVyLU0CjALLw2uNZG8UxHwL+IK0ENAxu
wltXsVXTOfKmz6kFFL9CE9uBSU8ZjAonxv99QpbqylBT1XgK3UYh9BiKDcTkXoK0tosXf3DFTAge
BEgf3+mLBvrJAav21bcM1hxs51cB5OCmPMVozzA4CmDMgn16k/CpsRaMPwBPJ0shOHOW+SNazEhF
xBq+AAxWGhswRjo+4hXPjZkigb5HLwNYvcv27PZuVRMkwIlzrqxRLRFqZKe/JRKktc44bf4noOWH
xwFo/9/1z6Uk7vNenP3/DjHcAxMcIhospefx602F6pTTUANU0bm/bYF/48ocVfD3wrc0bR08QJHv
uOaYrN+R9Ki+BS8ojZF6npm7uIeJY79KQ+Abe9i/6/es91QJe6uV9gdw8TItjm28EeiDUXlCkw76
fjsWVmN9Y1o8Bb0DSmHfreRw/LPyN0T5d8Fez91LQUVu3UPOLrfDh8ak8jp+t8NqPgpD89SZD28r
QvmBCaNWG0Sr6628TXImmu721kIwQNXLVdjZP/IoUi/9AUhqF909g/7lfb2u7ICypGKfyh1sfRMj
vejSSryg1ZrkEZa56jvwsbOksxghyRH05NCkFU/WCSng+6YEQmLlcCZKVo9rb27Aq5nyncjq2l2j
Qxuwd/QrRBrWalW6NZADs7ZAvYpzn4gN9ObzJGEfyLfEIXYgjT/+iwPLcoofXofRwtpcV/0yeI5q
y+c65EtVqIggrcVS8GdgtfhPxt7PQ2/7gsFvtwyVwYSetybAcxhoWbACexgQ54pmW4lp2bCY4Bdb
UTYAUlDromCM+obm1BS0xPO4Vo7I1vsdteluAahSc5FqoC6doC+jjltnI7ZeYcAkmlm/RvEhbVfc
eYDgWlfObYFWzditKD+1Qh3/u5zGYm+ghVCQx7sWSFfvSG7KvK4biK/Glt3XJK1AdxkU7zFWt1fS
7hHqyscxrOp07ij2n9r5X9wsCzIaQdbR+ioFnKMveW0sYMm6mTU/qEMci2R5vYaMM88USPYWpYo/
MFHtlhbegI/TLMTJlmkmCSO9oezt1tf1FWypKzfxdIB+Jodaq73ZJrFIPYRyKQ8O3jjOWL+tyVf7
egILhdiDzlFuiMO6/q062hZoHKbZJGD27Ue1dRCJJnlM2W5PgJg6j4/vSyymr6F9OCgvc50uvM0n
wWzH1n7VY7XPFGsLV3v5WU60xWG3Q8bw284kj9hcOfIGXHxYff5QBnKy5ueEwBByOoCphiSWhGV9
igYsFh4r0pdOBN3cQi0bTKAH3EnlE5g0ZaPFf4X0dyW3O/SVfMLl3+TijGCxaCxLReyla2yc2D5s
bjX2GT8Uw4y9cWVBp8k+Yo/9fSjtEWZKDcwZ9Y2/M/bHAo3TfeHFloB+iAcqy7VIft6Bcv7Q5oYl
2eG30pc9OnOU2BjUK9RnX70KXI8RBEJwW116fJeEztXHL8H0S3bveIEnwuOfp0geoF9KR+PebuXh
ePIKXkOc2QA5urmcBd7e1GJxFxLL8cv/rOulNjx/doPYk3rPofNXrIJ/YQfChmUEJwLO2U1iefHG
Th0OJbsjtn8WEoE7dPXsVvTiTib+9oz/DSsoA0hv4EfU1ib3ZWCwdT/IBVEn632UgZClTSAukT8N
DzsiWq8rEDDoMnUACM4oHSfxqAuqlfH8a2+Ywzcx8mEz+3eXCqKYZFekkiDFlEsgsVwSxuW9PQgB
ib7hdpLjKXESa9AVlskYKjwpzjDYEaXQ6GOeQtJKc+xrcfF++0jxlFery3SEvz3yrrYAsA/Dh0jl
0OPePUNzTvwS+jcooUADpf8gGqR2tdxmBFuxxhMj68UK+vbhHQ2sngrbpy22gRG+ycTKX+eGTRZw
1mSKNUf3yJ2PAZr2aJFlN9dLrwxGSRi1lIm5k1Awp7+BC/lxnfmDO0H86qJycofECOCe3EO7TFeK
8I9/dlX8sfL8cto6p3BUqZnSRy4xe6aO0lNhCsNKc1PLn+XJPUknZzuL8/Fkd2lOnQVRV7SzmMJ3
uuFFkqMR/pQYnwH5oB5yPPdNJUI/ZTl8bWyxLhYz2vrSEFyWiOiRmIOCD7c2BU5XZX8mGKlJmEuw
BXzCu2MsD6Xe2tD1mZ/Oc/FjAtN9UPx7RWkvi5rbcvf/xI+3OFfmuSZNa8tbZXkEvCHv1wDnGDOB
jhzLjFyIFzNYaD5VClD6Nj7q6WK+uDRKwI0hrJbVK6hGZ/Ot4UPWEJbApDvM7uuIMb3qkI5i71lx
lDqIXzobh/M8UStCHZvy7bePhBwJXAzfk5LvYjLEAearsPFWeABUQ7r+GFkXkPkQPwwj4skCOySx
dKehDztLmO/SvzRyi8eBaXJHgFzouB43euq+7gKT9JYWH5CWjIIqmOp3UzTkV/y3WFdMKT5KeptC
8LIt+1ZtvpVXzs2slyihNb9KxutomJqZhtDV5njDM7kgrzvb3Ei6vA+j05UKF2hWEeRcHePSoSiz
Q4t73TsN/+o6yA/ZX1dlMARsjeRcmYeMm1yxfjSRsRKiG8WObM1EmKsOGGd1gjVZzhTtz5FT1I8U
ucosQ55fybsxJS7ZMw9D+/nyYzLZ5/QQAYLZc1uJX2UIARB9L0ZHuPblCPE5JRrUq5NZJ6a3yOTQ
wEDnfu8XU6Q6kZ5ia5Rsk4NehsmkxFnc4ivM9TO5lARPcvviTjFbR/sCx1JHjeBMke1nqQ4FcVsB
ALx21O+guc4ze7S/w8dSsshtTd4WgI3XrRnBoHlOEEII31/VBT7FWeGeog3chmRzIX/Nvv4pcnNS
2N+QydFQYnHatAKXOhz5WAcTE4JFJqa84OCCfBU827EgsIS+0PmC79fabRB8JGRSURt08WamCRiL
65JEF6uwryr/S9PYlEFbUXqG0iacjXUHz0oDwGZ/yjvQMhsSBQNTihWOLDQCrtOLagnPtWyCvfex
5NvckEqJpBr/C8I/FB+wpXKX2LZlo0RnzxUN5/lUggeOf9GVoq8bXqB4fMR+d43XLcoX6eyU5GGJ
SrimnjsONkwp2XQPxQNIDfiAOgREJ+SgI9vknIFP2J0lRsDn3A0Zt3gGV6RjMYmYwshYvsstB3gw
QMFjgsqm9JJ8fyGX1XUAlQqbUBOk0K/Y3U6ADKrcCC+o2cOOSdTvur8rD/Oplsz6AZ+Z0F5b0Lme
bguPWnr6t8IWqm17cfHelDqZCr7Cmn8Ftjo62H7Z+ogQD+g9kqbSauBBdc4zxEBwSCTXVgJjGQ4G
1rL2v4/qltE2gDiwaEEc43BOYdWIlN7JUt4v4f1UNj7UvPDUygVPruQJbToboC4S7EBAJG0G39Cw
4ScLZlKAQdDb0/6cVhFTCCwaCwiLKACthyBTlZy4HwhVnS+JWZvYW1DoAGKoNgHq9NoU0w7aA9H4
UXjfnquArBiRqhid7bb8ttVmkC3Op9HqVbWVa2r+lnBQ7IwLl+5h+xivg9VPBThj7CxEvrxjxJ9w
ufwfeIz8YBYSS3+21xPs1b6sTlWZOzzDN5uS6etNAAexUHxRyE8QoVWDWw7hFbBQggHaCkTZPXJ+
tyDLp3slKnCY3r2zsVJl/KdqcMQ+8Slbwv3b6TF4sttA5Tz+WAfPm8Ai/NyEZivYz4zipdw2CanM
vq/4F8TpH4MX2M+mDk3CE13OXcZfcFqmFqcdWArMQAIZoyc4rUo91qG56Bmj0xuT3TgvpLNrGhgg
YVxwGIXA6nPMMyFRmzuJ3NdnARz3Todw4UPoMPmit0JVQMukUbTkva3a92WnX03ELcpFKdJ80ufQ
sDdcnOUS9XS1R4/VkvwvhkyozfRTSBTEdJORRugXW+1NNs2QQ5DGr+/RXcaUMg+l+mx3YT8sHBQ6
dBvdQnSz8iGuwxf/lnXAVQlGY9QvoGfekFDv0TUPc4L3uElpTZ6YjoHpiFUGF/BTivrhDMclO5Dh
6xlzpwdNJbYV4Y1dGOlie6o+bAuSu+LF2iw2SG5MWDXEGgdRGDvomh/BGPAoyK/TOX0BIoirEmSG
9fR34+OQOMPBT90SQBiIbx6mfgYO76ZyTdXUwTpIv2Wl4tD5D72ZlhWN5CJEbOFswPNz5ztgW7Ox
nwkldUA1dpsn9tOOEN+56XiNH2g+GAfFbcCd97onu9tngDxyvOJjs3yTR0iT2CConKLDeronl3Ta
68eYpR4BALCtWJZXXrmVk/KhXcw3fmMDXat6wsqfLPTTBfGam8/YBqh5ZImO5N/vPJ/t9RBKX8QI
LyyUtwTQcv+1q2xUBP2leD22AUX+uabw+GIK8Y7aktqYVjhpbXafm4G4QsS64VSL7Zx8P8QxdNBO
HXfkaizEOBUgCa6xE3YqTpNOU0VXVLjwzEksP2Vgnyp5UlWWKrNurjCPM5390AdCscAIuo5UE64D
iA56pDYBjlcb/mN43exc/IR+1X5wO5jeoyToN1Y80mysvz1dkte1rwSJ8tQusjMoJR/j7gxzqzJ3
5xijpCB0BgOZFmluW7XJnZn3UWdXFXj2o4N0Il6tDn4EHcKOWMghH6Yc1D9fh0HRuJEDQmSKZ6GQ
ltPTFPsY8kl2OfytFYFMfRn7rWWvAiij/Ps3subwiRSFXWL3P0tL0uuOyAZriSf9Xg9IcDz7C4AD
HLI+yE42E1AqTXTZTLzpVNYbY5mhQvfAVePzWrzEQPw4q/dRAX5vzSZuBMSgyZet7kdPTAslIR4V
dAZXrVGq8GTF6Uvvc2GnXv3ZVpCaYTCr75UI7gsoJ1uGkQAANKWLmr6G2kl98Zs/WBw3KQO/pmPH
ht5vSbFgi8lEAxSusviU9u25zVpHtLCC8ilULSRm5ghDBvgo7Q7Qhqo5IJFlrW17gJn+KscU8zsu
XW//Pfl/j7K2dOtxNUJZgimcQfwXCb71tm8ZcZzNvk1ZGil5iQciba2sOHMPb/7FzzKG47IUrT+V
YJ6Oen93wUfLAgtSEONUAV/l8c0kOkfpyOVsJjs81AQq/6DeZthCoi/GaaYwDals2wI9xdgMIekc
8TA4ON6WP16lh+M/kuHP0L38K2j1muo9vT0dbtApyyz+VqvdX4RUDSTXTixgGgXqnYwfWWNPjHwN
necxFPn88rPBsNlTmrWy3SuTw/NH4ExAn8B7HZE9jsytcMPnAMD0FlR4av9UEwp5QnPVjhXWeZcd
l+c8VMIHKgxaGR2NSOsKn4hhis6Z0sHeSMnEWdftWB5LaicU4KgBhNQDmHSA4yr2MCYbjLFYXJKE
CdoFmE/3C+t7aYljueSrHLwS7/+La0tsbhCqArG8MaEcM02x6mqR/EryyAqt4KiEBN9JW4SpIAQ6
SzTzS9RxxYRqtR1Iey9s6lDyA4AKBswcnBfDg5WTMkHf2YmzErfvHfS2MUvtEExCbXBozvJPhoK+
PgVHoyl+b7Z8MA5vuId4vawp1cGL52DDX1GrBVFNupQ7J97Y+8xzvJl4PdGqdqzV1gLGEIE2SkLA
38AbWkNfehZQGhvJreHs/IbOSr9X24l/sFEB+kjIiD3FQtRVXwnd0cZbT4IWZXUASI8oQLpEHLc8
8o0kN8emau1sC9qtffzVKUDNQfDwrxr8QcmFyVdkpf2Q7vAvemomnDVg3sjc8blkFclJ1YPKb/v2
PKyjgyKnqnEAayhPezWw+8C5lu+bQIy/wU6hXTNmBmu3JQmKXql3Q4v5WIuHV5/omMaBCvb2joep
7V0zmkp0r8j6g/xLplgnYyvn5EflZo3cU9LQZkK6ez8Ox8qp7768QcyhteoxbLZpi9VW/+Sznyad
Y/Pp+kW7l1ax53E2WXIv9+/mzUXNlibD0jl5kdVLXAOwPqVXa2rX8xd/lDwYjWaKEoDtFJLC1qTp
bcqRr1rW6zM4psCopYiTx/NC785GNq/2XNpw9xj0+kRJXVTqXasMqq0cWLDiHAmOukb6g2A8YoJK
CE6/ppTUDKvgJH6aRYFnqbEXBiPncuBCA0TwUjpqVbIG22tA+lCB+PoGP5boJeOmWeuuJQAoXVWr
0+ObPtAAHVfFDAvzIx6tr0yEoTdJQtWU1sNb7m/ff1cZxUDSf/9WeiUlQf3l9qVDIBx/VQ3IP9y/
DCUowStWIrxCb9cl+ihVvIKh/bAxtn6rwJdeVDKwr/P7B3Ijdag40YUbdF00iAJsoJQnfKEjrwG6
rITDOzVArL95RoNHaEuYNfEWOxCe6oEOaXR8bHo4HH5jGcoOVqsrRvXilQijxLe5nh6rzAD/Z/5C
fnmW5wUVjBlY4xRQKYY2gPHRLiMPvAeZpssRVBoaiSZmOQYvg0zDks9Kqmbiyu/h3EE6s/Yn7odo
me17Y5sGq+B+YOjsVSzz7VqLM69NCiLrJiRFXoz+1XjtGhgXGXyqkOKtzcDm9G326pyC9xqVt2nU
oMPVutywz7DVaP+qhee5s11My/yaNNLPCXfSeLl9yoFsBz+kvfOVb5Bk1rzunqOpsnlLVbHRgGqK
O6033iT7vsMGgSJK9kvftUz6rNawx4YYWuElTe3yXPbK9S5vT9kui2ziHvfr4lm+9/bYCV/gTagM
ogLraQMlaBBgY1L16E23+RyJ6yteTQarv5NWvTcu3MrhxuEBkCGSGHDLyOCKHDGNs6jCZ8DP/RhL
pkarNIK8mPMQJtk1iGlMpeVn+/XqCiR0KWbg6U6o8xTCywYa7WFXEyIO8WBc1nQnUXWWoMelNJob
bPIUNG7pU/sPh83XlB0IaPNyfsVas+OMYc4l48EgNODxfYsL0Oa55TrLGAROU3BdbpKS75Q7qTXt
Z4yEMUBs4hAh4WzBd6LAxvTZXzWA/heFHyQLpfCegz9u9IIJdzsp/e/zG6rm73AcahX/kWgDy2MB
RYQXZ+xhC/LCG7WzNOt2xi23vUV39+tlCs2rIA2v7YIILW1pp7NyvT1h5VRBm8tto5VJoHxbE/9g
dn6QuHW1X0JUIT1rp6nisYs4EN3ZUu7WZe5JIDezxQLtsFbXX5Hiad7J6NsGYBHNUOSsulBnAvdX
FtklE0xockrbf4WprL7H3gHdjgNCmPDztBtT09ORZCP9PnsaXIPVnbPcxIF5GhF0iKVxlzhnDc4W
36AOeq4WlsIR+tO0Awp20iBIQf1N5BbQ+vo1ecWTTmsTgtgI1a9RqTSpk5lM+znASnIYi4i9eLfi
9cslBe3u4EHFh4NKRG4QiC994PK1mxpDKCvrPCuRlKewGdEL62/Eg02n5JHUritWXKC7tjX9jaga
mgeW4xBtH3oKy7pdPHhiOU4Y1VQf7dx9wAZVZKkrOjCn5lmwPSTqE0YfBfdg8adOwVcw4CIP/1nd
kEtAgiVq8upezOavpAgHZ4iR4566wERg82tNnRwg5/Xd1jTLE/UFF9XUyyJUuZnS7Ct74xh0cvKk
Hix6AX+TUz2dP2Eka1ZxBrOATt9zXuLVklCfcrPArhv59bavJ+UngfCe+OQHfFrqw0oQRyUcQPBc
S9Tit8x70zHnNCABvFTp2BUqQW0M7fri/yAmJoWtxISkc06PdMXOpC+iSBseovxROEzmZAYdCtF4
WaZLAiblxkMT8Ey3mACoS4HMU+3EbgqT2zoeQ2p7euBTQnEJk1Nv2wDjHGfKk/pR/ylXQjlQWIMU
zHrALBnnKmifsxQcXAMEAeB+7HsebW3oZNj/ziAnOFkGqN5XX1kp5H/mDEqf4nja780aSasjvMY0
lyyVXsUcAgo/S6pHj9QUeFjUDCLBy9C/O8jhUI/xoyYjeUSR1tePMn3K86t+0PxXdVQxO1JN2ofP
/mwyV0nd5oTxbL0+DEW9aPASRhYla2k/MruWh5JExP/m9lvIxx3sv3ybPXgI0YMa0hds3PposPxx
EuLx9T5MXVSOwm2TEIWTQSfEpQvJU6Psx5kRTCwVd+NlhGTRFIlxQJK4wyFaf7hoXFS+4weTWsLY
B/O3nBDrQ8KYDgI4DRx8Oc5rbz9S3JoyptC/zKU1F6PeZfiFu1RFOE11Npzxl2Y9adqcZqr6CuzY
k+jEy5gPecaf5TNz9XXWq/hDOw25LlQjyd81dSB+qxAWNCOs0sMMOZPIb7NuqERMQxLQSNPg9O0M
786Sg0EECuvMnD2yN+UqRM346sX4J+CGR2aIjED/T4K+KmWlhpGEX66mukiMTqLGsqRndu+gGHa+
yGPkqz4T2QXuhjXRb9QkQIWujo52oZkn99jj24sGo0NLNbDb/U6ZkJVRoaBR9ivxMU2oI8f2ncv3
KzvzcgM62rIHU+NfkH8r/h+NlL6sxfHvWbQUpL56bxJojbnvyjxIffAwlHbzR6DtsGl0etzvQQGy
kUBKWYbvopqcwrzFg8WFYFt4klUq3YqLqzUpDi6syRdokMoqRtTCsxY5xRI6AHyr/UKMfqb8UwMS
lkIRdlrhI8JYmC9SQVH4wMaUx2p4Xb7IZSRbU1yu1QwM9bKZgSb6NZ1p5NrVyQ4BGyRslVkJt6d7
Z6lCZPB20zf7RYoyn6NAb9zEH6XVaqXJ5XTyPqnusJB0Cm8a+anev8eq1+CCG9nyUe79cgr/adN/
Zu5PnwahHZeKpqRXv0yzh1XN25oKPwaVcoOwbQ/HYJw6Q9SNzDZIRkq+sHmz/c9WZEG3yNkFk90v
CpcXUoVVoMwFjbCInyKDAC6n/tEbwYi6H0wum3iKLK8aWfIorRqBMYeFaQRDtDO9VEIsPOvtuezS
pHAS50jVfFFjHykv0GZPS2BrEC1YLhHYc5W2QX8IawlcpbKb9yVEFFUdWSiUtSGHHlEo0kzaXZJy
Lg==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_GTWIZARD_GT is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    gtpe2_i_0 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gtpe2_i_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_gttxreset_in0_out : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gt0_rxuserrdy_t : in STD_LOGIC;
    userclk : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txuserrdy_t : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_sync5 : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_GTWIZARD_GT;

architecture STRUCTURE of gig_ethernet_pcs_pma_GTWIZARD_GT is
  signal DRPADDR : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GTRXRESET : STD_LOGIC;
  signal gtpe2_i_n_0 : STD_LOGIC;
  signal gtpe2_i_n_1 : STD_LOGIC;
  signal gtpe2_i_n_102 : STD_LOGIC;
  signal gtpe2_i_n_104 : STD_LOGIC;
  signal gtpe2_i_n_105 : STD_LOGIC;
  signal gtpe2_i_n_14 : STD_LOGIC;
  signal gtpe2_i_n_28 : STD_LOGIC;
  signal gtpe2_i_n_29 : STD_LOGIC;
  signal gtpe2_i_n_39 : STD_LOGIC;
  signal gtpe2_i_n_40 : STD_LOGIC;
  signal gtpe2_i_n_43 : STD_LOGIC;
  signal gtpe2_i_n_48 : STD_LOGIC;
  signal gtpe2_i_n_49 : STD_LOGIC;
  signal gtpe2_i_n_50 : STD_LOGIC;
  signal gtpe2_i_n_51 : STD_LOGIC;
  signal gtpe2_i_n_52 : STD_LOGIC;
  signal gtpe2_i_n_53 : STD_LOGIC;
  signal gtpe2_i_n_54 : STD_LOGIC;
  signal gtpe2_i_n_55 : STD_LOGIC;
  signal gtpe2_i_n_56 : STD_LOGIC;
  signal gtpe2_i_n_57 : STD_LOGIC;
  signal gtpe2_i_n_58 : STD_LOGIC;
  signal gtpe2_i_n_59 : STD_LOGIC;
  signal gtpe2_i_n_60 : STD_LOGIC;
  signal gtpe2_i_n_61 : STD_LOGIC;
  signal gtpe2_i_n_62 : STD_LOGIC;
  signal gtpe2_i_n_63 : STD_LOGIC;
  signal gtpe2_i_n_64 : STD_LOGIC;
  signal gtpe2_i_n_65 : STD_LOGIC;
  signal gtpe2_i_n_66 : STD_LOGIC;
  signal gtpe2_i_n_67 : STD_LOGIC;
  signal gtpe2_i_n_68 : STD_LOGIC;
  signal gtpe2_i_n_69 : STD_LOGIC;
  signal gtpe2_i_n_7 : STD_LOGIC;
  signal gtpe2_i_n_70 : STD_LOGIC;
  signal gtpe2_i_n_71 : STD_LOGIC;
  signal gtpe2_i_n_72 : STD_LOGIC;
  signal gtpe2_i_n_73 : STD_LOGIC;
  signal gtpe2_i_n_74 : STD_LOGIC;
  signal gtpe2_i_n_75 : STD_LOGIC;
  signal gtpe2_i_n_76 : STD_LOGIC;
  signal gtpe2_i_n_77 : STD_LOGIC;
  signal gtpe2_i_n_78 : STD_LOGIC;
  signal gtpe2_i_n_8 : STD_LOGIC;
  signal gtrxreset_seq_i_n_1 : STD_LOGIC;
  signal gtrxreset_seq_i_n_10 : STD_LOGIC;
  signal gtrxreset_seq_i_n_11 : STD_LOGIC;
  signal gtrxreset_seq_i_n_12 : STD_LOGIC;
  signal gtrxreset_seq_i_n_13 : STD_LOGIC;
  signal gtrxreset_seq_i_n_14 : STD_LOGIC;
  signal gtrxreset_seq_i_n_15 : STD_LOGIC;
  signal gtrxreset_seq_i_n_16 : STD_LOGIC;
  signal gtrxreset_seq_i_n_17 : STD_LOGIC;
  signal gtrxreset_seq_i_n_18 : STD_LOGIC;
  signal gtrxreset_seq_i_n_2 : STD_LOGIC;
  signal gtrxreset_seq_i_n_3 : STD_LOGIC;
  signal gtrxreset_seq_i_n_4 : STD_LOGIC;
  signal gtrxreset_seq_i_n_5 : STD_LOGIC;
  signal gtrxreset_seq_i_n_6 : STD_LOGIC;
  signal gtrxreset_seq_i_n_7 : STD_LOGIC;
  signal gtrxreset_seq_i_n_8 : STD_LOGIC;
  signal gtrxreset_seq_i_n_9 : STD_LOGIC;
  signal NLW_gtpe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtpe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_gtpe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute box_type : string;
  attribute box_type of gtpe2_i : label is "PRIMITIVE";
begin
gtpe2_i: unisim.vcomponents.GTPE2_CHANNEL
    generic map(
      ACJTAG_DEBUG_MODE => '0',
      ACJTAG_MODE => '0',
      ACJTAG_RESET => '0',
      ADAPT_CFG0 => B"00000000000000000000",
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0001111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CFOK_CFG => B"1001001000000000000000001000000111010000000",
      CFOK_CFG2 => B"0100000",
      CFOK_CFG3 => B"0100000",
      CFOK_CFG4 => '0',
      CFOK_CFG5 => B"00",
      CFOK_CFG6 => B"0000",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_COMMON_SWING => '0',
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 36,
      CLK_COR_MIN_LAT => 33,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0110111100",
      CLK_COR_SEQ_1_2 => B"0001010000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0110111100",
      CLK_COR_SEQ_2_2 => B"0010110101",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "TRUE",
      CLK_COR_SEQ_LEN => 2,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CLK_PHASE_SEL => '0',
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "FALSE",
      ES_HORZ_OFFSET => X"010",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CLKRSVD0_INVERTED => '0',
      IS_CLKRSVD1_INVERTED => '0',
      IS_DMONITORCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_SIGVALIDCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      LOOPBACK_CFG => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_LOOPBACK_CFG => '0',
      PMA_RSV => X"00000333",
      PMA_RSV2 => X"00002040",
      PMA_RSV3 => B"00",
      PMA_RSV4 => B"0000",
      PMA_RSV5 => '0',
      PMA_RSV6 => '0',
      PMA_RSV7 => '0',
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 8,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"0000107FE106001041010",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"001001",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPMRESET_TIME => B"0001111",
      RXLPM_BIAS_STARTUP_DISABLE => '0',
      RXLPM_CFG => B"0110",
      RXLPM_CFG1 => '0',
      RXLPM_CM_CFG => '0',
      RXLPM_GC_CFG => B"111100010",
      RXLPM_GC_CFG2 => B"001",
      RXLPM_HF_CFG => B"00001111110000",
      RXLPM_HF_CFG2 => B"01010",
      RXLPM_HF_CFG3 => B"0000",
      RXLPM_HOLD_DURING_EIDLE => '0',
      RXLPM_INCM_CFG => '1',
      RXLPM_IPCM_CFG => '0',
      RXLPM_LF_CFG => B"000000001111110000",
      RXLPM_LF_CFG2 => B"01010",
      RXLPM_OSINT_CFG => B"100",
      RXOOB_CFG => B"0000110",
      RXOOB_CLK_CFG => "PMA",
      RXOSCALRESET_TIME => B"00011",
      RXOSCALRESET_TIMEOUT => B"00000",
      RXOUT_DIV => 4,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"C00002",
      RXPH_MONITOR_SEL => B"00000",
      RXPI_CFG0 => B"000",
      RXPI_CFG1 => '1',
      RXPI_CFG2 => '1',
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RXSYNC_MULTILANE => '0',
      RXSYNC_OVRD => '0',
      RXSYNC_SKIP_DA => '0',
      RX_BIAS_CFG => B"0000111100110011",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 5,
      RX_CLKMUX_EN => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"1010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"00000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"1111",
      SATA_BURST_VAL => B"100",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SATA_PLL_CFG => "VCO_3000MHZ",
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "2.0",
      TERM_RCAL_CFG => B"100001000010000",
      TERM_RCAL_OVRD => B"000",
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOOB_CFG => '0',
      TXOUT_DIV => 4,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPI_CFG0 => B"00",
      TXPI_CFG1 => B"00",
      TXPI_CFG2 => B"00",
      TXPI_CFG3 => '0',
      TXPI_CFG4 => '0',
      TXPI_CFG5 => B"000",
      TXPI_GREY_SEL => '0',
      TXPI_INVSTROBE_SEL => '0',
      TXPI_PPMCLK_SEL => "TXUSRCLK2",
      TXPI_PPM_CFG => B"00000000",
      TXPI_SYNFREQ_PPM => B"001",
      TXPMARESET_TIME => B"00001",
      TXSYNC_MULTILANE => '0',
      TXSYNC_OVRD => '0',
      TXSYNC_SKIP_DA => '0',
      TX_CLK25_DIV => 5,
      TX_CLKMUX_EN => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"000000",
      TX_DEEMPH1 => B"000000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0',
      USE_PCS_CLK_PHASE_SEL => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD0 => '0',
      CLKRSVD1 => '0',
      DMONFIFORESET => '0',
      DMONITORCLK => '0',
      DMONITOROUT(14) => gtpe2_i_n_48,
      DMONITOROUT(13) => gtpe2_i_n_49,
      DMONITOROUT(12) => gtpe2_i_n_50,
      DMONITOROUT(11) => gtpe2_i_n_51,
      DMONITOROUT(10) => gtpe2_i_n_52,
      DMONITOROUT(9) => gtpe2_i_n_53,
      DMONITOROUT(8) => gtpe2_i_n_54,
      DMONITOROUT(7) => gtpe2_i_n_55,
      DMONITOROUT(6) => gtpe2_i_n_56,
      DMONITOROUT(5) => gtpe2_i_n_57,
      DMONITOROUT(4) => gtpe2_i_n_58,
      DMONITOROUT(3) => gtpe2_i_n_59,
      DMONITOROUT(2) => gtpe2_i_n_60,
      DMONITOROUT(1) => gtpe2_i_n_61,
      DMONITOROUT(0) => gtpe2_i_n_62,
      DRPADDR(8 downto 5) => B"0000",
      DRPADDR(4) => DRPADDR(4),
      DRPADDR(3 downto 1) => B"000",
      DRPADDR(0) => DRPADDR(4),
      DRPCLK => gtrefclk_bufg,
      DRPDI(15) => gtrxreset_seq_i_n_2,
      DRPDI(14) => gtrxreset_seq_i_n_3,
      DRPDI(13) => gtrxreset_seq_i_n_4,
      DRPDI(12) => gtrxreset_seq_i_n_5,
      DRPDI(11) => gtrxreset_seq_i_n_6,
      DRPDI(10) => gtrxreset_seq_i_n_7,
      DRPDI(9) => gtrxreset_seq_i_n_8,
      DRPDI(8) => gtrxreset_seq_i_n_9,
      DRPDI(7) => gtrxreset_seq_i_n_10,
      DRPDI(6) => gtrxreset_seq_i_n_11,
      DRPDI(5) => gtrxreset_seq_i_n_12,
      DRPDI(4) => gtrxreset_seq_i_n_13,
      DRPDI(3) => gtrxreset_seq_i_n_14,
      DRPDI(2) => gtrxreset_seq_i_n_15,
      DRPDI(1) => gtrxreset_seq_i_n_16,
      DRPDI(0) => gtrxreset_seq_i_n_17,
      DRPDO(15) => gtpe2_i_n_63,
      DRPDO(14) => gtpe2_i_n_64,
      DRPDO(13) => gtpe2_i_n_65,
      DRPDO(12) => gtpe2_i_n_66,
      DRPDO(11) => gtpe2_i_n_67,
      DRPDO(10) => gtpe2_i_n_68,
      DRPDO(9) => gtpe2_i_n_69,
      DRPDO(8) => gtpe2_i_n_70,
      DRPDO(7) => gtpe2_i_n_71,
      DRPDO(6) => gtpe2_i_n_72,
      DRPDO(5) => gtpe2_i_n_73,
      DRPDO(4) => gtpe2_i_n_74,
      DRPDO(3) => gtpe2_i_n_75,
      DRPDO(2) => gtpe2_i_n_76,
      DRPDO(1) => gtpe2_i_n_77,
      DRPDO(0) => gtpe2_i_n_78,
      DRPEN => gtrxreset_seq_i_n_18,
      DRPRDY => gtpe2_i_n_0,
      DRPWE => gtrxreset_seq_i_n_1,
      EYESCANDATAERROR => gtpe2_i_n_1,
      EYESCANMODE => '0',
      EYESCANRESET => '0',
      EYESCANTRIGGER => '0',
      GTPRXN => rxn,
      GTPRXP => rxp,
      GTPTXN => txn,
      GTPTXP => txp,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => GTRXRESET,
      GTTXRESET => gt0_gttxreset_in0_out,
      LOOPBACK(2 downto 0) => B"000",
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDOUT(15 downto 0) => NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtpe2_i_PHYSTATUS_UNCONNECTED,
      PLL0CLK => gt0_pll0outclk_in,
      PLL0REFCLK => gt0_pll0outrefclk_in,
      PLL1CLK => gt0_pll1outclk_in,
      PLL1REFCLK => gt0_pll1outrefclk_in,
      PMARSVDIN0 => '0',
      PMARSVDIN1 => '0',
      PMARSVDIN2 => '0',
      PMARSVDIN3 => '0',
      PMARSVDIN4 => '0',
      PMARSVDOUT0 => NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED,
      PMARSVDOUT1 => NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXADAPTSELTEST(13 downto 0) => B"00000000000000",
      RXBUFRESET => '0',
      RXBUFSTATUS(2) => RXBUFSTATUS(0),
      RXBUFSTATUS(1) => gtpe2_i_n_104,
      RXBUFSTATUS(0) => gtpe2_i_n_105,
      RXBYTEISALIGNED => gtpe2_i_n_7,
      RXBYTEREALIGN => gtpe2_i_n_8,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => '0',
      RXCDRLOCK => NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(3 downto 2) => NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED(3 downto 2),
      RXCHARISCOMMA(1 downto 0) => gtpe2_i_3(1 downto 0),
      RXCHARISK(3 downto 2) => NLW_gtpe2_i_RXCHARISK_UNCONNECTED(3 downto 2),
      RXCHARISK(1 downto 0) => gtpe2_i_4(1 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(3 downto 0) => B"0000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(3 downto 0) => NLW_gtpe2_i_RXCHBONDO_UNCONNECTED(3 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1 downto 0) => D(1 downto 0),
      RXCOMINITDET => NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gtpe2_i_n_14,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(31 downto 16) => NLW_gtpe2_i_RXDATA_UNCONNECTED(31 downto 16),
      RXDATA(15 downto 0) => gtpe2_i_2(15 downto 0),
      RXDATAVALID(1 downto 0) => NLW_gtpe2_i_RXDATAVALID_UNCONNECTED(1 downto 0),
      RXDDIEN => '0',
      RXDFEXYDEN => '0',
      RXDISPERR(3 downto 2) => NLW_gtpe2_i_RXDISPERR_UNCONNECTED(3 downto 2),
      RXDISPERR(1 downto 0) => gtpe2_i_5(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtpe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtpe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFOVRDEN => '0',
      RXLPMOSINTNTRLEN => '0',
      RXLPMRESET => '0',
      RXMCOMMAALIGNEN => reset_out,
      RXNOTINTABLE(3 downto 2) => NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED(3 downto 2),
      RXNOTINTABLE(1 downto 0) => gtpe2_i_6(1 downto 0),
      RXOOBRESET => '0',
      RXOSCALRESET => '0',
      RXOSHOLD => '0',
      RXOSINTCFG(3 downto 0) => B"0010",
      RXOSINTDONE => NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED,
      RXOSINTEN => '1',
      RXOSINTHOLD => '0',
      RXOSINTID0(3 downto 0) => B"0000",
      RXOSINTNTRLEN => '0',
      RXOSINTOVRDEN => '0',
      RXOSINTPD => '0',
      RXOSINTSTARTED => NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED,
      RXOSINTSTROBE => '0',
      RXOSINTSTROBEDONE => NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED,
      RXOSINTSTROBESTARTED => NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED,
      RXOSINTTESTOVRDEN => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => rxoutclk,
      RXOUTCLKFABRIC => NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => reset_out,
      RXPCSRESET => reset,
      RXPD(1) => RXPD(0),
      RXPD(0) => RXPD(0),
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => '0',
      RXPMARESETDONE => gtpe2_i_n_28,
      RXPOLARITY => '0',
      RXPRBSCNTRESET => '0',
      RXPRBSERR => gtpe2_i_n_29,
      RXPRBSSEL(2 downto 0) => B"000",
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtpe2_i_RXRATEDONE_UNCONNECTED,
      RXRATEMODE => '0',
      RXRESETDONE => gtpe2_i_0,
      RXSLIDE => '0',
      RXSTARTOFSEQ(1 downto 0) => NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED(1 downto 0),
      RXSTATUS(2 downto 0) => NLW_gtpe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYNCALLIN => '0',
      RXSYNCDONE => NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED,
      RXSYNCIN => '0',
      RXSYNCMODE => '0',
      RXSYNCOUT => NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED,
      RXSYSCLKSEL(1 downto 0) => B"00",
      RXUSERRDY => gt0_rxuserrdy_t,
      RXUSRCLK => userclk,
      RXUSRCLK2 => userclk,
      RXVALID => NLW_gtpe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      SIGVALIDCLK => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TX8B10BBYPASS(3 downto 0) => B"0000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1) => TXBUFSTATUS(0),
      TXBUFSTATUS(0) => gtpe2_i_n_102,
      TXCHARDISPMODE(3 downto 2) => B"00",
      TXCHARDISPMODE(1 downto 0) => gtpe2_i_7(1 downto 0),
      TXCHARDISPVAL(3 downto 2) => B"00",
      TXCHARDISPVAL(1 downto 0) => gtpe2_i_8(1 downto 0),
      TXCHARISK(3 downto 2) => B"00",
      TXCHARISK(1 downto 0) => gtpe2_i_9(1 downto 0),
      TXCOMFINISH => NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(31 downto 16) => B"0000000000000000",
      TXDATA(15 downto 0) => Q(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => B"1000",
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => TXPD(0),
      TXGEARBOXREADY => NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => '0',
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => txoutclk,
      TXOUTCLKFABRIC => gtpe2_i_n_39,
      TXOUTCLKPCS => gtpe2_i_n_40,
      TXOUTCLKSEL(2 downto 0) => B"100",
      TXPCSRESET => '0',
      TXPD(1) => TXPD(0),
      TXPD(0) => TXPD(0),
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPIPPMEN => '0',
      TXPIPPMOVRDEN => '0',
      TXPIPPMPD => '0',
      TXPIPPMSEL => '1',
      TXPIPPMSTEPSIZE(4 downto 0) => B"00000",
      TXPISOPD => '0',
      TXPMARESET => '0',
      TXPMARESETDONE => gtpe2_i_n_43,
      TXPOLARITY => '0',
      TXPOSTCURSOR(4 downto 0) => B"00000",
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => '0',
      TXPRBSSEL(2 downto 0) => B"000",
      TXPRECURSOR(4 downto 0) => B"00000",
      TXPRECURSORINV => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtpe2_i_TXRATEDONE_UNCONNECTED,
      TXRATEMODE => '0',
      TXRESETDONE => gtpe2_i_1,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYNCALLIN => '0',
      TXSYNCDONE => NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED,
      TXSYNCIN => '0',
      TXSYNCMODE => '0',
      TXSYNCOUT => NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED,
      TXSYSCLKSEL(1 downto 0) => B"00",
      TXUSERRDY => gt0_txuserrdy_t,
      TXUSRCLK => userclk,
      TXUSRCLK2 => userclk
    );
gtrxreset_seq_i: entity work.gig_ethernet_pcs_pma_gtwizard_gtrxreset_seq
     port map (
      D(15) => gtpe2_i_n_63,
      D(14) => gtpe2_i_n_64,
      D(13) => gtpe2_i_n_65,
      D(12) => gtpe2_i_n_66,
      D(11) => gtpe2_i_n_67,
      D(10) => gtpe2_i_n_68,
      D(9) => gtpe2_i_n_69,
      D(8) => gtpe2_i_n_70,
      D(7) => gtpe2_i_n_71,
      D(6) => gtpe2_i_n_72,
      D(5) => gtpe2_i_n_73,
      D(4) => gtpe2_i_n_74,
      D(3) => gtpe2_i_n_75,
      D(2) => gtpe2_i_n_76,
      D(1) => gtpe2_i_n_77,
      D(0) => gtpe2_i_n_78,
      DRPADDR(0) => DRPADDR(4),
      DRPDI(15) => gtrxreset_seq_i_n_2,
      DRPDI(14) => gtrxreset_seq_i_n_3,
      DRPDI(13) => gtrxreset_seq_i_n_4,
      DRPDI(12) => gtrxreset_seq_i_n_5,
      DRPDI(11) => gtrxreset_seq_i_n_6,
      DRPDI(10) => gtrxreset_seq_i_n_7,
      DRPDI(9) => gtrxreset_seq_i_n_8,
      DRPDI(8) => gtrxreset_seq_i_n_9,
      DRPDI(7) => gtrxreset_seq_i_n_10,
      DRPDI(6) => gtrxreset_seq_i_n_11,
      DRPDI(5) => gtrxreset_seq_i_n_12,
      DRPDI(4) => gtrxreset_seq_i_n_13,
      DRPDI(3) => gtrxreset_seq_i_n_14,
      DRPDI(2) => gtrxreset_seq_i_n_15,
      DRPDI(1) => gtrxreset_seq_i_n_16,
      DRPDI(0) => gtrxreset_seq_i_n_17,
      \FSM_onehot_state_reg[5]_0\ => gtrxreset_seq_i_n_1,
      \FSM_onehot_state_reg[7]_0\ => gtrxreset_seq_i_n_18,
      GTRXRESET => GTRXRESET,
      SR(0) => SR(0),
      data_in => gtpe2_i_n_28,
      gtrefclk_bufg => gtrefclk_bufg,
      \original_rd_data_reg[0]_0\ => gtpe2_i_n_0,
      reset_sync5 => reset_sync5
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
KYJWzR4vcKBSZu8Xwex/6tmg53LVElcHlSQriBXJNPcz87+7TONysl4izxwXP9yEvug1aeLMuJV9
QpCnAYHZHXfLsNRjUCmA+BPVRelbdqqB52e3uXeIusRdKf9bJK4vTbT3G0lEoFHH5X7C9bSLI4YT
sZUjuHirRGeJHd/b3e0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
yo2V0dC7eF/FmwCqmZxlpuXtmB0HywmWLHJT2jcPSMAC1OXxijmfEbvJ+5lPdLPxXgr9jwwXxwMr
v6iklkYNq+D0goSg8ugfBWwguc77JQVz+jMEKP5qhn7Ri+tKZ00wMjngOlr69eLBesdgH5S7cB58
MceEDf75gNDYQTVzBMlKHcS2mYGmDQkhlgD+FDqOy0bnjw5cKAR61rsdl0A5rMVryGdDWCMhdTU1
ZF8hcDIYUHZBc1Rt5KmxBFRnumpyZkvST8/JckJYBT4n5h8I+vWWI5/wUepjQAwCpQDRQx1ya6wF
c65P3BGTHHaZgJ18lQGc+LhcI9bXwV/MpMi4vw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
FMyPG7pILxysnSMbT2vgWSttyZukEuB9wb0W6Enmto1g4p73zQOy/y6J4k8CeKOmBonMsMxgR96B
7ymzkfztYO6rjGzDtyLRZci3g/2lEhq7hFZJpTsqrjCfl6rJRxYEFWRru2wNunKSy8gmBjTS/oYO
W2Fyj3KEM9HxqjqZyog=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Iv7mhm24oKZE/f/TTAt2P/10rXi8j8ceh05JuZQyLJt6z2wemUiiehGVSeIEc+J/5A8Ky+p5jZlR
zcDz/M6c20lBgNhKjU5Y5/MHKgHsXLEYT6mdLioI9YMqgbzgxL4Wl5NSDSxpPVJXa6dKPuX6edQ+
O9X4vUbFWfAhQRmpfaMfpkrepNBfrxu83VYFIDBh9Oojikqnqx0cHXIwFJoUpIHHG4CxxVcaEr6Z
ckCcd8GW/diuMXklBhICPDSmVB8npY6equ70WXNvlpGqCwoAjF+X+W+fUFLKSuFq9RhGZ5fZpSUd
SuqmoFu4K0kSHyOI0uGqPxSbF4IXp1jtRXncIw==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
G1Dg5WUJaLlOLKvgoRqVkbfWuFm3+8fXpsCVayvBniajy/El8hUFZpcvlPgh+rWnnYMXGY1+dgcv
tDit+krZVNCgFHV62uCLpEWe2SLCJrR+6CKtb1o7z3H46ojm1rD3p8jitykUqmFj/lWwZwCa4lim
i6Pb1Xa2ZSoV3OD/bC+nQ5fvju/wDCxruGqzxHiUM2N1jb5uZk4YmAdOZyHHdgs0GdFQhuc7ZrW1
gZo5cJKb8Km1Wd8ARflhofc0R7eS2WmC87uF4r0un9/OaTBgYqsqLOpX5bnGEEge+qTEKWDyL4h8
Ume5IveElh7cPp3ShEIH/D4P5T//a6ibft2Ehw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
g5+VIKoLaErnfHgoHvjVbfqwQzBWMaP4R2LjkVr68qIXmeoeDhzRRLQ4wlH2S/rFzovDzSTBGdIH
oYYiMg609yl+k/B0IljBcarVRsDmlnXA7zxLHWEVsbDmINIsmSgfnKupCURx4WTMiTEEnzpFOgSG
FNO38PbbriYMLv1VGWMjraOnk5lpxKjghmEvEUYWdOVXtm35Hrwap5YAyCOqPfL4p2v1H2kOgkPc
Vzn++2QRO74wFlIWhRH7Sd/lyg0d/qv8cKPWbGlk4FtIBDWRpbH4IRSA97sUSTUS667ZXQ10dti3
LWf7wAVnNVkHNDGi5ztKc3PoV7Bz/abjdFbXkQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dqvjRf66eFgeN/Z8ybsPcYyyIE05+qB7A909cHStC2BZH94z9sKHr0fQY+x+VvxYGTniR1aGjPx0
53ONyQQVvubqZtHZYB2iWA6RzLHFnzu1fS2eVpSg3lf815QAPoyC1mqE9mV9uFW9XFNDA4sTGbsE
Mm0X/palJ2COd2driADaaF01JZ04gAffkGtpLrHWtH/LHgHRjXt6AyI5/CdmubuRcdM1FUvp/aec
tl/Keptqbs1dnnUMqMTDG7zPcKewV3+EukMtVuc2RguUzNM9zom97XVDLrwA52GD2wn6OgEjqW/v
WrDNmT+/pCGVhQbbEbc+krAFY12VnOMEQVU1SQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
vt6GqHaOeiXWiOhNHC/zgACS4w7PkN49ZzDNMk5JhLGd7+8h4IyHdcFgaF/HLlCR/eReBugWAosy
AaMap069hD7E94rLEU7fFxdbkZYD6qLfs9Gu+ij9YllluEaMg4o+AqGHNNeYYWvs2nl4L5laUAfa
rYPwqHTRWLtqj1pmCtIp/YNnRATHP7qibNftjKYmVOdFpGM9mVr48pZYhbHe9OJtqKtLbzRIJrIn
XvtuJdPHttlExSyMmORUbaLYh5oiwdUbKKxCiAfz1mHaxpbH7EQEjplH6DVHCR0wl4UUpLpS4XqY
m2xvNOHiblEfeMbqSa6geR72WnSxMQyg3r+EDmXpy6WQLES2V1n7H/8kkv6d64A3A6sCbo65No25
Wvo8CYTCnPsHPuPOj79pIFf7guIv0k5LashTfHLLIR5JkLQKHAYzeu7qwv4NIUhIsngmILHqlN57
g42UvS9VND0MpaQoTa73SKy0/uXKITax5YnsQT6gB9Zuh4v93mQiuwse

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OYMs23XUcbQ/M2VNEw2Xoqu7rprn0Zo52KrgROUZzOWxj2vqiE8/ZJRGyB640nrUUC48KRLpb0um
E7OYiTf+sF8tYI49vr5OGew9/TE/Sv8rMLuAP9LLfXxqGyylb9KuDHYuzHEHi31oLMR7ew+Ki243
py8iOp9Ucpu7AaeoqYLp4bTRee7GH4YKqWARaTtjbQtBGhsk8oL2ZfgW1eR6HGkMrRekYlvvymo6
tgV2IVO0xrmS/XBmTYaV4/LYaZVOn0Tydjcx+A1ERtrPrvPIn3HSuREXxKrg7P0B+4lmpJlTBOSW
Pgun3bqS7nhgp22NV4RNku457E5J0aTZylZ2wg==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
KnsZLKALDWqncIJgzAKfboAuo1VaWQUcXKcdRXyL4Ex6lEqsmmKTvxZ6EfVlq4HiuTHkw5MX+NK3
1g2d9wfipvhz8BH563axa8qzO9xe2utPb9F2ISfN1Ds/KOGS9CrQOp3fWf3Y+gk1h1XF/G+BeUAd
v+eyBhX4zlryy63IOrd6NXvYMXdZijqYhV0BlhV3rj6h7oLGezgoNXJZmXnX5xTnIKcQdZouA88t
q/0lfTuWkYlGmOlNEYGIHNrd8AGkElTrxjKoRYVp71MYrclJ7UA0LgOLL9ClcDM7WM6zrXFsmPdL
31jIWwy/HWrK4DuuyP/SScJg8qoy5TJLTbbvew==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
e6JH08Az14VwmgDMM6NOUSh9Oz7q+rduGKFU5Jb8XZOaLO8kMDmApqoiHHUZcoKttzzKMBTFVbns
ACZQBPxPvUO8eIA9UpHKrHjydiosMrG4UheuLv4ocQY+xjVga6bwymdKcX29JCXvl3Y0e66unMl2
m6p9QvQVNUvDPFde0n8uMKr7vTUEe30tITbHs9xHBQFlARKj7GCj5g7KKJHY64BjBjObX8NWO+we
GuhjRWN/wtE1u/CGXwx6E+J8USIu+2ydw3NCPMWN9r1XR6ivKEZJQX/qS1veF16Mpnl+VaU7q5R9
fAvl220pPNb9Li/+/Q9p1PLYcagpeKsg+lo36g==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 58432)
`protect data_block
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
p9DjTngxTA==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_GTWIZARD_multi_gt is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    gtpe2_i : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gtpe2_i_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_gttxreset_in0_out : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gt0_rxuserrdy_t : in STD_LOGIC;
    userclk : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txuserrdy_t : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_sync5 : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_GTWIZARD_multi_gt;

architecture STRUCTURE of gig_ethernet_pcs_pma_GTWIZARD_multi_gt is
begin
gt0_GTWIZARD_i: entity work.gig_ethernet_pcs_pma_GTWIZARD_GT
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      SR(0) => SR(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_pll0outclk_in => gt0_pll0outclk_in,
      gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
      gt0_pll1outclk_in => gt0_pll1outclk_in,
      gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      gtpe2_i_0 => gtpe2_i,
      gtpe2_i_1 => gtpe2_i_0,
      gtpe2_i_2(15 downto 0) => gtpe2_i_1(15 downto 0),
      gtpe2_i_3(1 downto 0) => gtpe2_i_2(1 downto 0),
      gtpe2_i_4(1 downto 0) => gtpe2_i_3(1 downto 0),
      gtpe2_i_5(1 downto 0) => gtpe2_i_4(1 downto 0),
      gtpe2_i_6(1 downto 0) => gtpe2_i_5(1 downto 0),
      gtpe2_i_7(1 downto 0) => gtpe2_i_6(1 downto 0),
      gtpe2_i_8(1 downto 0) => gtpe2_i_7(1 downto 0),
      gtpe2_i_9(1 downto 0) => gtpe2_i_8(1 downto 0),
      gtrefclk_bufg => gtrefclk_bufg,
      reset => reset,
      reset_out => reset_out,
      reset_sync5 => reset_sync5,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
KYJWzR4vcKBSZu8Xwex/6tmg53LVElcHlSQriBXJNPcz87+7TONysl4izxwXP9yEvug1aeLMuJV9
QpCnAYHZHXfLsNRjUCmA+BPVRelbdqqB52e3uXeIusRdKf9bJK4vTbT3G0lEoFHH5X7C9bSLI4YT
sZUjuHirRGeJHd/b3e0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
yo2V0dC7eF/FmwCqmZxlpuXtmB0HywmWLHJT2jcPSMAC1OXxijmfEbvJ+5lPdLPxXgr9jwwXxwMr
v6iklkYNq+D0goSg8ugfBWwguc77JQVz+jMEKP5qhn7Ri+tKZ00wMjngOlr69eLBesdgH5S7cB58
MceEDf75gNDYQTVzBMlKHcS2mYGmDQkhlgD+FDqOy0bnjw5cKAR61rsdl0A5rMVryGdDWCMhdTU1
ZF8hcDIYUHZBc1Rt5KmxBFRnumpyZkvST8/JckJYBT4n5h8I+vWWI5/wUepjQAwCpQDRQx1ya6wF
c65P3BGTHHaZgJ18lQGc+LhcI9bXwV/MpMi4vw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
FMyPG7pILxysnSMbT2vgWSttyZukEuB9wb0W6Enmto1g4p73zQOy/y6J4k8CeKOmBonMsMxgR96B
7ymzkfztYO6rjGzDtyLRZci3g/2lEhq7hFZJpTsqrjCfl6rJRxYEFWRru2wNunKSy8gmBjTS/oYO
W2Fyj3KEM9HxqjqZyog=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Iv7mhm24oKZE/f/TTAt2P/10rXi8j8ceh05JuZQyLJt6z2wemUiiehGVSeIEc+J/5A8Ky+p5jZlR
zcDz/M6c20lBgNhKjU5Y5/MHKgHsXLEYT6mdLioI9YMqgbzgxL4Wl5NSDSxpPVJXa6dKPuX6edQ+
O9X4vUbFWfAhQRmpfaMfpkrepNBfrxu83VYFIDBh9Oojikqnqx0cHXIwFJoUpIHHG4CxxVcaEr6Z
ckCcd8GW/diuMXklBhICPDSmVB8npY6equ70WXNvlpGqCwoAjF+X+W+fUFLKSuFq9RhGZ5fZpSUd
SuqmoFu4K0kSHyOI0uGqPxSbF4IXp1jtRXncIw==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
G1Dg5WUJaLlOLKvgoRqVkbfWuFm3+8fXpsCVayvBniajy/El8hUFZpcvlPgh+rWnnYMXGY1+dgcv
tDit+krZVNCgFHV62uCLpEWe2SLCJrR+6CKtb1o7z3H46ojm1rD3p8jitykUqmFj/lWwZwCa4lim
i6Pb1Xa2ZSoV3OD/bC+nQ5fvju/wDCxruGqzxHiUM2N1jb5uZk4YmAdOZyHHdgs0GdFQhuc7ZrW1
gZo5cJKb8Km1Wd8ARflhofc0R7eS2WmC87uF4r0un9/OaTBgYqsqLOpX5bnGEEge+qTEKWDyL4h8
Ume5IveElh7cPp3ShEIH/D4P5T//a6ibft2Ehw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
g5+VIKoLaErnfHgoHvjVbfqwQzBWMaP4R2LjkVr68qIXmeoeDhzRRLQ4wlH2S/rFzovDzSTBGdIH
oYYiMg609yl+k/B0IljBcarVRsDmlnXA7zxLHWEVsbDmINIsmSgfnKupCURx4WTMiTEEnzpFOgSG
FNO38PbbriYMLv1VGWMjraOnk5lpxKjghmEvEUYWdOVXtm35Hrwap5YAyCOqPfL4p2v1H2kOgkPc
Vzn++2QRO74wFlIWhRH7Sd/lyg0d/qv8cKPWbGlk4FtIBDWRpbH4IRSA97sUSTUS667ZXQ10dti3
LWf7wAVnNVkHNDGi5ztKc3PoV7Bz/abjdFbXkQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dqvjRf66eFgeN/Z8ybsPcYyyIE05+qB7A909cHStC2BZH94z9sKHr0fQY+x+VvxYGTniR1aGjPx0
53ONyQQVvubqZtHZYB2iWA6RzLHFnzu1fS2eVpSg3lf815QAPoyC1mqE9mV9uFW9XFNDA4sTGbsE
Mm0X/palJ2COd2driADaaF01JZ04gAffkGtpLrHWtH/LHgHRjXt6AyI5/CdmubuRcdM1FUvp/aec
tl/Keptqbs1dnnUMqMTDG7zPcKewV3+EukMtVuc2RguUzNM9zom97XVDLrwA52GD2wn6OgEjqW/v
WrDNmT+/pCGVhQbbEbc+krAFY12VnOMEQVU1SQ==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
vt6GqHaOeiXWiOhNHC/zgACS4w7PkN49ZzDNMk5JhLGd7+8h4IyHdcFgaF/HLlCR/eReBugWAosy
AaMap069hD7E94rLEU7fFxdbkZYD6qLfs9Gu+ij9YllluEaMg4o+AqGHNNeYYWvs2nl4L5laUAfa
rYPwqHTRWLtqj1pmCtIp/YNnRATHP7qibNftjKYmVOdFpGM9mVr48pZYhbHe9OJtqKtLbzRIJrIn
XvtuJdPHttlExSyMmORUbaLYh5oiwdUbKKxCiAfz1mHaxpbH7EQEjplH6DVHCR0wl4UUpLpS4XqY
m2xvNOHiblEfeMbqSa6geR72WnSxMQyg3r+EDmXpy6WQLES2V1n7H/8kkv6d64A3A6sCbo65No25
Wvo8CYTCnPsHPuPOj79pIFf7guIv0k5LashTfHLLIR5JkLQKHAYzeu7qwv4NIUhIsngmILHqlN57
g42UvS9VND0MpaQoTa73SKy0/uXKITax5YnsQT6gB9Zuh4v93mQiuwse

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OYMs23XUcbQ/M2VNEw2Xoqu7rprn0Zo52KrgROUZzOWxj2vqiE8/ZJRGyB640nrUUC48KRLpb0um
E7OYiTf+sF8tYI49vr5OGew9/TE/Sv8rMLuAP9LLfXxqGyylb9KuDHYuzHEHi31oLMR7ew+Ki243
py8iOp9Ucpu7AaeoqYLp4bTRee7GH4YKqWARaTtjbQtBGhsk8oL2ZfgW1eR6HGkMrRekYlvvymo6
tgV2IVO0xrmS/XBmTYaV4/LYaZVOn0Tydjcx+A1ERtrPrvPIn3HSuREXxKrg7P0B+4lmpJlTBOSW
Pgun3bqS7nhgp22NV4RNku457E5J0aTZylZ2wg==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
KnsZLKALDWqncIJgzAKfboAuo1VaWQUcXKcdRXyL4Ex6lEqsmmKTvxZ6EfVlq4HiuTHkw5MX+NK3
1g2d9wfipvhz8BH563axa8qzO9xe2utPb9F2ISfN1Ds/KOGS9CrQOp3fWf3Y+gk1h1XF/G+BeUAd
v+eyBhX4zlryy63IOrd6NXvYMXdZijqYhV0BlhV3rj6h7oLGezgoNXJZmXnX5xTnIKcQdZouA88t
q/0lfTuWkYlGmOlNEYGIHNrd8AGkElTrxjKoRYVp71MYrclJ7UA0LgOLL9ClcDM7WM6zrXFsmPdL
31jIWwy/HWrK4DuuyP/SScJg8qoy5TJLTbbvew==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
e6JH08Az14VwmgDMM6NOUSh9Oz7q+rduGKFU5Jb8XZOaLO8kMDmApqoiHHUZcoKttzzKMBTFVbns
ACZQBPxPvUO8eIA9UpHKrHjydiosMrG4UheuLv4ocQY+xjVga6bwymdKcX29JCXvl3Y0e66unMl2
m6p9QvQVNUvDPFde0n8uMKr7vTUEe30tITbHs9xHBQFlARKj7GCj5g7KKJHY64BjBjObX8NWO+we
GuhjRWN/wtE1u/CGXwx6E+J8USIu+2ydw3NCPMWN9r1XR6ivKEZJQX/qS1veF16Mpnl+VaU7q5R9
fAvl220pPNb9Li/+/Q9p1PLYcagpeKsg+lo36g==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17152)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_GTWIZARD_init is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mmcm_reset : out STD_LOGIC;
    reset_in : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    userclk : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    gt0_gtrxreset_gt_d1_reg_0 : in STD_LOGIC;
    gtpe2_i_7 : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_GTWIZARD_init;

architecture STRUCTURE of gig_ethernet_pcs_pma_GTWIZARD_init is
  signal data0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal gt0_gtrxreset_gt : STD_LOGIC;
  signal gt0_gtrxreset_gt_d1 : STD_LOGIC;
  signal gt0_gttxreset_in0_out : STD_LOGIC;
  signal gt0_rx_cdrlock_counter : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \gt0_rx_cdrlock_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_3\ : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_1 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_2 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_3 : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[13]_i_2_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[13]_i_3_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[13]_i_4_n_0\ : STD_LOGIC;
  signal gt0_rx_cdrlock_counter_0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal gt0_rx_cdrlocked_i_1_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal gt0_rxuserrdy_t : STD_LOGIC;
  signal gt0_txuserrdy_t : STD_LOGIC;
  signal gtwizard_i_n_3 : STD_LOGIC;
  signal gtwizard_i_n_5 : STD_LOGIC;
  signal \^reset_in\ : STD_LOGIC;
  signal \NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of gt0_rx_cdrlock_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter0_carry__2\ : label is 35;
begin
  reset_in <= \^reset_in\;
gt0_gtrxreset_gt_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_gtrxreset_gt,
      Q => gt0_gtrxreset_gt_d1,
      R => '0'
    );
gt0_rx_cdrlock_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gt0_rx_cdrlock_counter0_carry_n_0,
      CO(2) => gt0_rx_cdrlock_counter0_carry_n_1,
      CO(1) => gt0_rx_cdrlock_counter0_carry_n_2,
      CO(0) => gt0_rx_cdrlock_counter0_carry_n_3,
      CYINIT => gt0_rx_cdrlock_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => gt0_rx_cdrlock_counter(4 downto 1)
    );
\gt0_rx_cdrlock_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gt0_rx_cdrlock_counter0_carry_n_0,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__0_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__0_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__0_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => gt0_rx_cdrlock_counter(8 downto 5)
    );
\gt0_rx_cdrlock_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__0_n_0\,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__1_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__1_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__1_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => gt0_rx_cdrlock_counter(12 downto 9)
    );
\gt0_rx_cdrlock_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(13),
      S(3 downto 1) => B"000",
      S(0) => gt0_rx_cdrlock_counter(13)
    );
\gt0_rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[0]_i_2_n_0\,
      I1 => gt0_rx_cdrlock_counter(0),
      O => gt0_rx_cdrlock_counter_0(0)
    );
\gt0_rx_cdrlock_counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I1 => gt0_rx_cdrlock_counter(4),
      I2 => gt0_rx_cdrlock_counter(5),
      I3 => gt0_rx_cdrlock_counter(7),
      I4 => gt0_rx_cdrlock_counter(6),
      I5 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      O => \gt0_rx_cdrlock_counter[0]_i_2_n_0\
    );
\gt0_rx_cdrlock_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(10),
      O => gt0_rx_cdrlock_counter_0(10)
    );
\gt0_rx_cdrlock_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(11),
      O => gt0_rx_cdrlock_counter_0(11)
    );
\gt0_rx_cdrlock_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(12),
      O => gt0_rx_cdrlock_counter_0(12)
    );
\gt0_rx_cdrlock_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(13),
      O => gt0_rx_cdrlock_counter_0(13)
    );
\gt0_rx_cdrlock_counter[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(1),
      I1 => gt0_rx_cdrlock_counter(12),
      I2 => gt0_rx_cdrlock_counter(13),
      I3 => gt0_rx_cdrlock_counter(3),
      I4 => gt0_rx_cdrlock_counter(2),
      O => \gt0_rx_cdrlock_counter[13]_i_2_n_0\
    );
\gt0_rx_cdrlock_counter[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(4),
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => gt0_rx_cdrlock_counter(7),
      I3 => gt0_rx_cdrlock_counter(6),
      O => \gt0_rx_cdrlock_counter[13]_i_3_n_0\
    );
\gt0_rx_cdrlock_counter[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(9),
      I1 => gt0_rx_cdrlock_counter(8),
      I2 => gt0_rx_cdrlock_counter(10),
      I3 => gt0_rx_cdrlock_counter(11),
      O => \gt0_rx_cdrlock_counter[13]_i_4_n_0\
    );
\gt0_rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(1),
      O => gt0_rx_cdrlock_counter_0(1)
    );
\gt0_rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(2),
      O => gt0_rx_cdrlock_counter_0(2)
    );
\gt0_rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(3),
      O => gt0_rx_cdrlock_counter_0(3)
    );
\gt0_rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(4),
      O => gt0_rx_cdrlock_counter_0(4)
    );
\gt0_rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(5),
      O => gt0_rx_cdrlock_counter_0(5)
    );
\gt0_rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(6),
      O => gt0_rx_cdrlock_counter_0(6)
    );
\gt0_rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(7),
      O => gt0_rx_cdrlock_counter_0(7)
    );
\gt0_rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(8),
      O => gt0_rx_cdrlock_counter_0(8)
    );
\gt0_rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(9),
      O => gt0_rx_cdrlock_counter_0(9)
    );
\gt0_rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(0),
      Q => gt0_rx_cdrlock_counter(0),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(10),
      Q => gt0_rx_cdrlock_counter(10),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(11),
      Q => gt0_rx_cdrlock_counter(11),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(12),
      Q => gt0_rx_cdrlock_counter(12),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(13),
      Q => gt0_rx_cdrlock_counter(13),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(1),
      Q => gt0_rx_cdrlock_counter(1),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(2),
      Q => gt0_rx_cdrlock_counter(2),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(3),
      Q => gt0_rx_cdrlock_counter(3),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(4),
      Q => gt0_rx_cdrlock_counter(4),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(5),
      Q => gt0_rx_cdrlock_counter(5),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(6),
      Q => gt0_rx_cdrlock_counter(6),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(7),
      Q => gt0_rx_cdrlock_counter(7),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(8),
      Q => gt0_rx_cdrlock_counter(8),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(9),
      Q => gt0_rx_cdrlock_counter(9),
      R => gt0_gtrxreset_gt_d1
    );
gt0_rx_cdrlocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => gt0_rx_cdrlocked_reg_n_0,
      O => gt0_rx_cdrlocked_i_1_n_0
    );
gt0_rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlocked_i_1_n_0,
      Q => gt0_rx_cdrlocked_reg_n_0,
      R => gt0_gtrxreset_gt_d1
    );
gt0_rxresetfsm_i: entity work.gig_ethernet_pcs_pma_RX_STARTUP_FSM
     port map (
      data_in => rx_fsm_reset_done_int_reg,
      data_out => data_out,
      data_sync_reg1 => gtwizard_i_n_3,
      gt0_gtrxreset_gt => gt0_gtrxreset_gt,
      gt0_gtrxreset_gt_d1_reg => gt0_gtrxreset_gt_d1_reg_0,
      gt0_pll0lock_in => gt0_pll0lock_in,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      pma_reset => pma_reset,
      reset_time_out_reg_0 => gt0_rx_cdrlocked_reg_n_0,
      userclk => userclk
    );
gt0_txresetfsm_i: entity work.gig_ethernet_pcs_pma_TX_STARTUP_FSM
     port map (
      PLL0_RESET_reg_0 => \^reset_in\,
      data_in => data_in,
      data_sync_reg1 => gtwizard_i_n_5,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_pll0lock_in => gt0_pll0lock_in,
      gt0_pll0refclklost_in => gt0_pll0refclklost_in,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      gtpe2_i => gtpe2_i_7,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      mmcm_reset => mmcm_reset,
      pma_reset => pma_reset,
      userclk => userclk
    );
gtwizard_i: entity work.gig_ethernet_pcs_pma_GTWIZARD_multi_gt
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      SR(0) => gt0_gtrxreset_gt_d1,
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_pll0outclk_in => gt0_pll0outclk_in,
      gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
      gt0_pll1outclk_in => gt0_pll1outclk_in,
      gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      gtpe2_i => gtwizard_i_n_3,
      gtpe2_i_0 => gtwizard_i_n_5,
      gtpe2_i_1(15 downto 0) => gtpe2_i(15 downto 0),
      gtpe2_i_2(1 downto 0) => gtpe2_i_0(1 downto 0),
      gtpe2_i_3(1 downto 0) => gtpe2_i_1(1 downto 0),
      gtpe2_i_4(1 downto 0) => gtpe2_i_2(1 downto 0),
      gtpe2_i_5(1 downto 0) => gtpe2_i_3(1 downto 0),
      gtpe2_i_6(1 downto 0) => gtpe2_i_4(1 downto 0),
      gtpe2_i_7(1 downto 0) => gtpe2_i_5(1 downto 0),
      gtpe2_i_8(1 downto 0) => gtpe2_i_6(1 downto 0),
      gtrefclk_bufg => gtrefclk_bufg,
      reset => reset,
      reset_out => reset_out,
      reset_sync5 => \^reset_in\,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_GTWIZARD is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mmcm_reset : out STD_LOGIC;
    PLL0_RESET_reg : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    userclk : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    gt0_gtrxreset_gt_d1_reg : in STD_LOGIC;
    gtpe2_i_7 : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_GTWIZARD;

architecture STRUCTURE of gig_ethernet_pcs_pma_GTWIZARD is
begin
U0: entity work.gig_ethernet_pcs_pma_GTWIZARD_init
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      data_in => data_in,
      data_out => data_out,
      gt0_gtrxreset_gt_d1_reg_0 => gt0_gtrxreset_gt_d1_reg,
      gt0_pll0lock_in => gt0_pll0lock_in,
      gt0_pll0outclk_in => gt0_pll0outclk_in,
      gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
      gt0_pll0refclklost_in => gt0_pll0refclklost_in,
      gt0_pll1outclk_in => gt0_pll1outclk_in,
      gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
      gtpe2_i(15 downto 0) => gtpe2_i(15 downto 0),
      gtpe2_i_0(1 downto 0) => gtpe2_i_0(1 downto 0),
      gtpe2_i_1(1 downto 0) => gtpe2_i_1(1 downto 0),
      gtpe2_i_2(1 downto 0) => gtpe2_i_2(1 downto 0),
      gtpe2_i_3(1 downto 0) => gtpe2_i_3(1 downto 0),
      gtpe2_i_4(1 downto 0) => gtpe2_i_4(1 downto 0),
      gtpe2_i_5(1 downto 0) => gtpe2_i_5(1 downto 0),
      gtpe2_i_6(1 downto 0) => gtpe2_i_6(1 downto 0),
      gtpe2_i_7 => gtpe2_i_7,
      gtrefclk_bufg => gtrefclk_bufg,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      mmcm_reset => mmcm_reset,
      pma_reset => pma_reset,
      reset => reset,
      reset_in => PLL0_RESET_reg,
      reset_out => reset_out,
      rx_fsm_reset_done_int_reg => rx_fsm_reset_done_int_reg,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_transceiver is
  port (
    gt0_pll0reset_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    rxchariscomma : out STD_LOGIC;
    rxcharisk : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \rxdata_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdisperr : out STD_LOGIC;
    rxnotintable : out STD_LOGIC;
    rxbuferr : out STD_LOGIC;
    txbuferr : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    enablealign : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_sync5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk_bufg : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    userclk : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    powerdown : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txchardispmode_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    txchardispval_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcharisk_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_pll0refclklost_in : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_transceiver;

architecture STRUCTURE of gig_ethernet_pcs_pma_transceiver is
  signal data_valid_reg2 : STD_LOGIC;
  signal encommaalign_int : STD_LOGIC;
  signal gtwizard_inst_n_6 : STD_LOGIC;
  signal gtwizard_inst_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_1_in__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_1_in__2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset : STD_LOGIC;
  signal rxchariscomma_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxchariscomma_i_1_n_0 : STD_LOGIC;
  signal rxchariscomma_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxchariscomma_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxcharisk_i_1_n_0 : STD_LOGIC;
  signal rxcharisk_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxcharisk_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[7]_i_1_n_0\ : STD_LOGIC;
  signal rxdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdata_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdisperr_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdisperr_i_1_n_0 : STD_LOGIC;
  signal rxdisperr_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxdisperr_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxnotintable_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxnotintable_i_1_n_0 : STD_LOGIC;
  signal rxnotintable_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxnotintable_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxpowerdown : STD_LOGIC;
  signal rxpowerdown_double : STD_LOGIC;
  signal \rxpowerdown_reg__0\ : STD_LOGIC;
  signal rxreset_int : STD_LOGIC;
  signal toggle : STD_LOGIC;
  signal toggle_i_1_n_0 : STD_LOGIC;
  signal txbufstatus_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal txchardispmode_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispmode_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txpowerdown : STD_LOGIC;
  signal txpowerdown_double : STD_LOGIC;
  signal \txpowerdown_reg__0\ : STD_LOGIC;
  signal txreset_int : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rxchariscomma_i_1 : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of rxcharisk_i_1 : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \rxdata[0]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \rxdata[1]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \rxdata[2]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \rxdata[3]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \rxdata[4]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \rxdata[5]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \rxdata[6]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \rxdata[7]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of rxdisperr_i_1 : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of rxnotintable_i_1 : label is "soft_lutpair120";
begin
gtwizard_inst: entity work.gig_ethernet_pcs_pma_GTWIZARD
     port map (
      D(1 downto 0) => rxclkcorcnt_int(1 downto 0),
      PLL0_RESET_reg => gt0_pll0reset_out,
      Q(15 downto 0) => txdata_int(15 downto 0),
      RXBUFSTATUS(0) => gtwizard_inst_n_7,
      RXPD(0) => rxpowerdown,
      TXBUFSTATUS(0) => gtwizard_inst_n_6,
      TXPD(0) => txpowerdown,
      data_in => data_in,
      data_out => data_valid_reg2,
      gt0_gtrxreset_gt_d1_reg => rxreset_int,
      gt0_pll0lock_in => gt0_pll0lock_in,
      gt0_pll0outclk_in => gt0_pll0outclk_in,
      gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
      gt0_pll0refclklost_in => gt0_pll0refclklost_in,
      gt0_pll1outclk_in => gt0_pll1outclk_in,
      gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
      gtpe2_i(15 downto 0) => rxdata_int(15 downto 0),
      gtpe2_i_0(1 downto 0) => rxchariscomma_int(1 downto 0),
      gtpe2_i_1(1 downto 0) => rxcharisk_int(1 downto 0),
      gtpe2_i_2(1 downto 0) => rxdisperr_int(1 downto 0),
      gtpe2_i_3(1 downto 0) => rxnotintable_int(1 downto 0),
      gtpe2_i_4(1 downto 0) => txchardispmode_int(1 downto 0),
      gtpe2_i_5(1 downto 0) => txchardispval_int(1 downto 0),
      gtpe2_i_6(1 downto 0) => txcharisk_int(1 downto 0),
      gtpe2_i_7 => txreset_int,
      gtrefclk_bufg => gtrefclk_bufg,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      mmcm_reset => mmcm_reset,
      pma_reset => pma_reset,
      reset => reset,
      reset_out => encommaalign_int,
      rx_fsm_reset_done_int_reg => rx_fsm_reset_done_int_reg,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk
    );
reclock_encommaalign: entity work.gig_ethernet_pcs_pma_reset_sync
     port map (
      enablealign => enablealign,
      reset_out => encommaalign_int,
      userclk2 => userclk2
    );
reclock_rxreset: entity work.gig_ethernet_pcs_pma_reset_sync_1
     port map (
      independent_clock_bufg => independent_clock_bufg,
      reset_out => rxreset_int,
      reset_sync5_0(0) => reset_sync5(0)
    );
reclock_txreset: entity work.gig_ethernet_pcs_pma_reset_sync_2
     port map (
      SR(0) => SR(0),
      independent_clock_bufg => independent_clock_bufg,
      reset_out => txreset_int
    );
reset_wtd_timer: entity work.gig_ethernet_pcs_pma_reset_wtd_timer
     port map (
      data_out => data_valid_reg2,
      independent_clock_bufg => independent_clock_bufg,
      reset => reset
    );
rxbuferr_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_0_in,
      Q => rxbuferr,
      R => '0'
    );
\rxbufstatus_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => gtwizard_inst_n_7,
      Q => p_0_in,
      R => '0'
    );
\rxchariscomma_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxchariscomma_reg__0\(0),
      Q => rxchariscomma_double(0),
      R => reset_sync5(0)
    );
\rxchariscomma_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxchariscomma_reg__0\(1),
      Q => rxchariscomma_double(1),
      R => reset_sync5(0)
    );
rxchariscomma_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxchariscomma_double(1),
      I1 => toggle,
      I2 => rxchariscomma_double(0),
      O => rxchariscomma_i_1_n_0
    );
rxchariscomma_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxchariscomma_i_1_n_0,
      Q => rxchariscomma,
      R => reset_sync5(0)
    );
\rxchariscomma_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxchariscomma_int(0),
      Q => \rxchariscomma_reg__0\(0),
      R => '0'
    );
\rxchariscomma_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxchariscomma_int(1),
      Q => \rxchariscomma_reg__0\(1),
      R => '0'
    );
\rxcharisk_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxcharisk_reg__0\(0),
      Q => rxcharisk_double(0),
      R => reset_sync5(0)
    );
\rxcharisk_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxcharisk_reg__0\(1),
      Q => rxcharisk_double(1),
      R => reset_sync5(0)
    );
rxcharisk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxcharisk_double(1),
      I1 => toggle,
      I2 => rxcharisk_double(0),
      O => rxcharisk_i_1_n_0
    );
rxcharisk_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxcharisk_i_1_n_0,
      Q => rxcharisk,
      R => reset_sync5(0)
    );
\rxcharisk_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxcharisk_int(0),
      Q => \rxcharisk_reg__0\(0),
      R => '0'
    );
\rxcharisk_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxcharisk_int(1),
      Q => \rxcharisk_reg__0\(1),
      R => '0'
    );
\rxclkcorcnt_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxclkcorcnt_reg(0),
      Q => rxclkcorcnt_double(0),
      R => reset_sync5(0)
    );
\rxclkcorcnt_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxclkcorcnt_reg(1),
      Q => rxclkcorcnt_double(1),
      R => reset_sync5(0)
    );
\rxclkcorcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxclkcorcnt_double(0),
      Q => Q(0),
      R => reset_sync5(0)
    );
\rxclkcorcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxclkcorcnt_double(1),
      Q => Q(1),
      R => reset_sync5(0)
    );
\rxclkcorcnt_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxclkcorcnt_int(0),
      Q => rxclkcorcnt_reg(0),
      R => '0'
    );
\rxclkcorcnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxclkcorcnt_int(1),
      Q => rxclkcorcnt_reg(1),
      R => '0'
    );
\rxdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(8),
      I1 => toggle,
      I2 => rxdata_double(0),
      O => \rxdata[0]_i_1_n_0\
    );
\rxdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(9),
      I1 => toggle,
      I2 => rxdata_double(1),
      O => \rxdata[1]_i_1_n_0\
    );
\rxdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(10),
      I1 => toggle,
      I2 => rxdata_double(2),
      O => \rxdata[2]_i_1_n_0\
    );
\rxdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(11),
      I1 => toggle,
      I2 => rxdata_double(3),
      O => \rxdata[3]_i_1_n_0\
    );
\rxdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(12),
      I1 => toggle,
      I2 => rxdata_double(4),
      O => \rxdata[4]_i_1_n_0\
    );
\rxdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(13),
      I1 => toggle,
      I2 => rxdata_double(5),
      O => \rxdata[5]_i_1_n_0\
    );
\rxdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(14),
      I1 => toggle,
      I2 => rxdata_double(6),
      O => \rxdata[6]_i_1_n_0\
    );
\rxdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(15),
      I1 => toggle,
      I2 => rxdata_double(7),
      O => \rxdata[7]_i_1_n_0\
    );
\rxdata_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(0),
      Q => rxdata_double(0),
      R => reset_sync5(0)
    );
\rxdata_double_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(10),
      Q => rxdata_double(10),
      R => reset_sync5(0)
    );
\rxdata_double_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(11),
      Q => rxdata_double(11),
      R => reset_sync5(0)
    );
\rxdata_double_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(12),
      Q => rxdata_double(12),
      R => reset_sync5(0)
    );
\rxdata_double_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(13),
      Q => rxdata_double(13),
      R => reset_sync5(0)
    );
\rxdata_double_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(14),
      Q => rxdata_double(14),
      R => reset_sync5(0)
    );
\rxdata_double_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(15),
      Q => rxdata_double(15),
      R => reset_sync5(0)
    );
\rxdata_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(1),
      Q => rxdata_double(1),
      R => reset_sync5(0)
    );
\rxdata_double_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(2),
      Q => rxdata_double(2),
      R => reset_sync5(0)
    );
\rxdata_double_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(3),
      Q => rxdata_double(3),
      R => reset_sync5(0)
    );
\rxdata_double_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(4),
      Q => rxdata_double(4),
      R => reset_sync5(0)
    );
\rxdata_double_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(5),
      Q => rxdata_double(5),
      R => reset_sync5(0)
    );
\rxdata_double_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(6),
      Q => rxdata_double(6),
      R => reset_sync5(0)
    );
\rxdata_double_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(7),
      Q => rxdata_double(7),
      R => reset_sync5(0)
    );
\rxdata_double_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(8),
      Q => rxdata_double(8),
      R => reset_sync5(0)
    );
\rxdata_double_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(9),
      Q => rxdata_double(9),
      R => reset_sync5(0)
    );
\rxdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[0]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(0),
      R => reset_sync5(0)
    );
\rxdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[1]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(1),
      R => reset_sync5(0)
    );
\rxdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[2]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(2),
      R => reset_sync5(0)
    );
\rxdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[3]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(3),
      R => reset_sync5(0)
    );
\rxdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[4]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(4),
      R => reset_sync5(0)
    );
\rxdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[5]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(5),
      R => reset_sync5(0)
    );
\rxdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[6]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(6),
      R => reset_sync5(0)
    );
\rxdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[7]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(7),
      R => reset_sync5(0)
    );
\rxdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(0),
      Q => rxdata_reg(0),
      R => '0'
    );
\rxdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(10),
      Q => rxdata_reg(10),
      R => '0'
    );
\rxdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(11),
      Q => rxdata_reg(11),
      R => '0'
    );
\rxdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(12),
      Q => rxdata_reg(12),
      R => '0'
    );
\rxdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(13),
      Q => rxdata_reg(13),
      R => '0'
    );
\rxdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(14),
      Q => rxdata_reg(14),
      R => '0'
    );
\rxdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(15),
      Q => rxdata_reg(15),
      R => '0'
    );
\rxdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(1),
      Q => rxdata_reg(1),
      R => '0'
    );
\rxdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(2),
      Q => rxdata_reg(2),
      R => '0'
    );
\rxdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(3),
      Q => rxdata_reg(3),
      R => '0'
    );
\rxdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(4),
      Q => rxdata_reg(4),
      R => '0'
    );
\rxdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(5),
      Q => rxdata_reg(5),
      R => '0'
    );
\rxdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(6),
      Q => rxdata_reg(6),
      R => '0'
    );
\rxdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(7),
      Q => rxdata_reg(7),
      R => '0'
    );
\rxdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(8),
      Q => rxdata_reg(8),
      R => '0'
    );
\rxdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(9),
      Q => rxdata_reg(9),
      R => '0'
    );
\rxdisperr_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxdisperr_reg__0\(0),
      Q => rxdisperr_double(0),
      R => reset_sync5(0)
    );
\rxdisperr_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxdisperr_reg__0\(1),
      Q => rxdisperr_double(1),
      R => reset_sync5(0)
    );
rxdisperr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdisperr_double(1),
      I1 => toggle,
      I2 => rxdisperr_double(0),
      O => rxdisperr_i_1_n_0
    );
rxdisperr_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxdisperr_i_1_n_0,
      Q => rxdisperr,
      R => reset_sync5(0)
    );
\rxdisperr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdisperr_int(0),
      Q => \rxdisperr_reg__0\(0),
      R => '0'
    );
\rxdisperr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdisperr_int(1),
      Q => \rxdisperr_reg__0\(1),
      R => '0'
    );
\rxnotintable_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxnotintable_reg__0\(0),
      Q => rxnotintable_double(0),
      R => reset_sync5(0)
    );
\rxnotintable_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxnotintable_reg__0\(1),
      Q => rxnotintable_double(1),
      R => reset_sync5(0)
    );
rxnotintable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxnotintable_double(1),
      I1 => toggle,
      I2 => rxnotintable_double(0),
      O => rxnotintable_i_1_n_0
    );
rxnotintable_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxnotintable_i_1_n_0,
      Q => rxnotintable,
      R => reset_sync5(0)
    );
\rxnotintable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxnotintable_int(0),
      Q => \rxnotintable_reg__0\(0),
      R => '0'
    );
\rxnotintable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxnotintable_int(1),
      Q => \rxnotintable_reg__0\(1),
      R => '0'
    );
rxpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => toggle,
      D => \rxpowerdown_reg__0\,
      Q => rxpowerdown_double,
      R => reset_sync5(0)
    );
rxpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => rxpowerdown_double,
      Q => rxpowerdown,
      R => '0'
    );
rxpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => powerdown,
      Q => \rxpowerdown_reg__0\,
      R => reset_sync5(0)
    );
sync_block_data_valid: entity work.gig_ethernet_pcs_pma_sync_block_3
     port map (
      data_out => data_valid_reg2,
      independent_clock_bufg => independent_clock_bufg,
      status_vector(0) => status_vector(0)
    );
toggle_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => toggle,
      O => toggle_i_1_n_0
    );
toggle_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => toggle_i_1_n_0,
      Q => toggle,
      R => SR(0)
    );
txbuferr_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txbufstatus_reg(1),
      Q => txbuferr,
      R => '0'
    );
\txbufstatus_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => gtwizard_inst_n_6,
      Q => txbufstatus_reg(1),
      R => '0'
    );
\txchardispmode_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \p_1_in__0\(0),
      Q => txchardispmode_double(0),
      R => SR(0)
    );
\txchardispmode_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txchardispmode_reg_reg_0(0),
      Q => txchardispmode_double(1),
      R => SR(0)
    );
\txchardispmode_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txchardispmode_double(0),
      Q => txchardispmode_int(0),
      R => '0'
    );
\txchardispmode_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txchardispmode_double(1),
      Q => txchardispmode_int(1),
      R => '0'
    );
txchardispmode_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txchardispmode_reg_reg_0(0),
      Q => \p_1_in__0\(0),
      R => SR(0)
    );
\txchardispval_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \p_1_in__1\(0),
      Q => txchardispval_double(0),
      R => SR(0)
    );
\txchardispval_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txchardispval_reg_reg_0(0),
      Q => txchardispval_double(1),
      R => SR(0)
    );
\txchardispval_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txchardispval_double(0),
      Q => txchardispval_int(0),
      R => '0'
    );
\txchardispval_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txchardispval_double(1),
      Q => txchardispval_int(1),
      R => '0'
    );
txchardispval_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txchardispval_reg_reg_0(0),
      Q => \p_1_in__1\(0),
      R => SR(0)
    );
\txcharisk_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \p_1_in__2\(0),
      Q => txcharisk_double(0),
      R => SR(0)
    );
\txcharisk_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txcharisk_reg_reg_0(0),
      Q => txcharisk_double(1),
      R => SR(0)
    );
\txcharisk_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txcharisk_double(0),
      Q => txcharisk_int(0),
      R => '0'
    );
\txcharisk_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txcharisk_double(1),
      Q => txcharisk_int(1),
      R => '0'
    );
txcharisk_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txcharisk_reg_reg_0(0),
      Q => \p_1_in__2\(0),
      R => SR(0)
    );
\txdata_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(0),
      Q => txdata_double(0),
      R => SR(0)
    );
\txdata_double_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(2),
      Q => txdata_double(10),
      R => SR(0)
    );
\txdata_double_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(3),
      Q => txdata_double(11),
      R => SR(0)
    );
\txdata_double_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(4),
      Q => txdata_double(12),
      R => SR(0)
    );
\txdata_double_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(5),
      Q => txdata_double(13),
      R => SR(0)
    );
\txdata_double_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(6),
      Q => txdata_double(14),
      R => SR(0)
    );
\txdata_double_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(7),
      Q => txdata_double(15),
      R => SR(0)
    );
\txdata_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(1),
      Q => txdata_double(1),
      R => SR(0)
    );
\txdata_double_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(2),
      Q => txdata_double(2),
      R => SR(0)
    );
\txdata_double_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(3),
      Q => txdata_double(3),
      R => SR(0)
    );
\txdata_double_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(4),
      Q => txdata_double(4),
      R => SR(0)
    );
\txdata_double_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(5),
      Q => txdata_double(5),
      R => SR(0)
    );
\txdata_double_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(6),
      Q => txdata_double(6),
      R => SR(0)
    );
\txdata_double_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(7),
      Q => txdata_double(7),
      R => SR(0)
    );
\txdata_double_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(0),
      Q => txdata_double(8),
      R => SR(0)
    );
\txdata_double_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(1),
      Q => txdata_double(9),
      R => SR(0)
    );
\txdata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(0),
      Q => txdata_int(0),
      R => '0'
    );
\txdata_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(10),
      Q => txdata_int(10),
      R => '0'
    );
\txdata_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(11),
      Q => txdata_int(11),
      R => '0'
    );
\txdata_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(12),
      Q => txdata_int(12),
      R => '0'
    );
\txdata_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(13),
      Q => txdata_int(13),
      R => '0'
    );
\txdata_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(14),
      Q => txdata_int(14),
      R => '0'
    );
\txdata_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(15),
      Q => txdata_int(15),
      R => '0'
    );
\txdata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(1),
      Q => txdata_int(1),
      R => '0'
    );
\txdata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(2),
      Q => txdata_int(2),
      R => '0'
    );
\txdata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(3),
      Q => txdata_int(3),
      R => '0'
    );
\txdata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(4),
      Q => txdata_int(4),
      R => '0'
    );
\txdata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(5),
      Q => txdata_int(5),
      R => '0'
    );
\txdata_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(6),
      Q => txdata_int(6),
      R => '0'
    );
\txdata_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(7),
      Q => txdata_int(7),
      R => '0'
    );
\txdata_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(8),
      Q => txdata_int(8),
      R => '0'
    );
\txdata_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(9),
      Q => txdata_int(9),
      R => '0'
    );
\txdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(0),
      Q => p_1_in(0),
      R => SR(0)
    );
\txdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(1),
      Q => p_1_in(1),
      R => SR(0)
    );
\txdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(2),
      Q => p_1_in(2),
      R => SR(0)
    );
\txdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(3),
      Q => p_1_in(3),
      R => SR(0)
    );
\txdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(4),
      Q => p_1_in(4),
      R => SR(0)
    );
\txdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(5),
      Q => p_1_in(5),
      R => SR(0)
    );
\txdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(6),
      Q => p_1_in(6),
      R => SR(0)
    );
\txdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(7),
      Q => p_1_in(7),
      R => SR(0)
    );
txpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \txpowerdown_reg__0\,
      Q => txpowerdown_double,
      R => SR(0)
    );
txpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => txpowerdown_double,
      Q => txpowerdown,
      R => '0'
    );
txpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => powerdown,
      Q => \txpowerdown_reg__0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_block is
  port (
    gtrefclk : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    resetdone : out STD_LOGIC;
    cplllock : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    userclk : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    rxuserclk : in STD_LOGIC;
    rxuserclk2 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    mdc : in STD_LOGIC;
    mdio_i : in STD_LOGIC;
    mdio_o : out STD_LOGIC;
    mdio_t : out STD_LOGIC;
    phyaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    configuration_valid : in STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    gt0_pll0reset_out : out STD_LOGIC
  );
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma_block : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_block : entity is "yes";
end gig_ethernet_pcs_pma_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_block is
  signal \<const0>\ : STD_LOGIC;
  signal enablealign : STD_LOGIC;
  signal \^gt0_pll0lock_in\ : STD_LOGIC;
  signal mgt_rx_reset : STD_LOGIC;
  signal mgt_tx_reset : STD_LOGIC;
  signal powerdown : STD_LOGIC;
  signal \^resetdone\ : STD_LOGIC;
  signal rx_reset_done_i : STD_LOGIC;
  signal rxbuferr : STD_LOGIC;
  signal rxchariscomma : STD_LOGIC;
  signal rxcharisk : STD_LOGIC;
  signal rxclkcorcnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rxdisperr : STD_LOGIC;
  signal rxnotintable : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal transceiver_inst_n_5 : STD_LOGIC;
  signal transceiver_inst_n_6 : STD_LOGIC;
  signal txbuferr : STD_LOGIC;
  signal txchardispmode : STD_LOGIC;
  signal txchardispval : STD_LOGIC;
  signal txcharisk : STD_LOGIC;
  signal txdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_core_an_enable_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_an_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_drp_den_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_drp_dwe_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_drp_req_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_en_cdet_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_ewrap_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_loc_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_core_drp_daddr_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_core_drp_di_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_core_rxphy_correction_timer_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_core_rxphy_ns_field_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_core_rxphy_s_field_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_core_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_core_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_core_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_core_speed_selection_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_core_status_vector_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal NLW_gig_ethernet_pcs_pma_core_tx_code_group_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute B_SHIFTER_ADDR : string;
  attribute B_SHIFTER_ADDR of gig_ethernet_pcs_pma_core : label is "10'b0101010000";
  attribute C_1588 : integer;
  attribute C_1588 of gig_ethernet_pcs_pma_core : label is 0;
  attribute C_2_5G : string;
  attribute C_2_5G of gig_ethernet_pcs_pma_core : label is "FALSE";
  attribute C_COMPONENT_NAME : string;
  attribute C_COMPONENT_NAME of gig_ethernet_pcs_pma_core : label is "gig_ethernet_pcs_pma";
  attribute C_DYNAMIC_SWITCHING : string;
  attribute C_DYNAMIC_SWITCHING of gig_ethernet_pcs_pma_core : label is "FALSE";
  attribute C_ELABORATION_TRANSIENT_DIR : string;
  attribute C_ELABORATION_TRANSIENT_DIR of gig_ethernet_pcs_pma_core : label is "BlankString";
  attribute C_FAMILY : string;
  attribute C_FAMILY of gig_ethernet_pcs_pma_core : label is "artix7";
  attribute C_HAS_AN : string;
  attribute C_HAS_AN of gig_ethernet_pcs_pma_core : label is "FALSE";
  attribute C_HAS_AXIL : string;
  attribute C_HAS_AXIL of gig_ethernet_pcs_pma_core : label is "FALSE";
  attribute C_HAS_MDIO : string;
  attribute C_HAS_MDIO of gig_ethernet_pcs_pma_core : label is "TRUE";
  attribute C_HAS_TEMAC : string;
  attribute C_HAS_TEMAC of gig_ethernet_pcs_pma_core : label is "TRUE";
  attribute C_IS_SGMII : string;
  attribute C_IS_SGMII of gig_ethernet_pcs_pma_core : label is "FALSE";
  attribute C_RX_GMII_CLK : string;
  attribute C_RX_GMII_CLK of gig_ethernet_pcs_pma_core : label is "TXOUTCLK";
  attribute C_SGMII_FABRIC_BUFFER : string;
  attribute C_SGMII_FABRIC_BUFFER of gig_ethernet_pcs_pma_core : label is "TRUE";
  attribute C_SGMII_PHY_MODE : string;
  attribute C_SGMII_PHY_MODE of gig_ethernet_pcs_pma_core : label is "FALSE";
  attribute C_USE_LVDS : string;
  attribute C_USE_LVDS of gig_ethernet_pcs_pma_core : label is "FALSE";
  attribute C_USE_TBI : string;
  attribute C_USE_TBI of gig_ethernet_pcs_pma_core : label is "FALSE";
  attribute C_USE_TRANSCEIVER : string;
  attribute C_USE_TRANSCEIVER of gig_ethernet_pcs_pma_core : label is "TRUE";
  attribute GT_RX_BYTE_WIDTH : integer;
  attribute GT_RX_BYTE_WIDTH of gig_ethernet_pcs_pma_core : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of gig_ethernet_pcs_pma_core : label is "soft";
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_core : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of gig_ethernet_pcs_pma_core : label is "true";
begin
  \^gt0_pll0lock_in\ <= gt0_pll0lock_in;
  cplllock <= \^gt0_pll0lock_in\;
  resetdone <= \^resetdone\;
  status_vector(15) <= \<const0>\;
  status_vector(14) <= \<const0>\;
  status_vector(13) <= \<const0>\;
  status_vector(12) <= \<const0>\;
  status_vector(11) <= \<const0>\;
  status_vector(10) <= \<const0>\;
  status_vector(9) <= \<const0>\;
  status_vector(8) <= \<const0>\;
  status_vector(7) <= \<const0>\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
gig_ethernet_pcs_pma_core: entity work.gig_ethernet_pcs_pma_v16_2_13
     port map (
      an_adv_config_val => '0',
      an_adv_config_vector(15 downto 0) => B"0000000000000000",
      an_enable => NLW_gig_ethernet_pcs_pma_core_an_enable_UNCONNECTED,
      an_interrupt => NLW_gig_ethernet_pcs_pma_core_an_interrupt_UNCONNECTED,
      an_restart_config => '0',
      basex_or_sgmii => '0',
      configuration_valid => configuration_valid,
      configuration_vector(4) => '0',
      configuration_vector(3 downto 0) => configuration_vector(3 downto 0),
      correction_timer(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      dcm_locked => mmcm_locked,
      drp_daddr(9 downto 0) => NLW_gig_ethernet_pcs_pma_core_drp_daddr_UNCONNECTED(9 downto 0),
      drp_dclk => '0',
      drp_den => NLW_gig_ethernet_pcs_pma_core_drp_den_UNCONNECTED,
      drp_di(15 downto 0) => NLW_gig_ethernet_pcs_pma_core_drp_di_UNCONNECTED(15 downto 0),
      drp_do(15 downto 0) => B"0000000000000000",
      drp_drdy => '0',
      drp_dwe => NLW_gig_ethernet_pcs_pma_core_drp_dwe_UNCONNECTED,
      drp_gnt => '0',
      drp_req => NLW_gig_ethernet_pcs_pma_core_drp_req_UNCONNECTED,
      en_cdet => NLW_gig_ethernet_pcs_pma_core_en_cdet_UNCONNECTED,
      enablealign => enablealign,
      ewrap => NLW_gig_ethernet_pcs_pma_core_ewrap_UNCONNECTED,
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gtx_clk => '0',
      link_timer_basex(9 downto 0) => B"0000000000",
      link_timer_sgmii(9 downto 0) => B"0000000000",
      link_timer_value(9 downto 0) => B"0000000000",
      loc_ref => NLW_gig_ethernet_pcs_pma_core_loc_ref_UNCONNECTED,
      mdc => mdc,
      mdio_in => mdio_i,
      mdio_out => mdio_o,
      mdio_tri => mdio_t,
      mgt_rx_reset => mgt_rx_reset,
      mgt_tx_reset => mgt_tx_reset,
      phyad(4 downto 0) => phyaddr(4 downto 0),
      pma_rx_clk0 => '0',
      pma_rx_clk1 => '0',
      powerdown => powerdown,
      reset => reset,
      reset_done => \^resetdone\,
      rx_code_group0(9 downto 0) => B"0000000000",
      rx_code_group1(9 downto 0) => B"0000000000",
      rx_gt_nominal_latency(15 downto 0) => B"0000000011111000",
      rxbufstatus(1) => rxbuferr,
      rxbufstatus(0) => '0',
      rxchariscomma(0) => rxchariscomma,
      rxcharisk(0) => rxcharisk,
      rxclkcorcnt(2) => '0',
      rxclkcorcnt(1 downto 0) => rxclkcorcnt(1 downto 0),
      rxdata(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr,
      rxnotintable(0) => rxnotintable,
      rxphy_correction_timer(63 downto 0) => NLW_gig_ethernet_pcs_pma_core_rxphy_correction_timer_UNCONNECTED(63 downto 0),
      rxphy_ns_field(31 downto 0) => NLW_gig_ethernet_pcs_pma_core_rxphy_ns_field_UNCONNECTED(31 downto 0),
      rxphy_s_field(47 downto 0) => NLW_gig_ethernet_pcs_pma_core_rxphy_s_field_UNCONNECTED(47 downto 0),
      rxrecclk => '0',
      rxrundisp(0) => '0',
      s_axi_aclk => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arready => NLW_gig_ethernet_pcs_pma_core_s_axi_arready_UNCONNECTED,
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awready => NLW_gig_ethernet_pcs_pma_core_s_axi_awready_UNCONNECTED,
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_gig_ethernet_pcs_pma_core_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_gig_ethernet_pcs_pma_core_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_gig_ethernet_pcs_pma_core_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_resetn => '0',
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_gig_ethernet_pcs_pma_core_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_gig_ethernet_pcs_pma_core_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wready => NLW_gig_ethernet_pcs_pma_core_s_axi_wready_UNCONNECTED,
      s_axi_wvalid => '0',
      signal_detect => signal_detect,
      speed_is_100 => '0',
      speed_is_10_100 => '0',
      speed_selection(1 downto 0) => NLW_gig_ethernet_pcs_pma_core_speed_selection_UNCONNECTED(1 downto 0),
      status_vector(15 downto 7) => NLW_gig_ethernet_pcs_pma_core_status_vector_UNCONNECTED(15 downto 7),
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      systemtimer_ns_field(31 downto 0) => B"00000000000000000000000000000000",
      systemtimer_s_field(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      tx_code_group(9 downto 0) => NLW_gig_ethernet_pcs_pma_core_tx_code_group_UNCONNECTED(9 downto 0),
      txbuferr => txbuferr,
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk,
      txdata(7 downto 0) => txdata(7 downto 0),
      userclk => '0',
      userclk2 => userclk2
    );
sync_block_rx_reset_done: entity work.gig_ethernet_pcs_pma_sync_block
     port map (
      data_in => transceiver_inst_n_6,
      data_out => rx_reset_done_i,
      userclk2 => userclk2
    );
sync_block_tx_reset_done: entity work.gig_ethernet_pcs_pma_sync_block_0
     port map (
      data_in => transceiver_inst_n_5,
      resetdone => \^resetdone\,
      resetdone_0 => rx_reset_done_i,
      userclk2 => userclk2
    );
transceiver_inst: entity work.gig_ethernet_pcs_pma_transceiver
     port map (
      D(7 downto 0) => txdata(7 downto 0),
      Q(1 downto 0) => rxclkcorcnt(1 downto 0),
      SR(0) => mgt_tx_reset,
      data_in => transceiver_inst_n_5,
      enablealign => enablealign,
      gt0_pll0lock_in => \^gt0_pll0lock_in\,
      gt0_pll0outclk_in => gt0_pll0outclk_in,
      gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
      gt0_pll0refclklost_in => gt0_pll0refclklost_in,
      gt0_pll0reset_out => gt0_pll0reset_out,
      gt0_pll1outclk_in => gt0_pll1outclk_in,
      gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
      gtrefclk_bufg => gtrefclk_bufg,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      mmcm_reset => mmcm_reset,
      pma_reset => pma_reset,
      powerdown => powerdown,
      reset_sync5(0) => mgt_rx_reset,
      rx_fsm_reset_done_int_reg => transceiver_inst_n_6,
      rxbuferr => rxbuferr,
      rxchariscomma => rxchariscomma,
      rxcharisk => rxcharisk,
      \rxdata_reg[7]_0\(7 downto 0) => rxdata(7 downto 0),
      rxdisperr => rxdisperr,
      rxn => rxn,
      rxnotintable => rxnotintable,
      rxoutclk => rxoutclk,
      rxp => rxp,
      status_vector(0) => \^status_vector\(1),
      txbuferr => txbuferr,
      txchardispmode_reg_reg_0(0) => txchardispmode,
      txchardispval_reg_reg_0(0) => txchardispval,
      txcharisk_reg_reg_0(0) => txcharisk,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      userclk2 => userclk2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma is
  port (
    gtrefclk : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    resetdone : out STD_LOGIC;
    cplllock : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    userclk : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    rxuserclk : in STD_LOGIC;
    rxuserclk2 : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    mdc : in STD_LOGIC;
    mdio_i : in STD_LOGIC;
    mdio_o : out STD_LOGIC;
    mdio_t : out STD_LOGIC;
    phyaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    configuration_valid : in STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    gt0_pll0reset_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of gig_ethernet_pcs_pma : entity is true;
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of gig_ethernet_pcs_pma : entity is "gig_ethernet_pcs_pma_v16_2_13,Vivado 2023.1.1";
end gig_ethernet_pcs_pma;

architecture STRUCTURE of gig_ethernet_pcs_pma is
  signal \<const0>\ : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_status_vector_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 7 );
  attribute EXAMPLE_SIMULATION of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
  status_vector(15) <= \<const0>\;
  status_vector(14) <= \<const0>\;
  status_vector(13) <= \<const0>\;
  status_vector(12) <= \<const0>\;
  status_vector(11) <= \<const0>\;
  status_vector(10) <= \<const0>\;
  status_vector(9) <= \<const0>\;
  status_vector(8) <= \<const0>\;
  status_vector(7) <= \<const0>\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.gig_ethernet_pcs_pma_block
     port map (
      configuration_valid => configuration_valid,
      configuration_vector(4) => '0',
      configuration_vector(3 downto 0) => configuration_vector(3 downto 0),
      cplllock => cplllock,
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_pll0lock_in => gt0_pll0lock_in,
      gt0_pll0outclk_in => gt0_pll0outclk_in,
      gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
      gt0_pll0refclklost_in => gt0_pll0refclklost_in,
      gt0_pll0reset_out => gt0_pll0reset_out,
      gt0_pll1outclk_in => gt0_pll1outclk_in,
      gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
      gtrefclk => '0',
      gtrefclk_bufg => gtrefclk_bufg,
      independent_clock_bufg => independent_clock_bufg,
      mdc => mdc,
      mdio_i => mdio_i,
      mdio_o => mdio_o,
      mdio_t => mdio_t,
      mmcm_locked => mmcm_locked,
      mmcm_reset => mmcm_reset,
      phyaddr(4 downto 0) => phyaddr(4 downto 0),
      pma_reset => pma_reset,
      reset => reset,
      resetdone => resetdone,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      rxuserclk => '0',
      rxuserclk2 => '0',
      signal_detect => signal_detect,
      status_vector(15 downto 7) => NLW_U0_status_vector_UNCONNECTED(15 downto 7),
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      userclk2 => userclk2
    );
end STRUCTURE;
