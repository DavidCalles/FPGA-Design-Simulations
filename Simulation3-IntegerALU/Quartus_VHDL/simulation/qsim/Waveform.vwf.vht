-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/29/2022 14:11:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_vhd_vec_tst IS
END ALU_vhd_vec_tst;
ARCHITECTURE ALU_arch OF ALU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ABUS : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL BBUS : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL C : STD_LOGIC;
SIGNAL CIN : STD_LOGIC;
SIGNAL FOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL FSEL : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S : STD_LOGIC;
SIGNAL V : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT ALU
	PORT (
	ABUS : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	BBUS : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	C : BUFFER STD_LOGIC;
	CIN : IN STD_LOGIC;
	FOUT : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	FSEL : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	S : BUFFER STD_LOGIC;
	V : BUFFER STD_LOGIC;
	Z : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALU
	PORT MAP (
-- list connections between master ports and signals
	ABUS => ABUS,
	BBUS => BBUS,
	C => C,
	CIN => CIN,
	FOUT => FOUT,
	FSEL => FSEL,
	S => S,
	V => V,
	Z => Z
	);
-- ABUS[15]
t_prcs_ABUS_15: PROCESS
BEGIN
	ABUS(15) <= '0';
	WAIT FOR 90000 ps;
	ABUS(15) <= '1';
	WAIT FOR 30000 ps;
	ABUS(15) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_15;
-- ABUS[14]
t_prcs_ABUS_14: PROCESS
BEGIN
	ABUS(14) <= '0';
	WAIT FOR 30000 ps;
	ABUS(14) <= '1';
	WAIT FOR 30000 ps;
	ABUS(14) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_14;
-- ABUS[13]
t_prcs_ABUS_13: PROCESS
BEGIN
	ABUS(13) <= '0';
	WAIT FOR 30000 ps;
	ABUS(13) <= '1';
	WAIT FOR 60000 ps;
	ABUS(13) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_13;
-- ABUS[12]
t_prcs_ABUS_12: PROCESS
BEGIN
	ABUS(12) <= '0';
	WAIT FOR 30000 ps;
	ABUS(12) <= '1';
	WAIT FOR 60000 ps;
	ABUS(12) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_12;
-- ABUS[11]
t_prcs_ABUS_11: PROCESS
BEGIN
	ABUS(11) <= '0';
	WAIT FOR 30000 ps;
	ABUS(11) <= '1';
	WAIT FOR 60000 ps;
	ABUS(11) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_11;
-- ABUS[10]
t_prcs_ABUS_10: PROCESS
BEGIN
	ABUS(10) <= '0';
	WAIT FOR 60000 ps;
	ABUS(10) <= '1';
	WAIT FOR 30000 ps;
	ABUS(10) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_10;
-- ABUS[9]
t_prcs_ABUS_9: PROCESS
BEGIN
	ABUS(9) <= '0';
	WAIT FOR 60000 ps;
	ABUS(9) <= '1';
	WAIT FOR 30000 ps;
	ABUS(9) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_9;
-- ABUS[8]
t_prcs_ABUS_8: PROCESS
BEGIN
	ABUS(8) <= '0';
	WAIT FOR 60000 ps;
	ABUS(8) <= '1';
	WAIT FOR 30000 ps;
	ABUS(8) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_8;
-- ABUS[7]
t_prcs_ABUS_7: PROCESS
BEGIN
	ABUS(7) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_7;
-- ABUS[6]
t_prcs_ABUS_6: PROCESS
BEGIN
	ABUS(6) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_6;
-- ABUS[5]
t_prcs_ABUS_5: PROCESS
BEGIN
	ABUS(5) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_5;
-- ABUS[4]
t_prcs_ABUS_4: PROCESS
BEGIN
	ABUS(4) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_4;
-- ABUS[3]
t_prcs_ABUS_3: PROCESS
BEGIN
	ABUS(3) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_3;
-- ABUS[2]
t_prcs_ABUS_2: PROCESS
BEGIN
	ABUS(2) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_2;
-- ABUS[1]
t_prcs_ABUS_1: PROCESS
BEGIN
	ABUS(1) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_1;
-- ABUS[0]
t_prcs_ABUS_0: PROCESS
BEGIN
	ABUS(0) <= '0';
WAIT;
END PROCESS t_prcs_ABUS_0;
-- BBUS[15]
t_prcs_BBUS_15: PROCESS
BEGIN
	BBUS(15) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_15;
-- BBUS[14]
t_prcs_BBUS_14: PROCESS
BEGIN
	BBUS(14) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_14;
-- BBUS[13]
t_prcs_BBUS_13: PROCESS
BEGIN
	BBUS(13) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_13;
-- BBUS[12]
t_prcs_BBUS_12: PROCESS
BEGIN
	BBUS(12) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_12;
-- BBUS[11]
t_prcs_BBUS_11: PROCESS
BEGIN
	BBUS(11) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_11;
-- BBUS[10]
t_prcs_BBUS_10: PROCESS
BEGIN
	BBUS(10) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_10;
-- BBUS[9]
t_prcs_BBUS_9: PROCESS
BEGIN
	BBUS(9) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_9;
-- BBUS[8]
t_prcs_BBUS_8: PROCESS
BEGIN
	BBUS(8) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_8;
-- BBUS[7]
t_prcs_BBUS_7: PROCESS
BEGIN
	BBUS(7) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_7;
-- BBUS[6]
t_prcs_BBUS_6: PROCESS
BEGIN
	BBUS(6) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_6;
-- BBUS[5]
t_prcs_BBUS_5: PROCESS
BEGIN
	BBUS(5) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_5;
-- BBUS[4]
t_prcs_BBUS_4: PROCESS
BEGIN
	BBUS(4) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_4;
-- BBUS[3]
t_prcs_BBUS_3: PROCESS
BEGIN
	BBUS(3) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_3;
-- BBUS[2]
t_prcs_BBUS_2: PROCESS
BEGIN
	BBUS(2) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_2;
-- BBUS[1]
t_prcs_BBUS_1: PROCESS
BEGIN
	BBUS(1) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_1;
-- BBUS[0]
t_prcs_BBUS_0: PROCESS
BEGIN
	BBUS(0) <= '0';
WAIT;
END PROCESS t_prcs_BBUS_0;
-- FSEL[3]
t_prcs_FSEL_3: PROCESS
BEGIN
	FSEL(3) <= '0';
WAIT;
END PROCESS t_prcs_FSEL_3;
-- FSEL[2]
t_prcs_FSEL_2: PROCESS
BEGIN
	FSEL(2) <= '0';
WAIT;
END PROCESS t_prcs_FSEL_2;
-- FSEL[1]
t_prcs_FSEL_1: PROCESS
BEGIN
	FSEL(1) <= '0';
WAIT;
END PROCESS t_prcs_FSEL_1;
-- FSEL[0]
t_prcs_FSEL_0: PROCESS
BEGIN
	FSEL(0) <= '0';
WAIT;
END PROCESS t_prcs_FSEL_0;

-- CIN
t_prcs_CIN: PROCESS
BEGIN
	CIN <= '0';
WAIT;
END PROCESS t_prcs_CIN;
END ALU_arch;
