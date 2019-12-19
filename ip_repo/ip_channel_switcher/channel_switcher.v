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


module channel_switcher
    #(
        parameter DATA_WIDTH = 64
    )
    (
        input[31:0]             channel_sel   ,
        
        input                   s_axis_aclk   ,
        output                  s_axis_tready ,
        input                   s_axis_tlast  ,
        input                   s_axis_tuser  ,
        input                   s_axis_tvalid ,
        input[DATA_WIDTH-1:0]   s_axis_tdata  ,
                       
        output                      m_axis_channel_0_tlast ,
        output                      m_axis_channel_0_tuser ,
        output                      m_axis_channel_0_tvalid,
        output[DATA_WIDTH-1:0]      m_axis_channel_0_tdata ,
        output[(DATA_WIDTH/8)-1:0]  m_axis_channel_0_tkeep  ,
        output[(DATA_WIDTH/8)-1:0]  m_axis_channel_0_tstrb  ,      
        input                       m_axis_channel_0_tready,
        
        output                      m_axis_channel_1_tlast ,
        output                      m_axis_channel_1_tuser ,
        output                      m_axis_channel_1_tvalid,
        output[DATA_WIDTH-1:0]      m_axis_channel_1_tdata ,
        output[(DATA_WIDTH/8)-1:0]  m_axis_channel_1_tkeep  ,             
        output[(DATA_WIDTH/8)-1:0]  m_axis_channel_1_tstrb  ,             
        input                       m_axis_channel_1_tready,
        
        output                      m_axis_channel_2_tlast ,
        output                      m_axis_channel_2_tuser ,
        output                      m_axis_channel_2_tvalid,
        output[DATA_WIDTH-1:0]      m_axis_channel_2_tdata ,
        output[(DATA_WIDTH/8)-1:0]  m_axis_channel_2_tkeep  ,            
        output[(DATA_WIDTH/8)-1:0]  m_axis_channel_2_tstrb  ,            
        input                       m_axis_channel_2_tready
        
    
    );
    
    reg                   s_axis_tready_reg   ;
    reg                   channel_0_tlast_reg ;
    reg                   channel_0_tuser_reg ;    
    reg                   channel_0_tvalid_reg;
    reg[DATA_WIDTH-1:0]   channel_0_tdata_reg ;


    reg                   channel_1_tlast_reg  ;
    reg                   channel_1_tuser_reg ;        
    reg                   channel_1_tvalid_reg ;
    reg[DATA_WIDTH-1:0]   channel_1_tdata_reg  ;


    reg                   channel_2_tlast_reg  ;
    reg                   channel_2_tuser_reg ;       
    reg                   channel_2_tvalid_reg ;
    reg[DATA_WIDTH-1:0]   channel_2_tdata_reg  ;
    
    
    
    assign s_axis_tready           = s_axis_tready_reg    ;  
    
    assign m_axis_channel_0_tkeep = {(DATA_WIDTH/8){1'b1}};
    assign m_axis_channel_0_tstrb = {(DATA_WIDTH/8){1'b1}};
    assign m_axis_channel_1_tkeep = {(DATA_WIDTH/8){1'b1}};
    assign m_axis_channel_1_tstrb = {(DATA_WIDTH/8){1'b1}};
    assign m_axis_channel_2_tkeep = {(DATA_WIDTH/8){1'b1}};
    assign m_axis_channel_2_tstrb = {(DATA_WIDTH/8){1'b1}};
    
    assign m_axis_channel_0_tlast  = channel_0_tlast_reg  ;
    assign m_axis_channel_0_tuser  = channel_0_tuser_reg  ;
    assign m_axis_channel_0_tvalid = channel_0_tvalid_reg ;
    assign m_axis_channel_0_tdata  = channel_0_tdata_reg  ;

    assign m_axis_channel_1_tlast  = channel_1_tlast_reg  ;
    assign m_axis_channel_1_tuser  = channel_1_tuser_reg  ;
    assign m_axis_channel_1_tvalid = channel_1_tvalid_reg ;
    assign m_axis_channel_1_tdata  = channel_1_tdata_reg  ;

    assign m_axis_channel_2_tlast  = channel_2_tlast_reg  ;
    assign m_axis_channel_2_tuser  = channel_2_tuser_reg  ;
    assign m_axis_channel_2_tvalid = channel_2_tvalid_reg ;
    assign m_axis_channel_2_tdata  = channel_2_tdata_reg  ;

    
    always@(*)
    begin 
        case(channel_sel[7:4])
            4'b0000:
            begin
                s_axis_tready_reg    <= m_axis_channel_0_tready ;
                channel_0_tlast_reg  <= s_axis_tlast ;
                channel_0_tuser_reg  <= s_axis_tuser ;
                channel_0_tvalid_reg <= s_axis_tvalid;
                channel_0_tdata_reg  <= s_axis_tdata ;
                                    
                channel_1_tlast_reg  <= 1'b0;
                channel_1_tuser_reg  <= 1'b0;
                channel_1_tvalid_reg <= 1'b0;
                channel_1_tdata_reg  <={ DATA_WIDTH{1'b0 }};                                
                                    
                channel_2_tlast_reg  <= 1'b0;
                channel_2_tuser_reg  <= 1'b0;
                channel_2_tvalid_reg <= 1'b0;
                channel_2_tdata_reg  <={ DATA_WIDTH{1'b0 }};
            
            end
            4'b0001:
            begin
            
                channel_0_tlast_reg  <= 1'b0;
                channel_0_tuser_reg  <= 1'b0;
                channel_0_tvalid_reg <= 1'b0;
                channel_0_tdata_reg  <={ DATA_WIDTH{1'b0 }};                                
                
                s_axis_tready_reg    <= m_axis_channel_1_tready ;
                channel_1_tlast_reg  <= s_axis_tlast ;
                channel_1_tuser_reg  <= s_axis_tuser ;
                channel_1_tvalid_reg <= s_axis_tvalid;
                channel_1_tdata_reg  <= s_axis_tdata ;
                                    
                                    
                channel_2_tlast_reg  <= 1'b0;
                channel_2_tuser_reg  <= 1'b0;
                channel_2_tvalid_reg <= 1'b0;
                channel_2_tdata_reg  <={ DATA_WIDTH{1'b0 }};
            
            end
            4'b0010:
            begin
                channel_0_tlast_reg  <= 1'b0;
                channel_0_tuser_reg  <= 1'b0;
                channel_0_tvalid_reg <= 1'b0;
                channel_0_tdata_reg  <={ DATA_WIDTH{1'b0 }};                                
                                    
                channel_1_tlast_reg  <= 1'b0;
                channel_1_tuser_reg  <= 1'b0;
                channel_1_tvalid_reg <= 1'b0;
                channel_1_tdata_reg  <={ DATA_WIDTH{1'b0 }};
                
                s_axis_tready_reg    <= m_axis_channel_2_tready ;
                channel_2_tlast_reg  <= s_axis_tlast ;
                channel_2_tuser_reg  <= s_axis_tuser ;
                channel_2_tvalid_reg <= s_axis_tvalid;
                channel_2_tdata_reg  <= s_axis_tdata ;
                
            end
            default:
            begin
                s_axis_tready_reg    <= m_axis_channel_0_tready ;
                channel_0_tlast_reg  <= s_axis_tlast ;
                channel_0_tuser_reg  <= s_axis_tuser ;
                channel_0_tvalid_reg <= s_axis_tvalid;
                channel_0_tdata_reg  <= s_axis_tdata ;
                                    
                channel_1_tlast_reg  <= 1'b0;
                channel_1_tuser_reg  <= 1'b0;
                channel_1_tvalid_reg <= 1'b0;
                channel_1_tdata_reg  <={ DATA_WIDTH{1'b0 }};                                
                                    
                channel_2_tlast_reg  <= 1'b0;
                channel_2_tuser_reg  <= 1'b0;
                channel_2_tvalid_reg <= 1'b0;
                channel_2_tdata_reg  <={ DATA_WIDTH{1'b0 }};
            end                       
        endcase
    end
    
    
    
    
    
    
    
    
    
    
    
    
    
endmodule
