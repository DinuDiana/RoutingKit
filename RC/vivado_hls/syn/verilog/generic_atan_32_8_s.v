// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module generic_atan_32_8_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_V,
        ap_return
);

parameter    ap_ST_fsm_state1 = 39'd1;
parameter    ap_ST_fsm_state2 = 39'd2;
parameter    ap_ST_fsm_state3 = 39'd4;
parameter    ap_ST_fsm_state4 = 39'd8;
parameter    ap_ST_fsm_state5 = 39'd16;
parameter    ap_ST_fsm_state6 = 39'd32;
parameter    ap_ST_fsm_state7 = 39'd64;
parameter    ap_ST_fsm_state8 = 39'd128;
parameter    ap_ST_fsm_state9 = 39'd256;
parameter    ap_ST_fsm_state10 = 39'd512;
parameter    ap_ST_fsm_state11 = 39'd1024;
parameter    ap_ST_fsm_state12 = 39'd2048;
parameter    ap_ST_fsm_state13 = 39'd4096;
parameter    ap_ST_fsm_state14 = 39'd8192;
parameter    ap_ST_fsm_state15 = 39'd16384;
parameter    ap_ST_fsm_state16 = 39'd32768;
parameter    ap_ST_fsm_state17 = 39'd65536;
parameter    ap_ST_fsm_state18 = 39'd131072;
parameter    ap_ST_fsm_state19 = 39'd262144;
parameter    ap_ST_fsm_state20 = 39'd524288;
parameter    ap_ST_fsm_state21 = 39'd1048576;
parameter    ap_ST_fsm_state22 = 39'd2097152;
parameter    ap_ST_fsm_state23 = 39'd4194304;
parameter    ap_ST_fsm_state24 = 39'd8388608;
parameter    ap_ST_fsm_state25 = 39'd16777216;
parameter    ap_ST_fsm_state26 = 39'd33554432;
parameter    ap_ST_fsm_state27 = 39'd67108864;
parameter    ap_ST_fsm_state28 = 39'd134217728;
parameter    ap_ST_fsm_state29 = 39'd268435456;
parameter    ap_ST_fsm_state30 = 39'd536870912;
parameter    ap_ST_fsm_state31 = 39'd1073741824;
parameter    ap_ST_fsm_state32 = 39'd2147483648;
parameter    ap_ST_fsm_state33 = 39'd4294967296;
parameter    ap_ST_fsm_state34 = 39'd8589934592;
parameter    ap_ST_fsm_state35 = 39'd17179869184;
parameter    ap_ST_fsm_state36 = 39'd34359738368;
parameter    ap_ST_fsm_state37 = 39'd68719476736;
parameter    ap_ST_fsm_pp0_stage0 = 39'd137438953472;
parameter    ap_ST_fsm_state40 = 39'd274877906944;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] in_V;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [38:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] cordic_apfixed_circ_address0;
reg    cordic_apfixed_circ_ce0;
wire   [125:0] cordic_apfixed_circ_q0;
reg   [33:0] p_Val2_29_reg_188;
reg   [33:0] p_Val2_27_reg_199;
reg   [33:0] p_Val2_23_reg_209;
reg   [5:0] ush_reg_221;
wire   [0:0] sign0_V_fu_237_p2;
reg   [0:0] sign0_V_reg_872;
wire   [31:0] inabs_V_fu_249_p3;
reg   [31:0] inabs_V_reg_877;
wire   [32:0] zext_ln1494_fu_257_p1;
reg   [32:0] zext_ln1494_reg_883;
wire   [0:0] sign1_V_fu_261_p2;
reg   [0:0] sign1_V_reg_889;
wire   [33:0] zext_ln728_fu_273_p1;
wire   [31:0] l_fu_303_p1;
reg   [31:0] l_reg_899;
wire   [10:0] trunc_ln893_fu_307_p1;
reg   [10:0] trunc_ln893_reg_904;
wire   [31:0] sub_ln894_fu_311_p2;
reg   [31:0] sub_ln894_reg_909;
wire    ap_CS_fsm_state2;
wire   [31:0] or_ln_fu_408_p3;
reg   [31:0] or_ln_reg_915;
wire   [0:0] icmp_ln908_fu_416_p2;
reg   [0:0] icmp_ln908_reg_920;
reg   [62:0] m_5_reg_925;
wire    ap_CS_fsm_state3;
reg   [0:0] tmp_7_reg_930;
wire   [63:0] p_Result_8_fu_517_p5;
reg   [63:0] p_Result_8_reg_935;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire   [63:0] grp_fu_232_p2;
reg   [63:0] v_assign_reg_945;
wire    ap_CS_fsm_state35;
wire   [53:0] man_V_2_fu_584_p3;
reg   [53:0] man_V_2_reg_950;
wire    ap_CS_fsm_state36;
wire   [0:0] icmp_ln571_fu_592_p2;
reg   [0:0] icmp_ln571_reg_955;
wire   [0:0] icmp_ln581_fu_614_p2;
reg   [0:0] icmp_ln581_reg_959;
wire  signed [31:0] sext_ln581_fu_640_p1;
reg  signed [31:0] sext_ln581_reg_963;
wire   [0:0] icmp_ln582_fu_644_p2;
reg   [0:0] icmp_ln582_reg_969;
wire   [33:0] trunc_ln602_fu_650_p1;
reg   [33:0] trunc_ln602_reg_973;
wire   [0:0] icmp_ln603_fu_654_p2;
reg   [0:0] icmp_ln603_reg_978;
wire   [0:0] icmp_ln585_fu_660_p2;
reg   [0:0] icmp_ln585_reg_982;
wire   [33:0] select_ln588_fu_674_p3;
wire   [33:0] trunc_ln583_fu_682_p1;
wire   [0:0] icmp_ln87_fu_708_p2;
reg   [0:0] icmp_ln87_reg_996;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state38_pp0_stage0_iter0;
wire    ap_block_state39_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] n_fu_714_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_11_fu_741_p3;
reg   [0:0] tmp_11_reg_1010;
wire   [33:0] ty_V_fu_773_p3;
wire   [33:0] tx_V_fu_781_p3;
wire   [33:0] tz_V_fu_815_p3;
reg    ap_enable_reg_pp0_iter1;
wire    ap_CS_fsm_state37;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state38;
reg   [33:0] ap_phi_mux_p_Val2_27_ph_phi_fu_169_p14;
reg   [33:0] p_Val2_27_ph_reg_165;
wire   [33:0] trunc_ln586_fu_703_p1;
wire   [33:0] shl_ln604_fu_689_p2;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln99_fu_736_p1;
wire   [63:0] grp_fu_232_p1;
wire   [31:0] sub_ln1253_fu_243_p2;
wire   [31:0] y_V_fu_267_p2;
reg   [32:0] p_Result_s_fu_277_p4;
wire   [63:0] p_Result_7_fu_287_p3;
reg   [63:0] tmp_fu_295_p3;
wire   [31:0] lsb_index_fu_316_p2;
wire   [30:0] tmp_4_fu_322_p4;
wire   [5:0] trunc_ln897_fu_338_p1;
wire   [5:0] sub_ln897_fu_342_p2;
wire   [32:0] zext_ln897_fu_348_p1;
wire   [32:0] lshr_ln897_fu_352_p2;
wire   [32:0] p_Result_2_fu_358_p2;
wire   [0:0] icmp_ln897_fu_332_p2;
wire   [0:0] icmp_ln897_1_fu_363_p2;
wire   [0:0] tmp_6_fu_375_p3;
wire   [0:0] p_Result_3_fu_389_p3;
wire   [0:0] xor_ln899_fu_383_p2;
wire   [0:0] and_ln899_fu_396_p2;
wire   [0:0] a_fu_369_p2;
wire   [0:0] or_ln899_fu_402_p2;
wire   [31:0] add_ln908_fu_425_p2;
wire   [31:0] lshr_ln908_fu_430_p2;
wire   [31:0] sub_ln908_fu_439_p2;
wire   [63:0] m_fu_422_p1;
wire   [63:0] zext_ln908_1_fu_444_p1;
wire   [63:0] zext_ln908_fu_435_p1;
wire   [63:0] shl_ln908_fu_448_p2;
wire   [63:0] m_1_fu_454_p3;
wire   [63:0] zext_ln911_fu_461_p1;
wire   [63:0] m_2_fu_464_p2;
wire   [10:0] sub_ln915_fu_498_p2;
wire   [10:0] select_ln915_fu_491_p3;
wire   [10:0] add_ln915_fu_503_p2;
wire   [63:0] m_6_fu_488_p1;
wire   [11:0] tmp_2_fu_509_p3;
wire   [63:0] ireg_V_fu_533_p1;
wire   [10:0] exp_tmp_V_fu_548_p4;
wire   [51:0] trunc_ln565_fu_562_p1;
wire   [52:0] tmp_3_fu_566_p3;
wire   [53:0] p_Result_10_fu_574_p1;
wire   [0:0] p_Result_9_fu_540_p3;
wire   [53:0] man_V_1_fu_578_p2;
wire   [62:0] trunc_ln556_fu_536_p1;
wire   [11:0] zext_ln461_fu_558_p1;
wire   [11:0] F2_fu_598_p2;
wire   [6:0] tmp_9_fu_604_p4;
wire   [11:0] add_ln581_fu_620_p2;
wire   [11:0] sub_ln581_fu_626_p2;
wire  signed [11:0] sh_amt_fu_632_p3;
wire   [0:0] tmp_10_fu_666_p3;
wire   [33:0] zext_ln604_fu_686_p1;
wire   [53:0] zext_ln586_fu_695_p1;
wire   [53:0] ashr_ln586_fu_698_p2;
wire   [33:0] zext_ln1299_fu_720_p1;
wire   [33:0] r_V_10_fu_730_p2;
wire   [33:0] r_V_fu_724_p2;
wire   [33:0] add_ln203_4_fu_767_p2;
wire   [33:0] sub_ln203_fu_755_p2;
wire   [33:0] sub_ln203_3_fu_761_p2;
wire   [33:0] add_ln203_fu_749_p2;
wire   [30:0] tmp_5_fu_789_p4;
wire   [33:0] z_s_V_fu_799_p1;
wire   [33:0] sub_ln203_4_fu_809_p2;
wire   [33:0] add_ln203_3_fu_803_p2;
wire    ap_CS_fsm_state40;
wire   [34:0] zext_ln703_fu_822_p1;
wire   [34:0] ret_V_fu_826_p2;
wire   [31:0] out_V_fu_832_p4;
wire   [31:0] out_V_5_fu_842_p4;
wire   [31:0] out_V_7_fu_852_p3;
wire   [31:0] sub_ln703_fu_859_p2;
reg   [38:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_895;

// power-on initialization
initial begin
#0 ap_CS_fsm = 39'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

generic_sincos_cobkb #(
    .DataWidth( 126 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
cordic_apfixed_circ_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(cordic_apfixed_circ_address0),
    .ce0(cordic_apfixed_circ_ce0),
    .q0(cordic_apfixed_circ_q0)
);

geo_dist_ddiv_64nfYi #(
    .ID( 1 ),
    .NUM_STAGE( 31 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
geo_dist_ddiv_64nfYi_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(64'd4607182418800017408),
    .din1(grp_fu_232_p1),
    .ce(1'b1),
    .dout(grp_fu_232_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state38) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state37)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state38))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state38);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b1 == ap_CS_fsm_state37)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        p_Val2_23_reg_209 <= 34'd0;
    end else if (((icmp_ln87_reg_996 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_23_reg_209 <= tz_V_fu_815_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((sign1_V_fu_261_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_Val2_27_ph_reg_165 <= zext_ln728_fu_273_p1;
    end else if (((icmp_ln603_reg_978 == 1'd1) & (icmp_ln582_reg_969 == 1'd0) & (icmp_ln581_reg_959 == 1'd0) & (icmp_ln571_reg_955 == 1'd0) & (sign1_V_reg_889 == 1'd1) & (1'b1 == ap_CS_fsm_state37))) begin
        p_Val2_27_ph_reg_165 <= shl_ln604_fu_689_p2;
    end else if (((icmp_ln581_fu_614_p2 == 1'd1) & (icmp_ln585_fu_660_p2 == 1'd0) & (icmp_ln582_fu_644_p2 == 1'd0) & (icmp_ln571_fu_592_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state36))) begin
        p_Val2_27_ph_reg_165 <= select_ln588_fu_674_p3;
    end else if (((icmp_ln585_reg_982 == 1'd1) & (icmp_ln581_reg_959 == 1'd1) & (icmp_ln582_reg_969 == 1'd0) & (icmp_ln571_reg_955 == 1'd0) & (sign1_V_reg_889 == 1'd1) & (1'b1 == ap_CS_fsm_state37))) begin
        p_Val2_27_ph_reg_165 <= trunc_ln586_fu_703_p1;
    end else if (((icmp_ln582_fu_644_p2 == 1'd1) & (icmp_ln571_fu_592_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state36))) begin
        p_Val2_27_ph_reg_165 <= trunc_ln583_fu_682_p1;
    end else if ((((icmp_ln571_fu_592_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state36)) | ((icmp_ln603_fu_654_p2 == 1'd0) & (icmp_ln582_fu_644_p2 == 1'd0) & (icmp_ln581_fu_614_p2 == 1'd0) & (icmp_ln571_fu_592_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state36)))) begin
        p_Val2_27_ph_reg_165 <= 34'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        p_Val2_27_reg_199 <= ap_phi_mux_p_Val2_27_ph_phi_fu_169_p14;
    end else if (((icmp_ln87_fu_708_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_27_reg_199 <= ty_V_fu_773_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        p_Val2_29_reg_188 <= 34'd2147483648;
    end else if (((icmp_ln87_fu_708_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_29_reg_188 <= tx_V_fu_781_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        ush_reg_221 <= 6'd0;
    end else if (((icmp_ln87_fu_708_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ush_reg_221 <= n_fu_714_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        icmp_ln571_reg_955 <= icmp_ln571_fu_592_p2;
        man_V_2_reg_950 <= man_V_2_fu_584_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln571_fu_592_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state36))) begin
        icmp_ln581_reg_959 <= icmp_ln581_fu_614_p2;
        icmp_ln582_reg_969 <= icmp_ln582_fu_644_p2;
        sext_ln581_reg_963 <= sext_ln581_fu_640_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln581_fu_614_p2 == 1'd1) & (icmp_ln582_fu_644_p2 == 1'd0) & (icmp_ln571_fu_592_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state36))) begin
        icmp_ln585_reg_982 <= icmp_ln585_fu_660_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln582_fu_644_p2 == 1'd0) & (icmp_ln581_fu_614_p2 == 1'd0) & (icmp_ln571_fu_592_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state36))) begin
        icmp_ln603_reg_978 <= icmp_ln603_fu_654_p2;
        trunc_ln602_reg_973 <= trunc_ln602_fu_650_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln87_reg_996 <= icmp_ln87_fu_708_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln908_reg_920 <= icmp_ln908_fu_416_p2;
        or_ln_reg_915[0] <= or_ln_fu_408_p3[0];
        sub_ln894_reg_909 <= sub_ln894_fu_311_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        inabs_V_reg_877 <= inabs_V_fu_249_p3;
        sign0_V_reg_872 <= sign0_V_fu_237_p2;
        sign1_V_reg_889 <= sign1_V_fu_261_p2;
        zext_ln1494_reg_883[31 : 0] <= zext_ln1494_fu_257_p1[31 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((sign1_V_fu_261_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        l_reg_899 <= l_fu_303_p1;
        trunc_ln893_reg_904 <= trunc_ln893_fu_307_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        m_5_reg_925 <= {{m_2_fu_464_p2[63:1]}};
        tmp_7_reg_930 <= m_2_fu_464_p2[32'd54];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_Result_8_reg_935 <= p_Result_8_fu_517_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln87_fu_708_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_11_reg_1010 <= p_Val2_27_reg_199[32'd33];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        v_assign_reg_945 <= grp_fu_232_p2;
    end
end

always @ (*) begin
    if ((icmp_ln87_fu_708_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state38 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state38 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state40) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_895)) begin
        if (((icmp_ln603_reg_978 == 1'd1) & (icmp_ln581_reg_959 == 1'd0))) begin
            ap_phi_mux_p_Val2_27_ph_phi_fu_169_p14 = shl_ln604_fu_689_p2;
        end else if (((icmp_ln585_reg_982 == 1'd1) & (icmp_ln581_reg_959 == 1'd1))) begin
            ap_phi_mux_p_Val2_27_ph_phi_fu_169_p14 = trunc_ln586_fu_703_p1;
        end else begin
            ap_phi_mux_p_Val2_27_ph_phi_fu_169_p14 = p_Val2_27_ph_reg_165;
        end
    end else begin
        ap_phi_mux_p_Val2_27_ph_phi_fu_169_p14 = p_Val2_27_ph_reg_165;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        cordic_apfixed_circ_ce0 = 1'b1;
    end else begin
        cordic_apfixed_circ_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((sign1_V_fu_261_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end else if (((sign1_V_fu_261_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln87_fu_708_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln87_fu_708_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign F2_fu_598_p2 = (12'd1075 - zext_ln461_fu_558_p1);

assign a_fu_369_p2 = (icmp_ln897_fu_332_p2 & icmp_ln897_1_fu_363_p2);

assign add_ln203_3_fu_803_p2 = (z_s_V_fu_799_p1 + p_Val2_23_reg_209);

assign add_ln203_4_fu_767_p2 = (p_Val2_27_reg_199 + r_V_fu_724_p2);

assign add_ln203_fu_749_p2 = (r_V_10_fu_730_p2 + p_Val2_29_reg_188);

assign add_ln581_fu_620_p2 = ($signed(F2_fu_598_p2) + $signed(12'd4065));

assign add_ln908_fu_425_p2 = ($signed(32'd4294967242) + $signed(sub_ln894_reg_909));

assign add_ln915_fu_503_p2 = (sub_ln915_fu_498_p2 + select_ln915_fu_491_p3);

assign and_ln899_fu_396_p2 = (xor_ln899_fu_383_p2 & p_Result_3_fu_389_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd37];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];

assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];

assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state40 = ap_CS_fsm[32'd38];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state38_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state39_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_895 = ((icmp_ln582_reg_969 == 1'd0) & (icmp_ln571_reg_955 == 1'd0) & (sign1_V_reg_889 == 1'd1) & (1'b1 == ap_CS_fsm_state37));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return = ((sign0_V_reg_872[0:0] === 1'b1) ? out_V_7_fu_852_p3 : sub_ln703_fu_859_p2);

assign ashr_ln586_fu_698_p2 = $signed(man_V_2_reg_950) >>> zext_ln586_fu_695_p1;

assign cordic_apfixed_circ_address0 = zext_ln99_fu_736_p1;

assign exp_tmp_V_fu_548_p4 = {{ireg_V_fu_533_p1[62:52]}};

assign grp_fu_232_p1 = p_Result_8_reg_935;

assign icmp_ln571_fu_592_p2 = ((trunc_ln556_fu_536_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln581_fu_614_p2 = (($signed(tmp_9_fu_604_p4) > $signed(7'd0)) ? 1'b1 : 1'b0);

assign icmp_ln582_fu_644_p2 = ((F2_fu_598_p2 == 12'd31) ? 1'b1 : 1'b0);

assign icmp_ln585_fu_660_p2 = ((sh_amt_fu_632_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln603_fu_654_p2 = ((sh_amt_fu_632_p3 < 12'd34) ? 1'b1 : 1'b0);

assign icmp_ln87_fu_708_p2 = ((ush_reg_221 == 6'd34) ? 1'b1 : 1'b0);

assign icmp_ln897_1_fu_363_p2 = ((p_Result_2_fu_358_p2 != 33'd0) ? 1'b1 : 1'b0);

assign icmp_ln897_fu_332_p2 = (($signed(tmp_4_fu_322_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln908_fu_416_p2 = (($signed(lsb_index_fu_316_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign inabs_V_fu_249_p3 = ((sign0_V_fu_237_p2[0:0] === 1'b1) ? in_V : sub_ln1253_fu_243_p2);

assign ireg_V_fu_533_p1 = v_assign_reg_945;

assign l_fu_303_p1 = tmp_fu_295_p3[31:0];

assign lsb_index_fu_316_p2 = ($signed(32'd4294967243) + $signed(sub_ln894_fu_311_p2));

assign lshr_ln897_fu_352_p2 = 33'd8589934591 >> zext_ln897_fu_348_p1;

assign lshr_ln908_fu_430_p2 = inabs_V_reg_877 >> add_ln908_fu_425_p2;

assign m_1_fu_454_p3 = ((icmp_ln908_reg_920[0:0] === 1'b1) ? zext_ln908_fu_435_p1 : shl_ln908_fu_448_p2);

assign m_2_fu_464_p2 = (m_1_fu_454_p3 + zext_ln911_fu_461_p1);

assign m_6_fu_488_p1 = m_5_reg_925;

assign m_fu_422_p1 = inabs_V_reg_877;

assign man_V_1_fu_578_p2 = (54'd0 - p_Result_10_fu_574_p1);

assign man_V_2_fu_584_p3 = ((p_Result_9_fu_540_p3[0:0] === 1'b1) ? man_V_1_fu_578_p2 : p_Result_10_fu_574_p1);

assign n_fu_714_p2 = (ush_reg_221 + 6'd1);

assign or_ln899_fu_402_p2 = (and_ln899_fu_396_p2 | a_fu_369_p2);

assign or_ln_fu_408_p3 = {{31'd0}, {or_ln899_fu_402_p2}};

assign out_V_5_fu_842_p4 = {{p_Val2_23_reg_209[32:1]}};

assign out_V_7_fu_852_p3 = ((sign1_V_reg_889[0:0] === 1'b1) ? out_V_fu_832_p4 : out_V_5_fu_842_p4);

assign out_V_fu_832_p4 = {{ret_V_fu_826_p2[32:1]}};

assign p_Result_10_fu_574_p1 = tmp_3_fu_566_p3;

assign p_Result_2_fu_358_p2 = (zext_ln1494_reg_883 & lshr_ln897_fu_352_p2);

assign p_Result_3_fu_389_p3 = zext_ln1494_reg_883[lsb_index_fu_316_p2];

assign p_Result_7_fu_287_p3 = {{31'd2147483647}, {p_Result_s_fu_277_p4}};

assign p_Result_8_fu_517_p5 = {{tmp_2_fu_509_p3}, {m_6_fu_488_p1[51:0]}};

assign p_Result_9_fu_540_p3 = ireg_V_fu_533_p1[32'd63];

integer ap_tvar_int_0;

always @ (zext_ln1494_fu_257_p1) begin
    for (ap_tvar_int_0 = 33 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 32 - 0) begin
            p_Result_s_fu_277_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_s_fu_277_p4[ap_tvar_int_0] = zext_ln1494_fu_257_p1[32 - ap_tvar_int_0];
        end
    end
end

assign r_V_10_fu_730_p2 = $signed(p_Val2_27_reg_199) >>> zext_ln1299_fu_720_p1;

assign r_V_fu_724_p2 = $signed(p_Val2_29_reg_188) >>> zext_ln1299_fu_720_p1;

assign ret_V_fu_826_p2 = (35'd3373259426 - zext_ln703_fu_822_p1);

assign select_ln588_fu_674_p3 = ((tmp_10_fu_666_p3[0:0] === 1'b1) ? 34'd17179869183 : 34'd0);

assign select_ln915_fu_491_p3 = ((tmp_7_reg_930[0:0] === 1'b1) ? 11'd1023 : 11'd1022);

assign sext_ln581_fu_640_p1 = sh_amt_fu_632_p3;

assign sh_amt_fu_632_p3 = ((icmp_ln581_fu_614_p2[0:0] === 1'b1) ? add_ln581_fu_620_p2 : sub_ln581_fu_626_p2);

assign shl_ln604_fu_689_p2 = trunc_ln602_reg_973 << zext_ln604_fu_686_p1;

assign shl_ln908_fu_448_p2 = m_fu_422_p1 << zext_ln908_1_fu_444_p1;

assign sign0_V_fu_237_p2 = (($signed(in_V) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign sign1_V_fu_261_p2 = ((inabs_V_fu_249_p3 > 32'd16777216) ? 1'b1 : 1'b0);

assign sub_ln1253_fu_243_p2 = (32'd0 - in_V);

assign sub_ln203_3_fu_761_p2 = (p_Val2_29_reg_188 - r_V_10_fu_730_p2);

assign sub_ln203_4_fu_809_p2 = (p_Val2_23_reg_209 - z_s_V_fu_799_p1);

assign sub_ln203_fu_755_p2 = (p_Val2_27_reg_199 - r_V_fu_724_p2);

assign sub_ln581_fu_626_p2 = (12'd31 - F2_fu_598_p2);

assign sub_ln703_fu_859_p2 = (32'd0 - out_V_7_fu_852_p3);

assign sub_ln894_fu_311_p2 = (32'd33 - l_reg_899);

assign sub_ln897_fu_342_p2 = (6'd23 - trunc_ln897_fu_338_p1);

assign sub_ln908_fu_439_p2 = (32'd54 - sub_ln894_reg_909);

assign sub_ln915_fu_498_p2 = (11'd9 - trunc_ln893_reg_904);

assign tmp_10_fu_666_p3 = ireg_V_fu_533_p1[32'd63];

assign tmp_11_fu_741_p3 = p_Val2_27_reg_199[32'd33];

assign tmp_2_fu_509_p3 = {{1'd0}, {add_ln915_fu_503_p2}};

assign tmp_3_fu_566_p3 = {{1'd1}, {trunc_ln565_fu_562_p1}};

assign tmp_4_fu_322_p4 = {{lsb_index_fu_316_p2[31:1]}};

assign tmp_5_fu_789_p4 = {{cordic_apfixed_circ_q0[125:95]}};

assign tmp_6_fu_375_p3 = lsb_index_fu_316_p2[32'd31];

assign tmp_9_fu_604_p4 = {{F2_fu_598_p2[11:5]}};


always @ (p_Result_7_fu_287_p3) begin
    if (p_Result_7_fu_287_p3[0] == 1'b1) begin
        tmp_fu_295_p3 = 64'd0;
    end else if (p_Result_7_fu_287_p3[1] == 1'b1) begin
        tmp_fu_295_p3 = 64'd1;
    end else if (p_Result_7_fu_287_p3[2] == 1'b1) begin
        tmp_fu_295_p3 = 64'd2;
    end else if (p_Result_7_fu_287_p3[3] == 1'b1) begin
        tmp_fu_295_p3 = 64'd3;
    end else if (p_Result_7_fu_287_p3[4] == 1'b1) begin
        tmp_fu_295_p3 = 64'd4;
    end else if (p_Result_7_fu_287_p3[5] == 1'b1) begin
        tmp_fu_295_p3 = 64'd5;
    end else if (p_Result_7_fu_287_p3[6] == 1'b1) begin
        tmp_fu_295_p3 = 64'd6;
    end else if (p_Result_7_fu_287_p3[7] == 1'b1) begin
        tmp_fu_295_p3 = 64'd7;
    end else if (p_Result_7_fu_287_p3[8] == 1'b1) begin
        tmp_fu_295_p3 = 64'd8;
    end else if (p_Result_7_fu_287_p3[9] == 1'b1) begin
        tmp_fu_295_p3 = 64'd9;
    end else if (p_Result_7_fu_287_p3[10] == 1'b1) begin
        tmp_fu_295_p3 = 64'd10;
    end else if (p_Result_7_fu_287_p3[11] == 1'b1) begin
        tmp_fu_295_p3 = 64'd11;
    end else if (p_Result_7_fu_287_p3[12] == 1'b1) begin
        tmp_fu_295_p3 = 64'd12;
    end else if (p_Result_7_fu_287_p3[13] == 1'b1) begin
        tmp_fu_295_p3 = 64'd13;
    end else if (p_Result_7_fu_287_p3[14] == 1'b1) begin
        tmp_fu_295_p3 = 64'd14;
    end else if (p_Result_7_fu_287_p3[15] == 1'b1) begin
        tmp_fu_295_p3 = 64'd15;
    end else if (p_Result_7_fu_287_p3[16] == 1'b1) begin
        tmp_fu_295_p3 = 64'd16;
    end else if (p_Result_7_fu_287_p3[17] == 1'b1) begin
        tmp_fu_295_p3 = 64'd17;
    end else if (p_Result_7_fu_287_p3[18] == 1'b1) begin
        tmp_fu_295_p3 = 64'd18;
    end else if (p_Result_7_fu_287_p3[19] == 1'b1) begin
        tmp_fu_295_p3 = 64'd19;
    end else if (p_Result_7_fu_287_p3[20] == 1'b1) begin
        tmp_fu_295_p3 = 64'd20;
    end else if (p_Result_7_fu_287_p3[21] == 1'b1) begin
        tmp_fu_295_p3 = 64'd21;
    end else if (p_Result_7_fu_287_p3[22] == 1'b1) begin
        tmp_fu_295_p3 = 64'd22;
    end else if (p_Result_7_fu_287_p3[23] == 1'b1) begin
        tmp_fu_295_p3 = 64'd23;
    end else if (p_Result_7_fu_287_p3[24] == 1'b1) begin
        tmp_fu_295_p3 = 64'd24;
    end else if (p_Result_7_fu_287_p3[25] == 1'b1) begin
        tmp_fu_295_p3 = 64'd25;
    end else if (p_Result_7_fu_287_p3[26] == 1'b1) begin
        tmp_fu_295_p3 = 64'd26;
    end else if (p_Result_7_fu_287_p3[27] == 1'b1) begin
        tmp_fu_295_p3 = 64'd27;
    end else if (p_Result_7_fu_287_p3[28] == 1'b1) begin
        tmp_fu_295_p3 = 64'd28;
    end else if (p_Result_7_fu_287_p3[29] == 1'b1) begin
        tmp_fu_295_p3 = 64'd29;
    end else if (p_Result_7_fu_287_p3[30] == 1'b1) begin
        tmp_fu_295_p3 = 64'd30;
    end else if (p_Result_7_fu_287_p3[31] == 1'b1) begin
        tmp_fu_295_p3 = 64'd31;
    end else if (p_Result_7_fu_287_p3[32] == 1'b1) begin
        tmp_fu_295_p3 = 64'd32;
    end else if (p_Result_7_fu_287_p3[33] == 1'b1) begin
        tmp_fu_295_p3 = 64'd33;
    end else if (p_Result_7_fu_287_p3[34] == 1'b1) begin
        tmp_fu_295_p3 = 64'd34;
    end else if (p_Result_7_fu_287_p3[35] == 1'b1) begin
        tmp_fu_295_p3 = 64'd35;
    end else if (p_Result_7_fu_287_p3[36] == 1'b1) begin
        tmp_fu_295_p3 = 64'd36;
    end else if (p_Result_7_fu_287_p3[37] == 1'b1) begin
        tmp_fu_295_p3 = 64'd37;
    end else if (p_Result_7_fu_287_p3[38] == 1'b1) begin
        tmp_fu_295_p3 = 64'd38;
    end else if (p_Result_7_fu_287_p3[39] == 1'b1) begin
        tmp_fu_295_p3 = 64'd39;
    end else if (p_Result_7_fu_287_p3[40] == 1'b1) begin
        tmp_fu_295_p3 = 64'd40;
    end else if (p_Result_7_fu_287_p3[41] == 1'b1) begin
        tmp_fu_295_p3 = 64'd41;
    end else if (p_Result_7_fu_287_p3[42] == 1'b1) begin
        tmp_fu_295_p3 = 64'd42;
    end else if (p_Result_7_fu_287_p3[43] == 1'b1) begin
        tmp_fu_295_p3 = 64'd43;
    end else if (p_Result_7_fu_287_p3[44] == 1'b1) begin
        tmp_fu_295_p3 = 64'd44;
    end else if (p_Result_7_fu_287_p3[45] == 1'b1) begin
        tmp_fu_295_p3 = 64'd45;
    end else if (p_Result_7_fu_287_p3[46] == 1'b1) begin
        tmp_fu_295_p3 = 64'd46;
    end else if (p_Result_7_fu_287_p3[47] == 1'b1) begin
        tmp_fu_295_p3 = 64'd47;
    end else if (p_Result_7_fu_287_p3[48] == 1'b1) begin
        tmp_fu_295_p3 = 64'd48;
    end else if (p_Result_7_fu_287_p3[49] == 1'b1) begin
        tmp_fu_295_p3 = 64'd49;
    end else if (p_Result_7_fu_287_p3[50] == 1'b1) begin
        tmp_fu_295_p3 = 64'd50;
    end else if (p_Result_7_fu_287_p3[51] == 1'b1) begin
        tmp_fu_295_p3 = 64'd51;
    end else if (p_Result_7_fu_287_p3[52] == 1'b1) begin
        tmp_fu_295_p3 = 64'd52;
    end else if (p_Result_7_fu_287_p3[53] == 1'b1) begin
        tmp_fu_295_p3 = 64'd53;
    end else if (p_Result_7_fu_287_p3[54] == 1'b1) begin
        tmp_fu_295_p3 = 64'd54;
    end else if (p_Result_7_fu_287_p3[55] == 1'b1) begin
        tmp_fu_295_p3 = 64'd55;
    end else if (p_Result_7_fu_287_p3[56] == 1'b1) begin
        tmp_fu_295_p3 = 64'd56;
    end else if (p_Result_7_fu_287_p3[57] == 1'b1) begin
        tmp_fu_295_p3 = 64'd57;
    end else if (p_Result_7_fu_287_p3[58] == 1'b1) begin
        tmp_fu_295_p3 = 64'd58;
    end else if (p_Result_7_fu_287_p3[59] == 1'b1) begin
        tmp_fu_295_p3 = 64'd59;
    end else if (p_Result_7_fu_287_p3[60] == 1'b1) begin
        tmp_fu_295_p3 = 64'd60;
    end else if (p_Result_7_fu_287_p3[61] == 1'b1) begin
        tmp_fu_295_p3 = 64'd61;
    end else if (p_Result_7_fu_287_p3[62] == 1'b1) begin
        tmp_fu_295_p3 = 64'd62;
    end else if (p_Result_7_fu_287_p3[63] == 1'b1) begin
        tmp_fu_295_p3 = 64'd63;
    end else begin
        tmp_fu_295_p3 = 64'd64;
    end
end

assign trunc_ln556_fu_536_p1 = ireg_V_fu_533_p1[62:0];

assign trunc_ln565_fu_562_p1 = ireg_V_fu_533_p1[51:0];

assign trunc_ln583_fu_682_p1 = man_V_2_fu_584_p3[33:0];

assign trunc_ln586_fu_703_p1 = ashr_ln586_fu_698_p2[33:0];

assign trunc_ln602_fu_650_p1 = man_V_2_fu_584_p3[33:0];

assign trunc_ln893_fu_307_p1 = tmp_fu_295_p3[10:0];

assign trunc_ln897_fu_338_p1 = sub_ln894_fu_311_p2[5:0];

assign tx_V_fu_781_p3 = ((tmp_11_fu_741_p3[0:0] === 1'b1) ? sub_ln203_3_fu_761_p2 : add_ln203_fu_749_p2);

assign ty_V_fu_773_p3 = ((tmp_11_fu_741_p3[0:0] === 1'b1) ? add_ln203_4_fu_767_p2 : sub_ln203_fu_755_p2);

assign tz_V_fu_815_p3 = ((tmp_11_reg_1010[0:0] === 1'b1) ? sub_ln203_4_fu_809_p2 : add_ln203_3_fu_803_p2);

assign xor_ln899_fu_383_p2 = (tmp_6_fu_375_p3 ^ 1'd1);

assign y_V_fu_267_p2 = inabs_V_fu_249_p3 << 32'd7;

assign z_s_V_fu_799_p1 = tmp_5_fu_789_p4;

assign zext_ln1299_fu_720_p1 = ush_reg_221;

assign zext_ln1494_fu_257_p1 = inabs_V_fu_249_p3;

assign zext_ln461_fu_558_p1 = exp_tmp_V_fu_548_p4;

assign zext_ln586_fu_695_p1 = $unsigned(sext_ln581_reg_963);

assign zext_ln604_fu_686_p1 = $unsigned(sext_ln581_reg_963);

assign zext_ln703_fu_822_p1 = p_Val2_23_reg_209;

assign zext_ln728_fu_273_p1 = y_V_fu_267_p2;

assign zext_ln897_fu_348_p1 = sub_ln897_fu_342_p2;

assign zext_ln908_1_fu_444_p1 = sub_ln908_fu_439_p2;

assign zext_ln908_fu_435_p1 = lshr_ln908_fu_430_p2;

assign zext_ln911_fu_461_p1 = or_ln_reg_915;

assign zext_ln99_fu_736_p1 = ush_reg_221;

always @ (posedge ap_clk) begin
    zext_ln1494_reg_883[32] <= 1'b0;
    or_ln_reg_915[31:1] <= 31'b0000000000000000000000000000000;
end

endmodule //generic_atan_32_8_s
