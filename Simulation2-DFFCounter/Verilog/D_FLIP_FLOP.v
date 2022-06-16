module D_FLIP_FLOP (input D, enable, clk, reset, output reg Q);
    
    always @(posedge clk) 
    begin
        if (reset==1'b1) begin
            Q <= 1'b0; 
        end else if (enable==1'b1) begin
            Q <= D;
        end else begin
            // keep previous value
        end
    end 
    
endmodule