module regi (d, q, ena, clk, rst);
				
input ena, clk, rst;
input	[7:0]	d;
output reg [7:0]	q;


always @(negedge rst)
begin
	q <= 8'b00000000;
end

always @(posedge clk)
begin
	if(ena)
		q <= d;
end




endmodule				