`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/12 11:21:05
// Design Name: 
// Module Name: status_stream
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


module status_stream_gen
    (
        input   m_axis_sts_aclk,
        input   enable,
        output  m_axis_sts_tvalid ,
        output  [31 : 0] m_axis_sts_tdata,
        output  [7 : 0] m_axis_sts_tkeep,
        output  m_axis_sts_tlast,
        input   m_axis_sts_tready
    
    );
    
//    reg[31:0] APP0_tdata;
//    reg[31:0] APP1_tdata;
//    reg[31:0] APP2_tdata;
//    reg[31:0] APP3_tdata;
//    reg[31:0] APP4_tdata;
    
    reg tlast_reg;
    reg tvalid_reg;
    reg [31 : 0] tdata_reg;
    reg[7:0] counts = 8'hff;
    
    reg enable_reg;
    reg enable_flg;
    
    
    assign m_axis_sts_tvalid = tvalid_reg ;                                   
    assign m_axis_sts_tdata  = tdata_reg;     
    assign m_axis_sts_tkeep  = 8'hff; 
    assign m_axis_sts_tlast  = tlast_reg;  
                               
                                 
    always@(posedge m_axis_sts_aclk)
    begin
        if(enable)
        begin
            counts <= 8'd0;   
            tvalid_reg <= 1'b0; 
        end
        else
            if(m_axis_sts_tready)
            begin
                if(counts < 5)
                begin
                    counts <= counts + 1'b1;
                    tvalid_reg <= 1'b1;
                end
                else
                begin
                    counts <= counts;
                    tvalid_reg <= 1'b0;
                end
            end
        begin
        end
    end
    
    always@(posedge m_axis_sts_aclk)
    begin
        case(counts)
        8'd0:
        begin
            tdata_reg <= 32'd1; 
            tlast_reg <= 1'b0;            
        end
        8'd1:
        begin
            tdata_reg <= 32'd2;  
            tlast_reg <= 1'b0;        
        end
        8'd2:
        begin
            tdata_reg <= 32'd3; 
            tlast_reg <= 1'b0;     
        end
        8'd3:
        begin
            tdata_reg <= 32'd4;  
            tlast_reg <= 1'b0;    
        end
        8'd4:
        begin
            tdata_reg <= 32'd5; 
            tlast_reg <= 1'b1;   
        end
        8'd5:
        begin
            tdata_reg <= 32'd6; 
            tlast_reg <= 1'b0;   
        end       
        default:
        begin
            tdata_reg <= 32'd0;
            tlast_reg <= 1'b0;
        end           
        endcase
    end
    
    
    
endmodule
