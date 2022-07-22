module Adder(A, B, Cin, Op, Sum, Cout, Overflow);
input [15:0] A, B;
input Cin;
input [1:0] Op;
output Cout, Overflow;
output [15:0] Sum;

reg [15:0] aReg, bReg;
reg cinReg;

wire [15:0] aWire, bWire, coutWire, sumWire;
wire cinWire;

assign aWire = aReg;
assign bWire = bReg;
assign cinWire = cinReg;

FullAdder F0(aWire[0], bWire[0], cinWire, sumWire[0], coutWire[0]);
FullAdder F1(aWire[1], bWire[1], coutWire[0], sumWire[1], coutWire[1]);
FullAdder F2(aWire[2], bWire[2], coutWire[1], sumWire[2], coutWire[2]);
FullAdder F3(aWire[3], bWire[3], coutWire[2], sumWire[3], coutWire[3]);
FullAdder F4(aWire[4], bWire[4], coutWire[3], sumWire[4], coutWire[4]);
FullAdder F5(aWire[5], bWire[5], coutWire[4], sumWire[5], coutWire[5]);
FullAdder F6(aWire[6], bWire[6], coutWire[5], sumWire[6], coutWire[6]);
FullAdder F7(aWire[7], bWire[7], coutWire[6], sumWire[7], coutWire[7]);
FullAdder F8(aWire[8], bWire[8], coutWire[7], sumWire[8], coutWire[8]);
FullAdder F9(aWire[9], bWire[9], coutWire[8], sumWire[9], coutWire[9]);
FullAdder F10(aWire[10], bWire[10], coutWire[9], sumWire[10], coutWire[10]);
FullAdder F11(aWire[11], bWire[11], coutWire[10], sumWire[11], coutWire[11]);
FullAdder F12(aWire[12], bWire[12], coutWire[11], sumWire[12], coutWire[12]);
FullAdder F13(aWire[13], bWire[13], coutWire[12], sumWire[13], coutWire[13]);
FullAdder F14(aWire[14], bWire[14], coutWire[13], sumWire[14], coutWire[14]);
FullAdder F15(aWire[15], bWire[15], coutWire[14], sumWire[15], coutWire[15]);

always @ (A or B or Cin or Op)
 	begin
		case(Op)
			2'b00: begin
				aReg = 16'h0000;
				bReg = 16'h0000;
				cinReg = 0;
			end
			2'b01: begin
				aReg = A;
				bReg = B;
				cinReg = Cin;
			end
			2'b11: begin
				aReg = A;
				bReg = ~B;
				cinReg = ~Cin;
			end
			default: begin
				aReg = 16'h0000;
				bReg = 16'h0000;
				cinReg = 0;
			end

		endcase
		
	end 

assign Sum = sumWire;

assign Cout = (Op == 2'b01) ? coutWire[15] : ((Op == 2'b11) ? (~coutWire[15]) : 0);

assign Overflow = (((A[15] == 1) & (bWire[15] == 1) & (sumWire[15] == 0)) |
				  ((A[15] == 0) & (bWire[15] == 0) & (sumWire[15] == 1))) ? 1 : 0;


endmodule








