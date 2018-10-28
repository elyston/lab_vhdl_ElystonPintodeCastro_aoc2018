entity AND_2 is port 
(
	a,b : in bit;
	s   : out bit
);
end AND_2;
architecture Porta_Logica_And	of AND_2 is 
begin
	s <= a and b;
end architecture;	