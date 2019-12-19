`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 13:58:45
// Design Name: 
// Module Name: sobel3x3_algorithm
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


//////////////////////////////////////////////////////////////////////////////////
//双阈值处理（滞后阈值处理）
module canny_HystThreshold
    #(
        parameter DATA_WIDTH = 8,
        parameter IMG_WIDTH = 640
    )
    (
        input       s_axis_aclk       ,
        
        input                   s_axis_matrix0_tlast    ,
        input                   s_axis_matrix0_tuser    ,
        input                   s_axis_matrix0_tvalid   ,        
        input[1:0]              s_axis_matrix0_tdata    ,// 标记
        
        input                   s_axis_matrix1_tlast    ,
        input                   s_axis_matrix1_tuser    ,
        input                   s_axis_matrix1_tvalid   ,        
        input[1:0]              s_axis_matrix1_tdata    ,// 标记
        
        input                   s_axis_matrix2_tlast    ,
        input                   s_axis_matrix2_tuser    ,
        input                   s_axis_matrix2_tvalid   ,        
        input[1:0]              s_axis_matrix2_tdata    ,// 标记
                          
        output                  m_axis_tlast    ,
        output                  m_axis_tuser    ,
        output                  m_axis_tvalid   ,
        output                  m_axis_test_tdata   ,
        output[DATA_WIDTH-1:0]  m_axis_tdata
    
    );   
    
  
    reg                    s_axis_tlast_dly1 ,s_axis_tlast_dly2 ,s_axis_tlast_dly3  ;
    reg                    s_axis_tuser_dly1 ,s_axis_tuser_dly2 ,s_axis_tuser_dly3  ;
    reg                    s_axis_tvalid_dly1,s_axis_tvalid_dly2,s_axis_tvalid_dly3 ;
    reg[1:0]               matrix0_tdata_dly1,matrix0_tdata_dly2,matrix0_tdata_dly3 ;
    reg[1:0]               matrix1_tdata_dly1,matrix1_tdata_dly2,matrix1_tdata_dly3 ;
    reg[1:0]               matrix2_tdata_dly1,matrix2_tdata_dly2,matrix2_tdata_dly3 ; 
    reg[DATA_WIDTH-1:0]    tdata_out_reg1; 
    
    reg pre_mem[0:IMG_WIDTH -1];
    reg [2:0] pre_row_flg;// 前一行标记
    reg       pre_col_flg;//前一列标记
    reg       cur_flg;
    reg [11:0] read_addr  = 12'd0;
    reg [11:0] write_addr = 12'd0;
    
     
    assign m_axis_tlast  = s_axis_tlast_dly3  ;
    assign m_axis_tuser  = s_axis_tuser_dly3  ;
    assign m_axis_tvalid = s_axis_tvalid_dly3 ;
    assign m_axis_tdata  = tdata_out_reg1     ;
    assign m_axis_test_tdata = pre_row_flg[0];
    always@(posedge s_axis_aclk)
    begin        
    
        s_axis_tlast_dly1  <= s_axis_matrix1_tlast;
        s_axis_tuser_dly1  <= s_axis_matrix1_tuser;
        s_axis_tvalid_dly1 <= s_axis_matrix1_tvalid;
        
        s_axis_tlast_dly2  <= s_axis_tlast_dly1  ;
        s_axis_tuser_dly2  <= s_axis_tuser_dly1  ;
        s_axis_tvalid_dly2 <= s_axis_tvalid_dly1 ;
        
        s_axis_tlast_dly3  <= s_axis_tlast_dly2  ;
        s_axis_tuser_dly3  <= s_axis_tuser_dly2  ;
        s_axis_tvalid_dly3 <= s_axis_tvalid_dly2 ;        
                 
        matrix0_tdata_dly1 <= s_axis_matrix0_tdata ;
        matrix1_tdata_dly1 <= s_axis_matrix1_tdata ;
        matrix2_tdata_dly1 <= s_axis_matrix2_tdata ;
        
        matrix0_tdata_dly2 <= matrix0_tdata_dly1 ;
        matrix1_tdata_dly2 <= matrix1_tdata_dly1 ;
        matrix2_tdata_dly2 <= matrix2_tdata_dly1 ;
              
        matrix0_tdata_dly3 <= matrix0_tdata_dly2 ;
        matrix1_tdata_dly3 <= matrix1_tdata_dly2 ;
        matrix2_tdata_dly3 <= matrix2_tdata_dly2 ;
               
    end



//    always@(*)
//    begin
//        case(matrix1_tdata_dly2)
//            2'b00:
//            begin
//                tdata_out_reg1 <=   {DATA_WIDTH {1'b0}}; 
//                cur_flg <= 1'b0;
//            end
//            2'b01:
//            begin
//                if(matrix0_tdata_dly1[1] || matrix0_tdata_dly2[1] || matrix0_tdata_dly3[1] 
//                  ||matrix1_tdata_dly1[1] || matrix1_tdata_dly3[1]
//                  ||matrix2_tdata_dly1[1] || matrix2_tdata_dly2[1] || matrix2_tdata_dly3[1]  )
//                begin
//                    tdata_out_reg1 <=   {DATA_WIDTH {1'b1}}; 
//                    cur_flg <= 1'b1;
                    
//                end
//                else
//                begin
//                    tdata_out_reg1 <=   {DATA_WIDTH {1'b0}}; 
//                    cur_flg <= 1'b0;
                  
//                end
//            end
//            2'b10:
//            begin
//                tdata_out_reg1 <=   {DATA_WIDTH {1'b1}}; 
//                cur_flg <= 1'b1;
//            end
//            default:
//            begin
//                tdata_out_reg1 <=   {DATA_WIDTH {1'b0}}; 
//                cur_flg <= 1'b0;
//            end      
//        endcase
//    end 
 
 
    always@(posedge s_axis_aclk)
    begin
        case(matrix1_tdata_dly2)
            2'b00:
            begin
                tdata_out_reg1 <=   {DATA_WIDTH {1'b0}}; 
                cur_flg <= 1'b0;
            end
            2'b01:
            begin
                if(matrix0_tdata_dly1[1]  || matrix0_tdata_dly2[1] || matrix0_tdata_dly3[1] 
                  ||matrix1_tdata_dly1[1] || pre_col_flg//matrix1_tdata_dly3[1]
                  ||pre_row_flg[0]|| pre_row_flg[1]|| pre_row_flg[2]  )
                begin
                    tdata_out_reg1 <=   {DATA_WIDTH {1'b1}}; 
                    cur_flg <= 1'b1;
                    
                end
                else
                begin
                    tdata_out_reg1 <=   {DATA_WIDTH {1'b0}}; 
                    cur_flg <= 1'b0;                 
                end
            end
            2'b10:
            begin
                tdata_out_reg1 <=   {DATA_WIDTH {1'b1}}; 
                cur_flg <= 1'b1;
            end
            default:
            begin
                tdata_out_reg1 <=   {DATA_WIDTH {1'b0}}; 
                cur_flg <= 1'b0;
            end      
        endcase
    end 

    always@(posedge s_axis_aclk)
    begin
        if(s_axis_matrix1_tvalid)
        begin
            if(read_addr < IMG_WIDTH -1)
            begin
                read_addr <= read_addr + 1'b1;
            end
            else
            begin
                read_addr <= 12'd0;
            end
        end
    end
    
    always@(posedge s_axis_aclk)
    begin
        if(s_axis_tvalid_dly2)
        begin
            if(write_addr < IMG_WIDTH -1)
            begin
                write_addr <= write_addr + 1'b1;
            end
            else
            begin
                write_addr <= 12'd0;
            end
        end
    end  
    
    
    always@(negedge s_axis_aclk)
    begin
       pre_row_flg[2]  <= pre_mem[read_addr]; 
       pre_row_flg[1]  <= pre_row_flg[2];
       pre_row_flg[0]  <= pre_row_flg[1];   
       pre_col_flg     <= cur_flg;
           
    end
    
    always@(posedge s_axis_aclk)
    begin
        pre_mem[write_addr]<= cur_flg;
    end
              
endmodule
