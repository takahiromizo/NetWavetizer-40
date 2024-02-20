// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Fri Dec 22 16:53:50 2023
// Host        : DESKTOP-E13TS30 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mizoguchi/FW_Develop/NetWavetizer-40_V1/NetWavetizer-40_V1.gen/sources_1/ip/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_sim_netlist.v
// Design      : gig_ethernet_pcs_pma
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "gig_ethernet_pcs_pma_v16_2_13,Vivado 2023.1.1" *) 
(* NotValidForBitStream *)
module gig_ethernet_pcs_pma
   (gtrefclk,
    gtrefclk_bufg,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    cplllock,
    mmcm_reset,
    txoutclk,
    rxoutclk,
    userclk,
    userclk2,
    rxuserclk,
    rxuserclk2,
    pma_reset,
    mmcm_locked,
    independent_clock_bufg,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    mdc,
    mdio_i,
    mdio_o,
    mdio_t,
    phyaddr,
    configuration_vector,
    configuration_valid,
    status_vector,
    reset,
    signal_detect,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    gt0_pll0refclklost_in,
    gt0_pll0lock_in,
    gt0_pll0reset_out);
  input gtrefclk;
  input gtrefclk_bufg;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output cplllock;
  output mmcm_reset;
  output txoutclk;
  output rxoutclk;
  input userclk;
  input userclk2;
  input rxuserclk;
  input rxuserclk2;
  input pma_reset;
  input mmcm_locked;
  input independent_clock_bufg;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input mdc;
  input mdio_i;
  output mdio_o;
  output mdio_t;
  input [4:0]phyaddr;
  input [4:0]configuration_vector;
  input configuration_valid;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input gt0_pll0refclklost_in;
  input gt0_pll0lock_in;
  output gt0_pll0reset_out;

  wire \<const0> ;
  wire configuration_valid;
  wire [4:0]configuration_vector;
  wire cplllock;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_pll0lock_in;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll0refclklost_in;
  wire gt0_pll0reset_out;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gtrefclk_bufg;
  wire independent_clock_bufg;
  wire mdc;
  wire mdio_i;
  wire mdio_o;
  wire mdio_t;
  wire mmcm_locked;
  wire mmcm_reset;
  wire [4:0]phyaddr;
  wire pma_reset;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire signal_detect;
  wire [6:0]\^status_vector ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire userclk2;
  wire [15:7]NLW_U0_status_vector_UNCONNECTED;

  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13] = \<const0> ;
  assign status_vector[12] = \<const0> ;
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9] = \<const0> ;
  assign status_vector[8] = \<const0> ;
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  (* EXAMPLE_SIMULATION = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  gig_ethernet_pcs_pma_block U0
       (.configuration_valid(configuration_valid),
        .configuration_vector({1'b0,configuration_vector[3:0]}),
        .cplllock(cplllock),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll0refclklost_in(gt0_pll0refclklost_in),
        .gt0_pll0reset_out(gt0_pll0reset_out),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gtrefclk(1'b0),
        .gtrefclk_bufg(gtrefclk_bufg),
        .independent_clock_bufg(independent_clock_bufg),
        .mdc(mdc),
        .mdio_i(mdio_i),
        .mdio_o(mdio_o),
        .mdio_t(mdio_t),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .phyaddr(phyaddr),
        .pma_reset(pma_reset),
        .reset(reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .rxuserclk(1'b0),
        .rxuserclk2(1'b0),
        .signal_detect(signal_detect),
        .status_vector({NLW_U0_status_vector_UNCONNECTED[15:7],\^status_vector }),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk),
        .userclk2(userclk2));
endmodule

module gig_ethernet_pcs_pma_GTWIZARD
   (txn,
    txp,
    rxoutclk,
    txoutclk,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtpe2_i,
    gtpe2_i_0,
    gtpe2_i_1,
    gtpe2_i_2,
    gtpe2_i_3,
    mmcm_reset,
    PLL0_RESET_reg,
    data_in,
    rx_fsm_reset_done_int_reg,
    gtrefclk_bufg,
    rxn,
    rxp,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    reset_out,
    reset,
    userclk,
    TXPD,
    RXPD,
    Q,
    gtpe2_i_4,
    gtpe2_i_5,
    gtpe2_i_6,
    independent_clock_bufg,
    pma_reset,
    gt0_gtrxreset_gt_d1_reg,
    gtpe2_i_7,
    gt0_pll0refclklost_in,
    mmcm_locked,
    gt0_pll0lock_in,
    data_out);
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtpe2_i;
  output [1:0]gtpe2_i_0;
  output [1:0]gtpe2_i_1;
  output [1:0]gtpe2_i_2;
  output [1:0]gtpe2_i_3;
  output mmcm_reset;
  output PLL0_RESET_reg;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  input gtrefclk_bufg;
  input rxn;
  input rxp;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input reset_out;
  input reset;
  input userclk;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_4;
  input [1:0]gtpe2_i_5;
  input [1:0]gtpe2_i_6;
  input independent_clock_bufg;
  input pma_reset;
  input gt0_gtrxreset_gt_d1_reg;
  input gtpe2_i_7;
  input gt0_pll0refclklost_in;
  input mmcm_locked;
  input gt0_pll0lock_in;
  input data_out;

  wire [1:0]D;
  wire PLL0_RESET_reg;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire data_in;
  wire data_out;
  wire gt0_gtrxreset_gt_d1_reg;
  wire gt0_pll0lock_in;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll0refclklost_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire [15:0]gtpe2_i;
  wire [1:0]gtpe2_i_0;
  wire [1:0]gtpe2_i_1;
  wire [1:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire gtpe2_i_7;
  wire gtrefclk_bufg;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire mmcm_reset;
  wire pma_reset;
  wire reset;
  wire reset_out;
  wire rx_fsm_reset_done_int_reg;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;

  gig_ethernet_pcs_pma_GTWIZARD_init U0
       (.D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .data_in(data_in),
        .data_out(data_out),
        .gt0_gtrxreset_gt_d1_reg_0(gt0_gtrxreset_gt_d1_reg),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll0refclklost_in(gt0_pll0refclklost_in),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gtpe2_i(gtpe2_i),
        .gtpe2_i_0(gtpe2_i_0),
        .gtpe2_i_1(gtpe2_i_1),
        .gtpe2_i_2(gtpe2_i_2),
        .gtpe2_i_3(gtpe2_i_3),
        .gtpe2_i_4(gtpe2_i_4),
        .gtpe2_i_5(gtpe2_i_5),
        .gtpe2_i_6(gtpe2_i_6),
        .gtpe2_i_7(gtpe2_i_7),
        .gtrefclk_bufg(gtrefclk_bufg),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .reset(reset),
        .reset_in(PLL0_RESET_reg),
        .reset_out(reset_out),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk));
endmodule

module gig_ethernet_pcs_pma_GTWIZARD_GT
   (txn,
    txp,
    rxoutclk,
    gtpe2_i_0,
    txoutclk,
    gtpe2_i_1,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtpe2_i_2,
    gtpe2_i_3,
    gtpe2_i_4,
    gtpe2_i_5,
    gtpe2_i_6,
    gtrefclk_bufg,
    rxn,
    rxp,
    gt0_gttxreset_in0_out,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    reset_out,
    reset,
    gt0_rxuserrdy_t,
    userclk,
    TXPD,
    gt0_txuserrdy_t,
    RXPD,
    Q,
    gtpe2_i_7,
    gtpe2_i_8,
    gtpe2_i_9,
    SR,
    reset_sync5);
  output txn;
  output txp;
  output rxoutclk;
  output gtpe2_i_0;
  output txoutclk;
  output gtpe2_i_1;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtpe2_i_2;
  output [1:0]gtpe2_i_3;
  output [1:0]gtpe2_i_4;
  output [1:0]gtpe2_i_5;
  output [1:0]gtpe2_i_6;
  input gtrefclk_bufg;
  input rxn;
  input rxp;
  input gt0_gttxreset_in0_out;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input reset_out;
  input reset;
  input gt0_rxuserrdy_t;
  input userclk;
  input [0:0]TXPD;
  input gt0_txuserrdy_t;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_7;
  input [1:0]gtpe2_i_8;
  input [1:0]gtpe2_i_9;
  input [0:0]SR;
  input reset_sync5;

  wire [1:0]D;
  wire [4:4]DRPADDR;
  wire GTRXRESET;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]SR;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire gt0_gttxreset_in0_out;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtpe2_i_0;
  wire gtpe2_i_1;
  wire [15:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire [1:0]gtpe2_i_7;
  wire [1:0]gtpe2_i_8;
  wire [1:0]gtpe2_i_9;
  wire gtpe2_i_n_0;
  wire gtpe2_i_n_1;
  wire gtpe2_i_n_102;
  wire gtpe2_i_n_104;
  wire gtpe2_i_n_105;
  wire gtpe2_i_n_14;
  wire gtpe2_i_n_28;
  wire gtpe2_i_n_29;
  wire gtpe2_i_n_39;
  wire gtpe2_i_n_40;
  wire gtpe2_i_n_43;
  wire gtpe2_i_n_48;
  wire gtpe2_i_n_49;
  wire gtpe2_i_n_50;
  wire gtpe2_i_n_51;
  wire gtpe2_i_n_52;
  wire gtpe2_i_n_53;
  wire gtpe2_i_n_54;
  wire gtpe2_i_n_55;
  wire gtpe2_i_n_56;
  wire gtpe2_i_n_57;
  wire gtpe2_i_n_58;
  wire gtpe2_i_n_59;
  wire gtpe2_i_n_60;
  wire gtpe2_i_n_61;
  wire gtpe2_i_n_62;
  wire gtpe2_i_n_63;
  wire gtpe2_i_n_64;
  wire gtpe2_i_n_65;
  wire gtpe2_i_n_66;
  wire gtpe2_i_n_67;
  wire gtpe2_i_n_68;
  wire gtpe2_i_n_69;
  wire gtpe2_i_n_7;
  wire gtpe2_i_n_70;
  wire gtpe2_i_n_71;
  wire gtpe2_i_n_72;
  wire gtpe2_i_n_73;
  wire gtpe2_i_n_74;
  wire gtpe2_i_n_75;
  wire gtpe2_i_n_76;
  wire gtpe2_i_n_77;
  wire gtpe2_i_n_78;
  wire gtpe2_i_n_8;
  wire gtrefclk_bufg;
  wire gtrxreset_seq_i_n_1;
  wire gtrxreset_seq_i_n_10;
  wire gtrxreset_seq_i_n_11;
  wire gtrxreset_seq_i_n_12;
  wire gtrxreset_seq_i_n_13;
  wire gtrxreset_seq_i_n_14;
  wire gtrxreset_seq_i_n_15;
  wire gtrxreset_seq_i_n_16;
  wire gtrxreset_seq_i_n_17;
  wire gtrxreset_seq_i_n_18;
  wire gtrxreset_seq_i_n_2;
  wire gtrxreset_seq_i_n_3;
  wire gtrxreset_seq_i_n_4;
  wire gtrxreset_seq_i_n_5;
  wire gtrxreset_seq_i_n_6;
  wire gtrxreset_seq_i_n_7;
  wire gtrxreset_seq_i_n_8;
  wire gtrxreset_seq_i_n_9;
  wire reset;
  wire reset_out;
  wire reset_sync5;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire NLW_gtpe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED;
  wire NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED;
  wire NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED;
  wire NLW_gtpe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXRATEDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED;
  wire NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED;
  wire [15:0]NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXCHARISK_UNCONNECTED;
  wire [3:0]NLW_gtpe2_i_RXCHBONDO_UNCONNECTED;
  wire [31:16]NLW_gtpe2_i_RXDATA_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXDATAVALID_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXHEADER_UNCONNECTED;
  wire [3:2]NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [1:0]NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire [2:0]NLW_gtpe2_i_RXSTATUS_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  GTPE2_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(20'b00000000000000000000),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b0001111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CFOK_CFG(43'b1001001000000000000000001000000111010000000),
    .CFOK_CFG2(7'b0100000),
    .CFOK_CFG3(7'b0100000),
    .CFOK_CFG4(1'b0),
    .CFOK_CFG5(2'b00),
    .CFOK_CFG6(4'b0000),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_COMMON_SWING(1'b0),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(36),
    .CLK_COR_MIN_LAT(33),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0110111100),
    .CLK_COR_SEQ_1_2(10'b0001010000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0110111100),
    .CLK_COR_SEQ_2_2(10'b0010110101),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("TRUE"),
    .CLK_COR_SEQ_LEN(2),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("FALSE"),
    .ES_HORZ_OFFSET(12'h010),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CLKRSVD0_INVERTED(1'b0),
    .IS_CLKRSVD1_INVERTED(1'b0),
    .IS_DMONITORCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_SIGVALIDCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .LOOPBACK_CFG(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_LOOPBACK_CFG(1'b0),
    .PMA_RSV(32'h00000333),
    .PMA_RSV2(32'h00002040),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(4'b0000),
    .PMA_RSV5(1'b0),
    .PMA_RSV6(1'b0),
    .PMA_RSV7(1'b0),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(8),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(83'h0000107FE106001041010),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b001001),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPMRESET_TIME(7'b0001111),
    .RXLPM_BIAS_STARTUP_DISABLE(1'b0),
    .RXLPM_CFG(4'b0110),
    .RXLPM_CFG1(1'b0),
    .RXLPM_CM_CFG(1'b0),
    .RXLPM_GC_CFG(9'b111100010),
    .RXLPM_GC_CFG2(3'b001),
    .RXLPM_HF_CFG(14'b00001111110000),
    .RXLPM_HF_CFG2(5'b01010),
    .RXLPM_HF_CFG3(4'b0000),
    .RXLPM_HOLD_DURING_EIDLE(1'b0),
    .RXLPM_INCM_CFG(1'b1),
    .RXLPM_IPCM_CFG(1'b0),
    .RXLPM_LF_CFG(18'b000000001111110000),
    .RXLPM_LF_CFG2(5'b01010),
    .RXLPM_OSINT_CFG(3'b100),
    .RXOOB_CFG(7'b0000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOSCALRESET_TIMEOUT(5'b00000),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'hC00002),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_CFG0(3'b000),
    .RXPI_CFG1(1'b1),
    .RXPI_CFG2(1'b1),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b0),
    .RX_BIAS_CFG(16'b0000111100110011),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_EN(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(4'b1010),
    .RX_DATA_WIDTH(20),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(14'b00000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b1111),
    .SATA_BURST_VAL(3'b100),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SATA_PLL_CFG("VCO_3000MHZ"),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("2.0"),
    .TERM_RCAL_CFG(15'b100001000010000),
    .TERM_RCAL_OVRD(3'b000),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOOB_CFG(1'b0),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG0(2'b00),
    .TXPI_CFG1(2'b00),
    .TXPI_CFG2(2'b00),
    .TXPI_CFG3(1'b0),
    .TXPI_CFG4(1'b0),
    .TXPI_CFG5(3'b000),
    .TXPI_GREY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_PPMCLK_SEL("TXUSRCLK2"),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b001),
    .TXPMARESET_TIME(5'b00001),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_EN(1'b1),
    .TX_DATA_WIDTH(20),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0),
    .USE_PCS_CLK_PHASE_SEL(1'b0)) 
    gtpe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD0(1'b0),
        .CLKRSVD1(1'b0),
        .DMONFIFORESET(1'b0),
        .DMONITORCLK(1'b0),
        .DMONITOROUT({gtpe2_i_n_48,gtpe2_i_n_49,gtpe2_i_n_50,gtpe2_i_n_51,gtpe2_i_n_52,gtpe2_i_n_53,gtpe2_i_n_54,gtpe2_i_n_55,gtpe2_i_n_56,gtpe2_i_n_57,gtpe2_i_n_58,gtpe2_i_n_59,gtpe2_i_n_60,gtpe2_i_n_61,gtpe2_i_n_62}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,DRPADDR,1'b0,1'b0,1'b0,DRPADDR}),
        .DRPCLK(gtrefclk_bufg),
        .DRPDI({gtrxreset_seq_i_n_2,gtrxreset_seq_i_n_3,gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10,gtrxreset_seq_i_n_11,gtrxreset_seq_i_n_12,gtrxreset_seq_i_n_13,gtrxreset_seq_i_n_14,gtrxreset_seq_i_n_15,gtrxreset_seq_i_n_16,gtrxreset_seq_i_n_17}),
        .DRPDO({gtpe2_i_n_63,gtpe2_i_n_64,gtpe2_i_n_65,gtpe2_i_n_66,gtpe2_i_n_67,gtpe2_i_n_68,gtpe2_i_n_69,gtpe2_i_n_70,gtpe2_i_n_71,gtpe2_i_n_72,gtpe2_i_n_73,gtpe2_i_n_74,gtpe2_i_n_75,gtpe2_i_n_76,gtpe2_i_n_77,gtpe2_i_n_78}),
        .DRPEN(gtrxreset_seq_i_n_18),
        .DRPRDY(gtpe2_i_n_0),
        .DRPWE(gtrxreset_seq_i_n_1),
        .EYESCANDATAERROR(gtpe2_i_n_1),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTPRXN(rxn),
        .GTPRXP(rxp),
        .GTPTXN(txn),
        .GTPTXP(txp),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(GTRXRESET),
        .GTTXRESET(gt0_gttxreset_in0_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtpe2_i_PHYSTATUS_UNCONNECTED),
        .PLL0CLK(gt0_pll0outclk_in),
        .PLL0REFCLK(gt0_pll0outrefclk_in),
        .PLL1CLK(gt0_pll1outclk_in),
        .PLL1REFCLK(gt0_pll1outrefclk_in),
        .PMARSVDIN0(1'b0),
        .PMARSVDIN1(1'b0),
        .PMARSVDIN2(1'b0),
        .PMARSVDIN3(1'b0),
        .PMARSVDIN4(1'b0),
        .PMARSVDOUT0(NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED),
        .PMARSVDOUT1(NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXADAPTSELTEST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({RXBUFSTATUS,gtpe2_i_n_104,gtpe2_i_n_105}),
        .RXBYTEISALIGNED(gtpe2_i_n_7),
        .RXBYTEREALIGN(gtpe2_i_n_8),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED[3:2],gtpe2_i_3}),
        .RXCHARISK({NLW_gtpe2_i_RXCHARISK_UNCONNECTED[3:2],gtpe2_i_4}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtpe2_i_RXCHBONDO_UNCONNECTED[3:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(D),
        .RXCOMINITDET(NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtpe2_i_n_14),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtpe2_i_RXDATA_UNCONNECTED[31:16],gtpe2_i_2}),
        .RXDATAVALID(NLW_gtpe2_i_RXDATAVALID_UNCONNECTED[1:0]),
        .RXDDIEN(1'b0),
        .RXDFEXYDEN(1'b0),
        .RXDISPERR({NLW_gtpe2_i_RXDISPERR_UNCONNECTED[3:2],gtpe2_i_5}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtpe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtpe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFOVRDEN(1'b0),
        .RXLPMOSINTNTRLEN(1'b0),
        .RXLPMRESET(1'b0),
        .RXMCOMMAALIGNEN(reset_out),
        .RXNOTINTABLE({NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED[3:2],gtpe2_i_6}),
        .RXOOBRESET(1'b0),
        .RXOSCALRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSINTCFG({1'b0,1'b0,1'b1,1'b0}),
        .RXOSINTDONE(NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED),
        .RXOSINTEN(1'b1),
        .RXOSINTHOLD(1'b0),
        .RXOSINTID0({1'b0,1'b0,1'b0,1'b0}),
        .RXOSINTNTRLEN(1'b0),
        .RXOSINTOVRDEN(1'b0),
        .RXOSINTPD(1'b0),
        .RXOSINTSTARTED(NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED),
        .RXOSINTSTROBE(1'b0),
        .RXOSINTSTROBEDONE(NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED),
        .RXOSINTSTROBESTARTED(NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED),
        .RXOSINTTESTOVRDEN(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(rxoutclk),
        .RXOUTCLKFABRIC(NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(reset_out),
        .RXPCSRESET(reset),
        .RXPD({RXPD,RXPD}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPMARESETDONE(gtpe2_i_n_28),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtpe2_i_n_29),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtpe2_i_RXRATEDONE_UNCONNECTED),
        .RXRATEMODE(1'b0),
        .RXRESETDONE(gtpe2_i_0),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED[1:0]),
        .RXSTATUS(NLW_gtpe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYNCALLIN(1'b0),
        .RXSYNCDONE(NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED),
        .RXSYNCIN(1'b0),
        .RXSYNCMODE(1'b0),
        .RXSYNCOUT(NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt0_rxuserrdy_t),
        .RXUSRCLK(userclk),
        .RXUSRCLK2(userclk),
        .RXVALID(NLW_gtpe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .SIGVALIDCLK(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({TXBUFSTATUS,gtpe2_i_n_102}),
        .TXCHARDISPMODE({1'b0,1'b0,gtpe2_i_7}),
        .TXCHARDISPVAL({1'b0,1'b0,gtpe2_i_8}),
        .TXCHARISK({1'b0,1'b0,gtpe2_i_9}),
        .TXCOMFINISH(NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(TXPD),
        .TXGEARBOXREADY(NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(txoutclk),
        .TXOUTCLKFABRIC(gtpe2_i_n_39),
        .TXOUTCLKPCS(gtpe2_i_n_40),
        .TXOUTCLKSEL({1'b1,1'b0,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({TXPD,TXPD}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPIPPMEN(1'b0),
        .TXPIPPMOVRDEN(1'b0),
        .TXPIPPMPD(1'b0),
        .TXPIPPMSEL(1'b1),
        .TXPIPPMSTEPSIZE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPMARESETDONE(gtpe2_i_n_43),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtpe2_i_TXRATEDONE_UNCONNECTED),
        .TXRATEMODE(1'b0),
        .TXRESETDONE(gtpe2_i_1),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYNCALLIN(1'b0),
        .TXSYNCDONE(NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED),
        .TXSYNCIN(1'b0),
        .TXSYNCMODE(1'b0),
        .TXSYNCOUT(NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt0_txuserrdy_t),
        .TXUSRCLK(userclk),
        .TXUSRCLK2(userclk));
  gig_ethernet_pcs_pma_gtwizard_gtrxreset_seq gtrxreset_seq_i
       (.D({gtpe2_i_n_63,gtpe2_i_n_64,gtpe2_i_n_65,gtpe2_i_n_66,gtpe2_i_n_67,gtpe2_i_n_68,gtpe2_i_n_69,gtpe2_i_n_70,gtpe2_i_n_71,gtpe2_i_n_72,gtpe2_i_n_73,gtpe2_i_n_74,gtpe2_i_n_75,gtpe2_i_n_76,gtpe2_i_n_77,gtpe2_i_n_78}),
        .DRPADDR(DRPADDR),
        .DRPDI({gtrxreset_seq_i_n_2,gtrxreset_seq_i_n_3,gtrxreset_seq_i_n_4,gtrxreset_seq_i_n_5,gtrxreset_seq_i_n_6,gtrxreset_seq_i_n_7,gtrxreset_seq_i_n_8,gtrxreset_seq_i_n_9,gtrxreset_seq_i_n_10,gtrxreset_seq_i_n_11,gtrxreset_seq_i_n_12,gtrxreset_seq_i_n_13,gtrxreset_seq_i_n_14,gtrxreset_seq_i_n_15,gtrxreset_seq_i_n_16,gtrxreset_seq_i_n_17}),
        .\FSM_onehot_state_reg[5]_0 (gtrxreset_seq_i_n_1),
        .\FSM_onehot_state_reg[7]_0 (gtrxreset_seq_i_n_18),
        .GTRXRESET(GTRXRESET),
        .SR(SR),
        .data_in(gtpe2_i_n_28),
        .gtrefclk_bufg(gtrefclk_bufg),
        .\original_rd_data_reg[0]_0 (gtpe2_i_n_0),
        .reset_sync5(reset_sync5));
endmodule

module gig_ethernet_pcs_pma_GTWIZARD_init
   (txn,
    txp,
    rxoutclk,
    txoutclk,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtpe2_i,
    gtpe2_i_0,
    gtpe2_i_1,
    gtpe2_i_2,
    gtpe2_i_3,
    mmcm_reset,
    reset_in,
    data_in,
    rx_fsm_reset_done_int_reg,
    gtrefclk_bufg,
    rxn,
    rxp,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    reset_out,
    reset,
    userclk,
    TXPD,
    RXPD,
    Q,
    gtpe2_i_4,
    gtpe2_i_5,
    gtpe2_i_6,
    independent_clock_bufg,
    pma_reset,
    gt0_gtrxreset_gt_d1_reg_0,
    gtpe2_i_7,
    gt0_pll0refclklost_in,
    mmcm_locked,
    gt0_pll0lock_in,
    data_out);
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtpe2_i;
  output [1:0]gtpe2_i_0;
  output [1:0]gtpe2_i_1;
  output [1:0]gtpe2_i_2;
  output [1:0]gtpe2_i_3;
  output mmcm_reset;
  output reset_in;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  input gtrefclk_bufg;
  input rxn;
  input rxp;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input reset_out;
  input reset;
  input userclk;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_4;
  input [1:0]gtpe2_i_5;
  input [1:0]gtpe2_i_6;
  input independent_clock_bufg;
  input pma_reset;
  input gt0_gtrxreset_gt_d1_reg_0;
  input gtpe2_i_7;
  input gt0_pll0refclklost_in;
  input mmcm_locked;
  input gt0_pll0lock_in;
  input data_out;

  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire [13:1]data0;
  wire data_in;
  wire data_out;
  wire gt0_gtrxreset_gt;
  wire gt0_gtrxreset_gt_d1;
  wire gt0_gtrxreset_gt_d1_reg_0;
  wire gt0_gttxreset_in0_out;
  wire gt0_pll0lock_in;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll0refclklost_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire [13:0]gt0_rx_cdrlock_counter;
  wire gt0_rx_cdrlock_counter0_carry__0_n_0;
  wire gt0_rx_cdrlock_counter0_carry__0_n_1;
  wire gt0_rx_cdrlock_counter0_carry__0_n_2;
  wire gt0_rx_cdrlock_counter0_carry__0_n_3;
  wire gt0_rx_cdrlock_counter0_carry__1_n_0;
  wire gt0_rx_cdrlock_counter0_carry__1_n_1;
  wire gt0_rx_cdrlock_counter0_carry__1_n_2;
  wire gt0_rx_cdrlock_counter0_carry__1_n_3;
  wire gt0_rx_cdrlock_counter0_carry_n_0;
  wire gt0_rx_cdrlock_counter0_carry_n_1;
  wire gt0_rx_cdrlock_counter0_carry_n_2;
  wire gt0_rx_cdrlock_counter0_carry_n_3;
  wire \gt0_rx_cdrlock_counter[0]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter[13]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter[13]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[13]_i_4_n_0 ;
  wire [13:0]gt0_rx_cdrlock_counter_0;
  wire gt0_rx_cdrlocked_i_1_n_0;
  wire gt0_rx_cdrlocked_reg_n_0;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire [15:0]gtpe2_i;
  wire [1:0]gtpe2_i_0;
  wire [1:0]gtpe2_i_1;
  wire [1:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire gtpe2_i_7;
  wire gtrefclk_bufg;
  wire gtwizard_i_n_3;
  wire gtwizard_i_n_5;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire mmcm_reset;
  wire pma_reset;
  wire reset;
  wire reset_in;
  wire reset_out;
  wire rx_fsm_reset_done_int_reg;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire [3:0]NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED;

  FDRE gt0_gtrxreset_gt_d1_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_gtrxreset_gt),
        .Q(gt0_gtrxreset_gt_d1),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry
       (.CI(1'b0),
        .CO({gt0_rx_cdrlock_counter0_carry_n_0,gt0_rx_cdrlock_counter0_carry_n_1,gt0_rx_cdrlock_counter0_carry_n_2,gt0_rx_cdrlock_counter0_carry_n_3}),
        .CYINIT(gt0_rx_cdrlock_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(gt0_rx_cdrlock_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__0
       (.CI(gt0_rx_cdrlock_counter0_carry_n_0),
        .CO({gt0_rx_cdrlock_counter0_carry__0_n_0,gt0_rx_cdrlock_counter0_carry__0_n_1,gt0_rx_cdrlock_counter0_carry__0_n_2,gt0_rx_cdrlock_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(gt0_rx_cdrlock_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__1
       (.CI(gt0_rx_cdrlock_counter0_carry__0_n_0),
        .CO({gt0_rx_cdrlock_counter0_carry__1_n_0,gt0_rx_cdrlock_counter0_carry__1_n_1,gt0_rx_cdrlock_counter0_carry__1_n_2,gt0_rx_cdrlock_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(gt0_rx_cdrlock_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__2
       (.CI(gt0_rx_cdrlock_counter0_carry__1_n_0),
        .CO(NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,gt0_rx_cdrlock_counter[13]}));
  LUT2 #(
    .INIT(4'h2)) 
    \gt0_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[0]_i_2_n_0 ),
        .I1(gt0_rx_cdrlock_counter[0]),
        .O(gt0_rx_cdrlock_counter_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \gt0_rx_cdrlock_counter[0]_i_2 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I1(gt0_rx_cdrlock_counter[4]),
        .I2(gt0_rx_cdrlock_counter[5]),
        .I3(gt0_rx_cdrlock_counter[7]),
        .I4(gt0_rx_cdrlock_counter[6]),
        .I5(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .O(\gt0_rx_cdrlock_counter[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[10]),
        .O(gt0_rx_cdrlock_counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[11]),
        .O(gt0_rx_cdrlock_counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[12]),
        .O(gt0_rx_cdrlock_counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[13]),
        .O(gt0_rx_cdrlock_counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \gt0_rx_cdrlock_counter[13]_i_2 
       (.I0(gt0_rx_cdrlock_counter[1]),
        .I1(gt0_rx_cdrlock_counter[12]),
        .I2(gt0_rx_cdrlock_counter[13]),
        .I3(gt0_rx_cdrlock_counter[3]),
        .I4(gt0_rx_cdrlock_counter[2]),
        .O(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gt0_rx_cdrlock_counter[13]_i_3 
       (.I0(gt0_rx_cdrlock_counter[4]),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(gt0_rx_cdrlock_counter[7]),
        .I3(gt0_rx_cdrlock_counter[6]),
        .O(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \gt0_rx_cdrlock_counter[13]_i_4 
       (.I0(gt0_rx_cdrlock_counter[9]),
        .I1(gt0_rx_cdrlock_counter[8]),
        .I2(gt0_rx_cdrlock_counter[10]),
        .I3(gt0_rx_cdrlock_counter[11]),
        .O(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[1]),
        .O(gt0_rx_cdrlock_counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[2]),
        .O(gt0_rx_cdrlock_counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[3]),
        .O(gt0_rx_cdrlock_counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[4]),
        .O(gt0_rx_cdrlock_counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[5]),
        .O(gt0_rx_cdrlock_counter_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[6]),
        .O(gt0_rx_cdrlock_counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[7]),
        .O(gt0_rx_cdrlock_counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[8]),
        .O(gt0_rx_cdrlock_counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[9]),
        .O(gt0_rx_cdrlock_counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[0]),
        .Q(gt0_rx_cdrlock_counter[0]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[10]),
        .Q(gt0_rx_cdrlock_counter[10]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[11]),
        .Q(gt0_rx_cdrlock_counter[11]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[12]),
        .Q(gt0_rx_cdrlock_counter[12]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[13]),
        .Q(gt0_rx_cdrlock_counter[13]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[1]),
        .Q(gt0_rx_cdrlock_counter[1]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[2]),
        .Q(gt0_rx_cdrlock_counter[2]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[3]),
        .Q(gt0_rx_cdrlock_counter[3]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[4]),
        .Q(gt0_rx_cdrlock_counter[4]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[5]),
        .Q(gt0_rx_cdrlock_counter[5]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[6]),
        .Q(gt0_rx_cdrlock_counter[6]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[7]),
        .Q(gt0_rx_cdrlock_counter[7]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[8]),
        .Q(gt0_rx_cdrlock_counter[8]),
        .R(gt0_gtrxreset_gt_d1));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[9]),
        .Q(gt0_rx_cdrlock_counter[9]),
        .R(gt0_gtrxreset_gt_d1));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    gt0_rx_cdrlocked_i_1
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(gt0_rx_cdrlocked_reg_n_0),
        .O(gt0_rx_cdrlocked_i_1_n_0));
  FDRE gt0_rx_cdrlocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlocked_i_1_n_0),
        .Q(gt0_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_gt_d1));
  gig_ethernet_pcs_pma_RX_STARTUP_FSM gt0_rxresetfsm_i
       (.data_in(rx_fsm_reset_done_int_reg),
        .data_out(data_out),
        .data_sync_reg1(gtwizard_i_n_3),
        .gt0_gtrxreset_gt(gt0_gtrxreset_gt),
        .gt0_gtrxreset_gt_d1_reg(gt0_gtrxreset_gt_d1_reg_0),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .pma_reset(pma_reset),
        .reset_time_out_reg_0(gt0_rx_cdrlocked_reg_n_0),
        .userclk(userclk));
  gig_ethernet_pcs_pma_TX_STARTUP_FSM gt0_txresetfsm_i
       (.PLL0_RESET_reg_0(reset_in),
        .data_in(data_in),
        .data_sync_reg1(gtwizard_i_n_5),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .gt0_pll0refclklost_in(gt0_pll0refclklost_in),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtpe2_i(gtpe2_i_7),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .userclk(userclk));
  gig_ethernet_pcs_pma_GTWIZARD_multi_gt gtwizard_i
       (.D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .SR(gt0_gtrxreset_gt_d1),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtpe2_i(gtwizard_i_n_3),
        .gtpe2_i_0(gtwizard_i_n_5),
        .gtpe2_i_1(gtpe2_i),
        .gtpe2_i_2(gtpe2_i_0),
        .gtpe2_i_3(gtpe2_i_1),
        .gtpe2_i_4(gtpe2_i_2),
        .gtpe2_i_5(gtpe2_i_3),
        .gtpe2_i_6(gtpe2_i_4),
        .gtpe2_i_7(gtpe2_i_5),
        .gtpe2_i_8(gtpe2_i_6),
        .gtrefclk_bufg(gtrefclk_bufg),
        .reset(reset),
        .reset_out(reset_out),
        .reset_sync5(reset_in),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk));
endmodule

module gig_ethernet_pcs_pma_GTWIZARD_multi_gt
   (txn,
    txp,
    rxoutclk,
    gtpe2_i,
    txoutclk,
    gtpe2_i_0,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtpe2_i_1,
    gtpe2_i_2,
    gtpe2_i_3,
    gtpe2_i_4,
    gtpe2_i_5,
    gtrefclk_bufg,
    rxn,
    rxp,
    gt0_gttxreset_in0_out,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    reset_out,
    reset,
    gt0_rxuserrdy_t,
    userclk,
    TXPD,
    gt0_txuserrdy_t,
    RXPD,
    Q,
    gtpe2_i_6,
    gtpe2_i_7,
    gtpe2_i_8,
    SR,
    reset_sync5);
  output txn;
  output txp;
  output rxoutclk;
  output gtpe2_i;
  output txoutclk;
  output gtpe2_i_0;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtpe2_i_1;
  output [1:0]gtpe2_i_2;
  output [1:0]gtpe2_i_3;
  output [1:0]gtpe2_i_4;
  output [1:0]gtpe2_i_5;
  input gtrefclk_bufg;
  input rxn;
  input rxp;
  input gt0_gttxreset_in0_out;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input reset_out;
  input reset;
  input gt0_rxuserrdy_t;
  input userclk;
  input [0:0]TXPD;
  input gt0_txuserrdy_t;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtpe2_i_6;
  input [1:0]gtpe2_i_7;
  input [1:0]gtpe2_i_8;
  input [0:0]SR;
  input reset_sync5;

  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]SR;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire gt0_gttxreset_in0_out;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtpe2_i;
  wire gtpe2_i_0;
  wire [15:0]gtpe2_i_1;
  wire [1:0]gtpe2_i_2;
  wire [1:0]gtpe2_i_3;
  wire [1:0]gtpe2_i_4;
  wire [1:0]gtpe2_i_5;
  wire [1:0]gtpe2_i_6;
  wire [1:0]gtpe2_i_7;
  wire [1:0]gtpe2_i_8;
  wire gtrefclk_bufg;
  wire reset;
  wire reset_out;
  wire reset_sync5;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;

  gig_ethernet_pcs_pma_GTWIZARD_GT gt0_GTWIZARD_i
       (.D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .SR(SR),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtpe2_i_0(gtpe2_i),
        .gtpe2_i_1(gtpe2_i_0),
        .gtpe2_i_2(gtpe2_i_1),
        .gtpe2_i_3(gtpe2_i_2),
        .gtpe2_i_4(gtpe2_i_3),
        .gtpe2_i_5(gtpe2_i_4),
        .gtpe2_i_6(gtpe2_i_5),
        .gtpe2_i_7(gtpe2_i_6),
        .gtpe2_i_8(gtpe2_i_7),
        .gtpe2_i_9(gtpe2_i_8),
        .gtrefclk_bufg(gtrefclk_bufg),
        .reset(reset),
        .reset_out(reset_out),
        .reset_sync5(reset_sync5),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk));
endmodule

module gig_ethernet_pcs_pma_RX_STARTUP_FSM
   (data_in,
    gt0_rxuserrdy_t,
    gt0_gtrxreset_gt,
    independent_clock_bufg,
    userclk,
    pma_reset,
    reset_time_out_reg_0,
    gt0_gtrxreset_gt_d1_reg,
    data_sync_reg1,
    mmcm_locked,
    data_out,
    gt0_pll0lock_in);
  output data_in;
  output gt0_rxuserrdy_t;
  output gt0_gtrxreset_gt;
  input independent_clock_bufg;
  input userclk;
  input pma_reset;
  input reset_time_out_reg_0;
  input gt0_gtrxreset_gt_d1_reg;
  input data_sync_reg1;
  input mmcm_locked;
  input data_out;
  input gt0_pll0lock_in;

  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire GTRXRESET;
  wire RXUSERRDY_i_1_n_0;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire gt0_gtrxreset_gt;
  wire gt0_gtrxreset_gt_d1_reg;
  wire gt0_pll0lock_in;
  wire gt0_rxuserrdy_t;
  wire gtrxreset_i_i_1_n_0;
  wire independent_clock_bufg;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[6]_i_3__0_n_0 ;
  wire \init_wait_count[6]_i_4__0_n_0 ;
  wire [6:0]init_wait_count_reg;
  wire init_wait_done;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2__0_n_0 ;
  wire \mmcm_lock_count[7]_i_4__0_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire mmcm_locked;
  wire [6:1]p_0_in__2;
  wire [7:0]p_0_in__3;
  wire pma_reset;
  wire reset_time_out_i_3__0_n_0;
  wire reset_time_out_i_5_n_0;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3;
  wire [3:0]rx_state;
  wire [3:0]rx_state__0;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire sync_data_valid_n_0;
  wire sync_data_valid_n_4;
  wire sync_data_valid_n_5;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_pll0lock_n_0;
  wire time_out_100us_i_1_n_0;
  wire time_out_100us_i_2_n_0;
  wire time_out_100us_i_3_n_0;
  wire time_out_100us_i_4_n_0;
  wire time_out_100us_i_5_n_0;
  wire time_out_100us_i_6_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2_n_0;
  wire time_out_2ms_i_3__0_n_0;
  wire time_out_2ms_i_4_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire [19:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_1 ;
  wire \time_out_counter_reg[16]_i_1__0_n_2 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_4 ;
  wire \time_out_counter_reg[16]_i_1__0_n_5 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2__0_n_0;
  wire time_out_wait_bypass_i_3__0_n_0;
  wire time_out_wait_bypass_i_4__0_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max1;
  wire time_tlock_max1_carry__0_i_1_n_0;
  wire time_tlock_max1_carry__0_i_2_n_0;
  wire time_tlock_max1_carry__0_i_3_n_0;
  wire time_tlock_max1_carry__0_i_4_n_0;
  wire time_tlock_max1_carry__0_i_5_n_0;
  wire time_tlock_max1_carry__0_i_6_n_0;
  wire time_tlock_max1_carry__0_n_0;
  wire time_tlock_max1_carry__0_n_1;
  wire time_tlock_max1_carry__0_n_2;
  wire time_tlock_max1_carry__0_n_3;
  wire time_tlock_max1_carry__1_i_1_n_0;
  wire time_tlock_max1_carry__1_i_2_n_0;
  wire time_tlock_max1_carry__1_i_3_n_0;
  wire time_tlock_max1_carry__1_i_4_n_0;
  wire time_tlock_max1_carry__1_n_3;
  wire time_tlock_max1_carry_i_1_n_0;
  wire time_tlock_max1_carry_i_2_n_0;
  wire time_tlock_max1_carry_i_3_n_0;
  wire time_tlock_max1_carry_i_4_n_0;
  wire time_tlock_max1_carry_i_5_n_0;
  wire time_tlock_max1_carry_i_6_n_0;
  wire time_tlock_max1_carry_i_7_n_0;
  wire time_tlock_max1_carry_i_8_n_0;
  wire time_tlock_max1_carry_n_0;
  wire time_tlock_max1_carry_n_1;
  wire time_tlock_max1_carry_n_2;
  wire time_tlock_max1_carry_n_3;
  wire time_tlock_max_i_1_n_0;
  wire userclk;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__0_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire [3:0]wait_time_cnt0__0;
  wire \wait_time_cnt[1]_i_1__0_n_0 ;
  wire \wait_time_cnt[4]_i_1__0_n_0 ;
  wire \wait_time_cnt[5]_i_1__0_n_0 ;
  wire \wait_time_cnt[6]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_2__0_n_0 ;
  wire \wait_time_cnt[6]_i_3__0_n_0 ;
  wire \wait_time_cnt[6]_i_4__0_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]NLW_time_tlock_max1_carry_O_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_time_tlock_max1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF4FFFCFF00FF00FF)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(rx_state[2]),
        .I1(time_out_2ms_reg_n_0),
        .I2(rx_state[3]),
        .I3(rx_state[0]),
        .I4(reset_time_out_reg_n_0),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rx_state[0]_i_3 
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .O(\FSM_sequential_rx_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h003F0040000F0040)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(rx_state[3]),
        .I4(rx_state[2]),
        .I5(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .O(rx_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hDCDC505C)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(time_tlock_max),
        .I4(reset_time_out_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(time_out_2ms_reg_n_0),
        .I1(reset_time_out_reg_n_0),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(init_wait_done_reg_n_0),
        .I1(rx_state[2]),
        .I2(reset_time_out_reg_0),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_0),
        .D(rx_state__0[0]),
        .Q(rx_state[0]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_0),
        .D(rx_state__0[1]),
        .Q(rx_state[1]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_0),
        .D(rx_state__0[2]),
        .Q(rx_state[2]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_0),
        .D(rx_state__0[3]),
        .Q(rx_state[3]),
        .R(pma_reset));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    RXUSERRDY_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(gt0_rxuserrdy_t),
        .O(RXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(RXUSERRDY_i_1_n_0),
        .Q(gt0_rxuserrdy_t),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    check_tlock_max_i_1
       (.I0(check_tlock_max_reg_n_0),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(rx_state[2]),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(pma_reset));
  LUT3 #(
    .INIT(8'hEA)) 
    gt0_gtrxreset_gt_d1_i_1
       (.I0(GTRXRESET),
        .I1(data_in),
        .I2(gt0_gtrxreset_gt_d1_reg),
        .O(gt0_gtrxreset_gt));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    gtrxreset_i_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[3]),
        .I3(rx_state[1]),
        .I4(GTRXRESET),
        .O(gtrxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gtrxreset_i_i_1_n_0),
        .Q(GTRXRESET),
        .R(pma_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[3]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[1]),
        .I5(init_wait_count_reg[4]),
        .O(p_0_in__2[5]));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[6]),
        .I2(init_wait_count_reg[4]),
        .I3(\init_wait_count[6]_i_3__0_n_0 ),
        .I4(init_wait_count_reg[5]),
        .I5(init_wait_count_reg[3]),
        .O(init_wait_count));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[6]_i_2__0 
       (.I0(init_wait_count_reg[6]),
        .I1(init_wait_count_reg[4]),
        .I2(\init_wait_count[6]_i_4__0_n_0 ),
        .I3(init_wait_count_reg[5]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \init_wait_count[6]_i_3__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .O(\init_wait_count[6]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \init_wait_count[6]_i_4__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[1]),
        .O(\init_wait_count[6]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__2[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__2[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__2[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__2[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__2[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__2[6]),
        .Q(init_wait_count_reg[6]));
  LUT2 #(
    .INIT(4'hE)) 
    init_wait_done_i_1__0
       (.I0(init_wait_done),
        .I1(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    init_wait_done_i_2__0
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[5]),
        .I2(\init_wait_count[6]_i_3__0_n_0 ),
        .I3(init_wait_count_reg[4]),
        .I4(init_wait_count_reg[6]),
        .I5(init_wait_count_reg[0]),
        .O(init_wait_done));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(pma_reset),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[3]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[3]),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg[5]),
        .I1(mmcm_lock_count_reg[3]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[0]),
        .I5(mmcm_lock_count_reg[4]),
        .O(p_0_in__3[5]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_count_reg[4]),
        .I2(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg[5]),
        .O(p_0_in__3[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mmcm_lock_count[7]_i_2__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_count_reg[4]),
        .I2(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg[5]),
        .I4(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3__0 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(mmcm_lock_count_reg[5]),
        .I2(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg[4]),
        .I4(mmcm_lock_count_reg[6]),
        .O(p_0_in__3[7]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mmcm_lock_count[7]_i_4__0 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[0]),
        .O(\mmcm_lock_count[7]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_count_reg[7]),
        .I2(mmcm_lock_reclocked_i_2__0_n_0),
        .I3(mmcm_lock_count_reg[6]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg[5]),
        .I1(mmcm_lock_count_reg[3]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[0]),
        .I5(mmcm_lock_count_reg[4]),
        .O(mmcm_lock_reclocked_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h001F0011)) 
    reset_time_out_i_3__0
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(reset_time_out_reg_0),
        .O(reset_time_out_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h0C3C0EFC)) 
    reset_time_out_i_5
       (.I0(reset_time_out_reg_0),
        .I1(rx_state[0]),
        .I2(rx_state[3]),
        .I3(rx_state[2]),
        .I4(rx_state[1]),
        .O(reset_time_out_i_5_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_data_valid_n_4),
        .Q(reset_time_out_reg_n_0),
        .S(pma_reset));
  LUT5 #(
    .INIT(32'hFEFF0010)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .I3(rx_state[0]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(pma_reset));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_data_valid_n_5),
        .Q(data_in),
        .R(pma_reset));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  gig_ethernet_pcs_pma_sync_block_13 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_sync_block_14 sync_data_valid
       (.D({rx_state__0[3],rx_state__0[1:0]}),
        .E(sync_data_valid_n_0),
        .\FSM_sequential_rx_state_reg[0] (\wait_time_cnt[6]_i_2__0_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_3 (\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[1] (time_out_100us_reg_n_0),
        .\FSM_sequential_rx_state_reg[1]_0 (\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[3] (sync_data_valid_n_5),
        .\FSM_sequential_rx_state_reg[3]_0 (\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .Q(rx_state),
        .data_in(data_in),
        .data_out(data_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out_reg(sync_data_valid_n_4),
        .reset_time_out_reg_0(reset_time_out_reg_n_0),
        .reset_time_out_reg_1(sync_pll0lock_n_0),
        .reset_time_out_reg_2(reset_time_out_i_3__0_n_0),
        .reset_time_out_reg_3(reset_time_out_i_5_n_0),
        .rx_fsm_reset_done_int_reg(time_out_1us_reg_n_0),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3),
        .time_tlock_max(time_tlock_max));
  gig_ethernet_pcs_pma_sync_block_15 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked));
  gig_ethernet_pcs_pma_sync_block_16 sync_pll0lock
       (.\FSM_sequential_rx_state_reg[1] (sync_pll0lock_n_0),
        .Q(rx_state[3:1]),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .independent_clock_bufg(independent_clock_bufg),
        .rxresetdone_s3(rxresetdone_s3));
  gig_ethernet_pcs_pma_sync_block_17 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .userclk(userclk));
  gig_ethernet_pcs_pma_sync_block_18 sync_rx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(rx_fsm_reset_done_int_s2),
        .userclk(userclk));
  gig_ethernet_pcs_pma_sync_block_19 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_100us_i_1
       (.I0(time_out_100us_i_2_n_0),
        .I1(time_out_100us_i_3_n_0),
        .I2(time_out_100us_i_4_n_0),
        .I3(time_out_100us_i_5_n_0),
        .I4(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[13]),
        .I5(time_out_100us_i_6_n_0),
        .O(time_out_100us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[19]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[17]),
        .O(time_out_100us_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    time_out_100us_i_4
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[9]),
        .O(time_out_100us_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    time_out_100us_i_5
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[15]),
        .I4(time_out_counter_reg[12]),
        .O(time_out_100us_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_out_100us_i_6
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .O(time_out_100us_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    time_out_1us_i_1
       (.I0(time_out_1us_i_2_n_0),
        .I1(time_out_counter_reg[19]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_1us_i_3_n_0),
        .I4(time_out_2ms_i_4_n_0),
        .I5(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .O(time_out_1us_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[2]),
        .I5(time_out_counter_reg[10]),
        .O(time_out_1us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    time_out_2ms_i_1
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_2ms_i_2_n_0),
        .I3(time_out_2ms_i_3__0_n_0),
        .I4(time_out_2ms_i_4_n_0),
        .I5(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_out_2ms_i_2
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[2]),
        .O(time_out_2ms_i_2_n_0));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    time_out_2ms_i_3__0
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[18]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[16]),
        .I5(time_out_counter_reg[19]),
        .O(time_out_2ms_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    time_out_2ms_i_4
       (.I0(time_out_100us_i_5_n_0),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[5]),
        .I5(time_out_counter_reg[7]),
        .O(time_out_2ms_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_2ms_i_3__0_n_0),
        .I5(time_out_2ms_i_4_n_0),
        .O(time_out_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3],\time_out_counter_reg[16]_i_1__0_n_1 ,\time_out_counter_reg[16]_i_1__0_n_2 ,\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[16]_i_1__0_n_4 ,\time_out_counter_reg[16]_i_1__0_n_5 ,\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S(time_out_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[19] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[19]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .I2(time_out_wait_bypass_i_2__0_n_0),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    time_out_wait_bypass_i_2__0
       (.I0(time_out_wait_bypass_i_3__0_n_0),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[11]),
        .I3(wait_bypass_count_reg[0]),
        .I4(time_out_wait_bypass_i_4__0_n_0),
        .O(time_out_wait_bypass_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_wait_bypass_i_3__0
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[2]),
        .O(time_out_wait_bypass_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    time_out_wait_bypass_i_4__0
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[6]),
        .I4(wait_bypass_count_reg[10]),
        .I5(wait_bypass_count_reg[8]),
        .O(time_out_wait_bypass_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(userclk),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry
       (.CI(1'b0),
        .CO({time_tlock_max1_carry_n_0,time_tlock_max1_carry_n_1,time_tlock_max1_carry_n_2,time_tlock_max1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({time_tlock_max1_carry_i_1_n_0,time_tlock_max1_carry_i_2_n_0,time_tlock_max1_carry_i_3_n_0,time_tlock_max1_carry_i_4_n_0}),
        .O(NLW_time_tlock_max1_carry_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry_i_5_n_0,time_tlock_max1_carry_i_6_n_0,time_tlock_max1_carry_i_7_n_0,time_tlock_max1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry__0
       (.CI(time_tlock_max1_carry_n_0),
        .CO({time_tlock_max1_carry__0_n_0,time_tlock_max1_carry__0_n_1,time_tlock_max1_carry__0_n_2,time_tlock_max1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({time_out_counter_reg[15],time_tlock_max1_carry__0_i_1_n_0,1'b0,time_tlock_max1_carry__0_i_2_n_0}),
        .O(NLW_time_tlock_max1_carry__0_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry__0_i_3_n_0,time_tlock_max1_carry__0_i_4_n_0,time_tlock_max1_carry__0_i_5_n_0,time_tlock_max1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__0_i_1
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[12]),
        .O(time_tlock_max1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry__0_i_2
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .O(time_tlock_max1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry__0_i_3
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .O(time_tlock_max1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__0_i_4
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .O(time_tlock_max1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry__0_i_5
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[11]),
        .O(time_tlock_max1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry__0_i_6
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .O(time_tlock_max1_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry__1
       (.CI(time_tlock_max1_carry__0_n_0),
        .CO({NLW_time_tlock_max1_carry__1_CO_UNCONNECTED[3:2],time_tlock_max1,time_tlock_max1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,time_tlock_max1_carry__1_i_1_n_0,time_tlock_max1_carry__1_i_2_n_0}),
        .O(NLW_time_tlock_max1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,time_tlock_max1_carry__1_i_3_n_0,time_tlock_max1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__1_i_1
       (.I0(time_out_counter_reg[19]),
        .I1(time_out_counter_reg[18]),
        .O(time_tlock_max1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__1_i_2
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .O(time_tlock_max1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__1_i_3
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[19]),
        .O(time_tlock_max1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__1_i_4
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(time_tlock_max1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_1
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .O(time_tlock_max1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry_i_2
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .O(time_tlock_max1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_3
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[2]),
        .O(time_tlock_max1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_4
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .O(time_tlock_max1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_5
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .O(time_tlock_max1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry_i_6
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .O(time_tlock_max1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_7
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .O(time_tlock_max1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_8
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .O(time_tlock_max1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    time_tlock_max_i_1
       (.I0(check_tlock_max_reg_n_0),
        .I1(time_tlock_max1),
        .I2(time_tlock_max),
        .O(time_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(time_out_wait_bypass_i_2__0_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__0_n_0 ,\wait_bypass_count_reg[0]_i_3__0_n_1 ,\wait_bypass_count_reg[0]_i_3__0_n_2 ,\wait_bypass_count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__0_n_4 ,\wait_bypass_count_reg[0]_i_3__0_n_5 ,\wait_bypass_count_reg[0]_i_3__0_n_6 ,\wait_bypass_count_reg[0]_i_3__0_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_3__0_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1__0 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1__0 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[2]),
        .O(wait_time_cnt0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1__0 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[3]),
        .O(wait_time_cnt0__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wait_time_cnt[4]_i_1__0 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wait_time_cnt[5]_i_1__0 
       (.I0(wait_time_cnt_reg[5]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[0]),
        .I4(wait_time_cnt_reg[2]),
        .I5(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[5]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \wait_time_cnt[6]_i_1 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\wait_time_cnt[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[6]_i_2__0 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[4]),
        .I2(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I3(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[6]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wait_time_cnt[6]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[4]),
        .I2(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I3(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[6]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[6]_i_4__0 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[6]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[0]),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[1]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[2]),
        .Q(wait_time_cnt_reg[2]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0[3]),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[4]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[5]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[6]_i_3__0_n_0 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
endmodule

module gig_ethernet_pcs_pma_TX_STARTUP_FSM
   (mmcm_reset,
    PLL0_RESET_reg_0,
    data_in,
    gt0_txuserrdy_t,
    gt0_gttxreset_in0_out,
    independent_clock_bufg,
    userclk,
    pma_reset,
    gtpe2_i,
    gt0_pll0refclklost_in,
    data_sync_reg1,
    mmcm_locked,
    gt0_pll0lock_in);
  output mmcm_reset;
  output PLL0_RESET_reg_0;
  output data_in;
  output gt0_txuserrdy_t;
  output gt0_gttxreset_in0_out;
  input independent_clock_bufg;
  input userclk;
  input pma_reset;
  input gtpe2_i;
  input gt0_pll0refclklost_in;
  input data_sync_reg1;
  input mmcm_locked;
  input gt0_pll0lock_in;

  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_9_n_0 ;
  wire GTTXRESET;
  wire MMCM_RESET_i_1_n_0;
  wire PLL0_RESET_i_1_n_0;
  wire PLL0_RESET_i_2_n_0;
  wire PLL0_RESET_reg_0;
  wire TXUSERRDY_i_1_n_0;
  wire clear;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire gt0_gttxreset_in0_out;
  wire gt0_pll0lock_in;
  wire gt0_pll0refclklost_in;
  wire gt0_txuserrdy_t;
  wire gtpe2_i;
  wire gttxreset_i_i_1_n_0;
  wire independent_clock_bufg;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[6]_i_3_n_0 ;
  wire \init_wait_count[6]_i_4_n_0 ;
  wire [6:0]init_wait_count_reg;
  wire init_wait_done;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2_n_0 ;
  wire \mmcm_lock_count[7]_i_4_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2_n_0;
  wire mmcm_locked;
  wire mmcm_reset;
  wire [6:1]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_i_2_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire pma_reset;
  wire refclk_stable_count;
  wire \refclk_stable_count[0]_i_10_n_0 ;
  wire \refclk_stable_count[0]_i_11_n_0 ;
  wire \refclk_stable_count[0]_i_3_n_0 ;
  wire \refclk_stable_count[0]_i_4_n_0 ;
  wire \refclk_stable_count[0]_i_5_n_0 ;
  wire \refclk_stable_count[0]_i_6_n_0 ;
  wire \refclk_stable_count[0]_i_7_n_0 ;
  wire \refclk_stable_count[0]_i_8_n_0 ;
  wire \refclk_stable_count[0]_i_9_n_0 ;
  wire [31:0]refclk_stable_count_reg;
  wire \refclk_stable_count_reg[0]_i_2_n_0 ;
  wire \refclk_stable_count_reg[0]_i_2_n_1 ;
  wire \refclk_stable_count_reg[0]_i_2_n_2 ;
  wire \refclk_stable_count_reg[0]_i_2_n_3 ;
  wire \refclk_stable_count_reg[0]_i_2_n_4 ;
  wire \refclk_stable_count_reg[0]_i_2_n_5 ;
  wire \refclk_stable_count_reg[0]_i_2_n_6 ;
  wire \refclk_stable_count_reg[0]_i_2_n_7 ;
  wire \refclk_stable_count_reg[12]_i_1_n_0 ;
  wire \refclk_stable_count_reg[12]_i_1_n_1 ;
  wire \refclk_stable_count_reg[12]_i_1_n_2 ;
  wire \refclk_stable_count_reg[12]_i_1_n_3 ;
  wire \refclk_stable_count_reg[12]_i_1_n_4 ;
  wire \refclk_stable_count_reg[12]_i_1_n_5 ;
  wire \refclk_stable_count_reg[12]_i_1_n_6 ;
  wire \refclk_stable_count_reg[12]_i_1_n_7 ;
  wire \refclk_stable_count_reg[16]_i_1_n_0 ;
  wire \refclk_stable_count_reg[16]_i_1_n_1 ;
  wire \refclk_stable_count_reg[16]_i_1_n_2 ;
  wire \refclk_stable_count_reg[16]_i_1_n_3 ;
  wire \refclk_stable_count_reg[16]_i_1_n_4 ;
  wire \refclk_stable_count_reg[16]_i_1_n_5 ;
  wire \refclk_stable_count_reg[16]_i_1_n_6 ;
  wire \refclk_stable_count_reg[16]_i_1_n_7 ;
  wire \refclk_stable_count_reg[20]_i_1_n_0 ;
  wire \refclk_stable_count_reg[20]_i_1_n_1 ;
  wire \refclk_stable_count_reg[20]_i_1_n_2 ;
  wire \refclk_stable_count_reg[20]_i_1_n_3 ;
  wire \refclk_stable_count_reg[20]_i_1_n_4 ;
  wire \refclk_stable_count_reg[20]_i_1_n_5 ;
  wire \refclk_stable_count_reg[20]_i_1_n_6 ;
  wire \refclk_stable_count_reg[20]_i_1_n_7 ;
  wire \refclk_stable_count_reg[24]_i_1_n_0 ;
  wire \refclk_stable_count_reg[24]_i_1_n_1 ;
  wire \refclk_stable_count_reg[24]_i_1_n_2 ;
  wire \refclk_stable_count_reg[24]_i_1_n_3 ;
  wire \refclk_stable_count_reg[24]_i_1_n_4 ;
  wire \refclk_stable_count_reg[24]_i_1_n_5 ;
  wire \refclk_stable_count_reg[24]_i_1_n_6 ;
  wire \refclk_stable_count_reg[24]_i_1_n_7 ;
  wire \refclk_stable_count_reg[28]_i_1_n_1 ;
  wire \refclk_stable_count_reg[28]_i_1_n_2 ;
  wire \refclk_stable_count_reg[28]_i_1_n_3 ;
  wire \refclk_stable_count_reg[28]_i_1_n_4 ;
  wire \refclk_stable_count_reg[28]_i_1_n_5 ;
  wire \refclk_stable_count_reg[28]_i_1_n_6 ;
  wire \refclk_stable_count_reg[28]_i_1_n_7 ;
  wire \refclk_stable_count_reg[4]_i_1_n_0 ;
  wire \refclk_stable_count_reg[4]_i_1_n_1 ;
  wire \refclk_stable_count_reg[4]_i_1_n_2 ;
  wire \refclk_stable_count_reg[4]_i_1_n_3 ;
  wire \refclk_stable_count_reg[4]_i_1_n_4 ;
  wire \refclk_stable_count_reg[4]_i_1_n_5 ;
  wire \refclk_stable_count_reg[4]_i_1_n_6 ;
  wire \refclk_stable_count_reg[4]_i_1_n_7 ;
  wire \refclk_stable_count_reg[8]_i_1_n_0 ;
  wire \refclk_stable_count_reg[8]_i_1_n_1 ;
  wire \refclk_stable_count_reg[8]_i_1_n_2 ;
  wire \refclk_stable_count_reg[8]_i_1_n_3 ;
  wire \refclk_stable_count_reg[8]_i_1_n_4 ;
  wire \refclk_stable_count_reg[8]_i_1_n_5 ;
  wire \refclk_stable_count_reg[8]_i_1_n_6 ;
  wire \refclk_stable_count_reg[8]_i_1_n_7 ;
  wire refclk_stable_i_1_n_0;
  wire refclk_stable_reg_n_0;
  wire reset_time_out;
  wire reset_time_out_i_2_n_0;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s3;
  wire sel;
  wire sync_PLL0LOCK_n_0;
  wire sync_PLL0LOCK_n_1;
  wire sync_mmcm_lock_reclocked_n_0;
  wire time_out_2ms;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_3_n_0;
  wire time_out_2ms_i_4__0_n_0;
  wire time_out_2ms_i_5_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_i_3_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire [18:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_2 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_5 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2_n_0;
  wire time_out_wait_bypass_i_3_n_0;
  wire time_out_wait_bypass_i_4_n_0;
  wire time_out_wait_bypass_i_5_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_fsm_reset_done_int_s2;
  wire tx_fsm_reset_done_int_s3;
  wire [3:0]tx_state;
  wire [3:0]tx_state__0;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire userclk;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4__0_n_0 ;
  wire [16:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_0 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[16]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire [3:0]wait_time_cnt0;
  wire wait_time_cnt0_0;
  wire \wait_time_cnt[1]_i_1_n_0 ;
  wire \wait_time_cnt[4]_i_1_n_0 ;
  wire \wait_time_cnt[5]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_3_n_0 ;
  wire \wait_time_cnt[6]_i_4_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:3]\NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBFAABFFABAAABAFA)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I5(time_out_2ms_reg_n_0),
        .O(tx_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[0]_i_3 
       (.I0(reset_time_out),
        .I1(time_out_500us_reg_n_0),
        .O(\FSM_sequential_tx_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h002C003C)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(tx_state[2]),
        .O(tx_state__0[1]));
  LUT6 #(
    .INIT(64'h000500C000F000F0)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(tx_state[1]),
        .I5(tx_state[0]),
        .O(tx_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(mmcm_lock_reclocked),
        .I1(time_tlock_max_reg_n_0),
        .I2(reset_time_out),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[3]_i_10 
       (.I0(reset_time_out),
        .I1(time_tlock_max_reg_n_0),
        .O(\FSM_sequential_tx_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(tx_state[3]),
        .I2(reset_time_out),
        .I3(time_out_500us_reg_n_0),
        .I4(\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .O(tx_state__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88C888C8FFFF88C8)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(txresetdone_s3),
        .I1(\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .I2(time_out_500us_reg_n_0),
        .I3(reset_time_out),
        .I4(\FSM_sequential_tx_state[3]_i_9_n_0 ),
        .I5(tx_state[0]),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \FSM_sequential_tx_state[3]_i_9 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(init_wait_done_reg_n_0),
        .I3(tx_state[3]),
        .O(\FSM_sequential_tx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_PLL0LOCK_n_0),
        .D(tx_state__0[0]),
        .Q(tx_state[0]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_PLL0LOCK_n_0),
        .D(tx_state__0[1]),
        .Q(tx_state[1]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_PLL0LOCK_n_0),
        .D(tx_state__0[2]),
        .Q(tx_state[2]),
        .R(pma_reset));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_PLL0LOCK_n_0),
        .D(tx_state__0[3]),
        .Q(tx_state[3]),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hA8AAABAA)) 
    MMCM_RESET_i_1
       (.I0(mmcm_reset),
        .I1(tx_state[1]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .O(MMCM_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    MMCM_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(MMCM_RESET_i_1_n_0),
        .Q(mmcm_reset),
        .R(pma_reset));
  LUT5 #(
    .INIT(32'h1FFF1F00)) 
    PLL0_RESET_i_1
       (.I0(gt0_pll0refclklost_in),
        .I1(pll_reset_asserted_reg_n_0),
        .I2(refclk_stable_reg_n_0),
        .I3(PLL0_RESET_i_2_n_0),
        .I4(PLL0_RESET_reg_0),
        .O(PLL0_RESET_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    PLL0_RESET_i_2
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .O(PLL0_RESET_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    PLL0_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(PLL0_RESET_i_1_n_0),
        .Q(PLL0_RESET_reg_0),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hFEFF0800)) 
    TXUSERRDY_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .I4(gt0_txuserrdy_t),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt0_txuserrdy_t),
        .R(pma_reset));
  LUT3 #(
    .INIT(8'hEA)) 
    gtpe2_i_i_3
       (.I0(GTTXRESET),
        .I1(data_in),
        .I2(gtpe2_i),
        .O(gt0_gttxreset_in0_out));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    gttxreset_i_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[2]),
        .I2(tx_state[1]),
        .I3(tx_state[3]),
        .I4(GTTXRESET),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(GTTXRESET),
        .R(pma_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[2]),
        .I4(init_wait_count_reg[1]),
        .I5(init_wait_count_reg[4]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[6]),
        .I2(init_wait_count_reg[4]),
        .I3(\init_wait_count[6]_i_3_n_0 ),
        .I4(init_wait_count_reg[5]),
        .I5(init_wait_count_reg[3]),
        .O(init_wait_count));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[6]_i_2 
       (.I0(init_wait_count_reg[6]),
        .I1(init_wait_count_reg[4]),
        .I2(\init_wait_count[6]_i_4_n_0 ),
        .I3(init_wait_count_reg[5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \init_wait_count[6]_i_3 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .O(\init_wait_count[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \init_wait_count[6]_i_4 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[1]),
        .O(\init_wait_count[6]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__0[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__0[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__0[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__0[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__0[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(init_wait_count),
        .CLR(pma_reset),
        .D(p_0_in__0[6]),
        .Q(init_wait_count_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hE)) 
    init_wait_done_i_1
       (.I0(init_wait_done),
        .I1(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    init_wait_done_i_2
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[5]),
        .I2(\init_wait_count[6]_i_3_n_0 ),
        .I3(init_wait_count_reg[4]),
        .I4(init_wait_count_reg[6]),
        .I5(init_wait_count_reg[0]),
        .O(init_wait_done));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(pma_reset),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg[5]),
        .I1(mmcm_lock_count_reg[3]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[0]),
        .I5(mmcm_lock_count_reg[4]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_count_reg[4]),
        .I2(\mmcm_lock_count[7]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg[5]),
        .O(p_0_in__1[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mmcm_lock_count[7]_i_2 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_count_reg[4]),
        .I2(\mmcm_lock_count[7]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg[5]),
        .I4(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3 
       (.I0(mmcm_lock_count_reg[7]),
        .I1(mmcm_lock_count_reg[5]),
        .I2(\mmcm_lock_count[7]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg[4]),
        .I4(mmcm_lock_count_reg[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mmcm_lock_count[7]_i_4 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[0]),
        .O(\mmcm_lock_count[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[3]),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[6]),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[7]),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_count_reg[7]),
        .I2(mmcm_lock_reclocked_i_2_n_0),
        .I3(mmcm_lock_count_reg[6]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg[5]),
        .I1(mmcm_lock_count_reg[3]),
        .I2(mmcm_lock_count_reg[2]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[0]),
        .I5(mmcm_lock_count_reg[4]),
        .O(mmcm_lock_reclocked_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0F0F0F00000F155)) 
    pll_reset_asserted_i_1
       (.I0(tx_state[3]),
        .I1(gt0_pll0refclklost_in),
        .I2(pll_reset_asserted_reg_n_0),
        .I3(refclk_stable_reg_n_0),
        .I4(tx_state[1]),
        .I5(pll_reset_asserted_i_2_n_0),
        .O(pll_reset_asserted_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    pll_reset_asserted_i_2
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .O(pll_reset_asserted_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(pma_reset));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \refclk_stable_count[0]_i_1 
       (.I0(\refclk_stable_count[0]_i_3_n_0 ),
        .I1(\refclk_stable_count[0]_i_4_n_0 ),
        .I2(\refclk_stable_count[0]_i_5_n_0 ),
        .I3(\refclk_stable_count[0]_i_6_n_0 ),
        .O(refclk_stable_count));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \refclk_stable_count[0]_i_10 
       (.I0(refclk_stable_count_reg[24]),
        .I1(refclk_stable_count_reg[5]),
        .I2(refclk_stable_count_reg[3]),
        .I3(refclk_stable_count_reg[28]),
        .O(\refclk_stable_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \refclk_stable_count[0]_i_11 
       (.I0(refclk_stable_count_reg[11]),
        .I1(refclk_stable_count_reg[30]),
        .I2(refclk_stable_count_reg[15]),
        .I3(refclk_stable_count_reg[31]),
        .O(\refclk_stable_count[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \refclk_stable_count[0]_i_3 
       (.I0(refclk_stable_count_reg[21]),
        .I1(refclk_stable_count_reg[13]),
        .I2(refclk_stable_count_reg[29]),
        .I3(refclk_stable_count_reg[14]),
        .I4(\refclk_stable_count[0]_i_8_n_0 ),
        .O(\refclk_stable_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \refclk_stable_count[0]_i_4 
       (.I0(refclk_stable_count_reg[1]),
        .I1(refclk_stable_count_reg[6]),
        .I2(refclk_stable_count_reg[23]),
        .I3(refclk_stable_count_reg[9]),
        .I4(\refclk_stable_count[0]_i_9_n_0 ),
        .O(\refclk_stable_count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \refclk_stable_count[0]_i_5 
       (.I0(refclk_stable_count_reg[20]),
        .I1(refclk_stable_count_reg[12]),
        .I2(refclk_stable_count_reg[16]),
        .I3(refclk_stable_count_reg[0]),
        .I4(\refclk_stable_count[0]_i_10_n_0 ),
        .O(\refclk_stable_count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \refclk_stable_count[0]_i_6 
       (.I0(refclk_stable_count_reg[26]),
        .I1(refclk_stable_count_reg[19]),
        .I2(refclk_stable_count_reg[17]),
        .I3(refclk_stable_count_reg[10]),
        .I4(\refclk_stable_count[0]_i_11_n_0 ),
        .O(\refclk_stable_count[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_stable_count[0]_i_7 
       (.I0(refclk_stable_count_reg[0]),
        .O(\refclk_stable_count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \refclk_stable_count[0]_i_8 
       (.I0(refclk_stable_count_reg[8]),
        .I1(refclk_stable_count_reg[7]),
        .I2(refclk_stable_count_reg[25]),
        .I3(refclk_stable_count_reg[2]),
        .O(\refclk_stable_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \refclk_stable_count[0]_i_9 
       (.I0(refclk_stable_count_reg[22]),
        .I1(refclk_stable_count_reg[4]),
        .I2(refclk_stable_count_reg[18]),
        .I3(refclk_stable_count_reg[27]),
        .O(\refclk_stable_count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_7 ),
        .Q(refclk_stable_count_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\refclk_stable_count_reg[0]_i_2_n_0 ,\refclk_stable_count_reg[0]_i_2_n_1 ,\refclk_stable_count_reg[0]_i_2_n_2 ,\refclk_stable_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refclk_stable_count_reg[0]_i_2_n_4 ,\refclk_stable_count_reg[0]_i_2_n_5 ,\refclk_stable_count_reg[0]_i_2_n_6 ,\refclk_stable_count_reg[0]_i_2_n_7 }),
        .S({refclk_stable_count_reg[3:1],\refclk_stable_count[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[10] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[11] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[12] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[12]_i_1 
       (.CI(\refclk_stable_count_reg[8]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[12]_i_1_n_0 ,\refclk_stable_count_reg[12]_i_1_n_1 ,\refclk_stable_count_reg[12]_i_1_n_2 ,\refclk_stable_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[12]_i_1_n_4 ,\refclk_stable_count_reg[12]_i_1_n_5 ,\refclk_stable_count_reg[12]_i_1_n_6 ,\refclk_stable_count_reg[12]_i_1_n_7 }),
        .S(refclk_stable_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[13] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[14] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[15] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[16] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[16]_i_1 
       (.CI(\refclk_stable_count_reg[12]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[16]_i_1_n_0 ,\refclk_stable_count_reg[16]_i_1_n_1 ,\refclk_stable_count_reg[16]_i_1_n_2 ,\refclk_stable_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[16]_i_1_n_4 ,\refclk_stable_count_reg[16]_i_1_n_5 ,\refclk_stable_count_reg[16]_i_1_n_6 ,\refclk_stable_count_reg[16]_i_1_n_7 }),
        .S(refclk_stable_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[17] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[18] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[19] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_6 ),
        .Q(refclk_stable_count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[20] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[20]_i_1 
       (.CI(\refclk_stable_count_reg[16]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[20]_i_1_n_0 ,\refclk_stable_count_reg[20]_i_1_n_1 ,\refclk_stable_count_reg[20]_i_1_n_2 ,\refclk_stable_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[20]_i_1_n_4 ,\refclk_stable_count_reg[20]_i_1_n_5 ,\refclk_stable_count_reg[20]_i_1_n_6 ,\refclk_stable_count_reg[20]_i_1_n_7 }),
        .S(refclk_stable_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[21] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[22] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[23] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[24] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[24]_i_1 
       (.CI(\refclk_stable_count_reg[20]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[24]_i_1_n_0 ,\refclk_stable_count_reg[24]_i_1_n_1 ,\refclk_stable_count_reg[24]_i_1_n_2 ,\refclk_stable_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[24]_i_1_n_4 ,\refclk_stable_count_reg[24]_i_1_n_5 ,\refclk_stable_count_reg[24]_i_1_n_6 ,\refclk_stable_count_reg[24]_i_1_n_7 }),
        .S(refclk_stable_count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[25] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[26] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[27] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[28] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[28]_i_1 
       (.CI(\refclk_stable_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED [3],\refclk_stable_count_reg[28]_i_1_n_1 ,\refclk_stable_count_reg[28]_i_1_n_2 ,\refclk_stable_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[28]_i_1_n_4 ,\refclk_stable_count_reg[28]_i_1_n_5 ,\refclk_stable_count_reg[28]_i_1_n_6 ,\refclk_stable_count_reg[28]_i_1_n_7 }),
        .S(refclk_stable_count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[29] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_5 ),
        .Q(refclk_stable_count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[30] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[31] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_4 ),
        .Q(refclk_stable_count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[4]_i_1 
       (.CI(\refclk_stable_count_reg[0]_i_2_n_0 ),
        .CO({\refclk_stable_count_reg[4]_i_1_n_0 ,\refclk_stable_count_reg[4]_i_1_n_1 ,\refclk_stable_count_reg[4]_i_1_n_2 ,\refclk_stable_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[4]_i_1_n_4 ,\refclk_stable_count_reg[4]_i_1_n_5 ,\refclk_stable_count_reg[4]_i_1_n_6 ,\refclk_stable_count_reg[4]_i_1_n_7 }),
        .S(refclk_stable_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[8]_i_1 
       (.CI(\refclk_stable_count_reg[4]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[8]_i_1_n_0 ,\refclk_stable_count_reg[8]_i_1_n_1 ,\refclk_stable_count_reg[8]_i_1_n_2 ,\refclk_stable_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[8]_i_1_n_4 ,\refclk_stable_count_reg[8]_i_1_n_5 ,\refclk_stable_count_reg[8]_i_1_n_6 ,\refclk_stable_count_reg[8]_i_1_n_7 }),
        .S(refclk_stable_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0004)) 
    refclk_stable_i_1
       (.I0(\refclk_stable_count[0]_i_6_n_0 ),
        .I1(\refclk_stable_count[0]_i_5_n_0 ),
        .I2(\refclk_stable_count[0]_i_4_n_0 ),
        .I3(\refclk_stable_count[0]_i_3_n_0 ),
        .O(refclk_stable_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    refclk_stable_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(refclk_stable_i_1_n_0),
        .Q(refclk_stable_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00AC000C000CF0FC)) 
    reset_time_out_i_2
       (.I0(txresetdone_s3),
        .I1(init_wait_done_reg_n_0),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(tx_state[1]),
        .I5(tx_state[2]),
        .O(reset_time_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_PLL0LOCK_n_1),
        .Q(reset_time_out),
        .R(pma_reset));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hFFEF0100)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(pma_reset));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(data_out),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  gig_ethernet_pcs_pma_sync_block_7 sync_PLL0LOCK
       (.E(sync_PLL0LOCK_n_0),
        .\FSM_sequential_tx_state[3]_i_7_0 (refclk_stable_reg_n_0),
        .\FSM_sequential_tx_state[3]_i_7_1 (pll_reset_asserted_reg_n_0),
        .\FSM_sequential_tx_state_reg[0] (sel),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_2 (\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_3 (time_out_2ms_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_4 (\FSM_sequential_tx_state[3]_i_10_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_5 (\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .Q(tx_state),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(sync_PLL0LOCK_n_1),
        .reset_time_out_reg_0(init_wait_done_reg_n_0),
        .reset_time_out_reg_1(reset_time_out_i_2_n_0));
  gig_ethernet_pcs_pma_sync_block_8 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_sync_block_9 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked));
  gig_ethernet_pcs_pma_sync_block_10 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out),
        .userclk(userclk));
  gig_ethernet_pcs_pma_sync_block_11 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_sync_block_12 sync_tx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(tx_fsm_reset_done_int_s2),
        .userclk(userclk));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms),
        .I2(reset_time_out),
        .O(time_out_2ms_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_2ms_i_3_n_0),
        .I3(time_out_2ms_i_4__0_n_0),
        .I4(\time_out_counter[0]_i_3__0_n_0 ),
        .I5(time_out_2ms_i_5_n_0),
        .O(time_out_2ms));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h01)) 
    time_out_2ms_i_3
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[6]),
        .O(time_out_2ms_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    time_out_2ms_i_4__0
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[4]),
        .I5(time_out_counter_reg[2]),
        .O(time_out_2ms_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    time_out_2ms_i_5
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[15]),
        .O(time_out_2ms_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00AE)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_500us_i_3_n_0),
        .I3(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    time_out_500us_i_2
       (.I0(time_out_2ms_i_4__0_n_0),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[7]),
        .I5(time_out_counter_reg[14]),
        .O(time_out_500us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    time_out_500us_i_3
       (.I0(time_tlock_max_i_4_n_0),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[15]),
        .O(time_out_500us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \time_out_counter[0]_i_1__0 
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[16]),
        .I3(\time_out_counter[0]_i_3__0_n_0 ),
        .I4(time_out_500us_i_2_n_0),
        .O(time_out_counter));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[18]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[5]),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_2 ,\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3],\time_out_counter_reg[16]_i_1_n_5 ,\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,time_out_counter_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(tx_fsm_reset_done_int_s3),
        .I2(time_out_wait_bypass_i_2_n_0),
        .I3(run_phase_alignment_int_s3),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    time_out_wait_bypass_i_2
       (.I0(time_out_wait_bypass_i_3_n_0),
        .I1(time_out_wait_bypass_i_4_n_0),
        .I2(wait_bypass_count_reg[5]),
        .I3(wait_bypass_count_reg[13]),
        .I4(wait_bypass_count_reg[11]),
        .I5(time_out_wait_bypass_i_5_n_0),
        .O(time_out_wait_bypass_i_2_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    time_out_wait_bypass_i_3
       (.I0(wait_bypass_count_reg[16]),
        .I1(wait_bypass_count_reg[9]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[10]),
        .O(time_out_wait_bypass_i_3_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_wait_bypass_i_4
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[15]),
        .I2(wait_bypass_count_reg[6]),
        .I3(wait_bypass_count_reg[0]),
        .O(time_out_wait_bypass_i_4_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    time_out_wait_bypass_i_5
       (.I0(wait_bypass_count_reg[8]),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[7]),
        .I3(wait_bypass_count_reg[14]),
        .I4(wait_bypass_count_reg[2]),
        .I5(wait_bypass_count_reg[3]),
        .O(time_out_wait_bypass_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(userclk),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h0000AAAE)) 
    time_tlock_max_i_1
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2_n_0),
        .I2(time_tlock_max_i_3_n_0),
        .I3(time_tlock_max_i_4_n_0),
        .I4(reset_time_out),
        .O(time_tlock_max_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_2ms_i_4__0_n_0),
        .O(time_tlock_max_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[14]),
        .O(time_tlock_max_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[18]),
        .O(time_tlock_max_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(data_in),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(data_in),
        .R(pma_reset));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_s2),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(time_out_wait_bypass_i_2_n_0),
        .I1(tx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[12]_i_1_n_0 ,\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S(wait_bypass_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[13] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[14] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[15] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[16] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[16]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\wait_bypass_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(userclk),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[2]),
        .O(wait_time_cnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[3]),
        .O(wait_time_cnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wait_time_cnt[4]_i_1 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wait_time_cnt[5]_i_1 
       (.I0(wait_time_cnt_reg[5]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[0]),
        .I4(wait_time_cnt_reg[2]),
        .I5(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0070)) 
    \wait_time_cnt[6]_i_1__0 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .O(wait_time_cnt0_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[6]_i_2 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[4]),
        .I2(\wait_time_cnt[6]_i_4_n_0 ),
        .I3(wait_time_cnt_reg[5]),
        .O(sel));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wait_time_cnt[6]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[4]),
        .I2(\wait_time_cnt[6]_i_4_n_0 ),
        .I3(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[6]_i_4 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(wait_time_cnt0[0]),
        .Q(wait_time_cnt_reg[0]),
        .R(wait_time_cnt0_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[1]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[1]),
        .R(wait_time_cnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(wait_time_cnt0[2]),
        .Q(wait_time_cnt_reg[2]),
        .S(wait_time_cnt0_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(wait_time_cnt0[3]),
        .Q(wait_time_cnt_reg[3]),
        .R(wait_time_cnt0_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[4]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[4]),
        .R(wait_time_cnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[5]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[5]),
        .S(wait_time_cnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[6]_i_3_n_0 ),
        .Q(wait_time_cnt_reg[6]),
        .S(wait_time_cnt0_0));
endmodule

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module gig_ethernet_pcs_pma_block
   (gtrefclk,
    gtrefclk_bufg,
    txp,
    txn,
    rxp,
    rxn,
    txoutclk,
    rxoutclk,
    resetdone,
    cplllock,
    mmcm_reset,
    mmcm_locked,
    userclk,
    userclk2,
    rxuserclk,
    rxuserclk2,
    independent_clock_bufg,
    pma_reset,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    mdc,
    mdio_i,
    mdio_o,
    mdio_t,
    phyaddr,
    configuration_vector,
    configuration_valid,
    status_vector,
    reset,
    signal_detect,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    gt0_pll0refclklost_in,
    gt0_pll0lock_in,
    gt0_pll0reset_out);
  input gtrefclk;
  input gtrefclk_bufg;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output txoutclk;
  output rxoutclk;
  output resetdone;
  output cplllock;
  output mmcm_reset;
  input mmcm_locked;
  input userclk;
  input userclk2;
  input rxuserclk;
  input rxuserclk2;
  input independent_clock_bufg;
  input pma_reset;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input mdc;
  input mdio_i;
  output mdio_o;
  output mdio_t;
  input [4:0]phyaddr;
  input [4:0]configuration_vector;
  input configuration_valid;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input gt0_pll0refclklost_in;
  input gt0_pll0lock_in;
  output gt0_pll0reset_out;

  wire \<const0> ;
  wire configuration_valid;
  wire [4:0]configuration_vector;
  wire enablealign;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_pll0lock_in;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll0refclklost_in;
  wire gt0_pll0reset_out;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gtrefclk_bufg;
  wire independent_clock_bufg;
  wire mdc;
  wire mdio_i;
  wire mdio_o;
  wire mdio_t;
  wire mgt_rx_reset;
  wire mgt_tx_reset;
  wire mmcm_locked;
  wire mmcm_reset;
  wire [4:0]phyaddr;
  wire pma_reset;
  wire powerdown;
  wire reset;
  wire resetdone;
  wire rx_reset_done_i;
  wire rxbuferr;
  wire rxchariscomma;
  wire rxcharisk;
  wire [1:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire rxdisperr;
  wire rxn;
  wire rxnotintable;
  wire rxoutclk;
  wire rxp;
  wire signal_detect;
  wire [6:0]\^status_vector ;
  wire transceiver_inst_n_5;
  wire transceiver_inst_n_6;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire userclk2;
  wire NLW_gig_ethernet_pcs_pma_core_an_enable_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_an_interrupt_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_drp_den_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_drp_dwe_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_drp_req_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_en_cdet_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_ewrap_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_loc_ref_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_s_axi_arready_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_s_axi_awready_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_s_axi_bvalid_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_s_axi_rvalid_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_core_s_axi_wready_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_core_drp_daddr_UNCONNECTED;
  wire [15:0]NLW_gig_ethernet_pcs_pma_core_drp_di_UNCONNECTED;
  wire [63:0]NLW_gig_ethernet_pcs_pma_core_rxphy_correction_timer_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_core_rxphy_ns_field_UNCONNECTED;
  wire [47:0]NLW_gig_ethernet_pcs_pma_core_rxphy_s_field_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_core_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_core_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_core_s_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_core_speed_selection_UNCONNECTED;
  wire [15:7]NLW_gig_ethernet_pcs_pma_core_status_vector_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_core_tx_code_group_UNCONNECTED;

  assign cplllock = gt0_pll0lock_in;
  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13] = \<const0> ;
  assign status_vector[12] = \<const0> ;
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9] = \<const0> ;
  assign status_vector[8] = \<const0> ;
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  (* B_SHIFTER_ADDR = "10'b0101010000" *) 
  (* C_1588 = "0" *) 
  (* C_2_5G = "FALSE" *) 
  (* C_COMPONENT_NAME = "gig_ethernet_pcs_pma" *) 
  (* C_DYNAMIC_SWITCHING = "FALSE" *) 
  (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AN = "FALSE" *) 
  (* C_HAS_AXIL = "FALSE" *) 
  (* C_HAS_MDIO = "TRUE" *) 
  (* C_HAS_TEMAC = "TRUE" *) 
  (* C_IS_SGMII = "FALSE" *) 
  (* C_RX_GMII_CLK = "TXOUTCLK" *) 
  (* C_SGMII_FABRIC_BUFFER = "TRUE" *) 
  (* C_SGMII_PHY_MODE = "FALSE" *) 
  (* C_USE_LVDS = "FALSE" *) 
  (* C_USE_TBI = "FALSE" *) 
  (* C_USE_TRANSCEIVER = "TRUE" *) 
  (* GT_RX_BYTE_WIDTH = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  gig_ethernet_pcs_pma_v16_2_13 gig_ethernet_pcs_pma_core
       (.an_adv_config_val(1'b0),
        .an_adv_config_vector({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_enable(NLW_gig_ethernet_pcs_pma_core_an_enable_UNCONNECTED),
        .an_interrupt(NLW_gig_ethernet_pcs_pma_core_an_interrupt_UNCONNECTED),
        .an_restart_config(1'b0),
        .basex_or_sgmii(1'b0),
        .configuration_valid(configuration_valid),
        .configuration_vector({1'b0,configuration_vector[3:0]}),
        .correction_timer({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dcm_locked(mmcm_locked),
        .drp_daddr(NLW_gig_ethernet_pcs_pma_core_drp_daddr_UNCONNECTED[9:0]),
        .drp_dclk(1'b0),
        .drp_den(NLW_gig_ethernet_pcs_pma_core_drp_den_UNCONNECTED),
        .drp_di(NLW_gig_ethernet_pcs_pma_core_drp_di_UNCONNECTED[15:0]),
        .drp_do({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_drdy(1'b0),
        .drp_dwe(NLW_gig_ethernet_pcs_pma_core_drp_dwe_UNCONNECTED),
        .drp_gnt(1'b0),
        .drp_req(NLW_gig_ethernet_pcs_pma_core_drp_req_UNCONNECTED),
        .en_cdet(NLW_gig_ethernet_pcs_pma_core_en_cdet_UNCONNECTED),
        .enablealign(enablealign),
        .ewrap(NLW_gig_ethernet_pcs_pma_core_ewrap_UNCONNECTED),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gtx_clk(1'b0),
        .link_timer_basex({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_sgmii({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_value({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .loc_ref(NLW_gig_ethernet_pcs_pma_core_loc_ref_UNCONNECTED),
        .mdc(mdc),
        .mdio_in(mdio_i),
        .mdio_out(mdio_o),
        .mdio_tri(mdio_t),
        .mgt_rx_reset(mgt_rx_reset),
        .mgt_tx_reset(mgt_tx_reset),
        .phyad(phyaddr),
        .pma_rx_clk0(1'b0),
        .pma_rx_clk1(1'b0),
        .powerdown(powerdown),
        .reset(reset),
        .reset_done(resetdone),
        .rx_code_group0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_code_group1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_gt_nominal_latency({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0}),
        .rxbufstatus({rxbuferr,1'b0}),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt({1'b0,rxclkcorcnt}),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxphy_correction_timer(NLW_gig_ethernet_pcs_pma_core_rxphy_correction_timer_UNCONNECTED[63:0]),
        .rxphy_ns_field(NLW_gig_ethernet_pcs_pma_core_rxphy_ns_field_UNCONNECTED[31:0]),
        .rxphy_s_field(NLW_gig_ethernet_pcs_pma_core_rxphy_s_field_UNCONNECTED[47:0]),
        .rxrecclk(1'b0),
        .rxrundisp(1'b0),
        .s_axi_aclk(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_gig_ethernet_pcs_pma_core_s_axi_arready_UNCONNECTED),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_gig_ethernet_pcs_pma_core_s_axi_awready_UNCONNECTED),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_gig_ethernet_pcs_pma_core_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_gig_ethernet_pcs_pma_core_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_gig_ethernet_pcs_pma_core_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_resetn(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_gig_ethernet_pcs_pma_core_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_gig_ethernet_pcs_pma_core_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wready(NLW_gig_ethernet_pcs_pma_core_s_axi_wready_UNCONNECTED),
        .s_axi_wvalid(1'b0),
        .signal_detect(signal_detect),
        .speed_is_100(1'b0),
        .speed_is_10_100(1'b0),
        .speed_selection(NLW_gig_ethernet_pcs_pma_core_speed_selection_UNCONNECTED[1:0]),
        .status_vector({NLW_gig_ethernet_pcs_pma_core_status_vector_UNCONNECTED[15:7],\^status_vector }),
        .systemtimer_ns_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .systemtimer_s_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_code_group(NLW_gig_ethernet_pcs_pma_core_tx_code_group_UNCONNECTED[9:0]),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk(1'b0),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_sync_block sync_block_rx_reset_done
       (.data_in(transceiver_inst_n_6),
        .data_out(rx_reset_done_i),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_sync_block_0 sync_block_tx_reset_done
       (.data_in(transceiver_inst_n_5),
        .resetdone(resetdone),
        .resetdone_0(rx_reset_done_i),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_transceiver transceiver_inst
       (.D(txdata),
        .Q(rxclkcorcnt),
        .SR(mgt_tx_reset),
        .data_in(transceiver_inst_n_5),
        .enablealign(enablealign),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll0refclklost_in(gt0_pll0refclklost_in),
        .gt0_pll0reset_out(gt0_pll0reset_out),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gtrefclk_bufg(gtrefclk_bufg),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .powerdown(powerdown),
        .reset_sync5(mgt_rx_reset),
        .rx_fsm_reset_done_int_reg(transceiver_inst_n_6),
        .rxbuferr(rxbuferr),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .\rxdata_reg[7]_0 (rxdata),
        .rxdisperr(rxdisperr),
        .rxn(rxn),
        .rxnotintable(rxnotintable),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .status_vector(\^status_vector [1]),
        .txbuferr(txbuferr),
        .txchardispmode_reg_reg_0(txchardispmode),
        .txchardispval_reg_reg_0(txchardispval),
        .txcharisk_reg_reg_0(txcharisk),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk),
        .userclk2(userclk2));
endmodule

module gig_ethernet_pcs_pma_gtwizard_gtrxreset_seq
   (GTRXRESET,
    \FSM_onehot_state_reg[5]_0 ,
    DRPDI,
    \FSM_onehot_state_reg[7]_0 ,
    DRPADDR,
    gtrefclk_bufg,
    \original_rd_data_reg[0]_0 ,
    SR,
    data_in,
    reset_sync5,
    D);
  output GTRXRESET;
  output \FSM_onehot_state_reg[5]_0 ;
  output [15:0]DRPDI;
  output \FSM_onehot_state_reg[7]_0 ;
  output [0:0]DRPADDR;
  input gtrefclk_bufg;
  input \original_rd_data_reg[0]_0 ;
  input [0:0]SR;
  input data_in;
  input reset_sync5;
  input [15:0]D;

  wire [15:0]D;
  wire [0:0]DRPADDR;
  wire [15:0]DRPDI;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[5]_0 ;
  wire \FSM_onehot_state_reg[7]_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire GTRXRESET;
  wire [0:0]SR;
  wire data_in;
  wire drp_op_done;
  wire drp_op_done_o_i_1_n_0;
  wire flag;
  wire flag_i_1_n_0;
  wire flag_reg_n_0;
  wire gtrefclk_bufg;
  wire gtrxreset_i__0;
  wire gtrxreset_in_sync;
  wire gtrxreset_s;
  wire gtrxreset_ss;
  wire [15:0]in7;
  wire next_rd_data;
  wire [15:0]original_rd_data;
  wire original_rd_data0;
  wire \original_rd_data_reg[0]_0 ;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire \rd_data[0]_i_1_n_0 ;
  wire \rd_data[10]_i_1_n_0 ;
  wire \rd_data[11]_i_1_n_0 ;
  wire \rd_data[12]_i_1_n_0 ;
  wire \rd_data[13]_i_1_n_0 ;
  wire \rd_data[14]_i_1_n_0 ;
  wire \rd_data[15]_i_2_n_0 ;
  wire \rd_data[1]_i_1_n_0 ;
  wire \rd_data[2]_i_1_n_0 ;
  wire \rd_data[3]_i_1_n_0 ;
  wire \rd_data[4]_i_1_n_0 ;
  wire \rd_data[5]_i_1_n_0 ;
  wire \rd_data[6]_i_1_n_0 ;
  wire \rd_data[7]_i_1_n_0 ;
  wire \rd_data[8]_i_1_n_0 ;
  wire \rd_data[9]_i_1_n_0 ;
  wire \rd_data_reg_n_0_[11] ;
  wire reset_sync5;
  wire rst_sync;
  wire rxpmaresetdone_s;
  wire rxpmaresetdone_ss;
  wire rxpmaresetdone_sss;
  wire rxpmaresetdone_sync;

  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(p_2_in),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(flag),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\original_rd_data_reg[0]_0 ),
        .I1(flag),
        .I2(gtrxreset_ss),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(p_1_in),
        .I1(rxpmaresetdone_ss),
        .I2(rxpmaresetdone_sss),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(rxpmaresetdone_sss),
        .I1(rxpmaresetdone_ss),
        .I2(p_1_in),
        .I3(\original_rd_data_reg[0]_0 ),
        .I4(p_3_in),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(p_3_in),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(p_0_in),
        .I1(\original_rd_data_reg[0]_0 ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(p_0_in),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(gtrxreset_ss),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(flag));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .PRE(rst_sync),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(p_2_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(p_1_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(p_3_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(p_0_in));
  (* FSM_ENCODED_STATES = "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    drp_op_done_o_i_1
       (.I0(flag),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(drp_op_done),
        .O(drp_op_done_o_i_1_n_0));
  FDCE drp_op_done_o_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(gtrxreset_ss),
        .D(drp_op_done_o_i_1_n_0),
        .Q(drp_op_done));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    flag_i_1
       (.I0(flag),
        .I1(flag_reg_n_0),
        .I2(p_2_in),
        .I3(p_1_in),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(p_3_in),
        .O(flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    gtpe2_i_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(p_2_in),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(drp_op_done),
        .O(\FSM_onehot_state_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_10
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[9]),
        .I3(drp_op_done),
        .O(DRPDI[9]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_11
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[8]),
        .I3(drp_op_done),
        .O(DRPDI[8]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_12
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[7]),
        .I3(drp_op_done),
        .O(DRPDI[7]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_13
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[6]),
        .I3(drp_op_done),
        .O(DRPDI[6]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_14
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[5]),
        .I3(drp_op_done),
        .O(DRPDI[5]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_15
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[4]),
        .I3(drp_op_done),
        .O(DRPDI[4]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_16
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[3]),
        .I3(drp_op_done),
        .O(DRPDI[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_17
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[2]),
        .I3(drp_op_done),
        .O(DRPDI[2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_18
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[1]),
        .I3(drp_op_done),
        .O(DRPDI[1]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_19
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[0]),
        .I3(drp_op_done),
        .O(DRPDI[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    gtpe2_i_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(p_2_in),
        .I2(drp_op_done),
        .O(\FSM_onehot_state_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gtpe2_i_i_20
       (.I0(drp_op_done),
        .O(DRPADDR));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_4
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[15]),
        .I3(drp_op_done),
        .O(DRPDI[15]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_5
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[14]),
        .I3(drp_op_done),
        .O(DRPDI[14]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_6
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[13]),
        .I3(drp_op_done),
        .O(DRPDI[13]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_7
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[12]),
        .I3(drp_op_done),
        .O(DRPDI[12]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h08)) 
    gtpe2_i_i_8
       (.I0(\rd_data_reg_n_0_[11] ),
        .I1(p_2_in),
        .I2(drp_op_done),
        .O(DRPDI[11]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    gtpe2_i_i_9
       (.I0(p_2_in),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(in7[10]),
        .I3(drp_op_done),
        .O(DRPDI[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    gtrxreset_i
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(p_3_in),
        .I2(gtrxreset_ss),
        .I3(p_1_in),
        .I4(p_0_in),
        .I5(\FSM_onehot_state_reg_n_0_[5] ),
        .O(gtrxreset_i__0));
  FDCE gtrxreset_o_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_i__0),
        .Q(GTRXRESET));
  FDCE gtrxreset_s_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_in_sync),
        .Q(gtrxreset_s));
  FDCE gtrxreset_ss_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(gtrxreset_s),
        .Q(gtrxreset_ss));
  LUT3 #(
    .INIT(8'h40)) 
    \original_rd_data[15]_i_1 
       (.I0(flag_reg_n_0),
        .I1(\original_rd_data_reg[0]_0 ),
        .I2(p_0_in),
        .O(original_rd_data0));
  FDRE \original_rd_data_reg[0] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[0]),
        .Q(original_rd_data[0]),
        .R(1'b0));
  FDRE \original_rd_data_reg[10] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[10]),
        .Q(original_rd_data[10]),
        .R(1'b0));
  FDRE \original_rd_data_reg[11] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[11]),
        .Q(original_rd_data[11]),
        .R(1'b0));
  FDRE \original_rd_data_reg[12] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[12]),
        .Q(original_rd_data[12]),
        .R(1'b0));
  FDRE \original_rd_data_reg[13] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[13]),
        .Q(original_rd_data[13]),
        .R(1'b0));
  FDRE \original_rd_data_reg[14] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[14]),
        .Q(original_rd_data[14]),
        .R(1'b0));
  FDRE \original_rd_data_reg[15] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[15]),
        .Q(original_rd_data[15]),
        .R(1'b0));
  FDRE \original_rd_data_reg[1] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[1]),
        .Q(original_rd_data[1]),
        .R(1'b0));
  FDRE \original_rd_data_reg[2] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[2]),
        .Q(original_rd_data[2]),
        .R(1'b0));
  FDRE \original_rd_data_reg[3] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[3]),
        .Q(original_rd_data[3]),
        .R(1'b0));
  FDRE \original_rd_data_reg[4] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[4]),
        .Q(original_rd_data[4]),
        .R(1'b0));
  FDRE \original_rd_data_reg[5] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[5]),
        .Q(original_rd_data[5]),
        .R(1'b0));
  FDRE \original_rd_data_reg[6] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[6]),
        .Q(original_rd_data[6]),
        .R(1'b0));
  FDRE \original_rd_data_reg[7] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[7]),
        .Q(original_rd_data[7]),
        .R(1'b0));
  FDRE \original_rd_data_reg[8] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[8]),
        .Q(original_rd_data[8]),
        .R(1'b0));
  FDRE \original_rd_data_reg[9] 
       (.C(gtrefclk_bufg),
        .CE(original_rd_data0),
        .D(D[9]),
        .Q(original_rd_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[0]_i_1 
       (.I0(D[0]),
        .I1(original_rd_data[0]),
        .I2(flag_reg_n_0),
        .O(\rd_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[10]_i_1 
       (.I0(D[10]),
        .I1(original_rd_data[10]),
        .I2(flag_reg_n_0),
        .O(\rd_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[11]_i_1 
       (.I0(D[11]),
        .I1(original_rd_data[11]),
        .I2(flag_reg_n_0),
        .O(\rd_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[12]_i_1 
       (.I0(D[12]),
        .I1(original_rd_data[12]),
        .I2(flag_reg_n_0),
        .O(\rd_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[13]_i_1 
       (.I0(D[13]),
        .I1(original_rd_data[13]),
        .I2(flag_reg_n_0),
        .O(\rd_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[14]_i_1 
       (.I0(D[14]),
        .I1(original_rd_data[14]),
        .I2(flag_reg_n_0),
        .O(\rd_data[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_data[15]_i_1 
       (.I0(p_0_in),
        .I1(\original_rd_data_reg[0]_0 ),
        .O(next_rd_data));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[15]_i_2 
       (.I0(D[15]),
        .I1(original_rd_data[15]),
        .I2(flag_reg_n_0),
        .O(\rd_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[1]_i_1 
       (.I0(D[1]),
        .I1(original_rd_data[1]),
        .I2(flag_reg_n_0),
        .O(\rd_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[2]_i_1 
       (.I0(D[2]),
        .I1(original_rd_data[2]),
        .I2(flag_reg_n_0),
        .O(\rd_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[3]_i_1 
       (.I0(D[3]),
        .I1(original_rd_data[3]),
        .I2(flag_reg_n_0),
        .O(\rd_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[4]_i_1 
       (.I0(D[4]),
        .I1(original_rd_data[4]),
        .I2(flag_reg_n_0),
        .O(\rd_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[5]_i_1 
       (.I0(D[5]),
        .I1(original_rd_data[5]),
        .I2(flag_reg_n_0),
        .O(\rd_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[6]_i_1 
       (.I0(D[6]),
        .I1(original_rd_data[6]),
        .I2(flag_reg_n_0),
        .O(\rd_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[7]_i_1 
       (.I0(D[7]),
        .I1(original_rd_data[7]),
        .I2(flag_reg_n_0),
        .O(\rd_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[8]_i_1 
       (.I0(D[8]),
        .I1(original_rd_data[8]),
        .I2(flag_reg_n_0),
        .O(\rd_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_data[9]_i_1 
       (.I0(D[9]),
        .I1(original_rd_data[9]),
        .I2(flag_reg_n_0),
        .O(\rd_data[9]_i_1_n_0 ));
  FDCE \rd_data_reg[0] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[0]_i_1_n_0 ),
        .Q(in7[0]));
  FDCE \rd_data_reg[10] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[10]_i_1_n_0 ),
        .Q(in7[10]));
  FDCE \rd_data_reg[11] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[11]_i_1_n_0 ),
        .Q(\rd_data_reg_n_0_[11] ));
  FDCE \rd_data_reg[12] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[12]_i_1_n_0 ),
        .Q(in7[12]));
  FDCE \rd_data_reg[13] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[13]_i_1_n_0 ),
        .Q(in7[13]));
  FDCE \rd_data_reg[14] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[14]_i_1_n_0 ),
        .Q(in7[14]));
  FDCE \rd_data_reg[15] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[15]_i_2_n_0 ),
        .Q(in7[15]));
  FDCE \rd_data_reg[1] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[1]_i_1_n_0 ),
        .Q(in7[1]));
  FDCE \rd_data_reg[2] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[2]_i_1_n_0 ),
        .Q(in7[2]));
  FDCE \rd_data_reg[3] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[3]_i_1_n_0 ),
        .Q(in7[3]));
  FDCE \rd_data_reg[4] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[4]_i_1_n_0 ),
        .Q(in7[4]));
  FDCE \rd_data_reg[5] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[5]_i_1_n_0 ),
        .Q(in7[5]));
  FDCE \rd_data_reg[6] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[6]_i_1_n_0 ),
        .Q(in7[6]));
  FDCE \rd_data_reg[7] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[7]_i_1_n_0 ),
        .Q(in7[7]));
  FDCE \rd_data_reg[8] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[8]_i_1_n_0 ),
        .Q(in7[8]));
  FDCE \rd_data_reg[9] 
       (.C(gtrefclk_bufg),
        .CE(next_rd_data),
        .CLR(rst_sync),
        .D(\rd_data[9]_i_1_n_0 ),
        .Q(in7[9]));
  FDCE rxpmaresetdone_s_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_sync),
        .Q(rxpmaresetdone_s));
  FDCE rxpmaresetdone_ss_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_s),
        .Q(rxpmaresetdone_ss));
  FDCE rxpmaresetdone_sss_reg
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .CLR(rst_sync),
        .D(rxpmaresetdone_ss),
        .Q(rxpmaresetdone_sss));
  gig_ethernet_pcs_pma_reset_sync_4 sync_gtrxreset_in
       (.SR(SR),
        .gtrefclk_bufg(gtrefclk_bufg),
        .reset_out(gtrxreset_in_sync));
  gig_ethernet_pcs_pma_reset_sync_5 sync_rst_sync
       (.gtrefclk_bufg(gtrefclk_bufg),
        .reset_out(rst_sync),
        .reset_sync5_0(reset_sync5));
  gig_ethernet_pcs_pma_sync_block_6 sync_rxpmaresetdone
       (.data_in(data_in),
        .data_out(rxpmaresetdone_sync),
        .gtrefclk_bufg(gtrefclk_bufg));
endmodule

module gig_ethernet_pcs_pma_reset_sync
   (reset_out,
    userclk2,
    enablealign);
  output reset_out;
  input userclk2;
  input enablealign;

  wire enablealign;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(enablealign),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(enablealign),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(enablealign),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(enablealign),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(enablealign),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_reset_sync" *) 
module gig_ethernet_pcs_pma_reset_sync_1
   (reset_out,
    independent_clock_bufg,
    reset_sync5_0);
  output reset_out;
  input independent_clock_bufg;
  input [0:0]reset_sync5_0;

  wire independent_clock_bufg;
  wire reset_out;
  wire [0:0]reset_sync5_0;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_reset_sync" *) 
module gig_ethernet_pcs_pma_reset_sync_2
   (reset_out,
    independent_clock_bufg,
    SR);
  output reset_out;
  input independent_clock_bufg;
  input [0:0]SR;

  wire [0:0]SR;
  wire independent_clock_bufg;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(SR),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(SR),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(SR),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(SR),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_reset_sync" *) 
module gig_ethernet_pcs_pma_reset_sync_4
   (reset_out,
    gtrefclk_bufg,
    SR);
  output reset_out;
  input gtrefclk_bufg;
  input [0:0]SR;

  wire [0:0]SR;
  wire gtrefclk_bufg;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(SR),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(SR),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(SR),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(SR),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_reset_sync" *) 
module gig_ethernet_pcs_pma_reset_sync_5
   (reset_out,
    gtrefclk_bufg,
    reset_sync5_0);
  output reset_out;
  input gtrefclk_bufg;
  input reset_sync5_0;

  wire gtrefclk_bufg;
  wire reset_out;
  wire reset_sync5_0;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

module gig_ethernet_pcs_pma_reset_wtd_timer
   (reset,
    independent_clock_bufg,
    data_out);
  output reset;
  input independent_clock_bufg;
  input data_out;

  wire \counter_stg1[5]_i_1_n_0 ;
  wire \counter_stg1[5]_i_3_n_0 ;
  wire [5:5]counter_stg1_reg;
  wire [4:0]counter_stg1_reg__0;
  wire \counter_stg2[0]_i_3_n_0 ;
  wire [11:0]counter_stg2_reg;
  wire \counter_stg2_reg[0]_i_2_n_0 ;
  wire \counter_stg2_reg[0]_i_2_n_1 ;
  wire \counter_stg2_reg[0]_i_2_n_2 ;
  wire \counter_stg2_reg[0]_i_2_n_3 ;
  wire \counter_stg2_reg[0]_i_2_n_4 ;
  wire \counter_stg2_reg[0]_i_2_n_5 ;
  wire \counter_stg2_reg[0]_i_2_n_6 ;
  wire \counter_stg2_reg[0]_i_2_n_7 ;
  wire \counter_stg2_reg[4]_i_1_n_0 ;
  wire \counter_stg2_reg[4]_i_1_n_1 ;
  wire \counter_stg2_reg[4]_i_1_n_2 ;
  wire \counter_stg2_reg[4]_i_1_n_3 ;
  wire \counter_stg2_reg[4]_i_1_n_4 ;
  wire \counter_stg2_reg[4]_i_1_n_5 ;
  wire \counter_stg2_reg[4]_i_1_n_6 ;
  wire \counter_stg2_reg[4]_i_1_n_7 ;
  wire \counter_stg2_reg[8]_i_1_n_1 ;
  wire \counter_stg2_reg[8]_i_1_n_2 ;
  wire \counter_stg2_reg[8]_i_1_n_3 ;
  wire \counter_stg2_reg[8]_i_1_n_4 ;
  wire \counter_stg2_reg[8]_i_1_n_5 ;
  wire \counter_stg2_reg[8]_i_1_n_6 ;
  wire \counter_stg2_reg[8]_i_1_n_7 ;
  wire counter_stg30;
  wire \counter_stg3[0]_i_3_n_0 ;
  wire \counter_stg3[0]_i_4_n_0 ;
  wire \counter_stg3[0]_i_5_n_0 ;
  wire [11:0]counter_stg3_reg;
  wire \counter_stg3_reg[0]_i_2_n_0 ;
  wire \counter_stg3_reg[0]_i_2_n_1 ;
  wire \counter_stg3_reg[0]_i_2_n_2 ;
  wire \counter_stg3_reg[0]_i_2_n_3 ;
  wire \counter_stg3_reg[0]_i_2_n_4 ;
  wire \counter_stg3_reg[0]_i_2_n_5 ;
  wire \counter_stg3_reg[0]_i_2_n_6 ;
  wire \counter_stg3_reg[0]_i_2_n_7 ;
  wire \counter_stg3_reg[4]_i_1_n_0 ;
  wire \counter_stg3_reg[4]_i_1_n_1 ;
  wire \counter_stg3_reg[4]_i_1_n_2 ;
  wire \counter_stg3_reg[4]_i_1_n_3 ;
  wire \counter_stg3_reg[4]_i_1_n_4 ;
  wire \counter_stg3_reg[4]_i_1_n_5 ;
  wire \counter_stg3_reg[4]_i_1_n_6 ;
  wire \counter_stg3_reg[4]_i_1_n_7 ;
  wire \counter_stg3_reg[8]_i_1_n_1 ;
  wire \counter_stg3_reg[8]_i_1_n_2 ;
  wire \counter_stg3_reg[8]_i_1_n_3 ;
  wire \counter_stg3_reg[8]_i_1_n_4 ;
  wire \counter_stg3_reg[8]_i_1_n_5 ;
  wire \counter_stg3_reg[8]_i_1_n_6 ;
  wire \counter_stg3_reg[8]_i_1_n_7 ;
  wire data_out;
  wire eqOp;
  wire independent_clock_bufg;
  wire [5:0]plusOp;
  wire reset;
  wire reset0;
  wire reset_i_2_n_0;
  wire reset_i_3_n_0;
  wire reset_i_4_n_0;
  wire reset_i_5_n_0;
  wire reset_i_6_n_0;
  wire reset_i_7_n_0;
  wire [3:3]\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg1[0]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_stg1[1]_i_1 
       (.I0(counter_stg1_reg__0[1]),
        .I1(counter_stg1_reg__0[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter_stg1[2]_i_1 
       (.I0(counter_stg1_reg__0[2]),
        .I1(counter_stg1_reg__0[1]),
        .I2(counter_stg1_reg__0[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_stg1[3]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .I1(counter_stg1_reg__0[1]),
        .I2(counter_stg1_reg__0[2]),
        .I3(counter_stg1_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter_stg1[4]_i_1 
       (.I0(counter_stg1_reg__0[4]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[1]),
        .I3(counter_stg1_reg__0[2]),
        .I4(counter_stg1_reg__0[3]),
        .O(plusOp[4]));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter_stg1[5]_i_1 
       (.I0(data_out),
        .I1(\counter_stg1[5]_i_3_n_0 ),
        .I2(reset0),
        .O(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter_stg1[5]_i_2 
       (.I0(counter_stg1_reg),
        .I1(counter_stg1_reg__0[3]),
        .I2(counter_stg1_reg__0[2]),
        .I3(counter_stg1_reg__0[1]),
        .I4(counter_stg1_reg__0[0]),
        .I5(counter_stg1_reg__0[4]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter_stg1[5]_i_3 
       (.I0(counter_stg1_reg__0[4]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[1]),
        .I3(counter_stg1_reg__0[2]),
        .I4(counter_stg1_reg__0[3]),
        .O(\counter_stg1[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(counter_stg1_reg__0[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(counter_stg1_reg__0[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(counter_stg1_reg__0[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(counter_stg1_reg__0[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(counter_stg1_reg__0[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(counter_stg1_reg),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_stg2[0]_i_1 
       (.I0(counter_stg1_reg),
        .I1(counter_stg1_reg__0[3]),
        .I2(counter_stg1_reg__0[2]),
        .I3(counter_stg1_reg__0[1]),
        .I4(counter_stg1_reg__0[0]),
        .I5(counter_stg1_reg__0[4]),
        .O(eqOp));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg2[0]_i_3 
       (.I0(counter_stg2_reg[0]),
        .O(\counter_stg2[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[0] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_7 ),
        .Q(counter_stg2_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_stg2_reg[0]_i_2_n_0 ,\counter_stg2_reg[0]_i_2_n_1 ,\counter_stg2_reg[0]_i_2_n_2 ,\counter_stg2_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_stg2_reg[0]_i_2_n_4 ,\counter_stg2_reg[0]_i_2_n_5 ,\counter_stg2_reg[0]_i_2_n_6 ,\counter_stg2_reg[0]_i_2_n_7 }),
        .S({counter_stg2_reg[3:1],\counter_stg2[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[10] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_5 ),
        .Q(counter_stg2_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[11] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_4 ),
        .Q(counter_stg2_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[1] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_6 ),
        .Q(counter_stg2_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[2] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_5 ),
        .Q(counter_stg2_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[3] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_4 ),
        .Q(counter_stg2_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[4] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_7 ),
        .Q(counter_stg2_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[4]_i_1 
       (.CI(\counter_stg2_reg[0]_i_2_n_0 ),
        .CO({\counter_stg2_reg[4]_i_1_n_0 ,\counter_stg2_reg[4]_i_1_n_1 ,\counter_stg2_reg[4]_i_1_n_2 ,\counter_stg2_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg2_reg[4]_i_1_n_4 ,\counter_stg2_reg[4]_i_1_n_5 ,\counter_stg2_reg[4]_i_1_n_6 ,\counter_stg2_reg[4]_i_1_n_7 }),
        .S(counter_stg2_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[5] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_6 ),
        .Q(counter_stg2_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[6] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_5 ),
        .Q(counter_stg2_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[7] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_4 ),
        .Q(counter_stg2_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[8] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_7 ),
        .Q(counter_stg2_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[8]_i_1 
       (.CI(\counter_stg2_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED [3],\counter_stg2_reg[8]_i_1_n_1 ,\counter_stg2_reg[8]_i_1_n_2 ,\counter_stg2_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg2_reg[8]_i_1_n_4 ,\counter_stg2_reg[8]_i_1_n_5 ,\counter_stg2_reg[8]_i_1_n_6 ,\counter_stg2_reg[8]_i_1_n_7 }),
        .S(counter_stg2_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[9] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_6 ),
        .Q(counter_stg2_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \counter_stg3[0]_i_1 
       (.I0(\counter_stg1[5]_i_3_n_0 ),
        .I1(counter_stg2_reg[8]),
        .I2(counter_stg2_reg[4]),
        .I3(counter_stg2_reg[3]),
        .I4(\counter_stg3[0]_i_3_n_0 ),
        .I5(\counter_stg3[0]_i_4_n_0 ),
        .O(counter_stg30));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_stg3[0]_i_3 
       (.I0(counter_stg2_reg[7]),
        .I1(counter_stg2_reg[6]),
        .I2(counter_stg2_reg[1]),
        .I3(counter_stg2_reg[2]),
        .O(\counter_stg3[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter_stg3[0]_i_4 
       (.I0(counter_stg2_reg[11]),
        .I1(counter_stg1_reg),
        .I2(counter_stg2_reg[5]),
        .I3(counter_stg2_reg[9]),
        .I4(counter_stg2_reg[0]),
        .I5(counter_stg2_reg[10]),
        .O(\counter_stg3[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg3[0]_i_5 
       (.I0(counter_stg3_reg[0]),
        .O(\counter_stg3[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[0] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_7 ),
        .Q(counter_stg3_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_stg3_reg[0]_i_2_n_0 ,\counter_stg3_reg[0]_i_2_n_1 ,\counter_stg3_reg[0]_i_2_n_2 ,\counter_stg3_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_stg3_reg[0]_i_2_n_4 ,\counter_stg3_reg[0]_i_2_n_5 ,\counter_stg3_reg[0]_i_2_n_6 ,\counter_stg3_reg[0]_i_2_n_7 }),
        .S({counter_stg3_reg[3:1],\counter_stg3[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[10] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_5 ),
        .Q(counter_stg3_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[11] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_4 ),
        .Q(counter_stg3_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[1] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_6 ),
        .Q(counter_stg3_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[2] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_5 ),
        .Q(counter_stg3_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[3] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_4 ),
        .Q(counter_stg3_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[4] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_7 ),
        .Q(counter_stg3_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[4]_i_1 
       (.CI(\counter_stg3_reg[0]_i_2_n_0 ),
        .CO({\counter_stg3_reg[4]_i_1_n_0 ,\counter_stg3_reg[4]_i_1_n_1 ,\counter_stg3_reg[4]_i_1_n_2 ,\counter_stg3_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg3_reg[4]_i_1_n_4 ,\counter_stg3_reg[4]_i_1_n_5 ,\counter_stg3_reg[4]_i_1_n_6 ,\counter_stg3_reg[4]_i_1_n_7 }),
        .S(counter_stg3_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[5] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_6 ),
        .Q(counter_stg3_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[6] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_5 ),
        .Q(counter_stg3_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[7] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_4 ),
        .Q(counter_stg3_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[8] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_7 ),
        .Q(counter_stg3_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[8]_i_1 
       (.CI(\counter_stg3_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED [3],\counter_stg3_reg[8]_i_1_n_1 ,\counter_stg3_reg[8]_i_1_n_2 ,\counter_stg3_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg3_reg[8]_i_1_n_4 ,\counter_stg3_reg[8]_i_1_n_5 ,\counter_stg3_reg[8]_i_1_n_6 ,\counter_stg3_reg[8]_i_1_n_7 }),
        .S(counter_stg3_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[9] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_6 ),
        .Q(counter_stg3_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    reset_i_1
       (.I0(reset_i_2_n_0),
        .I1(reset_i_3_n_0),
        .I2(reset_i_4_n_0),
        .I3(reset_i_5_n_0),
        .I4(reset_i_6_n_0),
        .I5(reset_i_7_n_0),
        .O(reset0));
  LUT3 #(
    .INIT(8'h7F)) 
    reset_i_2
       (.I0(counter_stg2_reg[3]),
        .I1(counter_stg2_reg[4]),
        .I2(counter_stg2_reg[8]),
        .O(reset_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reset_i_3
       (.I0(counter_stg3_reg[0]),
        .I1(counter_stg3_reg[8]),
        .I2(counter_stg2_reg[9]),
        .I3(counter_stg3_reg[10]),
        .O(reset_i_3_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    reset_i_4
       (.I0(counter_stg2_reg[7]),
        .I1(counter_stg2_reg[0]),
        .I2(counter_stg3_reg[6]),
        .I3(counter_stg3_reg[7]),
        .O(reset_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    reset_i_5
       (.I0(counter_stg2_reg[2]),
        .I1(counter_stg3_reg[2]),
        .I2(counter_stg3_reg[11]),
        .I3(counter_stg2_reg[5]),
        .O(reset_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    reset_i_6
       (.I0(counter_stg3_reg[4]),
        .I1(counter_stg3_reg[5]),
        .I2(counter_stg2_reg[6]),
        .I3(counter_stg3_reg[1]),
        .O(reset_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    reset_i_7
       (.I0(counter_stg2_reg[11]),
        .I1(counter_stg1_reg),
        .I2(counter_stg3_reg[9]),
        .I3(counter_stg2_reg[1]),
        .I4(counter_stg3_reg[3]),
        .I5(counter_stg2_reg[10]),
        .O(reset_i_7_n_0));
  FDRE reset_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset0),
        .Q(reset),
        .R(1'b0));
endmodule

module gig_ethernet_pcs_pma_sync_block
   (data_out,
    data_in,
    userclk2);
  output data_out;
  input data_in;
  input userclk2;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_0
   (resetdone,
    resetdone_0,
    data_in,
    userclk2);
  output resetdone;
  input resetdone_0;
  input data_in;
  input userclk2;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire resetdone;
  wire resetdone_0;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    resetdone_INST_0
       (.I0(data_out),
        .I1(resetdone_0),
        .O(resetdone));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_10
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_11
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_12
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_13
   (data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_14
   (E,
    D,
    reset_time_out_reg,
    \FSM_sequential_rx_state_reg[3] ,
    reset_time_out_reg_0,
    \FSM_sequential_rx_state_reg[1] ,
    Q,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    \FSM_sequential_rx_state_reg[0]_1 ,
    reset_time_out_reg_1,
    \FSM_sequential_rx_state_reg[0]_2 ,
    \FSM_sequential_rx_state_reg[0]_3 ,
    time_tlock_max,
    \FSM_sequential_rx_state_reg[1]_0 ,
    \FSM_sequential_rx_state_reg[3]_0 ,
    time_out_wait_bypass_s3,
    rx_fsm_reset_done_int_reg,
    mmcm_lock_reclocked,
    reset_time_out_reg_2,
    reset_time_out_reg_3,
    data_in,
    data_out,
    independent_clock_bufg);
  output [0:0]E;
  output [2:0]D;
  output reset_time_out_reg;
  output \FSM_sequential_rx_state_reg[3] ;
  input reset_time_out_reg_0;
  input \FSM_sequential_rx_state_reg[1] ;
  input [3:0]Q;
  input [0:0]\FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input reset_time_out_reg_1;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input time_tlock_max;
  input \FSM_sequential_rx_state_reg[1]_0 ;
  input \FSM_sequential_rx_state_reg[3]_0 ;
  input time_out_wait_bypass_s3;
  input rx_fsm_reset_done_int_reg;
  input mmcm_lock_reclocked;
  input reset_time_out_reg_2;
  input reset_time_out_reg_3;
  input data_in;
  input data_out;
  input independent_clock_bufg;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_5_n_0 ;
  wire [0:0]\FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire \FSM_sequential_rx_state_reg[1] ;
  wire \FSM_sequential_rx_state_reg[1]_0 ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire [3:0]Q;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_valid_sync;
  wire independent_clock_bufg;
  wire mmcm_lock_reclocked;
  wire reset_time_out_i_2__0_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire reset_time_out_reg_3;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_reg;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;

  LUT6 #(
    .INIT(64'hFFFFFFFFAABAAAAA)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[0]_2 ),
        .I1(Q[1]),
        .I2(\FSM_sequential_rx_state_reg[0]_3 ),
        .I3(reset_time_out_reg_0),
        .I4(time_tlock_max),
        .I5(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000034342434)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_sequential_rx_state_reg[1]_0 ),
        .I5(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(Q[3]),
        .I1(\FSM_sequential_rx_state_reg[1] ),
        .I2(reset_time_out_reg_0),
        .I3(data_valid_sync),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F2F0FFF0F2)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_sequential_rx_state_reg[0] ),
        .I2(\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(\FSM_sequential_rx_state_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFEF0CC00FEFFCC00)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(\FSM_sequential_rx_state[3]_i_5_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[3]_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(time_out_wait_bypass_s3),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(reset_time_out_i_2__0_n_0),
        .I1(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_rx_state_reg[0]_1 ),
        .I3(reset_time_out_reg_1),
        .I4(Q[0]),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(data_valid_sync),
        .I1(reset_time_out_reg_0),
        .I2(\FSM_sequential_rx_state_reg[1] ),
        .O(\FSM_sequential_rx_state[3]_i_5_n_0 ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_valid_sync),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out_i_2__0_n_0),
        .I1(reset_time_out_reg_2),
        .I2(reset_time_out_reg_1),
        .I3(reset_time_out_reg_3),
        .I4(reset_time_out_reg_0),
        .O(reset_time_out_reg));
  LUT5 #(
    .INIT(32'h33CF00A0)) 
    reset_time_out_i_2__0
       (.I0(mmcm_lock_reclocked),
        .I1(data_valid_sync),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(reset_time_out_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int),
        .I1(rx_fsm_reset_done_int_i_3_n_0),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(data_in),
        .O(\FSM_sequential_rx_state_reg[3] ));
  LUT5 #(
    .INIT(32'h00000400)) 
    rx_fsm_reset_done_int_i_2
       (.I0(reset_time_out_reg_0),
        .I1(rx_fsm_reset_done_int_reg),
        .I2(Q[0]),
        .I3(data_valid_sync),
        .I4(Q[2]),
        .O(rx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'h0C302C3C0C302C30)) 
    rx_fsm_reset_done_int_i_3
       (.I0(rx_fsm_reset_done_int_reg),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(data_valid_sync),
        .I4(reset_time_out_reg_0),
        .I5(\FSM_sequential_rx_state_reg[1] ),
        .O(rx_fsm_reset_done_int_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_15
   (SR,
    data_out,
    mmcm_locked,
    independent_clock_bufg);
  output [0:0]SR;
  output data_out;
  input mmcm_locked;
  input independent_clock_bufg;

  wire [0:0]SR;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_locked;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_locked),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(data_out),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_16
   (\FSM_sequential_rx_state_reg[1] ,
    Q,
    rxresetdone_s3,
    gt0_pll0lock_in,
    independent_clock_bufg);
  output \FSM_sequential_rx_state_reg[1] ;
  input [2:0]Q;
  input rxresetdone_s3;
  input gt0_pll0lock_in;
  input independent_clock_bufg;

  wire \FSM_sequential_rx_state_reg[1] ;
  wire [2:0]Q;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_pll0lock_in;
  wire independent_clock_bufg;
  wire pll0lock_sync;
  wire rxresetdone_s3;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_pll0lock_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(pll0lock_sync),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h008800F0)) 
    reset_time_out_i_4__0
       (.I0(Q[0]),
        .I1(rxresetdone_s3),
        .I2(pll0lock_sync),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\FSM_sequential_rx_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_17
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_18
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_19
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_3
   (data_out,
    status_vector,
    independent_clock_bufg);
  output data_out;
  input [0:0]status_vector;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire [0:0]status_vector;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(status_vector),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_6
   (data_out,
    data_in,
    gtrefclk_bufg);
  output data_out;
  input data_in;
  input gtrefclk_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gtrefclk_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_7
   (E,
    reset_time_out_reg,
    \FSM_sequential_tx_state_reg[0] ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[0]_1 ,
    \FSM_sequential_tx_state_reg[0]_2 ,
    \FSM_sequential_tx_state_reg[0]_3 ,
    Q,
    mmcm_lock_reclocked,
    \FSM_sequential_tx_state_reg[0]_4 ,
    \FSM_sequential_tx_state_reg[0]_5 ,
    reset_time_out_reg_0,
    \FSM_sequential_tx_state[3]_i_7_0 ,
    \FSM_sequential_tx_state[3]_i_7_1 ,
    reset_time_out_reg_1,
    reset_time_out,
    gt0_pll0lock_in,
    independent_clock_bufg);
  output [0:0]E;
  output reset_time_out_reg;
  input [0:0]\FSM_sequential_tx_state_reg[0] ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input \FSM_sequential_tx_state_reg[0]_2 ;
  input \FSM_sequential_tx_state_reg[0]_3 ;
  input [3:0]Q;
  input mmcm_lock_reclocked;
  input \FSM_sequential_tx_state_reg[0]_4 ;
  input \FSM_sequential_tx_state_reg[0]_5 ;
  input reset_time_out_reg_0;
  input \FSM_sequential_tx_state[3]_i_7_0 ;
  input \FSM_sequential_tx_state[3]_i_7_1 ;
  input reset_time_out_reg_1;
  input reset_time_out;
  input gt0_pll0lock_in;
  input independent_clock_bufg;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_1 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire [0:0]\FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[0]_2 ;
  wire \FSM_sequential_tx_state_reg[0]_3 ;
  wire \FSM_sequential_tx_state_reg[0]_4 ;
  wire \FSM_sequential_tx_state_reg[0]_5 ;
  wire [3:0]Q;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_pll0lock_in;
  wire independent_clock_bufg;
  wire mmcm_lock_reclocked;
  wire pll0lock_sync;
  wire reset_time_out;
  wire reset_time_out_i_3_n_0;
  wire reset_time_out_i_4_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF01)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state_reg[0] ),
        .I1(\FSM_sequential_tx_state_reg[0]_0 ),
        .I2(\FSM_sequential_tx_state_reg[0]_1 ),
        .I3(\FSM_sequential_tx_state_reg[0]_2 ),
        .I4(\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .I5(\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .O(E));
  LUT3 #(
    .INIT(8'hBF)) 
    \FSM_sequential_tx_state[3]_i_11 
       (.I0(pll0lock_sync),
        .I1(\FSM_sequential_tx_state[3]_i_7_0 ),
        .I2(\FSM_sequential_tx_state[3]_i_7_1 ),
        .O(\FSM_sequential_tx_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E000)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(pll0lock_sync),
        .I1(\FSM_sequential_tx_state_reg[0]_3 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000DD000F)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(\FSM_sequential_tx_state_reg[0]_4 ),
        .I1(mmcm_lock_reclocked),
        .I2(\FSM_sequential_tx_state[3]_i_11_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\FSM_sequential_tx_state_reg[0]_5 ),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_pll0lock_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(pll0lock_sync),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    reset_time_out_i_1
       (.I0(reset_time_out_reg_1),
        .I1(reset_time_out_i_3_n_0),
        .I2(reset_time_out_i_4_n_0),
        .I3(reset_time_out),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h004F000000440000)) 
    reset_time_out_i_3
       (.I0(Q[2]),
        .I1(pll0lock_sync),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(mmcm_lock_reclocked),
        .O(reset_time_out_i_3_n_0));
  LUT6 #(
    .INIT(64'h0C0C08FF0C0C08FC)) 
    reset_time_out_i_4
       (.I0(pll0lock_sync),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(reset_time_out_reg_0),
        .O(reset_time_out_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_8
   (data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_sync_block" *) 
module gig_ethernet_pcs_pma_sync_block_9
   (SR,
    data_out,
    mmcm_locked,
    independent_clock_bufg);
  output [0:0]SR;
  output data_out;
  input mmcm_locked;
  input independent_clock_bufg;

  wire [0:0]SR;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_locked;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_locked),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(data_out),
        .O(SR));
endmodule

module gig_ethernet_pcs_pma_transceiver
   (gt0_pll0reset_out,
    txn,
    txp,
    rxoutclk,
    txoutclk,
    data_in,
    rx_fsm_reset_done_int_reg,
    rxchariscomma,
    rxcharisk,
    Q,
    \rxdata_reg[7]_0 ,
    rxdisperr,
    rxnotintable,
    rxbuferr,
    txbuferr,
    mmcm_reset,
    status_vector,
    independent_clock_bufg,
    userclk2,
    enablealign,
    SR,
    reset_sync5,
    gtrefclk_bufg,
    rxn,
    rxp,
    gt0_pll0outclk_in,
    gt0_pll0outrefclk_in,
    gt0_pll1outclk_in,
    gt0_pll1outrefclk_in,
    userclk,
    mmcm_locked,
    gt0_pll0lock_in,
    pma_reset,
    powerdown,
    D,
    txchardispmode_reg_reg_0,
    txchardispval_reg_reg_0,
    txcharisk_reg_reg_0,
    gt0_pll0refclklost_in);
  output gt0_pll0reset_out;
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  output rxchariscomma;
  output rxcharisk;
  output [1:0]Q;
  output [7:0]\rxdata_reg[7]_0 ;
  output rxdisperr;
  output rxnotintable;
  output rxbuferr;
  output txbuferr;
  output mmcm_reset;
  input [0:0]status_vector;
  input independent_clock_bufg;
  input userclk2;
  input enablealign;
  input [0:0]SR;
  input [0:0]reset_sync5;
  input gtrefclk_bufg;
  input rxn;
  input rxp;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input userclk;
  input mmcm_locked;
  input gt0_pll0lock_in;
  input pma_reset;
  input powerdown;
  input [7:0]D;
  input [0:0]txchardispmode_reg_reg_0;
  input [0:0]txchardispval_reg_reg_0;
  input [0:0]txcharisk_reg_reg_0;
  input gt0_pll0refclklost_in;

  wire [7:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire data_in;
  wire data_valid_reg2;
  wire enablealign;
  wire encommaalign_int;
  wire gt0_pll0lock_in;
  wire gt0_pll0outclk_in;
  wire gt0_pll0outrefclk_in;
  wire gt0_pll0refclklost_in;
  wire gt0_pll0reset_out;
  wire gt0_pll1outclk_in;
  wire gt0_pll1outrefclk_in;
  wire gtrefclk_bufg;
  wire gtwizard_inst_n_6;
  wire gtwizard_inst_n_7;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire mmcm_reset;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire [0:0]p_1_in__0;
  wire [0:0]p_1_in__1;
  wire [0:0]p_1_in__2;
  wire pma_reset;
  wire powerdown;
  wire reset;
  wire [0:0]reset_sync5;
  wire rx_fsm_reset_done_int_reg;
  wire rxbuferr;
  wire rxchariscomma;
  wire [1:0]rxchariscomma_double;
  wire rxchariscomma_i_1_n_0;
  wire [1:0]rxchariscomma_int;
  wire [1:0]rxchariscomma_reg__0;
  wire rxcharisk;
  wire [1:0]rxcharisk_double;
  wire rxcharisk_i_1_n_0;
  wire [1:0]rxcharisk_int;
  wire [1:0]rxcharisk_reg__0;
  wire [1:0]rxclkcorcnt_double;
  wire [1:0]rxclkcorcnt_int;
  wire [1:0]rxclkcorcnt_reg;
  wire \rxdata[0]_i_1_n_0 ;
  wire \rxdata[1]_i_1_n_0 ;
  wire \rxdata[2]_i_1_n_0 ;
  wire \rxdata[3]_i_1_n_0 ;
  wire \rxdata[4]_i_1_n_0 ;
  wire \rxdata[5]_i_1_n_0 ;
  wire \rxdata[6]_i_1_n_0 ;
  wire \rxdata[7]_i_1_n_0 ;
  wire [15:0]rxdata_double;
  wire [15:0]rxdata_int;
  wire [15:0]rxdata_reg;
  wire [7:0]\rxdata_reg[7]_0 ;
  wire rxdisperr;
  wire [1:0]rxdisperr_double;
  wire rxdisperr_i_1_n_0;
  wire [1:0]rxdisperr_int;
  wire [1:0]rxdisperr_reg__0;
  wire rxn;
  wire rxnotintable;
  wire [1:0]rxnotintable_double;
  wire rxnotintable_i_1_n_0;
  wire [1:0]rxnotintable_int;
  wire [1:0]rxnotintable_reg__0;
  wire rxoutclk;
  wire rxp;
  wire rxpowerdown;
  wire rxpowerdown_double;
  wire rxpowerdown_reg__0;
  wire rxreset_int;
  wire [0:0]status_vector;
  wire toggle;
  wire toggle_i_1_n_0;
  wire txbuferr;
  wire [1:1]txbufstatus_reg;
  wire [1:0]txchardispmode_double;
  wire [1:0]txchardispmode_int;
  wire [0:0]txchardispmode_reg_reg_0;
  wire [1:0]txchardispval_double;
  wire [1:0]txchardispval_int;
  wire [0:0]txchardispval_reg_reg_0;
  wire [1:0]txcharisk_double;
  wire [1:0]txcharisk_int;
  wire [0:0]txcharisk_reg_reg_0;
  wire [15:0]txdata_double;
  wire [15:0]txdata_int;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txpowerdown;
  wire txpowerdown_double;
  wire txpowerdown_reg__0;
  wire txreset_int;
  wire userclk;
  wire userclk2;

  gig_ethernet_pcs_pma_GTWIZARD gtwizard_inst
       (.D(rxclkcorcnt_int),
        .PLL0_RESET_reg(gt0_pll0reset_out),
        .Q(txdata_int),
        .RXBUFSTATUS(gtwizard_inst_n_7),
        .RXPD(rxpowerdown),
        .TXBUFSTATUS(gtwizard_inst_n_6),
        .TXPD(txpowerdown),
        .data_in(data_in),
        .data_out(data_valid_reg2),
        .gt0_gtrxreset_gt_d1_reg(rxreset_int),
        .gt0_pll0lock_in(gt0_pll0lock_in),
        .gt0_pll0outclk_in(gt0_pll0outclk_in),
        .gt0_pll0outrefclk_in(gt0_pll0outrefclk_in),
        .gt0_pll0refclklost_in(gt0_pll0refclklost_in),
        .gt0_pll1outclk_in(gt0_pll1outclk_in),
        .gt0_pll1outrefclk_in(gt0_pll1outrefclk_in),
        .gtpe2_i(rxdata_int),
        .gtpe2_i_0(rxchariscomma_int),
        .gtpe2_i_1(rxcharisk_int),
        .gtpe2_i_2(rxdisperr_int),
        .gtpe2_i_3(rxnotintable_int),
        .gtpe2_i_4(txchardispmode_int),
        .gtpe2_i_5(txchardispval_int),
        .gtpe2_i_6(txcharisk_int),
        .gtpe2_i_7(txreset_int),
        .gtrefclk_bufg(gtrefclk_bufg),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset(mmcm_reset),
        .pma_reset(pma_reset),
        .reset(reset),
        .reset_out(encommaalign_int),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk));
  gig_ethernet_pcs_pma_reset_sync reclock_encommaalign
       (.enablealign(enablealign),
        .reset_out(encommaalign_int),
        .userclk2(userclk2));
  gig_ethernet_pcs_pma_reset_sync_1 reclock_rxreset
       (.independent_clock_bufg(independent_clock_bufg),
        .reset_out(rxreset_int),
        .reset_sync5_0(reset_sync5));
  gig_ethernet_pcs_pma_reset_sync_2 reclock_txreset
       (.SR(SR),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_out(txreset_int));
  gig_ethernet_pcs_pma_reset_wtd_timer reset_wtd_timer
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset));
  FDRE rxbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rxbuferr),
        .R(1'b0));
  FDRE \rxbufstatus_reg_reg[2] 
       (.C(userclk),
        .CE(1'b1),
        .D(gtwizard_inst_n_7),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \rxchariscomma_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxchariscomma_reg__0[0]),
        .Q(rxchariscomma_double[0]),
        .R(reset_sync5));
  FDRE \rxchariscomma_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxchariscomma_reg__0[1]),
        .Q(rxchariscomma_double[1]),
        .R(reset_sync5));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxchariscomma_i_1
       (.I0(rxchariscomma_double[1]),
        .I1(toggle),
        .I2(rxchariscomma_double[0]),
        .O(rxchariscomma_i_1_n_0));
  FDRE rxchariscomma_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxchariscomma_i_1_n_0),
        .Q(rxchariscomma),
        .R(reset_sync5));
  FDRE \rxchariscomma_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxchariscomma_int[0]),
        .Q(rxchariscomma_reg__0[0]),
        .R(1'b0));
  FDRE \rxchariscomma_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxchariscomma_int[1]),
        .Q(rxchariscomma_reg__0[1]),
        .R(1'b0));
  FDRE \rxcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxcharisk_reg__0[0]),
        .Q(rxcharisk_double[0]),
        .R(reset_sync5));
  FDRE \rxcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxcharisk_reg__0[1]),
        .Q(rxcharisk_double[1]),
        .R(reset_sync5));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxcharisk_i_1
       (.I0(rxcharisk_double[1]),
        .I1(toggle),
        .I2(rxcharisk_double[0]),
        .O(rxcharisk_i_1_n_0));
  FDRE rxcharisk_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxcharisk_i_1_n_0),
        .Q(rxcharisk),
        .R(reset_sync5));
  FDRE \rxcharisk_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxcharisk_int[0]),
        .Q(rxcharisk_reg__0[0]),
        .R(1'b0));
  FDRE \rxcharisk_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxcharisk_int[1]),
        .Q(rxcharisk_reg__0[1]),
        .R(1'b0));
  FDRE \rxclkcorcnt_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxclkcorcnt_reg[0]),
        .Q(rxclkcorcnt_double[0]),
        .R(reset_sync5));
  FDRE \rxclkcorcnt_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxclkcorcnt_reg[1]),
        .Q(rxclkcorcnt_double[1]),
        .R(reset_sync5));
  FDRE \rxclkcorcnt_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt_double[0]),
        .Q(Q[0]),
        .R(reset_sync5));
  FDRE \rxclkcorcnt_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt_double[1]),
        .Q(Q[1]),
        .R(reset_sync5));
  FDRE \rxclkcorcnt_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxclkcorcnt_int[0]),
        .Q(rxclkcorcnt_reg[0]),
        .R(1'b0));
  FDRE \rxclkcorcnt_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxclkcorcnt_int[1]),
        .Q(rxclkcorcnt_reg[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[0]_i_1 
       (.I0(rxdata_double[8]),
        .I1(toggle),
        .I2(rxdata_double[0]),
        .O(\rxdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[1]_i_1 
       (.I0(rxdata_double[9]),
        .I1(toggle),
        .I2(rxdata_double[1]),
        .O(\rxdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[2]_i_1 
       (.I0(rxdata_double[10]),
        .I1(toggle),
        .I2(rxdata_double[2]),
        .O(\rxdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[3]_i_1 
       (.I0(rxdata_double[11]),
        .I1(toggle),
        .I2(rxdata_double[3]),
        .O(\rxdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[4]_i_1 
       (.I0(rxdata_double[12]),
        .I1(toggle),
        .I2(rxdata_double[4]),
        .O(\rxdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[5]_i_1 
       (.I0(rxdata_double[13]),
        .I1(toggle),
        .I2(rxdata_double[5]),
        .O(\rxdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[6]_i_1 
       (.I0(rxdata_double[14]),
        .I1(toggle),
        .I2(rxdata_double[6]),
        .O(\rxdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[7]_i_1 
       (.I0(rxdata_double[15]),
        .I1(toggle),
        .I2(rxdata_double[7]),
        .O(\rxdata[7]_i_1_n_0 ));
  FDRE \rxdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[0]),
        .Q(rxdata_double[0]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[10]),
        .Q(rxdata_double[10]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[11]),
        .Q(rxdata_double[11]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[12]),
        .Q(rxdata_double[12]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[13]),
        .Q(rxdata_double[13]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[14]),
        .Q(rxdata_double[14]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[15]),
        .Q(rxdata_double[15]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[1]),
        .Q(rxdata_double[1]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[2]),
        .Q(rxdata_double[2]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[3]),
        .Q(rxdata_double[3]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[4]),
        .Q(rxdata_double[4]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[5]),
        .Q(rxdata_double[5]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[6]),
        .Q(rxdata_double[6]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[7]),
        .Q(rxdata_double[7]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[8]),
        .Q(rxdata_double[8]),
        .R(reset_sync5));
  FDRE \rxdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[9]),
        .Q(rxdata_double[9]),
        .R(reset_sync5));
  FDRE \rxdata_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[0]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [0]),
        .R(reset_sync5));
  FDRE \rxdata_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[1]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [1]),
        .R(reset_sync5));
  FDRE \rxdata_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[2]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [2]),
        .R(reset_sync5));
  FDRE \rxdata_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[3]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [3]),
        .R(reset_sync5));
  FDRE \rxdata_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[4]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [4]),
        .R(reset_sync5));
  FDRE \rxdata_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[5]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [5]),
        .R(reset_sync5));
  FDRE \rxdata_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[6]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [6]),
        .R(reset_sync5));
  FDRE \rxdata_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[7]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [7]),
        .R(reset_sync5));
  FDRE \rxdata_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[0]),
        .Q(rxdata_reg[0]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[10] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[10]),
        .Q(rxdata_reg[10]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[11] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[11]),
        .Q(rxdata_reg[11]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[12] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[12]),
        .Q(rxdata_reg[12]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[13] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[13]),
        .Q(rxdata_reg[13]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[14] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[14]),
        .Q(rxdata_reg[14]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[15] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[15]),
        .Q(rxdata_reg[15]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[1]),
        .Q(rxdata_reg[1]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[2] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[2]),
        .Q(rxdata_reg[2]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[3] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[3]),
        .Q(rxdata_reg[3]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[4] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[4]),
        .Q(rxdata_reg[4]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[5] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[5]),
        .Q(rxdata_reg[5]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[6] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[6]),
        .Q(rxdata_reg[6]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[7] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[7]),
        .Q(rxdata_reg[7]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[8] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[8]),
        .Q(rxdata_reg[8]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[9] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdata_int[9]),
        .Q(rxdata_reg[9]),
        .R(1'b0));
  FDRE \rxdisperr_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdisperr_reg__0[0]),
        .Q(rxdisperr_double[0]),
        .R(reset_sync5));
  FDRE \rxdisperr_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdisperr_reg__0[1]),
        .Q(rxdisperr_double[1]),
        .R(reset_sync5));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxdisperr_i_1
       (.I0(rxdisperr_double[1]),
        .I1(toggle),
        .I2(rxdisperr_double[0]),
        .O(rxdisperr_i_1_n_0));
  FDRE rxdisperr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxdisperr_i_1_n_0),
        .Q(rxdisperr),
        .R(reset_sync5));
  FDRE \rxdisperr_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdisperr_int[0]),
        .Q(rxdisperr_reg__0[0]),
        .R(1'b0));
  FDRE \rxdisperr_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxdisperr_int[1]),
        .Q(rxdisperr_reg__0[1]),
        .R(1'b0));
  FDRE \rxnotintable_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxnotintable_reg__0[0]),
        .Q(rxnotintable_double[0]),
        .R(reset_sync5));
  FDRE \rxnotintable_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxnotintable_reg__0[1]),
        .Q(rxnotintable_double[1]),
        .R(reset_sync5));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxnotintable_i_1
       (.I0(rxnotintable_double[1]),
        .I1(toggle),
        .I2(rxnotintable_double[0]),
        .O(rxnotintable_i_1_n_0));
  FDRE rxnotintable_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxnotintable_i_1_n_0),
        .Q(rxnotintable),
        .R(reset_sync5));
  FDRE \rxnotintable_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxnotintable_int[0]),
        .Q(rxnotintable_reg__0[0]),
        .R(1'b0));
  FDRE \rxnotintable_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(rxnotintable_int[1]),
        .Q(rxnotintable_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_double_reg
       (.C(userclk2),
        .CE(toggle),
        .D(rxpowerdown_reg__0),
        .Q(rxpowerdown_double),
        .R(reset_sync5));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg
       (.C(userclk),
        .CE(1'b1),
        .D(rxpowerdown_double),
        .Q(rxpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(rxpowerdown_reg__0),
        .R(reset_sync5));
  gig_ethernet_pcs_pma_sync_block_3 sync_block_data_valid
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .status_vector(status_vector));
  LUT1 #(
    .INIT(2'h1)) 
    toggle_i_1
       (.I0(toggle),
        .O(toggle_i_1_n_0));
  FDRE toggle_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(toggle_i_1_n_0),
        .Q(toggle),
        .R(SR));
  FDRE txbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txbufstatus_reg),
        .Q(txbuferr),
        .R(1'b0));
  FDRE \txbufstatus_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(gtwizard_inst_n_6),
        .Q(txbufstatus_reg),
        .R(1'b0));
  FDRE \txchardispmode_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in__0),
        .Q(txchardispmode_double[0]),
        .R(SR));
  FDRE \txchardispmode_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispmode_reg_reg_0),
        .Q(txchardispmode_double[1]),
        .R(SR));
  FDRE \txchardispmode_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispmode_double[0]),
        .Q(txchardispmode_int[0]),
        .R(1'b0));
  FDRE \txchardispmode_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispmode_double[1]),
        .Q(txchardispmode_int[1]),
        .R(1'b0));
  FDRE txchardispmode_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txchardispmode_reg_reg_0),
        .Q(p_1_in__0),
        .R(SR));
  FDRE \txchardispval_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in__1),
        .Q(txchardispval_double[0]),
        .R(SR));
  FDRE \txchardispval_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg_reg_0),
        .Q(txchardispval_double[1]),
        .R(SR));
  FDRE \txchardispval_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispval_double[0]),
        .Q(txchardispval_int[0]),
        .R(1'b0));
  FDRE \txchardispval_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispval_double[1]),
        .Q(txchardispval_int[1]),
        .R(1'b0));
  FDRE txchardispval_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txchardispval_reg_reg_0),
        .Q(p_1_in__1),
        .R(SR));
  FDRE \txcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in__2),
        .Q(txcharisk_double[0]),
        .R(SR));
  FDRE \txcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_double[1]),
        .R(SR));
  FDRE \txcharisk_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txcharisk_double[0]),
        .Q(txcharisk_int[0]),
        .R(1'b0));
  FDRE \txcharisk_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txcharisk_double[1]),
        .Q(txcharisk_int[1]),
        .R(1'b0));
  FDRE txcharisk_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txcharisk_reg_reg_0),
        .Q(p_1_in__2),
        .R(SR));
  FDRE \txdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[0]),
        .Q(txdata_double[0]),
        .R(SR));
  FDRE \txdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[2]),
        .Q(txdata_double[10]),
        .R(SR));
  FDRE \txdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[3]),
        .Q(txdata_double[11]),
        .R(SR));
  FDRE \txdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[4]),
        .Q(txdata_double[12]),
        .R(SR));
  FDRE \txdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[5]),
        .Q(txdata_double[13]),
        .R(SR));
  FDRE \txdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[6]),
        .Q(txdata_double[14]),
        .R(SR));
  FDRE \txdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[7]),
        .Q(txdata_double[15]),
        .R(SR));
  FDRE \txdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[1]),
        .Q(txdata_double[1]),
        .R(SR));
  FDRE \txdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[2]),
        .Q(txdata_double[2]),
        .R(SR));
  FDRE \txdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[3]),
        .Q(txdata_double[3]),
        .R(SR));
  FDRE \txdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[4]),
        .Q(txdata_double[4]),
        .R(SR));
  FDRE \txdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[5]),
        .Q(txdata_double[5]),
        .R(SR));
  FDRE \txdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[6]),
        .Q(txdata_double[6]),
        .R(SR));
  FDRE \txdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(p_1_in[7]),
        .Q(txdata_double[7]),
        .R(SR));
  FDRE \txdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[0]),
        .Q(txdata_double[8]),
        .R(SR));
  FDRE \txdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D[1]),
        .Q(txdata_double[9]),
        .R(SR));
  FDRE \txdata_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[0]),
        .Q(txdata_int[0]),
        .R(1'b0));
  FDRE \txdata_int_reg[10] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[10]),
        .Q(txdata_int[10]),
        .R(1'b0));
  FDRE \txdata_int_reg[11] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[11]),
        .Q(txdata_int[11]),
        .R(1'b0));
  FDRE \txdata_int_reg[12] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[12]),
        .Q(txdata_int[12]),
        .R(1'b0));
  FDRE \txdata_int_reg[13] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[13]),
        .Q(txdata_int[13]),
        .R(1'b0));
  FDRE \txdata_int_reg[14] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[14]),
        .Q(txdata_int[14]),
        .R(1'b0));
  FDRE \txdata_int_reg[15] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[15]),
        .Q(txdata_int[15]),
        .R(1'b0));
  FDRE \txdata_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[1]),
        .Q(txdata_int[1]),
        .R(1'b0));
  FDRE \txdata_int_reg[2] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[2]),
        .Q(txdata_int[2]),
        .R(1'b0));
  FDRE \txdata_int_reg[3] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[3]),
        .Q(txdata_int[3]),
        .R(1'b0));
  FDRE \txdata_int_reg[4] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[4]),
        .Q(txdata_int[4]),
        .R(1'b0));
  FDRE \txdata_int_reg[5] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[5]),
        .Q(txdata_int[5]),
        .R(1'b0));
  FDRE \txdata_int_reg[6] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[6]),
        .Q(txdata_int[6]),
        .R(1'b0));
  FDRE \txdata_int_reg[7] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[7]),
        .Q(txdata_int[7]),
        .R(1'b0));
  FDRE \txdata_int_reg[8] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[8]),
        .Q(txdata_int[8]),
        .R(1'b0));
  FDRE \txdata_int_reg[9] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[9]),
        .Q(txdata_int[9]),
        .R(1'b0));
  FDRE \txdata_reg_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[0]),
        .Q(p_1_in[0]),
        .R(SR));
  FDRE \txdata_reg_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[1]),
        .Q(p_1_in[1]),
        .R(SR));
  FDRE \txdata_reg_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[2]),
        .Q(p_1_in[2]),
        .R(SR));
  FDRE \txdata_reg_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[3]),
        .Q(p_1_in[3]),
        .R(SR));
  FDRE \txdata_reg_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[4]),
        .Q(p_1_in[4]),
        .R(SR));
  FDRE \txdata_reg_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[5]),
        .Q(p_1_in[5]),
        .R(SR));
  FDRE \txdata_reg_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[6]),
        .Q(p_1_in[6]),
        .R(SR));
  FDRE \txdata_reg_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(D[7]),
        .Q(p_1_in[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_double_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txpowerdown_reg__0),
        .Q(txpowerdown_double),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg
       (.C(userclk),
        .CE(1'b1),
        .D(txpowerdown_double),
        .Q(txpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(txpowerdown_reg__0),
        .R(SR));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KYJWzR4vcKBSZu8Xwex/6tmg53LVElcHlSQriBXJNPcz87+7TONysl4izxwXP9yEvug1aeLMuJV9
QpCnAYHZHXfLsNRjUCmA+BPVRelbdqqB52e3uXeIusRdKf9bJK4vTbT3G0lEoFHH5X7C9bSLI4YT
sZUjuHirRGeJHd/b3e0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yo2V0dC7eF/FmwCqmZxlpuXtmB0HywmWLHJT2jcPSMAC1OXxijmfEbvJ+5lPdLPxXgr9jwwXxwMr
v6iklkYNq+D0goSg8ugfBWwguc77JQVz+jMEKP5qhn7Ri+tKZ00wMjngOlr69eLBesdgH5S7cB58
MceEDf75gNDYQTVzBMlKHcS2mYGmDQkhlgD+FDqOy0bnjw5cKAR61rsdl0A5rMVryGdDWCMhdTU1
ZF8hcDIYUHZBc1Rt5KmxBFRnumpyZkvST8/JckJYBT4n5h8I+vWWI5/wUepjQAwCpQDRQx1ya6wF
c65P3BGTHHaZgJ18lQGc+LhcI9bXwV/MpMi4vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FMyPG7pILxysnSMbT2vgWSttyZukEuB9wb0W6Enmto1g4p73zQOy/y6J4k8CeKOmBonMsMxgR96B
7ymzkfztYO6rjGzDtyLRZci3g/2lEhq7hFZJpTsqrjCfl6rJRxYEFWRru2wNunKSy8gmBjTS/oYO
W2Fyj3KEM9HxqjqZyog=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iv7mhm24oKZE/f/TTAt2P/10rXi8j8ceh05JuZQyLJt6z2wemUiiehGVSeIEc+J/5A8Ky+p5jZlR
zcDz/M6c20lBgNhKjU5Y5/MHKgHsXLEYT6mdLioI9YMqgbzgxL4Wl5NSDSxpPVJXa6dKPuX6edQ+
O9X4vUbFWfAhQRmpfaMfpkrepNBfrxu83VYFIDBh9Oojikqnqx0cHXIwFJoUpIHHG4CxxVcaEr6Z
ckCcd8GW/diuMXklBhICPDSmVB8npY6equ70WXNvlpGqCwoAjF+X+W+fUFLKSuFq9RhGZ5fZpSUd
SuqmoFu4K0kSHyOI0uGqPxSbF4IXp1jtRXncIw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G1Dg5WUJaLlOLKvgoRqVkbfWuFm3+8fXpsCVayvBniajy/El8hUFZpcvlPgh+rWnnYMXGY1+dgcv
tDit+krZVNCgFHV62uCLpEWe2SLCJrR+6CKtb1o7z3H46ojm1rD3p8jitykUqmFj/lWwZwCa4lim
i6Pb1Xa2ZSoV3OD/bC+nQ5fvju/wDCxruGqzxHiUM2N1jb5uZk4YmAdOZyHHdgs0GdFQhuc7ZrW1
gZo5cJKb8Km1Wd8ARflhofc0R7eS2WmC87uF4r0un9/OaTBgYqsqLOpX5bnGEEge+qTEKWDyL4h8
Ume5IveElh7cPp3ShEIH/D4P5T//a6ibft2Ehw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g5+VIKoLaErnfHgoHvjVbfqwQzBWMaP4R2LjkVr68qIXmeoeDhzRRLQ4wlH2S/rFzovDzSTBGdIH
oYYiMg609yl+k/B0IljBcarVRsDmlnXA7zxLHWEVsbDmINIsmSgfnKupCURx4WTMiTEEnzpFOgSG
FNO38PbbriYMLv1VGWMjraOnk5lpxKjghmEvEUYWdOVXtm35Hrwap5YAyCOqPfL4p2v1H2kOgkPc
Vzn++2QRO74wFlIWhRH7Sd/lyg0d/qv8cKPWbGlk4FtIBDWRpbH4IRSA97sUSTUS667ZXQ10dti3
LWf7wAVnNVkHNDGi5ztKc3PoV7Bz/abjdFbXkQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dqvjRf66eFgeN/Z8ybsPcYyyIE05+qB7A909cHStC2BZH94z9sKHr0fQY+x+VvxYGTniR1aGjPx0
53ONyQQVvubqZtHZYB2iWA6RzLHFnzu1fS2eVpSg3lf815QAPoyC1mqE9mV9uFW9XFNDA4sTGbsE
Mm0X/palJ2COd2driADaaF01JZ04gAffkGtpLrHWtH/LHgHRjXt6AyI5/CdmubuRcdM1FUvp/aec
tl/Keptqbs1dnnUMqMTDG7zPcKewV3+EukMtVuc2RguUzNM9zom97XVDLrwA52GD2wn6OgEjqW/v
WrDNmT+/pCGVhQbbEbc+krAFY12VnOMEQVU1SQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vt6GqHaOeiXWiOhNHC/zgACS4w7PkN49ZzDNMk5JhLGd7+8h4IyHdcFgaF/HLlCR/eReBugWAosy
AaMap069hD7E94rLEU7fFxdbkZYD6qLfs9Gu+ij9YllluEaMg4o+AqGHNNeYYWvs2nl4L5laUAfa
rYPwqHTRWLtqj1pmCtIp/YNnRATHP7qibNftjKYmVOdFpGM9mVr48pZYhbHe9OJtqKtLbzRIJrIn
XvtuJdPHttlExSyMmORUbaLYh5oiwdUbKKxCiAfz1mHaxpbH7EQEjplH6DVHCR0wl4UUpLpS4XqY
m2xvNOHiblEfeMbqSa6geR72WnSxMQyg3r+EDmXpy6WQLES2V1n7H/8kkv6d64A3A6sCbo65No25
Wvo8CYTCnPsHPuPOj79pIFf7guIv0k5LashTfHLLIR5JkLQKHAYzeu7qwv4NIUhIsngmILHqlN57
g42UvS9VND0MpaQoTa73SKy0/uXKITax5YnsQT6gB9Zuh4v93mQiuwse

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OYMs23XUcbQ/M2VNEw2Xoqu7rprn0Zo52KrgROUZzOWxj2vqiE8/ZJRGyB640nrUUC48KRLpb0um
E7OYiTf+sF8tYI49vr5OGew9/TE/Sv8rMLuAP9LLfXxqGyylb9KuDHYuzHEHi31oLMR7ew+Ki243
py8iOp9Ucpu7AaeoqYLp4bTRee7GH4YKqWARaTtjbQtBGhsk8oL2ZfgW1eR6HGkMrRekYlvvymo6
tgV2IVO0xrmS/XBmTYaV4/LYaZVOn0Tydjcx+A1ERtrPrvPIn3HSuREXxKrg7P0B+4lmpJlTBOSW
Pgun3bqS7nhgp22NV4RNku457E5J0aTZylZ2wg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KnsZLKALDWqncIJgzAKfboAuo1VaWQUcXKcdRXyL4Ex6lEqsmmKTvxZ6EfVlq4HiuTHkw5MX+NK3
1g2d9wfipvhz8BH563axa8qzO9xe2utPb9F2ISfN1Ds/KOGS9CrQOp3fWf3Y+gk1h1XF/G+BeUAd
v+eyBhX4zlryy63IOrd6NXvYMXdZijqYhV0BlhV3rj6h7oLGezgoNXJZmXnX5xTnIKcQdZouA88t
q/0lfTuWkYlGmOlNEYGIHNrd8AGkElTrxjKoRYVp71MYrclJ7UA0LgOLL9ClcDM7WM6zrXFsmPdL
31jIWwy/HWrK4DuuyP/SScJg8qoy5TJLTbbvew==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e6JH08Az14VwmgDMM6NOUSh9Oz7q+rduGKFU5Jb8XZOaLO8kMDmApqoiHHUZcoKttzzKMBTFVbns
ACZQBPxPvUO8eIA9UpHKrHjydiosMrG4UheuLv4ocQY+xjVga6bwymdKcX29JCXvl3Y0e66unMl2
m6p9QvQVNUvDPFde0n8uMKr7vTUEe30tITbHs9xHBQFlARKj7GCj5g7KKJHY64BjBjObX8NWO+we
GuhjRWN/wtE1u/CGXwx6E+J8USIu+2ydw3NCPMWN9r1XR6ivKEZJQX/qS1veF16Mpnl+VaU7q5R9
fAvl220pPNb9Li/+/Q9p1PLYcagpeKsg+lo36g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 194704)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
