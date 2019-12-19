`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/04 11:28:00
// Design Name: 
// Module Name: algorithm_accelerate
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


module pipe_sel
    #(
    parameter integer S_AXIS_MM2S_TDATA_WIDTH	= 64,
    parameter integer S_AXIS_CNTRL_TDATA_WIDTH	= 32,
    parameter integer M_AXIS_S2MM_TDATA_WIDTH	= 64,
    parameter integer M_AXIS_STS_TDATA_WIDTH	= 32
    )
    (
    
        input   s_axis_mm2s_aclk,
        input   s_axis_mm2s_aresetn,
        output  s_axis_mm2s_tready,
        input  [S_AXIS_MM2S_TDATA_WIDTH-1 : 0] s_axis_mm2s_tdata,
        input  [(S_AXIS_MM2S_TDATA_WIDTH/8)-1 : 0] s_axis_mm2s_tkeep,
        input   s_axis_mm2s_tlast,
        input   s_axis_mm2s_tvalid,
        
        
        input   s_axis_cntrl_aclk,
        input   s_axis_cntrl_aresetn,
        output  s_axis_cntrl_tready,
        input  [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] s_axis_cntrl_tdata,
        input  [(S_AXIS_CNTRL_TDATA_WIDTH/8)-1 : 0] s_axis_cntrl_tkeep,
        input   s_axis_cntrl_tlast,
        input   s_axis_cntrl_tvalid,
        
        // img pro channel
        output  s_axis_img_tready,
        input  [M_AXIS_S2MM_TDATA_WIDTH-1 : 0] s_axis_img_tdata,
        input  [(M_AXIS_S2MM_TDATA_WIDTH/8)-1 : 0] s_axis_img_tkeep,
        input   s_axis_img_tlast,
        input   s_axis_img_tvalid,
        
        output  vsync,
        output  m_axis_img_tvalid,
        output  [S_AXIS_MM2S_TDATA_WIDTH-1 : 0] m_axis_img_tdata,
        output  [(S_AXIS_MM2S_TDATA_WIDTH/8)-1 : 0] m_axis_img_tkeep,
        output  m_axis_img_tlast,
        input   m_axis_img_tready,
               
        //  math operate channel
        output  s_axis_math_tready,
        input  [M_AXIS_S2MM_TDATA_WIDTH-1 : 0] s_axis_math_tdata,
        input  [(M_AXIS_S2MM_TDATA_WIDTH/8)-1 : 0] s_axis_math_tkeep,
        input   s_axis_math_tlast,
        input   s_axis_math_tvalid,
        
        output  m_axis_math_tvalid,
        output  [S_AXIS_MM2S_TDATA_WIDTH-1 : 0] m_axis_math_tdata,
        output  [(S_AXIS_MM2S_TDATA_WIDTH/8)-1 : 0] m_axis_math_tkeep,
        output  m_axis_math_tlast,
        input   m_axis_math_tready,
        
        // memory copy channel
        output  s_axis_memCopy_tready,
        input  [S_AXIS_MM2S_TDATA_WIDTH-1 : 0] s_axis_memCopy_tdata,
        input  [(S_AXIS_MM2S_TDATA_WIDTH/8)-1 : 0] s_axis_memCopy_tkeep,
        input   s_axis_memCopy_tlast,
        input   s_axis_memCopy_tvalid,
        
        output  m_axis_memCopy_tvalid,
        output  [S_AXIS_MM2S_TDATA_WIDTH-1 : 0] m_axis_memCopy_tdata,
        output  [(S_AXIS_MM2S_TDATA_WIDTH/8)-1 : 0] m_axis_memCopy_tkeep,
        output  m_axis_memCopy_tlast,
        input   m_axis_memCopy_tready,
        
        output [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP0_cntrl_tdata,
        output [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP1_cntrl_tdata,
        output [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP2_cntrl_tdata,
        output [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP3_cntrl_tdata,
        output [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP4_cntrl_tdata,
        
        output [7 : 0] Canny_maxVal             ,
        output [7 : 0] Canny_minVal             ,
        output         Sobel_edge_sel           ,
        output         Canny_NonMaxSupp_en      ,
        output         Canny_HystThreshold_en   ,
        output         img_edge_cut_en          ,
        
        
         
        
        // dma s2mm channel 
        input   m_axis_s2mm_aclk,
        input   m_axis_s2mm_aresetn,
        output  m_axis_s2mm_tvalid,
        output  [M_AXIS_S2MM_TDATA_WIDTH-1 : 0] m_axis_s2mm_tdata,
        output  [(M_AXIS_S2MM_TDATA_WIDTH/8)-1 : 0] m_axis_s2mm_tkeep,
        output   m_axis_s2mm_tlast,
        input   m_axis_s2mm_tready,
        
        input   m_axis_sts_aclk,
        input   m_axis_sts_aresetn,
        output  m_axis_sts_tvalid,
        output  [M_AXIS_STS_TDATA_WIDTH-1 : 0] m_axis_sts_tdata,
        output  [(M_AXIS_STS_TDATA_WIDTH/8)-1 : 0] m_axis_sts_tkeep,
        output  m_axis_sts_tlast,
        input   m_axis_sts_tready
    );

    
    localparam FUN_IMAGE_PROCESS = 8'd0;
    localparam FUN_MATHE_OPERATE = 8'd1;
    localparam FUN_DATA_CARRY    = 8'd2;
    
   reg                                      s_axis_mm2s_tready_reg;
   reg                                       m_axis_s2mm_tvalid_reg ;
   reg [M_AXIS_S2MM_TDATA_WIDTH-1 : 0]       m_axis_s2mm_tdata_reg  ;
   reg [(M_AXIS_S2MM_TDATA_WIDTH/8)-1 : 0]   m_axis_s2mm_tkeep_reg  ;
   reg                                       m_axis_s2mm_tlast_reg  ;
   
   reg                                      s_axis_cntrl_tready_reg ;
   reg                                      m_axis_sts_tvalid_reg   ;
   reg [M_AXIS_STS_TDATA_WIDTH-1 : 0]       m_axis_sts_tdata_reg    ;
   reg [(M_AXIS_STS_TDATA_WIDTH/8)-1 : 0]   m_axis_sts_tkeep_reg    ;
   reg                                      m_axis_sts_tlast_reg    ;


   wire                                     sts_axis_gen_tvalid ;
   wire  [M_AXIS_STS_TDATA_WIDTH-1 : 0]     sts_axis_gen_tdata  ;
   wire  [(M_AXIS_STS_TDATA_WIDTH/8)-1 : 0] sts_axis_gen_tkeep  ;
   wire                                     sts_axis_gen_tlast  ;
   reg                                      sts_axis_gen_tready ;

    // wire  
    wire [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP0_tdata;//[7:0] = FUNÑ¡Ôñ 
    wire [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP1_tdata;
    wire [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP2_tdata;
    wire [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP3_tdata;
    wire [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP4_tdata;
     
    reg                                     s_axis_img_tready_reg;
    reg                                     m_axis_img_tvalid_reg;
    reg [M_AXIS_S2MM_TDATA_WIDTH-1 : 0]     m_axis_img_tdata_reg ;
    reg [(M_AXIS_S2MM_TDATA_WIDTH/8)-1 : 0] m_axis_img_tkeep_reg ;
    reg                                     m_axis_img_tlast_reg ;
    
    
    reg                                     s_axis_math_tready_reg;
    reg                                     m_axis_math_tvalid_reg;
    reg [M_AXIS_S2MM_TDATA_WIDTH-1 : 0]     m_axis_math_tdata_reg ;
    reg [(M_AXIS_S2MM_TDATA_WIDTH/8)-1 : 0] m_axis_math_tkeep_reg ;
    reg                                     m_axis_math_tlast_reg ;
    
    
    reg                                     s_axis_memCopy_tready_reg;
    reg                                     m_axis_memCopy_tvalid_reg;
    reg [M_AXIS_S2MM_TDATA_WIDTH-1 : 0]     m_axis_memCopy_tdata_reg ;
    reg [(M_AXIS_S2MM_TDATA_WIDTH/8)-1 : 0] m_axis_memCopy_tkeep_reg ;
    reg                                     m_axis_memCopy_tlast_reg ;


   
    assign s_axis_img_tready = s_axis_img_tready_reg;
    assign m_axis_img_tvalid = m_axis_img_tvalid_reg;
    assign m_axis_img_tdata  = m_axis_img_tdata_reg ;
    assign m_axis_img_tkeep  = m_axis_img_tkeep_reg ;
    assign m_axis_img_tlast  = m_axis_img_tlast_reg ;
    
    assign s_axis_math_tready = s_axis_math_tready_reg;
    assign m_axis_math_tvalid = m_axis_math_tvalid_reg;
    assign m_axis_math_tdata  = m_axis_math_tdata_reg ;
    assign m_axis_math_tkeep  = m_axis_math_tkeep_reg ;
    assign m_axis_math_tlast  = m_axis_math_tlast_reg ;
    
    assign s_axis_memCopy_tready = s_axis_memCopy_tready_reg;
    assign m_axis_memCopy_tvalid = m_axis_memCopy_tvalid_reg;
    assign m_axis_memCopy_tdata  = m_axis_memCopy_tdata_reg ;
    assign m_axis_memCopy_tkeep  = m_axis_memCopy_tkeep_reg ;
    assign m_axis_memCopy_tlast  = m_axis_memCopy_tlast_reg ;

   
    // data s2mm channel 
    assign m_axis_s2mm_tvalid = m_axis_s2mm_tvalid_reg;
    assign m_axis_s2mm_tdata  = m_axis_s2mm_tdata_reg ;
    assign m_axis_s2mm_tkeep  = m_axis_s2mm_tkeep_reg ;
    assign m_axis_s2mm_tlast  = m_axis_s2mm_tlast_reg ;
    assign s_axis_mm2s_tready = s_axis_mm2s_tready_reg;
    
//    // sts s2mm channel
//    assign  m_axis_sts_tvalid =  m_axis_sts_tvalid_reg;
//    assign  m_axis_sts_tdata  =  m_axis_sts_tdata_reg ;
//    assign  m_axis_sts_tkeep  =  m_axis_sts_tkeep_reg ;
//    assign  m_axis_sts_tlast  =  m_axis_sts_tlast_reg ; 
    
    assign APP0_cntrl_tdata = APP0_tdata;
    assign APP1_cntrl_tdata = APP1_tdata;
    assign APP2_cntrl_tdata = APP2_tdata; 
    assign APP3_cntrl_tdata = APP3_tdata;
    assign APP4_cntrl_tdata = APP4_tdata;     
    
    assign Canny_maxVal           = APP1_tdata[15:8];
    assign Canny_minVal           = APP1_tdata[23:16];
    assign Sobel_edge_sel         = APP1_tdata[24];
    assign Canny_NonMaxSupp_en    = APP1_tdata[25];
    assign Canny_HystThreshold_en = APP1_tdata[26];
    assign img_edge_cut_en        = APP1_tdata[27];  
    
    
    always@(*)
    begin
        case(APP0_tdata[7:0])
            FUN_IMAGE_PROCESS:
            begin
                //data mm2s channel
                m_axis_img_tvalid_reg<= s_axis_mm2s_tvalid ;
                m_axis_img_tdata_reg <= s_axis_mm2s_tdata  ;
                m_axis_img_tkeep_reg <= s_axis_mm2s_tkeep  ;
                m_axis_img_tlast_reg <= s_axis_mm2s_tlast  ;
                
                s_axis_mm2s_tready_reg<= m_axis_img_tready ;                
                s_axis_img_tready_reg <= m_axis_s2mm_tready;
                
                //data s2mm channel
                m_axis_s2mm_tvalid_reg <= s_axis_img_tvalid;
                m_axis_s2mm_tdata_reg  <= s_axis_img_tdata ;
                m_axis_s2mm_tkeep_reg  <= s_axis_img_tkeep ;
                m_axis_s2mm_tlast_reg  <= s_axis_img_tlast ;
                
                //math channel
                m_axis_math_tvalid_reg<= 1'b0 ;
                m_axis_math_tdata_reg <= 64'd0;
                m_axis_math_tkeep_reg <= 8'd0 ;
                m_axis_math_tlast_reg <= 1'b0 ;
                s_axis_math_tready_reg<= 1'b0 ;
                
                //mem copy channel
                m_axis_memCopy_tvalid_reg<= 1'b0 ;
                m_axis_memCopy_tdata_reg <= 64'd0;
                m_axis_memCopy_tkeep_reg <= 8'd0 ;
                m_axis_memCopy_tlast_reg <= 1'b0 ;
                s_axis_memCopy_tready_reg<= 1'b0 ;

                
                //sts s2mm channel
                m_axis_sts_tvalid_reg <= sts_axis_gen_tvalid ;
                m_axis_sts_tdata_reg  <= sts_axis_gen_tdata  ;
                m_axis_sts_tkeep_reg  <= sts_axis_gen_tkeep  ;
                m_axis_sts_tlast_reg  <= sts_axis_gen_tlast  ;
                sts_axis_gen_tready   <= m_axis_sts_tready  ;
                                                  
            end
            FUN_MATHE_OPERATE:
            begin
            
                //img pro channel
                m_axis_img_tvalid_reg<= 1'b0 ;
                m_axis_img_tdata_reg <= 64'd0;
                m_axis_img_tkeep_reg <= 8'd0;
                m_axis_img_tlast_reg <= 1'b0;
                s_axis_img_tready_reg<= 1'b0;
            
                //data mm2s channel
                m_axis_math_tvalid_reg<= s_axis_mm2s_tvalid ;
                m_axis_math_tdata_reg <= s_axis_mm2s_tdata  ;
                m_axis_math_tkeep_reg <= s_axis_mm2s_tkeep  ;
                m_axis_math_tlast_reg <= s_axis_mm2s_tlast  ;
                
                s_axis_mm2s_tready_reg<= m_axis_math_tready ;                
                s_axis_math_tready_reg <= m_axis_s2mm_tready;
                
                //data s2mm channel
                m_axis_s2mm_tvalid_reg <= s_axis_math_tvalid;
                m_axis_s2mm_tdata_reg  <= s_axis_math_tdata ;
                m_axis_s2mm_tkeep_reg  <= s_axis_math_tkeep ;
                m_axis_s2mm_tlast_reg  <= s_axis_math_tlast ;
                
                //mem copy channel
                m_axis_memCopy_tvalid_reg<= 1'b0 ;
                m_axis_memCopy_tdata_reg <= 64'd0;
                m_axis_memCopy_tkeep_reg <= 8'd0 ;
                m_axis_memCopy_tlast_reg <= 1'b0 ;
                s_axis_memCopy_tready_reg<= 1'b0 ;

                //sts s2mm channel
                m_axis_sts_tvalid_reg <= sts_axis_gen_tvalid ;
                m_axis_sts_tdata_reg  <= sts_axis_gen_tdata  ;
                m_axis_sts_tkeep_reg  <= sts_axis_gen_tkeep  ;
                m_axis_sts_tlast_reg  <= sts_axis_gen_tlast  ;
                sts_axis_gen_tready   <= m_axis_sts_tready  ;
                                          
            end
            FUN_DATA_CARRY:
            begin
                //img pro channel
                m_axis_img_tvalid_reg<= 1'b0 ;
                m_axis_img_tdata_reg <= 64'd0;
                m_axis_img_tkeep_reg <= 8'd0 ;
                m_axis_img_tlast_reg <= 1'b0 ;
                s_axis_img_tready_reg<= 1'b0 ;
                
                //math channel
                m_axis_math_tvalid_reg<= 1'b0 ;
                m_axis_math_tdata_reg <= 64'd0;
                m_axis_math_tkeep_reg <= 8'd0 ;
                m_axis_math_tlast_reg <= 1'b0 ;
                s_axis_math_tready_reg<= 1'b0 ;
            
            
                //data mm2s channel
                m_axis_memCopy_tvalid_reg<= s_axis_mm2s_tvalid ;
                m_axis_memCopy_tdata_reg <= s_axis_mm2s_tdata  ;
                m_axis_memCopy_tkeep_reg <= s_axis_mm2s_tkeep  ;
                m_axis_memCopy_tlast_reg <= s_axis_mm2s_tlast  ;
                
                s_axis_mm2s_tready_reg<= m_axis_memCopy_tready ;                
                s_axis_memCopy_tready_reg <= m_axis_s2mm_tready;
                
                //data s2mm channel
                m_axis_s2mm_tvalid_reg <= s_axis_memCopy_tvalid;
                m_axis_s2mm_tdata_reg  <= s_axis_memCopy_tdata ;
                m_axis_s2mm_tkeep_reg  <= s_axis_memCopy_tkeep ;
                m_axis_s2mm_tlast_reg  <= s_axis_memCopy_tlast ;
                 
                 //sts s2mm channel  <= mm2s  cntrl channel
                 m_axis_sts_tvalid_reg <= s_axis_cntrl_tvalid ;
                 m_axis_sts_tdata_reg  <= s_axis_cntrl_tdata  ;
                 m_axis_sts_tkeep_reg  <= s_axis_cntrl_tkeep  ;
                 m_axis_sts_tlast_reg  <= s_axis_cntrl_tlast  ;
                 //s_axis_cntrl_tready   <= m_axis_sts_tready  ;

            end
            default:
            begin
            
                //img pro channel
                m_axis_img_tvalid_reg<= 1'b0 ;
                m_axis_img_tdata_reg <= 64'd0;
                m_axis_img_tkeep_reg <= 8'd0 ;
                m_axis_img_tlast_reg <= 1'b0 ;
                s_axis_img_tready_reg<= 1'b0 ;
                
                //math channel
                m_axis_math_tvalid_reg<= 1'b0 ;
                m_axis_math_tdata_reg <= 64'd0;
                m_axis_math_tkeep_reg <= 8'd0 ;
                m_axis_math_tlast_reg <= 1'b0 ;
                s_axis_math_tready_reg<= 1'b0 ;
                
                //mem copy channel
                m_axis_memCopy_tvalid_reg<= 1'b0 ;
                m_axis_memCopy_tdata_reg <= 64'd0;
                m_axis_memCopy_tkeep_reg <= 8'd0 ;
                m_axis_memCopy_tlast_reg <= 1'b0 ;
                s_axis_memCopy_tready_reg<= 1'b0 ;
                
                //data s2mm channel
                s_axis_mm2s_tready_reg <= 1'b0 ;                
                m_axis_s2mm_tvalid_reg <= 1'b0 ;
                m_axis_s2mm_tdata_reg  <= 64'd0;
                m_axis_s2mm_tkeep_reg  <= 8'd0 ;
                m_axis_s2mm_tlast_reg  <= 1'b0 ;
                
                m_axis_sts_tvalid_reg <= 1'b0 ;  
                m_axis_sts_tdata_reg  <= 32'd0;  
                m_axis_sts_tkeep_reg  <= 4'd0 ;  
                m_axis_sts_tlast_reg  <= 1'b0 ;                  
                                          
            
            
           
            end
        endcase
        
    end
    
    
    
    
    fun_sel
    #(
     .S_AXIS_CNTRL_TDATA_WIDTH(S_AXIS_CNTRL_TDATA_WIDTH)  
    )
    fun_sel_i
    (
        .s_axis_cntrl_aclk   (s_axis_cntrl_aclk     ),
        .s_axis_cntrl_aresetn(s_axis_cntrl_aresetn  ),
        .s_axis_cntrl_tready (s_axis_cntrl_tready   ),
        .s_axis_cntrl_tdata  (s_axis_cntrl_tdata    ),
        .s_axis_cntrl_tkeep  (s_axis_cntrl_tkeep    ),
        .s_axis_cntrl_tlast  (s_axis_cntrl_tlast    ),
        .s_axis_cntrl_tvalid (s_axis_cntrl_tvalid   ),
        .vsync              (vsync),
        
        .APP0_tdata         (APP0_tdata             ),
        .APP1_tdata         (APP1_tdata             ),
        .APP2_tdata         (APP2_tdata             ),
        .APP3_tdata         (APP3_tdata             ),
        .APP4_tdata         (APP4_tdata             )
    
    );
    
    
    
    
     status_stream_gen status_stream_gen_i
    (
        .m_axis_sts_aclk(m_axis_sts_aclk),
        .enable(s_axis_cntrl_tlast),
        .m_axis_sts_tvalid(m_axis_sts_tvalid) ,
        .m_axis_sts_tdata (m_axis_sts_tdata ) ,
        .m_axis_sts_tkeep (m_axis_sts_tkeep ) ,
        .m_axis_sts_tlast (m_axis_sts_tlast ) ,
        .m_axis_sts_tready(m_axis_sts_tready )
    
    );

    
    
    
    


endmodule
