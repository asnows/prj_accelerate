`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/08/16 14:25:19
// Design Name: 
// Module Name: histogram
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
//             /-----Proc_State-----/----Init_State---/---------------------------Count_State--------------/      
//____________/！！！！！！！！！！\_______________________________________________________________________________vsync
//___________________________________________________/！！！！！！！！！！........！！！！！！！！！！！！\________href

module histogram
(
    input       pixel_clk,
    input       href,
    input       vsync,
    input[7:0]  data_in,
    input       hist_en,
    
    output      hist_href,    
    output      hist_vsync,
    output[7:0] data_out
    
);


    parameter HL = 2'b10; //和週冽
    parameter LH = 2'b01;//貧幅冽
    
    parameter[1:0] Init_State  = 2'b00,
                    Count_State = 2'b01,
                    Proc_State  = 2'b10;
    reg [1:0]  state = 2'b00;
    reg [1:0]  vsync_HL = 2'd0;
    reg [1:0]  herf_HL = 2'd0;
    reg [9:0]  counter = 10'd0;
    reg        href_tmp;
    reg        href_tmp1;
    reg [7:0]  data_tmp;
    
    reg [7 :0] addr1;
    reg [7 :0] addr2;
    reg        wr_en1;
    reg        wr_en2;
    reg        count_bram_wea ; 
    reg [18:0] count_gray_num = 19'd0;
    reg [18:0] count_bram_dina ;
    reg [7:0]  count_bram_addra;
    reg [7:0]  count_bram_addrb;
    wire[18:0] count_bram_doutb;
    
    reg        norm_bram_wea    ; 
    reg [7:0]  norm_bram_addra  ;
    reg [7:0]  norm_bram_dina   ;
    wire[7:0]  norm_bram_douta  ;
    
    reg[31:0]  norm_reg1;
    reg[31:0]  norm_reg2;
    reg[7 :0]  norm_addr0;
    reg[7 :0]  norm_addr1;
    reg[7 :0]  norm_addr2;
    reg        norm_wea0 ; 
    reg        norm_wea1 ;
    reg        norm_wea2 ;
    reg        norm_wea3 ;    
    
    
    
    assign hist_href  = (hist_en == 1'b1)? href_tmp : href ;
    assign data_out   = (hist_en == 1'b1)? norm_bram_douta : data_in;
    assign hist_vsync =  vsync; 
    
    always@(posedge pixel_clk)
    begin
        vsync_HL <= {vsync_HL[0],vsync};
        herf_HL  <= {herf_HL[0],href};
    end
    
    //get the state mechine
    always@(posedge pixel_clk)
    begin
        case(state)
        
            Init_State:
                begin
                    if(counter < 255)
                        begin
                           state   <= Init_State;
                           counter <= counter + 1;                                                 
                        end
                    else
                        begin
                            state   <= Count_State;
                            counter <= 10'd0; 
                        end
                end
                
            Count_State:
                begin
                    if(vsync_HL == LH)
                        begin
                            state <= Proc_State;
                        end
                    else
                        begin
                            state <= Count_State;                            
                        end
                end
                
            Proc_State:
                begin
                    if(vsync_HL == HL)
                        begin
                           state <= Init_State;
                           counter <= 10'd0; 
                        end
                    else
                        begin
                            state <= Proc_State;
                            if(counter < 255)
                                begin
                                    counter <= counter + 1;
                                end
                            else
                                begin
                                    counter <= 10'd255;
                                end
                        end
                end
                
            default:
                begin
                    state   <= Init_State;
                    counter <= 10'd0;
                end
        endcase    
    end
    
    // process gray
    always@(posedge pixel_clk)
    begin
        case(state)
        
            Init_State:
                begin
                    // initate gray_count_bram with zero
                    count_bram_wea  <= 1'b1;
                    count_bram_dina <= 19'd0;
                    count_bram_addra<= counter;
                    count_gray_num <= 19'd0;
                    //initate normalize   
                    norm_bram_wea   <= 1'b0;
                    norm_bram_addra <= 8'h00; 
                    norm_bram_dina  <= 8'h00;
                    norm_reg1  <= 32'd0; 
                    norm_reg2  <= 32'd0; 
                    norm_addr0 <= 8'h00;
                    norm_addr1 <= 8'h00;
                    norm_addr2 <= 8'h00;
                    norm_wea0  <= 1'b0;
                    norm_wea1  <= 1'b0;
                    norm_wea2  <= 1'b0;
                    norm_wea3  <= 1'b0; 
                end
                
            Count_State:
                begin
                
                    count_bram_addrb <= data_in;
                    
                     //bram_wea delya 2 clk//
                    wr_en1 <= href;
                    wr_en2 <= wr_en1;
//                    count_bram_wea <= wr_en2;
                    count_bram_wea   <= ((addr2 == addr1) && (wr_en1 == 1'b1))? 1'b0 : wr_en2;
                    
                    addr1 <= data_in;
                    addr2 <= addr1;
                    count_bram_addra <= addr2;
//                    count_bram_dina  <= count_bram_doutb + 1'b1;
                    count_bram_dina  <= count_bram_doutb + count_gray_num + 1'b1;
                    count_gray_num   <= ((addr2 == addr1) && (wr_en2 == 1'b1))?(count_gray_num + 1'b1) : 19'd0;
                   
                    
                    //normalized out
                     norm_bram_addra <= data_in;
                     href_tmp1 <= href;
                     href_tmp  <= href_tmp1;
                end
                
            Proc_State:
                begin
                    count_bram_addrb <= counter;
                    
                    if(count_bram_addrb > 8'h0)
                    begin
                        norm_reg1[31:13] <= count_bram_doutb;
                        norm_reg2 <= norm_reg2 + (norm_reg1>>13) + (norm_reg1>>12) + (norm_reg1>>11);
                        //norm_bram_dina <= norm_reg2[20:13];
                        norm_bram_dina <= (norm_reg2[31:13] > 19'd255) ? 8'd255 : norm_reg2[20:13];
                        
                    end
                    
                    norm_addr0 <= count_bram_addrb;
                    norm_addr1 <= norm_addr0;
                    norm_addr2 <= norm_addr1;
                    norm_bram_addra <= norm_addr2;
                    
                    if(count_bram_addrb < 255)
                        begin
                            norm_wea0 <= 1'b1;
                        end
                    else
                        begin
                            norm_wea0 <= 1'b0;
                        end
                        
                    norm_wea1 <= norm_wea0;    
                    norm_wea2 <= norm_wea1;
                    norm_wea3 <= norm_wea2;     
                    norm_bram_wea <= norm_wea3;
                    
                end
                
            default:
                begin
                end
        endcase    
    end

    // store gray count
     gray_count_bram count_bram_i
       (
        .clka (pixel_clk        ),
        .wea  (count_bram_wea   ),
        .addra(count_bram_addra ),
        .dina (count_bram_dina  ),
        .clkb (pixel_clk        ),
        .addrb(count_bram_addrb ),
        .doutb(count_bram_doutb )
      );
      
    // store normalize gray      
    normalize_bram  norm_bram_i
    (
        .clka (pixel_clk         ),
        .wea  (norm_bram_wea     ),
        .addra(norm_bram_addra   ),
        .dina (norm_bram_dina    ),
        .douta(norm_bram_douta   )
    );
    
    
endmodule




