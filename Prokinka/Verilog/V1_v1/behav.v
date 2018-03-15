/*ENTITY gates IS PORT
(
a, b, c, d : IN STD_LOGIC;
y : OUT STD_LOGIC;
va, vb : IN STD_LOGIC_VECTOR( 0 TO 3 );
vy : OUT STD_LOGIC_VECTOR( 0 TO 3 )
);
END gates;
ARCHITECTURE behav OF gates IS
SIGNAL ab, ncd : STD_LOGIC;
BEGIN
ab <= a AND b;
ncd <= NOT ( c AND d );
y <= ab OR ncd;
vy <= va AND vb;
END behav;
*/

module behav (a, b, c, d, y, va, vb, vy);

input a,b ,c, d;
output y;
input [0:3] va;
input [0:3] vb;
output [0:3] vy;

/*reg y;
reg [0:3] vy;	*/
	
wire ab, ncr;


assign ab = a & b;
assign ncd = !(c&d);
assign y = ab|ncd;
assign vy = va&vb;




endmodule