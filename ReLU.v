`timescale 1ns / 1ps
module ReLU #(parameter dataWidth = 16) (
    input  [dataWidth-1:0] x,        
    input               sel,      
    output [dataWidth-1:0] y       
);
    assign y = (sel && (x[dataWidth-1] == 1'b0)) ? x : {dataWidth{1'b0}};

endmodule
