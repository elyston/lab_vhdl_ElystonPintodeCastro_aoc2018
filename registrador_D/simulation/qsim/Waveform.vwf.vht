-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/26/2018 16:47:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DReg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DReg_vhd_vec_tst IS
END DReg_vhd_vec_tst;
ARCHITECTURE DReg_arch OF DReg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ena : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT DReg
	PORT (
	Clk : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	ena : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DReg
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	d => d,
	ena => ena,
	q => q,
	rst => rst
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 10000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;
-- d[7]
t_prcs_d_7: PROCESS
BEGIN
	d(7) <= '0';
WAIT;
END PROCESS t_prcs_d_7;
-- d[6]
t_prcs_d_6: PROCESS
BEGIN
	d(6) <= '0';
WAIT;
END PROCESS t_prcs_d_6;
-- d[5]
t_prcs_d_5: PROCESS
BEGIN
	d(5) <= '0';
	WAIT FOR 960000 ps;
	d(5) <= '1';
WAIT;
END PROCESS t_prcs_d_5;
-- d[4]
t_prcs_d_4: PROCESS
BEGIN
	d(4) <= '0';
	WAIT FOR 480000 ps;
	d(4) <= '1';
	WAIT FOR 480000 ps;
	d(4) <= '0';
WAIT;
END PROCESS t_prcs_d_4;
-- d[3]
t_prcs_d_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		d(3) <= '0';
		WAIT FOR 240000 ps;
		d(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	d(3) <= '0';
WAIT;
END PROCESS t_prcs_d_3;
-- d[2]
t_prcs_d_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		d(2) <= '0';
		WAIT FOR 120000 ps;
		d(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	d(2) <= '0';
WAIT;
END PROCESS t_prcs_d_2;
-- d[1]
t_prcs_d_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		d(1) <= '0';
		WAIT FOR 60000 ps;
		d(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	d(1) <= '0';
WAIT;
END PROCESS t_prcs_d_1;
-- d[0]
t_prcs_d_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		d(0) <= '0';
		WAIT FOR 30000 ps;
		d(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	d(0) <= '0';
	WAIT FOR 30000 ps;
	d(0) <= '1';
WAIT;
END PROCESS t_prcs_d_0;

-- ena
t_prcs_ena: PROCESS
BEGIN
LOOP
	ena <= '0';
	WAIT FOR 25000 ps;
	ena <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ena;

-- rst
t_prcs_rst: PROCESS
BEGIN
LOOP
	rst <= '0';
	WAIT FOR 250000 ps;
	rst <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_rst;
END DReg_arch;
