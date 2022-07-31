/* cpu.v:
 *
 * CPU implementation
 * 
 */

module CPU(/*AUTOARG*/
   // Outputs
   DATA_O, ADDR, RD, WR,
   // Inputs
   DATA_I, CLK, RST
   );
   input [15:0]  DATA_I;
   output [15:0] DATA_O;
   output [15:0] ADDR;
   output 	 RD;
   output 	 WR;
   
   input 	 CLK;
   input 	 RST;
 
   reg [15:0] 	 IR;
   reg [15:0] 	 MAR;
   reg [10:0] 	 CAR,CAR_next;
   wire [10:0] 	 EXT_ADRS;
   
   wire [15:0] 	 ABUS,BBUS,FOUT;
   wire 	 LDMAR,LDIR,RFMUX,DMUX;
	    
   /* Status flag registers, and wires */
   reg 		 Z,S,C,V;
   wire 	 ZOUT,SOUT,COUT,VOUT;
   wire          UPZ,UPS,UPC,UPV;
 	 
   
   /* Buffer address register, and data out signals */
   assign ADDR = MAR;
   assign DATA_O = FOUT;
   

   /* Instantiate microcode ROM */
   wire [43:0]  ROM_out;

   MICROCODE_ROM MICROCODE_ROM1(
      .ADDR_in(CAR),
      .ROM_out(ROM_out));

   wire [ 2:0]  ASEL;
   wire [ 2:0]  BSEL;
   wire [ 2:0]  DSEL;
   wire [ 3:0]  FSEL;
   wire [ 3:0]  UPDF;
   wire         MUX1;
   wire [ 3:0]  MUX2;
   wire [15:0]  DATA;
   wire [ 5:0]  MISC;

   assign                 ASEL = ROM_out[43:41];    // bit size:3
   assign                 BSEL = ROM_out[40:38];    // bit size:3
   assign                 DSEL = ROM_out[37:35];    // bit size:3
   assign                 FSEL = ROM_out[34:31];    // bit size:4
   assign                 UPDF = ROM_out[30:27];    // bit size:4
   assign                 MUX1 = ROM_out[26];       // bit size:1
   assign                 MUX2 = ROM_out[25:22];    // bit size:4
   assign                 DATA = ROM_out[21: 6];    // bit size:16
   assign                 MISC = ROM_out[ 5: 0];    // bit size:6

   /* Split out the MISC field */
   assign RD    = MISC[0];
   assign WR    = MISC[1];
   assign LDMAR = MISC[2];
   assign LDIR  = MISC[3];
   assign RFMUX = MISC[4];
   assign DMUX  = MISC[5];

   /* Split out Update Flags field */
   assign UPZ   = UPDF[3];
   assign UPS   = UPDF[2];
   assign UPC   = UPDF[1];
   assign UPV   = UPDF[0];
   
   /* Instantiate Register file */
   REGFILE REGFILE1(   // Outputs
		       .ABUS(ABUS),
		       .BBUS(BBUS),
		       // Inputs
		       .ASEL(RFMUX ? IR[8:6] : ASEL),
		       .BSEL(RFMUX ? IR[5:3] : BSEL),
		       .DSEL(RFMUX ? IR[2:0] : DSEL),
		       .DIN(DMUX ? DATA    : DATA_I),
		       .RIN(FOUT),
		       .CLK(CLK),
		       .RST(RST));
      
   /* Instantiate ALU */
   ALU ALU1(// Outputs
	    .FOUT(FOUT),
	    .C(COUT), .Z(ZOUT), .S(SOUT), .V(VOUT),
	    // Inputs
	    .ABUS(ABUS),
	    .BBUS(BBUS),
	    .FSEL(FSEL),
	    .CIN(C));

   /* ALU Flag updating */
   always @(posedge CLK or negedge RST)
     if(RST==1'b0) begin
	Z   <= 0;
	S   <= 0;
	C   <= 0;
	V   <= 0;
	MAR <= 0;
	IR  <= 0;
     end else begin
	if(UPZ) begin
	   Z <= ZOUT;
	end

	if(UPS) begin
	   S <= SOUT;
	end
	
	if(UPC) begin
	   C <= COUT;
	end
	
	if(UPV) begin
	   V <= VOUT;
	end

	if(LDMAR) begin
	   MAR <= ABUS;
	end

	if(LDIR) begin
	   IR <= DATA_I;
	end
     end

   /* Sequencer logic -- Implement your logic for CAR generation here */

   /* Muxes */
   assign EXT_ADRS = {1'b0, IR[15:9], 3'b000};

   /* Synchronous part */

   /* Asynchronous part */
   
endmodule
	 
