


module decoder3to8_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire d0;
	wire d1;
	wire d2;
	wire d3;
	wire d4;
	wire d5;
	wire d6;
	wire d7;

	// Instantiate the Unit Under Test (UUT)
	decoder3to8 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6), 
		.d7(d7)
	);

	initial begin
		// Initialize Inputs
    a = 1'b0;
    b = 1'b0;
	 c = 1'b0;
    #20
        
    a = 1;
    b = 0;
    c = 1;
    #20
	 
    // Wait 100 ns for global reset to finish
    $finish;

	end
      
endmodule