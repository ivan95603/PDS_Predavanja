entity example1 is port (
a, b: in bit ;
c: out bit ) ;
end example1 ;

architecture rtl of example1 is
begin
c <= a and b ;
end rtl ;