`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/13 16:33:38
// Design Name: 
// Module Name: maxtri5x5_shift
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


module maxtri5x5_shift
    #(
        parameter DATA_WIDTH = 10,
        parameter IMG_HEIGHT = 480
    )
    (
        input       pixel_clk       ,
        input[DATA_WIDTH-1:0]  s_axis_tdata    ,
        input       s_axis_tlast    ,
        input       s_axis_tuser    ,
        input       s_axis_tvalid   ,
        
        output      line_buff_0_tlast    ,
        output      line_buff_0_tuser    ,
        output      line_buff_0_tvalid   ,
        output[DATA_WIDTH-1:0] line_buff_0_tdata, 
        
        output      line_buff_1_tlast    ,
        output      line_buff_1_tuser    ,
        output      line_buff_1_tvalid   ,
        output[DATA_WIDTH-1:0] line_buff_1_tdata, 
        
        output      line_buff_2_tlast    ,
        output      line_buff_2_tuser    ,
        output      line_buff_2_tvalid   ,
        output[DATA_WIDTH-1:0] line_buff_2_tdata, 
        
        output      line_buff_3_tlast    ,
        output      line_buff_3_tuser    ,
        output      line_buff_3_tvalid   ,
        output[DATA_WIDTH-1:0] line_buff_3_tdata, 
        
        output      line_buff_4_tlast    ,
        output      line_buff_4_tuser    ,
        output      line_buff_4_tvalid   ,
        output[DATA_WIDTH-1:0] line_buff_4_tdata 
        
    );
    
    localparam HL = 2'b10;
    
    reg[DATA_WIDTH-1:0] s_axis_tdata_dly1 , s_axis_tdata_dly2 ,s_axis_tdata_dly3 ;
    reg                 s_axis_tlast_dly1 , s_axis_tlast_dly2 ,s_axis_tlast_dly3 ;
    reg                 s_axis_tuser_dly1 , s_axis_tuser_dly2 ,s_axis_tuser_dly3 ;
    reg                 s_axis_tvalid_dly1, s_axis_tvalid_dly2,s_axis_tvalid_dly3;
    
    reg[DATA_WIDTH-1:0]  line_buff_0_tdata_reg ,line_buff_1_tdata_reg ,line_buff_2_tdata_reg ,
                         line_buff_3_tdata_reg ,line_buff_4_tdata_reg  ;
    reg                  line_buff_0_tlast_reg ,line_buff_1_tlast_reg ,line_buff_2_tlast_reg ,
                         line_buff_3_tlast_reg ,line_buff_4_tlast_reg   ;
    reg                  line_buff_0_tuser_reg ,line_buff_1_tuser_reg ,line_buff_2_tuser_reg ,
                         line_buff_3_tuser_reg ,line_buff_4_tuser_reg   ;
    reg                  line_buff_0_tvalid_reg,line_buff_1_tvalid_reg,line_buff_2_tvalid_reg,
                         line_buff_3_tvalid_reg,line_buff_4_tvalid_reg ;  
    
    reg[11:0] line_count = 12'd0; 
    reg[1:0] tvalid_reg;         
    
    wire[DATA_WIDTH + 2:0] line_buff_dout_1 ;
    wire[DATA_WIDTH + 2:0] line_buff_dout_2 ;
    wire[DATA_WIDTH + 2:0] line_buff_dout_3 ;
    wire[DATA_WIDTH + 2:0] line_buff_dout_4 ;
    
    reg        line_buff_1_rd;
    reg        line_buff_2_rd;
    reg        line_buff_3_rd;
    reg        line_buff_4_rd;
    
    reg        line_buff_1_wr_ctrl,line_buff_1_rd_ctrl;
    reg        line_buff_2_wr_ctrl,line_buff_2_rd_ctrl;
    reg        line_buff_3_wr_ctrl,line_buff_3_rd_ctrl;
    reg        line_buff_4_wr_ctrl,line_buff_4_rd_ctrl;
    
    
    
   //out connect
    assign line_buff_0_tlast  = line_buff_0_tlast_reg  ;
    assign line_buff_0_tuser  = line_buff_0_tuser_reg  ;
    assign line_buff_0_tvalid = line_buff_0_tvalid_reg ;
    assign line_buff_0_tdata  = line_buff_0_tdata_reg  ;
    
    assign line_buff_1_tlast  = line_buff_1_tlast_reg  ;
    assign line_buff_1_tuser  = (line_count < IMG_HEIGHT )? (line_buff_1_tuser_reg  & line_buff_0_tvalid_reg) : line_buff_1_tuser_reg  ;
    assign line_buff_1_tvalid = (line_count < IMG_HEIGHT )? (line_buff_1_tvalid_reg & line_buff_0_tvalid_reg) : line_buff_1_tvalid_reg ;
    assign line_buff_1_tdata  = line_buff_1_tdata_reg  ;
    
    assign line_buff_2_tlast  = line_buff_2_tlast_reg  ;
    assign line_buff_2_tuser  = (line_count < IMG_HEIGHT )? (line_buff_2_tuser_reg  & line_buff_0_tvalid_reg) : line_buff_2_tuser_reg  ;
    assign line_buff_2_tvalid = (line_count < IMG_HEIGHT )? (line_buff_2_tvalid_reg & line_buff_0_tvalid_reg) : line_buff_2_tvalid_reg ;
    assign line_buff_2_tdata  = line_buff_2_tdata_reg  ;
    
    assign line_buff_3_tlast  = line_buff_3_tlast_reg  ;
    assign line_buff_3_tuser  = (line_count < IMG_HEIGHT )? (line_buff_3_tuser_reg  & line_buff_0_tvalid_reg) : line_buff_3_tuser_reg  ;
    assign line_buff_3_tvalid = (line_count < IMG_HEIGHT )? (line_buff_3_tvalid_reg & line_buff_0_tvalid_reg) : line_buff_3_tvalid_reg ;
    assign line_buff_3_tdata  = line_buff_3_tdata_reg  ;
    
    assign line_buff_4_tlast  = line_buff_4_tlast_reg  ;
    assign line_buff_4_tuser  = (line_count < IMG_HEIGHT )? (line_buff_4_tuser_reg  & line_buff_0_tvalid_reg) : line_buff_4_tuser_reg  ;
    assign line_buff_4_tvalid = (line_count < IMG_HEIGHT )? (line_buff_4_tvalid_reg & line_buff_0_tvalid_reg) : line_buff_4_tvalid_reg ;
    assign line_buff_4_tdata  = line_buff_4_tdata_reg  ;
    
    
    always@(posedge pixel_clk )
    begin
        s_axis_tlast_dly1 <= s_axis_tlast ;
        s_axis_tuser_dly1 <= s_axis_tuser ;
        s_axis_tvalid_dly1<= s_axis_tvalid;
        s_axis_tdata_dly1 <= s_axis_tdata ;
        
        s_axis_tlast_dly2 <= s_axis_tlast_dly1 ;
        s_axis_tuser_dly2 <= s_axis_tuser_dly1 ;
        s_axis_tvalid_dly2<= s_axis_tvalid_dly1;
        s_axis_tdata_dly2 <= s_axis_tdata_dly1 ;
        
        s_axis_tlast_dly3  <= s_axis_tlast_dly2  ;
        s_axis_tuser_dly3  <= s_axis_tuser_dly2  ;
        s_axis_tvalid_dly3 <= s_axis_tvalid_dly2 ;
        s_axis_tdata_dly3  <= s_axis_tdata_dly2  ;
        
        
    end
    
    
    always@(posedge pixel_clk)
    begin
        tvalid_reg <= {tvalid_reg[0],s_axis_tvalid};
    end

    
    always@(posedge pixel_clk)
    begin
        if(s_axis_tuser)
        begin
            line_count <= 12'd0;    
        end
        else
        begin
            if(tvalid_reg == HL )
            begin
                line_count <= line_count + 1'b1;    
            end
            else
            begin
                line_count <= line_count;
            end
        end
    end

    
    always@(posedge pixel_clk)
    begin
    
       if(line_count == 12'd0)
       begin
           line_buff_1_rd <= 1'b0; 
           line_buff_2_rd <= 1'b0;
           line_buff_3_rd <= 1'b0; 
           line_buff_4_rd <= 1'b0;
       end
       else if(line_count == 12'd1)
       begin
           line_buff_1_rd <= s_axis_tvalid_dly1; 
       end
       else if(line_count == 12'd2)
       begin
           line_buff_1_rd <= s_axis_tvalid_dly1; 
           line_buff_2_rd <= s_axis_tvalid_dly1;
       end
       else if(line_count == 12'd3)
       begin
           line_buff_1_rd <= s_axis_tvalid_dly1; 
           line_buff_2_rd <= s_axis_tvalid_dly1;
           line_buff_3_rd <= s_axis_tvalid_dly1;
       end
       else if((12'd3 < line_count)&&(line_count < IMG_HEIGHT))
       begin
           line_buff_1_rd <= s_axis_tvalid_dly1; 
           line_buff_2_rd <= s_axis_tvalid_dly1;
           line_buff_3_rd <= s_axis_tvalid_dly1;
           line_buff_4_rd <= s_axis_tvalid_dly1;
       end
       else if(line_count == IMG_HEIGHT)
       begin
           line_buff_1_rd <= 1'b1; 
           line_buff_2_rd <= 1'b1;
           line_buff_3_rd <= 1'b1;
           line_buff_4_rd <= 1'b1;
       end
       else
       begin
           line_buff_1_rd <= line_buff_1_rd; 
           line_buff_2_rd <= line_buff_2_rd;
           line_buff_3_rd <= line_buff_3_rd;
           line_buff_4_rd <= line_buff_4_rd;
           
       end
       
    end
    
    always@(posedge pixel_clk)
    begin
        line_buff_1_wr_ctrl <= s_axis_tvalid_dly2;
        line_buff_1_rd_ctrl <= line_buff_1_rd;
        line_buff_2_wr_ctrl <= line_buff_dout_1[DATA_WIDTH];
        line_buff_2_rd_ctrl <= line_buff_2_rd;
        line_buff_3_wr_ctrl <= line_buff_dout_2[DATA_WIDTH];
        line_buff_3_rd_ctrl <= line_buff_3_rd;
        line_buff_4_wr_ctrl <= line_buff_dout_3[DATA_WIDTH];
        line_buff_4_rd_ctrl <= line_buff_4_rd;
        
    end
    
    
    fifo_maxtrix line_buff_1
    (
       .clk   (pixel_clk     ),
       .srst  (s_axis_tuser  ),
       .din   ({s_axis_tlast_dly2,s_axis_tuser_dly2,s_axis_tvalid_dly2,s_axis_tdata_dly2}),
       .wr_en (s_axis_tvalid_dly2 | line_buff_1_wr_ctrl),//s_axis_tvalid_dly2 | line_buff_1_wr_ctrl =多追加一个字节
       .rd_en (line_buff_1_rd | line_buff_1_rd_ctrl),
       .dout  (line_buff_dout_1),
       .full (),
       .empty ()
    );
       
    fifo_maxtrix line_buff_2
    (
       .clk   (pixel_clk     ),
       .srst  (s_axis_tuser  ),
       .din   (line_buff_dout_1),
       .wr_en (line_buff_dout_1[DATA_WIDTH] | line_buff_2_wr_ctrl),
       .rd_en (line_buff_2_rd | line_buff_2_rd_ctrl),
       .dout  (line_buff_dout_2),
       .full (),
       .empty ()
    );
    
    fifo_maxtrix line_buff_3
    (
       .clk   (pixel_clk     ),
       .srst  (s_axis_tuser  ),
       .din   (line_buff_dout_2),
       .wr_en (line_buff_dout_2[DATA_WIDTH] | line_buff_3_wr_ctrl),
       .rd_en (line_buff_3_rd | line_buff_3_rd_ctrl),
       .dout  (line_buff_dout_3),
       .full (),
       .empty ()
    );

    fifo_maxtrix line_buff_4
    (
       .clk   (pixel_clk     ),
       .srst  (s_axis_tuser  ),
       .din   (line_buff_dout_3),
       .wr_en (line_buff_dout_3[DATA_WIDTH] | line_buff_4_wr_ctrl),
       .rd_en (line_buff_4_rd | line_buff_4_rd_ctrl),
       .dout  (line_buff_dout_4),
       .full (),
       .empty ()
    );
    
    always@(*)
    begin
         
       line_buff_0_tlast_reg <= s_axis_tlast_dly3 ;
       line_buff_0_tuser_reg <= s_axis_tuser_dly3 ;
       line_buff_0_tvalid_reg<= s_axis_tvalid_dly3;
       line_buff_0_tdata_reg <= s_axis_tdata_dly3 ;
       
       line_buff_1_tlast_reg <= line_buff_dout_1[DATA_WIDTH + 2];   
       line_buff_1_tuser_reg <= line_buff_dout_1[DATA_WIDTH + 1];   
       line_buff_1_tvalid_reg<= line_buff_dout_1[DATA_WIDTH    ];   
       line_buff_1_tdata_reg <= line_buff_dout_1[DATA_WIDTH - 1:0]; 
       
       line_buff_2_tlast_reg <= line_buff_dout_2[DATA_WIDTH + 2];   
       line_buff_2_tuser_reg <= line_buff_dout_2[DATA_WIDTH + 1];   
       line_buff_2_tvalid_reg<= line_buff_dout_2[DATA_WIDTH    ];   
       line_buff_2_tdata_reg <= line_buff_dout_2[DATA_WIDTH - 1:0]; 
   
       line_buff_3_tlast_reg <= line_buff_dout_3[DATA_WIDTH + 2];   
       line_buff_3_tuser_reg <= line_buff_dout_3[DATA_WIDTH + 1];   
       line_buff_3_tvalid_reg<= line_buff_dout_3[DATA_WIDTH    ];   
       line_buff_3_tdata_reg <= line_buff_dout_3[DATA_WIDTH - 1:0]; 
   
       line_buff_4_tlast_reg <= line_buff_dout_4[DATA_WIDTH + 2];   
       line_buff_4_tuser_reg <= line_buff_dout_4[DATA_WIDTH + 1];   
       line_buff_4_tvalid_reg<= line_buff_dout_4[DATA_WIDTH    ];   
       line_buff_4_tdata_reg <= line_buff_dout_4[DATA_WIDTH - 1:0]; 
       
    end


endmodule

