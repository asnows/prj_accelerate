`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/17 14:54:31
// Design Name: 
// Module Name: vga_timing_get
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


module vga_timing_get
(
    input pixel_clk,
    input vsync,
    input href,
    output[1:0]  vsync_reg_out,
    output[1:0]  href_reg_out ,
    output[31:0] vsync_blank_backup_out,
    output[31:0] vsync_pixel_count_out,
    output[31:0] href_pixel_count_out,
    output[13:0] rows_pixels_backup_out,
    output[11:0] rows_count_backup_out,
    output[11:0] href_high_backup_out,
    output[11:0] href_low_backup_out
    
);



    parameter LH = 2'b01;
    parameter HL = 2'b10;
    
   reg href_start = 1'b0;
   reg[1:0]  vsync_reg = 2'b00;
   reg[1:0]  href_reg = 2'b00;
   reg[31:0] vsync_pixel_count =32'd0;
   reg[31:0] vsync_blank_count =32'd0;
   reg[31:0] vsync_blank_backup=32'd0;
   reg[31:0] href_pixel_count  =32'd0;
   reg[11:0] rows_count  = 12'd0;
   reg[11:0] rows_count_backup  = 12'd0;
   reg[13:0] rows_pixels_backup  = 14'd0;
   reg[11:0] href_high_count  = 12'd0;
   reg[11:0] href_high_backup  = 12'd0;
   reg[11:0] href_low_count   = 12'd0;
   reg[11:0] href_low_backup   = 12'd0;
    
    
    
    
   assign vsync_reg_out = vsync_reg;
   assign href_reg_out  = href_reg;
   assign vsync_blank_backup_out    = vsync_blank_backup;
   assign vsync_pixel_count_out     = vsync_pixel_count ;
   assign href_pixel_count_out      = href_pixel_count ;
   assign rows_pixels_backup_out    = rows_pixels_backup ;
   assign href_high_backup_out      = href_high_backup ;
   assign href_low_backup_out       = href_low_backup ;
   assign rows_count_backup_out     = rows_count_backup; 
      
    always@(posedge pixel_clk)
    begin
        vsync_reg <= {vsync_reg[0],vsync}; 
        href_reg  <= {href_reg[0], href};     
    end
    
    // vsync_pixel_count
    always@(posedge pixel_clk)
    begin
        if(vsync_reg == LH)
        begin
            vsync_pixel_count <= 32'd0;
        end
        else
        begin
            vsync_pixel_count <= vsync_pixel_count + 1'b1;
        end
    end    
      
    // vsync_blank_count
    always@(posedge pixel_clk)
    begin
        if(vsync_reg == LH)
        begin
            vsync_blank_count <= 32'd1;
        end
        else
        begin
            if(vsync == 1'b1)
            begin
                vsync_blank_count <= vsync_blank_count + 1'b1;
            end
            else
            begin
                vsync_blank_count <= vsync_blank_count;
            end
        end
    end  
  
  // vsync_blank_backup
  always@(posedge pixel_clk)
  begin
    if(vsync_reg == LH)
    begin
        vsync_blank_backup<= vsync_blank_count; 
    end
    else
    begin
        vsync_blank_backup<= vsync_blank_backup;
    end
  end
    
    //href_start
    always@(posedge pixel_clk)
    begin
        if(vsync_reg == LH)
        begin
            href_start  <= 1'b0;
        end
        else
        begin
            if(href_reg == LH)
            begin
                href_start  <= 1'b1;
            end
            else
            begin
                href_start  <= href_start;
            end
        end
    end
    
    //href_pixel_count
    always@(posedge pixel_clk)
    begin
        if(href_start == 1'b0)
        begin
            href_pixel_count  <= 32'd0;
        end
        else
        begin
            href_pixel_count  <= href_pixel_count + 1'b1;
        end
    end
    
   //rows_count 
   always@(posedge pixel_clk)
   begin
    if(vsync_reg == LH)
    begin
        
        rows_count <= 12'd0;
    end
    else
    begin
        if(href_reg == LH)
        begin
            rows_count <= rows_count + 1'b1;
        end
        else
        begin
            rows_count <= rows_count;
        end
    end
   end
   
   //rows_count_backup
   always@(posedge pixel_clk)
   begin
    if(vsync_reg == LH)
    begin
        rows_count_backup <= rows_count;
    end
    else
    begin
        rows_count_backup <= rows_count_backup;
    end
   end
   
   //href_high_count, href_low_count
   always@(posedge pixel_clk)
   begin
    if(vsync_reg == LH)
    begin
        href_high_count  <= 12'd0;
        href_low_count   <= 12'd0;            
    end
    else
    begin
        if(rows_count == 12'd1)
        begin
            if(href == 1'b1)
            begin
                href_high_count <= href_high_count + 1'b1;   
            end
            else
            begin
                href_low_count <= href_low_count + 1'b1; 
            end
        end
    end
   end
   
   //href_high_backup,href_low_backup
   always@(posedge pixel_clk)
   begin
    if(vsync_reg == LH)
    begin
        href_high_backup  <= href_high_count;
        href_low_backup   <= href_low_count;
    end
    else
    begin
        href_high_backup  <= href_high_backup;
        href_low_backup   <= href_low_backup;
    end
   end
   
   //rows_pixels_backup
   always@(posedge pixel_clk)
   begin
    if(vsync == 1'b1)
    begin
        rows_pixels_backup <= href_high_backup + href_low_backup;
    end
    else
    begin
        rows_pixels_backup <= rows_pixels_backup;
    end
   end
   

endmodule
