`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/16 14:14:37
// Design Name: 
// Module Name: GxGy_Grads3x3
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


module GxGy_Grads3x3
    (
        input clk,
        input[23:0] line_buff_0_tdata,
        input[23:0] line_buff_1_tdata,
        input[23:0] line_buff_2_tdata,
        output[7:0] Gx,
        output[7:0] Gy,  
        output[7:0] GxGy
    );
    
    reg[8:0] Gx_reg;
    reg[8:0] Gy_reg;
    reg[8:0]GxGy_reg;
    
//    wire       Gx_float_result_tvalid ;
//    wire       Gx_float_result_tready ;
//    wire[15:0] Gx_float_result_tdata ;
    
//    wire       Gy_float_result_tvalid ;
//    wire       Gy_float_result_tready ;
//    wire[15:0] Gy_float_result_tdata ;
    
    
    
    assign Gx = Gx_reg;
    assign Gy = Gy_reg;
    assign GxGy = (GxGy_reg > 8'd255)?8'hff:GxGy_reg[7:0];
    
     
    // Gx_reg
    always@(posedge clk)
    begin
        if(line_buff_1_tdata[7:0] > line_buff_1_tdata[23:16])
        begin
            Gx_reg = line_buff_1_tdata[7:0] - line_buff_1_tdata[23:16];
        end
        else
        begin
            Gx_reg = line_buff_1_tdata[23:16] - line_buff_1_tdata[7:0];    
        end           
    end
    
    // Gy_reg
    always@(posedge clk)
    begin
        if(line_buff_0_tdata[15:8] > line_buff_2_tdata[15:8])
        begin
            Gy_reg <= line_buff_0_tdata[15:8] - line_buff_2_tdata[15:8];  
        end
        else
        begin
            Gy_reg <= line_buff_2_tdata[15:8] - line_buff_0_tdata[15:8];  
        end
    end
    
    always@(*)
    begin
        GxGy_reg <= Gx_reg + Gy_reg;
    end
    
    

    
//    fixed_to_float Gx_float
//    (
//        .aclk(clk),
//        .s_axis_a_tvalid (1'b1),
//        .s_axis_a_tready (),
//        .s_axis_a_tdata (Gx_reg),
//        .m_axis_result_tvalid( Gx_float_result_tvalid),
//        .m_axis_result_tready( Gx_float_result_tready),
//        .m_axis_result_tdata ( Gx_float_result_tdata )
//    );

//    fixed_to_float Gy_float
//    (
//        .aclk(clk),
//        .s_axis_a_tvalid (1'b1),
//        .s_axis_a_tready (),
//        .s_axis_a_tdata (Gy_reg),
//        .m_axis_result_tvalid( Gy_float_result_tvalid),
//        .m_axis_result_tready( Gy_float_result_tready),
//        .m_axis_result_tdata ( Gy_float_result_tdata )
//    );


    


endmodule
