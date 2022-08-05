/*
 * DO NOT EDIT THIS FILE, your changes will be overwritten
 * This is an automatically generated file.
 * It was generated with uasm, the microassembler, on
 * Fri Aug  5 08:35:06 2022
 */

/*
 * The assembly file generated a total data width of 44 bits for 
 * 9 fields. The maximum address encountered was 0x7ff, needing 
 * 11 bits
 */

module MICROCODE_ROM (ADDR_in,ROM_out);
   input  [10:0] ADDR_in;
   output [43:0] ROM_out;

   reg    [43:0] ROM_out_r;

   assign ROM_out = ROM_out_r;
   always @(ADDR_in)
     begin
        case(ADDR_in)
          /* START: */
          11'h0: ROM_out_r = 44'b000_000_001_0000_0000_0_0000_0000000101101101_100000;
          11'h1: ROM_out_r = 44'b000_000_010_0000_0000_0_0000_0000000000000001_100000;
          11'h2: ROM_out_r = 44'b000_000_011_0000_0000_0_0000_0000000000000010_100000;
          11'h3: ROM_out_r = 44'b000_000_100_0000_0000_0_0000_0000000000000011_100000;
          11'h4: ROM_out_r = 44'b000_000_101_0000_0000_0_0000_0000000000000100_100000;
          11'h5: ROM_out_r = 44'b000_000_111_0000_0000_0_0000_0000000000000000_100000;
          11'h6: ROM_out_r = 44'b000_000_110_0000_0000_0_0000_0000000011111111_100000;
          /* STACK_PUSH1: */
          11'h7: ROM_out_r = 44'b110_000_110_0010_0000_0_0000_0000000000000000_000100;
          11'h8: ROM_out_r = 44'b001_000_000_0000_0000_0_0000_0000000000000000_000010;
          /* STACK_PUSH2: */
          11'h9: ROM_out_r = 44'b000_000_001_0000_0000_0_0000_0000000101101110_100000;
          11'ha: ROM_out_r = 44'b110_000_110_0010_0000_0_0000_0000000000000000_000100;
          11'hb: ROM_out_r = 44'b001_000_000_0000_0000_0_0000_0000000000000000_000010;
          /* STACK_PUSH3: */
          11'hc: ROM_out_r = 44'b000_000_001_0000_0000_0_0000_0000000101101111_100000;
          11'hd: ROM_out_r = 44'b110_000_110_0010_0000_0_0000_0000000000000000_000100;
          11'he: ROM_out_r = 44'b001_000_000_0000_0000_0_0000_0000000000000000_000010;
          /* STACK_POP1: */
          11'hf: ROM_out_r = 44'b110_000_110_0001_0000_0_0000_0000000000000000_000000;
          11'h10: ROM_out_r = 44'b110_000_000_0000_0000_0_0000_0000000000000000_000100;
          11'h11: ROM_out_r = 44'b000_000_000_0000_0000_0_0000_0000000000000000_000001;
          11'h12: ROM_out_r = 44'b000_000_010_0000_0000_0_0000_0000000000000000_000001;
          /* STACK_POP2: */
          11'h13: ROM_out_r = 44'b110_000_110_0001_0000_0_0000_0000000000000000_000000;
          11'h14: ROM_out_r = 44'b110_000_000_0000_0000_0_0000_0000000000000000_000100;
          11'h15: ROM_out_r = 44'b000_000_000_0000_0000_0_0000_0000000000000000_000001;
          11'h16: ROM_out_r = 44'b000_000_010_0000_0000_0_0000_0000000000000000_000001;
          /* STACK_POP3: */
          11'h17: ROM_out_r = 44'b110_000_110_0001_0000_0_0000_0000000000000000_000000;
          11'h18: ROM_out_r = 44'b110_000_000_0000_0000_0_0000_0000000000000000_000100;
          11'h19: ROM_out_r = 44'b000_000_000_0000_0000_0_0000_0000000000000000_000001;
          11'h1a: ROM_out_r = 44'b000_000_010_0000_0000_0_0000_0000000000000000_000001;
          /* IDLE: */
          11'h1b: ROM_out_r = 44'b101_000_000_0000_0000_0_0001_0000000000011011_000000;
          11'h7ff: ROM_out_r = 44'b000_000_000_0000_0000_0_0000_0000000000000000_000000;
          default: ROM_out_r = 44'b0;
       endcase
     end
endmodule
