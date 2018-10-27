entity NOT_1 IS port
(
	a : IN bit;
	s : OUT bit
);
end NOT_1;
architecture Default of NOT_1 is 
begin
	s <= not a;
end Default;