// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module img_cpy_opr (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        srcImg_rows_V_dout,
        srcImg_rows_V_empty_n,
        srcImg_rows_V_read,
        srcImg_cols_V_dout,
        srcImg_cols_V_empty_n,
        srcImg_cols_V_read,
        srcImg_data_stream_V_dout,
        srcImg_data_stream_V_empty_n,
        srcImg_data_stream_V_read,
        dstImg_data_stream_V_din,
        dstImg_data_stream_V_full_n,
        dstImg_data_stream_V_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [9:0] srcImg_rows_V_dout;
input   srcImg_rows_V_empty_n;
output   srcImg_rows_V_read;
input  [10:0] srcImg_cols_V_dout;
input   srcImg_cols_V_empty_n;
output   srcImg_cols_V_read;
input  [7:0] srcImg_data_stream_V_dout;
input   srcImg_data_stream_V_empty_n;
output   srcImg_data_stream_V_read;
output  [7:0] dstImg_data_stream_V_din;
input   dstImg_data_stream_V_full_n;
output   dstImg_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg srcImg_rows_V_read;
reg srcImg_cols_V_read;
reg srcImg_data_stream_V_read;
reg dstImg_data_stream_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    srcImg_rows_V_blk_n;
reg    srcImg_cols_V_blk_n;
reg    srcImg_data_stream_V_blk_n;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond_fu_163_p2;
reg    dstImg_data_stream_V_blk_n;
wire  signed [11:0] tmp_fu_144_p1;
reg  signed [11:0] tmp_reg_174;
reg    ap_block_state1;
wire  signed [11:0] tmp_1_fu_148_p1;
reg  signed [11:0] tmp_1_reg_179;
wire   [11:0] y_fu_157_p2;
reg   [11:0] y_reg_187;
wire    ap_CS_fsm_state2;
wire   [11:0] x_fu_168_p2;
reg    ap_block_state3;
reg   [11:0] y_i_reg_122;
reg   [11:0] x_i_reg_133;
wire   [0:0] exitcond1_fu_152_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_152_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_152_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        x_i_reg_133 <= 12'd0;
    end else if ((~(((exitcond_fu_163_p2 == 1'd0) & (dstImg_data_stream_V_full_n == 1'b0)) | ((exitcond_fu_163_p2 == 1'd0) & (srcImg_data_stream_V_empty_n == 1'b0))) & (exitcond_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        x_i_reg_133 <= x_fu_168_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((exitcond_fu_163_p2 == 1'd0) & (dstImg_data_stream_V_full_n == 1'b0)) | ((exitcond_fu_163_p2 == 1'd0) & (srcImg_data_stream_V_empty_n == 1'b0))) & (exitcond_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        y_i_reg_122 <= y_reg_187;
    end else if ((~((real_start == 1'b0) | (srcImg_cols_V_empty_n == 1'b0) | (srcImg_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        y_i_reg_122 <= 12'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (srcImg_cols_V_empty_n == 1'b0) | (srcImg_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_1_reg_179 <= tmp_1_fu_148_p1;
        tmp_reg_174 <= tmp_fu_144_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        y_reg_187 <= y_fu_157_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_152_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        dstImg_data_stream_V_blk_n = dstImg_data_stream_V_full_n;
    end else begin
        dstImg_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((exitcond_fu_163_p2 == 1'd0) & (dstImg_data_stream_V_full_n == 1'b0)) | ((exitcond_fu_163_p2 == 1'd0) & (srcImg_data_stream_V_empty_n == 1'b0))) & (exitcond_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        dstImg_data_stream_V_write = 1'b1;
    end else begin
        dstImg_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_152_p2 == 1'd1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        srcImg_cols_V_blk_n = srcImg_cols_V_empty_n;
    end else begin
        srcImg_cols_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (srcImg_cols_V_empty_n == 1'b0) | (srcImg_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        srcImg_cols_V_read = 1'b1;
    end else begin
        srcImg_cols_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        srcImg_data_stream_V_blk_n = srcImg_data_stream_V_empty_n;
    end else begin
        srcImg_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((exitcond_fu_163_p2 == 1'd0) & (dstImg_data_stream_V_full_n == 1'b0)) | ((exitcond_fu_163_p2 == 1'd0) & (srcImg_data_stream_V_empty_n == 1'b0))) & (exitcond_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        srcImg_data_stream_V_read = 1'b1;
    end else begin
        srcImg_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        srcImg_rows_V_blk_n = srcImg_rows_V_empty_n;
    end else begin
        srcImg_rows_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (srcImg_cols_V_empty_n == 1'b0) | (srcImg_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        srcImg_rows_V_read = 1'b1;
    end else begin
        srcImg_rows_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (srcImg_cols_V_empty_n == 1'b0) | (srcImg_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_152_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~(((exitcond_fu_163_p2 == 1'd0) & (dstImg_data_stream_V_full_n == 1'b0)) | ((exitcond_fu_163_p2 == 1'd0) & (srcImg_data_stream_V_empty_n == 1'b0))) & (exitcond_fu_163_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~(((exitcond_fu_163_p2 == 1'd0) & (dstImg_data_stream_V_full_n == 1'b0)) | ((exitcond_fu_163_p2 == 1'd0) & (srcImg_data_stream_V_empty_n == 1'b0))) & (exitcond_fu_163_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
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

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (srcImg_cols_V_empty_n == 1'b0) | (srcImg_rows_V_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state3 = (((exitcond_fu_163_p2 == 1'd0) & (dstImg_data_stream_V_full_n == 1'b0)) | ((exitcond_fu_163_p2 == 1'd0) & (srcImg_data_stream_V_empty_n == 1'b0)));
end

assign ap_ready = internal_ap_ready;

assign dstImg_data_stream_V_din = srcImg_data_stream_V_dout;

assign exitcond1_fu_152_p2 = ((y_i_reg_122 == tmp_1_reg_179) ? 1'b1 : 1'b0);

assign exitcond_fu_163_p2 = ((x_i_reg_133 == tmp_reg_174) ? 1'b1 : 1'b0);

assign start_out = real_start;

assign tmp_1_fu_148_p1 = $signed(srcImg_rows_V_dout);

assign tmp_fu_144_p1 = $signed(srcImg_cols_V_dout);

assign x_fu_168_p2 = (x_i_reg_133 + 12'd1);

assign y_fu_157_p2 = (y_i_reg_122 + 12'd1);

endmodule //img_cpy_opr
