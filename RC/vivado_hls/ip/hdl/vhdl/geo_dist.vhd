-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity geo_dist is
generic (
    C_S_AXI_GEO_DIST_IF_ADDR_WIDTH : INTEGER := 6;
    C_S_AXI_GEO_DIST_IF_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    s_axi_geo_dist_if_AWVALID : IN STD_LOGIC;
    s_axi_geo_dist_if_AWREADY : OUT STD_LOGIC;
    s_axi_geo_dist_if_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_GEO_DIST_IF_ADDR_WIDTH-1 downto 0);
    s_axi_geo_dist_if_WVALID : IN STD_LOGIC;
    s_axi_geo_dist_if_WREADY : OUT STD_LOGIC;
    s_axi_geo_dist_if_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_GEO_DIST_IF_DATA_WIDTH-1 downto 0);
    s_axi_geo_dist_if_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_GEO_DIST_IF_DATA_WIDTH/8-1 downto 0);
    s_axi_geo_dist_if_ARVALID : IN STD_LOGIC;
    s_axi_geo_dist_if_ARREADY : OUT STD_LOGIC;
    s_axi_geo_dist_if_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_GEO_DIST_IF_ADDR_WIDTH-1 downto 0);
    s_axi_geo_dist_if_RVALID : OUT STD_LOGIC;
    s_axi_geo_dist_if_RREADY : IN STD_LOGIC;
    s_axi_geo_dist_if_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_GEO_DIST_IF_DATA_WIDTH-1 downto 0);
    s_axi_geo_dist_if_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_geo_dist_if_BVALID : OUT STD_LOGIC;
    s_axi_geo_dist_if_BREADY : IN STD_LOGIC;
    s_axi_geo_dist_if_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0) );
end;


architecture behav of geo_dist is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "geo_dist,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020i-clg400-1L,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.842937,HLS_SYN_LAT=135,HLS_SYN_TPT=none,HLS_SYN_MEM=20,HLS_SYN_DSP=15,HLS_SYN_FF=11204,HLS_SYN_LUT=17198,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv15_1921 : STD_LOGIC_VECTOR (14 downto 0) := "001100100100001";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv29_47 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000000000001000111";
    constant ap_const_lv32_FFFB8C8F : STD_LOGIC_VECTOR (31 downto 0) := "11111111111110111000110010001111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal lat_a_V : STD_LOGIC_VECTOR (19 downto 0);
    signal lat_a_V_0_data_reg : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    signal lat_a_V_0_vld_reg : STD_LOGIC := '0';
    signal lat_a_V_0_ack_out : STD_LOGIC;
    signal lon_a_V : STD_LOGIC_VECTOR (19 downto 0);
    signal lon_a_V_0_data_reg : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    signal lon_a_V_0_vld_reg : STD_LOGIC := '0';
    signal lon_a_V_0_ack_out : STD_LOGIC;
    signal lat_b_V : STD_LOGIC_VECTOR (19 downto 0);
    signal lat_b_V_0_data_reg : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    signal lat_b_V_0_vld_reg : STD_LOGIC := '0';
    signal lat_b_V_0_ack_out : STD_LOGIC;
    signal lon_b_V : STD_LOGIC_VECTOR (19 downto 0);
    signal lon_b_V_0_data_reg : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    signal lon_b_V_0_vld_reg : STD_LOGIC := '0';
    signal lon_b_V_0_ack_out : STD_LOGIC;
    signal result_V_1_data_reg : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    signal result_V_1_data_in : STD_LOGIC_VECTOR (19 downto 0);
    signal result_V_1_vld_reg : STD_LOGIC := '0';
    signal result_V_1_vld_in : STD_LOGIC;
    signal result_V_1_ack_in : STD_LOGIC;
    signal grp_fu_270_p3 : STD_LOGIC_VECTOR (28 downto 0);
    signal r_V_reg_312 : STD_LOGIC_VECTOR (28 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_fu_278_p3 : STD_LOGIC_VECTOR (28 downto 0);
    signal r_V_1_reg_317 : STD_LOGIC_VECTOR (28 downto 0);
    signal grp_fu_286_p3 : STD_LOGIC_VECTOR (28 downto 0);
    signal r_V_2_reg_322 : STD_LOGIC_VECTOR (28 downto 0);
    signal trunc_ln_reg_327 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_generic_sincos_fu_110_ap_ready : STD_LOGIC;
    signal grp_generic_sincos_fu_110_ap_done : STD_LOGIC;
    signal grp_generic_sincos_fu_117_ap_ready : STD_LOGIC;
    signal grp_generic_sincos_fu_117_ap_done : STD_LOGIC;
    signal grp_generic_sincos_fu_124_ap_ready : STD_LOGIC;
    signal grp_generic_sincos_fu_124_ap_done : STD_LOGIC;
    signal ap_block_state4_on_subcall_done : BOOLEAN;
    signal trunc_ln708_1_reg_333 : STD_LOGIC_VECTOR (13 downto 0);
    signal trunc_ln708_3_reg_339 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_reg_344 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal sext_ln708_1_fu_223_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal sext_ln708_1_reg_350 : STD_LOGIC_VECTOR (18 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal sext_ln708_fu_227_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal out_V_3_fu_231_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal out_V_3_reg_360 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_generic_asin_20_8_s_fu_103_ap_ready : STD_LOGIC;
    signal grp_generic_asin_20_8_s_fu_103_ap_done : STD_LOGIC;
    signal tmp_1_reg_365 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_V_fu_245_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal out_V_reg_370 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal grp_generic_asin_20_8_s_fu_103_ap_start : STD_LOGIC;
    signal grp_generic_asin_20_8_s_fu_103_ap_idle : STD_LOGIC;
    signal grp_generic_asin_20_8_s_fu_103_ap_return : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_generic_sincos_fu_110_ap_start : STD_LOGIC;
    signal grp_generic_sincos_fu_110_ap_idle : STD_LOGIC;
    signal grp_generic_sincos_fu_110_ap_return : STD_LOGIC_VECTOR (25 downto 0);
    signal grp_generic_sincos_fu_117_ap_start : STD_LOGIC;
    signal grp_generic_sincos_fu_117_ap_idle : STD_LOGIC;
    signal grp_generic_sincos_fu_117_ap_return : STD_LOGIC_VECTOR (25 downto 0);
    signal grp_generic_sincos_fu_124_ap_start : STD_LOGIC;
    signal grp_generic_sincos_fu_124_ap_idle : STD_LOGIC;
    signal grp_generic_sincos_fu_124_ap_return : STD_LOGIC_VECTOR (25 downto 0);
    signal grp_generic_asin_20_8_s_fu_103_ap_start_reg : STD_LOGIC := '0';
    signal grp_generic_sincos_fu_110_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_generic_sincos_fu_117_ap_start_reg : STD_LOGIC := '0';
    signal grp_generic_sincos_fu_124_ap_start_reg : STD_LOGIC := '0';
    signal rhs_V_2_fu_186_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal rhs_V_3_fu_197_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal grp_fu_294_p4 : STD_LOGIC_VECTOR (28 downto 0);
    signal sext_ln728_1_fu_204_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal ret_V_5_fu_208_p2 : STD_LOGIC_VECTOR (28 downto 0);
    attribute use_dsp48 : string;
    attribute use_dsp48 of ret_V_5_fu_208_p2 : signal is "no";
    signal out_V_4_fu_251_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal r_V_6_fu_305_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_270_p0 : STD_LOGIC_VECTOR (19 downto 0);
    signal lhs_V_fu_131_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_fu_270_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal rhs_V_fu_135_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_fu_270_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_278_p0 : STD_LOGIC_VECTOR (19 downto 0);
    signal grp_fu_278_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal grp_fu_278_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_286_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal r_V_6_fu_305_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);

    component generic_asin_20_8_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        in_V : IN STD_LOGIC_VECTOR (18 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (14 downto 0) );
    end component;


    component generic_sincos IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        in_V : IN STD_LOGIC_VECTOR (28 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (25 downto 0) );
    end component;


    component geo_dist_am_submujbC IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (19 downto 0);
        din1 : IN STD_LOGIC_VECTOR (19 downto 0);
        din2 : IN STD_LOGIC_VECTOR (7 downto 0);
        dout : OUT STD_LOGIC_VECTOR (28 downto 0) );
    end component;


    component geo_dist_am_addmukbM IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (19 downto 0);
        din1 : IN STD_LOGIC_VECTOR (19 downto 0);
        din2 : IN STD_LOGIC_VECTOR (7 downto 0);
        dout : OUT STD_LOGIC_VECTOR (28 downto 0) );
    end component;


    component geo_dist_ama_addmlbW IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (13 downto 0);
        din1 : IN STD_LOGIC_VECTOR (13 downto 0);
        din2 : IN STD_LOGIC_VECTOR (13 downto 0);
        din3 : IN STD_LOGIC_VECTOR (25 downto 0);
        dout : OUT STD_LOGIC_VECTOR (28 downto 0) );
    end component;


    component geo_dist_mul_mul_mb6 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (14 downto 0);
        din1 : IN STD_LOGIC_VECTOR (19 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component geo_dist_geo_dist_if_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        lat_a_V : OUT STD_LOGIC_VECTOR (19 downto 0);
        lon_a_V : OUT STD_LOGIC_VECTOR (19 downto 0);
        lat_b_V : OUT STD_LOGIC_VECTOR (19 downto 0);
        lon_b_V : OUT STD_LOGIC_VECTOR (19 downto 0);
        result_V : IN STD_LOGIC_VECTOR (19 downto 0);
        result_V_ap_vld : IN STD_LOGIC );
    end component;



begin
    geo_dist_geo_dist_if_s_axi_U : component geo_dist_geo_dist_if_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_GEO_DIST_IF_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_GEO_DIST_IF_DATA_WIDTH)
    port map (
        AWVALID => s_axi_geo_dist_if_AWVALID,
        AWREADY => s_axi_geo_dist_if_AWREADY,
        AWADDR => s_axi_geo_dist_if_AWADDR,
        WVALID => s_axi_geo_dist_if_WVALID,
        WREADY => s_axi_geo_dist_if_WREADY,
        WDATA => s_axi_geo_dist_if_WDATA,
        WSTRB => s_axi_geo_dist_if_WSTRB,
        ARVALID => s_axi_geo_dist_if_ARVALID,
        ARREADY => s_axi_geo_dist_if_ARREADY,
        ARADDR => s_axi_geo_dist_if_ARADDR,
        RVALID => s_axi_geo_dist_if_RVALID,
        RREADY => s_axi_geo_dist_if_RREADY,
        RDATA => s_axi_geo_dist_if_RDATA,
        RRESP => s_axi_geo_dist_if_RRESP,
        BVALID => s_axi_geo_dist_if_BVALID,
        BREADY => s_axi_geo_dist_if_BREADY,
        BRESP => s_axi_geo_dist_if_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        lat_a_V => lat_a_V,
        lon_a_V => lon_a_V,
        lat_b_V => lat_b_V,
        lon_b_V => lon_b_V,
        result_V => result_V_1_data_reg,
        result_V_ap_vld => result_V_1_vld_reg);

    grp_generic_asin_20_8_s_fu_103 : component generic_asin_20_8_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_generic_asin_20_8_s_fu_103_ap_start,
        ap_done => grp_generic_asin_20_8_s_fu_103_ap_done,
        ap_idle => grp_generic_asin_20_8_s_fu_103_ap_idle,
        ap_ready => grp_generic_asin_20_8_s_fu_103_ap_ready,
        in_V => sext_ln708_1_reg_350,
        ap_return => grp_generic_asin_20_8_s_fu_103_ap_return);

    grp_generic_sincos_fu_110 : component generic_sincos
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_generic_sincos_fu_110_ap_start,
        ap_done => grp_generic_sincos_fu_110_ap_done,
        ap_idle => grp_generic_sincos_fu_110_ap_idle,
        ap_ready => grp_generic_sincos_fu_110_ap_ready,
        in_V => r_V_reg_312,
        ap_return => grp_generic_sincos_fu_110_ap_return);

    grp_generic_sincos_fu_117 : component generic_sincos
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_generic_sincos_fu_117_ap_start,
        ap_done => grp_generic_sincos_fu_117_ap_done,
        ap_idle => grp_generic_sincos_fu_117_ap_idle,
        ap_ready => grp_generic_sincos_fu_117_ap_ready,
        in_V => r_V_1_reg_317,
        ap_return => grp_generic_sincos_fu_117_ap_return);

    grp_generic_sincos_fu_124 : component generic_sincos
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_generic_sincos_fu_124_ap_start,
        ap_done => grp_generic_sincos_fu_124_ap_done,
        ap_idle => grp_generic_sincos_fu_124_ap_idle,
        ap_ready => grp_generic_sincos_fu_124_ap_ready,
        in_V => r_V_2_reg_322,
        ap_return => grp_generic_sincos_fu_124_ap_return);

    geo_dist_am_submujbC_U15 : component geo_dist_am_submujbC
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 20,
        din1_WIDTH => 20,
        din2_WIDTH => 8,
        dout_WIDTH => 29)
    port map (
        din0 => grp_fu_270_p0,
        din1 => grp_fu_270_p1,
        din2 => grp_fu_270_p2,
        dout => grp_fu_270_p3);

    geo_dist_am_addmukbM_U16 : component geo_dist_am_addmukbM
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 20,
        din1_WIDTH => 20,
        din2_WIDTH => 8,
        dout_WIDTH => 29)
    port map (
        din0 => grp_fu_278_p0,
        din1 => grp_fu_278_p1,
        din2 => grp_fu_278_p2,
        dout => grp_fu_278_p3);

    geo_dist_am_submujbC_U17 : component geo_dist_am_submujbC
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 20,
        din1_WIDTH => 20,
        din2_WIDTH => 8,
        dout_WIDTH => 29)
    port map (
        din0 => lon_a_V_0_data_reg,
        din1 => lon_b_V_0_data_reg,
        din2 => grp_fu_286_p2,
        dout => grp_fu_286_p3);

    geo_dist_ama_addmlbW_U18 : component geo_dist_ama_addmlbW
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 14,
        din1_WIDTH => 14,
        din2_WIDTH => 14,
        din3_WIDTH => 26,
        dout_WIDTH => 29)
    port map (
        din0 => trunc_ln_reg_327,
        din1 => trunc_ln708_1_reg_333,
        din2 => trunc_ln708_3_reg_339,
        din3 => rhs_V_2_fu_186_p3,
        dout => grp_fu_294_p4);

    geo_dist_mul_mul_mb6_U19 : component geo_dist_mul_mul_mb6
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 15,
        din1_WIDTH => 20,
        dout_WIDTH => 32)
    port map (
        din0 => out_V_4_fu_251_p3,
        din1 => r_V_6_fu_305_p1,
        dout => r_V_6_fu_305_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_generic_asin_20_8_s_fu_103_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_generic_asin_20_8_s_fu_103_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    grp_generic_asin_20_8_s_fu_103_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_generic_asin_20_8_s_fu_103_ap_ready = ap_const_logic_1)) then 
                    grp_generic_asin_20_8_s_fu_103_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_generic_sincos_fu_110_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_generic_sincos_fu_110_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_generic_sincos_fu_110_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_generic_sincos_fu_110_ap_ready = ap_const_logic_1)) then 
                    grp_generic_sincos_fu_110_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_generic_sincos_fu_117_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_generic_sincos_fu_117_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_generic_sincos_fu_117_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_generic_sincos_fu_117_ap_ready = ap_const_logic_1)) then 
                    grp_generic_sincos_fu_117_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_generic_sincos_fu_124_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_generic_sincos_fu_124_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_generic_sincos_fu_124_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_generic_sincos_fu_124_ap_ready = ap_const_logic_1)) then 
                    grp_generic_sincos_fu_124_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    lat_a_V_0_vld_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
        end if;
    end process;

    lat_b_V_0_vld_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
        end if;
    end process;

    lon_a_V_0_vld_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
        end if;
    end process;

    lon_b_V_0_vld_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
        end if;
    end process;

    result_V_1_vld_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((result_V_1_vld_reg = ap_const_logic_0) and (result_V_1_vld_in = ap_const_logic_1))) then 
                result_V_1_vld_reg <= ap_const_logic_1;
            elsif (((result_V_1_vld_in = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_1) and (result_V_1_vld_reg = ap_const_logic_1))) then 
                result_V_1_vld_reg <= ap_const_logic_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((lat_a_V_0_vld_reg = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_1)) or ((lat_a_V_0_ack_out = ap_const_logic_1) and (ap_const_logic_1 = ap_const_logic_1) and (lat_a_V_0_vld_reg = ap_const_logic_1)))) then
                lat_a_V_0_data_reg <= lat_a_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((lat_b_V_0_vld_reg = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_1)) or ((lat_b_V_0_ack_out = ap_const_logic_1) and (ap_const_logic_1 = ap_const_logic_1) and (lat_b_V_0_vld_reg = ap_const_logic_1)))) then
                lat_b_V_0_data_reg <= lat_b_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((lon_a_V_0_vld_reg = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_1)) or ((lon_a_V_0_ack_out = ap_const_logic_1) and (ap_const_logic_1 = ap_const_logic_1) and (lon_a_V_0_vld_reg = ap_const_logic_1)))) then
                lon_a_V_0_data_reg <= lon_a_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((lon_b_V_0_vld_reg = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_1)) or ((lon_b_V_0_ack_out = ap_const_logic_1) and (ap_const_logic_1 = ap_const_logic_1) and (lon_b_V_0_vld_reg = ap_const_logic_1)))) then
                lon_b_V_0_data_reg <= lon_b_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_generic_asin_20_8_s_fu_103_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                out_V_3_reg_360 <= out_V_3_fu_231_p2;
                out_V_reg_370 <= out_V_fu_245_p2;
                tmp_1_reg_365 <= out_V_3_fu_231_p2(14 downto 14);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                r_V_1_reg_317 <= grp_fu_278_p3;
                r_V_2_reg_322 <= grp_fu_286_p3;
                r_V_reg_312 <= grp_fu_270_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((result_V_1_vld_reg = ap_const_logic_0) and (result_V_1_vld_in = ap_const_logic_1)) or ((ap_const_logic_1 = ap_const_logic_1) and (result_V_1_vld_in = ap_const_logic_1) and (result_V_1_vld_reg = ap_const_logic_1)))) then
                result_V_1_data_reg <= result_V_1_data_in;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                sext_ln708_1_reg_350 <= sext_ln708_1_fu_223_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                tmp_reg_344 <= ret_V_5_fu_208_p2(28 downto 13);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_boolean_0 = ap_block_state4_on_subcall_done))) then
                trunc_ln708_1_reg_333 <= grp_generic_sincos_fu_117_ap_return(25 downto 12);
                trunc_ln708_3_reg_339 <= grp_generic_sincos_fu_124_ap_return(25 downto 12);
                trunc_ln_reg_327 <= grp_generic_sincos_fu_110_ap_return(25 downto 12);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (result_V_1_ack_in, ap_CS_fsm, ap_CS_fsm_state4, ap_block_state4_on_subcall_done, ap_CS_fsm_state7, grp_generic_asin_20_8_s_fu_103_ap_done, ap_CS_fsm_state9)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_boolean_0 = ap_block_state4_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                if (((grp_generic_asin_20_8_s_fu_103_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state9) and (result_V_1_ack_in = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_block_state4_on_subcall_done_assign_proc : process(grp_generic_sincos_fu_110_ap_done, grp_generic_sincos_fu_117_ap_done, grp_generic_sincos_fu_124_ap_done)
    begin
                ap_block_state4_on_subcall_done <= ((grp_generic_sincos_fu_124_ap_done = ap_const_logic_0) or (grp_generic_sincos_fu_117_ap_done = ap_const_logic_0) or (grp_generic_sincos_fu_110_ap_done = ap_const_logic_0));
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    grp_fu_270_p0 <= lhs_V_fu_131_p1(20 - 1 downto 0);
    grp_fu_270_p1 <= rhs_V_fu_135_p1(20 - 1 downto 0);
    grp_fu_270_p2 <= ap_const_lv29_47(8 - 1 downto 0);
    grp_fu_278_p0 <= lhs_V_fu_131_p1(20 - 1 downto 0);
    grp_fu_278_p1 <= rhs_V_fu_135_p1(20 - 1 downto 0);
    grp_fu_278_p2 <= ap_const_lv29_47(8 - 1 downto 0);
    grp_fu_286_p2 <= ap_const_lv29_47(8 - 1 downto 0);
    grp_generic_asin_20_8_s_fu_103_ap_start <= grp_generic_asin_20_8_s_fu_103_ap_start_reg;
    grp_generic_sincos_fu_110_ap_start <= grp_generic_sincos_fu_110_ap_start_reg;
    grp_generic_sincos_fu_117_ap_start <= grp_generic_sincos_fu_117_ap_start_reg;
    grp_generic_sincos_fu_124_ap_start <= grp_generic_sincos_fu_124_ap_start_reg;

    lat_a_V_0_ack_out_assign_proc : process(result_V_1_ack_in, ap_CS_fsm_state2, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_const_logic_1 = ap_CS_fsm_state9) and (result_V_1_ack_in = ap_const_logic_1)))) then 
            lat_a_V_0_ack_out <= ap_const_logic_1;
        else 
            lat_a_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    lat_b_V_0_ack_out_assign_proc : process(result_V_1_ack_in, ap_CS_fsm_state2, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_const_logic_1 = ap_CS_fsm_state9) and (result_V_1_ack_in = ap_const_logic_1)))) then 
            lat_b_V_0_ack_out <= ap_const_logic_1;
        else 
            lat_b_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;

        lhs_V_fu_131_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(lat_a_V_0_data_reg),21));


    lon_a_V_0_ack_out_assign_proc : process(result_V_1_ack_in, ap_CS_fsm_state2, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_const_logic_1 = ap_CS_fsm_state9) and (result_V_1_ack_in = ap_const_logic_1)))) then 
            lon_a_V_0_ack_out <= ap_const_logic_1;
        else 
            lon_a_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    lon_b_V_0_ack_out_assign_proc : process(result_V_1_ack_in, ap_CS_fsm_state2, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_const_logic_1 = ap_CS_fsm_state9) and (result_V_1_ack_in = ap_const_logic_1)))) then 
            lon_b_V_0_ack_out <= ap_const_logic_1;
        else 
            lon_b_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;

    out_V_3_fu_231_p2 <= std_logic_vector(unsigned(ap_const_lv15_1921) - unsigned(grp_generic_asin_20_8_s_fu_103_ap_return));
    out_V_4_fu_251_p3 <= 
        out_V_reg_370 when (tmp_1_reg_365(0) = '1') else 
        out_V_3_reg_360;
    out_V_fu_245_p2 <= std_logic_vector(unsigned(ap_const_lv15_0) - unsigned(out_V_3_fu_231_p2));
    r_V_6_fu_305_p1 <= ap_const_lv32_FFFB8C8F(20 - 1 downto 0);

    result_V_1_ack_in_assign_proc : process(result_V_1_vld_reg)
    begin
        if (((result_V_1_vld_reg = ap_const_logic_0) or ((ap_const_logic_1 = ap_const_logic_1) and (result_V_1_vld_reg = ap_const_logic_1)))) then 
            result_V_1_ack_in <= ap_const_logic_1;
        else 
            result_V_1_ack_in <= ap_const_logic_0;
        end if; 
    end process;


    result_V_1_data_in_assign_proc : process(ap_CS_fsm_state6, sext_ln708_fu_227_p1, ap_CS_fsm_state8, r_V_6_fu_305_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            result_V_1_data_in <= r_V_6_fu_305_p2(31 downto 12);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            result_V_1_data_in <= sext_ln708_fu_227_p1;
        else 
            result_V_1_data_in <= "XXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    result_V_1_vld_in_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            result_V_1_vld_in <= ap_const_logic_1;
        else 
            result_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    ret_V_5_fu_208_p2 <= std_logic_vector(signed(grp_fu_294_p4) - signed(sext_ln728_1_fu_204_p1));
    rhs_V_2_fu_186_p3 <= (trunc_ln_reg_327 & ap_const_lv12_0);
    rhs_V_3_fu_197_p3 <= (trunc_ln708_1_reg_333 & ap_const_lv12_0);
        rhs_V_fu_135_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(lat_b_V_0_data_reg),21));

        sext_ln708_1_fu_223_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_reg_344),19));

        sext_ln708_fu_227_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_reg_344),20));

        sext_ln728_1_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(rhs_V_3_fu_197_p3),29));

end behav;
