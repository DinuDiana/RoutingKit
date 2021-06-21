// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module generic_sincos (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_V,
        ap_return
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [28:0] in_V;
output  [25:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] cordic_apfixed_circ_address0;
reg    cordic_apfixed_circ_ce0;
wire   [125:0] cordic_apfixed_circ_q0;
wire   [26:0] p_Val2_s_fu_177_p3;
reg   [26:0] p_Val2_s_reg_495;
wire   [24:0] trunc_ln728_fu_185_p1;
reg   [24:0] trunc_ln728_reg_500;
wire    ap_CS_fsm_state2;
reg   [1:0] k_V_reg_510;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire   [42:0] grp_fu_211_p2;
reg   [42:0] mul_ln1193_reg_524;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln879_fu_239_p2;
reg   [0:0] icmp_ln879_reg_529;
wire    ap_CS_fsm_state9;
wire   [41:0] z_V_fu_289_p3;
reg   [41:0] z_V_reg_535;
wire  signed [42:0] sext_ln251_fu_297_p1;
wire    ap_CS_fsm_state10;
wire   [5:0] n_fu_306_p2;
reg   [5:0] n_reg_548;
wire    ap_CS_fsm_state11;
wire   [0:0] icmp_ln87_fu_300_p2;
wire   [42:0] add_ln203_fu_333_p2;
reg   [42:0] add_ln203_reg_558;
wire   [42:0] sub_ln203_fu_339_p2;
reg   [42:0] sub_ln203_reg_563;
wire   [42:0] sub_ln203_1_fu_345_p2;
reg   [42:0] sub_ln203_1_reg_568;
wire   [42:0] add_ln203_2_fu_351_p2;
reg   [42:0] add_ln203_2_reg_573;
wire   [42:0] tz_V_fu_391_p3;
wire    ap_CS_fsm_state12;
wire   [42:0] ty_V_fu_399_p3;
wire   [42:0] tx_V_fu_405_p3;
reg   [42:0] p_Val2_13_reg_113;
reg   [42:0] p_Val2_18_reg_125;
reg   [42:0] p_Val2_15_reg_136;
reg   [5:0] ush_reg_146;
wire   [63:0] zext_ln99_fu_328_p1;
wire   [27:0] trunc_ln1494_fu_157_p1;
wire   [26:0] trunc_ln703_fu_167_p1;
wire   [0:0] sign0_V_fu_161_p2;
wire   [26:0] sub_ln703_fu_171_p2;
wire   [59:0] grp_fu_192_p0;
wire   [26:0] grp_fu_192_p1;
wire   [84:0] grp_fu_192_p2;
wire   [41:0] grp_fu_211_p0;
wire   [1:0] grp_fu_211_p1;
wire   [42:0] lhs_V_fu_217_p3;
wire   [42:0] ret_V_fu_224_p2;
wire   [40:0] trunc_ln708_7_fu_244_p4;
wire   [41:0] p_Val2_11_fu_229_p4;
wire   [42:0] rhs_V_fu_258_p1;
wire   [42:0] ret_V_6_fu_262_p2;
wire   [0:0] icmp_ln251_fu_278_p2;
wire   [0:0] or_ln251_fu_283_p2;
wire   [41:0] trunc_ln2_fu_268_p4;
wire   [41:0] zext_ln203_fu_254_p1;
wire   [42:0] zext_ln1299_fu_312_p1;
wire   [42:0] r_V_8_fu_322_p2;
wire   [42:0] r_V_7_fu_316_p2;
wire   [39:0] tmp_fu_357_p4;
wire   [42:0] z_s_V_fu_367_p1;
wire   [0:0] tmp_2_fu_371_p3;
wire   [42:0] add_ln203_1_fu_379_p2;
wire   [42:0] sub_ln203_2_fu_385_p2;
wire    ap_CS_fsm_state13;
wire   [41:0] trunc_ln1253_fu_416_p1;
wire   [41:0] r_V_9_fu_420_p2;
wire   [0:0] icmp_ln879_1_fu_411_p2;
wire   [0:0] xor_ln879_fu_451_p2;
wire   [0:0] and_ln879_fu_457_p2;
wire   [25:0] trunc_ln708_5_fu_426_p4;
wire   [25:0] trunc_ln4_fu_441_p4;
wire   [0:0] or_ln879_fu_470_p2;
wire   [0:0] icmp_ln879_2_fu_436_p2;
wire   [0:0] xor_ln879_1_fu_475_p2;
wire   [0:0] and_ln879_1_fu_481_p2;
wire   [25:0] select_ln879_fu_462_p3;
reg   [12:0] ap_NS_fsm;
wire   [84:0] grp_fu_192_p10;
wire   [42:0] grp_fu_211_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 13'd1;
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

geo_dist_mul_60nscud #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 60 ),
    .din1_WIDTH( 27 ),
    .dout_WIDTH( 85 ))
geo_dist_mul_60nscud_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_192_p0),
    .din1(grp_fu_192_p1),
    .ce(1'b1),
    .dout(grp_fu_192_p2)
);

geo_dist_mul_42nsdEe #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 42 ),
    .din1_WIDTH( 2 ),
    .dout_WIDTH( 43 ))
geo_dist_mul_42nsdEe_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_211_p0),
    .din1(grp_fu_211_p1),
    .ce(1'b1),
    .dout(grp_fu_211_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_Val2_13_reg_113 <= 43'd667681663043;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        p_Val2_13_reg_113 <= tx_V_fu_405_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_Val2_15_reg_136 <= sext_ln251_fu_297_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        p_Val2_15_reg_136 <= tz_V_fu_391_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_Val2_18_reg_125 <= 43'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        p_Val2_18_reg_125 <= ty_V_fu_399_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ush_reg_146 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        ush_reg_146 <= n_reg_548;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln87_fu_300_p2 == 1'd0))) begin
        add_ln203_2_reg_573 <= add_ln203_2_fu_351_p2;
        add_ln203_reg_558 <= add_ln203_fu_333_p2;
        sub_ln203_1_reg_568 <= sub_ln203_1_fu_345_p2;
        sub_ln203_reg_563 <= sub_ln203_fu_339_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        icmp_ln879_reg_529 <= icmp_ln879_fu_239_p2;
        z_V_reg_535 <= z_V_fu_289_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        k_V_reg_510 <= {{grp_fu_192_p2[84:83]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln1193_reg_524 <= grp_fu_211_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        n_reg_548 <= n_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        p_Val2_s_reg_495 <= p_Val2_s_fu_177_p3;
        trunc_ln728_reg_500 <= trunc_ln728_fu_185_p1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        cordic_apfixed_circ_ce0 = 1'b1;
    end else begin
        cordic_apfixed_circ_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln87_fu_300_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln203_1_fu_379_p2 = (z_s_V_fu_367_p1 + p_Val2_15_reg_136);

assign add_ln203_2_fu_351_p2 = (p_Val2_18_reg_125 + r_V_7_fu_316_p2);

assign add_ln203_fu_333_p2 = (p_Val2_13_reg_113 + r_V_8_fu_322_p2);

assign and_ln879_1_fu_481_p2 = (xor_ln879_1_fu_475_p2 & icmp_ln879_2_fu_436_p2);

assign and_ln879_fu_457_p2 = (xor_ln879_fu_451_p2 & icmp_ln879_reg_529);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_return = ((and_ln879_1_fu_481_p2[0:0] === 1'b1) ? trunc_ln708_5_fu_426_p4 : select_ln879_fu_462_p3);

assign cordic_apfixed_circ_address0 = zext_ln99_fu_328_p1;

assign grp_fu_192_p0 = 85'd366986312910249955;

assign grp_fu_192_p1 = grp_fu_192_p10;

assign grp_fu_192_p10 = p_Val2_s_reg_495;

assign grp_fu_211_p0 = 43'd1887657717493;

assign grp_fu_211_p1 = grp_fu_211_p10;

assign grp_fu_211_p10 = k_V_reg_510;

assign icmp_ln251_fu_278_p2 = ((k_V_reg_510 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln879_1_fu_411_p2 = ((k_V_reg_510 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln879_2_fu_436_p2 = ((k_V_reg_510 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_239_p2 = ((k_V_reg_510 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln87_fu_300_p2 = ((ush_reg_146 == 6'd43) ? 1'b1 : 1'b0);

assign lhs_V_fu_217_p3 = {{trunc_ln728_reg_500}, {18'd0}};

assign n_fu_306_p2 = (ush_reg_146 + 6'd1);

assign or_ln251_fu_283_p2 = (icmp_ln879_fu_239_p2 | icmp_ln251_fu_278_p2);

assign or_ln879_fu_470_p2 = (icmp_ln879_reg_529 | icmp_ln879_1_fu_411_p2);

assign p_Val2_11_fu_229_p4 = {{ret_V_fu_224_p2[42:1]}};

assign p_Val2_s_fu_177_p3 = ((sign0_V_fu_161_p2[0:0] === 1'b1) ? trunc_ln703_fu_167_p1 : sub_ln703_fu_171_p2);

assign r_V_7_fu_316_p2 = $signed(p_Val2_13_reg_113) >>> zext_ln1299_fu_312_p1;

assign r_V_8_fu_322_p2 = $signed(p_Val2_18_reg_125) >>> zext_ln1299_fu_312_p1;

assign r_V_9_fu_420_p2 = (42'd0 - trunc_ln1253_fu_416_p1);

assign ret_V_6_fu_262_p2 = (43'd3454217652357 - rhs_V_fu_258_p1);

assign ret_V_fu_224_p2 = (mul_ln1193_reg_524 + lhs_V_fu_217_p3);

assign rhs_V_fu_258_p1 = p_Val2_11_fu_229_p4;

assign select_ln879_fu_462_p3 = ((and_ln879_fu_457_p2[0:0] === 1'b1) ? trunc_ln708_5_fu_426_p4 : trunc_ln4_fu_441_p4);

assign sext_ln251_fu_297_p1 = $signed(z_V_reg_535);

assign sign0_V_fu_161_p2 = (($signed(trunc_ln1494_fu_157_p1) > $signed(28'd0)) ? 1'b1 : 1'b0);

assign sub_ln203_1_fu_345_p2 = (p_Val2_13_reg_113 - r_V_8_fu_322_p2);

assign sub_ln203_2_fu_385_p2 = (p_Val2_15_reg_136 - z_s_V_fu_367_p1);

assign sub_ln203_fu_339_p2 = (p_Val2_18_reg_125 - r_V_7_fu_316_p2);

assign sub_ln703_fu_171_p2 = (27'd0 - trunc_ln703_fu_167_p1);

assign tmp_2_fu_371_p3 = p_Val2_15_reg_136[32'd42];

assign tmp_fu_357_p4 = {{cordic_apfixed_circ_q0[125:86]}};

assign trunc_ln1253_fu_416_p1 = p_Val2_13_reg_113[41:0];

assign trunc_ln1494_fu_157_p1 = in_V[27:0];

assign trunc_ln2_fu_268_p4 = {{ret_V_6_fu_262_p2[42:1]}};

assign trunc_ln4_fu_441_p4 = {{p_Val2_13_reg_113[41:16]}};

assign trunc_ln703_fu_167_p1 = in_V[26:0];

assign trunc_ln708_5_fu_426_p4 = {{r_V_9_fu_420_p2[41:16]}};

assign trunc_ln708_7_fu_244_p4 = {{ret_V_fu_224_p2[42:2]}};

assign trunc_ln728_fu_185_p1 = p_Val2_s_fu_177_p3[24:0];

assign tx_V_fu_405_p3 = ((tmp_2_fu_371_p3[0:0] === 1'b1) ? add_ln203_reg_558 : sub_ln203_1_reg_568);

assign ty_V_fu_399_p3 = ((tmp_2_fu_371_p3[0:0] === 1'b1) ? sub_ln203_reg_563 : add_ln203_2_reg_573);

assign tz_V_fu_391_p3 = ((tmp_2_fu_371_p3[0:0] === 1'b1) ? add_ln203_1_fu_379_p2 : sub_ln203_2_fu_385_p2);

assign xor_ln879_1_fu_475_p2 = (or_ln879_fu_470_p2 ^ 1'd1);

assign xor_ln879_fu_451_p2 = (icmp_ln879_1_fu_411_p2 ^ 1'd1);

assign z_V_fu_289_p3 = ((or_ln251_fu_283_p2[0:0] === 1'b1) ? trunc_ln2_fu_268_p4 : zext_ln203_fu_254_p1);

assign z_s_V_fu_367_p1 = tmp_fu_357_p4;

assign zext_ln1299_fu_312_p1 = ush_reg_146;

assign zext_ln203_fu_254_p1 = trunc_ln708_7_fu_244_p4;

assign zext_ln99_fu_328_p1 = ush_reg_146;

endmodule //generic_sincos
