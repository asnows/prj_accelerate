`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/23 13:51:44
// Design Name: 
// Module Name: img_integral
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


module img_integral
    (
        input       pixel_clk ,
        input       resetn    ,
        input       enable    ,
        input       vsync     ,
        input       href      ,
        input[7:0]  data_in   ,
        output      vsync_out ,
        output      href_out  ,
        output[7:0] data_out
    );
    
    localparam  LH = 2'b01;
    reg         resetn_delay ;
    reg         enable_delay ;
    reg         vsync_delay1,vsync_delay2,vsync_delay3,vsync_delay4,vsync_delay5   ;
    reg         href_delay1,href_delay2,href_delay3,href_delay4,href_delay5    ;
    reg[7:0]    data_in_delay1,data_in_delay2,data_in_delay3,data_in_delay4;
    
    reg         vsync_out_reg;
    reg         href_out_reg;
    reg[7:0]    data_out_reg;
    
    reg         frame_buff_bram_wea  ;
    reg[18:0]   frame_buff_bram_addra;
    reg[7:0]    frame_buff_bram_dina ;
    reg[18:0]   frame_buff_bram_addrb;
    wire[7:0]   frame_buff_bram_doutb;
    
    reg[1:0]    vsync_reg = 2'd0;
    reg[1:0]    vsync_count = 2'd0;
    
    assign vsync_out = (enable == 1'b1 )? vsync_out_reg  : vsync  ;
    assign href_out  = (enable == 1'b1 )? href_out_reg   : href   ;
    assign data_out  = (enable == 1'b1 )? data_out_reg   : data_in;
    
    always@(posedge pixel_clk)
    begin
        resetn_delay <= resetn;
        enable_delay <= enable  ;
        vsync_delay1 <= vsync   ;
        vsync_delay2 <= vsync_delay1;
        vsync_delay3 <= vsync_delay2;
        vsync_delay4 <= vsync_delay3;
        vsync_delay5 <= vsync_delay4;
        
        href_delay1  <= href    ;
        href_delay2  <= href_delay1;
        href_delay3  <= href_delay2;
        href_delay4  <= href_delay3;
        href_delay5  <= href_delay4;
        
        
        data_in_delay1 <= data_in ;
        data_in_delay2 <= data_in_delay1 ;
        data_in_delay3 <= data_in_delay2 ;
        data_in_delay4 <= data_in_delay3 ;
        
        frame_buff_bram_wea <= href_delay4;
        frame_buff_bram_addra <= data_in_delay4;
    end
    
    always@(posedge pixel_clk)
    begin
        vsync_reg <= {vsync_reg[0],vsync_delay1};
    end
    
    always@(posedge pixel_clk)
    begin
        if(resetn_delay == 1'b0)
        begin
            vsync_count <= 2'd0;    
        end
        else
        begin
            if(vsync_count < 2'd3)
            begin
                if(vsync_reg == LH )
                begin
                    vsync_count <= vsync_count + 1'b1;
                end
                else
                begin
                    vsync_count <= vsync_count;
                end
            end
            else
            begin
                vsync_count <= vsync_count;
            end
        end
    end
    
    
    

    always@(posedge pixel_clk)
    begin
        if(vsync_delay1 == 1'b1)
        begin
            frame_buff_bram_addrb <= 19'd0;
        end
        else
        begin
            if(href_delay1 == 1'b1)
            begin
                frame_buff_bram_addrb <= frame_buff_bram_addrb + 1'b1;
            end
        end
    end 
    
    always@(posedge pixel_clk)
    begin
        if(vsync_count < 2'd2)
        begin
            frame_buff_bram_dina <= 8'd0;
        end
        else
        begin
            //frame_buff_bram_dina <= (frame_buff_bram_doutb >> 1) + (frame_buff_bram_doutb >> 2) + (data_in_delay3 >> 1); 
            frame_buff_bram_dina <= frame_buff_bram_dina + 1;            
        end
    end
       
    always@(posedge pixel_clk)
    begin
        vsync_out_reg <= vsync_delay3;
        href_out_reg  <= href_delay3;     
        data_out_reg  <= frame_buff_bram_doutb; 
    end
    
    
    blk_mem_gen_0 frame_buff_bram
      (
       .clka (pixel_clk        ),
       .wea  (frame_buff_bram_wea   ),
       .addra(frame_buff_bram_addra ),
       .dina (frame_buff_bram_dina  ),
       .clkb (pixel_clk        ),
       .addrb(frame_buff_bram_addrb ),
       .doutb(frame_buff_bram_doutb )
     );
     
    
endmodule
