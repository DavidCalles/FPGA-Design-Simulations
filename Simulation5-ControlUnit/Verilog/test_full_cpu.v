/* test_cpu.v:
 *
 * CPU test bench
 * 
 */

module TEST_CPU_FULL();
   
  
   wire [15:0]     DATA_O;
   reg [15:0]     DATA_I;
   wire [15:0] 	ADDR;
   wire 	 RD, WR;

   reg 		 CLK,RST;
 		  
   initial CLK = 1'b0;

   integer    Failures  = 0;
   integer    Passes    = 0;
   integer    TestCases = 0;
   integer    Mark;
   
   /* Generate clock */
   always begin
      #1 CLK <= ~CLK;
   end

   /* Generate reset pulse */
   initial begin
      RST = 1'b1;
      #3 RST = 1'b0;
      #1 RST = 1'b1;
   end
  
   CPU CPU1 (
	     // Outputs
	     .DATA_O(DATA_O), .ADDR(ADDR), .RD(RD), .WR(WR),
	     // Inputs
	     .DATA_I(DATA_I), .CLK(CLK), .RST(RST)
	     );

   // RAM RAM1 (
	//      // Outputs
	//      .Q(DATA_I),
	//      // Inputs
	//      .DATA(DATA_O), .ADDRESS(ADDR[7:0]), .WREN(WR), .CLK(CLK)
	//      ) ;
   
   task cpuop;
      input [15:0] FOUT_i;
      input [10:0] EXT_ADRS;
      
      integer 	   SubFails;
      
      begin

      SubFails = 0;
      DATA_I = EXT_ADRS;
      
      #1;
      if(DATA_O !== FOUT_i) begin
	    SubFails = SubFails + 1;
	    $display($time,":FAIL: Mismatch on FOUT expected:", FOUT_i,
		     " got:",DATA_O);
      end
      if(SubFails) begin
         Failures = Failures+1;
         $display($time,":Failed test case was:");
               $display($time,":cpuop(",FOUT_i, ")\n");
      end else begin
         Passes = Passes + 1;
      end // else: !if(SubFails)
      TestCases = TestCases + 1;
      end
   endtask

   /* Test bench */
   initial begin
      
      $dumpfile("test_cpu.vcd");
      $dumpvars();

      RST = 1;
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      RST = 0;
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      RST = 1;
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      cpuop(32767, 0);
      @(posedge CLK);  // Wait for clock
      cpuop(1, 0);
      @(posedge CLK);  // Wait for clock
      cpuop(65535, 0);
      @(posedge CLK);  // Wait for clock
      cpuop(1, 0);
      @(posedge CLK);  // Wait for clock
      cpuop(200, 0);

      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      cpuop(100, 0);

      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      cpuop(101, 0);

      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      cpuop(102, 0);

      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      cpuop(103, 0);

      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      cpuop(104, 26);

      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      cpuop(105, 0);

      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      cpuop(200, 0);

      @(posedge CLK);  // Wait for clock
      
      $display("There were ",Passes," passed test cases out of ",TestCases);
	 if(Failures) begin
	    $display("FAIL: There were ",Failures,
		     " failures during the run");
	 end else begin
	    $display("PASS: All tests PASS");
	 end

	 Mark = 100;
	 
	 $display("Your mark will be: ", Mark);
 	 $finish;
   end
endmodule // TEST_CPU
