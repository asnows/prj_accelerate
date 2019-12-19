`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/17 10:48:44
// Design Name: 
// Module Name: aixs2dma
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


module aixs2dma
    #(
        parameter DATA_WIDTH = 64,
        parameter IMG_HEIGHT = 480
    )
    (
        input[31:0]             channel_sel   ,
    
        input                   s_axis_aclk   ,
        output                  s_axis_0_tready ,
        input                   s_axis_0_tlast  ,
        input                   s_axis_0_tuser  ,
        input                   s_axis_0_tvalid ,
        input[DATA_WIDTH-1:0]   s_axis_0_tdata  ,
        
        
        output                  s_axis_1_tready ,
        input                   s_axis_1_tlast  ,
        input                   s_axis_1_tuser  ,
        input                   s_axis_1_tvalid ,
        input[DATA_WIDTH-1:0]   s_axis_1_tdata  ,
        
        output                  s_axis_2_tready ,
        input                   s_axis_2_tlast  ,
        input                   s_axis_2_tuser  ,
        input                   s_axis_2_tvalid ,
        input[DATA_WIDTH-1:0]   s_axis_2_tdata  ,
        
        output[11:0]             last_count   ,
        output                   m_axis_tlast ,
        output                   m_axis_tvalid,
        output[DATA_WIDTH-1:0]   m_axis_tdata ,
        input                    m_axis_tready
    
    );
    
    
    reg                   s_axis_0_tready_reg  ;
    reg                   s_axis_1_tready_reg  ; 
    reg                   s_axis_2_tready_reg  ;  
    
    reg                   s_axis_tlast_reg  ; 
    reg                   s_axis_tuser_reg  ;
    reg                   s_axis_tvalid_reg ;
    reg[DATA_WIDTH-1:0]   s_axis_tdata_reg  ;  
                   
    reg[11:0] count = 12'd0;
    reg s_axis_tlast_dly;
    
    assign last_count = count;
    assign s_axis_0_tready = s_axis_0_tready_reg  ;
    assign s_axis_1_tready = s_axis_1_tready_reg  ; 
    assign s_axis_2_tready = s_axis_2_tready_reg  ;  
    
    assign m_axis_tvalid = s_axis_tvalid_reg;
    assign m_axis_tdata  = s_axis_tdata_reg;
    assign m_axis_tlast  = (count == IMG_HEIGHT -1)? s_axis_tlast_reg : 1'b0;
    
    always@(posedge s_axis_aclk)
    begin
        s_axis_tlast_dly <= s_axis_tlast_reg;
    end
    
    always@(posedge s_axis_aclk)
    begin
        if(count == IMG_HEIGHT)
        begin
            count <= 12'd0;    
        end
        else if(s_axis_tlast_dly & ~s_axis_tlast_reg )
        begin
            count <= count + 1'b1;   
        end
        else
        begin
            count <= count;
        end
    end
    
    always@(*)
    begin
        case(channel_sel[7:4])
            4'b0000:
            begin
                s_axis_0_tready_reg  <= m_axis_tready;
                s_axis_1_tready_reg  <= 1'b0;
                s_axis_2_tready_reg  <= 1'b0;
                
                
                s_axis_tlast_reg <= s_axis_0_tlast  ;
                s_axis_tuser_reg <= s_axis_0_tuser  ;
                s_axis_tvalid_reg<= s_axis_0_tvalid ;
                s_axis_tdata_reg <= s_axis_0_tdata  ;
            
            end
            4'b0001:
            begin
                s_axis_0_tready_reg  <= 1'b0;
                s_axis_1_tready_reg  <= m_axis_tready;
                s_axis_2_tready_reg  <= 1'b0;
                
                s_axis_tlast_reg <= s_axis_1_tlast  ;
                s_axis_tuser_reg <= s_axis_1_tuser  ;
                s_axis_tvalid_reg<= s_axis_1_tvalid ;
                s_axis_tdata_reg <= s_axis_1_tdata  ;
            
            end
            4'b0010:
            begin
                s_axis_0_tready_reg  <= 1'b0;
                s_axis_1_tready_reg  <= 1'b0;
                s_axis_2_tready_reg  <= m_axis_tready;
                
                s_axis_tlast_reg <= s_axis_2_tlast  ;
                s_axis_tuser_reg <= s_axis_2_tuser  ;
                s_axis_tvalid_reg<= s_axis_2_tvalid ;
                s_axis_tdata_reg <= s_axis_2_tdata  ;
            
            end
            default:
            begin
                s_axis_0_tready_reg  <= m_axis_tready;
                s_axis_1_tready_reg  <= 1'b0;
                s_axis_2_tready_reg  <= 1'b0;
                
                s_axis_tlast_reg <= s_axis_0_tlast  ;
                s_axis_tuser_reg <= s_axis_0_tuser  ;
                s_axis_tvalid_reg<= s_axis_0_tvalid ;
                s_axis_tdata_reg <= s_axis_0_tdata  ;
            
            
            end            
            
        endcase
    end
    
    
    
    
    
    
endmodule
