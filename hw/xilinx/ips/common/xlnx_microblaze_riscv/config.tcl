# Import IP by version
create_ip -name microblaze_riscv -vendor xilinx.com -library ip -version 1.0 -module_name $::env(IP_NAME)

# Configure IP
set_property -dict [list CONFIG.C_DEBUG_ENABLED {0} \
  CONFIG.C_DEBUG_EVENT_COUNTERS {0} \
  CONFIG.C_DEBUG_LATENCY_COUNTERS {0} \
  CONFIG.C_BRANCH_TARGET_CACHE_SIZE {0} \
  CONFIG.C_DCACHE_BASEADDR {0x00000000} \
  CONFIG.C_DCACHE_BYTE_SIZE {8} \
  CONFIG.C_DCACHE_FORCE_TAG_LUTRAM {0} \
  CONFIG.C_DCACHE_HIGHADDR {0x3FFFFFFF} \
  CONFIG.C_DCACHE_LINE_LEN {4} \
  CONFIG.C_D_AXI {1} \
  CONFIG.C_D_LMB {1} \
  CONFIG.C_ENABLE_DISCRETE_PORTS {0} \
  CONFIG.C_FAULT_TOLERANT {0} \
  CONFIG.C_FSL_LINKS {0} \
  CONFIG.C_ICACHE_BASEADDR {0x00000000} \
  CONFIG.C_ICACHE_BYTE_SIZE {8} \
  CONFIG.C_ICACHE_FORCE_TAG_LUTRAM {0} \
  CONFIG.C_ICACHE_HIGHADDR {0x3FFFFFFF} \
  CONFIG.C_ICACHE_LINE_LEN {4} \
  CONFIG.C_ILL_INSTR_EXCEPTION {2} \
  CONFIG.C_I_AXI {1} \
  CONFIG.C_I_LMB {1} \
  CONFIG.C_LOCKSTEP_SELECT {0} \
  CONFIG.C_MISALIGNED_EXCEPTIONS {1} \
  CONFIG.C_M_AXI_D_BUS_EXCEPTION {1} \
  CONFIG.C_M_AXI_I_BUS_EXCEPTION {1} \
  CONFIG.C_NUMBER_OF_PC_BRK {1} \
  CONFIG.C_NUMBER_OF_RD_ADDR_BRK {0} \
  CONFIG.C_NUMBER_OF_WR_ADDR_BRK {0} \
  CONFIG.C_OPTIMIZATION {0} \
  CONFIG.C_TRACE {0} \
  CONFIG.C_USE_ATOMIC {0} \
  CONFIG.C_USE_BARREL {1} \
  CONFIG.C_USE_BITMAN_A {0} \
  CONFIG.C_USE_BITMAN_B {0} \
  CONFIG.C_USE_BITMAN_C {0} \
  CONFIG.C_USE_BITMAN_S {0} \
  CONFIG.C_USE_BRANCH_TARGET_CACHE {0} \
  CONFIG.C_USE_COMPRESSION {0} \
  CONFIG.C_USE_COUNTERS {1} \
  CONFIG.C_USE_DCACHE {0} \
  CONFIG.C_USE_FPU {0} \
  CONFIG.C_USE_ICACHE {0} \
  CONFIG.C_USE_MMU {0} \
  CONFIG.C_USE_MULDIV {0} \
  CONFIG.G_TEMPLATE_LIST {0} \
    ] [get_ips $::env(IP_NAME)]
