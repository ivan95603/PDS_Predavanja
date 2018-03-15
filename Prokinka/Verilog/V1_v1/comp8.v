module comp8 #(parameter DATA_WIDTH = 8) (A,B,gt,lt,eq);
input [DATA_WIDTH-1:0] A,B;
output reg gt,lt,eq;

always @(A,B)
begin
	if(A>B)
	begin
	gt=1;
	eq=0;
	lt=0;
	end
	else if(A < B)
	begin
	gt=0;
	eq=0;
	lt=1;
	end
	else
	begin
	gt=0;
	eq=1;
	lt=0;
	end
end

endmodule