entity OR_2 is port 
(
	a,b : in bit;
	s   : out bit
);
end OR_2;
architecture Porta_Logica_OR	of OR_2 is 
begin
	s <= a or b;
end architecture;	