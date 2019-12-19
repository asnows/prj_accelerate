`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/23 17:15:17
// Design Name: 
// Module Name: gaus_filter
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


module gaus_filter
    (
        input pixel_clk,
        input gaus_en,
        input line1_href ,
        input line1_vsync,
        input[9:0] matrix_data01, 
        input[9:0] matrix_data11, 
        input[9:0] matrix_data21, 
        output vsync_out,
        output href_out,
        output[9:0] data_raw_out,
        output[9:0] data_gaus_out
     );
     
     parameter LH = 2'b01;
     parameter HL = 2'b10;
     parameter IMG_WIDTH = 640;
     parameter IMG_HEIGHT = 480;
     
     reg [15:0] guas_out_reg,data_raw_out_reg;
     reg vsync_out_reg;
     reg href_out_reg ;
    
     reg [15:0] matrix_gaus01,matrix_gaus02,matrix_gaus03;
     reg [15:0] matrix_gaus11,matrix_gaus12,matrix_gaus13;
     reg [15:0] matrix_gaus21,matrix_gaus22,matrix_gaus23;
     reg [15:0] guas_tmp0,guas_tmp1;
     reg [15:0] data_raw_delay1, data_raw_delay2;
     reg        vsync_delay0,vsync_delay1,vsync_delay2,vsync_delay3;
     reg        href_delay0,href_delay1,href_delay2,href_delay3;
     reg [1:0]  href_reg;
     reg cols_gaus_en;
     reg rows_gaus_en;
     reg [9:0]rows_count = 10'd0;
     reg [9:0]cols_count = 10'd0;
     
     

    // -----------------------------gaus part----------------------------------// 
    assign vsync_out     = vsync_out_reg;         
    assign href_out      = href_out_reg ;          
    assign data_raw_out  = data_raw_out_reg;
    assign data_gaus_out = guas_out_reg;  
     
     always@(posedge pixel_clk)
     begin
        {matrix_gaus01,matrix_gaus02,matrix_gaus03} <= {matrix_gaus02,matrix_gaus03,6'b00_0000,matrix_data01};
        {matrix_gaus11,matrix_gaus12,matrix_gaus13} <= {matrix_gaus12,matrix_gaus13,6'b00_0000,matrix_data11};
        {matrix_gaus21,matrix_gaus22,matrix_gaus23} <= {matrix_gaus22,matrix_gaus23,6'b00_0000,matrix_data21};
    end
    
    always@(posedge pixel_clk)
    begin
        guas_tmp0 <= matrix_gaus01 + (matrix_gaus02 << 1) + matrix_gaus03
                   + (matrix_gaus11 << 1) + (matrix_gaus12 << 2) + (matrix_gaus13 << 1)
                   + matrix_gaus21 + (matrix_gaus22 << 1) + matrix_gaus23;
                    
    end
    
    always@(posedge pixel_clk)
    begin
        guas_tmp1 <= (guas_tmp0 >> 4); 
    end
    
    always@(posedge pixel_clk)
    begin
        vsync_delay0 <= line1_vsync;
        vsync_delay1 <= vsync_delay0;
        vsync_delay2 <= vsync_delay1;
        vsync_delay3 <= vsync_delay2;
        vsync_out_reg<= vsync_delay3;
        
        href_delay0 <= line1_href;
        href_delay1 <= href_delay0;
        href_delay2 <= href_delay1;
        href_delay3 <= href_delay2;
        href_out_reg<= href_delay3;
                             
        data_raw_delay1 <= matrix_gaus12;
        data_raw_delay2 <= data_raw_delay1;
        data_raw_out_reg<= data_raw_delay2;
        
    end
    
    always@(posedge pixel_clk)
    begin
        href_reg <= {href_reg[0],href_delay3};    
    end
    
    // get cols
    always@(posedge pixel_clk)
    begin
        if(href_delay3 == 1'b1)
            begin
                cols_count <= cols_count + 1'b1;
            end
        else
            begin
                cols_count <= 10'd0;
            end
    end
    
    //get rows;
    always@(posedge pixel_clk)
    begin
        if(vsync_delay3 == 1'b1)
            begin
                rows_count <= 10'd0;
            end
        else
            begin
                if(href_reg == HL)
                    begin
                        rows_count <= rows_count + 1'b1;    
                    end
            end
    end
    
    //get cols_dpc_en
    always@(posedge pixel_clk)
    begin
        if(href_delay3 == 1'b1 && (cols_count < IMG_WIDTH - 2))
            begin
                cols_gaus_en <= 1'b1;
            end
        else
            begin
                cols_gaus_en <= 1'b0;
            end
    end
    
    //get rows_dpc_en
    always@(posedge pixel_clk)
    begin
        if((rows_count > 10'd0)&&(rows_count < IMG_HEIGHT - 1'b1))
            begin
                rows_gaus_en <= 1'b1;    
            end
        else
            begin
                rows_gaus_en <= 1'b0;    
            end
    end
    
    
    always@(posedge pixel_clk)
    begin
        if((cols_gaus_en == 1'b1) && (rows_gaus_en == 1'b1) && (gaus_en == 1'b1))
        begin
            guas_out_reg <= guas_tmp1;    
        end
        else
        begin
            guas_out_reg <= data_raw_delay2;    
        end
    
    end
// -----------------------------guas part end----------------------------------//  

endmodule
