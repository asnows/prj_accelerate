`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/22 13:17:56
// Design Name: 
// Module Name: gaus_sharp
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


module gaus_sharp
    (
        input pixel_clk,
        input vsync_in,
        input href_in,
        input shrap_en,
        input[9:0]  sharp_threlode_in,
        input[7:0]  sharp_factor_in,
        input[9:0]  data_raw_in,
        input[9:0]  data_gaus_in,
        
        output vsync_out,
        output href_out,
        output[9:0] data_out
    );
    
    reg[19:0] data_abs = 20'd0,data_tmp2 = 20'd0;
    reg vsync_delay1,vsync_delay2,vsync_delay3,vsync_delay4;
    reg href_delay1,href_delay2,href_delay3,href_delay4;
    reg data_abs_flg = 1'b0;
    reg[9:0]  sharp_threlode;
    reg[7:0]  sharp_factor;
    reg[9:0]  data_raw_delay1,data_raw_delay2,data_raw_delay3,data_raw_delay4;
    reg[9:0]  data_gaus_delay1,data_gaus_delay2,data_gaus_delay3,data_gaus_delay4;
    reg[9:0]  data_out_reg;
    wire[19:0] data_factor;
   
    
    
    assign  vsync_out = (shrap_en == 1'b1) ? vsync_delay4 : vsync_in;    
    assign  href_out  = (shrap_en == 1'b1) ? href_delay4  : href_in ;     
    assign  data_out  = (shrap_en == 1'b1) ? data_out_reg : data_gaus_in ; 
    assign data_factor = sharp_factor*data_abs; 
    
    always@(posedge pixel_clk)
    begin
        sharp_threlode    <= sharp_threlode_in;
        sharp_factor      <= sharp_factor_in ;
        
        data_raw_delay1   <= data_raw_in     ;
        data_raw_delay2   <= data_raw_delay1;
        data_raw_delay3   <= data_raw_delay2;
        
        data_gaus_delay1  <= data_gaus_in    ;
        data_gaus_delay2  <= data_gaus_delay1;
        data_gaus_delay3  <= data_gaus_delay2;
        
    end
    
    always@(posedge pixel_clk)
    begin
        if(data_raw_delay1 > data_gaus_delay1)
        begin
            data_abs_flg <= 1'b1;
            data_abs <= data_raw_delay1 - data_gaus_delay1;    
        end
        else
        begin
            data_abs_flg <= 1'b0;
            data_abs <= data_gaus_delay1 - data_raw_delay1;    
        end
    end
    
    always@(posedge pixel_clk)
    begin
        if(data_abs_flg == 1'b1)
        begin
            //data_tmp2 <= data_raw_delay2 + sharp_factor*data_abs; 
            data_tmp2 <= data_raw_delay2 + data_factor;       
        end
        else
        begin
            if(data_raw_delay2 > data_factor )
            begin
                data_tmp2 <= data_raw_delay2 - data_factor; 
            end
            else
            begin
                data_tmp2 <= data_raw_delay2;  
            end
        
        end
        //data_tmp2 <= data_raw_delay2 + sharp_factor*data_abs;    
    end
    
    always@(posedge pixel_clk)
    begin
        if(data_abs > sharp_threlode)
        begin
            if(data_tmp2 > 10'd1023)
            begin
                data_out_reg <= 10'd1023;
            end
            else
            begin
                data_out_reg <= data_tmp2;     
            end
        end
        else
        begin
            data_out_reg <= data_gaus_delay3;
        end
    end
    
    always@(posedge pixel_clk)
    begin
        vsync_delay1 <= vsync_in;
        vsync_delay2 <= vsync_delay1;
        vsync_delay3 <= vsync_delay2;
        vsync_delay4 <= vsync_delay3;
        
        href_delay1 <= href_in;
        href_delay2 <= href_delay1;
        href_delay3 <= href_delay2;
        href_delay4 <= href_delay3;
    end
    
    
    
    
endmodule
