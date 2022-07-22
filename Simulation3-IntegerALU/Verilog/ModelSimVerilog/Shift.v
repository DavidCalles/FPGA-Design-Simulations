module Shift(abus, cin, op, outbus, cout, overflow);
input [15:0] abus;
input [2:0] op;
input cin;
output [15:0] outbus;
output cout, overflow;

reg [15:0] out_Wire;
reg cout_Wire, of_Wire;

assign outbus = out_Wire;
assign cout = cout_Wire;
assign overflow = of_Wire;

always @ (abus or op or cin)
	begin
		case(op)
		3'b000: begin
			out_Wire = 16'h0; // No operation
			cout_Wire = 0;
			of_Wire = 0;
			end
		3'b001: begin
			out_Wire = {abus[14:0], 1'h0}; // Left Shift
			cout_Wire = abus[15];
			of_Wire = abus[15] ^ abus[14];
			end
		3'b010: begin
			out_Wire = {1'h0, abus[15:1]}; // Right Shift
			cout_Wire = abus[0];
			of_Wire = abus[15] ^ 0;
			end
		3'b011: begin
			if (abus == 16'hFFFF) 
			begin
				out_Wire = 16'h0;
			end else begin
				out_Wire = {abus[15], abus[15:1]};
			end
			cout_Wire = abus[0];
			of_Wire = 0;
			end	
		3'b100: begin
			out_Wire = {abus[14:0], cin};
			cout_Wire = abus[15];
			of_Wire = abus[15] ^ abus[14];
			end
		3'b101: begin
			out_Wire = {cin, abus[15:1]};
			cout_Wire = abus[0];
			of_Wire = abus[15] ^ cin;
			end
		default: begin
			out_Wire = 16'b0; 
			cout_Wire = 1'b0;
			of_Wire = 1'b0;
			end
		endcase
	end
endmodule
	