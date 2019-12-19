`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/08/13 09:57:46
// Design Name: 
// Module Name: axis_switch
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


    module axis_switch
    #(
        parameter DATA_WIDTH = 8
    
    )
    (
        input       aclk            ,
        input       vsyhc           ,
        input       ps_triger0      ,
		input       ps_triger1      ,
        output      pl_achieve      ,        
        input       s_axis_tvalid   ,
        output      s_axis_tready   ,
        input[DATA_WIDTH - 1:0] s_axis_tdata    ,
        input       s_axis_tlast    ,
        input       s_axis_tuser    ,
        (*mark_debug="true"*)output      m_0_axis_tvalid ,
        (*mark_debug="true"*)input       m_0_axis_tready ,
                              output[DATA_WIDTH - 1:0]m_0_axis_tdata  ,
        (*mark_debug="true"*)output      m_0_axis_tlast  ,
        (*mark_debug="true"*)output      m_0_axis_tuser  ,
        (*mark_debug="true"*)output      m_1_axis_tvalid ,
        (*mark_debug="true"*)input       m_1_axis_tready ,
                              output[DATA_WIDTH - 1:0]m_1_axis_tdata  ,
        (*mark_debug="true"*)output      m_1_axis_tlast  ,
        (*mark_debug="true"*)output      m_1_axis_tuser 
    );
    
    localparam LH = 2'b01,HL=2'b10;
    reg tran_1frame  = 0;
	reg tran_en      = 0;
	reg pl_achieve_reg = 0; //fpga 完成一帧写入
	reg[1:0] vsyhc_reg = 2'b00;
	reg[1:0] ps_triger0_reg = 2'b00;
	
	
	assign m_0_axis_tvalid = (s_axis_tvalid & tran_en);
	assign m_0_axis_tdata  = s_axis_tdata  ;
	assign m_0_axis_tlast  = s_axis_tlast  ;		
	assign m_0_axis_tuser  = (s_axis_tuser & tran_en);	
	
	assign m_1_axis_tvalid = (s_axis_tvalid & ps_triger1 & (~tran_en));
	assign m_1_axis_tdata  = s_axis_tdata ;
	assign m_1_axis_tlast  = s_axis_tlast  ;		
	assign m_1_axis_tuser  = (s_axis_tuser & ps_triger1 & (~tran_en));

	//assign s_axis_tready = (m_0_axis_tready || m_1_axis_tready );
	assign s_axis_tready = (tran_en == 1'b1)?m_0_axis_tready : m_1_axis_tready ;
	//assign pl_achieve    = pl_achieve_reg & ps_triger0;
	assign pl_achieve    = pl_achieve_reg;// & ps_triger0;
	
	
    
    
//    always@(posedge vsyhc)
//    begin
//        if(ps_triger0 == 1)
//            begin
//                tran_1frame <= 1'b1;
//            end
//        else
//            begin
//                tran_1frame <= 1'b0;
//            end
//    end

//	always@(posedge vsyhc)
//	begin
//		if((ps_triger0 == 1) && (tran_1frame == 0))
//			begin
//				tran_en <= 1'b1;				
//			end
//		else
//			begin
//				tran_en <= 1'b0;
//			end
			
//		if((ps_triger0 == 1)&&(tran_1frame == 1))
//			begin
//				pl_achieve_reg <= 1'b1;
//			end
//		else
//			begin
//				pl_achieve_reg <= 1'b0;
//			end
		
//	end
	

    always@(posedge aclk )
    begin
        vsyhc_reg <= {vsyhc_reg[0],vsyhc}; 
        ps_triger0_reg <={ps_triger0_reg[0],ps_triger0};   
    end
    
    
    //tran_1frame = 1 标记帧开始
    always@(posedge aclk)
    begin
        if(vsyhc_reg == LH)
        begin
            if(ps_triger0 == 1)
                begin
                    tran_1frame <= 1'b1;
                end
            else
                begin
                    tran_1frame <= 1'b0;
                end
        end

    end
    
     //tran_en 使能帧传输
    always@(posedge aclk)
    begin
        if(vsyhc_reg == LH)
        begin
            if((ps_triger0 == 1) && (tran_1frame == 0))
                begin
                    tran_en <= 1'b1;                
                end
            else
                begin
                    tran_en <= 1'b0;
                end
        end

    end
    
    //pl_achieve_reg 一帧传输完成，反馈给上位机
    always@(posedge aclk)
    begin
            
        if(vsyhc_reg == LH )
        begin
            if((ps_triger0 == 1)&&(tran_1frame == 1))
            begin
                pl_achieve_reg <= 1'b1;  
            end
            else
            begin
                pl_achieve_reg <= 1'b0;
            end
        end
        else
        begin
            if(ps_triger0_reg == HL)
            begin
                pl_achieve_reg <= 1'b0;
            end
            
        end            

    end
    
	
	
    
    endmodule
    
    
    
    
