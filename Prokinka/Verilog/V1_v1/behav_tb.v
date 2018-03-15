module behav_tb();

 /* input wire a, b, c, d;
  output wire y;
  input wire [0:3] va;
  input wire [0:3] vb;
  output wire [0:3] vy;
 */
reg a,b ,c, d;
wire y;
reg [0:3] va;
reg [0:3] vb;
wire [0:3] vy; 

  behav DUT (
    .a(a),
    .b(b),
	 .c(c),
	 .d(d),
	 .y(y),
    .va(va),
	 .vb(vb),
	 .vy(vy)
  );

  initial begin
    a = 1'b0;
    b = 1'b0;
	 c = 1'b0;
    d = 1'b0;
	 va = 4'b0000;
	 vb = 4'b0000;
    #20
    a = 1'b1;
    b = 1'b1;
	 c = 1'b0;
    d = 1'b0;
	 va = 4'b0000;
	 vb = 4'b0000;
    #20
    a = 1'b1;
    b = 1'b1;
	 c = 1'b0;
    d = 1'b0;
	 va = 4'b1010;
	 vb = 4'b1111;
    #20
    $finish;
  end

endmodule