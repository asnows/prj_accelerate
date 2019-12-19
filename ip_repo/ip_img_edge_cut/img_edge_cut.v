`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/29 08:09:20
// Design Name: 
// Module Name: img_edge_cut
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


module img_edge_cut
    #(
        parameter CUT_COLUMN = 1,
        parameter CUT_ROW    = 1,
        parameter DATA_WIDTH = 8,
        parameter IMG_WIDTH  = 640,
        parameter IMG_HEIGHT = 480

    )
    (
    
        input                  s_axis_aclk   ,
        input                  s_axis_tlast  ,
        input                  s_axis_tuser  ,
        input                  s_axis_tvalid ,
        input[DATA_WIDTH-1:0]  s_axis_tdata  ,
        input                  enable        ,
        
        output[(DATA_WIDTH/8)-1:0]  m_axis_tkeep ,
        output                      m_axis_tlast ,
        output                      m_axis_tuser ,
        output                      m_axis_tvalid,
        output[DATA_WIDTH-1:0]      m_axis_tdata
    
    );
    localparam WIDTH = DATA_WIDTH *3 -1;
    reg[11:0] width_count = 12'd0;
    reg[11:0] height_count = 12'd0;
    reg column_valid = 1'b0;//列有效
    reg row_valid = 1'b0;//行有效
    
    reg[2:0] s_axis_tlast_dly   ; 
    reg[2:0] s_axis_tuser_dly   ; 
    reg[2:0] s_axis_tvalid_dly  ;
    reg[WIDTH:0] s_axis_tdata_dly ;
    
    
    reg                  m_axis_tlast_reg ;
    reg                  m_axis_tuser_reg ;
    reg                  m_axis_tvalid_reg;
    reg[DATA_WIDTH-1:0]  m_axis_tdata_reg ;
    
    
    assign m_axis_tkeep  =  {(DATA_WIDTH/8){1'b1}};
    assign m_axis_tlast  =  (enable == 1'b1)?m_axis_tlast_reg  : s_axis_tlast ;
    assign m_axis_tuser  =  (enable == 1'b1)?m_axis_tuser_reg  : s_axis_tuser ;
    assign m_axis_tvalid =  (enable == 1'b1)?m_axis_tvalid_reg : s_axis_tvalid;
    assign m_axis_tdata  =  (enable == 1'b1)?m_axis_tdata_reg  : s_axis_tdata ;
    
    always@(posedge s_axis_aclk)
    begin
        s_axis_tlast_dly  <= {s_axis_tlast_dly[1:0] ,s_axis_tlast };
        s_axis_tuser_dly  <= {s_axis_tuser_dly[1:0] ,s_axis_tuser };
        s_axis_tvalid_dly <= {s_axis_tvalid_dly[1:0],s_axis_tvalid};
        s_axis_tdata_dly  <= {s_axis_tdata_dly[DATA_WIDTH + DATA_WIDTH - 1:0],s_axis_tdata };                        
    end
    
    
    always@(posedge s_axis_aclk)
    begin
        if(s_axis_tvalid)
        begin
            if(width_count < (IMG_WIDTH - 1))
            begin
                width_count <= width_count + 1'b1;
            end
            else
            begin
                width_count <= 12'd0; 
            end
        end
    end
    
    
    always@(posedge s_axis_aclk)
    begin
        if(s_axis_tuser)
        begin
            height_count <= 12'd0; 
        end
        else
        begin
            if(~s_axis_tlast_dly[0] & s_axis_tlast)
            begin
                height_count <= height_count + 1'b1;    
            end           
        end
    end
    
    
    always@(posedge s_axis_aclk)
    begin
        if( (CUT_COLUMN <= width_count)&&(width_count < (IMG_WIDTH - CUT_COLUMN)))
        begin
            column_valid <= 1'b1;
        end
        else
        begin
            column_valid <= 1'b0;
        end
    end
    
    always@(posedge s_axis_aclk)
    begin
        if((CUT_ROW <= height_count) && (height_count <= (IMG_HEIGHT - CUT_ROW - 1) ))
        begin
            row_valid <= 1'b1;    
        end
        else
        begin
            row_valid <= 1'b0;   
        end
    end
    
    always@(posedge s_axis_aclk)
    begin
        
        m_axis_tlast_reg  <= s_axis_tlast_dly [0];
        m_axis_tuser_reg  <= s_axis_tuser_dly [0];
        m_axis_tvalid_reg <= s_axis_tvalid_dly[0];
        if(row_valid && column_valid )
        begin
            m_axis_tdata_reg  <= s_axis_tdata_dly[DATA_WIDTH -1 :0];
        end
        else
        begin
            m_axis_tdata_reg  <= {DATA_WIDTH{1'b0}};
        end
        
    end
    

    
    

endmodule
