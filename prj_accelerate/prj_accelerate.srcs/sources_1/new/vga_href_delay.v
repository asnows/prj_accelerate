`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/17 15:22:00
// Design Name: 
// Module Name: vga_href_delay
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


module vga_href_delay
(
    input pixel_clk,
    input[9:0]  data_in,
    input[1:0]  vsync_reg,
    input[1:0]  href_reg,
    input[31:0] href_pixel_count,
    input[13:0] rows_pixels_backup,
    input[11:0] href_high_backup ,
    input[11:0] href_low_backup,
    input[11:0] rows_count_backup,
    output[9:0] data_out,
    output href_out
);

    parameter LH = 2'b01;
    parameter HL = 2'b10;
    parameter Href_Idel = 2'b00,Href_Start = 2'b01,Href_High = 2'b10,Href_Low = 2'b11;
    
    (*mark_debug="true"*)reg[1:0]  Href_MC1 = 2'b00;
    (*mark_debug="true"*)reg       href_tmp1 = 1'b0;
    reg[1:0]  href_tmp1_reg = 2'b00;
    (*mark_debug="true"*)reg[11:0] href_tmp1_count   = 12'd0;
    (*mark_debug="true"*)reg[11:0] href_tmp1_rows_count   = 12'd0;
    
    (*mark_debug="true"*)reg[9:0] data_delay1,data_delay2,data_delay3,data_delay4;
    
    
    
    
    assign href_out = href_tmp1;
    assign data_out = data_delay4;
    
  //--------------------------------------generate href-------------------------------------//
    
      //generate href_tmp1
      always@(posedge pixel_clk)
      begin
      if(vsync_reg == HL)
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
              if(href_pixel_count == rows_pixels_backup)
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
              if(href_tmp1_count < href_high_backup - 1'b1)
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
                   Href_MC1 <= Href_Idel;//Href_Start;
              end
              else
              begin
                  if(href_tmp1_count < href_low_backup - 1'b1)
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
          end
      end
      
      always@(posedge pixel_clk)
      begin
      
      {data_delay4,data_delay3,data_delay2,data_delay1} <= {data_delay3,data_delay2,data_delay1,data_in};
      
      end
    
endmodule
