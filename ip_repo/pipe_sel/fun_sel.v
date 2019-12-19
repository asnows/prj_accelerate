`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/11 07:40:11
// Design Name: 
// Module Name: fun_sel
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


module fun_sel
    #(
        parameter integer S_AXIS_CNTRL_TDATA_WIDTH	= 32  
    )
    (
        input   s_axis_cntrl_aclk,
        input   s_axis_cntrl_aresetn,
        output  s_axis_cntrl_tready,
        input  [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] s_axis_cntrl_tdata,
        input  [(S_AXIS_CNTRL_TDATA_WIDTH/8)-1 : 0] s_axis_cntrl_tkeep,
        input   s_axis_cntrl_tlast,
        input   s_axis_cntrl_tvalid,
        
        
        output vsync,
        (*mark_debug="true"*)output  [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP0_tdata,
        (*mark_debug="true"*)output  [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP1_tdata,
        (*mark_debug="true"*)output  [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP2_tdata,
        (*mark_debug="true"*)output  [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP3_tdata,
        (*mark_debug="true"*)output  [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP4_tdata
    
    );
    
    reg gen_vsync = 0;
    reg s_axis_cntrl_tlast_dly;
    reg [159 : 0] cntrl_tdata_reg = 160'd0;
    reg [2:0] count = 3'd0;
    
    
    reg  [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP0_tdata_reg;
    reg  [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP1_tdata_reg;
    reg  [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP2_tdata_reg;
    reg  [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP3_tdata_reg;
    reg  [S_AXIS_CNTRL_TDATA_WIDTH-1 : 0] APP4_tdata_reg;

  
   assign vsync = gen_vsync;
   assign s_axis_cntrl_tready = 1'b1;
   assign APP0_tdata = APP0_tdata_reg;
   assign APP1_tdata = APP1_tdata_reg;
   assign APP2_tdata = APP2_tdata_reg;
   assign APP3_tdata = APP3_tdata_reg;
   assign APP4_tdata = APP4_tdata_reg;
    
    always@(posedge s_axis_cntrl_aclk)
    begin
        s_axis_cntrl_tlast_dly <= s_axis_cntrl_tlast;    
        gen_vsync <= s_axis_cntrl_tlast_dly;
    end
    always@(posedge s_axis_cntrl_aclk)
    begin
        if(s_axis_cntrl_tvalid)
        begin
            
            cntrl_tdata_reg <= {cntrl_tdata_reg[127:0],s_axis_cntrl_tdata};           
        end
    end
  
    always@(posedge s_axis_cntrl_aclk)
    begin
        if(s_axis_cntrl_tlast_dly)
        begin
            APP0_tdata_reg <=cntrl_tdata_reg[159:128];
            APP1_tdata_reg <=cntrl_tdata_reg[127:96];
            APP2_tdata_reg <=cntrl_tdata_reg[95:64];
            APP3_tdata_reg <=cntrl_tdata_reg[63:32];
            APP4_tdata_reg <=cntrl_tdata_reg[31:0];
        end
    end
      
endmodule
