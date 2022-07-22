module ALU(ABUS, BBUS, FSEL, CIN, C, Z, S, V, FOUT);
input [15:0] ABUS, BBUS;
input [3:0] FSEL;
input CIN;
output C, Z, S, V;
output [15:0] FOUT;

// Output wire
wire [15:0] foutWire;

// Adder Wires
wire [15:0] aWire_Adder;
wire [15:0] bWire_Adder;
wire cinWire_Adder;
wire coutWire_Adder;
wire overflowWire_Adder;
wire [1:0] operationWire_Adder;
wire [15:0] foutWire_Adder;

// Bitwise Wires
wire [15:0] aWire_Bitwise;
wire [15:0] bWire_Bitwise;
wire [2:0] operationWire_Bitwise;
wire [15:0] foutWire_Bitwise;

// Shift Wires
wire [15:0] aWire_Shifts;
wire cinWire_Shifts;
wire coutWire_Shifts;
wire overflowWire_Shifts;
wire [2:0]operationWire_Shifts;
wire [15:0]foutWire_Shifts;

//////////////// Components /////////////////

Adder A1(foutWire_Adder,
	 coutWire_Adder,
	 overflowWire_Adder,
	 aWire_Adder,
	 bWire_Adder,
	 cinWire_Adder,
	 operationWire_Adder);

Bitwise B1(aWire_Bitwise,
	  bWire_Bitwise,
	  operationWire_Bitwise,
	  foutWire_Bitwise);

Shift S1(aWire_Shifts,
	 cinWire_Shifts,
	 coutWire_Shifts,
	 overflowWire_Shifts,
	 operationWire_Shifts,
	 foutWire_Shifts);

////////////// Function Select //////////////
always @ (*)
	begin
		case(FSEL)
		4'b0000:
			
		