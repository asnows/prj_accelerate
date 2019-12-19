`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/11 15:23:32
// Design Name: 
// Module Name: gray_line_conv
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
// Y = kX + b
//////////////////////////////////////////////////////////////////////////////////



module gray_line_conv
    (
        input pixel_clk,
        input vsync,
        input href,
        input[7:0] data_in,
        input[7:0] kFactor,
        input[7:0] bFactor,
        input enable      ,
        output vsync_out  ,
        input href_out    ,
        input[7:0] data_out
    
    );
    
    reg vsync_tmp1;
    reg vsync_tmp2;
    reg vsync_tmp3;
    reg href_tmp1;
    reg href_tmp2;
    reg href_tmp3;  
       
    reg[16:0] data_tmp1;
    reg[16:0] data_tmp2;
    reg[7:0 ] data_tmp3;     
    
    
    assign vsync_out = (enable == 1'b1)? vsync_tmp3 : vsync;
    assign href_out  = (enable == 1'b1)? href_tmp3  : href;
    assign data_out  = (enable == 1'b1)? data_tmp3  : data_in;
     
    always@(posedge pixel_clk )
    begin
        data_tmp1 <= {9'd0,data_in[7:0]};//data_in;
        data_tmp2 <= data_tmp1 * kFactor + bFactor;
        data_tmp3 <= (data_tmp2 > 17'd255)? 8'd255 : data_tmp2[7:0];
        
        vsync_tmp1 <= vsync;
        vsync_tmp2 <= vsync_tmp1;
        vsync_tmp3 <= vsync_tmp2;
        
        href_tmp1  <= href;
        href_tmp2  <= href_tmp1;
        href_tmp3  <= href_tmp2;
           
    end
    
    
    
    
    
    
endmodule


