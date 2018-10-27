library ieee;
use ieee.std_logic_1164.all;


Entity Mux_4 IS 
Port
(
	P1,P2,P3,P4,Ch0, Ch1 : IN BIT;
	S : OUT BIT
);
END Mux_4;

ARCHITECTURE circuito OF Mux_4 IS 
component AND_3 is port( 
	a,b,c : IN BIT;
	saida : OUT BIT);
end component;
component NOT_1 is port( 
	a : IN BIT;
	s : OUT BIT);
end component;
component OR_4 is port( 
	a,b,c,d : IN BIT;
	saida : OUT BIT);
end component;

signal X : bit_vector(7 downto 0);


BEGIN
	
		c1 : NOT_1 port map (Ch0, X(1));
		c2 : NOT_1 port map (Ch1, X(0));
	   c3 : AND_3 port map (X(1),X(0),P1,X(2));
	   c4 : AND_3 port map (Ch0, X(0), P2, X(3));
	   c5 : AND_3 port map (X(1), Ch1, P3, X(4));
		c6 : AND_3 port map (Ch0, Ch1, P4, X(5));
      c7 : OR_4  port map (X(2),X(3),X(4),X(5),S);		
END architecture;		
	