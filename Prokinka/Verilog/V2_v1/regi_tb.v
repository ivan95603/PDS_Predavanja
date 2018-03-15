module regi_tb;

	// Inputs
	reg [7:0] d;
	reg ena, clk, rst;

	// Outputs
	wire [7:0] q;


	// Instantiate the Unit Under Test (UUT)
	regi uut (
		.d(d), 
		.q(q), 
		.ena(ena), 
		.clk(clk), 
		.rst(rst), 
	);

	initial begin
		// Initialize Inputs
    clk = 0; 
    rst = 1; 
    ena = 0; 
	 #20
	 rst = 0;
	 #20
	 rst = 1;
	 #20
	 
	 d = 8'b00000000;
    ena = 1'b1;
    #10
        
	 d = 8'b10100101;
    #10
	 
	 ena = 1'b0;
	 d = 8'b11110000;
    #10

	 
    // Wait 100 ns for global reset to finish
    $finish;

	end
	
	always 
   #5  clk =  ! clk; 
      
endmodule