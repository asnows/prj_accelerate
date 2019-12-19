`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/14 09:50:30
// Design Name: 
// Module Name: shreg
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


//module shreg
//    #(
//        parameter DEPTH = 6 
//    )
//    (
//        input clk,
//        input ain,
//        output aout
    
//    );
    
//    reg[DEPTH - 1:0] shreg_chain;
//    always@(posedge clk)
//    begin
//        shreg_chain <= {shreg_chain[DEPTH - 2:0],ain};
//    end
//    assign aout = shreg_chain[DEPTH - 1];
    
//endmodule


module shreg
    (
        input clk,
        input ain,
        output aout
    );
    reg ain_d1;
    reg ain_d2;
    reg ain_d3;
    reg ain_d4;
    reg[8:0] ain_d5;
    reg[8:0] ain_d6;
    
    always@(posedge clk)
    begin
        ain_d1 <= ain;
        ain_d2 <= ain_d1;
        ain_d3 <= ain_d2;
        ain_d4 <= ain_d3;
        ain_d5 <= ain_d4;
        ain_d6 <= pow(ain_d5);
    end
    assign aout = ain_d6;
    
    
endmodule
