module ALU(ABUS, BBUS, FSEL, CIN, C, Z, S, V, FOUT);
input [15:0] ABUS, BBUS;
input [3:0] FSEL;
input CIN;
output C, Z, S, V;
output [15:0] FOUT;

// Registers for Always block
reg [15:0] A_Reg_Adder, B_Reg_Adder;
reg [15:0] A_Reg_Bitwise, B_Reg_Bitwise;
reg [15:0] A_Reg_Shift, B_Reg_Shift;
reg Cin_Reg_Adder, Cin_Reg_Bitwise, Cin_Reg_Shift;
reg Cout_Reg_Adder, Cout_Reg_Bitwise;
reg Overflow_Reg_Adder, Overflow_Reg_Shift;
reg [1:0] Op_Reg_Adder;
reg [2:0] Op_Reg_Bitwise;
reg [2:0] Op_Reg_Shift;
reg [15:0] Fout_Reg; 

// Wires for Adder
wire [15:0] A_Wire_Adder, B_Wire_Adder, Fout_Wire_Adder;
wire [1:0] Op_Wire_Adder;
wire Cin_Wire_Adder, Cout_Wire_Adder, Overflow_Wire_Adder;

assign A_Wire_Adder = A_Reg_Adder;
assign B_Wire_Adder = B_Reg_Adder;
assign Cin_Wire_Adder = Cin_Reg_Adder;
assign Op_Wire_Adder = Op_Reg_Adder;

//Wires for Bitwise
wire [15:0] A_Wire_Bitwise, B_Wire_Bitwise, Fout_Wire_Bitwise;
wire [2:0] Op_Wire_Bitwise;

assign A_Wire_Bitwise = A_Reg_Bitwise;
assign B_Wire_Bitwise = B_Reg_Bitwise;
assign Op_Wire_Bitwise = Op_Reg_Bitwise;

// Wires for Shift
wire [15:0] A_Wire_Shift, Fout_Wire_Shift;
wire [2:0] Op_Wire_Shift;
wire Cin_Wire_Shift, Cout_Wire_Shift, Overflow_Wire_Shift;

assign A_Wire_Shift = A_Reg_Shift;
assign Cin_Wire_Shift = Cin_Reg_Shift;
assign Op_Wire_Shift = Op_Reg_Shift;

Adder A0(A_Wire_Adder, 
		 B_Wire_Adder, 
		 Cin_Wire_Adder, 
		 Op_Wire_Adder, 
		 Fout_Wire_Adder, 
		 Cout_Wire_Adder, 
		 Overflow_Wire_Adder);

Bitwise B0(A_Wire_Bitwise,
		   B_Wire_Bitwise,
		   Op_Wire_Bitwise,
		   Fout_Wire_Bitwise);

Shift S0(A_Wire_Shift,
		 Cin_Wire_Shift,
		 Op_Wire_Shift,
		 Fout_Wire_Shift,
		 Cout_Wire_Shift,
		 Overflow_Wire_Shift);

always @ (FSEL or ABUS or BBUS or CIN)
begin

	case(FSEL)

		4'b0000: begin  // Transfer ABUS
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = 16'h0000;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b000;
			// Output
			// Fout_Reg = ABUS;
		end

		4'b0001: begin	// Increment ABUS by 1
			// ALU
			A_Reg_Adder = ABUS;
			B_Reg_Adder = 16'h0001;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b01;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = 16'h0000;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b000;
			// Output
			// Fout_Reg = Fout_Wire_Adder;
		end

		4'b0010: begin	// Decrement ABUS by 1
			// ALU
			A_Reg_Adder = ABUS;
			B_Reg_Adder = 16'h0001;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b11;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = 16'h0000;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b000;
			// Output
			// Fout_Reg = Fout_Wire_Adder;
		end

		4'b0011: begin	// Add ABUS + BBUS + CIN
			// ALU
			A_Reg_Adder = ABUS;
			B_Reg_Adder = BBUS;
			Cin_Reg_Adder = CIN;
			Op_Reg_Adder = 2'b01;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = 16'h0000;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b000;
			// Output
			// Fout_Reg = Fout_Wire_Adder;
		end

		4'b0100: begin	// Subtract ABUS-BBUS-CIN
			// ALU
			A_Reg_Adder = ABUS;
			B_Reg_Adder = BBUS;
			Cin_Reg_Adder = CIN;
			Op_Reg_Adder = 2'b11;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = 16'h0000;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b000;
			// Output
			// Fout_Reg = Fout_Wire_Adder;
		end

		4'b0101: begin	// Bitwise ABUS AND BBUS
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = ABUS;
			B_Reg_Bitwise = BBUS;
			Op_Reg_Bitwise = 3'b001;
			// Shift
			A_Reg_Shift = 16'h0000;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b000;
			// Output
			// Fout_Reg = Fout_Wire_Bitwise;
		end

		4'b0110: begin	// Bitwise ABUS OR BBUS
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = ABUS;
			B_Reg_Bitwise = BBUS;
			Op_Reg_Bitwise = 3'b010;
			// Shift
			A_Reg_Shift = 16'h0000;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b000;
			// Output
			// Fout_Reg = Fout_Wire_Bitwise;
		end

		4'b0111: begin	// Bitwise ABUS XOR BBUS
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = ABUS;
			B_Reg_Bitwise = BBUS;
			Op_Reg_Bitwise = 3'b011;
			// Shift
			A_Reg_Shift = 16'h0000;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b000;
			// Output
			// Fout_Reg = Fout_Wire_Bitwise;
		end

		4'b1000: begin	// Bitwise NOT ABUS
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = ABUS;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b100;
			// Shift
			A_Reg_Shift = 16'h0000;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b000;
			// Output
			// Fout_Reg = Fout_Wire_Bitwise;
		end

		4'b1001: begin	// Shift ABUS left, C contains ABUS[15], FOUT[0] contains 0.
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = ABUS;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b001;
			// Output
			// Fout_Reg = Fout_Wire_Shift;
		end

		4'b1010: begin	// Shift ABUS right, C contains ABUS[0], FOUT[15] contains 0.
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = ABUS;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b010;
			// Output
			// Fout_Reg = Fout_Wire_Shift;
		end

		4'b1011: begin	// Arithmetic Shift A right, Bit C contains ABUS[0]
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = ABUS;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b011;
			// Output
			// Fout_Reg = Fout_Wire_Shift;
		end

		4'b1100: begin	// Rotate Left through Carry, FOUT[0] contains CIN, C contains ABUS[15]
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = ABUS;
			Cin_Reg_Shift = CIN;
			Op_Reg_Shift = 3'b100;
			// Output
			// Fout_Reg = Fout_Wire_Shift;
		end

		4'b1101: begin	// Rotate Right through Carry, FOUT[15] contains CIN, C contains ABUS[0]
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = ABUS;
			Cin_Reg_Shift = CIN;
			Op_Reg_Shift = 3'b101;
			// Output
			// Fout_Reg = Fout_Wire_Shift;
		end

		4'b1110: begin	// Reserved 1 (Can set FOUT = all 'X, or implement something custom.)
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = 16'h0000;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b000;
			// Output
			// Fout_Reg = 16'h0000;
		end

		4'b1110: begin	// Reserved 2 (Can set FOUT = all 'X, or implement something custom.)
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = 16'h0000;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b000;
			// Output
			// Fout_Reg = 16'h0000;
		end

		default: begin	// 'U', 'X', '-', etc.
			// ALU
			A_Reg_Adder = 16'h0000;
			B_Reg_Adder = 16'h0000;
			Cin_Reg_Adder = 0;
			Op_Reg_Adder = 2'b00;
			// Bitwise
			A_Reg_Bitwise = 16'h0000;
			B_Reg_Bitwise = 16'h0000;
			Op_Reg_Bitwise = 3'b000;
			// Shift
			A_Reg_Shift = 16'h0000;
			Cin_Reg_Shift = 0;
			Op_Reg_Shift = 3'b000;
			// Output
			// Fout_Reg = 16'h0000;
		end

	endcase

end

assign FOUT = (FSEL == 4'b0000) ? ABUS : 
		(((FSEL == 4'b0001) | (FSEL == 4'b0010) | (FSEL == 4'b0011) | (FSEL == 4'b0100)) ? Fout_Wire_Adder :
		 ((FSEL == 4'b0101) | (FSEL == 4'b0110) | (FSEL == 4'b0111) | (FSEL == 4'b1000)) ? Fout_Wire_Bitwise :
		 ((FSEL == 4'b1001) | (FSEL == 4'b1010) | (FSEL == 4'b1011) | (FSEL == 4'b1100) | (FSEL == 4'b1101)) ? Fout_Wire_Shift :
		 16'h0000);

assign C = Cout_Wire_Adder | Cout_Wire_Shift;

assign V = Overflow_Wire_Adder | Overflow_Wire_Shift;

assign Z = (((FSEL == 4'b0000) & (ABUS == 16'h0000)) |
		    (((FSEL == 4'b0001) | (FSEL == 4'b0010) | (FSEL == 4'b0011) | (FSEL == 4'b0100)) & (Fout_Wire_Adder == 16'h0000)) |
			(((FSEL == 4'b0101) | (FSEL == 4'b0110) | (FSEL == 4'b0111) | (FSEL == 4'b1000)) & (Fout_Wire_Bitwise == 16'h0000)) |
			(((FSEL == 4'b1001) | (FSEL == 4'b1010) | (FSEL == 4'b1011) | (FSEL == 4'b1100) | (FSEL == 4'b1101)) & (Fout_Wire_Shift == 16'h0000))) ? 1 : 0;

assign S = (FSEL == 4'b0000) ? ABUS[15] : 
		(((FSEL == 4'b0001) | (FSEL == 4'b0010) | (FSEL == 4'b0011) | (FSEL == 4'b0100)) ? Fout_Wire_Adder[15] :
		 ((FSEL == 4'b0101) | (FSEL == 4'b0110) | (FSEL == 4'b0111) | (FSEL == 4'b1000)) ? Fout_Wire_Bitwise[15] :
		 ((FSEL == 4'b1001) | (FSEL == 4'b1010) | (FSEL == 4'b1011) | (FSEL == 4'b1100) | (FSEL == 4'b1101)) ? Fout_Wire_Shift[15] :
		 0);

endmodule