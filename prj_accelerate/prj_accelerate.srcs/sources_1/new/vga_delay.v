`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/17 09:58:50
// Design Name: 
// Module Name: vga_delay
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


module vga_delay
    (
        input pixel_clk,
        input resetn,
        input vsync,
        input href,
        input[9:0] data_in,
        output line0_href,
        output line1_href,
        output line2_href,
        output line0_vsync,
        output line1_vsync,
        output line2_vsync,
        output[9:0] data0_out
        
    );

    parameter HALF_ROWS = 240;
    parameter LH = 2'b01;
    parameter HL = 2'b10;
    parameter Vsync_Blank = 1'b1,Vsync_Activet = 1'b0;
    parameter Href_Idel = 2'b00,Href_Start = 2'b01,Href_High = 2'b10,Href_Low = 2'b11;
    
    parameter LINE_WIDTH = 14'd1500;
    parameter LINE_HEIGH_WIDTH = 12'd640;
    parameter LINE_LOW_WIDTH = 12'd860;
    
    reg href_start = 1'b0;
    reg[1:0]  vsync_reg = 2'b00;
    reg[1:0]  href_reg = 2'b00;
    
    reg[31:0] vsync_pixel_count =32'd0;
    reg[31:0] vsync_blank_count =32'd0;
    reg[31:0] vsync_blank_backup=32'd0;
    
    reg[31:0] href_pixel_count  =32'd0;
    reg[11:0] rows_count  = 12'd0;
    reg[11:0] rows_count_backup  = 12'd0;
//    (*mark_debug="true"*)reg[13:0] rows_pixels_backup  = 14'd0;
    (*mark_debug="true"*)reg[11:0] href_high_count  = 12'd0;
//    (*mark_debug="true"*)reg[11:0] href_high_backup  = 12'd0;
    (*mark_debug="true"*)reg[11:0] href_low_count   = 12'd0;
//    (*mark_debug="true"*)reg[11:0] href_low_backup   = 12'd0;
    (*mark_debug="true"*)reg[9:0] data_delay1,data_delay2,data_delay3,data_delay4;
    
    reg[5:0]  vsync_tmp0_reg = 5'd0;
    reg       vsync_tmp0 = 1'b0;
    
    reg       Vsync_MC1      = 1'b0;
    reg       vsync_tmp1     = 1'b0;
    reg       vsync_tmp1_reg = 1'b0;
    
    reg       vsync_tmp2     = 1'b0;
    
    
    
//    reg[5:0]  href_tmp0_reg = 5'd0;
//    reg       href_tmp0 = 1'b0;
    
    
    reg[1:0]  Href_MC0 = 2'b00;
    reg       href_tmp0 = 1'b0;
    reg[1:0]  href_tmp0_reg = 2'b00;
    reg[11:0] href_tmp0_count   = 12'd0;
    reg[11:0] href_tmp0_rows_count   = 12'd0;
    
    
    
    reg[1:0]  Href_MC1 = 2'b00;
    reg       href_tmp1 = 1'b0;
    reg[1:0]  href_tmp1_reg = 2'b00;
    reg[11:0] href_tmp1_count   = 12'd0;
    reg[11:0] href_tmp1_rows_count   = 12'd0;
    
    
    reg[1:0]  Href_MC2 = 2'b00;
    reg       href_tmp2 = 1'b0;
    reg[1:0]  href_tmp2_reg = 2'b00;
    reg[11:0] href_tmp2_count   = 12'd0;
    reg[11:0] href_tmp2_rows_count   = 12'd0;
    
    assign line0_href = href_tmp0;
    assign line1_href = href_tmp1;
    assign line2_href = href_tmp2;
    assign line0_vsync= vsync_tmp0;
    assign line1_vsync= vsync_tmp1;
    assign line2_vsync= vsync_tmp2;
    
    assign data0_out = data_delay4;
    
          
    always@(posedge pixel_clk)
    begin
        vsync_reg <= {vsync_reg[0],vsync}; 
        href_reg  <= {href_reg[0], href};     
    end
    
    // vsync_pixel_count
    always@(posedge pixel_clk)
    begin
        if(vsync_reg == LH)
        begin
            vsync_pixel_count <= 32'd0;
        end
        else
        begin
            vsync_pixel_count <= vsync_pixel_count + 1'b1;
        end
    end    
      
    // vsync_blank_count
    always@(posedge pixel_clk)
    begin
        if(vsync_reg == LH)
        begin
            vsync_blank_count <= 32'd1;
            vsync_blank_backup<= vsync_blank_count;
        end
        else
        begin
            if(vsync == 1'b1)
            begin
                vsync_blank_count <= vsync_blank_count + 1'b1;
            end
            else
            begin
                vsync_blank_count <= vsync_blank_count;
            end
        end
    end   
    
    
    //href_start
    always@(posedge pixel_clk)
    begin
        if(vsync_reg == LH)
        begin
            href_start  <= 1'b0;
        end
        else
        begin
            if(href_reg == LH)
            begin
                href_start  <= 1'b1;
            end
        end
    end
    
    //href_pixel_count
    always@(posedge pixel_clk)
    begin
        if(~href_start)
        begin
            href_pixel_count  <= 32'd0;
        end
        else
        begin
            href_pixel_count  <= href_pixel_count + 1'b1;
        end
    end
    
   //rows_count 
   always@(posedge pixel_clk)
   begin
    if(vsync_reg == LH)
    begin
        rows_count_backup <= rows_count;
        rows_count <= 12'd0;
    end
    else
    begin
        if(href_reg == LH)
        begin
            rows_count <= rows_count + 1'b1;
        end
        else
        begin
            rows_count <= rows_count;
        end
    end
   end
   
   //href_high_count, href_low_count
//   always@(posedge pixel_clk)
//   begin
//    if(vsync_reg == LH)
//    begin
//        href_high_count  <= 12'd0;
//        href_low_count   <= 12'd0; 
        
//        //backup
//        href_high_backup  <= href_high_count;
//        href_low_backup   <= href_low_count;
//        rows_pixels_backup <= href_high_count + href_low_count;
           
//    end
//    else
//    begin
//        if(rows_count == 12'd1)
//        begin
//            if(href == 1'b1)
//            begin
//                href_high_count <= href_high_count + 1'b1;   
//            end
//            else
//            begin
//                href_low_count <= href_low_count + 1'b1; 
//            end
//        end
//    end
//   end

    //href_high_count,
    always@(posedge pixel_clk)
    begin
        if(vsync_reg == LH)
        begin
            href_high_count  <= 12'd0;
//            href_high_backup <= href_high_count;    
        end
        else
        begin
            if((rows_count == 12'd1) && (href == 1'b1))
            begin
                href_high_count <= href_high_count + 1'b1;  
            end
            else
            begin
               href_high_count <= href_high_count;  
            end
        end
    end
    
    
    //href_low_count,
    always@(posedge pixel_clk)
    begin
        if(vsync_reg == LH)
        begin
            href_low_count  <= 12'd0;
//            href_low_backup <= href_low_count;    
        end
        else
        begin
            if((rows_count == 12'd1) && (href == 1'b0))
            begin
                href_low_count <= href_low_count + 1'b1;  
            end
            else
            begin
                href_low_count <= href_low_count;  
            end
        end
    end
    
//    //rows_pixels_backup
//    always@(posedge pixel_clk)
//    begin
//        if(vsync_reg == LH)
//        begin
//            rows_pixels_backup <= href_high_count + href_low_count;
//        end
//        else
//        begin
//            rows_pixels_backup <= rows_pixels_backup;
//        end
//    end
   
   //data delay out
   always@(posedge pixel_clk)
   begin
        {data_delay4,data_delay3,data_delay2,data_delay1} <= {data_delay3,data_delay2,data_delay1,data_in};   
   end
   
   
 //--------------------------------------generate vsync-------------------------------------//
    
     //generate vsync_tmp0
     always@(posedge pixel_clk)
     begin
        vsync_tmp0_reg <= {vsync_tmp0_reg[4:0],vsync};
        vsync_tmp0     <= vsync_tmp0_reg[2];
     
     end
   
    //generate vsync_tmp1
    always@(posedge pixel_clk)
    begin
    if(~resetn)
    begin
        Vsync_MC1  <= Vsync_Activet;
        vsync_tmp1 <= 1'b0;
    end
    else
    case(Vsync_MC1)
        Vsync_Activet:
        begin
            vsync_tmp1 <= 1'b0;
            if(vsync_reg == LH)
            begin
                Vsync_MC1 <= Vsync_Blank;
            end
            else
            begin
                Vsync_MC1 <= Vsync_Activet;
            end    
        end
        Vsync_Blank:
        begin
            if(vsync_pixel_count == LINE_WIDTH)
            begin
                vsync_tmp1 <= 1'b1;    
            end
            else
            begin
                vsync_tmp1 <= vsync_tmp1; 
            end
            
            if(vsync_pixel_count == LINE_WIDTH + vsync_blank_backup - 1'b1 )
            begin
                Vsync_MC1 <= Vsync_Activet;    
            end
            else
            begin
                Vsync_MC1 <= Vsync_Blank; 
            end
        end
    endcase
    end
    
    

  //--------------------------------------generate href-------------------------------------//
  
//     //generate href_tmp0
//     always@(posedge pixel_clk)
//     begin
//        href_tmp0_reg <= {href_tmp0_reg[4:0],href};
//        href_tmp0 <= href_tmp0_reg[2];
     
//     end


    //generate href_tmp0
    always@(posedge pixel_clk)
    begin
    if(vsync_reg == LH)
    begin
        Href_MC0 <= Href_Idel;
        href_tmp0 <= 1'b0; 
        href_tmp0_count <= 12'd0;   
    end
    else
    case(Href_MC0)
        Href_Idel:
        begin
            if(href_reg == LH)
            begin
                Href_MC0 <= Href_Start;
            end
            else
            begin
                Href_MC0 <= Href_Idel;
            end
            href_tmp0 <= 1'b0; 
            href_tmp0_count <= 12'd0;  
             
        end
        Href_Start:
        begin
            if(href_pixel_count == 14'd0)
            begin
                Href_MC0 <= Href_High;    
            end
            else
            begin
                Href_MC0 <= Href_Start; 
            end
            href_tmp0 <= 1'b0; 
            href_tmp0_count <= 12'd0;  
            
        end
        Href_High:
        begin
            href_tmp0 <= 1'b1;  
            if(href_tmp0_count < LINE_HEIGH_WIDTH - 1'b1)
            begin
                href_tmp0_count <= href_tmp0_count + 1'b1;
                Href_MC0 <= Href_High;  
            end
            else
            begin
                Href_MC0 <= Href_Low;  
                href_tmp0_count <= 12'd0;;
            end
            
        end
        Href_Low:
        begin
            href_tmp0 <= 1'b0;  
            if(href_tmp0_rows_count == rows_count_backup )
            begin
                 Href_MC0 <= Href_Start;
            end
            else
            begin
                if(href_tmp0_count < LINE_LOW_WIDTH - 1'b1)
                begin
                    href_tmp0_count <= href_tmp0_count + 1'b1;
                    Href_MC0 <= Href_Low;
                end
                else
                begin
                    Href_MC0 <= Href_High;  
                    href_tmp0_count <= 12'd0;;
                end
            end
        end
    endcase
    end

    always@(posedge pixel_clk)
    begin
        href_tmp0_reg <= {href_tmp0_reg[0],href_tmp0};  
    end
    
    always@(posedge pixel_clk)
    begin
        if(Href_MC0 == Href_Start)
        begin
            href_tmp0_rows_count <=12'd0;
        end
        else
        begin
            if(href_tmp0_reg == HL )
            begin
                href_tmp0_rows_count <=href_tmp0_rows_count + 1'b1;    
            end
            else
            begin
                href_tmp0_rows_count <=href_tmp0_rows_count;   
            end
        end
    end


  
    //generate href_tmp1
    always@(posedge pixel_clk)
    begin
    if(vsync_reg == LH)
    begin
        Href_MC1 <= Href_Idel;
        href_tmp1 <= 1'b0; 
        href_tmp1_count <= 12'd0;   
    end
    else
    case(Href_MC1)
        Href_Idel:
        begin
            if(href_reg == LH)
            begin
                Href_MC1 <= Href_Start;
            end
            else
            begin
                Href_MC1 <= Href_Idel;
            end
            href_tmp1 <= 1'b0; 
            href_tmp1_count <= 12'd0;  
             
        end
        Href_Start:
        begin
            if(href_pixel_count == LINE_WIDTH)
            begin
                Href_MC1 <= Href_High;    
            end
            else
            begin
                Href_MC1 <= Href_Start;  
            end
            href_tmp1 <= 1'b0; 
            href_tmp1_count <= 12'd0;  
            
        end
        Href_High:
        begin
            href_tmp1 <= 1'b1;  
            if(href_tmp1_count < LINE_HEIGH_WIDTH - 1'b1)
            begin
                href_tmp1_count <= href_tmp1_count + 1'b1;
                Href_MC1 <= Href_High;  
            end
            else
            begin
                Href_MC1 <= Href_Low;  
                href_tmp1_count <= 12'd0;;
            end
            
        end
        Href_Low:
        begin
            href_tmp1 <= 1'b0;  
            if(href_tmp1_rows_count == rows_count_backup )
            begin
                 Href_MC1 <= Href_Start;
            end
            else
            begin
                if(href_tmp1_count < LINE_LOW_WIDTH - 1'b1)
                begin
                    href_tmp1_count <= href_tmp1_count + 1'b1;
                    Href_MC1 <= Href_Low;
                end
                else
                begin
                    Href_MC1 <= Href_High;  
                    href_tmp1_count <= 12'd0;;
                end
            end
        end
    endcase
    end

    always@(posedge pixel_clk)
    begin
        href_tmp1_reg <= {href_tmp1_reg[0],href_tmp1};  
    end
    
    always@(posedge pixel_clk)
    begin
        if(Href_MC1 == Href_Start)
        begin
            href_tmp1_rows_count <=12'd0;
        end
        else
        begin
            if(href_tmp1_reg == HL )
            begin
                href_tmp1_rows_count <=href_tmp1_rows_count + 1'b1;    
            end
            else
            begin
                href_tmp1_rows_count <=href_tmp1_rows_count;   
            end
        end
    end
    
    //generate href_tmp2
     
    always@(posedge pixel_clk)
    begin
    if(vsync_reg == LH)
    begin
        Href_MC2 <= Href_Idel;
        href_tmp2 <= 1'b0; 
        href_tmp2_count <= 12'd0;   
    end
    else
    case(Href_MC2)
        Href_Idel:
        begin
            if(href_reg == LH)
            begin
                Href_MC2 <= Href_Start;
            end
            else
            begin
                Href_MC2 <= Href_Idel;
            end
            href_tmp2 <= 1'b0; 
            href_tmp2_count <= 12'd0;  
             
        end
        Href_Start:
        begin
            if(href_pixel_count == LINE_WIDTH + LINE_WIDTH)
            begin
                Href_MC2 <= Href_High;    
            end
            else
            begin
                Href_MC2 <= Href_Start;   
            end
            href_tmp2 <= 1'b0; 
            href_tmp2_count <= 12'd0;  
            
        end
        Href_High:
        begin
            href_tmp2 <= 1'b1;  
            if(href_tmp2_count < LINE_HEIGH_WIDTH - 1'b1)
            begin
                href_tmp2_count <= href_tmp2_count + 1'b1;
                Href_MC2 <= Href_High;  
            end
            else
            begin
                Href_MC2 <= Href_Low;  
                href_tmp2_count <= 12'd0;;
            end
            
        end
        Href_Low:
        begin
            href_tmp2 <= 1'b0;  
            if(href_tmp2_rows_count == rows_count_backup )
            begin
                 Href_MC2 <= Href_Start;
            end
            else
            begin
                if(href_tmp2_count < LINE_LOW_WIDTH - 1'b1)
                begin
                    href_tmp2_count <= href_tmp2_count + 1'b1;
                    Href_MC2 <= Href_Low;
                end
                else
                begin
                    Href_MC2 <= Href_High;  
                    href_tmp2_count <= 12'd0;;
                end
            end
        end
    endcase
    end

    always@(posedge pixel_clk)
    begin
        href_tmp2_reg <= {href_tmp2_reg[0],href_tmp2};  
    end
    
    always@(posedge pixel_clk)
    begin
        if(Href_MC2 == Href_Start)
        begin
            href_tmp2_rows_count <=12'd0;
        end
        else
        begin
            if(href_tmp2_reg == HL )
            begin
                href_tmp2_rows_count <=href_tmp2_rows_count + 1'b1;    
            end
            else
            begin
                href_tmp2_rows_count <=href_tmp2_rows_count;  
            end
        end
    end
    
    
endmodule
