library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_MISC.ALL;
use ieee.numeric_std.all;

library UNISIM;
use UNISIM.VComponents.all;

library mylib;
use mylib.defToplevel.all;
use mylib.defBCT.all;
use mylib.defBusAddressMap.all;
use mylib.defSiTCP.all;
use mylib.defRBCP.all;
use mylib.defMiiRstTimer.all;
use mylib.defA9C.all;

entity toplevel is
  Port (
    -- System ---------------------------------------------------
    CLK50M      : in     std_logic;
    LED         : out    std_logic_vector(3 downto 0);
    DIP         : in     std_logic_vector(3 downto 0);
    VP          : in     std_logic;
    VN          : in     std_logic;
    
    -- GTP ------------------------------------------------------
    GTP_REFCLK_P : in    std_logic;
    GTP_REFCLK_N : in    std_logic;
    GTP_TX_P     : out   std_logic;
    GTP_RX_P     : in    std_logic;
    GTP_TX_N     : out   std_logic;
    GTP_RX_N     : in    std_logic;
    SFP_SCL      : inout std_logic;
    SFP_SDA      : inout std_logic;
    SFP_TXFAULT  : in    std_logic;
    SFP_LOS      : in    std_logic;
    
    -- SFP port to AMANEQ ---------------------------------------
    --SFP_MZN_RXP  : in std_logic;
    --SFP_MZN_RXN  : in std_logic;
    --SFP_MZN_TXP  : out std_logic;
    --SFP_MZN_TXN  : out std_logic;
    --SFP_CLK_SCL  : inout std_logic;
    --SFP_CLK_SDA  : inout std_logic;
    
    -- SPI flash ------------------------------------------------
    MOSI         : inout std_logic;
    DIN          : inout std_logic;
    SPID2        : inout std_logic;
    SPID3        : inout std_logic;
    FCSB         : out   std_logic;
    
    -- Jumper ---------------------------------------------------
    JUMPER       : in    std_logic_vector(7 downto 0);
    
    -- EEPROM ---------------------------------------------------
    EEP_CS       : out   std_logic;
    EEP_SK       : out   std_logic;
    EEP_DI       : out   std_logic;
    EEP_DO       : in    std_logic;
    
    -- NIM-IO ---------------------------------------------------
    NIM_IN       : in    std_logic_vector(2 downto 1);
    NIM_OUT      : out   std_logic;
    
    -- Pipeline ADC ---------------------------------------------
    -- ADC_CLK_P    : out std_logic_vector(3 downto 0);
    -- ADC_CLK_N    : out std_logic_vector(3 downto 0);
    -- ADC_DCO_P    : in std_logic_vector(3 downto 0);
    -- ADC_DCO_N    : in std_logic_vector(3 downto 0);
    -- ADC_FCO_P    : in std_logic_vector(3 downto 0);
    -- ADC_FCO_N    : in std_logic_vector(3 downto 0);
    ADC_SCLK     : out   std_logic_vector(3 downto 0);
    ADC_CSB      : out   std_logic_vector(3 downto 0);
    ADC_SDIO     : inout std_logic_vector(3 downto 0)
    -- ADC_OUT_P    : in std_logic_vector(31 downto 0);
    -- ADC_OUT_N    : in std_logic_vector(31 downto 0)
  );
end toplevel;

architecture Behavioral of toplevel is
  attribute mark_debug : string;

  -- System --------------------------------------------------------------------------------
  signal sitcp_reset      : std_logic;
  signal system_reset     : std_logic;
  signal user_reset       : std_logic;

  signal mii_reset        : std_logic;
  signal emergency_reset  : std_logic_vector(kNumGtx-1 downto 0);

  signal bct_reset        : std_logic;
  signal rst_from_bus     : std_logic;

  signal delayed_usr_rstb : std_logic;

  -- DIP -----------------------------------------------------------------------------------
  signal dip_sw       : std_logic_vector(DIP'range);
  subtype DipID is integer range -1 to 3;
  type regLeaf is record
    Index : DipID;
  end record;
  constant kSiTCP     : regLeaf := (Index => 0);
  constant kClkOut    : regLeaf := (Index => 1);
  constant kNC3       : regLeaf := (Index => 2);
  constant kNC4       : regLeaf := (Index => 3);
  constant kDummy     : regLeaf := (Index => -1);

  -- MIG ----------------------------------------------------------------------------------

  -- SDS ---------------------------------------------------------------------
  signal shutdown_over_temp     : std_logic;
  signal uncorrectable_flag     : std_logic;

  -- FMP ---------------------------------------------------------------------

  -- BCT -----------------------------------------------------------------------------------
  signal addr_LocalBus          : LocalAddressType;
  signal data_LocalBusIn        : LocalBusInType;
  signal data_LocalBusOut       : DataArray;
  signal re_LocalBus            : ControlRegArray;
  signal we_LocalBus            : ControlRegArray;
  signal ready_LocalBus         : ControlRegArray;

  -- TSD -----------------------------------------------------------------------------------
  type typeTcpData is array(kNumGtx-1 downto 0) of std_logic_vector(kWidthDataTCP-1 downto 0);
  signal wd_to_tsd                              : typeTcpData;
  signal we_to_tsd, empty_to_tsd, re_from_tsd   : std_logic_vector(kNumGtx-1 downto 0);

  -- SiTCP ---------------------------------------------------------------------------------
  type typeUdpAddr is array(kNumGtx-1 downto 0) of std_logic_vector(kWidthAddrRBCP-1 downto 0);
  type typeUdpData is array(kNumGtx-1 downto 0) of std_logic_vector(kWidthDataRBCP-1 downto 0);

  signal tcp_isActive, close_req, close_act    : std_logic_vector(kNumGtx-1 downto 0);

  signal tcp_tx_clk        : std_logic_vector(kNumGtx-1 downto 0);
  signal tcp_rx_wr         : std_logic_vector(kNumGtx-1 downto 0);
  signal tcp_rx_data       : typeTcpData;
  signal tcp_tx_full       : std_logic_vector(kNumGtx-1 downto 0);
  signal tcp_tx_wr         : std_logic_vector(kNumGtx-1 downto 0);
  signal tcp_tx_data       : typeTcpData;

  signal rbcp_addr         : typeUdpAddr;
  signal rbcp_wd           : typeUdpData;
  signal rbcp_we           : std_logic_vector(kNumGtx-1 downto 0); --: Write enable
  signal rbcp_re           : std_logic_vector(kNumGtx-1 downto 0); --: Read enable
  signal rbcp_ack          : std_logic_vector(kNumGtx-1 downto 0); --: Access acknowledge
  signal rbcp_rd           : typeUdpData;

  signal rbcp_gmii_addr    : typeUdpAddr;
  signal rbcp_gmii_wd      : typeUdpData;
  signal rbcp_gmii_we      : std_logic_vector(kNumGtx-1 downto 0); --: Write enable
  signal rbcp_gmii_re      : std_logic_vector(kNumGtx-1 downto 0); --: Read enable
  signal rbcp_gmii_ack     : std_logic_vector(kNumGtx-1 downto 0); --: Access acknowledge
  signal rbcp_gmii_rd      : typeUdpData;

  component WRAP_SiTCP_GMII_XC7A_32K
    port
      (
        CLK                   : in  std_logic;                     --: System Clock >129MHz
        RST                   : in  std_logic;                     --: System reset
        -- Configuration parameters
        FORCE_DEFAULTn        : in  std_logic;                     --: Load default parameters
        EXT_IP_ADDR           : in  std_logic_vector(31 downto 0); --: IP address[31:0]
        EXT_TCP_PORT          : in  std_logic_vector(15 downto 0); --: TCP port #[15:0]
        EXT_RBCP_PORT         : in  std_logic_vector(15 downto 0); --: RBCP port #[15:0]
        PHY_ADDR              : in  std_logic_vector(4 downto 0);  --: PHY-device MIF address[4:0]

        -- EEPROM
        EEPROM_CS             : out std_logic;                     --: Chip select
        EEPROM_SK             : out std_logic;                     --: Serial data clock
        EEPROM_DI             : out std_logic;                     --: Serial write data
        EEPROM_DO             : in  std_logic;                     --: Serial read data
        -- user data, intialial values are stored in the EEPROM, 0xFFFF_FC3C-3F
        USR_REG_X3C           : out std_logic_vector(7 downto 0);  --: Stored at 0xFFFF_FF3C
        USR_REG_X3D           : out std_logic_vector(7 downto 0);  --: Stored at 0xFFFF_FF3D
        USR_REG_X3E           : out std_logic_vector(7 downto 0);  --: Stored at 0xFFFF_FF3E
        USR_REG_X3F           : out std_logic_vector(7 downto 0);  --: Stored at 0xFFFF_FF3F
        -- MII interface
        GMII_RSTn             : out std_logic;                     --: PHY reset
        GMII_1000M            : in  std_logic;                     --: GMII mode (0:MII, 1:GMII)
        -- TX
        GMII_TX_CLK           : in  std_logic;                     -- : Tx clock
        GMII_TX_EN            : out std_logic;                     --: Tx enable
        GMII_TXD              : out std_logic_vector(7 downto 0);  --: Tx data[7:0]
        GMII_TX_ER            : out std_logic;                     --: TX error
        -- RX
        GMII_RX_CLK           : in  std_logic;                     --: Rx clock
        GMII_RX_DV            : in  std_logic;                     --: Rx data valid
        GMII_RXD              : in  std_logic_vector(7 downto 0);  --: Rx data[7:0]
        GMII_RX_ER            : in  std_logic;                     --: Rx error
        GMII_CRS              : in  std_logic;                     --: Carrier sense
        GMII_COL              : in  std_logic;                     --: Collision detected
        -- Management IF
        GMII_MDC              : out std_logic;                     --: Clock for MDIO
        GMII_MDIO_IN          : in  std_logic;                     --: Data
        GMII_MDIO_OUT         : out std_logic;                     --: Data
        GMII_MDIO_OE          : out std_logic;                     --: MDIO output enable
        -- User I/F
        SiTCP_RST             : out std_logic;                     --: Reset for SiTCP and related circuits
        -- TCP connection control
        TCP_OPEN_REQ          : in  std_logic;                     --: Reserved input, shoud be 0
        TCP_OPEN_ACK          : out std_logic;                     --: Acknowledge for open (=Socket busy)
        TCP_ERROR             : out std_logic;                     --: TCP error, its active period is equal to MSL
        TCP_CLOSE_REQ         : out std_logic;                     --: Connection close request
        TCP_CLOSE_ACK         : in  std_logic;                     --: Acknowledge for closing
        -- FIFO I/F
        TCP_RX_WC             : in  std_logic_vector(15 downto 0); --: Rx FIFO write count[15:0] (Unused bits should be set 1)
        TCP_RX_WR             : out std_logic;                     --: Write enable
        TCP_RX_DATA           : out std_logic_vector(7 downto 0);  --: Write data[7:0]
        TCP_TX_FULL           : out std_logic;                     --: Almost full flag
        TCP_TX_WR             : in  std_logic;                     --: Write enable
        TCP_TX_DATA           : in  std_logic_vector(7 downto 0);  --: Write data[7:0]
        -- RBCP
        RBCP_ACT              : out std_logic;                     --: RBCP active
        RBCP_ADDR             : out std_logic_vector(31 downto 0); --: Address[31:0]
        RBCP_WD               : out std_logic_vector(7 downto 0);  --: Data[7:0]
        RBCP_WE               : out std_logic;                     --: Write enable
        RBCP_RE               : out std_logic;                     --: Read enable
        RBCP_ACK              : in  std_logic;                     --: Access acknowledge
        RBCP_RD               : in  std_logic_vector(7 downto 0 )  --: Read data[7:0]
        );
  end component;
  
  -- LED Module ----------------------------------------------------------------------------
  -- This module is used to check if slow control(RBCP) is possible
  -- The purpose is to check if various parameters can be read/written after 
  -- SiTCP communication is established during the firmware development
  component LEDModule is
    port(
        rst             : in std_logic;
        clk             : in std_logic;
        -- Module output --
        outLED          : out std_logic_vector(kNumLED downto 1);
        -- Local bus --
        addrLocalBus    : in  LocalAddressType;
        dataLocalBusIn  : in  LocalBusInType;
        dataLocalBusOut : out LocalBusOutType;
        reLocalBus      : in  std_logic;
        weLocalBus      : in  std_logic;
        readyLocalBus   : out std_logic
    );
  end component;
  
  -- AD9637 SPI ----------------------------------------------------------------------------
  component AD9637SPI is
    port(
      -- System --
      CLK              : in    std_logic;
      RST              : in    std_logic;
    
      -- Module output --
      ADC_SYNC         : out   std_logic;
      ADC_SCK          : out   std_logic_vector(kNumADC-1 downto 0);
      ADC_CSB          : out   std_logic_vector(kNumADC-1 downto 0);
      ADC_SDIO         : inout std_logic_vector(kNumADC-1 downto 0);
    
      -- Local bus --
      addrLocalBus     : in    LocalAddressType;
      dataLocalBusIn   : in    LocalBusInType;
      dataLocalBusOut  : out   LocalBusOutType;
      reLocalBus       : in    std_logic;
      weLocalBus       : in    std_logic;
      readyLocalBus    : out   std_logic
    );  
  end component;

  -- SFP transceiver -----------------------------------------------------------------------
  constant kMiiPhyad      : std_logic_vector(kWidthPhyAddr-1 downto 0):= "00000";
  signal mii_init_mdc, mii_init_mdio : std_logic;

  component mii_initializer is
    port(
      -- System
      CLK         : in std_logic;
      --RST         => system_reset,
      RST         : in std_logic;
      -- PHY
      PHYAD       : in std_logic_vector(kWidthPhyAddr-1 downto 0);
      -- MII
      MDC         : out std_logic;
      MDIO_OUT    : out std_logic;
      -- status
      COMPLETE    : out std_logic
      );
  end component;

  signal mmcm_reset_all   : std_logic;
  signal mmcm_reset       : std_logic_vector(kNumGtx-1 downto 0);
  signal mmcm_locked      : std_logic;

  signal gt0_pll0outclk, gt0_pll0outrefclk               : std_logic;
  signal gt0_pll1outclk, gt0_pll1outrefclk               : std_logic;
  signal gt0_pll0lock, gt0_pll0refclklost, gt0_pll0reset : std_logic;
  signal gtrefclk_i, gtrefclk_bufg                       : std_logic;
  signal txout_clk, rxout_clk                            : std_logic_vector(kNumGtx-1 downto 0);
  signal user_clk, user_clk2, rxuser_clk, rxuser_clk2    : std_logic;

  signal eth_tx_clk       : std_logic_vector(kNumGtx-1 downto 0);
  signal eth_tx_en        : std_logic_vector(kNumGtx-1 downto 0);
  signal eth_tx_er        : std_logic_vector(kNumGtx-1 downto 0);
  signal eth_tx_d         : typeTcpData;

  signal eth_rx_clk       : std_logic_vector(kNumGtx-1 downto 0);
  signal eth_rx_dv        : std_logic_vector(kNumGtx-1 downto 0);
  signal eth_rx_er        : std_logic_vector(kNumGtx-1 downto 0);
  signal eth_rx_d         : typeTcpData;


  -- Clock ---------------------------------------------------------------------------
  signal clk_gbe, clk_sys   : std_logic;
  signal clk_locked         : std_logic;
  signal clk_sys_locked     : std_logic;
  signal clk_spi            : std_logic;
  signal clk_adc_spi        : std_logic;

  signal clk_is_ready       : std_logic;
  
  component clk_wiz_sys
    port(-- Clock in ports
      -- Clock out ports
      clk_sys           : out std_logic;
      clk_indep_gtx     : out std_logic;
      clk_spi           : out std_logic;
      clk_adc_spi       : out std_logic;
      -- Status and control signals
      reset             : in  std_logic;
      locked            : out std_logic;
      clk_in1           : in  std_logic
    );
  end component;

  signal clk_fast, clk_slow   : std_logic;
  --signal pll_is_locked        : std_logic;
  signal test : std_logic_vector(3 downto 0);


 begin
  -- ===================================================================================
  -- body
  -- ===================================================================================

  -- Global ----------------------------------------------------------------------------
  system_reset    <= not clk_sys_locked;
  sitcp_reset     <= not clk_sys_locked;
  clk_locked      <= clk_sys_locked;
  clk_is_ready    <= clk_locked;

  user_reset      <= system_reset or rst_from_bus or emergency_reset(0);
  bct_reset       <= system_reset or emergency_reset(0);
  
  
  --NIM_OUT     <= txout_clk(0);
  NIM_OUT     <= test(0);
  
  dip_sw(0)   <= DIP(0);
  dip_sw(1)   <= DIP(1);
  dip_sw(2)   <= DIP(2);
  dip_sw(3)   <= DIP(3);

  -- MIKUMARI --------------------------------------------------------------------------
  
  -- AD9637 SPI-------------------------------------------------------------------------
  ADC_SCLK <= test;
  u_A9C_Inst : entity mylib.AD9637SPI
    port map(
      RST              => user_reset,
      clk              => clk_adc_spi,
    
      -- Module output --
      ADC_SYNC         => open,       -- AD9637's SYNC port is not connected anywhere on NetWavetizer-40
      ADC_SCK          => test,
      ADC_CSB          => ADC_CSB,
      ADC_SDIO         => ADC_SDIO,
      
      rd               => LED(3 downto 0),
    
      -- Local bus --
      addrLocalBus     => addr_LocalBus,
      dataLocalBusIn   => data_LocalBusIn,
      dataLocalBusOut  => data_LocalBusOut(kA9C.ID),
      reLocalBus       => re_LocalBus(kA9C.ID),
      weLocalBus       => we_LocalBus(kA9C.ID),
      readyLocalBus    => ready_LocalBus(kA9C.ID)
      );

  -- MIG -------------------------------------------------------------------------------

  -- TSD -------------------------------------------------------------------------------
  gen_tsd: for i in 0 to kNumGtx-1 generate
    u_TSD_Inst : entity mylib.TCP_sender
      port map(
        RST                     => user_reset,
        CLK                     => clk_sys,

        -- data from EVB --
        rdFromEVB               => X"00",
        rvFromEVB               => '0',
        emptyFromEVB            => '1',
        reToEVB                 => open,

         -- data to SiTCP
         isActive                => tcp_isActive(i),
         afullTx                 => tcp_tx_full(i),
         weTx                    => tcp_tx_wr(i),
         wdTx                    => tcp_tx_data(i)

        );
  end generate;

  -- SDS --------------------------------------------------------------------
  u_SDS_Inst : entity mylib.SelfDiagnosisSystem
    port map(
      rst                => user_reset,
      clk                => clk_slow,
      clkIcap            => clk_spi,

      -- Module input  --
      VP                 => VP,
      VN                 => VN,

      -- Module output --
      shutdownOverTemp   => shutdown_over_temp,
      uncorrectableAlarm => uncorrectable_flag,

      -- Local bus --
      addrLocalBus       => addr_LocalBus,
      dataLocalBusIn     => data_LocalBusIn,
      dataLocalBusOut    => data_LocalBusOut(kSDS.ID),
      reLocalBus         => re_LocalBus(kSDS.ID),
      weLocalBus         => we_LocalBus(kSDS.ID),
      readyLocalBus      => ready_LocalBus(kSDS.ID)
      );


  -- FMP --------------------------------------------------------------------
  u_FMP_Inst : entity mylib.FlashMemoryProgrammer
    port map(
      rst               => user_reset,
      clk               => clk_slow,
      clkSpi            => clk_spi,

      -- Module output --
      CS_SPI            => FCSB,
--      SCLK_SPI          => USR_CLK,
      MOSI_SPI          => MOSI,
      MISO_SPI          => DIN,

      -- Local bus --
      addrLocalBus      => addr_LocalBus,
      dataLocalBusIn    => data_LocalBusIn,
      dataLocalBusOut   => data_LocalBusOut(kFMP.ID),
      reLocalBus        => re_LocalBus(kFMP.ID),
      weLocalBus        => we_LocalBus(kFMP.ID),
      readyLocalBus     => ready_LocalBus(kFMP.ID)
      );


  -- BCT -------------------------------------------------------------------------------
  -- Actual local bus
  u_BCT_Inst : entity mylib.BusController
    port map(
      rstSys                    => bct_reset,
      rstFromBus                => rst_from_bus,
      reConfig                  => open,
      clk                       => clk_slow,
      -- Local Bus --
      addrLocalBus              => addr_LocalBus,
      dataFromUserModules       => data_LocalBusOut,
      dataToUserModules         => data_LocalBusIn,
      reLocalBus                => re_LocalBus,
      weLocalBus                => we_LocalBus,
      readyLocalBus             => ready_LocalBus,
      -- RBCP --
      addrRBCP                  => rbcp_addr(0),
      wdRBCP                    => rbcp_wd(0),
      weRBCP                    => rbcp_we(0),
      reRBCP                    => rbcp_re(0),
      ackRBCP                   => rbcp_ack(0),
      rdRBCP                    => rbcp_rd(0)
      );

  -- SiTCP Inst ------------------------------------------------------------------------

  gen_SiTCP : for i in 0 to kNumGtx-1 generate

    eth_tx_clk(i)      <= eth_rx_clk(0);

    u_SiTCP_Inst : WRAP_SiTCP_GMII_XC7A_32K
      port map
      (
        CLK               => clk_sys,              --: System Clock >129MHz
        RST               => sitcp_reset,          --: System reset
        -- Configuration parameters
        FORCE_DEFAULTn    => dip_sw(kSiTCP.Index), --: Load default parameters
        EXT_IP_ADDR       => X"00000000",          --: IP address[31:0]
        EXT_TCP_PORT      => X"0000",              --: TCP port #[15:0]
        EXT_RBCP_PORT     => X"0000",              --: RBCP port #[15:0]
        PHY_ADDR          => "00000",                                                                                                                                                                      --: PHY-device MIF address[4:0]
        -- EEPROM
        EEPROM_CS         => EEP_CS,               --: Chip select
        EEPROM_SK         => EEP_SK,               --: Serial data clock
        EEPROM_DI         => EEP_DI,               --: Serial write data
        EEPROM_DO         => EEP_DO,               --: Serial read data
        -- user data, intialial values are stored in the EEPROM, 0xFFFF_FC3C-3F
        USR_REG_X3C       => open,                 --: Stored at 0xFFFF_FF3C
        USR_REG_X3D       => open,                 --: Stored at 0xFFFF_FF3D
        USR_REG_X3E       => open,                 --: Stored at 0xFFFF_FF3E
        USR_REG_X3F       => open,                 --: Stored at 0xFFFF_FF3F
        -- MII interface
        GMII_RSTn         => open,                 --: PHY reset
        GMII_1000M        => '1',                  --: GMII mode (0:MII, 1:GMII)
        -- TX
        GMII_TX_CLK       => eth_tx_clk(i),        --: Tx clock
        GMII_TX_EN        => eth_tx_en(i),         --: Tx enable
        GMII_TXD          => eth_tx_d(i),          --: Tx data[7:0]
        GMII_TX_ER        => eth_tx_er(i),         --: TX error
        -- RX
        GMII_RX_CLK       => eth_rx_clk(0),        --: Rx clock
        GMII_RX_DV        => eth_rx_dv(i),         --: Rx data valid
        GMII_RXD          => eth_rx_d(i),          --: Rx data[7:0]
        GMII_RX_ER        => eth_rx_er(i),         --: Rx error
        GMII_CRS          => '0',                  --: Carrier sense
        GMII_COL          => '0',                  --: Collision detected
        -- Management IF
        GMII_MDC          => open,                 --: Clock for MDIO
        GMII_MDIO_IN      => '1',                  --: Data
        GMII_MDIO_OUT     => open,                 --: Data
        GMII_MDIO_OE      => open,                 --: MDIO output enable
        -- User I/F
        SiTCP_RST         => emergency_reset(i),   --: Reset for SiTCP and related circuits
        -- TCP connection control
        TCP_OPEN_REQ      => '0',                  --: Reserved input, shoud be 0
        TCP_OPEN_ACK      => tcp_isActive(i),      --: Acknowledge for open (=Socket busy)
        -- TCP_ERROR           : out    std_logic; --: TCP error, its active period is equal to MSL
        TCP_CLOSE_REQ     => close_req(i),         --: Connection close request
        TCP_CLOSE_ACK     => close_act(i),         --: Acknowledge for closing
        -- FIFO I/F
        TCP_RX_WC         => X"0000",              --: Rx FIFO write count[15:0] (Unused bits should be set 1)
        TCP_RX_WR         => open,                 --: Read enable
        TCP_RX_DATA       => open,                 --: Read data[7:0]
        TCP_TX_FULL       => tcp_tx_full(i),       --: Almost full flag
        TCP_TX_WR         => tcp_tx_wr(i),         --: Write enable
        TCP_TX_DATA       => tcp_tx_data(i),       --: Write data[7:0]
        -- RBCP
        RBCP_ACT          => open,                 --: RBCP active
        RBCP_ADDR         => rbcp_gmii_addr(i),    --: Address[31:0]
        RBCP_WD           => rbcp_gmii_wd(i),      --: Data[7:0]
        RBCP_WE           => rbcp_gmii_we(i),      --: Write enable
        RBCP_RE           => rbcp_gmii_re(i),      --: Read enable
        RBCP_ACK          => rbcp_gmii_ack(i),     --: Access acknowledge
        RBCP_RD           => rbcp_gmii_rd(i)       --: Read data[7:0]
        );

  u_RbcpCdc : entity mylib.RbcpCdc
  port map(
    -- Mikumari clock domain --
    rstSys      => system_reset,
    clkSys      => clk_slow,
    rbcpAddr    => rbcp_addr(i),
    rbcpWd      => rbcp_wd(i),
    rbcpWe      => rbcp_we(i),
    rbcpRe      => rbcp_re(i),
    rbcpAck     => rbcp_ack(i),
    rbcpRd      => rbcp_rd(i),

    -- GMII clock domain --
    rstXgmii    => system_reset,
    clkXgmii    => clk_sys,
    rbcpXgAddr  => rbcp_gmii_addr(i),
    rbcpXgWd    => rbcp_gmii_wd(i),
    rbcpXgWe    => rbcp_gmii_we(i),
    rbcpXgRe    => rbcp_gmii_re(i),
    rbcpXgAck   => rbcp_gmii_ack(i),
    rbcpXgRd    => rbcp_gmii_rd(i)
    );

   u_gTCP_inst : entity mylib.global_sitcp_manager
     port map(
       RST           => system_reset,
       CLK           => clk_sys,
       ACTIVE        => tcp_isActive(i),
       REQ           => close_req(i),
       ACT           => close_act(i),
       rstFromTCP    => open
       );
  end generate;
  
  -- LED Module ------------------------------------------------------------------------
  --u_LEDModule_Inst : entity mylib.LEDModule
  --  port map(
  --      rst             => user_reset,
  --      clk             => clk_sys,
        
  --      -- Module output --
  --      outLED          => LED(3 downto 0),
        
  --      -- Local bus --
  --      addrLocalBus    => addr_LocalBus,
  --      dataLocalBusIn  => data_LocalBusIn,
  --      dataLocalBusOut => data_LocalBusOut(kLED.ID),
  --      reLocalBus      => re_LocalBus(kLED.ID),
  --      weLocalBus      => we_LocalBus(kLED.ID),
  --      readyLocalBus   => ready_LocalBus(kLED.ID)
  --  );

  -- SFP transceiver -------------------------------------------------------------------
  u_MiiRstTimer_Inst : entity mylib.MiiRstTimer
    port map(
      rst         => system_reset,
      clk         => clk_sys,
      rstMiiOut   => mii_reset
    );

  u_MiiInit_Inst : mii_initializer
    port map(
      -- System
      CLK         => clk_sys,
      --RST         => system_reset,
      RST         => mii_reset,
      -- PHY
      PHYAD       => kMiiPhyad,
      -- MII
      MDC         => mii_init_mdc,
      MDIO_OUT    => mii_init_mdio,
      -- status
      COMPLETE    => open
      );

  mmcm_reset_all  <= or_reduce(mmcm_reset);

  u_GtClockDist_Inst : entity mylib.GtClockDistributer2
    port map(
      -- GTP refclk --
      GT_REFCLK_P   => GTP_REFCLK_P,
      GT_REFCLK_N   => GTP_REFCLK_N,

      gtRefClk      => gtrefclk_i,
      gtRefClkBufg  => gtrefclk_bufg,

      -- USERCLK2 --
      mmcmReset     => mmcm_reset_all,
      mmcmLocked    => mmcm_locked,
      txOutClk      => txout_clk(0),
      rxOutClk      => rxout_clk(0),

      userClk       => user_clk,
      userClk2      => user_clk2,
      rxuserClk     => rxuser_clk,
      rxuserClk2    => rxuser_clk2,
      

      -- GTPE_COMMON --
      reset         => system_reset,
      clkIndep      => clk_gbe,
      clkPLL0       => gt0_pll0outclk,
      refclkPLL0    => gt0_pll0outrefclk,
      clkPLL1       => gt0_pll1outclk,
      refclkPLL1    => gt0_pll1outrefclk,
      commonLock    => gt0_pll0lock,
      refclklost    => gt0_pll0refclklost,
      gt0_pll0reset => gt0_pll0reset

      );

  gen_pcspma : for i in 0 to kNumGtx-1 generate
    u_pcspma_Inst : entity mylib.GbEPcsPma
      port map(

        --An independent clock source used as the reference clock for an
        --IDELAYCTRL (if present) and for the main GT transceiver reset logic.
        --This example design assumes that this is of frequency 200MHz.
        independent_clock     => clk_gbe,

        -- Tranceiver Interface
        -----------------------
        gtrefclk              => gtrefclk_i,
        gtrefclk_bufg         => gtrefclk_bufg,

        gt0_pll0outclk_in     => gt0_pll0outclk,
        gt0_pll0outrefclk_in  => gt0_pll0outrefclk,
        gt0_pll1outclk_in     => gt0_pll1outclk,
        gt0_pll1outrefclk_in  => gt0_pll1outrefclk,
        gt0_pll0lock_in       => gt0_pll0lock,
        gt0_pll0refclklost_in => gt0_pll0refclklost,
        gt0_pll0reset_out     => gt0_pll0reset,
        
        userclk               => user_clk,
        userclk2              => user_clk2,
        rxuserclk             => rxuser_clk,
        rxuserclk2            => rxuser_clk2,

        mmcm_locked           => mmcm_locked,
        mmcm_reset            => mmcm_reset(i),

        -- clockout --
        txoutclk              => txout_clk(i),
        rxoutclk              => rxout_clk(i),

        -- Tranceiver Interface
        -----------------------
        txp                   => GTP_TX_P,
        txn                   => GTP_TX_N,
        rxp                   => GTP_RX_P,
        rxn                   => GTP_RX_N,

        -- GMII Interface (client MAC <=> PCS)
        --------------------------------------
        gmii_tx_clk           => eth_tx_clk(i),
        gmii_rx_clk           => eth_rx_clk(i),
        gmii_txd              => eth_tx_d(i),
        gmii_tx_en            => eth_tx_en(i),
        gmii_tx_er            => eth_tx_er(i),
        gmii_rxd              => eth_rx_d(i),
        gmii_rx_dv            => eth_rx_dv(i),
        gmii_rx_er            => eth_rx_er(i),
        
        -- Management: MDIO Interface
        -----------------------------
        mdc                   => mii_init_mdc,
        mdio_i                => mii_init_mdio,
        mdio_o                => open,
        mdio_t                => open,
        phyaddr               => "00000",
        configuration_vector  => "00000",
        configuration_valid   => '0',

        -- General IO's
        ---------------
        status_vector         => open,
        reset                 => system_reset
        );
  end generate;
  

  -- Clock inst ------------------------------------------------------------------------
  clk_slow  <= clk_sys;
  u_ClkMan_Inst : clk_wiz_sys
    port map ( 
      -- Clock out ports  
      clk_sys       => clk_sys,
      clk_indep_gtx => clk_gbe,
      clk_spi       => clk_spi,
      clk_adc_spi   => clk_adc_spi,
      -- Status and control signals                
      reset         => '0',
      locked        => clk_sys_locked,
      -- Clock in ports
      clk_in1 => CLK50M
  );
  
end Behavioral;
