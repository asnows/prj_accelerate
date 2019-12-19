`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/15 11:10:05
// Design Name: 
// Module Name: isp_model
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


module isp_model
    (
        input pixel_clk,
        input reset_n,
        input vsync,
        input href,
        input dpc_en,
        input gaus_en,
        input gaus_shrap_en,
        input[9:0] data_in,
        input[9:0] dpc_threshold,
        input[9:0] gaus_shrap_threshold,
        input[7:0] gaus_sharp_factor,
        input[3:0] debug_cmd,
        output vsync_out,
        output href_out,
        output[7:0] data_out
    
    );
    parameter DPC_THRESHOLD = 10'd40;
//    wire[9:0] cmos_raw_data_out ;
//    wire[9:0] cmos_gaus_data_out ;
//    reg [2:0] cmd_reg;
    
    
    reg vsync_out_reg;
    reg href_out_reg;
    reg[9:0] data_out_reg;
    
    wire      dpc_maxtri_href    ;
    wire      dpc_maxtri_vsync   ;
    wire[9:0] dpc_matrix_data01,dpc_matrix_data11,dpc_matrix_data21;
    wire      dpc_vsync_out;
    wire      dpc_href_out ;
    wire[9:0] dpc_data_out ;


    
    wire gaus_maxtri_href   ;
    wire gaus_maxtri_vsync  ;
    wire[9:0] gaus_matrix_data01,gaus_matrix_data11,gaus_matrix_data21;
    
    wire      gaus_filter_vsync_out ;
    wire      gaus_filter_href_out  ;
    wire[9:0] gaus_filter_data_out,gaus_filter_raw_out ;
    
    
    
    wire      gaus_sharp_vsync_out;
    wire      gaus_sharp_href_out ;
    wire[9:0] gaus_sharp_data_out ;
    
    wire      hist_href_out ;    
    wire      hist_vsync_out;
    wire[7:0] hist_data_out ;


    assign vsync_out = vsync_out_reg;   
    assign href_out  = href_out_reg;    
    assign data_out  = data_out_reg[9:2];
    
    
     maxtri3x3 dpc_maxtri3x3_i
    (
    
        .pixel_clk      (pixel_clk          ),
        .resetn         (reset_n            ),
        .vsync          (vsync              ),
        .href           (href               ),
        .data_in        (data_in            ),
        .line1_href_out (dpc_maxtri_href    ),
        .line1_vsync_out(dpc_maxtri_vsync   ),
        .matrix_01      (dpc_matrix_data01  ),
        .matrix_11      (dpc_matrix_data11  ),
        .matrix_21      (dpc_matrix_data21  ) 
    
    );    
    
    cmos_dpc cmos_dpc_i
    (
        .pixel_clk    (pixel_clk            ),
        .dpc_en       (dpc_en               ),
        .threshold    (DPC_THRESHOLD        ),    //dpc_threshold
        .line1_href   (dpc_maxtri_href      ),
        .line1_vsync  (dpc_maxtri_vsync     ),
        .matrix_data01(dpc_matrix_data01    ), 
        .matrix_data11(dpc_matrix_data11    ), 
        .matrix_data21(dpc_matrix_data21    ),  
        .vsync_out    (dpc_vsync_out        ),
        .href_out     (dpc_href_out         ),
        .data_dpc_out (dpc_data_out         )
    );      
    
    
     maxtri3x3 gaus_maxtri3x3_i
   (
       .pixel_clk       (pixel_clk          ),
       .resetn          (reset_n            ),
       .vsync           (dpc_vsync_out      ),
       .href            (dpc_href_out       ),
       .data_in         (dpc_data_out       ),
       .line1_href_out  (gaus_maxtri_href   ),
       .line1_vsync_out (gaus_maxtri_vsync  ),
       .matrix_01       (gaus_matrix_data01 ),
       .matrix_11       (gaus_matrix_data11 ),
       .matrix_21       (gaus_matrix_data21 ) 
   
   );    
    
    gaus_filter gaus_filter_i
    (
        .pixel_clk      (pixel_clk              ),
        .gaus_en        (gaus_en                ),
        .line1_href     (gaus_maxtri_href       ),
        .line1_vsync    (gaus_maxtri_vsync      ),
        .matrix_data01  (gaus_matrix_data01     ), 
        .matrix_data11  (gaus_matrix_data11     ), 
        .matrix_data21  (gaus_matrix_data21     ), 
        .vsync_out      (gaus_filter_vsync_out  ),
        .href_out       (gaus_filter_href_out   ),
        .data_raw_out   (gaus_filter_raw_out    ),
        .data_gaus_out  (gaus_filter_data_out   )
    );
    
    gaus_sharp gaus_sharp_i
    (
        .pixel_clk        (pixel_clk            ),
        .vsync_in         (gaus_filter_vsync_out),
        .href_in          (gaus_filter_href_out ),
        .shrap_en         (gaus_shrap_en        ),
        .sharp_threlode_in(gaus_shrap_threshold ),
        .sharp_factor_in  (gaus_sharp_factor    ),
        .data_raw_in      (gaus_filter_raw_out  ),
        .data_gaus_in     (gaus_filter_data_out ),
        
        .vsync_out        (gaus_sharp_vsync_out ),
        .href_out         (gaus_sharp_href_out  ),
        .data_out         (gaus_sharp_data_out  )
    );
    
    
    
    histogram histogram_i
    (
        .pixel_clk(pixel_clk),
        .href(gaus_sharp_href_out),
        .vsync(gaus_sharp_vsync_out),
        .data_in(gaus_sharp_data_out[9:2]),
        .hist_en(1'b1),
        .hist_href (hist_href_out ),    
        .hist_vsync(hist_vsync_out),
        .data_out  (hist_data_out )
        
    );


    
    always@(posedge pixel_clk)
    begin
        casex(debug_cmd)
            4'b0000:
            begin
                vsync_out_reg <= vsync;
                href_out_reg  <= href ;
                data_out_reg  <= data_in ;
            end
            4'b0001:
            begin
                vsync_out_reg <= dpc_maxtri_vsync;
                href_out_reg  <= dpc_maxtri_href ;
                data_out_reg  <= dpc_matrix_data11 ;
            end
            4'b0010:
            begin
                vsync_out_reg <= dpc_vsync_out;
                href_out_reg  <= dpc_href_out ;
                data_out_reg  <= dpc_data_out ;
            end
            4'b0011:
            begin
                vsync_out_reg <= gaus_maxtri_vsync;
                href_out_reg  <= gaus_maxtri_href ;
                data_out_reg  <= gaus_matrix_data11 ;
            end
            4'b0100:
            begin
                vsync_out_reg <= gaus_filter_vsync_out;
                href_out_reg  <= gaus_filter_href_out ;
                data_out_reg  <= gaus_filter_data_out ;
            end
            
            4'b0101:
            begin
                vsync_out_reg <= gaus_sharp_vsync_out;
                href_out_reg  <= gaus_sharp_href_out ;
                data_out_reg  <= gaus_sharp_data_out ;
            end
            4'b0110:
            begin
                vsync_out_reg <= hist_vsync_out ;
                href_out_reg  <= hist_href_out;
                data_out_reg  <= {hist_data_out,2'b00} ;
            end
            default:
            begin
                vsync_out_reg <= vsync;
                href_out_reg  <= href ;
                data_out_reg  <= data_in ;
            end
        endcase
    end 
    
endmodule
