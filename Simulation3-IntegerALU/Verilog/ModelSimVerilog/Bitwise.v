module Bitwise(abus, bbus, op, outbus);
input [15:0] abus, bbus;
input [2:0] op;
output [15:0] outbus;

assign outbus = (op == 3'b000) ? 16'b0 : ((op == 3'b001) ? abus & bbus :
										 ((op == 3'b010) ? abus | bbus :
										 ((op == 3'b011) ? abus ^ bbus :
										 ((op == 3'b100) ? ~abus : 16'b0 ))));
endmodule
