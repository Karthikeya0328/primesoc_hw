module LeakyReLU #(parameter dataWidth = 16, leakFactor = 2) (
    input  [dataWidth-1:0] x,        
    input                 sel,      
    output reg [dataWidth-1:0] y     
);
    always @(*) begin
        if (sel) begin
            if (x[dataWidth-1] == 1'b0)  
                y = x;                   
            else
                y = x >> leakFactor;    
        end else begin
            y = {dataWidth{1'b0}};      
        end
    end

endmodule
