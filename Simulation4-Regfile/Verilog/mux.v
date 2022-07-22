// regfile.vhd
//   Implementation of a register file.

module MUX(DIN, REGS, SEL, OUTBUS);

input [2:0] SEL;
input [15:0] DIN;
input [15:0] REGS[7:1];
output [15:0] OUTBUS;

// reg [15:0] out_Wire;
// assign OUTBUS = out_Wire;

assign OUTBUS = (SEL == 3'b000) ? DIN : REGS[SEL];

// always @ (SEL)
// begin
// 	case(SEL)
// 		3'b000: out_Wire = DIN;
// 		3'b001, 3'b010, 3'b011, 3'b100, 3'b101, 3'b110, 3'b111: out_Wire = REGS[SEL];
//     	default: out_Wire = 16'd0;
// 	endcase
	
// end 
endmodule
