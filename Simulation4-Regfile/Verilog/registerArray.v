// regfile.v
// Implementation of a register file.

module REGISTER_ARRAY(DSEL, RIN, CLK, RST, REGS);

input wire [2:0] DSEL;
input wire [15:0] RIN;
input wire CLK, RST;
output reg [15:0] REGS[7:1];

integer i;

initial begin
    for (i = 1; i < 8; i = i + 1) begin
        REGS[i] = 16'd0;
    end
end

always @(posedge CLK)
	begin
		if(RST == 1) begin
			if(DSEL != 000)
				REGS[DSEL] = RIN;
		end else begin
			for (i = 1; i < 8; i = i + 1) begin
       				REGS[i] = 16'd0;
    			end
		end
	end
endmodule