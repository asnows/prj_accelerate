`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/16 16:36:53
// Design Name: 
// Module Name: get_img_grads
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


module get_img_grads
    #(
        parameter DATA_WIDTH = 10
    )
    (
    
        input                  s_axis_aclk               ,
        input                  s_axis_line_buff_0_tlast  ,
        input                  s_axis_line_buff_0_tuser  ,
        input                  s_axis_line_buff_0_tvalid ,
        input[DATA_WIDTH-1:0]  s_axis_line_buff_0_tdata  ,
      
        input                  s_axis_line_buff_1_tlast  ,
        input                  s_axis_line_buff_1_tuser  ,
        input                  s_axis_line_buff_1_tvalid ,
        input[DATA_WIDTH-1:0]  s_axis_line_buff_1_tdata  ,
      
        input                  s_axis_line_buff_2_tlast  ,
        input                  s_axis_line_buff_2_tuser  ,
        input                  s_axis_line_buff_2_tvalid ,
        input[DATA_WIDTH-1:0]  s_axis_line_buff_2_tdata  ,
        
        
        
        
        
        output                  m_axis_tlast    ,
        output                  m_axis_tuser    ,
        output                  m_axis_tvalid   ,
        output[DATA_WIDTH-1:0]  m_axis_tdata 

    );
    
    
    localparam BUFF_DATA_WIDTH = DATA_WIDTH + DATA_WIDTH;
   
    
    localparam BUFF_DATA_L_Bit0   = 0;
    localparam BUFF_DATA_L_Bit1   = 8;
    
    localparam BUFF_DATA_M_Bit0   = 0;
    localparam BUFF_DATA_M_Bit1   = 8;
    localparam BUFF_DATA_M_Bit2   = 16;
    localparam BUFF_DATA_M_Bit3   = 24;
    localparam BUFF_DATA_M_Bit4   = 32;
    localparam BUFF_DATA_M_Bit5   = 40;
    localparam BUFF_DATA_M_Bit6   = 48;
    localparam BUFF_DATA_M_Bit7   = 56;
    localparam BUFF_DATA_M_Bit8   = 64;
//    localparam BUFF_DATA_M_Bit9   = DATA_WIDTH + 72;
//    localparam BUFF_DATA_M_Bit10  = DATA_WIDTH + 80;
//    localparam BUFF_DATA_M_Bit11  = DATA_WIDTH + 88;
//    localparam BUFF_DATA_M_Bit12  = DATA_WIDTH + 96;
//    localparam BUFF_DATA_M_Bit13  = DATA_WIDTH + 104;
    
    wire  pixel_clk    ;
    wire  s_axis_tlast ; 
    wire  s_axis_tuser ; 
    wire  s_axis_tvalid;     
    
    reg[2:0]                      s_axis_tlast_dly ;
    reg[2:0]                      s_axis_tuser_dly ;
    reg[2:0]                      s_axis_tvalid_dly;
    reg[BUFF_DATA_WIDTH-1:0] line_buff_0_tdata_dly ; 
    reg[BUFF_DATA_WIDTH-1:0] line_buff_1_tdata_dly ; 
    reg[BUFF_DATA_WIDTH-1:0] line_buff_2_tdata_dly ; 
    
    wire[DATA_WIDTH-1:0]  m_axis_tdata_reg ;




       
     
     
    assign pixel_clk     = s_axis_aclk;
    assign s_axis_tlast  = s_axis_line_buff_1_tlast ;
    assign s_axis_tuser  = s_axis_line_buff_1_tuser ;
    assign s_axis_tvalid = s_axis_line_buff_1_tvalid;
    
    assign m_axis_tlast  = s_axis_tlast_dly[1];
    assign m_axis_tuser  = s_axis_tuser_dly[1];
    assign m_axis_tvalid = s_axis_tvalid_dly[1];
    assign m_axis_tdata  = m_axis_tdata_reg ;

    always@(posedge pixel_clk)
    begin
        line_buff_0_tdata_dly <= {line_buff_0_tdata_dly[DATA_WIDTH -1:0],s_axis_line_buff_0_tdata};
        line_buff_1_tdata_dly <= {line_buff_1_tdata_dly[DATA_WIDTH -1:0],s_axis_line_buff_1_tdata};
        line_buff_2_tdata_dly <= {line_buff_2_tdata_dly[DATA_WIDTH -1:0],s_axis_line_buff_2_tdata}; 
        
        s_axis_tlast_dly <={s_axis_tlast_dly [1:0],s_axis_tlast} ;
        s_axis_tuser_dly <={s_axis_tuser_dly [1:0],s_axis_tuser} ;
        s_axis_tvalid_dly<={s_axis_tvalid_dly[1:0],s_axis_tvalid};       
        
    end

    GxGy_Grads3x3 GxGy_i_0
    (
        .clk(pixel_clk),
        .line_buff_0_tdata({line_buff_0_tdata_dly[BUFF_DATA_M_Bit2 -1 : BUFF_DATA_M_Bit0 ], line_buff_0_tdata_dly[127 : 120 ]}),
        .line_buff_1_tdata({line_buff_1_tdata_dly[BUFF_DATA_M_Bit2 -1 : BUFF_DATA_M_Bit0 ], line_buff_1_tdata_dly[127 : 120 ]}),
        .line_buff_2_tdata({line_buff_2_tdata_dly[BUFF_DATA_M_Bit2 -1 : BUFF_DATA_M_Bit0 ], line_buff_2_tdata_dly[127 : 120 ]}),
        .Gx(),
        .Gy(),  
        .GxGy(m_axis_tdata_reg[7:0])
    );

    GxGy_Grads3x3 GxGy_i_1
    (
        .clk(pixel_clk),
        .line_buff_0_tdata(line_buff_0_tdata_dly[BUFF_DATA_M_Bit3 -1 : BUFF_DATA_M_Bit0 ] ),
        .line_buff_1_tdata(line_buff_1_tdata_dly[BUFF_DATA_M_Bit3 -1 : BUFF_DATA_M_Bit0 ] ),
        .line_buff_2_tdata(line_buff_2_tdata_dly[BUFF_DATA_M_Bit3 -1 : BUFF_DATA_M_Bit0 ] ),
        .Gx(),
        .Gy(),  
        .GxGy(m_axis_tdata_reg[15:8])
    );
    
    GxGy_Grads3x3 GxGy_i_2
    (
        .clk(pixel_clk),
        .line_buff_0_tdata(line_buff_0_tdata_dly[BUFF_DATA_M_Bit4 -1 : BUFF_DATA_M_Bit1 ]),
        .line_buff_1_tdata(line_buff_1_tdata_dly[BUFF_DATA_M_Bit4 -1 : BUFF_DATA_M_Bit1 ]),
        .line_buff_2_tdata(line_buff_2_tdata_dly[BUFF_DATA_M_Bit4 -1 : BUFF_DATA_M_Bit1 ]),
        .Gx(),
        .Gy(),  
        .GxGy(m_axis_tdata_reg[23:16])
    );
    
    GxGy_Grads3x3 GxGy_i_3
    (
        .clk(pixel_clk),
        .line_buff_0_tdata(line_buff_0_tdata_dly[BUFF_DATA_M_Bit5 -1 : BUFF_DATA_M_Bit2 ]),
        .line_buff_1_tdata(line_buff_1_tdata_dly[BUFF_DATA_M_Bit5 -1 : BUFF_DATA_M_Bit2 ]),
        .line_buff_2_tdata(line_buff_2_tdata_dly[BUFF_DATA_M_Bit5 -1 : BUFF_DATA_M_Bit2 ]),
        .Gx(),
        .Gy(),  
        .GxGy(m_axis_tdata_reg[31:24])
    );
    
    GxGy_Grads3x3 GxGy_i_4
    (
        .clk(pixel_clk),
        .line_buff_0_tdata(line_buff_0_tdata_dly[BUFF_DATA_M_Bit6 -1 : BUFF_DATA_M_Bit3 ]),
        .line_buff_1_tdata(line_buff_1_tdata_dly[BUFF_DATA_M_Bit6 -1 : BUFF_DATA_M_Bit3 ]),
        .line_buff_2_tdata(line_buff_2_tdata_dly[BUFF_DATA_M_Bit6 -1 : BUFF_DATA_M_Bit3 ]),
        .Gx(),
        .Gy(),  
        .GxGy(m_axis_tdata_reg[39:32])
    );
    
    GxGy_Grads3x3 GxGy_i_5
    (
        .clk(pixel_clk),
        .line_buff_0_tdata(line_buff_0_tdata_dly[BUFF_DATA_M_Bit7 -1 : BUFF_DATA_M_Bit4 ]),
        .line_buff_1_tdata(line_buff_1_tdata_dly[BUFF_DATA_M_Bit7 -1 : BUFF_DATA_M_Bit4 ]),
        .line_buff_2_tdata(line_buff_2_tdata_dly[BUFF_DATA_M_Bit7 -1 : BUFF_DATA_M_Bit4 ]),
        .Gx(),
        .Gy(),  
        .GxGy(m_axis_tdata_reg[47:40])
    );
    
    GxGy_Grads3x3 GxGy_i_6
    (
        .clk(pixel_clk),
        .line_buff_0_tdata(line_buff_0_tdata_dly[BUFF_DATA_M_Bit8 -1 : BUFF_DATA_M_Bit5 ]),
        .line_buff_1_tdata(line_buff_1_tdata_dly[BUFF_DATA_M_Bit8 -1 : BUFF_DATA_M_Bit5 ]),
        .line_buff_2_tdata(line_buff_2_tdata_dly[BUFF_DATA_M_Bit8 -1 : BUFF_DATA_M_Bit5 ]),
        .Gx(),
        .Gy(),  
        .GxGy(m_axis_tdata_reg[55:48])
    );

    GxGy_Grads3x3 GxGy_i_7
    (
        .clk(pixel_clk),
        .line_buff_0_tdata({s_axis_line_buff_0_tdata[7 : 0],line_buff_0_tdata_dly[BUFF_DATA_M_Bit8 -1 : BUFF_DATA_M_Bit6 ]}),
        .line_buff_1_tdata({s_axis_line_buff_1_tdata[7 : 0],line_buff_1_tdata_dly[BUFF_DATA_M_Bit8 -1 : BUFF_DATA_M_Bit6 ]}),
        .line_buff_2_tdata({s_axis_line_buff_2_tdata[7 : 0],line_buff_2_tdata_dly[BUFF_DATA_M_Bit8 -1 : BUFF_DATA_M_Bit6 ]}),
        .Gx(),
        .Gy(),  
        .GxGy(m_axis_tdata_reg[63:56])
    );
     
     
     
     
     
     
     
     
endmodule
