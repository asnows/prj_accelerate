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
//      -1   0   1            -1  -2  -1
// Gx = -2   0   2      Gy =  0   0   0
//      -1   0   1            1   2   1

//对于梯度的方向θ=arctan(Gy/Gx)，硬件实现较为困难，需要消耗很多硬件资源，
//一般是比较像素领域窗口，对于3×3窗口而言，求其领域8个方向，由于对称性，
//只需要求得4个方向，0°、45°、90°和135°，即把梯度Gy的值与Gxtan22.5°和Gxtan67.5°比较，
//同时判断GyGx乘积的正负性，可求得梯度的方向θ值的大小。
//为节约硬件资源可以采取对Gy左移4位，Gxtan22.5°左移4位，取值约为6.625Gx，Gxtan67.5°左移4位，约为38.625Gx，
//即：
//6.625Gx = (4+2+1/2+1/8)Gx;
//38.625Gx = (34+4+2+1/2+1/8)Gx;
//通过简单移位判断大小和正负性，得到梯度方向θ的近似值。

//////////////////////////////////////////////////////////////////////////////////
//非最大值抑制
module canny_NonMaxSupp
    #(
        parameter DATA_WIDTH = 13  // data(11bit)+ dir(2bit)
    )
    (
        input       s_axis_aclk       ,
        input       enable            ,
        input[7:0]  maxVal,// 最大阈值
        input[7:0]  minVal,//最小阈值  
              
        input                   s_axis_matrix0_tlast    ,
        input                   s_axis_matrix0_tuser    ,
        input                   s_axis_matrix0_tvalid   ,        
        input[DATA_WIDTH-1:0]   s_axis_matrix0_tdata    ,// 梯度方向+幅值
        
        input                   s_axis_matrix1_tlast    ,
        input                   s_axis_matrix1_tuser    ,
        input                   s_axis_matrix1_tvalid   ,        
        input[DATA_WIDTH-1:0]   s_axis_matrix1_tdata    ,// 梯度方向+幅值
        
        input                   s_axis_matrix2_tlast    ,
        input                   s_axis_matrix2_tuser    ,
        input                   s_axis_matrix2_tvalid   ,        
        input[DATA_WIDTH-1:0]   s_axis_matrix2_tdata    ,// 梯度方向+幅值
                                                     
        output                  m_axis_tlast    ,
        output                  m_axis_tuser    ,
        output                  m_axis_tvalid   ,
        output[7:0]             m_test_tdata    ,       //输出非极大值处理图
        output[1:0]             m_axis_tdata            //非极大值处理后的边缘标记输出

     );
     
     wire                   s_axis_tlast     ;
     wire                   s_axis_tuser     ;
     wire                   s_axis_tvalid    ;  
     wire[DATA_WIDTH-1:0]   matrix0_dir_tdata;// 梯度方向+幅值
     wire[DATA_WIDTH-1:0]   matrix1_dir_tdata;// 梯度方向+幅值
     wire[DATA_WIDTH-1:0]   matrix2_dir_tdata;// 梯度方向+幅值                     
          
     reg                    s_axis_tlast_dly1 ,s_axis_tlast_dly2 ,s_axis_tlast_dly3  ;
     reg                    s_axis_tuser_dly1 ,s_axis_tuser_dly2 ,s_axis_tuser_dly3  ;
     reg                    s_axis_tvalid_dly1,s_axis_tvalid_dly2,s_axis_tvalid_dly3 ;
     reg[DATA_WIDTH-3:0]      matrix0_tdata_dly1,matrix0_tdata_dly2,matrix0_tdata_dly3 ;
     reg[DATA_WIDTH-3:0]      matrix1_tdata_dly1,matrix1_tdata_dly2,matrix1_tdata_dly3 ;
     reg[DATA_WIDTH-3:0]      matrix2_tdata_dly1,matrix2_tdata_dly2,matrix2_tdata_dly3 ; 
     reg[DATA_WIDTH-3:0]      tdata_out_reg1;    
     reg[1:0]                 tdata_flg_reg;
     //梯度方向变量
     reg [1:0] theta_dly1,theta_dly2,theta_dly3; // 0 = 0 度，1 = 45度，2 = 90度，3 = 135度
     
     //input connect
     assign s_axis_tlast      = s_axis_matrix1_tlast ;
     assign s_axis_tuser      = s_axis_matrix1_tuser ;
     assign s_axis_tvalid     = s_axis_matrix1_tvalid;  
     assign matrix0_dir_tdata = s_axis_matrix0_tdata ;// 梯度方向+幅值
     assign matrix1_dir_tdata = s_axis_matrix1_tdata ;// 梯度方向+幅值
     assign matrix2_dir_tdata = s_axis_matrix2_tdata ;// 梯度方向+幅值   
     //output connect
     assign m_axis_tlast  = (enable == 1'b1)?s_axis_tlast_dly3  : s_axis_tlast_dly1  ;
     assign m_axis_tuser  = (enable == 1'b1)?s_axis_tuser_dly3  : s_axis_tuser_dly1  ;
     assign m_axis_tvalid = (enable == 1'b1)?s_axis_tvalid_dly3 : s_axis_tvalid_dly1 ;
     //assign m_axis_tdata  = (enable == 1'b1)?tdata_out_reg1    : matrix1_tdata_dly1 ;
     assign m_axis_tdata  = (enable == 1'b1)?tdata_flg_reg       :2'd0 ;
     assign m_test_tdata = (tdata_out_reg1 > 255)? 8'd255: tdata_out_reg1;
    
     always@(posedge s_axis_aclk)
     begin
        s_axis_tlast_dly1  <= s_axis_tlast ;
        s_axis_tlast_dly2  <= s_axis_tlast_dly1 ;
        s_axis_tlast_dly3  <= s_axis_tlast_dly2 ;
        
        s_axis_tuser_dly1  <= s_axis_tuser ;
        s_axis_tuser_dly2  <= s_axis_tuser_dly1 ;
        s_axis_tuser_dly3  <= s_axis_tuser_dly2 ;
        
        s_axis_tvalid_dly1  <= s_axis_tvalid ;
        s_axis_tvalid_dly2  <= s_axis_tvalid_dly1 ;
        s_axis_tvalid_dly3  <= s_axis_tvalid_dly2 ;        
        
        
        matrix0_tdata_dly1 <= matrix0_dir_tdata[DATA_WIDTH-3:0]  ;
        matrix0_tdata_dly2 <= matrix0_tdata_dly1 ;
        matrix0_tdata_dly3 <= matrix0_tdata_dly2 ;
        
        matrix1_tdata_dly1 <= matrix1_dir_tdata[DATA_WIDTH-3:0]  ;
        matrix1_tdata_dly2 <= matrix1_tdata_dly1 ;
        matrix1_tdata_dly3 <= matrix1_tdata_dly2 ;
        
        matrix2_tdata_dly1 <= matrix2_dir_tdata[DATA_WIDTH-3:0]  ;
        matrix2_tdata_dly2 <= matrix2_tdata_dly1 ;
        matrix2_tdata_dly3 <= matrix2_tdata_dly2 ;
        
        theta_dly1 <= matrix1_dir_tdata[DATA_WIDTH-1:DATA_WIDTH-2];
        theta_dly2 <= theta_dly1;
        theta_dly3 <= theta_dly2;
    
     end
     
     always@(posedge s_axis_aclk)
     begin
        case(theta_dly2)
            2'd0:
            begin
                if((matrix1_tdata_dly3 <  matrix1_tdata_dly2) && (matrix1_tdata_dly2 >= matrix1_tdata_dly1) )
                begin
                    tdata_out_reg1 <=  matrix1_tdata_dly2;   
                end
                else
                begin
                    tdata_out_reg1 <= {DATA_WIDTH{1'b0}};
                end
                               
            end
            2'd3:
            begin
                if((matrix2_tdata_dly1 < matrix1_tdata_dly2) && (matrix1_tdata_dly2 > matrix0_tdata_dly3) )
                begin
                    tdata_out_reg1 <=  matrix1_tdata_dly2;   
                end
                else
                begin
                    tdata_out_reg1 <= {DATA_WIDTH{1'b0}};
                end
            end
            2'd2:
            begin
                if((matrix2_tdata_dly2 <  matrix1_tdata_dly2) && (matrix1_tdata_dly2 >= matrix0_tdata_dly2) )
                begin
                    tdata_out_reg1 <=  matrix1_tdata_dly2;   
                end
                else
                begin
                    tdata_out_reg1 <= {DATA_WIDTH{1'b0}};
                end
            end
            2'd1:
            begin
                if((matrix2_tdata_dly3 < matrix1_tdata_dly2) && (matrix1_tdata_dly2 > matrix0_tdata_dly1) )
                begin
                    tdata_out_reg1 <=  matrix1_tdata_dly2;   
                end
                else
                begin
                    tdata_out_reg1 <= {DATA_WIDTH{1'b0}};
                end
            
            end
            default:;            
        endcase
     end
     
     
     always@(*)
     begin
        if(tdata_out_reg1 <= minVal)
        begin
            tdata_flg_reg <= 2'd0;    
        end
        else if(tdata_out_reg1 > maxVal)
        begin
            tdata_flg_reg <= 2'd2;
        end
        else
        begin
            tdata_flg_reg <= 2'd1;
        end        
     end
     
endmodule
