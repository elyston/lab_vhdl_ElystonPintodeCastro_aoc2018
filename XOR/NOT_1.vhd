entity NOT_1 is port 
(
	a : in bit;
	s   : out bit
);
end NOT_1;
architecture Porta_Logica_NOT	of NOT_1 is 
begin
	s <= not a;
end architecture;	