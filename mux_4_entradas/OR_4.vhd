entity OR_4 is
port
(
	A,B,C,D : IN BIT;
	saida : OUT BIT
);
END OR_4;
ARCHITECTURE Default OF OR_4 IS
BEGIN
	saida <= A or B or C or D;
END Default;