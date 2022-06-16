module SimpleCounter (input clk, enable, reset, output [3:0]outQ);

wire [3:0] D;
wire [3:0] Q;

assign D[0] = ~Q[0];
assign D[1] = ((~Q[1]) & Q[0]) | (Q[1] & (~Q[0]));
assign D[2] = ((~Q[2]) & Q[1] & Q[0]) | ((~Q[1]) & Q[2]) | ((~Q[0]) & Q[2]) ;
assign D[3] = ((~Q[3]) & Q[2] & Q[1] & Q[0]) | ((~Q[1]) & Q[3]) | ((~Q[0]) & Q[3]) | ((~Q[2]) & Q[3]);

D_FLIP_FLOP dff0( .D (D[0]), .enable (enable), .clk (clk), .reset (reset), .Q (Q[0]) );
D_FLIP_FLOP dff1( .D (D[1]), .enable (enable), .clk (clk), .reset (reset), .Q (Q[1]) );
D_FLIP_FLOP dff2( .D (D[2]), .enable (enable), .clk (clk), .reset (reset), .Q (Q[2]) );
D_FLIP_FLOP dff3( .D (D[3]), .enable (enable), .clk (clk), .reset (reset), .Q (Q[3]) );

assign outQ = Q;
   
endmodule