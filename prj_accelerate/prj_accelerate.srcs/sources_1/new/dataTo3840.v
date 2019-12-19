`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/21 11:06:29
// Design Name: 
// Module Name: dataTo3840
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


module dataTo3840
    #(
        parameter DATA_WIDTH = 8,
        parameter IMG_WIDTH  = 640
    )
    (
        input       pixel_clk       ,
        input[DATA_WIDTH-1:0]  s_axis_tdata    ,
        input       s_axis_tlast    ,
        input       s_axis_tuser    ,
        input       s_axis_tvalid   ,
        
        output      m_axis_tlast    ,
        output      m_axis_tuser    ,
        output      m_axis_tvalid   ,
        output[DATA_WIDTH-1:0] m_axis_tdata    
    );
    
    localparam WIDTH = (30720/DATA_WIDTH);// 30720 = 3840*8
    reg[DATA_WIDTH-1:0] s_axis_tdata_dly1 ;
    reg                 s_axis_tlast_dly1 ;
    reg                 s_axis_tuser_dly1 ;
    reg                 s_axis_tvalid_dly1;    
    
    
    
    reg tlast_reg = 1'b0;
    reg [11:0] pixels_count = 12'd0;
    
    always@(posedge pixel_clk)
    begin
        s_axis_tdata_dly1 <= s_axis_tdata;
        s_axis_tlast_dly1 <= s_axis_tlast;
        s_axis_tuser_dly1 <= s_axis_tuser;
        s_axis_tvalid_dly1<= s_axis_tvalid;
    end
    
    always@(posedge pixel_clk)
    begin
        if(pixels_count < (WIDTH - 1'b1))
        begin
            if(s_axis_tvalid_dly1 == 1'b1)
            begin
                pixels_count <= pixels_count + 1'b1;
            end
            else
            begin
                pixels_count <= pixels_count;
            end
        end
        else
        begin
            pixels_count <= 12'd0;
        end
    end
    
    always@(posedge pixel_clk)
    begin
        if(pixels_count ==(WIDTH - 12'd2))
        begin
            tlast_reg <= 1'b1;
        end
        else
        begin
            tlast_reg <= 1'b0;
        end
    end
    
endmodule
