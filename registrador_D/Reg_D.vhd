library ieee;
use ieee.std_logic_1164.all;

entity DReg IS Port 
(
	rst,Clk,ena : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
End DReg;

ARCHITECTURE synthesis1 OF DReg IS
BEGIN
	PROCESS(rst,clk)
	BEGIN
		IF(rst = '1') THEN
			q <= X"00";
		ELSIF (clk' EVENT) AND (clk = '1') THEN
			IF(ena = '1') THEN
				q <= d;
			END IF;
		END IF;	
	END PROCESS;
END synthesis1;	