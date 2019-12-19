`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/17 16:17:35
// Design Name: 
// Module Name: maxtri3x3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module maxtri3x3
(

   input pixel_clk,
   input resetn,
   (*mark_debug="true"*)input vsync,
   (*mark_debug="true"*)input href,
   (*mark_debug="true"*)input[9:0] data_in,
   
   (*mark_debug="true"*)output line1_href_out,
   (*mark_debug="true"*)output line1_vsync_out,
   (*mark_debug="true"*)output[9:0] matrix_01,
   (*mark_debug="true"*)output[9:0] matrix_11,
   (*mark_debug="true"*)output[9:0] matrix_21

);

    (*mark_debug="true"*)wire line0_href;
    (*mark_debug="true"*)wire line1_href;
    (*mark_debug="true"*)wire line2_href;
    (*mark_debug="true"*)wire line0_vsync;
    (*mark_debug="true"*)wire line1_vsync;
    (*mark_debug="true"*)wire line2_vsync;
    (*mark_debug="true"*)wire[9:0] data0_out;
    reg[9:0]  data0_out_reg;
    
    reg         fifo_line_0_wr_en ;
    wire[9:0]   fifo_line_0_dout;
    wire[9:0]   fifo_line_1_dout;
    reg     line1_vsync_reg;
    
    assign line1_href_out = fifo_line_0_wr_en;
    assign line1_vsync_out= line1_vsync_reg;
    assign matrix_01 = fifo_line_0_dout;
    assign matrix_11 = fifo_line_1_dout;
    assign matrix_21 = data0_out_reg;
    

   maxtri_timing_get maxtri_timing_i
    (
        .pixel_clk(pixel_clk),
        .resetn(resetn),
        .vsync(vsync),
        .href(href),
        .data_in(data_in),
        .line0_href (line0_href ),
        .line1_href (line1_href ),
        .line2_href (line2_href ),
        .line0_vsync(line0_vsync),
        .line1_vsync(line1_vsync),
        .line2_vsync(line2_vsync),
        .data0_out(data0_out)
    );
    
    
    
//   vga_delay vga_delay_i
//     (
//         .pixel_clk(pixel_clk),
//         .resetn(resetn),
//         .vsync(vsync),
//         .href(href),
//         .data_in(data_in),
//         .line0_href (line0_href ),
//         .line1_href (line1_href ),
//         .line2_href (line2_href ),
//         .line0_vsync(line0_vsync),
//         .line1_vsync(line1_vsync),
//         .line2_vsync(line2_vsync),
//         .data0_out(data0_out)
//     );
    
    fifo_line fifo_line_0
    (
        .clk     (pixel_clk),
        .srst    (vsync),
        .din     (fifo_line_1_dout  ),
        .wr_en   (fifo_line_0_wr_en),
        .rd_en   (line2_href),
        .dout    (fifo_line_0_dout ),
        .full    (),
        .empty   ()
    );
    
    fifo_line fifo_line_1
    (
        .clk     (pixel_clk),
        .srst    (vsync),
        .din     (data0_out  ),
        .wr_en   (line0_href ),
        .rd_en   (line1_href),
        .dout    (fifo_line_1_dout ),
        .full    (),
        .empty   ()
    );
    
    //delay one clk
    always@(posedge pixel_clk)
    begin
        fifo_line_0_wr_en <= line1_href;
        line1_vsync_reg   <= line1_vsync;
        data0_out_reg     <= data0_out;
    end    



endmodule
