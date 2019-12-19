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
//38.625Gx = (32+4+2+1/2+1/8)Gx;
//ͨ������λ�жϴ�С�������ԣ��õ��ݶȷ���ȵĽ���ֵ��

//////////////////////////////////////////////////////////////////////////////////


module sobel3x3_algorithm
    #(
        parameter TDATA_WIDTH = 8,
        parameter IMG_WIDTH  = 640,
        parameter IMG_HEIGHT = 480
    )
    (
        input       s_axis_aclk       ,
        input       edge_selelct    ,//���׼��sobelʱ = 1�� ��canny ���ݶȷ��� ʱ = 0��

        input                     s_axis_matrix0_tlast    ,
        input                     s_axis_matrix0_tuser    ,
        input                     s_axis_matrix0_tvalid   ,        
        input[TDATA_WIDTH-1:0]    s_axis_matrix0_tdata    ,
        
        input                     s_axis_matrix1_tlast    ,
        input                     s_axis_matrix1_tuser    ,
        input                     s_axis_matrix1_tvalid   ,        
        input[TDATA_WIDTH-1:0]    s_axis_matrix1_tdata    ,
        
        input                     s_axis_matrix2_tlast    ,
        input                     s_axis_matrix2_tuser    ,
        input                     s_axis_matrix2_tvalid   ,        
        input[TDATA_WIDTH-1:0]    s_axis_matrix2_tdata    ,
        
        
        output                    m_axis_Gx_tlast         ,
        output                    m_axis_Gx_tuser         ,
        output                    m_axis_Gx_tvalid        ,
        output[TDATA_WIDTH-1:0]   m_axis_Gx_tdata         ,        
        
        output                    m_axis_Gy_tlast         ,
        output                    m_axis_Gy_tuser         ,
        output                    m_axis_Gy_tvalid        ,
        output[TDATA_WIDTH-1:0]   m_axis_Gy_tdata         ,  
        
        output                    m_axis_GxGy_tlast       ,
        output                    m_axis_GxGy_tuser       ,
        output                    m_axis_GxGy_tvalid      ,
        output[TDATA_WIDTH-1:0]   m_axis_GxGy_tdata       ,        
        
        output                    m_axis_dir_GxGy_tlast   ,
        output                    m_axis_dir_GxGy_tuser   ,
        output                    m_axis_dir_GxGy_tvalid  ,
        output[TDATA_WIDTH+4:0]   m_axis_dir_GxGy_tdata   , // �ݶȷ���[2 bit]+��ֵ[11 bit]        
        
        output                    m_axis_raw_tlast        ,
        output                    m_axis_raw_tuser        ,
        output                    m_axis_raw_tvalid       ,
        output[TDATA_WIDTH-1:0]   m_axis_raw_tdata                
               
     );
     



    wire                 s_axis_tlast   ;
    wire                 s_axis_tuser   ;
    wire                 s_axis_tvalid  ;
    wire[TDATA_WIDTH-1:0] matrix0_tdata  ;
    wire[TDATA_WIDTH-1:0] matrix1_tdata  ;
    wire[TDATA_WIDTH-1:0] matrix2_tdata  ;
     
     reg                  s_axis_tlast_dly1 ,s_axis_tlast_dly2 ,s_axis_tlast_dly3 ,s_axis_tlast_dly4 ,s_axis_tlast_dly5 ,s_axis_tlast_dly6 ;
     reg                  s_axis_tuser_dly1 ,s_axis_tuser_dly2 ,s_axis_tuser_dly3 ,s_axis_tuser_dly4 ,s_axis_tuser_dly5 ,s_axis_tuser_dly6 ;
     reg                  s_axis_tvalid_dly1,s_axis_tvalid_dly2,s_axis_tvalid_dly3,s_axis_tvalid_dly4,s_axis_tvalid_dly5,s_axis_tvalid_dly6;
     reg[TDATA_WIDTH +2:0]matrix0_tdata_dly1,matrix0_tdata_dly2,matrix0_tdata_dly3 ;
     reg[TDATA_WIDTH +2:0]matrix1_tdata_dly1,matrix1_tdata_dly2,matrix1_tdata_dly3,matrix1_tdata_dly4,matrix1_tdata_dly5,matrix1_tdata_dly6 ;
     reg[TDATA_WIDTH +2:0]matrix2_tdata_dly1,matrix2_tdata_dly2,matrix2_tdata_dly3 ;
   
     reg[TDATA_WIDTH +2:0]G_out,Gx_out,Gy_out,Gx1,Gx2,Gy1,Gy2,Gx_abs,Gy_abs,Gx_dir_abs,Gy_dir_abs;
  
     
     reg                  tlast_out_reg,tuser_out_reg,tvalid_out_reg;
     reg[TDATA_WIDTH +2:0]tdata_out_reg,Gxdata_out_reg,Gydata_out_reg;
  
     reg[TDATA_WIDTH-1:0]    tdata_raw_out_reg;
     
//     reg[11:0] pixel_count = 12'd0;
//     reg[11:0] line_count  = 12'd0;   
     reg    edge_sel;// 0= ����˫��Ե�� 1= ���ֵ���Ե����׼sobel��
     
     
     //�ݶȷ������
     reg Gx_s,Gx_s_reg;  //Gx ����:0= +;1= -;
     reg Gy_s,Gy_s_reg;  //Gy ����:0= +;1= -;
     reg [1:0] theta;   // 0 = 0 �ȣ�1 = 45�ȣ�2 = 90�ȣ�3 = 135��
     reg[TDATA_WIDTH +8:0]    Gy_4abs ,Gx_6625,Gx_38625;//Gx_6625 = 6.625Gx,Gx_38625 = 38.625Gx;
     
     
     //input connect
     assign s_axis_tlast  = s_axis_matrix1_tlast  ; 
     assign s_axis_tuser  = s_axis_matrix1_tuser  ; 
     assign s_axis_tvalid = s_axis_matrix1_tvalid ; 
     assign matrix0_tdata = s_axis_matrix0_tdata  ; 
     assign matrix1_tdata = s_axis_matrix1_tdata  ; 
     assign matrix2_tdata = s_axis_matrix2_tdata  ;  
     
     
     //output connect
     assign m_axis_Gx_tlast  = tlast_out_reg  ;
     assign m_axis_Gx_tuser  = tuser_out_reg  ;
     assign m_axis_Gx_tvalid = tvalid_out_reg ;
     assign m_axis_Gx_tdata  = (Gxdata_out_reg > 8'd255 )? 8'd255:Gxdata_out_reg ;
     
     assign m_axis_Gy_tlast  = tlast_out_reg  ;
     assign m_axis_Gy_tuser  = tuser_out_reg  ;
     assign m_axis_Gy_tvalid = tvalid_out_reg ;
     assign m_axis_Gy_tdata  = (Gydata_out_reg > 8'd255 )? 8'd255:Gydata_out_reg ;

     assign m_axis_GxGy_tlast  = tlast_out_reg  ;
     assign m_axis_GxGy_tuser  = tuser_out_reg  ;
     assign m_axis_GxGy_tvalid = tvalid_out_reg ;
     assign m_axis_GxGy_tdata  = (tdata_out_reg > 8'd255 )? 8'd255:tdata_out_reg ;

     assign m_axis_dir_GxGy_tlast  = tlast_out_reg  ;
     assign m_axis_dir_GxGy_tuser  = tuser_out_reg  ;
     assign m_axis_dir_GxGy_tvalid = tvalid_out_reg ;
    // assign m_axis_dir_GxGy_tdata  = (tdata_out_reg  > 10'd255 )?({theta,{DATA_WIDTH{1'b1}}}):({theta,tdata_out_reg[DATA_WIDTH - 1:0]});
     assign m_axis_dir_GxGy_tdata  = {theta,tdata_out_reg};
             
     assign m_axis_Gx_tlast  = tlast_out_reg  ;
     assign m_axis_Gx_tuser  = tuser_out_reg  ;
     assign m_axis_Gx_tvalid = tvalid_out_reg ;
     assign m_axis_raw_tdata = tdata_raw_out_reg ;
     
     
     always@(posedge s_axis_aclk)
     begin
        edge_sel  <= edge_selelct;
        s_axis_tlast_dly1 <= s_axis_tlast  ;
        s_axis_tlast_dly2 <= s_axis_tlast_dly1  ;
        s_axis_tlast_dly3 <= s_axis_tlast_dly2  ;
        s_axis_tlast_dly4 <= s_axis_tlast_dly3  ;
        s_axis_tlast_dly5 <= s_axis_tlast_dly4  ;
        s_axis_tlast_dly6 <= s_axis_tlast_dly5  ;
        
        s_axis_tuser_dly1 <= s_axis_tuser  ;
        s_axis_tuser_dly2 <= s_axis_tuser_dly1  ;
        s_axis_tuser_dly3 <= s_axis_tuser_dly2  ;
        s_axis_tuser_dly4 <= s_axis_tuser_dly3  ;
        s_axis_tuser_dly5 <= s_axis_tuser_dly4  ;
        s_axis_tuser_dly6 <= s_axis_tuser_dly5  ;
        
        s_axis_tvalid_dly1<= s_axis_tvalid ;
        s_axis_tvalid_dly2<= s_axis_tvalid_dly1 ;
        s_axis_tvalid_dly3<= s_axis_tvalid_dly2 ;
        s_axis_tvalid_dly4<= s_axis_tvalid_dly3 ;
        s_axis_tvalid_dly5<= s_axis_tvalid_dly4 ;
        s_axis_tvalid_dly6<= s_axis_tvalid_dly5 ;
        
        matrix0_tdata_dly1<= matrix0_tdata ;
        matrix0_tdata_dly2<= matrix0_tdata_dly1 ;
        matrix0_tdata_dly3<= matrix0_tdata_dly2 ;
        
        matrix1_tdata_dly1<= matrix1_tdata ;
        matrix1_tdata_dly2<= matrix1_tdata_dly1 ;
        matrix1_tdata_dly3<= matrix1_tdata_dly2 ;
        matrix1_tdata_dly4<= matrix1_tdata_dly3 ;
        matrix1_tdata_dly5<= matrix1_tdata_dly4 ;
        matrix1_tdata_dly6<= matrix1_tdata_dly5 ;
        
        matrix2_tdata_dly1<= matrix2_tdata ;
        matrix2_tdata_dly2<= matrix2_tdata_dly1 ;        
        matrix2_tdata_dly3<= matrix2_tdata_dly2 ;        
        
     end
     
//     always@(posedge s_axis_aclk)
//     begin
//        if(s_axis_tuser_dly1 == 1'b1)
//        begin
//            line_count <= 10'd0;    
//        end
//        else
//        begin
//            if(~s_axis_tlast_dly5 & s_axis_tlast_dly5)
//            begin
//                line_count <= line_count + 1'b1;
//            end
//            else
//            begin
//                line_count <= line_count;
//            end
//        end
//     end
     
     
//     always@(posedge s_axis_aclk)
//     begin
//        if(s_axis_tlast_dly5 == 1'b1)
//        begin
//            pixel_count <= 12'd0;
//        end
//        else
//        begin
//            if(s_axis_tvalid_dly5 == 1'b1)
//            begin
//                pixel_count <= pixel_count + 1'b1;
//            end
//            else
//            begin
//                pixel_count <= pixel_count;
//            end    
//        end
//     end
     
     
     always@(posedge s_axis_aclk)
     begin
        Gx1 <=  matrix0_tdata_dly1 + (matrix1_tdata_dly1<<1) + matrix2_tdata_dly1;
        Gx2 <=  matrix0_tdata_dly3 + (matrix1_tdata_dly3<<1) + matrix2_tdata_dly3;
        Gy1 <=  matrix0_tdata_dly1 + (matrix0_tdata_dly2<<1) + matrix0_tdata_dly3;
        Gy2 <=  matrix2_tdata_dly1 + (matrix2_tdata_dly2<<1) + matrix2_tdata_dly3;
     end
     
     always@(posedge s_axis_aclk)
     begin
             
        if(Gx1 < Gx2)
        begin
            //Gx_abs <= Gx1 - Gx2;     
            if(edge_sel == 1'b1)
            begin
                Gx_abs <= 11'd0;     
            end
            else
            begin
                Gx_abs <= Gx2 - Gx1;     
            end
            Gx_dir_abs <= Gx2 - Gx1; 
            Gx_s <= 1'b1;


        end
        else
        begin
            Gx_abs <= Gx1 - Gx2; 
            Gx_dir_abs <= Gx1 - Gx2; 
            Gx_s <= 1'b0; 

        end
        
        
     end
     
     always@(posedge s_axis_aclk)
     begin
        if(Gy1 > Gy2)
        begin
//            Gy_abs <= Gy1 - Gy2;
            if(edge_sel == 1'b1)
            begin
                Gy_abs <= 11'd0;     
            end
            else
            begin
                Gy_abs <= Gy1 - Gy2;     
            end
            Gy_dir_abs <= Gy1 - Gy2;  
            Gy_s <= 1'b1;

        end
        else
        begin
            Gy_abs <= Gy2 - Gy1;
            
            Gy_dir_abs <= Gy2 - Gy1;
            Gy_s <= 1'b0;

        end
     end
     
     always@(posedge s_axis_aclk)
     begin
        Gx_out <= Gx_abs;
        Gy_out <= Gy_abs;
        G_out  <= Gy_abs + Gx_abs;
     end
     
     
     // ����
     //6.625Gx = (4+2+1/2+1/8)Gx;    
     //38.625Gx = (34+4+2+1/2+1/8)Gx;
     always@(posedge s_axis_aclk)
     begin
            Gx_6625  <=                           {4'b0,Gx_dir_abs,2'b0} + {5'b0,Gx_dir_abs,1'b0} + (Gx_dir_abs >>1) + (Gx_dir_abs >>3);
            Gx_38625 <= {1'b0,Gx_dir_abs,5'b0} +  {4'b0,Gx_dir_abs,2'b0} + {5'b0,Gx_dir_abs,1'b0} + (Gx_dir_abs >>1) + (Gx_dir_abs >>3);         
            Gy_4abs  <= {2'b0,Gy_dir_abs,4'b0};
            
            Gx_s_reg <=Gx_s;
            Gy_s_reg <=Gy_s;
     end
          
     always@(posedge s_axis_aclk)
     begin
        if(Gy_4abs < Gx_6625 )
        begin
            theta <= 2'd0; // 0��     
        end
        else if(Gy_4abs > Gx_38625)
        begin
            theta <= 2'd2; // 90�� 
        end
        else 
        begin
            if(Gy_s_reg != Gx_s_reg)
            begin
                theta <= 2'd1; // 45��  
            end
            else
            begin
                theta <= 2'd3; // 45��  
            end
        end
     end
     
    
    always@(posedge s_axis_aclk)
    begin
//        if((line_count > 0) && (line_count < (IMG_HEIGHT - 1)) 
//        && (pixel_count >0) && (pixel_count < (IMG_WIDTH - 1)))
//        begin
//             tdata_out_reg  <= G_out;
//             Gxdata_out_reg <= Gx_out;
//             Gydata_out_reg <= Gy_out;
//        end
//        else
//        begin
//             tdata_out_reg  <= {DATA_WIDTH+1{1'b0}};
//             Gxdata_out_reg <= {DATA_WIDTH+1{1'b0}};
//             Gydata_out_reg <= {DATA_WIDTH+1{1'b0}};

//        end
        tdata_out_reg  <= G_out;
        Gxdata_out_reg <= Gx_out;
        Gydata_out_reg <= Gy_out;
        
        
    end
    
    always@(posedge s_axis_aclk)
    begin
        tlast_out_reg <= s_axis_tlast_dly5 ;
        tuser_out_reg <= s_axis_tuser_dly5 ;
        tvalid_out_reg<= s_axis_tvalid_dly5;
        tdata_raw_out_reg <= matrix1_tdata_dly5; 
    end
     
     
endmodule
