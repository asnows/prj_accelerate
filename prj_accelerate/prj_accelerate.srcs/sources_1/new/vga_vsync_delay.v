`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/17 15:06:39
// Design Name: 
// Module Name: vga_vsync_delay
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


module vga_vsync_delay
    (
        input pixel_clk,
        input resetn,
        input[1:0]  vsync_reg,
        input[31:0] vsync_blank_backup,
        input[31:0] vsync_pixel_count,
        input[13:0] rows_pixels_backup,
        output vsync_out
    );


    parameter LH = 2'b01;
    parameter HL = 2'b10;
    parameter Vsync_Blank = 1'b1,Vsync_Activet = 1'b0;
    reg       Vsync_MC1      = 1'b0;
    reg       vsync_tmp1     = 1'b0;
    reg       vsync_tmp1_reg = 1'b0;
    
    
    reg[1:0] vsync_reg1;
    reg[31:0] vsync_blank_reg;
    reg[31:0] vsync_pixel_reg;
    reg[13:0] rows_pixels_reg;

    
    assign vsync_out = vsync_tmp1;
    
    always@(posedge pixel_clk)
    begin
        vsync_reg1 <= vsync_reg;
        vsync_blank_reg <= vsync_blank_backup;
        vsync_pixel_reg <= vsync_pixel_count; 
        rows_pixels_reg <= rows_pixels_backup;
    end

    //generate vsync_tmp1
    always@(posedge pixel_clk)
    begin
    if(~resetn)
    begin
        Vsync_MC1  <= Vsync_Activet;
        vsync_tmp1 <= 1'b0;
    end
    else
    case(Vsync_MC1)
        Vsync_Activet:
        begin
            vsync_tmp1 <= 1'b0;
            if(vsync_reg1 == LH)
            begin
                Vsync_MC1 <= Vsync_Blank;
            end 
            else
            begin
                Vsync_MC1 <= Vsync_Activet;
            end  
        end
        Vsync_Blank:
        begin
            if(vsync_pixel_reg == rows_pixels_reg)
            begin
                vsync_tmp1 <= 1'b1;    
            end
            else
            begin
                vsync_tmp1 <= vsync_tmp1; 
            end
            
            if(vsync_pixel_reg == (rows_pixels_reg + vsync_blank_reg - 1'b1) )
            begin
                Vsync_MC1 <= Vsync_Activet;    
            end
            else
            begin
                Vsync_MC1 <= Vsync_Blank;  
            end
        end
    endcase
    end
    
//    //delay one clk
//    always@(posedge pixel_clk)
//    begin
//        vsync_tmp1_reg <= vsync_tmp1;
//    end
    
    
    
endmodule
