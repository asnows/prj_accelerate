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

//�����ݶȵķ����=arctan(Gy/Gx)��Ӳ��ʵ�ֽ�Ϊ���ѣ���Ҫ���ĺܶ�Ӳ����Դ��
//һ���ǱȽ��������򴰿ڣ�����3��3���ڶ��ԣ���������8���������ڶԳ��ԣ�
//ֻ��Ҫ���4������0�㡢45�㡢90���135�㣬�����ݶ�Gy��ֵ��Gxtan22.5���Gxtan67.5��Ƚϣ�
//ͬʱ�ж�GyGx�˻��������ԣ�������ݶȵķ����ֵ�Ĵ�С��
//Ϊ��ԼӲ����Դ���Բ�ȡ��Gy����4λ��Gxtan22.5������4λ��ȡֵԼΪ6.625Gx��Gxtan67.5������4λ��ԼΪ38.625Gx��
//����
//6.625Gx = (4+2+1/2+1/8)Gx;
//38.625Gx = (34+4+2+1/2+1/8)Gx;
//ͨ������λ�жϴ�С�������ԣ��õ��ݶȷ���ȵĽ���ֵ��

//////////////////////////////////////////////////////////////////////////////////
//�����ֵ����
module canny_NonMaxSupp
    #(
        parameter DATA_WIDTH = 13  // data(11bit)+ dir(2bit)
    )
    (
        input       s_axis_aclk       ,
        input       enable            ,
        input[7:0]  maxVal,// �����ֵ
        input[7:0]  minVal,//��С��ֵ  
              
        input                   s_axis_matrix0_tlast    ,
        input                   s_axis_matrix0_tuser    ,
        input                   s_axis_matrix0_tvalid   ,        
        input[DATA_WIDTH-1:0]   s_axis_matrix0_tdata    ,// �ݶȷ���+��ֵ
        
        input                   s_axis_matrix1_tlast    ,
        input                   s_axis_matrix1_tuser    ,
        input                   s_axis_matrix1_tvalid   ,        
        input[DATA_WIDTH-1:0]   s_axis_matrix1_tdata    ,// �ݶȷ���+��ֵ
        
        input                   s_axis_matrix2_tlast    ,
        input                   s_axis_matrix2_tuser    ,
        input                   s_axis_matrix2_tvalid   ,        
        input[DATA_WIDTH-1:0]   s_axis_matrix2_tdata    ,// �ݶȷ���+��ֵ
                                                     
        output                  m_axis_tlast    ,
        output                  m_axis_tuser    ,
        output                  m_axis_tvalid   ,
        output[7:0]             m_test_tdata    ,       //����Ǽ���ֵ����ͼ
        output[1:0]             m_axis_tdata            //�Ǽ���ֵ�����ı�Ե������

     );
     
     wire                   s_axis_tlast     ;
     wire                   s_axis_tuser     ;
     wire                   s_axis_tvalid    ;  
     wire[DATA_WIDTH-1:0]   matrix0_dir_tdata;// �ݶȷ���+��ֵ
     wire[DATA_WIDTH-1:0]   matrix1_dir_tdata;// �ݶȷ���+��ֵ
     wire[DATA_WIDTH-1:0]   matrix2_dir_tdata;// �ݶȷ���+��ֵ                     
          
     reg                    s_axis_tlast_dly1 ,s_axis_tlast_dly2 ,s_axis_tlast_dly3  ;
     reg                    s_axis_tuser_dly1 ,s_axis_tuser_dly2 ,s_axis_tuser_dly3  ;
     reg                    s_axis_tvalid_dly1,s_axis_tvalid_dly2,s_axis_tvalid_dly3 ;
     reg[DATA_WIDTH-3:0]      matrix0_tdata_dly1,matrix0_tdata_dly2,matrix0_tdata_dly3 ;
     reg[DATA_WIDTH-3:0]      matrix1_tdata_dly1,matrix1_tdata_dly2,matrix1_tdata_dly3 ;
     reg[DATA_WIDTH-3:0]      matrix2_tdata_dly1,matrix2_tdata_dly2,matrix2_tdata_dly3 ; 
     reg[DATA_WIDTH-3:0]      tdata_out_reg1;    
     reg[1:0]                 tdata_flg_reg;
     //�ݶȷ������
     reg [1:0] theta_dly1,theta_dly2,theta_dly3; // 0 = 0 �ȣ�1 = 45�ȣ�2 = 90�ȣ�3 = 135��
     
     //input connect
     assign s_axis_tlast      = s_axis_matrix1_tlast ;
     assign s_axis_tuser      = s_axis_matrix1_tuser ;
     assign s_axis_tvalid     = s_axis_matrix1_tvalid;  
     assign matrix0_dir_tdata = s_axis_matrix0_tdata ;// �ݶȷ���+��ֵ
     assign matrix1_dir_tdata = s_axis_matrix1_tdata ;// �ݶȷ���+��ֵ
     assign matrix2_dir_tdata = s_axis_matrix2_tdata ;// �ݶȷ���+��ֵ   
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
