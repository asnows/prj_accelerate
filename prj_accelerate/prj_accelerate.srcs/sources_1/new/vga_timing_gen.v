`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/24 13:55:35
// Design Name: 
// Module Name: vga_timing_gen
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


module vga_timing_gen
    (
        input pixel_clk,
        input resetn,
        output vsync_out,
        output href_out
    );
    
    parameter VSYNC_BLANK_COUNT  = 32'h00000640;
    parameter VSYNC_PIXELS_COUNT = 32'h000668a0;
    parameter HREF_START_COUNT   = 32'h00006e00;
    parameter HREF_HIGH_COUNT    = 32'h00000280;
    parameter HREF_LOW_COUNT     = 32'h000000a0;

    parameter Href_Idel = 2'b00,Href_Start = 2'b01,Href_High = 2'b10,Href_Low = 2'b11;

    parameter LH = 1'b01;
    parameter HL = 1'b01;
    
    reg [31:0] pixels_count;
    reg[1:0]  Href_MC1 = 2'b00;
    reg       href_tmp1 = 1'b0;
    reg[1:0]  href_tmp1_reg = 2'b00;
    reg[11:0] href_tmp1_count   = 12'd0;
    reg[11:0] href_tmp1_rows_count   = 12'd0;
    reg vsync_tmp;
    
    
    
    
    assign vsync_out = vsync_tmp;
    assign href_out  = href_tmp1;
    
    always@(posedge pixel_clk)
    begin
        if(resetn == 1'b0)
        begin
            pixels_count <= 32'd0;
        end
        else
        begin
            if(pixels_count < VSYNC_PIXELS_COUNT)
            begin
                pixels_count <= pixels_count + 1'b1;
            end
            else
            begin
                pixels_count <= 32'd0;
            end
        end
    end
    
    
    always@(posedge pixel_clk)
    begin
        case(pixels_count)
            32'd0:
            begin
                vsync_tmp <= 1'b1;
            end
            VSYNC_BLANK_COUNT - 1'b1:
            begin
                vsync_tmp <= 1'b0;
            end
        endcase
    end
    
  //--------------------------------------generate href-------------------------------------//
    
      //generate href_tmp1
      always@(posedge pixel_clk)
      begin
      if(vsync_tmp == 1'b1)
      begin
          Href_MC1 <= Href_Start;
          href_tmp1 <= 1'b0; 
          href_tmp1_count <= 12'd0;   
      end
      else
      case(Href_MC1)
          Href_Idel:
          begin
              if(pixels_count == HREF_START_COUNT - 1'b1)
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
              if(pixels_count == HREF_START_COUNT - 1'b1)
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
              if(href_tmp1_count < HREF_HIGH_COUNT - 1'b1)
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
              if(href_tmp1_rows_count == 480 )
              begin
                   Href_MC1 <= Href_Start;//Href_Start;
              end
              else
              begin
                  if(href_tmp1_count < HREF_LOW_COUNT - 1'b1)
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

endmodule
