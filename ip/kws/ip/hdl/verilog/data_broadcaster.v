// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module data_broadcaster (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_in_TDATA,
        data_in_TVALID,
        data_in_TREADY,
        data_in_TLAST,
        keep_in_TDATA,
        keep_in_TVALID,
        keep_in_TREADY,
        keep_in_TLAST,
        data2dw1_V_din,
        data2dw1_V_full_n,
        data2dw1_V_write,
        keepout_V_din,
        keepout_V_full_n,
        keepout_V_write
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] data_in_TDATA;
input   data_in_TVALID;
output   data_in_TREADY;
input   data_in_TLAST;
input  [31:0] keep_in_TDATA;
input   keep_in_TVALID;
output   keep_in_TREADY;
input   keep_in_TLAST;
output  [15:0] data2dw1_V_din;
input   data2dw1_V_full_n;
output   data2dw1_V_write;
output  [15:0] keepout_V_din;
input   keepout_V_full_n;
output   keepout_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_in_TREADY;
reg keep_in_TREADY;
reg data2dw1_V_write;
reg keepout_V_write;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    data_in_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln22_fu_116_p2;
reg    keep_in_TDATA_blk_n;
reg    data2dw1_V_blk_n;
wire    ap_CS_fsm_state4;
reg    keepout_V_blk_n;
wire    ap_CS_fsm_state6;
wire   [15:0] grp_fu_107_p1;
reg   [15:0] reg_110;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
wire   [3:0] i_fu_122_p2;
reg   [3:0] i_reg_141;
reg    ap_block_state2;
reg   [3:0] i_0_reg_96;
reg   [31:0] grp_fu_107_p0;
reg    grp_fu_107_ce;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

kws_sptohp_32ns_1bkb #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 16 ))
kws_sptohp_32ns_1bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_107_p0),
    .ce(grp_fu_107_ce),
    .dout(grp_fu_107_p1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((data2dw1_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        i_0_reg_96 <= i_reg_141;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_96 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((icmp_ln22_fu_116_p2 == 1'd1) & (keep_in_TVALID == 1'b0)) | ((icmp_ln22_fu_116_p2 == 1'd0) & (data_in_TVALID == 1'b0))) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_141 <= i_fu_122_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_110 <= grp_fu_107_p1;
    end
end

always @ (*) begin
    if ((((keepout_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state6)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((keepout_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        data2dw1_V_blk_n = data2dw1_V_full_n;
    end else begin
        data2dw1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((data2dw1_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        data2dw1_V_write = 1'b1;
    end else begin
        data2dw1_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln22_fu_116_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        data_in_TDATA_blk_n = data_in_TVALID;
    end else begin
        data_in_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln22_fu_116_p2 == 1'd1) & (keep_in_TVALID == 1'b0)) | ((icmp_ln22_fu_116_p2 == 1'd0) & (data_in_TVALID == 1'b0))) & (icmp_ln22_fu_116_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        data_in_TREADY = 1'b1;
    end else begin
        data_in_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (~(((icmp_ln22_fu_116_p2 == 1'd1) & (keep_in_TVALID == 1'b0)) | ((icmp_ln22_fu_116_p2 == 1'd0) & (data_in_TVALID == 1'b0))) & (1'b1 == ap_CS_fsm_state2)))) begin
        grp_fu_107_ce = 1'b1;
    end else begin
        grp_fu_107_ce = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        if ((icmp_ln22_fu_116_p2 == 1'd1)) begin
            grp_fu_107_p0 = keep_in_TDATA;
        end else if ((icmp_ln22_fu_116_p2 == 1'd0)) begin
            grp_fu_107_p0 = data_in_TDATA;
        end else begin
            grp_fu_107_p0 = 'bx;
        end
    end else begin
        grp_fu_107_p0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln22_fu_116_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        keep_in_TDATA_blk_n = keep_in_TVALID;
    end else begin
        keep_in_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln22_fu_116_p2 == 1'd1) & (keep_in_TVALID == 1'b0)) | ((icmp_ln22_fu_116_p2 == 1'd0) & (data_in_TVALID == 1'b0))) & (icmp_ln22_fu_116_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        keep_in_TREADY = 1'b1;
    end else begin
        keep_in_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        keepout_V_blk_n = keepout_V_full_n;
    end else begin
        keepout_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((keepout_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        keepout_V_write = 1'b1;
    end else begin
        keepout_V_write = 1'b0;
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
            if ((~(((icmp_ln22_fu_116_p2 == 1'd1) & (keep_in_TVALID == 1'b0)) | ((icmp_ln22_fu_116_p2 == 1'd0) & (data_in_TVALID == 1'b0))) & (icmp_ln22_fu_116_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if ((~(((icmp_ln22_fu_116_p2 == 1'd1) & (keep_in_TVALID == 1'b0)) | ((icmp_ln22_fu_116_p2 == 1'd0) & (data_in_TVALID == 1'b0))) & (icmp_ln22_fu_116_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((data2dw1_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((keepout_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state2 = (((icmp_ln22_fu_116_p2 == 1'd1) & (keep_in_TVALID == 1'b0)) | ((icmp_ln22_fu_116_p2 == 1'd0) & (data_in_TVALID == 1'b0)));
end

assign data2dw1_V_din = reg_110;

assign i_fu_122_p2 = (i_0_reg_96 + 4'd1);

assign icmp_ln22_fu_116_p2 = ((i_0_reg_96 == 4'd10) ? 1'b1 : 1'b0);

assign keepout_V_din = reg_110;

endmodule //data_broadcaster
