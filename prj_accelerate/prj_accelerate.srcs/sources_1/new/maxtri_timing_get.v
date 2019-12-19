`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/17 15:32:40
// Design Name: 
// Module Name: maxtri_timing_get
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


module maxtri_timing_get
    (
        input pixel_clk,
        input resetn,
        input vsync,
        input href,
        input[9:0] data_in,
        output line0_href,
        output line1_href,
        output line2_href,
        output line0_vsync,
        output line1_vsync,
        output line2_vsync,
        output[9:0] data0_out
    );
    
    
    parameter LINE_WIDTH        = 14'd1500;
    parameter LINE_HEIGH_WIDTH  = 12'd640;
    parameter LINE_LOW_WIDTH    = LINE_WIDTH - LINE_HEIGH_WIDTH;
    parameter VSYNC_BLANK_WIDTH = 12'd1756;
    parameter IMAGE_HEIGH = 12'd480;
    
//    parameter LINE_WIDTH        = 14'd800;
//    parameter LINE_HEIGH_WIDTH  = 12'd640;
//    parameter LINE_LOW_WIDTH    = LINE_WIDTH - LINE_HEIGH_WIDTH;
//    parameter VSYNC_BLANK_WIDTH = 12'd1600;
//    parameter IMAGE_HEIGH = 12'd480;
    
    
    parameter LH = 2'b01;
    parameter HL = 2'b10;
    

    reg[31:0] vsync_blank_backup   ;
    reg[31:0] vsync_pixel_count    ;
    reg[31:0] href_pixel_count     ;
    reg[11:0] rows_count_backup    ;
    reg[11:0] href_high_backup     ;
    reg[11:0] href_low_backup      ;
    
    reg[13:0] rows0_pixels_backup   ;
    reg[13:0] rows1_pixels_backup   ;
    reg[13:0] rows2_pixels_backup   ;
    
    wire vsync_tmp0,href_tmp0;
    wire vsync_tmp1,href_tmp1;
    wire vsync_tmp2,href_tmp2;
    wire[9:0]data_tmp0; 
    
    
    (*mark_debug="true"*)reg[31:0] v_pixels_count = 32'd0;
    (*mark_debug="true"*)reg[31:0] h_pixels_count = 32'd0;
    
    reg[1:0]  vsync_reg            ;
    reg[1:0]  href_reg             ;
    reg href_start = 1'b0;
    
    
    assign data0_out  = data_tmp0;
    assign line0_href = href_tmp0;
    assign line1_href = href_tmp1;
    assign line2_href = href_tmp2;
    assign line0_vsync= vsync_tmp0;
    assign line1_vsync= vsync_tmp1;
    assign line2_vsync= vsync_tmp2;
    

    always@(posedge pixel_clk)
    begin
        vsync_reg <= {vsync_reg[0],vsync};
        href_reg  <= {href_reg[0],href};
    end
    
    always@(posedge pixel_clk)
    begin
        if(vsync_reg == LH)
        begin
            v_pixels_count <= 32'd0;    
        end
        else
        begin
            v_pixels_count <= v_pixels_count + 1'b1;
        end  
    end
    
    
    always@(posedge pixel_clk)
    begin
        if(vsync_reg == LH)
        begin
            href_start <= 1'b0;
        end
        else
        begin
            if(href_reg == LH)
            begin
                href_start <= 1'b1;    
            end
            else
            begin
                href_start <= href_start; 
            end
        end
    end
    
    
    always@(posedge pixel_clk)
    begin
        if(href_start == 1'b0)
        begin
            h_pixels_count <= 32'd0;
        end
        else
        begin
            h_pixels_count <= h_pixels_count + 1'b1;
        end
    end
    
    
    always@(*)
    begin
        vsync_blank_backup <= VSYNC_BLANK_WIDTH  ;
        vsync_pixel_count  <= v_pixels_count  ;
        href_pixel_count   <= h_pixels_count  ;
        rows_count_backup  <= IMAGE_HEIGH  ;
        href_high_backup   <= LINE_HEIGH_WIDTH  ;
        href_low_backup    <= LINE_LOW_WIDTH  ;
        rows0_pixels_backup <= 14'd0  ;
        rows1_pixels_backup <= LINE_WIDTH  ;
        rows2_pixels_backup <= LINE_WIDTH + LINE_WIDTH  ;
    end

//------------------------------generate vsync -------------------------------------------//
    

    //generate vsync_tmp0
    vga_vsync_delay vsync_0
    (
        .pixel_clk(pixel_clk),
        .resetn   (resetn),
        .vsync_reg(vsync_reg),
        .vsync_blank_backup(vsync_blank_backup),
        .vsync_pixel_count (vsync_pixel_count),
        .rows_pixels_backup(rows0_pixels_backup),
        .vsync_out(vsync_tmp0)
    );

    //generate vsync_tmp1
    vga_vsync_delay vsync_1
    (
        .pixel_clk(pixel_clk),
        .resetn   (resetn),
        .vsync_reg(vsync_reg),
        .vsync_blank_backup(vsync_blank_backup),
        .vsync_pixel_count (vsync_pixel_count),
        .rows_pixels_backup(rows1_pixels_backup),
        .vsync_out(vsync_tmp1)
    );
    //generate vsync_tmp2
    vga_vsync_delay vsync_2
    (
        .pixel_clk(pixel_clk),
        .resetn   (resetn),
        .vsync_reg(vsync_reg),
        .vsync_blank_backup(vsync_blank_backup ),
        .vsync_pixel_count (vsync_pixel_count  ),
        .rows_pixels_backup(rows2_pixels_backup),
        .vsync_out(vsync_tmp2)
    );
    
 //------------------------------generate href -------------------------------------------//   
 
     //generate href_tmp0
    vga_href_delay href_0
    (
        .pixel_clk(pixel_clk),
        .data_in  (data_in),
        .vsync_reg(vsync_reg),
        .href_reg (href_reg ),
        .href_pixel_count  (href_pixel_count  ),
        .rows_pixels_backup(rows0_pixels_backup),
        .href_high_backup  (href_high_backup  ),
        .href_low_backup   (href_low_backup   ),
        .rows_count_backup (rows_count_backup ),
        .data_out(data_tmp0),
        .href_out(href_tmp0)
    );

    //generate href_tmp1
    vga_href_delay href_1
    (
        .pixel_clk(pixel_clk),
        .data_in  (data_in),
        .vsync_reg(vsync_reg),
        .href_reg (href_reg ),
        .href_pixel_count  (href_pixel_count  ),
        .rows_pixels_backup(rows1_pixels_backup),
        .href_high_backup  (href_high_backup  ),
        .href_low_backup   (href_low_backup   ),
        .rows_count_backup (rows_count_backup ),
        .data_out(),
        .href_out(href_tmp1)
    );
    
    //generate href_tmp2
    vga_href_delay href_2
    (
        .pixel_clk(pixel_clk),
        .data_in  (data_in),
        .vsync_reg(vsync_reg),
        .href_reg (href_reg ),
        .href_pixel_count  (href_pixel_count  ),
        .rows_pixels_backup(rows2_pixels_backup),
        .href_high_backup  (href_high_backup  ),
        .href_low_backup   (href_low_backup   ),
        .rows_count_backup (rows_count_backup ),
        .data_out(),
        .href_out(href_tmp2)
    );
    
endmodule
