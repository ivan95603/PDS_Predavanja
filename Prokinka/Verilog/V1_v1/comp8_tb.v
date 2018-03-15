module comp8_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire gt;
	wire lt;
	wire eq;

	// Instantiate the Unit Under Test (UUT)
	comp8 #(.DATA_WIDTH(8)) uut (
		.A(A), 
		.B(B), 
		.gt(gt), 
		.lt(lt), 
		.eq(eq)
	);

	initial begin
		// Initialize Inputs
    A = 8'b00000000;
    B = 8'b00000000;
    #20
    
	 A = 8'b10000000;
    B = 8'b00000000;
    #20 
	 
    A = 8'b00000000;
    B = 8'b10000000;
    #20
	 
    // Wait 100 ns for global reset to finish
    $finish;

	end
      
endmodule