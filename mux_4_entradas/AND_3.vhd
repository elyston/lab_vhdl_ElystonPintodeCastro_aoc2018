entity AND_3 is
port
(
	A,B,C : IN BIT;
	saida : OUT BIT
);
END AND_3;
architecture Default of AND_3 IS
BEGIN
	saida <= A and B and C ;
END Default;