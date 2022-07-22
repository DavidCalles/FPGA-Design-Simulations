/* Register file testbench */
module test_regs;
   

   reg CLK;
   reg RST;
   
   initial CLK = 1'b0;

   /* Generate clock */
   always begin
      #1 CLK <= ~CLK;
   end

   /* Regs for driving signals into the register file */
   reg  [2:0] DSEL,ASEL,BSEL;
   reg  [15:0] DIN,RIN;
   wire [15:0] A,B;

   integer    Failures  = 0;
   integer    Passes    = 0;
   integer    TestCases = 0;
   integer    Mark;

   /* Instantiate DUT */
   REGFILE regfile1 (.DSEL(DSEL),
		     .ASEL(ASEL),
		     .BSEL(BSEL),
		     .DIN(DIN),
		     .RIN(RIN),
		     .ABUS(A),
		     .BBUS(B),
		     .CLK(CLK),
		     .RST(RST));
   

   /* Task to make driving the register file easier */
   task microop;
      input [2:0] ASEL_i;
      input [2:0] BSEL_i;
      input [2:0] DSEL_i;
      input [15:0] DIN_i;
      input [15:0] RIN_i;
      input [15:0] A_i;
      input [15:0] B_i;

      integer 	   SubFails;
      
      begin
	 SubFails = 0;
	 
	 ASEL = ASEL_i;
	 BSEL = BSEL_i;
	 DSEL = DSEL_i;
	 DIN  = DIN_i;
	 RIN  = RIN_i;
	 @(posedge CLK);  // Wait for clock
    #1;
	 /* Check outputs */
	 if(A_i !== A) begin
	    $display($time,":A Bus mismatch A:",A," Expected:",A_i);
	    SubFails = SubFails+1;
	 end
	 if(B_i !== B) begin
	    $display($time,":B Bus mismatch B:",B," Expected:",B_i);
	    SubFails = SubFails+1;
	 end
	 if(SubFails) begin
	    $display($time,":Failed Test case was:");
	    $display($time,":aluop(",
		     ASEL_i,",",
		     BSEL_i,",",
		     DSEL_i,",",
		     DIN_i,",",
		     RIN_i,",",
		     A_i,",",
		     B_i,")\n");
	    Failures = Failures+1;
	 end else begin
	    Passes = Passes + 1;
	 end
	 TestCases = TestCases + 1;
      end
   endtask
   

   /* Test bench driver for regfile */
   initial begin
      $dumpfile("test_regfile.vcd");
      $dumpvars();
      RST=1'b1;
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      RST=1'b0;
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      RST=1'b1;
      
      /* Check that reset worked... all registers should be '0' */
      microop(1,0,0,0,0,0,0);
      microop(2,0,0,0,0,0,0);
      microop(3,0,0,0,0,0,0);
      microop(4,0,0,0,0,0,0);
      microop(5,0,0,0,0,0,0);
      microop(6,0,0,0,0,0,0);
      microop(7,0,0,0,0,0,0);
      microop(0,1,0,0,0,0,0);
      microop(0,2,0,0,0,0,0);
      microop(0,3,0,0,0,0,0);
      microop(0,4,0,0,0,0,0);
      microop(0,5,0,0,0,0,0);
      microop(0,6,0,0,0,0,0);
      microop(0,7,0,0,0,0,0);

      /* Write some values into the registers */
      microop(0,0,1,0,1,0,0);
      microop(0,0,2,0,2,0,0);
      microop(0,0,3,0,3,0,0);
      microop(0,0,4,0,4,0,0);
      microop(0,0,5,0,5,0,0);
      microop(0,0,6,0,6,0,0);
      microop(0,0,7,0,7,0,0);

      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      /* Read back on A bus */
      microop(0,0,0,15,10,15,15);
      microop(1,0,0,0,10,1,0);
      microop(2,0,0,0,10,2,0);
      microop(3,0,0,0,10,3,0);
      microop(4,0,0,0,10,4,0);
      microop(5,0,0,0,10,5,0);
      microop(6,0,0,0,10,6,0);
      microop(7,0,0,0,10,7,0);

      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      /* Read back on B bus */
      microop(0,0,0,16,12,16,16);
      microop(0,1,0,0,10,0,1);
      microop(0,2,0,0,10,0,2);
      microop(0,3,0,0,10,0,3);
      microop(0,4,0,0,10,0,4);
      microop(0,5,0,0,10,0,5);
      microop(0,6,0,0,10,0,6);
      microop(0,7,0,0,10,0,7);

      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      /* Check that writing to and reading from the same register works */
      microop(1,1,1,0, 8, 8, 8);
      microop(1,1,1,0,15,15,15);
      microop(2,2,2,0, 9, 9, 9);
      microop(2,2,2,0,16,16,16);
      microop(3,3,3,0,10,10,10);
      microop(3,3,3,0,17,17,17);
      microop(4,4,4,0,11,11,11);
      microop(4,4,4,0,18,18,18);
      microop(5,5,5,0,12,12,12);
      microop(5,5,5,0,19,19,19);
      microop(6,6,6,0,13,13,13);
      microop(6,6,6,0,20,20,20);
      microop(7,7,7,0,14,14,14);
      microop(7,7,7,0,21,21,21);

      microop(0,0,0,0,0,0,0);
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock

      /* Apply a second reset, see if it works. */
      RST=1'b0;
      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      RST=1'b1;
      
      /* Check that reset worked... all registers should be '0' */
      microop(1,0,0,0,0,0,0);
      microop(2,0,0,0,0,0,0);
      microop(3,0,0,0,0,0,0);
      microop(4,0,0,0,0,0,0);
      microop(5,0,0,0,0,0,0);
      microop(6,0,0,0,0,0,0);
      microop(7,0,0,0,0,0,0);
      microop(0,1,0,0,0,0,0);
      microop(0,2,0,0,0,0,0);
      microop(0,3,0,0,0,0,0);
      microop(0,4,0,0,0,0,0);
      microop(0,5,0,0,0,0,0);
      microop(0,6,0,0,0,0,0);
      microop(0,7,0,0,0,0,0);

      @(posedge CLK);  // Wait for clock
      @(posedge CLK);  // Wait for clock
      
      $display("There were ",Passes," passed test cases out of ",TestCases);
      if(Failures) begin
	 $display("FAIL: There were ",Failures,
		  " failures during the run");
      end else begin
	 $display("PASS: All tests PASS");
      end

      Mark = $rtoi(70.0 + $itor(Passes)/$itor(TestCases) * 10.0 + 0.5);
      
      $display("Your mark will be: ", Mark);
      
      $finish();
   end
	 

   
endmodule

