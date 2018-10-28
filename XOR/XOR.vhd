library ieee;
use ieee.std_logic_1164.all;

entity porta_XOR is port
(
	P1, P2 : in bit;
	saida : out bit
);
end porta_XOR;

architecture circuito_xor of porta_XOR is 
		component AND_2 is port 
		(
			a,b : in bit;
			s   : out bit
		);
		end component;
		component OR_2 is port 
		(
			a,b : in bit;
			s   : out bit
		);
		end component;
		component NOT_1 is port 
		(
			a : in bit;
			s   : out bit
		);
		end component;
		
		signal X: bit_vector(7 downto 0);
		
		begin
			E1 : AND_2 port map (P1,P2,X(1));
			E2 : OR_2  port map (P1,P2,X(0));
			E3 : NOT_1 port map (X(1),X(2));
			E4 : OR_2  port map (X(2),X(0),saida);
		end architecture;