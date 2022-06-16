module TestBench();
    reg clk;
    reg enable;
    reg reset;
   

    SimpleCounter count0(.clk (clk), .enable (enable), .reset (reset));

    initial begin
        clk=0;
        forever #40 clk = ~clk;  
    end 
    always begin 
        reset = 1;
        enable = 0;
        #120
        reset = 0;
        enable = 1;
        #4000 
        enable = 0;
        reset = 0;
        #400
        enable = 1;
        reset = 0;
        #400
        enable = 0;
        reset = 0;
    end 
endmodule 