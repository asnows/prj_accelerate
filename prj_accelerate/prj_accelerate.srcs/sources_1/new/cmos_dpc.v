`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/12 15:32:03
// Design Name: 
// Module Name: cmos_dpc
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
//`define DE_BUG_CMOS_DPC
//`define OLD

//////////////////////////////////////////////////////////////////////////////////


module cmos_dpc
    (
        input pixel_clk,
        input dpc_en,
        input[9:0] threshold,    
        input line1_href ,
        input line1_vsync,
        input[9:0] matrix_data01, 
        input[9:0] matrix_data11, 
        input[9:0] matrix_data21, 
        output vsync_out,
        output href_out,
        output[9:0] data_dpc_out
     );
     
     parameter LH = 2'b01;
     parameter HL = 2'b10;
     parameter IMG_WIDTH = 640;
     parameter IMG_HEIGHT = 480;
     

     reg [9:0] matrix_01,matrix_02,matrix_03;
     reg [9:0] matrix_11,matrix_12,matrix_13;
     reg [9:0] matrix_21,matrix_22,matrix_23;
     reg [9:0] matrix_abs01,matrix_abs02,matrix_abs03;
     reg [9:0] matrix_abs11,matrix_abs12,matrix_abs13;
     reg [9:0] matrix_abs21,matrix_abs22,matrix_abs23;
     reg [9:0]threshold_value = 10'd90;
     reg [9:0]rows_count = 10'd0;
     reg [9:0]cols_count = 10'd0;
     reg[9:0] data_DPCed;
     reg[6:0] href_reg;
     reg[6:0] vsync_reg;
     reg href_tmp;
     reg vsync_tmp;
     reg cols_dpc_en;
     reg rows_dpc_en;
     reg vsync_out_reg;
     reg href_out_reg;
     reg [9:0] dpc_out_reg;
     reg [9:0] min_abs1,min_abs2,min_abs3,min_abs4,min_abs5,min_abs6,min_abs7;
     reg [9:0] matrix_12_delay1,matrix_12_delay2,matrix_12_delay3;
     reg [9:0] matrix_12_delay4,matrix_12_delay5,matrix_12_delay6;   
     
     reg [11:0] data_Aver_tmp;
     reg [9:0] data_Aver_delay1;
     reg [9:0] data_Aver_delay2;
     reg [9:0] data_Aver_delay3; 
     reg line1_href_delay;
     reg line1_vsync_delay;
//     reg [15:0] guas_out_reg;
     
     
    assign vsync_out     = vsync_out_reg   ;
    assign href_out      = href_out_reg    ;
    assign data_dpc_out  = dpc_out_reg     ;

     
  
    //get 3x3 matrix
    always@(posedge pixel_clk)
    begin
        {matrix_01,matrix_02,matrix_03} <= {matrix_02,matrix_03,matrix_data01};
        {matrix_11,matrix_12,matrix_13} <= {matrix_12,matrix_13,matrix_data11};
        {matrix_21,matrix_22,matrix_23} <= {matrix_22,matrix_23,matrix_data21};
    end
           
 // -----------------------------dpc part----------------------------------//            
    //get matrix_abs
    always@(posedge pixel_clk)
    begin
    //matrix_abs01
        if(matrix_01 > matrix_12 )
            begin
                matrix_abs01 <=  matrix_01 -  matrix_12;  
            end
        else
            begin
                matrix_abs01 <=  matrix_12 -  matrix_01;  
    
            end
     //matrix_abs02   
        if(matrix_02 > matrix_12 )
            begin
                matrix_abs02 <=  matrix_02 -  matrix_12;  
            end
        else
            begin
                matrix_abs02 <=  matrix_12 -  matrix_02;  
            end
     //matrix_abs03  
        if(matrix_03 > matrix_12 )
            begin
                matrix_abs03 <=  matrix_03 -  matrix_12;  
            end
        else
            begin
                matrix_abs03 <=  matrix_12 -  matrix_03;  
            end
     //--------------------matrix_abs11,matrix_abs12,matrix_abs13--------------------//       
    //matrix_abs11            
        if(matrix_11 > matrix_12 )
                begin
                    matrix_abs11 <=  matrix_11 -  matrix_12;  
                end
            else
                begin
                    matrix_abs11 <=  matrix_12 -  matrix_11;  
        
                end
    //matrix_abs12   
        if(matrix_13 > matrix_12 )
            begin
                matrix_abs13 <=  matrix_13 -  matrix_12;  
            end
        else
            begin
                matrix_abs13 <=  matrix_12 -  matrix_13;  
            end
      //-------------------matrix_abs21,matrix_abs22,matrix_abs23---------------------//      
    //matrix_abs21
        if(matrix_21 > matrix_12 )
            begin
                matrix_abs21 <=  matrix_21 -  matrix_12;  
            end
        else
            begin
                matrix_abs21 <=  matrix_12 -  matrix_21;  
    
            end
     //matrix_abs22   
        if(matrix_22 > matrix_12 )
            begin
                matrix_abs22 <=  matrix_22 -  matrix_12;  
            end
        else
            begin
                matrix_abs22 <=  matrix_12 -  matrix_22;  
            end
     //matrix_abs23  
        if(matrix_23 > matrix_12 )
            begin
                matrix_abs23 <=  matrix_23 -  matrix_12;  
            end
        else
            begin
                matrix_abs23 <=  matrix_12 -  matrix_23;  
            end       
    end
    
    //get min_abs(min_abs7)
    always@(posedge pixel_clk)
    begin
        if(matrix_abs01 > matrix_abs02)
        begin
            min_abs1 <= matrix_abs02;  
        end  
        else
        begin
            min_abs1 <=  matrix_abs01;
        end
            
        if(matrix_abs03 > matrix_abs11)
        begin
            min_abs2 <= matrix_abs11;  
        end  
        else
        begin
            min_abs2 <=  matrix_abs03;
        end
        
        if(matrix_abs13 > matrix_abs21)
        begin
            min_abs3 <= matrix_abs21;  
        end  
        else
        begin
            min_abs3 <=  matrix_abs13;
        end
        
        if(matrix_abs22 > matrix_abs23)
        begin
            min_abs4 <= matrix_abs23;  
        end  
        else
        begin
            min_abs4 <=  matrix_abs22;
        end
        
    end
    
    always@(posedge pixel_clk)
    begin
        if(min_abs1 > min_abs2)
        begin
            min_abs5 <= min_abs2;
        end
        else
        begin
            min_abs5 <= min_abs1;
        end
        
        if(min_abs3 > min_abs4)
        begin
            min_abs6 <= min_abs4;
        end
        else
        begin
            min_abs6 <= min_abs3;
        end
        
    end
    
    always@(posedge pixel_clk)
    begin
        if(min_abs5 > min_abs6)
        begin
            min_abs7 <= min_abs6;
        end
        else
        begin
            min_abs7 <= min_abs5;
        end
    end
    
    //get matrix_02,matrix_11,matrix_13,matrix_22  Average
    always@(posedge pixel_clk)
    begin
        data_Aver_tmp    <= matrix_02 + matrix_11 + matrix_13 + matrix_22;
        data_Aver_delay1 <= (data_Aver_tmp>>2);
        data_Aver_delay2 <= data_Aver_delay1;
        data_Aver_delay3 <= data_Aver_delay2;
    end
    
    // get matrix_12 delay
    always@(posedge pixel_clk)
    begin
        matrix_12_delay1 <= matrix_12 ;
        matrix_12_delay2 <= matrix_12_delay1 ;
        matrix_12_delay3 <= matrix_12_delay2 ;
        matrix_12_delay4 <= matrix_12_delay3 ; 
        matrix_12_delay5 <= matrix_12_delay4 ;
        matrix_12_delay6 <= matrix_12_delay5 ;         
    end
    
    //get dpc data
    always@(posedge pixel_clk)
    begin
        if(min_abs7 > threshold_value)
            begin
                data_DPCed <=  data_Aver_delay3; 
            end
        else
            begin
                data_DPCed <=  matrix_12_delay4;   
            end
    end
    
    
    //data out control
    always@(posedge pixel_clk)
    begin
        vsync_out_reg <= line1_vsync_delay;
        href_out_reg  <= line1_href_delay; 
        
        if((cols_dpc_en == 1'b1) && (rows_dpc_en == 1'b1) && (dpc_en == 1'b1))
            begin
                dpc_out_reg <= data_DPCed;    
            end
        else
            begin
                dpc_out_reg <= matrix_12_delay5;    
            end
    end
    
    
    //delay control
    always@(posedge pixel_clk)
    begin
        threshold_value <= threshold;
        
        href_reg  <= {href_reg[5:0],line1_href};
        line1_href_delay  <= href_reg[5]; 
        vsync_reg <= {vsync_reg[5:0],line1_vsync};
        line1_vsync_delay <= vsync_reg[5]; 
    end
    
    // get cols
    always@(posedge pixel_clk)
    begin
        if(line1_href_delay == 1'b1)
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
        if(line1_vsync_delay == 1'b1)
            begin
                rows_count <= 10'd0;
            end
        else
            begin
                if(href_reg[6:5] == HL)
                    begin
                        rows_count <= rows_count + 1'b1;    
                    end
            end
    end
    
    //get cols_dpc_en
    always@(posedge pixel_clk)
    begin
        if(line1_href_delay == 1'b1 && (cols_count < IMG_WIDTH - 2))
            begin
                cols_dpc_en <= 1'b1;
            end
        else
            begin
                cols_dpc_en <= 1'b0;
            end
    end
    
    //get rows_dpc_en
    always@(posedge pixel_clk)
    begin
        if((rows_count > 10'd0)&&(rows_count < IMG_HEIGHT - 1'b1))
            begin
                rows_dpc_en <= 1'b1;    
            end
        else
            begin
                rows_dpc_en <= 1'b0;    
            end
    end
    
 // -----------------------------dpc part end----------------------------------//  

  
// // -----------------------------gaus part----------------------------------// 
 
//     reg [15:0] matrix_gaus01,matrix_gaus02,matrix_gaus03;
//     reg [15:0] matrix_gaus11,matrix_gaus12,matrix_gaus13;
//     reg [15:0] matrix_gaus21,matrix_gaus22,matrix_gaus23;
//     reg [15:0] guas_tmp0,guas_tmp1;
//     reg [15:0] guas_delay1,guas_delay2,guas_delay3,guas_delay4;
     
     
//     always@(posedge pixel_clk)
//     begin
//        {matrix_gaus01,matrix_gaus02,matrix_gaus03} <= {matrix_gaus02,matrix_gaus03,6'b00_0000,matrix_data01};
//        {matrix_gaus11,matrix_gaus12,matrix_gaus13} <= {matrix_gaus12,matrix_gaus13,6'b00_0000,matrix_data11};
//        {matrix_gaus21,matrix_gaus22,matrix_gaus23} <= {matrix_gaus22,matrix_gaus23,6'b00_0000,matrix_data21};
//    end
    
//    always@(posedge pixel_clk)
//    begin
//        guas_tmp0 <= matrix_gaus01 + (matrix_gaus02 << 1) + matrix_gaus03
//                   + (matrix_gaus11 << 1) + (matrix_gaus12 << 2) + (matrix_gaus13 << 1)
//                   + matrix_gaus21 + (matrix_gaus22 << 1) + matrix_gaus23;
                    
//    end
    
//    always@(posedge pixel_clk)
//    begin
//        guas_tmp1 <= (guas_tmp0 >> 4); 
//    end
    
//    always@(posedge pixel_clk)
//    begin
//        guas_delay1 <= guas_tmp1;
//        guas_delay2 <= guas_delay1;
//        guas_delay3 <= guas_delay2;
//        //guas_delay4 <= guas_delay3;
//    end
    
//    always@(posedge pixel_clk)
//    begin
//        if((cols_dpc_en == 1'b1) && (rows_dpc_en == 1'b1))
//        begin
//            guas_out_reg <= guas_delay3;    
//        end
//        else
//        begin
//            guas_out_reg <= matrix_12_delay5;    
//        end
    
//    end
//  // -----------------------------guas part end----------------------------------//  
    
          
endmodule
