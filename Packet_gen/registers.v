///////////////////////////////////////////////////////////////////////////////
//
// Module: registers.v
// Project: Packet Generator (packet_generator)
// Description: Project specific register defines
//
//              Packet Generator that replays PCAP files
//
///////////////////////////////////////////////////////////////////////////////

// -------------------------------------
//   Version Information
// -------------------------------------

`define DEVICE_ID          101
`define DEVICE_MAJOR       1
`define DEVICE_MINOR       1
`define DEVICE_REVISION    1
`define DEVICE_PROJ_DIR    "Testing NS"
`define DEVICE_PROJ_NAME   "Testing NS"
`define DEVICE_PROJ_DESC   "Testing NS"


// -------------------------------------
//   Constants
// -------------------------------------

// ===== File: lib/verilog/core/common/xml/global.xml =====

// Maximum number of phy ports
`define MAX_PHY_PORTS                         4

// PCI address bus width
`define PCI_ADDR_WIDTH                        32

// PCI data bus width
`define PCI_DATA_WIDTH                        32

// PCI byte enable bus width
`define PCI_BE_WIDTH                          4

// CPCI--CNET address bus width. This is byte addresses even though bottom bits are zero.
`define CPCI_CNET_ADDR_WIDTH                  27

// CPCI--CNET data bus width
`define CPCI_CNET_DATA_WIDTH                  32

// CPCI--Virtex address bus width. This is byte addresses even though bottom bits are zero.
`define CPCI_NF2_ADDR_WIDTH                   27

// CPCI--Virtex data bus width
`define CPCI_NF2_DATA_WIDTH                   32

// DMA data bus width
`define DMA_DATA_WIDTH                        32

// DMA control bus width
`define DMA_CTRL_WIDTH                        4

// CPCI debug bus width
`define CPCI_DEBUG_DATA_WIDTH                 29

// SRAM address width
`define SRAM_ADDR_WIDTH                       19

// SRAM data width
`define SRAM_DATA_WIDTH                       36

// DRAM address width
`define DRAM_ADDR_WIDTH                       24


// ===== File: lib/verilog/core/common/xml/nf_defines.xml =====

// Clock period of 125 MHz clock in ns
`define FAST_CLK_PERIOD                       8

// Clock period of 62.5 MHz clock in ns
`define SLOW_CLK_PERIOD                       16

// Header value used by the IO queues
`define IO_QUEUE_STAGE_NUM                    8'hff

// Data path data width
`define DATA_WIDTH                            64

// Data path control width
`define CTRL_WIDTH                            8


// ===== File: projects/packet_generator/include/sram_rr_output_queues.xml =====

`define NUM_OUTPUT_QUEUES                     12

`define OQ_DEFAULT_MAX_PKTS                   19'h7ffff

`define OQ_SRAM_PKT_CNT_WIDTH                 19

`define OQ_SRAM_WORD_CNT_WIDTH                19

`define OQ_SRAM_BYTE_CNT_WIDTH                19

`define OQ_ENABLE_SEND_BIT_NUM                0

`define OQ_INITIALIZE_OQ_BIT_NUM              1

`define OQ_PKT_GEN_ITER_WIDTH                 32


// ===== File: projects/packet_generator/include/rate_limiter.xml =====

// enable bit num
`define RATE_LIMIT_ENABLE_BIT_NUM             0

// overhead bit num
`define RATE_LIMIT_INCLUDE_OVERHEAD_BIT_NUM   1


// ===== File: lib/verilog/core/utils/xml/device_id_reg.xml =====

// Total number of registers
`define DEV_ID_NUM_REGS                       64

// Number of non string registers
`define DEV_ID_NON_STR_REGS                   7

// Length of MD5 sum (bits)
`define DEV_ID_MD5SUM_LENGTH                  128

// Project directory length (in words, not chars)
`define DEV_ID_PROJ_DIR_WORD_LEN              16

// Project directory length (in bytes/chars)
`define DEV_ID_PROJ_DIR_BYTE_LEN              64

// Project directory length (in bits)
`define DEV_ID_PROJ_DIR_BIT_LEN               512

// Project name length (in words, not chars)
`define DEV_ID_PROJ_NAME_WORD_LEN             16

// Project name length (in bytes/chars)
`define DEV_ID_PROJ_NAME_BYTE_LEN             64

// Project name length (in bits)
`define DEV_ID_PROJ_NAME_BIT_LEN              512

// Device description length (in words, not chars)
`define DEV_ID_PROJ_DESC_WORD_LEN             25

// Device description length (in bytes/chars)
`define DEV_ID_PROJ_DESC_BYTE_LEN             100

// Device description length (in bits)
`define DEV_ID_PROJ_DESC_BIT_LEN              800

// MD5 identifier (v1): MD5 sum of the string "device_id.v"
`define DEV_ID_MD5_VALUE_V1                   128'h4071736d8a603d2b4d55f62989a73c95
`define DEV_ID_MD5_VALUE_V1_0                 32'h4071736d
`define DEV_ID_MD5_VALUE_V1_1                 32'h8a603d2b
`define DEV_ID_MD5_VALUE_V1_2                 32'h4d55f629
`define DEV_ID_MD5_VALUE_V1_3                 32'h89a73c95

// MD5 identifier (v2): MD5 sum of the string "device_id.v:v2"
`define DEV_ID_MD5_VALUE_V2                   128'h5e461ffe439725c9279a22a1855f6c53
`define DEV_ID_MD5_VALUE_V2_0                 32'h5e461ffe
`define DEV_ID_MD5_VALUE_V2_1                 32'h439725c9
`define DEV_ID_MD5_VALUE_V2_2                 32'h279a22a1
`define DEV_ID_MD5_VALUE_V2_3                 32'h855f6c53

// Total number of registers (v1)
`define DEV_ID_NUM_REGS_V1                    64

// Number of non string registers (v1)
`define DEV_ID_NON_STR_REGS_V1                7

// Project name length (v1: in words, not chars)
`define DEV_ID_PROJ_NAME_WORD_LEN_V1          25

// Project name length (v1: in bytes/chars)
`define DEV_ID_PROJ_NAME_BYTE_LEN_V1          100

// Project name length (v1: in bits)
`define DEV_ID_PROJ_NAME_BIT_LEN_V1           800


// ===== File: lib/verilog/core/io_queues/ethernet_mac/xml/ethernet_mac.xml =====

// TX queue disable bit
`define MAC_GRP_TX_QUEUE_DISABLE_BIT_NUM      0

// RX queue disable bit
`define MAC_GRP_RX_QUEUE_DISABLE_BIT_NUM      1

// Reset MAC bit
`define MAC_GRP_RESET_MAC_BIT_NUM             2

// MAC TX queue disable bit
`define MAC_GRP_MAC_DISABLE_TX_BIT_NUM        3

// MAC RX queue disable bit
`define MAC_GRP_MAC_DISABLE_RX_BIT_NUM        4

// MAC disable jumbo TX bit
`define MAC_GRP_MAC_DIS_JUMBO_TX_BIT_NUM      5

// MAC disable jumbo RX bit
`define MAC_GRP_MAC_DIS_JUMBO_RX_BIT_NUM      6

// MAC disable crc check disable bit
`define MAC_GRP_MAC_DIS_CRC_CHECK_BIT_NUM     7

// MAC disable crc generate bit
`define MAC_GRP_MAC_DIS_CRC_GEN_BIT_NUM       8


// ===== File: projects/packet_generator/include/project.xml =====

`define PKT_CAP_DA                            48'h000000000001
`define PKT_CAP_DA_HI                         32'h0000
`define PKT_CAP_DA_LO                         32'h00000001

`define PKT_CAP_SA                            48'h000000000002
`define PKT_CAP_SA_HI                         32'h0000
`define PKT_CAP_SA_LO                         32'h00000002

`define PKT_CAP_ETHERTYPE                     16'h9001

// Control word to specify delay
`define DELAY_CTRL_VAL                        8'hfe

// Control word to specify pad
`define PAD_CTRL_VAL                          8'hfd



// -------------------------------------
//   Modules
// -------------------------------------

// Tag/address widths
`define CORE_BLOCK_ADDR_WIDTH        1
`define CORE_REG_ADDR_WIDTH          22
`define COUNTER_BLOCK_ADDR_WIDTH     4
`define COUNTER_REG_ADDR_WIDTH       16
`define CPU_QUEUE_BLOCK_ADDR_WIDTH   4
`define CPU_QUEUE_REG_ADDR_WIDTH     16
`define DELAY_BLOCK_ADDR_WIDTH       19
`define DELAY_REG_ADDR_WIDTH         4
`define DEV_ID_BLOCK_ADDR_WIDTH      4
`define DEV_ID_REG_ADDR_WIDTH        16
`define DMA_BLOCK_ADDR_WIDTH         4
`define DMA_REG_ADDR_WIDTH           16
`define DRAM_BLOCK_ADDR_WIDTH        1
`define DRAM_REG_ADDR_WIDTH          24
`define IN_ARB_BLOCK_ADDR_WIDTH      17
`define IN_ARB_REG_ADDR_WIDTH        6
`define MAC_GRP_BLOCK_ADDR_WIDTH     4
`define MAC_GRP_REG_ADDR_WIDTH       16
`define MDIO_BLOCK_ADDR_WIDTH        4
`define MDIO_REG_ADDR_WIDTH          16
`define OQ_BLOCK_ADDR_WIDTH          13
`define OQ_REG_ADDR_WIDTH            10
`define PKT_GEN_BLOCK_ADDR_WIDTH     17
`define PKT_GEN_REG_ADDR_WIDTH       6
`define RATE_LIMIT_BLOCK_ADDR_WIDTH  19
`define RATE_LIMIT_REG_ADDR_WIDTH    4
`define SRAM_BLOCK_ADDR_WIDTH        1
`define SRAM_REG_ADDR_WIDTH          22
`define UDP_BLOCK_ADDR_WIDTH         1
`define UDP_REG_ADDR_WIDTH           23

// Module tags
`define CORE_BLOCK_ADDR          1'h0
`define DEV_ID_BLOCK_ADDR        4'h0
`define MDIO_BLOCK_ADDR          4'h1
`define COUNTER_BLOCK_ADDR       4'h2
`define DMA_BLOCK_ADDR           4'h4
`define MAC_GRP_0_BLOCK_ADDR     4'h8
`define MAC_GRP_1_BLOCK_ADDR     4'h9
`define MAC_GRP_2_BLOCK_ADDR     4'ha
`define MAC_GRP_3_BLOCK_ADDR     4'hb
`define CPU_QUEUE_0_BLOCK_ADDR   4'hc
`define CPU_QUEUE_1_BLOCK_ADDR   4'hd
`define CPU_QUEUE_2_BLOCK_ADDR   4'he
`define CPU_QUEUE_3_BLOCK_ADDR   4'hf
`define SRAM_BLOCK_ADDR          1'h1
`define UDP_BLOCK_ADDR           1'h1
`define OQ_BLOCK_ADDR            13'h0000
`define IN_ARB_BLOCK_ADDR        17'h00010
`define DELAY_BLOCK_ADDR         19'h00044
`define RATE_LIMIT_0_BLOCK_ADDR  19'h00045
`define RATE_LIMIT_1_BLOCK_ADDR  19'h00046
`define RATE_LIMIT_2_BLOCK_ADDR  19'h00047
`define RATE_LIMIT_3_BLOCK_ADDR  19'h00048
`define RATE_LIMIT_4_BLOCK_ADDR  19'h00049
`define RATE_LIMIT_5_BLOCK_ADDR  19'h0004a
`define RATE_LIMIT_6_BLOCK_ADDR  19'h0004b
`define RATE_LIMIT_7_BLOCK_ADDR  19'h0004c
`define PKT_GEN_BLOCK_ADDR       17'h00014
`define DRAM_BLOCK_ADDR          1'h1


// -------------------------------------
//   Registers
// -------------------------------------

// Name: cpu_dma_queue
// Description: CPU DMA queue
// File: lib/verilog/core/io_queues/cpu_dma_queue/xml/cpu_dma_queue.xml
`define CPU_QUEUE_CONTROL                        16'h0
`define CPU_QUEUE_RX_QUEUE_NUM_PKTS_IN_QUEUE     16'h1
`define CPU_QUEUE_RX_QUEUE_NUM_PKTS_ENQUEUED     16'h2
`define CPU_QUEUE_RX_QUEUE_NUM_PKTS_DROPPED_BAD  16'h3
`define CPU_QUEUE_RX_QUEUE_NUM_PKTS_DEQUEUED     16'h4
`define CPU_QUEUE_RX_QUEUE_NUM_UNDERRUNS         16'h5
`define CPU_QUEUE_RX_QUEUE_NUM_OVERRUNS          16'h6
`define CPU_QUEUE_RX_QUEUE_NUM_WORDS_PUSHED      16'h7
`define CPU_QUEUE_RX_QUEUE_NUM_BYTES_PUSHED      16'h8
`define CPU_QUEUE_TX_QUEUE_NUM_PKTS_IN_QUEUE     16'h9
`define CPU_QUEUE_TX_QUEUE_NUM_PKTS_ENQUEUED     16'ha
`define CPU_QUEUE_TX_QUEUE_NUM_PKTS_DEQUEUED     16'hb
`define CPU_QUEUE_TX_QUEUE_NUM_UNDERRUNS         16'hc
`define CPU_QUEUE_TX_QUEUE_NUM_OVERRUNS          16'hd
`define CPU_QUEUE_TX_QUEUE_NUM_WORDS_PUSHED      16'he
`define CPU_QUEUE_TX_QUEUE_NUM_BYTES_PUSHED      16'hf

// Name: delay
// Description: Delay Module Registers
// File: projects/packet_generator/include/delay.xml
`define DELAY_RESET  4'h0

// Name: device_id
// Description: Device identification
// File: lib/verilog/core/utils/xml/device_id_reg.xml
`define DEV_ID_MD5_0         16'h0
`define DEV_ID_MD5_1         16'h1
`define DEV_ID_MD5_2         16'h2
`define DEV_ID_MD5_3         16'h3
`define DEV_ID_DEVICE_ID     16'h4
`define DEV_ID_VERSION       16'h5
`define DEV_ID_CPCI_ID       16'h6
`define DEV_ID_PROJ_DIR_0    16'h7
`define DEV_ID_PROJ_DIR_1    16'h8
`define DEV_ID_PROJ_DIR_2    16'h9
`define DEV_ID_PROJ_DIR_3    16'ha
`define DEV_ID_PROJ_DIR_4    16'hb
`define DEV_ID_PROJ_DIR_5    16'hc
`define DEV_ID_PROJ_DIR_6    16'hd
`define DEV_ID_PROJ_DIR_7    16'he
`define DEV_ID_PROJ_DIR_8    16'hf
`define DEV_ID_PROJ_DIR_9    16'h10
`define DEV_ID_PROJ_DIR_10   16'h11
`define DEV_ID_PROJ_DIR_11   16'h12
`define DEV_ID_PROJ_DIR_12   16'h13
`define DEV_ID_PROJ_DIR_13   16'h14
`define DEV_ID_PROJ_DIR_14   16'h15
`define DEV_ID_PROJ_DIR_15   16'h16
`define DEV_ID_PROJ_NAME_0   16'h17
`define DEV_ID_PROJ_NAME_1   16'h18
`define DEV_ID_PROJ_NAME_2   16'h19
`define DEV_ID_PROJ_NAME_3   16'h1a
`define DEV_ID_PROJ_NAME_4   16'h1b
`define DEV_ID_PROJ_NAME_5   16'h1c
`define DEV_ID_PROJ_NAME_6   16'h1d
`define DEV_ID_PROJ_NAME_7   16'h1e
`define DEV_ID_PROJ_NAME_8   16'h1f
`define DEV_ID_PROJ_NAME_9   16'h20
`define DEV_ID_PROJ_NAME_10  16'h21
`define DEV_ID_PROJ_NAME_11  16'h22
`define DEV_ID_PROJ_NAME_12  16'h23
`define DEV_ID_PROJ_NAME_13  16'h24
`define DEV_ID_PROJ_NAME_14  16'h25
`define DEV_ID_PROJ_NAME_15  16'h26
`define DEV_ID_PROJ_DESC_0   16'h27
`define DEV_ID_PROJ_DESC_1   16'h28
`define DEV_ID_PROJ_DESC_2   16'h29
`define DEV_ID_PROJ_DESC_3   16'h2a
`define DEV_ID_PROJ_DESC_4   16'h2b
`define DEV_ID_PROJ_DESC_5   16'h2c
`define DEV_ID_PROJ_DESC_6   16'h2d
`define DEV_ID_PROJ_DESC_7   16'h2e
`define DEV_ID_PROJ_DESC_8   16'h2f
`define DEV_ID_PROJ_DESC_9   16'h30
`define DEV_ID_PROJ_DESC_10  16'h31
`define DEV_ID_PROJ_DESC_11  16'h32
`define DEV_ID_PROJ_DESC_12  16'h33
`define DEV_ID_PROJ_DESC_13  16'h34
`define DEV_ID_PROJ_DESC_14  16'h35
`define DEV_ID_PROJ_DESC_15  16'h36
`define DEV_ID_PROJ_DESC_16  16'h37
`define DEV_ID_PROJ_DESC_17  16'h38
`define DEV_ID_PROJ_DESC_18  16'h39
`define DEV_ID_PROJ_DESC_19  16'h3a
`define DEV_ID_PROJ_DESC_20  16'h3b
`define DEV_ID_PROJ_DESC_21  16'h3c
`define DEV_ID_PROJ_DESC_22  16'h3d
`define DEV_ID_PROJ_DESC_23  16'h3e
`define DEV_ID_PROJ_DESC_24  16'h3f

// Name: dma
// Description: DMA transfer module
// File: lib/verilog/core/dma/xml/dma.xml
`define DMA_CTRL               16'h0
`define DMA_NUM_INGRESS_PKTS   16'h1
`define DMA_NUM_INGRESS_BYTES  16'h2
`define DMA_NUM_EGRESS_PKTS    16'h3
`define DMA_NUM_EGRESS_BYTES   16'h4
`define DMA_NUM_TIMEOUTS       16'h5

// Name: in_arb
// Description: Round-robin input arbiter
// File: lib/verilog/core/input_arbiter/rr_input_arbiter/xml/rr_input_arbiter.xml
`define IN_ARB_NUM_PKTS_SENT       6'h0
`define IN_ARB_LAST_PKT_WORD_0_HI  6'h1
`define IN_ARB_LAST_PKT_WORD_0_LO  6'h2
`define IN_ARB_LAST_PKT_CTRL_0     6'h3
`define IN_ARB_LAST_PKT_WORD_1_HI  6'h4
`define IN_ARB_LAST_PKT_WORD_1_LO  6'h5
`define IN_ARB_LAST_PKT_CTRL_1     6'h6
`define IN_ARB_STATE               6'h7

// Name: mdio
// Description: MDIO interface
// File: lib/verilog/core/io/mdio/xml/mdio.xml
//   Register group: PHY
//
//   Address decompositions:
//     - Inst:  Addresses of the *instances* within the module
`define MDIO_PHY_INST_BLOCK_ADDR_WIDTH    11
`define MDIO_PHY_INST_REG_ADDR_WIDTH      5

`define MDIO_PHY_0_INST_BLOCK_ADDR  11'd0
`define MDIO_PHY_1_INST_BLOCK_ADDR  11'd1
`define MDIO_PHY_2_INST_BLOCK_ADDR  11'd2
`define MDIO_PHY_3_INST_BLOCK_ADDR  11'd3

`define MDIO_PHY_CONTROL                                 5'h0
`define MDIO_PHY_STATUS                                  5'h1
`define MDIO_PHY_PHY_ID_HI                               5'h2
`define MDIO_PHY_PHY_ID_LO                               5'h3
`define MDIO_PHY_AUTONEGOTIATION_ADVERT                  5'h4
`define MDIO_PHY_AUTONEG_LINK_PARTNER_BASE_PAGE_ABILITY  5'h5
`define MDIO_PHY_AUTONEG_EXPANSION                       5'h6
`define MDIO_PHY_AUTONEG_NEXT_PAGE_TX                    5'h7
`define MDIO_PHY_AUTONEG_LINK_PARTNER_RCVD_NEXT_PAGE     5'h8
`define MDIO_PHY_MASTER_SLAVE_CTRL                       5'h9
`define MDIO_PHY_MASTER_SLAVE_STATUS                     5'ha
`define MDIO_PHY_PSE_CTRL                                5'hb
`define MDIO_PHY_PSE_STATUS                              5'hc
`define MDIO_PHY_MMD_ACCESS_CTRL                         5'hd
`define MDIO_PHY_MMD_ACCESS_STATUS                       5'he
`define MDIO_PHY_EXTENDED_STATUS                         5'hf
`define MDIO_PHY_PHY_EXTENDED_CTRL                       5'h10
`define MDIO_PHY_PHY_EXTENDED_STATUS                     5'h11
`define MDIO_PHY_RX_ERROR_COUNT                          5'h12
`define MDIO_PHY_FALSE_CARRIER_SENSE_COUNT               5'h13
`define MDIO_PHY_RX_NOT_OK_COUNT                         5'h14
`define MDIO_PHY_EXPANSION_1                             5'h15
`define MDIO_PHY_EXPANSION_2                             5'h16
`define MDIO_PHY_EXPANSION_REG_ACCESS                    5'h17
`define MDIO_PHY_SHADOW_18                               5'h18
`define MDIO_PHY_AUX_STATUS                              5'h19
`define MDIO_PHY_INT_STATUS                              5'h1a
`define MDIO_PHY_INT_MASK                                5'h1b
`define MDIO_PHY_SHADOW_1C                               5'h1c
`define MDIO_PHY_SHADOW_1D                               5'h1d
`define MDIO_PHY_TEST                                    5'h1e
`define MDIO_PHY_RESERVED                                5'h1f


// Name: nf2_mac_grp
// Description: Ethernet MAC group
// File: lib/verilog/core/io_queues/ethernet_mac/xml/ethernet_mac.xml
`define MAC_GRP_CONTROL                         16'h0
`define MAC_GRP_RX_QUEUE_NUM_PKTS_IN_QUEUE      16'h1
`define MAC_GRP_RX_QUEUE_NUM_PKTS_STORED        16'h2
`define MAC_GRP_RX_QUEUE_NUM_PKTS_DROPPED_FULL  16'h3
`define MAC_GRP_RX_QUEUE_NUM_PKTS_DROPPED_BAD   16'h4
`define MAC_GRP_RX_QUEUE_NUM_PKTS_DEQUEUED      16'h5
`define MAC_GRP_RX_QUEUE_NUM_WORDS_PUSHED       16'h6
`define MAC_GRP_RX_QUEUE_NUM_BYTES_PUSHED       16'h7
`define MAC_GRP_TX_QUEUE_NUM_PKTS_IN_QUEUE      16'h8
`define MAC_GRP_TX_QUEUE_NUM_PKTS_ENQUEUED      16'h9
`define MAC_GRP_TX_QUEUE_NUM_PKTS_SENT          16'ha
`define MAC_GRP_TX_QUEUE_NUM_WORDS_PUSHED       16'hb
`define MAC_GRP_TX_QUEUE_NUM_BYTES_PUSHED       16'hc

// Name: output_queues
// Description: SRAM-based output queue using round-robin removal, modified for Packet Generator
// File: projects/packet_generator/include/sram_rr_output_queues.xml
//   Register group: QUEUE
//
//   Address decompositions:
//     - Inst:  Addresses of the *instances* within the module
`define OQ_QUEUE_INST_BLOCK_ADDR_WIDTH    4
`define OQ_QUEUE_INST_REG_ADDR_WIDTH      6

`define OQ_QUEUE_0_INST_BLOCK_ADDR  4'd0
`define OQ_QUEUE_1_INST_BLOCK_ADDR  4'd1
`define OQ_QUEUE_2_INST_BLOCK_ADDR  4'd2
`define OQ_QUEUE_3_INST_BLOCK_ADDR  4'd3
`define OQ_QUEUE_4_INST_BLOCK_ADDR  4'd4
`define OQ_QUEUE_5_INST_BLOCK_ADDR  4'd5
`define OQ_QUEUE_6_INST_BLOCK_ADDR  4'd6
`define OQ_QUEUE_7_INST_BLOCK_ADDR  4'd7
`define OQ_QUEUE_8_INST_BLOCK_ADDR  4'd8
`define OQ_QUEUE_9_INST_BLOCK_ADDR  4'd9
`define OQ_QUEUE_10_INST_BLOCK_ADDR  4'd10
`define OQ_QUEUE_11_INST_BLOCK_ADDR  4'd11

`define OQ_QUEUE_CTRL                        6'h0
`define OQ_QUEUE_NUM_PKT_BYTES_STORED        6'h1
`define OQ_QUEUE_NUM_OVERHEAD_BYTES_STORED   6'h2
`define OQ_QUEUE_NUM_PKT_BYTES_REMOVED       6'h3
`define OQ_QUEUE_NUM_OVERHEAD_BYTES_REMOVED  6'h4
`define OQ_QUEUE_NUM_PKTS_STORED             6'h5
`define OQ_QUEUE_NUM_PKTS_DROPPED            6'h6
`define OQ_QUEUE_NUM_PKTS_REMOVED            6'h7
`define OQ_QUEUE_ADDR_LO                     6'h8
`define OQ_QUEUE_ADDR_HI                     6'h9
`define OQ_QUEUE_RD_ADDR                     6'ha
`define OQ_QUEUE_WR_ADDR                     6'hb
`define OQ_QUEUE_NUM_PKTS_IN_Q               6'hc
`define OQ_QUEUE_MAX_PKTS_IN_Q               6'hd
`define OQ_QUEUE_NUM_WORDS_IN_Q              6'he
`define OQ_QUEUE_NUM_WORDS_LEFT              6'hf
`define OQ_QUEUE_FULL_THRESH                 6'h10
`define OQ_QUEUE_CURR_ITER                   6'h11
`define OQ_QUEUE_MAX_ITER                    6'h12


// Name: packet_capture
// Description: Packet Generator Control Registers
// File: projects/packet_generator/include/packet_capture.xml
//   Register group: CTRL
//
//   Address decompositions:
//     - Inst:  Addresses of the *instances* within the module
//     - Group: Addresses of the *group* within the module
`define PKT_GEN_CTRL_GROUP_BLOCK_ADDR_WIDTH   1
`define PKT_GEN_CTRL_GROUP_REG_ADDR_WIDTH     5

`define PKT_GEN_CTRL_GROUP_BLOCK_ADDR         1'd1

`define PKT_GEN_CTRL_INST_BLOCK_ADDR_WIDTH    3
`define PKT_GEN_CTRL_INST_REG_ADDR_WIDTH      3

`define PKT_GEN_CTRL_0_INST_BLOCK_ADDR  3'd0
`define PKT_GEN_CTRL_1_INST_BLOCK_ADDR  3'd1
`define PKT_GEN_CTRL_2_INST_BLOCK_ADDR  3'd2
`define PKT_GEN_CTRL_3_INST_BLOCK_ADDR  3'd3

`define PKT_GEN_CTRL_PKT_COUNT      3'h0
`define PKT_GEN_CTRL_BYTE_COUNT_HI  3'h1
`define PKT_GEN_CTRL_BYTE_COUNT_LO  3'h2
`define PKT_GEN_CTRL_TIME_FIRST_HI  3'h3
`define PKT_GEN_CTRL_TIME_FIRST_LO  3'h4
`define PKT_GEN_CTRL_TIME_LAST_HI   3'h5
`define PKT_GEN_CTRL_TIME_LAST_LO   3'h6

`define PKT_GEN_CTRL_ENABLE  6'h0

// Name: rate_limiter
// Description: Event Capture Registers
// File: projects/packet_generator/include/rate_limiter.xml
`define RATE_LIMIT_CTRL            4'h0
`define RATE_LIMIT_TOKEN_INTERVAL  4'h1
`define RATE_LIMIT_TOKEN_INC       4'h2

// Name: stamp_counter
// Description: Registers for the Stamp Counter and PTP
// File: projects/packet_generator/include/stamp_counter.xml
`define COUNTER_1                        16'h0
`define COUNTER_2                        16'h1
`define COUNTER_3                        16'h2
`define COUNTER_4                        16'h3
`define COUNTER_1_2_LOAD                 16'h4
`define COUNTER_3_4_LOAD                 16'h5
`define COUNTER_BIT_95_64                16'h6
`define COUNTER_BIT_63_32                16'h7
`define COUNTER_BIT_31_0                 16'h8
`define COUNTER_READ_ENABLE              16'h9
`define COUNTER_CLK_SYN_0_COUNTER_RESET  16'ha
`define COUNTER_CLK_SYN_0_TX_HI          16'hb
`define COUNTER_CLK_SYN_0_TX_LO          16'hc
`define COUNTER_CLK_SYN_0_RX_HI          16'hd
`define COUNTER_CLK_SYN_0_RX_LO          16'he
`define COUNTER_CLK_SYN_1_COUNTER_RESET  16'hf
`define COUNTER_CLK_SYN_1_TX_HI          16'h10
`define COUNTER_CLK_SYN_1_TX_LO          16'h11
`define COUNTER_CLK_SYN_1_RX_HI          16'h12
`define COUNTER_CLK_SYN_1_RX_LO          16'h13
`define COUNTER_CLK_SYN_2_COUNTER_RESET  16'h14
`define COUNTER_CLK_SYN_2_TX_HI          16'h15
`define COUNTER_CLK_SYN_2_TX_LO          16'h16
`define COUNTER_CLK_SYN_2_RX_HI          16'h17
`define COUNTER_CLK_SYN_2_RX_LO          16'h18
`define COUNTER_CLK_SYN_3_COUNTER_RESET  16'h19
`define COUNTER_CLK_SYN_3_TX_HI          16'h1a
`define COUNTER_CLK_SYN_3_TX_LO          16'h1b
`define COUNTER_CLK_SYN_3_RX_HI          16'h1c
`define COUNTER_CLK_SYN_3_RX_LO          16'h1d
`define COUNTER_PTP_VALID_TX             16'h1e
`define COUNTER_PTP_VALID_RX             16'h1f
`define COUNTER_PTP_ENABLE_MASK_RX       16'h20
`define COUNTER_PTP_ENABLE_MASK_TX       16'h21
`define COUNTER_PTP_MASK_RX              16'h22
`define COUNTER_PTP_MASK_TX              16'h23



// -------------------------------------
//   Bitmasks
// -------------------------------------

// Type: oq_control
// File: projects/packet_generator/include/sram_rr_output_queues.xml
`define OQ_CONTROL_ENABLE_SEND_POS     0
`define OQ_CONTROL_INITIALIZE_OQ_POS   1

// Type: dma_iface_ctrl
// Description: DMA interface control register
// File: lib/verilog/core/dma/xml/dma.xml
`define DMA_IFACE_CTRL_DISABLE_POS   0
`define DMA_IFACE_CTRL_RESET_POS     1

// Type: mii_ctrl
// Description: MII control register
// File: lib/verilog/core/io/mdio/xml/mdio.xml
`define MII_CTRL_RESET_POS               15
`define MII_CTRL_INTERNAL_LOOPBACK_POS   14
`define MII_CTRL_SPEED_SEL_LO_POS        13
`define MII_CTRL_AUTONEG_ENABLE_POS      12
`define MII_CTRL_PWR_DOWN_POS            11
`define MII_CTRL_ISOLATE_POS             10
`define MII_CTRL_RESTART_AUTONEG_POS     9
`define MII_CTRL_DUPLEX_MODE_POS         8
`define MII_CTRL_COLLISION_TEST_EN_POS   7
`define MII_CTRL_SPEED_SEL_HI_POS        6

// Type: mii_status
// Description: MII status register
// File: lib/verilog/core/io/mdio/xml/mdio.xml
`define MII_STATUS_100BASE_T4_CAPABLE_POS            15
`define MII_STATUS_100BASE_X_FULL_DPLX_CAPABLE_POS   14
`define MII_STATUS_100BASE_X_HALF_DPLX_CAPABLE_POS   13
`define MII_STATUS_10BASE_T_FULL_DPLX_CAPABLE_POS    12
`define MII_STATUS_10BASE_T_HALF_DPLX_CAPABLE_POS    11
`define MII_STATUS_10BASE_T2_FULL_DPLX_CAPABLE_POS   10
`define MII_STATUS_10BASE_T2_HALF_DPLX_CAPABLE_POS   9
`define MII_STATUS_EXTENDED_STATUS_POS               8
`define MII_STATUS_MF_PREAMBLE_SUPPRESS_POS          6
`define MII_STATUS_AUTONEG_COMPLETE_POS              5
`define MII_STATUS_REMOTE_FAULT_POS                  4
`define MII_STATUS_AUTONEG_ABILITY_POS               3
`define MII_STATUS_LINK_STATUS_POS                   2
`define MII_STATUS_JABBER_DETECT_POS                 1
`define MII_STATUS_EXTENDED_CAPABILITY_POS           0

// Type: cpu_queue_control
// Description: DMA queue control register
// File: lib/verilog/core/io_queues/cpu_dma_queue/xml/cpu_dma_queue.xml
`define CPU_QUEUE_CONTROL_TX_QUEUE_DISABLE_POS   0
`define CPU_QUEUE_CONTROL_RX_QUEUE_DISABLE_POS   1

// Type: mac_grp_control
// Description: MAC group control register
// File: lib/verilog/core/io_queues/ethernet_mac/xml/ethernet_mac.xml
`define MAC_GRP_CONTROL_TX_QUEUE_DISABLE_POS        0
`define MAC_GRP_CONTROL_RX_QUEUE_DISABLE_POS        1
`define MAC_GRP_CONTROL_RESET_MAC_POS               2
`define MAC_GRP_CONTROL_MAC_DISABLE_TX_POS          3
`define MAC_GRP_CONTROL_MAC_DISABLE_RX_POS          4
`define MAC_GRP_CONTROL_MAC_DISABLE_JUMBO_TX_POS    5
`define MAC_GRP_CONTROL_MAC_DISABLE_JUMBO_RX_POS    6
`define MAC_GRP_CONTROL_MAC_DISABLE_CRC_CHECK_POS   7
`define MAC_GRP_CONTROL_MAC_DISABLE_CRC_GEN_POS     8


