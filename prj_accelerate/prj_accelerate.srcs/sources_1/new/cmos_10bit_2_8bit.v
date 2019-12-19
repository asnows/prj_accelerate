`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/11 13:28:57
// Design Name: 
// Module Name: cmos_10bit_2_8bit
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


module cmos_10bit_2_8bit
    (
        input pixel_clk,
        input vsync,
        input href,
        input[9:0] data_in,
        input enable,
        
        output vsync_out,
        input href_out,
        input[7:0] data_out
    );
    
    
    reg vsync_tmp;
    reg href_tmp;
    wire[7:0] data_tmp;   
     
    cmos10bit_2_8bit_BROM cmos10bit_2_8bit_brom_i
    (
        .clka (pixel_clk),
        .addra (data_in),
        .douta (data_tmp)
    );
   
    assign vsync_out = (enable == 1'b1)?vsync_tmp : vsync;
    assign href_out  = (enable == 1'b1)?href_tmp : href;
    assign data_out  = (enable == 1'b1)?data_tmp : data_in[9:2];

    always@(posedge pixel_clk )
    begin
        vsync_tmp <= vsync;
        href_tmp  <= href;
    end

    
endmodule
