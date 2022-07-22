//   regfile.vhd
//   Implementation of a register file.

module REGFILE(ASEL, BSEL, DSEL, RIN, DIN, ABUS, BBUS, CLK, RST);
input [2:0] ASEL, BSEL, DSEL;
input [15:0] RIN, DIN;
input CLK, RST;
output [15:0] ABUS, BBUS;

wire [15:0] REGS[7:1];

// Component declarations
REGISTER_ARRAY REG_ARRAY0(DSEL, RIN, CLK, RST, REGS);
MUX MUXA(DIN, REGS, ASEL, ABUS);
MUX MUXB(DIN, REGS, BSEL, BBUS);

endmodule
