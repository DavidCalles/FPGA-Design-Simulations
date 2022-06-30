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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "06/29/2022 14:11:13"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	ABUS : IN std_logic_vector(15 DOWNTO 0);
	BBUS : IN std_logic_vector(15 DOWNTO 0);
	FSEL : IN std_logic_vector(3 DOWNTO 0);
	CIN : IN std_logic;
	C : BUFFER std_logic;
	Z : BUFFER std_logic;
	S : BUFFER std_logic;
	V : BUFFER std_logic;
	FOUT : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- C	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[6]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[8]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[9]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[10]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[11]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[13]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[14]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUT[15]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FSEL[0]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FSEL[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FSEL[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FSEL[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[15]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[14]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[13]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[12]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[11]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[9]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[8]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[7]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[6]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[1]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABUS[0]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[14]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[13]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[12]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[11]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[10]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[9]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[8]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BBUS[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ABUS : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_BBUS : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_FSEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CIN : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_FOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \FSEL[3]~input_o\ : std_logic;
SIGNAL \FSEL[2]~input_o\ : std_logic;
SIGNAL \FSEL[1]~input_o\ : std_logic;
SIGNAL \FSEL[0]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[15]~12_combout\ : std_logic;
SIGNAL \ABUS[14]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[14]~1_combout\ : std_logic;
SIGNAL \ABUS[15]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[15]~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \BBUS[15]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \BBUS[14]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \BBUS[13]~input_o\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \BBUS[12]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \BBUS[11]~input_o\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \BBUS[10]~input_o\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \BBUS[9]~input_o\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \BBUS[8]~input_o\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \BBUS[7]~input_o\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \BBUS[6]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \BBUS[5]~input_o\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \BBUS[4]~input_o\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \BBUS[3]~input_o\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \BBUS[2]~input_o\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \BBUS[1]~input_o\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \BBUS[0]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Adder0|Add0~62\ : std_logic;
SIGNAL \Adder0|Add0~58\ : std_logic;
SIGNAL \Adder0|Add0~54\ : std_logic;
SIGNAL \Adder0|Add0~50\ : std_logic;
SIGNAL \Adder0|Add0~46\ : std_logic;
SIGNAL \Adder0|Add0~42\ : std_logic;
SIGNAL \Adder0|Add0~38\ : std_logic;
SIGNAL \Adder0|Add0~34\ : std_logic;
SIGNAL \Adder0|Add0~30\ : std_logic;
SIGNAL \Adder0|Add0~26\ : std_logic;
SIGNAL \Adder0|Add0~22\ : std_logic;
SIGNAL \Adder0|Add0~18\ : std_logic;
SIGNAL \Adder0|Add0~14\ : std_logic;
SIGNAL \Adder0|Add0~10\ : std_logic;
SIGNAL \Adder0|Add0~6\ : std_logic;
SIGNAL \Adder0|Add0~1_sumout\ : std_logic;
SIGNAL \Adder0|Mux0~0_combout\ : std_logic;
SIGNAL \Adder0|Add0~5_sumout\ : std_logic;
SIGNAL \Adder0|Mux1~0_combout\ : std_logic;
SIGNAL \Adder0|Add0~9_sumout\ : std_logic;
SIGNAL \Adder0|Mux2~0_combout\ : std_logic;
SIGNAL \ABUS[12]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[12]~3_combout\ : std_logic;
SIGNAL \ABUS[13]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[13]~2_combout\ : std_logic;
SIGNAL \Adder0|Add0~25_sumout\ : std_logic;
SIGNAL \Adder0|Mux6~0_combout\ : std_logic;
SIGNAL \ABUS[9]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[9]~6_combout\ : std_logic;
SIGNAL \Adder0|Add0~21_sumout\ : std_logic;
SIGNAL \Adder0|Mux5~0_combout\ : std_logic;
SIGNAL \ABUS[10]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[10]~5_combout\ : std_logic;
SIGNAL \Adder0|Add0~17_sumout\ : std_logic;
SIGNAL \ABUS[11]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[11]~4_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:11:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \ABUS[7]~input_o\ : std_logic;
SIGNAL \Adder0|Add0~33_sumout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \ABUS[8]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[8]~7_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ : std_logic;
SIGNAL \Adder0|Add0~53_sumout\ : std_logic;
SIGNAL \Adder0|Add0~57_sumout\ : std_logic;
SIGNAL \ABUS[0]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[0]~8_combout\ : std_logic;
SIGNAL \Adder0|Add0~61_sumout\ : std_logic;
SIGNAL \ABUS[1]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[1]~9_combout\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \Adder0|cinSignal~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\ : std_logic;
SIGNAL \Adder0|Add0~49_sumout\ : std_logic;
SIGNAL \ABUS[3]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[3]~11_combout\ : std_logic;
SIGNAL \ABUS[2]~input_o\ : std_logic;
SIGNAL \Adder0|aSignal[2]~10_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~combout\ : std_logic;
SIGNAL \ABUS[6]~input_o\ : std_logic;
SIGNAL \Adder0|Add0~37_sumout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \ABUS[4]~input_o\ : std_logic;
SIGNAL \Adder0|Add0~45_sumout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \ABUS[5]~input_o\ : std_logic;
SIGNAL \Adder0|Add0~41_sumout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~1_combout\ : std_logic;
SIGNAL \Adder0|Add0~29_sumout\ : std_logic;
SIGNAL \Adder0|Mux7~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:8:fAdderX|cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~1_combout\ : std_logic;
SIGNAL \Adder0|Add0~13_sumout\ : std_logic;
SIGNAL \Adder0|Mux3~0_combout\ : std_logic;
SIGNAL \Adder0|Mux4~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\ : std_logic;
SIGNAL \Mux89~0_combout\ : std_logic;
SIGNAL \Mux86~0_combout\ : std_logic;
SIGNAL \Mux88~0_combout\ : std_logic;
SIGNAL \Mux85~0_combout\ : std_logic;
SIGNAL \Flags0|C~0_combout\ : std_logic;
SIGNAL \Flags0|C~1_combout\ : std_logic;
SIGNAL \Bitwise0|Mux0~0_combout\ : std_logic;
SIGNAL \Mux90~0_combout\ : std_logic;
SIGNAL \Mux90~1_combout\ : std_logic;
SIGNAL \Mux90~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux90~3_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:2:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~1_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~1_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~combout\ : std_logic;
SIGNAL \Mux91~6_combout\ : std_logic;
SIGNAL \Mux91~7_combout\ : std_logic;
SIGNAL \Mux98~0_combout\ : std_logic;
SIGNAL \Mux91~8_combout\ : std_logic;
SIGNAL \Mux91~0_combout\ : std_logic;
SIGNAL \Mux91~2_combout\ : std_logic;
SIGNAL \Mux92~0_combout\ : std_logic;
SIGNAL \Mux91~1_combout\ : std_logic;
SIGNAL \Mux92~1_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:13:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \Mux92~2_combout\ : std_logic;
SIGNAL \Adder0|fAdder15|sum~0_combout\ : std_logic;
SIGNAL \Adder0|fAdder0|cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~1_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:10:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:12:fAdderX|cout~combout\ : std_logic;
SIGNAL \Adder0|fAdder15|sum~combout\ : std_logic;
SIGNAL \Mux93~0_combout\ : std_logic;
SIGNAL \Mux93~1_combout\ : std_logic;
SIGNAL \Mux94~0_combout\ : std_logic;
SIGNAL \Mux94~1_combout\ : std_logic;
SIGNAL \Mux94~2_combout\ : std_logic;
SIGNAL \Mux79~0_combout\ : std_logic;
SIGNAL \Mux100~0_combout\ : std_logic;
SIGNAL \Mux100~1_combout\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \Mux100~2_combout\ : std_logic;
SIGNAL \Mux97~0_combout\ : std_logic;
SIGNAL \Mux97~1_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:8:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \Mux97~2_combout\ : std_logic;
SIGNAL \Mux77~0_combout\ : std_logic;
SIGNAL \Mux98~2_combout\ : std_logic;
SIGNAL \Mux98~1_combout\ : std_logic;
SIGNAL \Mux80~0_combout\ : std_logic;
SIGNAL \Mux99~0_combout\ : std_logic;
SIGNAL \Mux99~2_combout\ : std_logic;
SIGNAL \Mux99~1_combout\ : std_logic;
SIGNAL \Mux99~3_combout\ : std_logic;
SIGNAL \Mux99~4_combout\ : std_logic;
SIGNAL \Mux96~0_combout\ : std_logic;
SIGNAL \Mux96~1_combout\ : std_logic;
SIGNAL \Mux96~2_combout\ : std_logic;
SIGNAL \Mux103~1_combout\ : std_logic;
SIGNAL \Mux103~3_combout\ : std_logic;
SIGNAL \Mux103~2_combout\ : std_logic;
SIGNAL \Mux103~0_combout\ : std_logic;
SIGNAL \Mux103~4_combout\ : std_logic;
SIGNAL \Mux101~2_combout\ : std_logic;
SIGNAL \Mux105~6_combout\ : std_logic;
SIGNAL \Mux105~0_combout\ : std_logic;
SIGNAL \Mux105~1_combout\ : std_logic;
SIGNAL \Mux105~2_combout\ : std_logic;
SIGNAL \Mux83~0_combout\ : std_logic;
SIGNAL \Mux104~1_combout\ : std_logic;
SIGNAL \Mux104~0_combout\ : std_logic;
SIGNAL \Mux104~2_combout\ : std_logic;
SIGNAL \Flags0|Equal0~0_combout\ : std_logic;
SIGNAL \Mux102~0_combout\ : std_logic;
SIGNAL \Mux102~1_combout\ : std_logic;
SIGNAL \Mux102~2_combout\ : std_logic;
SIGNAL \Mux101~0_combout\ : std_logic;
SIGNAL \Mux101~1_combout\ : std_logic;
SIGNAL \Flags0|Equal0~1_combout\ : std_logic;
SIGNAL \Flags0|Equal0~2_combout\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \Mux95~1_combout\ : std_logic;
SIGNAL \Mux95~2_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~combout\ : std_logic;
SIGNAL \Flags0|Equal0~3_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:14:fAdderX|sum~0_combout\ : std_logic;
SIGNAL \Mux91~3_combout\ : std_logic;
SIGNAL \Mux91~4_combout\ : std_logic;
SIGNAL \Mux91~5_combout\ : std_logic;
SIGNAL \Flags0|Equal0~4_combout\ : std_logic;
SIGNAL \Mux90~4_combout\ : std_logic;
SIGNAL \Shifts0|Mux17~0_combout\ : std_logic;
SIGNAL \Flags0|V~combout\ : std_logic;
SIGNAL \Mux104~3_combout\ : std_logic;
SIGNAL \Mux101~3_combout\ : std_logic;
SIGNAL \Mux93~2_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:12:fAdderX|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:12:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux90~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux90~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux90~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux90~0_combout\ : std_logic;
SIGNAL \Bitwise0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux92~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:13:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:9:fAdderX|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:9:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:2:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:2:fAdderX|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:9:fAdderX|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux91~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux91~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux91~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux91~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux91~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux91~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux98~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:14:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \Adder0|fAdder15|ALT_INV_sum~combout\ : std_logic;
SIGNAL \Adder0|fAdder15|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:12:fAdderX|ALT_INV_cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:2:fAdderX|ALT_INV_cout~combout\ : std_logic;
SIGNAL \Adder0|fAdder0|ALT_INV_cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Flags0|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux86~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux89~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux85~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux88~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:13:fAdderX|ALT_INV_cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:8:fAdderX|ALT_INV_cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:1:fAdderX|ALT_INV_cout~combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[8]~7_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[9]~6_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[10]~5_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[11]~4_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[12]~3_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[13]~2_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[14]~1_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[15]~0_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux98~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux105~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux105~2_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Adder0|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_BBUS[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_BBUS[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_CIN~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_ABUS[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_FSEL[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_FSEL[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_FSEL[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FSEL[0]~input_o\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[15]~12_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[3]~11_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[2]~10_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[1]~9_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_aSignal[0]~8_combout\ : std_logic;
SIGNAL \Adder0|ALT_INV_cinSignal~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux91~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux91~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux91~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \Shifts0|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \Flags0|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \Flags0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \Flags0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \Flags0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux105~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux105~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux104~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux103~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux103~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux103~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux103~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux103~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux102~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux102~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux102~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux83~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux101~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux101~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux101~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux99~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux99~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux99~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux99~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux99~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux80~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux100~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux100~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux100~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux81~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux98~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux79~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux77~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux97~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux97~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux97~0_combout\ : std_logic;
SIGNAL \Adder0|GEN_FULL_ADDERS:8:fAdderX|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux96~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux96~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux96~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux95~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux95~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux95~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux94~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux94~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux94~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux93~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux93~0_combout\ : std_logic;

BEGIN

ww_ABUS <= ABUS;
ww_BBUS <= BBUS;
ww_FSEL <= FSEL;
ww_CIN <= CIN;
C <= ww_C;
Z <= ww_Z;
S <= ww_S;
V <= ww_V;
FOUT <= ww_FOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Adder0|GEN_FULL_ADDERS:12:fAdderX|ALT_INV_sum~combout\ <= NOT \Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~combout\;
\Adder0|GEN_FULL_ADDERS:12:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~0_combout\;
\ALT_INV_Mux90~3_combout\ <= NOT \Mux90~3_combout\;
\ALT_INV_Mux90~2_combout\ <= NOT \Mux90~2_combout\;
\ALT_INV_Mux90~1_combout\ <= NOT \Mux90~1_combout\;
\ALT_INV_Mux90~0_combout\ <= NOT \Mux90~0_combout\;
\Bitwise0|ALT_INV_Mux0~0_combout\ <= NOT \Bitwise0|Mux0~0_combout\;
\ALT_INV_Mux92~2_combout\ <= NOT \Mux92~2_combout\;
\ALT_INV_Mux92~1_combout\ <= NOT \Mux92~1_combout\;
\ALT_INV_Mux92~0_combout\ <= NOT \Mux92~0_combout\;
\Adder0|GEN_FULL_ADDERS:13:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:13:fAdderX|sum~0_combout\;
\Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_cout~combout\ <= NOT \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~combout\;
\Adder0|GEN_FULL_ADDERS:9:fAdderX|ALT_INV_cout~1_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~1_combout\;
\Adder0|GEN_FULL_ADDERS:9:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0_combout\;
\Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~combout\ <= NOT \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~combout\;
\Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_cout~1_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~1_combout\;
\Adder0|GEN_FULL_ADDERS:2:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:2:fAdderX|sum~0_combout\;
\Adder0|GEN_FULL_ADDERS:2:fAdderX|ALT_INV_cout~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0_combout\;
\Adder0|GEN_FULL_ADDERS:9:fAdderX|ALT_INV_cout~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~0_combout\;
\ALT_INV_Mux91~5_combout\ <= NOT \Mux91~5_combout\;
\ALT_INV_Mux91~4_combout\ <= NOT \Mux91~4_combout\;
\ALT_INV_Mux91~3_combout\ <= NOT \Mux91~3_combout\;
\ALT_INV_Mux91~2_combout\ <= NOT \Mux91~2_combout\;
\ALT_INV_Mux91~1_combout\ <= NOT \Mux91~1_combout\;
\ALT_INV_Mux91~0_combout\ <= NOT \Mux91~0_combout\;
\ALT_INV_Mux98~0_combout\ <= NOT \Mux98~0_combout\;
\Adder0|GEN_FULL_ADDERS:14:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:14:fAdderX|sum~0_combout\;
\Adder0|fAdder15|ALT_INV_sum~combout\ <= NOT \Adder0|fAdder15|sum~combout\;
\Adder0|fAdder15|ALT_INV_sum~0_combout\ <= NOT \Adder0|fAdder15|sum~0_combout\;
\Adder0|GEN_FULL_ADDERS:12:fAdderX|ALT_INV_cout~combout\ <= NOT \Adder0|GEN_FULL_ADDERS:12:fAdderX|cout~combout\;
\Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_cout~1_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\;
\Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:10:fAdderX|sum~0_combout\;
\Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_cout~combout\ <= NOT \Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~combout\;
\Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_cout~1_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~1_combout\;
\Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\;
\Adder0|GEN_FULL_ADDERS:2:fAdderX|ALT_INV_cout~combout\ <= NOT \Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~combout\;
\Adder0|fAdder0|ALT_INV_cout~combout\ <= NOT \Adder0|fAdder0|cout~combout\;
\Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_cout~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~0_combout\;
\Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_cout~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\;
\Flags0|ALT_INV_C~0_combout\ <= NOT \Flags0|C~0_combout\;
\ALT_INV_Mux86~0_combout\ <= NOT \Mux86~0_combout\;
\ALT_INV_Mux89~0_combout\ <= NOT \Mux89~0_combout\;
\ALT_INV_Mux85~0_combout\ <= NOT \Mux85~0_combout\;
\ALT_INV_Mux88~0_combout\ <= NOT \Mux88~0_combout\;
\Adder0|GEN_FULL_ADDERS:13:fAdderX|ALT_INV_cout~combout\ <= NOT \Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\;
\Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_cout~1_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~1_combout\;
\Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:11:fAdderX|sum~0_combout\;
\Adder0|GEN_FULL_ADDERS:8:fAdderX|ALT_INV_cout~combout\ <= NOT \Adder0|GEN_FULL_ADDERS:8:fAdderX|cout~combout\;
\Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\;
\Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~1_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~1_combout\;
\Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\;
\Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\;
\Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\;
\Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_cout~combout\ <= NOT \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~combout\;
\Adder0|GEN_FULL_ADDERS:1:fAdderX|ALT_INV_cout~combout\ <= NOT \Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\;
\Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_cout~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\;
\Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_cout~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\;
\Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\;
\Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_cout~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\;
\Adder0|ALT_INV_aSignal[8]~7_combout\ <= NOT \Adder0|aSignal[8]~7_combout\;
\Adder0|ALT_INV_Mux7~0_combout\ <= NOT \Adder0|Mux7~0_combout\;
\Adder0|ALT_INV_aSignal[9]~6_combout\ <= NOT \Adder0|aSignal[9]~6_combout\;
\Adder0|ALT_INV_Mux6~0_combout\ <= NOT \Adder0|Mux6~0_combout\;
\Adder0|ALT_INV_aSignal[10]~5_combout\ <= NOT \Adder0|aSignal[10]~5_combout\;
\Adder0|ALT_INV_Mux5~0_combout\ <= NOT \Adder0|Mux5~0_combout\;
\Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_cout~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~0_combout\;
\Adder0|ALT_INV_aSignal[11]~4_combout\ <= NOT \Adder0|aSignal[11]~4_combout\;
\Adder0|ALT_INV_Mux4~0_combout\ <= NOT \Adder0|Mux4~0_combout\;
\Adder0|ALT_INV_aSignal[12]~3_combout\ <= NOT \Adder0|aSignal[12]~3_combout\;
\Adder0|ALT_INV_Mux3~0_combout\ <= NOT \Adder0|Mux3~0_combout\;
\Adder0|ALT_INV_aSignal[13]~2_combout\ <= NOT \Adder0|aSignal[13]~2_combout\;
\Adder0|ALT_INV_Mux2~0_combout\ <= NOT \Adder0|Mux2~0_combout\;
\Adder0|ALT_INV_aSignal[14]~1_combout\ <= NOT \Adder0|aSignal[14]~1_combout\;
\Adder0|ALT_INV_Mux1~0_combout\ <= NOT \Adder0|Mux1~0_combout\;
\Adder0|ALT_INV_aSignal[15]~0_combout\ <= NOT \Adder0|aSignal[15]~0_combout\;
\Adder0|ALT_INV_Mux0~0_combout\ <= NOT \Adder0|Mux0~0_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux98~2_combout\ <= NOT \Mux98~2_combout\;
\ALT_INV_Mux105~6_combout\ <= NOT \Mux105~6_combout\;
\ALT_INV_Mux105~2_combout\ <= NOT \Mux105~2_combout\;
\Adder0|ALT_INV_Add0~61_sumout\ <= NOT \Adder0|Add0~61_sumout\;
\Adder0|ALT_INV_Add0~57_sumout\ <= NOT \Adder0|Add0~57_sumout\;
\Adder0|ALT_INV_Add0~53_sumout\ <= NOT \Adder0|Add0~53_sumout\;
\Adder0|ALT_INV_Add0~49_sumout\ <= NOT \Adder0|Add0~49_sumout\;
\Adder0|ALT_INV_Add0~45_sumout\ <= NOT \Adder0|Add0~45_sumout\;
\Adder0|ALT_INV_Add0~41_sumout\ <= NOT \Adder0|Add0~41_sumout\;
\Adder0|ALT_INV_Add0~37_sumout\ <= NOT \Adder0|Add0~37_sumout\;
\Adder0|ALT_INV_Add0~33_sumout\ <= NOT \Adder0|Add0~33_sumout\;
\Adder0|ALT_INV_Add0~29_sumout\ <= NOT \Adder0|Add0~29_sumout\;
\Adder0|ALT_INV_Add0~25_sumout\ <= NOT \Adder0|Add0~25_sumout\;
\Adder0|ALT_INV_Add0~21_sumout\ <= NOT \Adder0|Add0~21_sumout\;
\Adder0|ALT_INV_Add0~17_sumout\ <= NOT \Adder0|Add0~17_sumout\;
\Adder0|ALT_INV_Add0~13_sumout\ <= NOT \Adder0|Add0~13_sumout\;
\Adder0|ALT_INV_Add0~9_sumout\ <= NOT \Adder0|Add0~9_sumout\;
\Adder0|ALT_INV_Add0~5_sumout\ <= NOT \Adder0|Add0~5_sumout\;
\Adder0|ALT_INV_Add0~1_sumout\ <= NOT \Adder0|Add0~1_sumout\;
\ALT_INV_BBUS[1]~input_o\ <= NOT \BBUS[1]~input_o\;
\ALT_INV_BBUS[0]~input_o\ <= NOT \BBUS[0]~input_o\;
\ALT_INV_BBUS[2]~input_o\ <= NOT \BBUS[2]~input_o\;
\ALT_INV_BBUS[3]~input_o\ <= NOT \BBUS[3]~input_o\;
\ALT_INV_BBUS[4]~input_o\ <= NOT \BBUS[4]~input_o\;
\ALT_INV_BBUS[6]~input_o\ <= NOT \BBUS[6]~input_o\;
\ALT_INV_BBUS[5]~input_o\ <= NOT \BBUS[5]~input_o\;
\ALT_INV_BBUS[7]~input_o\ <= NOT \BBUS[7]~input_o\;
\ALT_INV_BBUS[8]~input_o\ <= NOT \BBUS[8]~input_o\;
\ALT_INV_BBUS[9]~input_o\ <= NOT \BBUS[9]~input_o\;
\ALT_INV_BBUS[10]~input_o\ <= NOT \BBUS[10]~input_o\;
\ALT_INV_BBUS[11]~input_o\ <= NOT \BBUS[11]~input_o\;
\ALT_INV_BBUS[12]~input_o\ <= NOT \BBUS[12]~input_o\;
\ALT_INV_BBUS[15]~input_o\ <= NOT \BBUS[15]~input_o\;
\ALT_INV_BBUS[13]~input_o\ <= NOT \BBUS[13]~input_o\;
\ALT_INV_BBUS[14]~input_o\ <= NOT \BBUS[14]~input_o\;
\ALT_INV_CIN~input_o\ <= NOT \CIN~input_o\;
\ALT_INV_ABUS[0]~input_o\ <= NOT \ABUS[0]~input_o\;
\ALT_INV_ABUS[1]~input_o\ <= NOT \ABUS[1]~input_o\;
\ALT_INV_ABUS[2]~input_o\ <= NOT \ABUS[2]~input_o\;
\ALT_INV_ABUS[3]~input_o\ <= NOT \ABUS[3]~input_o\;
\ALT_INV_ABUS[4]~input_o\ <= NOT \ABUS[4]~input_o\;
\ALT_INV_ABUS[5]~input_o\ <= NOT \ABUS[5]~input_o\;
\ALT_INV_ABUS[6]~input_o\ <= NOT \ABUS[6]~input_o\;
\ALT_INV_ABUS[7]~input_o\ <= NOT \ABUS[7]~input_o\;
\ALT_INV_ABUS[8]~input_o\ <= NOT \ABUS[8]~input_o\;
\ALT_INV_ABUS[9]~input_o\ <= NOT \ABUS[9]~input_o\;
\ALT_INV_ABUS[10]~input_o\ <= NOT \ABUS[10]~input_o\;
\ALT_INV_ABUS[11]~input_o\ <= NOT \ABUS[11]~input_o\;
\ALT_INV_ABUS[12]~input_o\ <= NOT \ABUS[12]~input_o\;
\ALT_INV_ABUS[13]~input_o\ <= NOT \ABUS[13]~input_o\;
\ALT_INV_ABUS[14]~input_o\ <= NOT \ABUS[14]~input_o\;
\ALT_INV_ABUS[15]~input_o\ <= NOT \ABUS[15]~input_o\;
\ALT_INV_FSEL[3]~input_o\ <= NOT \FSEL[3]~input_o\;
\ALT_INV_FSEL[2]~input_o\ <= NOT \FSEL[2]~input_o\;
\ALT_INV_FSEL[1]~input_o\ <= NOT \FSEL[1]~input_o\;
\ALT_INV_FSEL[0]~input_o\ <= NOT \FSEL[0]~input_o\;
\Adder0|ALT_INV_aSignal[15]~12_combout\ <= NOT \Adder0|aSignal[15]~12_combout\;
\Adder0|ALT_INV_aSignal[3]~11_combout\ <= NOT \Adder0|aSignal[3]~11_combout\;
\Adder0|ALT_INV_aSignal[2]~10_combout\ <= NOT \Adder0|aSignal[2]~10_combout\;
\Adder0|ALT_INV_aSignal[1]~9_combout\ <= NOT \Adder0|aSignal[1]~9_combout\;
\Adder0|ALT_INV_aSignal[0]~8_combout\ <= NOT \Adder0|aSignal[0]~8_combout\;
\Adder0|ALT_INV_cinSignal~0_combout\ <= NOT \Adder0|cinSignal~0_combout\;
\ALT_INV_Mux91~8_combout\ <= NOT \Mux91~8_combout\;
\ALT_INV_Mux91~7_combout\ <= NOT \Mux91~7_combout\;
\ALT_INV_Mux91~6_combout\ <= NOT \Mux91~6_combout\;
\ALT_INV_Mux31~2_combout\ <= NOT \Mux31~2_combout\;
\ALT_INV_Mux31~1_combout\ <= NOT \Mux31~1_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux33~0_combout\ <= NOT \Mux33~0_combout\;
\Shifts0|ALT_INV_Mux17~0_combout\ <= NOT \Shifts0|Mux17~0_combout\;
\Flags0|ALT_INV_Equal0~3_combout\ <= NOT \Flags0|Equal0~3_combout\;
\Flags0|ALT_INV_Equal0~2_combout\ <= NOT \Flags0|Equal0~2_combout\;
\Flags0|ALT_INV_Equal0~1_combout\ <= NOT \Flags0|Equal0~1_combout\;
\Flags0|ALT_INV_Equal0~0_combout\ <= NOT \Flags0|Equal0~0_combout\;
\ALT_INV_Mux104~2_combout\ <= NOT \Mux104~2_combout\;
\ALT_INV_Mux105~1_combout\ <= NOT \Mux105~1_combout\;
\ALT_INV_Mux105~0_combout\ <= NOT \Mux105~0_combout\;
\ALT_INV_Mux104~1_combout\ <= NOT \Mux104~1_combout\;
\ALT_INV_Mux104~0_combout\ <= NOT \Mux104~0_combout\;
\ALT_INV_Mux103~4_combout\ <= NOT \Mux103~4_combout\;
\ALT_INV_Mux103~3_combout\ <= NOT \Mux103~3_combout\;
\ALT_INV_Mux103~2_combout\ <= NOT \Mux103~2_combout\;
\ALT_INV_Mux103~1_combout\ <= NOT \Mux103~1_combout\;
\ALT_INV_Mux103~0_combout\ <= NOT \Mux103~0_combout\;
\ALT_INV_Mux102~2_combout\ <= NOT \Mux102~2_combout\;
\ALT_INV_Mux102~1_combout\ <= NOT \Mux102~1_combout\;
\ALT_INV_Mux102~0_combout\ <= NOT \Mux102~0_combout\;
\ALT_INV_Mux83~0_combout\ <= NOT \Mux83~0_combout\;
\ALT_INV_Mux101~2_combout\ <= NOT \Mux101~2_combout\;
\ALT_INV_Mux101~1_combout\ <= NOT \Mux101~1_combout\;
\ALT_INV_Mux101~0_combout\ <= NOT \Mux101~0_combout\;
\ALT_INV_Mux99~4_combout\ <= NOT \Mux99~4_combout\;
\ALT_INV_Mux99~3_combout\ <= NOT \Mux99~3_combout\;
\ALT_INV_Mux99~2_combout\ <= NOT \Mux99~2_combout\;
\ALT_INV_Mux99~1_combout\ <= NOT \Mux99~1_combout\;
\ALT_INV_Mux99~0_combout\ <= NOT \Mux99~0_combout\;
\ALT_INV_Mux80~0_combout\ <= NOT \Mux80~0_combout\;
\ALT_INV_Mux100~2_combout\ <= NOT \Mux100~2_combout\;
\ALT_INV_Mux100~1_combout\ <= NOT \Mux100~1_combout\;
\ALT_INV_Mux100~0_combout\ <= NOT \Mux100~0_combout\;
\ALT_INV_Mux81~0_combout\ <= NOT \Mux81~0_combout\;
\ALT_INV_Mux98~1_combout\ <= NOT \Mux98~1_combout\;
\ALT_INV_Mux79~0_combout\ <= NOT \Mux79~0_combout\;
\ALT_INV_Mux77~0_combout\ <= NOT \Mux77~0_combout\;
\ALT_INV_Mux97~2_combout\ <= NOT \Mux97~2_combout\;
\ALT_INV_Mux97~1_combout\ <= NOT \Mux97~1_combout\;
\ALT_INV_Mux97~0_combout\ <= NOT \Mux97~0_combout\;
\Adder0|GEN_FULL_ADDERS:8:fAdderX|ALT_INV_sum~0_combout\ <= NOT \Adder0|GEN_FULL_ADDERS:8:fAdderX|sum~0_combout\;
\ALT_INV_Mux96~2_combout\ <= NOT \Mux96~2_combout\;
\ALT_INV_Mux96~1_combout\ <= NOT \Mux96~1_combout\;
\ALT_INV_Mux96~0_combout\ <= NOT \Mux96~0_combout\;
\ALT_INV_Mux95~2_combout\ <= NOT \Mux95~2_combout\;
\ALT_INV_Mux95~1_combout\ <= NOT \Mux95~1_combout\;
\ALT_INV_Mux95~0_combout\ <= NOT \Mux95~0_combout\;
\ALT_INV_Mux94~2_combout\ <= NOT \Mux94~2_combout\;
\ALT_INV_Mux94~1_combout\ <= NOT \Mux94~1_combout\;
\ALT_INV_Mux94~0_combout\ <= NOT \Mux94~0_combout\;
\ALT_INV_Mux93~1_combout\ <= NOT \Mux93~1_combout\;
\ALT_INV_Mux93~0_combout\ <= NOT \Mux93~0_combout\;

-- Location: IOOBUF_X68_Y0_N2
\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags0|C~1_combout\,
	devoe => ww_devoe,
	o => ww_C);

-- Location: IOOBUF_X62_Y0_N19
\Z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags0|Equal0~4_combout\,
	devoe => ww_devoe,
	o => ww_Z);

-- Location: IOOBUF_X36_Y0_N36
\S~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux90~4_combout\,
	devoe => ww_devoe,
	o => ww_S);

-- Location: IOOBUF_X68_Y0_N19
\V~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags0|V~combout\,
	devoe => ww_devoe,
	o => ww_V);

-- Location: IOOBUF_X68_Y0_N36
\FOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux105~2_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(0));

-- Location: IOOBUF_X64_Y0_N53
\FOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux104~3_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(1));

-- Location: IOOBUF_X58_Y0_N42
\FOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux103~4_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(2));

-- Location: IOOBUF_X70_Y0_N19
\FOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux102~2_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(3));

-- Location: IOOBUF_X68_Y0_N53
\FOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux101~3_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(4));

-- Location: IOOBUF_X60_Y0_N19
\FOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux100~2_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(5));

-- Location: IOOBUF_X60_Y0_N2
\FOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux99~4_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(6));

-- Location: IOOBUF_X64_Y0_N36
\FOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux98~1_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(7));

-- Location: IOOBUF_X72_Y0_N19
\FOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux97~2_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(8));

-- Location: IOOBUF_X52_Y0_N2
\FOUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux96~2_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(9));

-- Location: IOOBUF_X56_Y0_N19
\FOUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux95~2_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(10));

-- Location: IOOBUF_X38_Y0_N53
\FOUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux94~2_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(11));

-- Location: IOOBUF_X52_Y0_N36
\FOUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux93~2_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(12));

-- Location: IOOBUF_X64_Y0_N19
\FOUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux92~2_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(13));

-- Location: IOOBUF_X72_Y0_N53
\FOUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux91~5_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(14));

-- Location: IOOBUF_X36_Y0_N19
\FOUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux90~4_combout\,
	devoe => ww_devoe,
	o => ww_FOUT(15));

-- Location: IOIBUF_X56_Y0_N1
\FSEL[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FSEL(3),
	o => \FSEL[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\FSEL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FSEL(2),
	o => \FSEL[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\FSEL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FSEL(1),
	o => \FSEL[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\FSEL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FSEL(0),
	o => \FSEL[0]~input_o\);

-- Location: LABCELL_X51_Y4_N30
\Adder0|aSignal[15]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[15]~12_combout\ = ( \FSEL[0]~input_o\ & ( (!\FSEL[3]~input_o\ & !\FSEL[2]~input_o\) ) ) # ( !\FSEL[0]~input_o\ & ( (!\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ $ (!\FSEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	dataf => \ALT_INV_FSEL[0]~input_o\,
	combout => \Adder0|aSignal[15]~12_combout\);

-- Location: IOIBUF_X62_Y0_N1
\ABUS[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(14),
	o => \ABUS[14]~input_o\);

-- Location: LABCELL_X57_Y4_N36
\Adder0|aSignal[14]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[14]~1_combout\ = ( \ABUS[14]~input_o\ & ( \Adder0|aSignal[15]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	dataf => \ALT_INV_ABUS[14]~input_o\,
	combout => \Adder0|aSignal[14]~1_combout\);

-- Location: IOIBUF_X66_Y0_N58
\ABUS[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(15),
	o => \ABUS[15]~input_o\);

-- Location: LABCELL_X57_Y4_N39
\Adder0|aSignal[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[15]~0_combout\ = ( \ABUS[15]~input_o\ & ( \Adder0|aSignal[15]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	dataf => \ALT_INV_ABUS[15]~input_o\,
	combout => \Adder0|aSignal[15]~0_combout\);

-- Location: LABCELL_X51_Y4_N33
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \FSEL[0]~input_o\ & ( (!\FSEL[3]~input_o\ & !\FSEL[2]~input_o\) ) ) # ( !\FSEL[0]~input_o\ & ( (!\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ $ (!\FSEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	dataf => \ALT_INV_FSEL[0]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LABCELL_X53_Y4_N30
\Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( \FSEL[2]~input_o\ & ( (!\FSEL[1]~input_o\ & (!\FSEL[3]~input_o\ & !\FSEL[0]~input_o\)) ) ) # ( !\FSEL[2]~input_o\ & ( (\FSEL[1]~input_o\ & (!\FSEL[3]~input_o\ & !\FSEL[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FSEL[1]~input_o\,
	datac => \ALT_INV_FSEL[3]~input_o\,
	datad => \ALT_INV_FSEL[0]~input_o\,
	dataf => \ALT_INV_FSEL[2]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LABCELL_X53_Y4_N33
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \FSEL[2]~input_o\ & ( (\FSEL[0]~input_o\) # (\FSEL[1]~input_o\) ) ) # ( !\FSEL[2]~input_o\ & ( !\FSEL[1]~input_o\ $ (!\FSEL[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_FSEL[0]~input_o\,
	dataf => \ALT_INV_FSEL[2]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\BBUS[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(15),
	o => \BBUS[15]~input_o\);

-- Location: LABCELL_X51_Y4_N9
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( !\FSEL[3]~input_o\ & ( (\BBUS[15]~input_o\ & ((\FSEL[2]~input_o\) # (\FSEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FSEL[1]~input_o\,
	datac => \ALT_INV_FSEL[2]~input_o\,
	datad => \ALT_INV_BBUS[15]~input_o\,
	dataf => \ALT_INV_FSEL[3]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: IOIBUF_X66_Y0_N41
\BBUS[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(14),
	o => \BBUS[14]~input_o\);

-- Location: LABCELL_X53_Y4_N6
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \BBUS[14]~input_o\ & ( (!\FSEL[3]~input_o\ & ((\FSEL[1]~input_o\) # (\FSEL[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datad => \ALT_INV_FSEL[1]~input_o\,
	dataf => \ALT_INV_BBUS[14]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: IOIBUF_X40_Y0_N52
\BBUS[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(13),
	o => \BBUS[13]~input_o\);

-- Location: LABCELL_X53_Y4_N12
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \FSEL[2]~input_o\ & ( (!\FSEL[3]~input_o\ & \BBUS[13]~input_o\) ) ) # ( !\FSEL[2]~input_o\ & ( (!\FSEL[3]~input_o\ & (\FSEL[1]~input_o\ & \BBUS[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[1]~input_o\,
	datac => \ALT_INV_BBUS[13]~input_o\,
	dataf => \ALT_INV_FSEL[2]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: IOIBUF_X38_Y0_N1
\BBUS[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(12),
	o => \BBUS[12]~input_o\);

-- Location: LABCELL_X53_Y4_N9
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \BBUS[12]~input_o\ & ( (!\FSEL[3]~input_o\ & ((\FSEL[1]~input_o\) # (\FSEL[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	dataf => \ALT_INV_BBUS[12]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: IOIBUF_X52_Y0_N52
\BBUS[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(11),
	o => \BBUS[11]~input_o\);

-- Location: LABCELL_X53_Y4_N42
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \FSEL[2]~input_o\ & ( (!\FSEL[3]~input_o\ & \BBUS[11]~input_o\) ) ) # ( !\FSEL[2]~input_o\ & ( (!\FSEL[3]~input_o\ & (\FSEL[1]~input_o\ & \BBUS[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_BBUS[11]~input_o\,
	dataf => \ALT_INV_FSEL[2]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: IOIBUF_X40_Y0_N35
\BBUS[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(10),
	o => \BBUS[10]~input_o\);

-- Location: LABCELL_X51_Y4_N15
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \FSEL[1]~input_o\ & ( (!\FSEL[3]~input_o\ & \BBUS[10]~input_o\) ) ) # ( !\FSEL[1]~input_o\ & ( (!\FSEL[3]~input_o\ & (\FSEL[2]~input_o\ & \BBUS[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_BBUS[10]~input_o\,
	dataf => \ALT_INV_FSEL[1]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: IOIBUF_X66_Y0_N92
\BBUS[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(9),
	o => \BBUS[9]~input_o\);

-- Location: LABCELL_X53_Y4_N15
\Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( \FSEL[2]~input_o\ & ( (!\FSEL[3]~input_o\ & \BBUS[9]~input_o\) ) ) # ( !\FSEL[2]~input_o\ & ( (!\FSEL[3]~input_o\ & (\FSEL[1]~input_o\ & \BBUS[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_BBUS[9]~input_o\,
	dataf => \ALT_INV_FSEL[2]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: IOIBUF_X40_Y0_N1
\BBUS[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(8),
	o => \BBUS[8]~input_o\);

-- Location: LABCELL_X51_Y4_N18
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \FSEL[1]~input_o\ & ( (!\FSEL[3]~input_o\ & \BBUS[8]~input_o\) ) ) # ( !\FSEL[1]~input_o\ & ( (!\FSEL[3]~input_o\ & (\FSEL[2]~input_o\ & \BBUS[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_BBUS[8]~input_o\,
	dataf => \ALT_INV_FSEL[1]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: IOIBUF_X54_Y0_N18
\BBUS[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(7),
	o => \BBUS[7]~input_o\);

-- Location: LABCELL_X53_Y4_N48
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \FSEL[2]~input_o\ & ( (!\FSEL[3]~input_o\ & \BBUS[7]~input_o\) ) ) # ( !\FSEL[2]~input_o\ & ( (!\FSEL[3]~input_o\ & (\FSEL[1]~input_o\ & \BBUS[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_BBUS[7]~input_o\,
	dataf => \ALT_INV_FSEL[2]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: IOIBUF_X72_Y0_N35
\BBUS[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(6),
	o => \BBUS[6]~input_o\);

-- Location: LABCELL_X51_Y4_N21
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \FSEL[1]~input_o\ & ( (!\FSEL[3]~input_o\ & \BBUS[6]~input_o\) ) ) # ( !\FSEL[1]~input_o\ & ( (!\FSEL[3]~input_o\ & (\FSEL[2]~input_o\ & \BBUS[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datad => \ALT_INV_BBUS[6]~input_o\,
	dataf => \ALT_INV_FSEL[1]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: IOIBUF_X56_Y0_N52
\BBUS[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(5),
	o => \BBUS[5]~input_o\);

-- Location: LABCELL_X51_Y4_N54
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \BBUS[5]~input_o\ & ( \FSEL[1]~input_o\ & ( !\FSEL[3]~input_o\ ) ) ) # ( \BBUS[5]~input_o\ & ( !\FSEL[1]~input_o\ & ( (\FSEL[2]~input_o\ & !\FSEL[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[3]~input_o\,
	datae => \ALT_INV_BBUS[5]~input_o\,
	dataf => \ALT_INV_FSEL[1]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: IOIBUF_X60_Y0_N52
\BBUS[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(4),
	o => \BBUS[4]~input_o\);

-- Location: LABCELL_X57_Y3_N48
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\FSEL[3]~input_o\ & (\BBUS[4]~input_o\ & ((\FSEL[1]~input_o\) # (\FSEL[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_BBUS[4]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: IOIBUF_X58_Y0_N75
\BBUS[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(3),
	o => \BBUS[3]~input_o\);

-- Location: LABCELL_X53_Y4_N51
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \BBUS[3]~input_o\ & ( (!\FSEL[3]~input_o\ & ((\FSEL[2]~input_o\) # (\FSEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_FSEL[2]~input_o\,
	dataf => \ALT_INV_BBUS[3]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: IOIBUF_X70_Y0_N1
\BBUS[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(2),
	o => \BBUS[2]~input_o\);

-- Location: LABCELL_X53_Y4_N24
\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \BBUS[2]~input_o\ & ( (!\FSEL[3]~input_o\ & ((\FSEL[1]~input_o\) # (\FSEL[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datad => \ALT_INV_FSEL[1]~input_o\,
	dataf => \ALT_INV_BBUS[2]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: IOIBUF_X60_Y0_N35
\BBUS[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(1),
	o => \BBUS[1]~input_o\);

-- Location: LABCELL_X53_Y4_N27
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!\FSEL[3]~input_o\ & (\BBUS[1]~input_o\ & ((\FSEL[1]~input_o\) # (\FSEL[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000000010101000000000001010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_BBUS[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LABCELL_X51_Y4_N12
\Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\FSEL[2]~input_o\) # (\FSEL[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: IOIBUF_X62_Y0_N35
\BBUS[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BBUS(0),
	o => \BBUS[0]~input_o\);

-- Location: LABCELL_X57_Y2_N6
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \BBUS[0]~input_o\ & ( (!\FSEL[3]~input_o\ & (!\FSEL[1]~input_o\ $ (!\FSEL[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_FSEL[3]~input_o\,
	datac => \ALT_INV_FSEL[2]~input_o\,
	dataf => \ALT_INV_BBUS[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LABCELL_X51_Y4_N6
\Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = ( \FSEL[0]~input_o\ & ( !\FSEL[1]~input_o\ ) ) # ( !\FSEL[0]~input_o\ & ( \FSEL[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FSEL[1]~input_o\,
	dataf => \ALT_INV_FSEL[0]~input_o\,
	combout => \Mux31~2_combout\);

-- Location: MLABCELL_X52_Y4_N0
\Adder0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~61_sumout\ = SUM(( !\Mux33~0_combout\ $ (((!\Mux31~2_combout\ & ((!\Mux31~0_combout\))) # (\Mux31~2_combout\ & (\Mux31~1_combout\)))) ) + ( \Mux33~0_combout\ ) + ( !VCC ))
-- \Adder0|Add0~62\ = CARRY(( !\Mux33~0_combout\ $ (((!\Mux31~2_combout\ & ((!\Mux31~0_combout\))) # (\Mux31~2_combout\ & (\Mux31~1_combout\)))) ) + ( \Mux33~0_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000101101010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux31~1_combout\,
	datac => \ALT_INV_Mux31~0_combout\,
	datad => \ALT_INV_Mux31~2_combout\,
	cin => GND,
	sumout => \Adder0|Add0~61_sumout\,
	cout => \Adder0|Add0~62\);

-- Location: MLABCELL_X52_Y4_N3
\Adder0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~57_sumout\ = SUM(( !\Mux33~0_combout\ $ (((!\Mux30~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~62\ ))
-- \Adder0|Add0~58\ = CARRY(( !\Mux33~0_combout\ $ (((!\Mux30~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datac => \ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_Mux30~0_combout\,
	cin => \Adder0|Add0~62\,
	sumout => \Adder0|Add0~57_sumout\,
	cout => \Adder0|Add0~58\);

-- Location: MLABCELL_X52_Y4_N6
\Adder0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~53_sumout\ = SUM(( !\Mux33~0_combout\ $ (((!\Mux29~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~58\ ))
-- \Adder0|Add0~54\ = CARRY(( !\Mux33~0_combout\ $ (((!\Mux29~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	datac => \ALT_INV_Mux29~0_combout\,
	cin => \Adder0|Add0~58\,
	sumout => \Adder0|Add0~53_sumout\,
	cout => \Adder0|Add0~54\);

-- Location: MLABCELL_X52_Y4_N9
\Adder0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~49_sumout\ = SUM(( GND ) + ( !\Mux33~0_combout\ $ (((!\Mux28~0_combout\) # (\Mux22~0_combout\))) ) + ( \Adder0|Add0~54\ ))
-- \Adder0|Add0~50\ = CARRY(( GND ) + ( !\Mux33~0_combout\ $ (((!\Mux28~0_combout\) # (\Mux22~0_combout\))) ) + ( \Adder0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	dataf => \ALT_INV_Mux28~0_combout\,
	cin => \Adder0|Add0~54\,
	sumout => \Adder0|Add0~49_sumout\,
	cout => \Adder0|Add0~50\);

-- Location: MLABCELL_X52_Y4_N12
\Adder0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~45_sumout\ = SUM(( !\Mux33~0_combout\ $ (((!\Mux27~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~50\ ))
-- \Adder0|Add0~46\ = CARRY(( !\Mux33~0_combout\ $ (((!\Mux27~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	datac => \ALT_INV_Mux27~0_combout\,
	cin => \Adder0|Add0~50\,
	sumout => \Adder0|Add0~45_sumout\,
	cout => \Adder0|Add0~46\);

-- Location: MLABCELL_X52_Y4_N15
\Adder0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~41_sumout\ = SUM(( GND ) + ( !\Mux33~0_combout\ $ (((!\Mux26~0_combout\) # (\Mux22~0_combout\))) ) + ( \Adder0|Add0~46\ ))
-- \Adder0|Add0~42\ = CARRY(( GND ) + ( !\Mux33~0_combout\ $ (((!\Mux26~0_combout\) # (\Mux22~0_combout\))) ) + ( \Adder0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	dataf => \ALT_INV_Mux26~0_combout\,
	cin => \Adder0|Add0~46\,
	sumout => \Adder0|Add0~41_sumout\,
	cout => \Adder0|Add0~42\);

-- Location: MLABCELL_X52_Y4_N18
\Adder0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~37_sumout\ = SUM(( !\Mux33~0_combout\ $ (((!\Mux25~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~42\ ))
-- \Adder0|Add0~38\ = CARRY(( !\Mux33~0_combout\ $ (((!\Mux25~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_Mux25~0_combout\,
	cin => \Adder0|Add0~42\,
	sumout => \Adder0|Add0~37_sumout\,
	cout => \Adder0|Add0~38\);

-- Location: MLABCELL_X52_Y4_N21
\Adder0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~33_sumout\ = SUM(( !\Mux33~0_combout\ $ (((!\Mux24~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~38\ ))
-- \Adder0|Add0~34\ = CARRY(( !\Mux33~0_combout\ $ (((!\Mux24~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	datac => \ALT_INV_Mux24~0_combout\,
	cin => \Adder0|Add0~38\,
	sumout => \Adder0|Add0~33_sumout\,
	cout => \Adder0|Add0~34\);

-- Location: MLABCELL_X52_Y4_N24
\Adder0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~29_sumout\ = SUM(( GND ) + ( !\Mux33~0_combout\ $ (((!\Mux23~0_combout\) # (\Mux22~0_combout\))) ) + ( \Adder0|Add0~34\ ))
-- \Adder0|Add0~30\ = CARRY(( GND ) + ( !\Mux33~0_combout\ $ (((!\Mux23~0_combout\) # (\Mux22~0_combout\))) ) + ( \Adder0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	dataf => \ALT_INV_Mux23~0_combout\,
	cin => \Adder0|Add0~34\,
	sumout => \Adder0|Add0~29_sumout\,
	cout => \Adder0|Add0~30\);

-- Location: MLABCELL_X52_Y4_N27
\Adder0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~25_sumout\ = SUM(( !\Mux33~0_combout\ $ (((!\Mux22~1_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~30\ ))
-- \Adder0|Add0~26\ = CARRY(( !\Mux33~0_combout\ $ (((!\Mux22~1_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_Mux22~1_combout\,
	cin => \Adder0|Add0~30\,
	sumout => \Adder0|Add0~25_sumout\,
	cout => \Adder0|Add0~26\);

-- Location: MLABCELL_X52_Y4_N30
\Adder0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~21_sumout\ = SUM(( GND ) + ( !\Mux33~0_combout\ $ (((!\Mux21~0_combout\) # (\Mux22~0_combout\))) ) + ( \Adder0|Add0~26\ ))
-- \Adder0|Add0~22\ = CARRY(( GND ) + ( !\Mux33~0_combout\ $ (((!\Mux21~0_combout\) # (\Mux22~0_combout\))) ) + ( \Adder0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100110011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	dataf => \ALT_INV_Mux21~0_combout\,
	cin => \Adder0|Add0~26\,
	sumout => \Adder0|Add0~21_sumout\,
	cout => \Adder0|Add0~22\);

-- Location: MLABCELL_X52_Y4_N33
\Adder0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~17_sumout\ = SUM(( !\Mux33~0_combout\ $ (((!\Mux20~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~22\ ))
-- \Adder0|Add0~18\ = CARRY(( !\Mux33~0_combout\ $ (((!\Mux20~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	datac => \ALT_INV_Mux20~0_combout\,
	cin => \Adder0|Add0~22\,
	sumout => \Adder0|Add0~17_sumout\,
	cout => \Adder0|Add0~18\);

-- Location: MLABCELL_X52_Y4_N36
\Adder0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~13_sumout\ = SUM(( !\Mux33~0_combout\ $ (((!\Mux19~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~18\ ))
-- \Adder0|Add0~14\ = CARRY(( !\Mux33~0_combout\ $ (((!\Mux19~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_Mux19~0_combout\,
	cin => \Adder0|Add0~18\,
	sumout => \Adder0|Add0~13_sumout\,
	cout => \Adder0|Add0~14\);

-- Location: MLABCELL_X52_Y4_N39
\Adder0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~9_sumout\ = SUM(( !\Mux33~0_combout\ $ (((!\Mux18~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~14\ ))
-- \Adder0|Add0~10\ = CARRY(( !\Mux33~0_combout\ $ (((!\Mux18~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	datac => \ALT_INV_Mux18~0_combout\,
	cin => \Adder0|Add0~14\,
	sumout => \Adder0|Add0~9_sumout\,
	cout => \Adder0|Add0~10\);

-- Location: MLABCELL_X52_Y4_N42
\Adder0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~5_sumout\ = SUM(( !\Mux33~0_combout\ $ (((!\Mux17~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~10\ ))
-- \Adder0|Add0~6\ = CARRY(( !\Mux33~0_combout\ $ (((!\Mux17~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_Mux17~0_combout\,
	cin => \Adder0|Add0~10\,
	sumout => \Adder0|Add0~5_sumout\,
	cout => \Adder0|Add0~6\);

-- Location: MLABCELL_X52_Y4_N45
\Adder0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Add0~1_sumout\ = SUM(( !\Mux33~0_combout\ $ (((!\Mux16~0_combout\) # (\Mux22~0_combout\))) ) + ( GND ) + ( \Adder0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datab => \ALT_INV_Mux22~0_combout\,
	datac => \ALT_INV_Mux16~0_combout\,
	cin => \Adder0|Add0~6\,
	sumout => \Adder0|Add0~1_sumout\);

-- Location: LABCELL_X57_Y4_N33
\Adder0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Mux0~0_combout\ = ( \Adder0|Add0~1_sumout\ & ( \Mux34~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux34~0_combout\,
	dataf => \Adder0|ALT_INV_Add0~1_sumout\,
	combout => \Adder0|Mux0~0_combout\);

-- Location: LABCELL_X57_Y4_N15
\Adder0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Mux1~0_combout\ = ( \Adder0|Add0~5_sumout\ & ( \Mux34~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux34~0_combout\,
	dataf => \Adder0|ALT_INV_Add0~5_sumout\,
	combout => \Adder0|Mux1~0_combout\);

-- Location: LABCELL_X56_Y3_N3
\Adder0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Mux2~0_combout\ = ( \Adder0|Add0~9_sumout\ & ( \Mux34~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux34~0_combout\,
	dataf => \Adder0|ALT_INV_Add0~9_sumout\,
	combout => \Adder0|Mux2~0_combout\);

-- Location: IOIBUF_X54_Y0_N35
\ABUS[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(12),
	o => \ABUS[12]~input_o\);

-- Location: LABCELL_X55_Y4_N3
\Adder0|aSignal[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[12]~3_combout\ = ( \ABUS[12]~input_o\ & ( \Adder0|aSignal[15]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	dataf => \ALT_INV_ABUS[12]~input_o\,
	combout => \Adder0|aSignal[12]~3_combout\);

-- Location: IOIBUF_X58_Y0_N58
\ABUS[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(13),
	o => \ABUS[13]~input_o\);

-- Location: LABCELL_X51_Y4_N39
\Adder0|aSignal[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[13]~2_combout\ = ( \ABUS[13]~input_o\ & ( \Adder0|aSignal[15]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	dataf => \ALT_INV_ABUS[13]~input_o\,
	combout => \Adder0|aSignal[13]~2_combout\);

-- Location: LABCELL_X50_Y4_N39
\Adder0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Mux6~0_combout\ = ( \Adder0|Add0~25_sumout\ & ( \Mux34~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~0_combout\,
	dataf => \Adder0|ALT_INV_Add0~25_sumout\,
	combout => \Adder0|Mux6~0_combout\);

-- Location: IOIBUF_X54_Y0_N52
\ABUS[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(9),
	o => \ABUS[9]~input_o\);

-- Location: LABCELL_X50_Y4_N45
\Adder0|aSignal[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[9]~6_combout\ = ( \ABUS[9]~input_o\ & ( \Adder0|aSignal[15]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	dataf => \ALT_INV_ABUS[9]~input_o\,
	combout => \Adder0|aSignal[9]~6_combout\);

-- Location: LABCELL_X55_Y4_N42
\Adder0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Mux5~0_combout\ = ( \Adder0|Add0~21_sumout\ & ( \Mux34~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux34~0_combout\,
	dataf => \Adder0|ALT_INV_Add0~21_sumout\,
	combout => \Adder0|Mux5~0_combout\);

-- Location: IOIBUF_X50_Y0_N92
\ABUS[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(10),
	o => \ABUS[10]~input_o\);

-- Location: LABCELL_X50_Y4_N30
\Adder0|aSignal[10]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[10]~5_combout\ = ( \Adder0|aSignal[15]~12_combout\ & ( \ABUS[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ABUS[10]~input_o\,
	dataf => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	combout => \Adder0|aSignal[10]~5_combout\);

-- Location: IOIBUF_X34_Y0_N41
\ABUS[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(11),
	o => \ABUS[11]~input_o\);

-- Location: LABCELL_X55_Y4_N9
\Adder0|aSignal[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[11]~4_combout\ = ( \ABUS[11]~input_o\ & ( \Adder0|aSignal[15]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	dataf => \ALT_INV_ABUS[11]~input_o\,
	combout => \Adder0|aSignal[11]~4_combout\);

-- Location: LABCELL_X55_Y4_N6
\Adder0|GEN_FULL_ADDERS:11:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:11:fAdderX|sum~0_combout\ = ( \Adder0|aSignal[11]~4_combout\ & ( (!\Adder0|Add0~17_sumout\) # (!\Mux34~0_combout\) ) ) # ( !\Adder0|aSignal[11]~4_combout\ & ( (\Adder0|Add0~17_sumout\ & \Mux34~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_Mux34~0_combout\,
	dataf => \Adder0|ALT_INV_aSignal[11]~4_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:11:fAdderX|sum~0_combout\);

-- Location: IOIBUF_X50_Y0_N41
\ABUS[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(7),
	o => \ABUS[7]~input_o\);

-- Location: LABCELL_X50_Y4_N3
\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ = ( \Adder0|Add0~33_sumout\ & ( !\Mux34~0_combout\ $ (((!\ABUS[7]~input_o\) # (!\Adder0|aSignal[15]~12_combout\))) ) ) # ( !\Adder0|Add0~33_sumout\ & ( (\ABUS[7]~input_o\ & \Adder0|aSignal[15]~12_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010110010101100101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~0_combout\,
	datab => \ALT_INV_ABUS[7]~input_o\,
	datac => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	dataf => \Adder0|ALT_INV_Add0~33_sumout\,
	combout => \Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\);

-- Location: IOIBUF_X50_Y0_N58
\ABUS[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(8),
	o => \ABUS[8]~input_o\);

-- Location: LABCELL_X50_Y4_N54
\Adder0|aSignal[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[8]~7_combout\ = ( \Adder0|aSignal[15]~12_combout\ & ( \ABUS[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ABUS[8]~input_o\,
	dataf => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	combout => \Adder0|aSignal[8]~7_combout\);

-- Location: LABCELL_X50_Y4_N0
\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ = ( \Adder0|Add0~33_sumout\ & ( (\Mux34~0_combout\ & (\ABUS[7]~input_o\ & \Adder0|aSignal[15]~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~0_combout\,
	datab => \ALT_INV_ABUS[7]~input_o\,
	datac => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	dataf => \Adder0|ALT_INV_Add0~33_sumout\,
	combout => \Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\);

-- Location: IOIBUF_X64_Y0_N1
\ABUS[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(0),
	o => \ABUS[0]~input_o\);

-- Location: LABCELL_X57_Y2_N21
\Adder0|aSignal[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[0]~8_combout\ = ( \FSEL[0]~input_o\ & ( (\ABUS[0]~input_o\ & (!\FSEL[3]~input_o\ & !\FSEL[2]~input_o\)) ) ) # ( !\FSEL[0]~input_o\ & ( (\ABUS[0]~input_o\ & (!\FSEL[3]~input_o\ & (!\FSEL[1]~input_o\ $ (!\FSEL[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000000100000010000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_ABUS[0]~input_o\,
	datac => \ALT_INV_FSEL[3]~input_o\,
	datad => \ALT_INV_FSEL[2]~input_o\,
	dataf => \ALT_INV_FSEL[0]~input_o\,
	combout => \Adder0|aSignal[0]~8_combout\);

-- Location: IOIBUF_X70_Y0_N52
\ABUS[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(1),
	o => \ABUS[1]~input_o\);

-- Location: LABCELL_X57_Y2_N57
\Adder0|aSignal[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[1]~9_combout\ = ( \ABUS[1]~input_o\ & ( (!\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ $ (((!\FSEL[0]~input_o\ & !\FSEL[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001000110000000100100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[0]~input_o\,
	datab => \ALT_INV_FSEL[3]~input_o\,
	datac => \ALT_INV_FSEL[2]~input_o\,
	datad => \ALT_INV_FSEL[1]~input_o\,
	dataf => \ALT_INV_ABUS[1]~input_o\,
	combout => \Adder0|aSignal[1]~9_combout\);

-- Location: IOIBUF_X66_Y0_N75
\CIN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIN,
	o => \CIN~input_o\);

-- Location: LABCELL_X57_Y2_N54
\Adder0|cinSignal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|cinSignal~0_combout\ = ( \CIN~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[0]~input_o\ & (!\FSEL[1]~input_o\ & \FSEL[2]~input_o\)) # (\FSEL[0]~input_o\ & (\FSEL[1]~input_o\ & !\FSEL[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100100000000000010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[0]~input_o\,
	datab => \ALT_INV_FSEL[3]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_FSEL[2]~input_o\,
	dataf => \ALT_INV_CIN~input_o\,
	combout => \Adder0|cinSignal~0_combout\);

-- Location: MLABCELL_X52_Y4_N48
\Adder0|GEN_FULL_ADDERS:1:fAdderX|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\ = ( \Mux34~0_combout\ & ( \Adder0|cinSignal~0_combout\ & ( (!\Adder0|Add0~57_sumout\ & (\Adder0|aSignal[1]~9_combout\ & ((\Adder0|Add0~61_sumout\) # (\Adder0|aSignal[0]~8_combout\)))) # 
-- (\Adder0|Add0~57_sumout\ & (((\Adder0|aSignal[1]~9_combout\) # (\Adder0|Add0~61_sumout\)) # (\Adder0|aSignal[0]~8_combout\))) ) ) ) # ( !\Mux34~0_combout\ & ( \Adder0|cinSignal~0_combout\ & ( (\Adder0|aSignal[0]~8_combout\ & \Adder0|aSignal[1]~9_combout\) 
-- ) ) ) # ( \Mux34~0_combout\ & ( !\Adder0|cinSignal~0_combout\ & ( (!\Adder0|Add0~57_sumout\ & (\Adder0|aSignal[0]~8_combout\ & (\Adder0|Add0~61_sumout\ & \Adder0|aSignal[1]~9_combout\))) # (\Adder0|Add0~57_sumout\ & (((\Adder0|aSignal[0]~8_combout\ & 
-- \Adder0|Add0~61_sumout\)) # (\Adder0|aSignal[1]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010101011100000000001100110001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_Add0~57_sumout\,
	datab => \Adder0|ALT_INV_aSignal[0]~8_combout\,
	datac => \Adder0|ALT_INV_Add0~61_sumout\,
	datad => \Adder0|ALT_INV_aSignal[1]~9_combout\,
	datae => \ALT_INV_Mux34~0_combout\,
	dataf => \Adder0|ALT_INV_cinSignal~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\);

-- Location: IOIBUF_X70_Y0_N35
\ABUS[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(3),
	o => \ABUS[3]~input_o\);

-- Location: LABCELL_X57_Y3_N27
\Adder0|aSignal[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[3]~11_combout\ = ( \ABUS[3]~input_o\ & ( (!\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ $ (((!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101100000000000110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[0]~input_o\,
	datad => \ALT_INV_FSEL[3]~input_o\,
	dataf => \ALT_INV_ABUS[3]~input_o\,
	combout => \Adder0|aSignal[3]~11_combout\);

-- Location: IOIBUF_X62_Y0_N52
\ABUS[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(2),
	o => \ABUS[2]~input_o\);

-- Location: LABCELL_X57_Y3_N24
\Adder0|aSignal[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|aSignal[2]~10_combout\ = ( \ABUS[2]~input_o\ & ( (!\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ $ (((!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101100000000000110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[0]~input_o\,
	datad => \ALT_INV_FSEL[3]~input_o\,
	dataf => \ALT_INV_ABUS[2]~input_o\,
	combout => \Adder0|aSignal[2]~10_combout\);

-- Location: LABCELL_X56_Y3_N36
\Adder0|GEN_FULL_ADDERS:3:fAdderX|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~combout\ = ( \Adder0|aSignal[3]~11_combout\ & ( \Adder0|aSignal[2]~10_combout\ & ( ((\Mux34~0_combout\ & ((\Adder0|Add0~49_sumout\) # (\Adder0|Add0~53_sumout\)))) # (\Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\) ) 
-- ) ) # ( !\Adder0|aSignal[3]~11_combout\ & ( \Adder0|aSignal[2]~10_combout\ & ( (\Mux34~0_combout\ & (\Adder0|Add0~49_sumout\ & ((\Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\) # (\Adder0|Add0~53_sumout\)))) ) ) ) # ( \Adder0|aSignal[3]~11_combout\ & ( 
-- !\Adder0|aSignal[2]~10_combout\ & ( (\Mux34~0_combout\ & (((\Adder0|Add0~53_sumout\ & \Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\)) # (\Adder0|Add0~49_sumout\))) ) ) ) # ( !\Adder0|aSignal[3]~11_combout\ & ( !\Adder0|aSignal[2]~10_combout\ & ( 
-- (\Adder0|Add0~53_sumout\ & (\Mux34~0_combout\ & (\Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\ & \Adder0|Add0~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010011001100000000000100110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_Add0~53_sumout\,
	datab => \ALT_INV_Mux34~0_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:1:fAdderX|ALT_INV_cout~combout\,
	datad => \Adder0|ALT_INV_Add0~49_sumout\,
	datae => \Adder0|ALT_INV_aSignal[3]~11_combout\,
	dataf => \Adder0|ALT_INV_aSignal[2]~10_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~combout\);

-- Location: IOIBUF_X50_Y0_N75
\ABUS[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(6),
	o => \ABUS[6]~input_o\);

-- Location: LABCELL_X53_Y3_N9
\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\ = (!\Mux34~0_combout\ & (\Adder0|aSignal[15]~12_combout\ & (\ABUS[6]~input_o\))) # (\Mux34~0_combout\ & (!\Adder0|Add0~37_sumout\ $ (((!\Adder0|aSignal[15]~12_combout\) # (!\ABUS[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010110000000110101011000000011010101100000001101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~0_combout\,
	datab => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	datac => \ALT_INV_ABUS[6]~input_o\,
	datad => \Adder0|ALT_INV_Add0~37_sumout\,
	combout => \Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\);

-- Location: IOIBUF_X72_Y0_N1
\ABUS[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(4),
	o => \ABUS[4]~input_o\);

-- Location: LABCELL_X53_Y3_N51
\Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\ = (!\Mux34~0_combout\ & (\ABUS[4]~input_o\ & ((\Adder0|aSignal[15]~12_combout\)))) # (\Mux34~0_combout\ & (!\Adder0|Add0~45_sumout\ $ (((!\ABUS[4]~input_o\) # (!\Adder0|aSignal[15]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110110000001010011011000000101001101100000010100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~0_combout\,
	datab => \ALT_INV_ABUS[4]~input_o\,
	datac => \Adder0|ALT_INV_Add0~45_sumout\,
	datad => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\);

-- Location: IOIBUF_X52_Y0_N18
\ABUS[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABUS(5),
	o => \ABUS[5]~input_o\);

-- Location: LABCELL_X53_Y3_N6
\Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\ = (\Mux34~0_combout\ & (\Adder0|aSignal[15]~12_combout\ & (\ABUS[5]~input_o\ & \Adder0|Add0~41_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~0_combout\,
	datab => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	datac => \ALT_INV_ABUS[5]~input_o\,
	datad => \Adder0|ALT_INV_Add0~41_sumout\,
	combout => \Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\);

-- Location: LABCELL_X53_Y3_N45
\Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ = (!\Mux34~0_combout\ & (\Adder0|aSignal[15]~12_combout\ & ((\ABUS[5]~input_o\)))) # (\Mux34~0_combout\ & (!\Adder0|Add0~41_sumout\ $ (((!\Adder0|aSignal[15]~12_combout\) # (!\ABUS[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110110000001010011011000000101001101100000010100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~0_combout\,
	datab => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	datac => \Adder0|ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_ABUS[5]~input_o\,
	combout => \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\);

-- Location: LABCELL_X53_Y3_N42
\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ = ( \Adder0|Add0~45_sumout\ & ( (\Adder0|aSignal[15]~12_combout\ & (\Mux34~0_combout\ & \ABUS[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	datac => \ALT_INV_Mux34~0_combout\,
	datad => \ALT_INV_ABUS[4]~input_o\,
	dataf => \Adder0|ALT_INV_Add0~45_sumout\,
	combout => \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\);

-- Location: LABCELL_X53_Y3_N24
\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~1_combout\ = ( \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\ ) ) ) # ( 
-- !\Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & ( (\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\ & \Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\) ) ) ) # ( 
-- \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & ( (\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\ & (((\Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~combout\ & 
-- \Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\)) # (\Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\))) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & ( 
-- (\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\ & \Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000010011001100000000001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_cout~combout\,
	datab => \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_sum~0_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_sum~0_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_cout~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_sum~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_cout~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~1_combout\);

-- Location: LABCELL_X50_Y4_N21
\Adder0|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Mux7~0_combout\ = (\Mux34~0_combout\ & \Adder0|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~0_combout\,
	datab => \Adder0|ALT_INV_Add0~29_sumout\,
	combout => \Adder0|Mux7~0_combout\);

-- Location: LABCELL_X53_Y3_N30
\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ = (\Adder0|aSignal[15]~12_combout\ & (\ABUS[6]~input_o\ & (\Adder0|Add0~37_sumout\ & \Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_aSignal[15]~12_combout\,
	datab => \ALT_INV_ABUS[6]~input_o\,
	datac => \Adder0|ALT_INV_Add0~37_sumout\,
	datad => \ALT_INV_Mux34~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\);

-- Location: LABCELL_X50_Y4_N6
\Adder0|GEN_FULL_ADDERS:8:fAdderX|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:8:fAdderX|cout~combout\ = ( \Adder0|Mux7~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ & ( (!\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ & (!\Adder0|aSignal[8]~7_combout\ & 
-- !\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\)) ) ) ) # ( !\Adder0|Mux7~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ & ( (!\Adder0|aSignal[8]~7_combout\) # ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ & 
-- !\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\)) ) ) ) # ( \Adder0|Mux7~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ & ( (!\Adder0|aSignal[8]~7_combout\ & (!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ & 
-- ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\) # (!\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~1_combout\)))) ) ) ) # ( !\Adder0|Mux7~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ & ( (!\Adder0|aSignal[8]~7_combout\) # 
-- ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ & ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\) # (!\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011101100110000001000000011101100111011001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_sum~0_combout\,
	datab => \Adder0|ALT_INV_aSignal[8]~7_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_cout~0_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~1_combout\,
	datae => \Adder0|ALT_INV_Mux7~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:8:fAdderX|cout~combout\);

-- Location: LABCELL_X56_Y4_N6
\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~1_combout\ = ( \Adder0|GEN_FULL_ADDERS:11:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:8:fAdderX|cout~combout\ & ( (!\Adder0|Mux5~0_combout\ & (\Adder0|Mux6~0_combout\ & (\Adder0|aSignal[9]~6_combout\ & 
-- \Adder0|aSignal[10]~5_combout\))) # (\Adder0|Mux5~0_combout\ & (((\Adder0|Mux6~0_combout\ & \Adder0|aSignal[9]~6_combout\)) # (\Adder0|aSignal[10]~5_combout\))) ) ) ) # ( \Adder0|GEN_FULL_ADDERS:11:fAdderX|sum~0_combout\ & ( 
-- !\Adder0|GEN_FULL_ADDERS:8:fAdderX|cout~combout\ & ( (!\Adder0|Mux5~0_combout\ & (\Adder0|aSignal[10]~5_combout\ & ((\Adder0|aSignal[9]~6_combout\) # (\Adder0|Mux6~0_combout\)))) # (\Adder0|Mux5~0_combout\ & (((\Adder0|aSignal[10]~5_combout\) # 
-- (\Adder0|aSignal[9]~6_combout\)) # (\Adder0|Mux6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110111111100000000000000000000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_Mux6~0_combout\,
	datab => \Adder0|ALT_INV_aSignal[9]~6_combout\,
	datac => \Adder0|ALT_INV_Mux5~0_combout\,
	datad => \Adder0|ALT_INV_aSignal[10]~5_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_sum~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:8:fAdderX|ALT_INV_cout~combout\,
	combout => \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~1_combout\);

-- Location: LABCELL_X55_Y3_N9
\Adder0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Mux3~0_combout\ = (\Mux34~0_combout\ & \Adder0|Add0~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~0_combout\,
	datac => \Adder0|ALT_INV_Add0~13_sumout\,
	combout => \Adder0|Mux3~0_combout\);

-- Location: LABCELL_X55_Y4_N0
\Adder0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|Mux4~0_combout\ = ( \Mux34~0_combout\ & ( \Adder0|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Adder0|ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_Mux34~0_combout\,
	combout => \Adder0|Mux4~0_combout\);

-- Location: LABCELL_X56_Y4_N30
\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~0_combout\ = ( \Adder0|aSignal[11]~4_combout\ & ( \Adder0|Mux4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|ALT_INV_Mux4~0_combout\,
	dataf => \Adder0|ALT_INV_aSignal[11]~4_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~0_combout\);

-- Location: LABCELL_X56_Y4_N12
\Adder0|GEN_FULL_ADDERS:13:fAdderX|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\ = ( \Adder0|Mux3~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~0_combout\ & ( (!\Adder0|Mux2~0_combout\ & !\Adder0|aSignal[13]~2_combout\) ) ) ) # ( !\Adder0|Mux3~0_combout\ & ( 
-- \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~0_combout\ & ( (!\Adder0|Mux2~0_combout\ & ((!\Adder0|aSignal[12]~3_combout\) # (!\Adder0|aSignal[13]~2_combout\))) # (\Adder0|Mux2~0_combout\ & (!\Adder0|aSignal[12]~3_combout\ & !\Adder0|aSignal[13]~2_combout\)) ) 
-- ) ) # ( \Adder0|Mux3~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~0_combout\ & ( (!\Adder0|Mux2~0_combout\ & ((!\Adder0|aSignal[13]~2_combout\) # ((!\Adder0|aSignal[12]~3_combout\ & !\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~1_combout\)))) # 
-- (\Adder0|Mux2~0_combout\ & (!\Adder0|aSignal[12]~3_combout\ & (!\Adder0|aSignal[13]~2_combout\ & !\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~1_combout\))) ) ) ) # ( !\Adder0|Mux3~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~0_combout\ & ( 
-- (!\Adder0|Mux2~0_combout\ & ((!\Adder0|aSignal[12]~3_combout\) # ((!\Adder0|aSignal[13]~2_combout\) # (!\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~1_combout\)))) # (\Adder0|Mux2~0_combout\ & (!\Adder0|aSignal[13]~2_combout\ & 
-- ((!\Adder0|aSignal[12]~3_combout\) # (!\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011101000111010001010000011101000111010001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_Mux2~0_combout\,
	datab => \Adder0|ALT_INV_aSignal[12]~3_combout\,
	datac => \Adder0|ALT_INV_aSignal[13]~2_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_cout~1_combout\,
	datae => \Adder0|ALT_INV_Mux3~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_cout~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\);

-- Location: LABCELL_X53_Y4_N0
\Mux89~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux89~0_combout\ = ( \FSEL[2]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[1]~input_o\ & \FSEL[0]~input_o\)) ) ) # ( !\FSEL[2]~input_o\ & ( (\FSEL[3]~input_o\ & \FSEL[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_FSEL[0]~input_o\,
	dataf => \ALT_INV_FSEL[2]~input_o\,
	combout => \Mux89~0_combout\);

-- Location: LABCELL_X53_Y4_N36
\Mux86~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux86~0_combout\ = ( !\FSEL[1]~input_o\ & ( (\FSEL[2]~input_o\ & \FSEL[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[3]~input_o\,
	datae => \ALT_INV_FSEL[1]~input_o\,
	combout => \Mux86~0_combout\);

-- Location: LABCELL_X51_Y4_N42
\Mux88~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux88~0_combout\ = ( \FSEL[1]~input_o\ & ( (\FSEL[3]~input_o\ & !\FSEL[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	dataf => \ALT_INV_FSEL[1]~input_o\,
	combout => \Mux88~0_combout\);

-- Location: LABCELL_X51_Y4_N45
\Mux85~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux85~0_combout\ = ( \FSEL[0]~input_o\ & ( (\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\) # (!\FSEL[1]~input_o\))) ) ) # ( !\FSEL[0]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ $ (!\FSEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001010100010101000101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	dataf => \ALT_INV_FSEL[0]~input_o\,
	combout => \Mux85~0_combout\);

-- Location: LABCELL_X57_Y4_N18
\Flags0|C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Flags0|C~0_combout\ = ( \Mux85~0_combout\ & ( \ABUS[0]~input_o\ & ( ((!\Mux89~0_combout\ & (\Mux86~0_combout\ & \ABUS[15]~input_o\)) # (\Mux89~0_combout\ & ((\ABUS[15]~input_o\) # (\Mux86~0_combout\)))) # (\Mux88~0_combout\) ) ) ) # ( !\Mux85~0_combout\ 
-- & ( \ABUS[0]~input_o\ & ( (\Mux86~0_combout\ & (!\Mux88~0_combout\ & ((\ABUS[15]~input_o\) # (\Mux89~0_combout\)))) ) ) ) # ( \Mux85~0_combout\ & ( !\ABUS[0]~input_o\ & ( (!\Mux88~0_combout\ & (\ABUS[15]~input_o\ & (!\Mux89~0_combout\ $ 
-- (!\Mux86~0_combout\)))) ) ) ) # ( !\Mux85~0_combout\ & ( !\ABUS[0]~input_o\ & ( (!\Mux89~0_combout\ & (\Mux86~0_combout\ & (!\Mux88~0_combout\ & \ABUS[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000110000000010000001100000001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux89~0_combout\,
	datab => \ALT_INV_Mux86~0_combout\,
	datac => \ALT_INV_Mux88~0_combout\,
	datad => \ALT_INV_ABUS[15]~input_o\,
	datae => \ALT_INV_Mux85~0_combout\,
	dataf => \ALT_INV_ABUS[0]~input_o\,
	combout => \Flags0|C~0_combout\);

-- Location: LABCELL_X57_Y4_N54
\Flags0|C~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Flags0|C~1_combout\ = ( \Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\ & ( \Flags0|C~0_combout\ ) ) # ( !\Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\ & ( \Flags0|C~0_combout\ ) ) # ( \Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\ & ( 
-- !\Flags0|C~0_combout\ & ( (!\Adder0|aSignal[15]~0_combout\ & (\Adder0|aSignal[14]~1_combout\ & (\Adder0|Mux0~0_combout\ & \Adder0|Mux1~0_combout\))) # (\Adder0|aSignal[15]~0_combout\ & (((\Adder0|aSignal[14]~1_combout\ & \Adder0|Mux1~0_combout\)) # 
-- (\Adder0|Mux0~0_combout\))) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\ & ( !\Flags0|C~0_combout\ & ( (!\Adder0|aSignal[15]~0_combout\ & (\Adder0|Mux0~0_combout\ & ((\Adder0|Mux1~0_combout\) # (\Adder0|aSignal[14]~1_combout\)))) # 
-- (\Adder0|aSignal[15]~0_combout\ & (((\Adder0|Mux1~0_combout\) # (\Adder0|Mux0~0_combout\)) # (\Adder0|aSignal[14]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100111111000000110001011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_aSignal[14]~1_combout\,
	datab => \Adder0|ALT_INV_aSignal[15]~0_combout\,
	datac => \Adder0|ALT_INV_Mux0~0_combout\,
	datad => \Adder0|ALT_INV_Mux1~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:13:fAdderX|ALT_INV_cout~combout\,
	dataf => \Flags0|ALT_INV_C~0_combout\,
	combout => \Flags0|C~1_combout\);

-- Location: LABCELL_X57_Y2_N24
\Bitwise0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Bitwise0|Mux0~0_combout\ = ( \ABUS[15]~input_o\ & ( \FSEL[0]~input_o\ & ( (\FSEL[2]~input_o\ & (!\FSEL[3]~input_o\ & (!\FSEL[1]~input_o\ $ (!\BBUS[15]~input_o\)))) ) ) ) # ( !\ABUS[15]~input_o\ & ( \FSEL[0]~input_o\ & ( (\FSEL[1]~input_o\ & 
-- (\BBUS[15]~input_o\ & (\FSEL[2]~input_o\ & !\FSEL[3]~input_o\))) ) ) ) # ( \ABUS[15]~input_o\ & ( !\FSEL[0]~input_o\ & ( (\FSEL[1]~input_o\ & (\FSEL[2]~input_o\ & !\FSEL[3]~input_o\)) ) ) ) # ( !\ABUS[15]~input_o\ & ( !\FSEL[0]~input_o\ & ( 
-- (!\FSEL[1]~input_o\ & (((!\FSEL[2]~input_o\ & \FSEL[3]~input_o\)))) # (\FSEL[1]~input_o\ & (\BBUS[15]~input_o\ & (\FSEL[2]~input_o\ & !\FSEL[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100000000001010000000000000001000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_BBUS[15]~input_o\,
	datac => \ALT_INV_FSEL[2]~input_o\,
	datad => \ALT_INV_FSEL[3]~input_o\,
	datae => \ALT_INV_ABUS[15]~input_o\,
	dataf => \ALT_INV_FSEL[0]~input_o\,
	combout => \Bitwise0|Mux0~0_combout\);

-- Location: LABCELL_X57_Y2_N3
\Mux90~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux90~0_combout\ = ( \Bitwise0|Mux0~0_combout\ & ( (!\FSEL[3]~input_o\ & (((\FSEL[0]~input_o\) # (\FSEL[2]~input_o\)) # (\FSEL[1]~input_o\))) ) ) # ( !\Bitwise0|Mux0~0_combout\ & ( (!\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ $ (((!\FSEL[1]~input_o\ & 
-- !\FSEL[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100011000000010010001100000001001100110011000100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_FSEL[3]~input_o\,
	datac => \ALT_INV_FSEL[2]~input_o\,
	datad => \ALT_INV_FSEL[0]~input_o\,
	dataf => \Bitwise0|ALT_INV_Mux0~0_combout\,
	combout => \Mux90~0_combout\);

-- Location: LABCELL_X57_Y2_N0
\Mux90~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux90~1_combout\ = ( \Bitwise0|Mux0~0_combout\ & ( (\ABUS[15]~input_o\) # (\FSEL[3]~input_o\) ) ) # ( !\Bitwise0|Mux0~0_combout\ & ( (!\FSEL[3]~input_o\ & \ABUS[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FSEL[3]~input_o\,
	datac => \ALT_INV_ABUS[15]~input_o\,
	dataf => \Bitwise0|ALT_INV_Mux0~0_combout\,
	combout => \Mux90~1_combout\);

-- Location: LABCELL_X57_Y2_N9
\Mux90~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux90~2_combout\ = ( \Bitwise0|Mux0~0_combout\ & ( (!\FSEL[3]~input_o\ & ((\FSEL[0]~input_o\) # (\FSEL[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_FSEL[3]~input_o\,
	datac => \ALT_INV_FSEL[0]~input_o\,
	dataf => \Bitwise0|ALT_INV_Mux0~0_combout\,
	combout => \Mux90~2_combout\);

-- Location: LABCELL_X57_Y2_N42
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\FSEL[2]~input_o\ & ( (\FSEL[3]~input_o\ & (\FSEL[0]~input_o\ & ((!\FSEL[1]~input_o\ & ((\ABUS[14]~input_o\))) # (\FSEL[1]~input_o\ & (\ABUS[15]~input_o\))))) ) ) # ( \FSEL[2]~input_o\ & ( (!\FSEL[1]~input_o\ & (\FSEL[3]~input_o\ & 
-- ((!\FSEL[0]~input_o\ & ((\ABUS[14]~input_o\))) # (\FSEL[0]~input_o\ & (\CIN~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000001000000000000001000000000001000110010001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_FSEL[3]~input_o\,
	datac => \ALT_INV_CIN~input_o\,
	datad => \ALT_INV_FSEL[0]~input_o\,
	datae => \ALT_INV_FSEL[2]~input_o\,
	dataf => \ALT_INV_ABUS[14]~input_o\,
	datag => \ALT_INV_ABUS[15]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X57_Y2_N12
\Mux90~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux90~3_combout\ = ( \FSEL[0]~input_o\ & ( \Mux0~0_combout\ & ( (\FSEL[2]~input_o\ & (\FSEL[1]~input_o\ & !\Mux90~2_combout\)) ) ) ) # ( !\FSEL[0]~input_o\ & ( \Mux0~0_combout\ & ( (!\FSEL[2]~input_o\ & (!\Mux90~1_combout\ & (!\FSEL[1]~input_o\))) # 
-- (\FSEL[2]~input_o\ & (((\FSEL[1]~input_o\ & !\Mux90~2_combout\)))) ) ) ) # ( \FSEL[0]~input_o\ & ( !\Mux0~0_combout\ & ( (!\FSEL[2]~input_o\) # (!\Mux90~2_combout\) ) ) ) # ( !\FSEL[0]~input_o\ & ( !\Mux0~0_combout\ & ( (!\FSEL[2]~input_o\ & 
-- ((!\Mux90~1_combout\) # ((\FSEL[1]~input_o\)))) # (\FSEL[2]~input_o\ & (((!\Mux90~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110001100111111111100110010000011100000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux90~1_combout\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_Mux90~2_combout\,
	datae => \ALT_INV_FSEL[0]~input_o\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux90~3_combout\);

-- Location: LABCELL_X50_Y4_N57
\Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0_combout\ = ( \Adder0|Add0~25_sumout\ & ( !\Mux34~0_combout\ $ (!\Adder0|aSignal[9]~6_combout\) ) ) # ( !\Adder0|Add0~25_sumout\ & ( \Adder0|aSignal[9]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~0_combout\,
	datac => \Adder0|ALT_INV_aSignal[9]~6_combout\,
	dataf => \Adder0|ALT_INV_Add0~25_sumout\,
	combout => \Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0_combout\);

-- Location: LABCELL_X56_Y3_N15
\Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~0_combout\ = ( \Mux34~0_combout\ & ( (\Adder0|aSignal[3]~11_combout\ & \Adder0|Add0~49_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_aSignal[3]~11_combout\,
	datab => \Adder0|ALT_INV_Add0~49_sumout\,
	dataf => \ALT_INV_Mux34~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~0_combout\);

-- Location: LABCELL_X56_Y3_N57
\Adder0|GEN_FULL_ADDERS:2:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:2:fAdderX|sum~0_combout\ = ( \Adder0|aSignal[2]~10_combout\ & ( (!\Adder0|Add0~53_sumout\) # (!\Mux34~0_combout\) ) ) # ( !\Adder0|aSignal[2]~10_combout\ & ( (\Adder0|Add0~53_sumout\ & \Mux34~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_Add0~53_sumout\,
	datab => \ALT_INV_Mux34~0_combout\,
	dataf => \Adder0|ALT_INV_aSignal[2]~10_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:2:fAdderX|sum~0_combout\);

-- Location: LABCELL_X56_Y3_N54
\Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0_combout\ = ( \Adder0|aSignal[2]~10_combout\ & ( (\Adder0|Add0~53_sumout\ & \Mux34~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_Add0~53_sumout\,
	datab => \ALT_INV_Mux34~0_combout\,
	dataf => \Adder0|ALT_INV_aSignal[2]~10_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0_combout\);

-- Location: LABCELL_X56_Y3_N12
\Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\ = ( \Mux34~0_combout\ & ( !\Adder0|aSignal[3]~11_combout\ $ (!\Adder0|Add0~49_sumout\) ) ) # ( !\Mux34~0_combout\ & ( \Adder0|aSignal[3]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_aSignal[3]~11_combout\,
	datab => \Adder0|ALT_INV_Add0~49_sumout\,
	dataf => \ALT_INV_Mux34~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\);

-- Location: LABCELL_X56_Y3_N30
\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~1_combout\ = ( \Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\ ) ) ) # ( 
-- !\Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\ & ( (\Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\ & (((\Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\ & 
-- \Adder0|GEN_FULL_ADDERS:2:fAdderX|sum~0_combout\)) # (\Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~0_combout\))) ) ) ) # ( \Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\ & ( 
-- (\Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\ & \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~0_combout\) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\ & ( 
-- (\Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\ & \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_sum~0_combout\,
	datab => \Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_cout~0_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:1:fAdderX|ALT_INV_cout~combout\,
	datad => \Adder0|GEN_FULL_ADDERS:2:fAdderX|ALT_INV_sum~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:2:fAdderX|ALT_INV_cout~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_sum~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~1_combout\);

-- Location: LABCELL_X53_Y3_N12
\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~combout\ = ( \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & ( (!\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ & 
-- !\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & ( (!\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ & 
-- ((!\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\) # (!\Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\))) ) ) ) # ( \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & ( 
-- (!\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ & ((!\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\) # ((!\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~1_combout\ & !\Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\)))) ) ) ) # ( 
-- !\Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & ( (!\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ & ((!\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\) # 
-- (!\Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101010001000100010101010100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~0_combout\,
	datab => \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_sum~0_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_cout~1_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_cout~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_sum~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_cout~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~combout\);

-- Location: LABCELL_X50_Y4_N12
\Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~1_combout\ = ( \Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~combout\ & ( (\Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0_combout\ & 
-- ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ & (\Adder0|aSignal[8]~7_combout\ & \Adder0|Mux7~0_combout\)) # (\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ & ((\Adder0|Mux7~0_combout\) # (\Adder0|aSignal[8]~7_combout\))))) ) ) ) # ( 
-- !\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~combout\ & ( (\Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0_combout\ & ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ & (\Adder0|aSignal[8]~7_combout\ & 
-- \Adder0|Mux7~0_combout\)) # (\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ & ((\Adder0|Mux7~0_combout\) # (\Adder0|aSignal[8]~7_combout\))))) ) ) ) # ( \Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ & ( 
-- !\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~combout\ & ( (\Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0_combout\ & ((\Adder0|Mux7~0_combout\) # (\Adder0|aSignal[8]~7_combout\))) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ & ( 
-- !\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~combout\ & ( (\Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0_combout\ & ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ & (\Adder0|aSignal[8]~7_combout\ & \Adder0|Mux7~0_combout\)) # 
-- (\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ & ((\Adder0|Mux7~0_combout\) # (\Adder0|aSignal[8]~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000011111100000000000101110000000000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_cout~0_combout\,
	datab => \Adder0|ALT_INV_aSignal[8]~7_combout\,
	datac => \Adder0|ALT_INV_Mux7~0_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:9:fAdderX|ALT_INV_sum~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_sum~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~combout\,
	combout => \Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~1_combout\);

-- Location: LABCELL_X50_Y4_N42
\Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~0_combout\ = ( \Adder0|Mux6~0_combout\ & ( \Adder0|aSignal[9]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|ALT_INV_aSignal[9]~6_combout\,
	dataf => \Adder0|ALT_INV_Mux6~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~0_combout\);

-- Location: LABCELL_X56_Y4_N36
\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~combout\ = ( \Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~0_combout\ & ( \Adder0|aSignal[11]~4_combout\ & ( (!\Adder0|Mux4~0_combout\ & (!\Adder0|Mux5~0_combout\ & !\Adder0|aSignal[10]~5_combout\)) ) ) ) # ( 
-- !\Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~0_combout\ & ( \Adder0|aSignal[11]~4_combout\ & ( (!\Adder0|Mux4~0_combout\ & ((!\Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~1_combout\ & ((!\Adder0|Mux5~0_combout\) # (!\Adder0|aSignal[10]~5_combout\))) # 
-- (\Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~1_combout\ & (!\Adder0|Mux5~0_combout\ & !\Adder0|aSignal[10]~5_combout\)))) ) ) ) # ( \Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~0_combout\ & ( !\Adder0|aSignal[11]~4_combout\ & ( (!\Adder0|Mux4~0_combout\) # 
-- ((!\Adder0|Mux5~0_combout\ & !\Adder0|aSignal[10]~5_combout\)) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~0_combout\ & ( !\Adder0|aSignal[11]~4_combout\ & ( (!\Adder0|Mux4~0_combout\) # ((!\Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~1_combout\ & 
-- ((!\Adder0|Mux5~0_combout\) # (!\Adder0|aSignal[10]~5_combout\))) # (\Adder0|GEN_FULL_ADDERS:9:fAdderX|cout~1_combout\ & (!\Adder0|Mux5~0_combout\ & !\Adder0|aSignal[10]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100111111001100110011001000100000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:9:fAdderX|ALT_INV_cout~1_combout\,
	datab => \Adder0|ALT_INV_Mux4~0_combout\,
	datac => \Adder0|ALT_INV_Mux5~0_combout\,
	datad => \Adder0|ALT_INV_aSignal[10]~5_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:9:fAdderX|ALT_INV_cout~0_combout\,
	dataf => \Adder0|ALT_INV_aSignal[11]~4_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~combout\);

-- Location: LABCELL_X55_Y3_N36
\Mux91~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux91~6_combout\ = ( \FSEL[0]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[2]~input_o\)) ) ) # ( !\FSEL[0]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[1]~input_o\ & \FSEL[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[1]~input_o\,
	datac => \ALT_INV_FSEL[2]~input_o\,
	dataf => \ALT_INV_FSEL[0]~input_o\,
	combout => \Mux91~6_combout\);

-- Location: LABCELL_X57_Y3_N51
\Mux91~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux91~7_combout\ = ( \FSEL[0]~input_o\ & ( (\FSEL[2]~input_o\ & ((!\FSEL[3]~input_o\) # (\FSEL[1]~input_o\))) ) ) # ( !\FSEL[0]~input_o\ & ( !\FSEL[2]~input_o\ $ (\FSEL[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100100010001100110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datad => \ALT_INV_FSEL[1]~input_o\,
	dataf => \ALT_INV_FSEL[0]~input_o\,
	combout => \Mux91~7_combout\);

-- Location: LABCELL_X55_Y3_N15
\Mux98~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux98~0_combout\ = ( !\Mux91~7_combout\ & ( !\Mux91~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux91~6_combout\,
	dataf => \ALT_INV_Mux91~7_combout\,
	combout => \Mux98~0_combout\);

-- Location: LABCELL_X53_Y4_N3
\Mux91~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux91~8_combout\ = ( \FSEL[2]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[1]~input_o\ & \FSEL[0]~input_o\)) ) ) # ( !\FSEL[2]~input_o\ & ( (\FSEL[3]~input_o\ & \FSEL[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_FSEL[0]~input_o\,
	dataf => \ALT_INV_FSEL[2]~input_o\,
	combout => \Mux91~8_combout\);

-- Location: LABCELL_X55_Y3_N21
\Mux91~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux91~0_combout\ = ( !\Mux91~8_combout\ & ( \Mux98~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux98~0_combout\,
	dataf => \ALT_INV_Mux91~8_combout\,
	combout => \Mux91~0_combout\);

-- Location: LABCELL_X53_Y4_N45
\Mux91~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux91~2_combout\ = ( \FSEL[2]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[1]~input_o\ & \Mux89~0_combout\)) ) ) # ( !\FSEL[2]~input_o\ & ( (\FSEL[3]~input_o\ & \FSEL[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_Mux89~0_combout\,
	dataf => \ALT_INV_FSEL[2]~input_o\,
	combout => \Mux91~2_combout\);

-- Location: LABCELL_X57_Y2_N51
\Mux92~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~0_combout\ = ( \BBUS[13]~input_o\ & ( \ABUS[13]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[1]~input_o\ & (!\FSEL[2]~input_o\ $ (\FSEL[0]~input_o\))) # (\FSEL[1]~input_o\ & (\FSEL[2]~input_o\ & !\FSEL[0]~input_o\)))) ) ) ) # ( !\BBUS[13]~input_o\ & 
-- ( \ABUS[13]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[1]~input_o\ & (!\FSEL[2]~input_o\ & !\FSEL[0]~input_o\)) # (\FSEL[1]~input_o\ & (\FSEL[2]~input_o\)))) ) ) ) # ( \BBUS[13]~input_o\ & ( !\ABUS[13]~input_o\ & ( (!\FSEL[1]~input_o\ & 
-- (!\FSEL[2]~input_o\ & (\FSEL[3]~input_o\ & !\FSEL[0]~input_o\))) # (\FSEL[1]~input_o\ & (\FSEL[2]~input_o\ & (!\FSEL[3]~input_o\))) ) ) ) # ( !\BBUS[13]~input_o\ & ( !\ABUS[13]~input_o\ & ( (!\FSEL[1]~input_o\ & (!\FSEL[2]~input_o\ & (\FSEL[3]~input_o\ & 
-- !\FSEL[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000110000001000010010000000100001001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[3]~input_o\,
	datad => \ALT_INV_FSEL[0]~input_o\,
	datae => \ALT_INV_BBUS[13]~input_o\,
	dataf => \ALT_INV_ABUS[13]~input_o\,
	combout => \Mux92~0_combout\);

-- Location: LABCELL_X55_Y3_N57
\Mux91~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux91~1_combout\ = ( \Mux91~6_combout\ & ( !\Mux91~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Mux91~6_combout\,
	dataf => \ALT_INV_Mux91~7_combout\,
	combout => \Mux91~1_combout\);

-- Location: LABCELL_X55_Y4_N54
\Mux92~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~1_combout\ = ( \Mux91~1_combout\ & ( \Mux85~0_combout\ & ( (!\Mux92~0_combout\ & (!\ABUS[12]~input_o\ & ((!\Mux91~2_combout\) # (!\ABUS[14]~input_o\)))) ) ) ) # ( !\Mux91~1_combout\ & ( \Mux85~0_combout\ & ( (!\Mux92~0_combout\ & 
-- ((!\Mux91~2_combout\) # (!\ABUS[14]~input_o\))) ) ) ) # ( \Mux91~1_combout\ & ( !\Mux85~0_combout\ & ( !\Mux92~0_combout\ ) ) ) # ( !\Mux91~1_combout\ & ( !\Mux85~0_combout\ & ( !\Mux92~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux91~2_combout\,
	datab => \ALT_INV_Mux92~0_combout\,
	datac => \ALT_INV_ABUS[12]~input_o\,
	datad => \ALT_INV_ABUS[14]~input_o\,
	datae => \ALT_INV_Mux91~1_combout\,
	dataf => \ALT_INV_Mux85~0_combout\,
	combout => \Mux92~1_combout\);

-- Location: LABCELL_X57_Y4_N12
\Adder0|GEN_FULL_ADDERS:13:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:13:fAdderX|sum~0_combout\ = ( \Adder0|Mux2~0_combout\ & ( !\Adder0|aSignal[13]~2_combout\ ) ) # ( !\Adder0|Mux2~0_combout\ & ( \Adder0|aSignal[13]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|ALT_INV_aSignal[13]~2_combout\,
	dataf => \Adder0|ALT_INV_Mux2~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:13:fAdderX|sum~0_combout\);

-- Location: LABCELL_X56_Y4_N42
\Mux92~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux92~2_combout\ = ( \Adder0|Mux3~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:13:fAdderX|sum~0_combout\ & ( (!\Mux92~1_combout\) # ((\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~combout\ & (\Mux91~0_combout\ & !\Adder0|aSignal[12]~3_combout\))) ) ) ) # ( 
-- !\Adder0|Mux3~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:13:fAdderX|sum~0_combout\ & ( (!\Mux92~1_combout\) # ((\Mux91~0_combout\ & ((!\Adder0|aSignal[12]~3_combout\) # (\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~combout\)))) ) ) ) # ( \Adder0|Mux3~0_combout\ & 
-- ( !\Adder0|GEN_FULL_ADDERS:13:fAdderX|sum~0_combout\ & ( (!\Mux92~1_combout\) # ((\Mux91~0_combout\ & ((!\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~combout\) # (\Adder0|aSignal[12]~3_combout\)))) ) ) ) # ( !\Adder0|Mux3~0_combout\ & ( 
-- !\Adder0|GEN_FULL_ADDERS:13:fAdderX|sum~0_combout\ & ( (!\Mux92~1_combout\) # ((!\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~combout\ & (\Mux91~0_combout\ & \Adder0|aSignal[12]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110010111100101111001111110011111100011111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_cout~combout\,
	datab => \ALT_INV_Mux91~0_combout\,
	datac => \ALT_INV_Mux92~1_combout\,
	datad => \Adder0|ALT_INV_aSignal[12]~3_combout\,
	datae => \Adder0|ALT_INV_Mux3~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:13:fAdderX|ALT_INV_sum~0_combout\,
	combout => \Mux92~2_combout\);

-- Location: LABCELL_X57_Y4_N0
\Adder0|fAdder15|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|fAdder15|sum~0_combout\ = ( \Adder0|Mux0~0_combout\ & ( !\Adder0|aSignal[15]~0_combout\ ) ) # ( !\Adder0|Mux0~0_combout\ & ( \Adder0|aSignal[15]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder0|ALT_INV_aSignal[15]~0_combout\,
	dataf => \Adder0|ALT_INV_Mux0~0_combout\,
	combout => \Adder0|fAdder15|sum~0_combout\);

-- Location: MLABCELL_X52_Y4_N54
\Adder0|fAdder0|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|fAdder0|cout~combout\ = ( \Adder0|cinSignal~0_combout\ & ( ((\Adder0|Add0~61_sumout\ & \Mux34~0_combout\)) # (\Adder0|aSignal[0]~8_combout\) ) ) # ( !\Adder0|cinSignal~0_combout\ & ( (\Adder0|Add0~61_sumout\ & (\Adder0|aSignal[0]~8_combout\ & 
-- \Mux34~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_Add0~61_sumout\,
	datab => \Adder0|ALT_INV_aSignal[0]~8_combout\,
	datad => \ALT_INV_Mux34~0_combout\,
	dataf => \Adder0|ALT_INV_cinSignal~0_combout\,
	combout => \Adder0|fAdder0|cout~combout\);

-- Location: LABCELL_X56_Y3_N48
\Adder0|GEN_FULL_ADDERS:2:fAdderX|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~combout\ = ( \Adder0|Add0~57_sumout\ & ( \Adder0|aSignal[2]~10_combout\ & ( (!\Adder0|aSignal[1]~9_combout\ & (\Mux34~0_combout\ & ((\Adder0|fAdder0|cout~combout\) # (\Adder0|Add0~53_sumout\)))) # 
-- (\Adder0|aSignal[1]~9_combout\ & (((\Adder0|fAdder0|cout~combout\)) # (\Mux34~0_combout\))) ) ) ) # ( !\Adder0|Add0~57_sumout\ & ( \Adder0|aSignal[2]~10_combout\ & ( (!\Adder0|aSignal[1]~9_combout\ & (\Mux34~0_combout\ & (\Adder0|Add0~53_sumout\))) # 
-- (\Adder0|aSignal[1]~9_combout\ & (((\Mux34~0_combout\ & \Adder0|Add0~53_sumout\)) # (\Adder0|fAdder0|cout~combout\))) ) ) ) # ( \Adder0|Add0~57_sumout\ & ( !\Adder0|aSignal[2]~10_combout\ & ( (\Mux34~0_combout\ & (\Adder0|Add0~53_sumout\ & 
-- ((\Adder0|fAdder0|cout~combout\) # (\Adder0|aSignal[1]~9_combout\)))) ) ) ) # ( !\Adder0|Add0~57_sumout\ & ( !\Adder0|aSignal[2]~10_combout\ & ( (\Adder0|aSignal[1]~9_combout\ & (\Mux34~0_combout\ & (\Adder0|Add0~53_sumout\ & 
-- \Adder0|fAdder0|cout~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000001100000011010101110001001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_aSignal[1]~9_combout\,
	datab => \ALT_INV_Mux34~0_combout\,
	datac => \Adder0|ALT_INV_Add0~53_sumout\,
	datad => \Adder0|fAdder0|ALT_INV_cout~combout\,
	datae => \Adder0|ALT_INV_Add0~57_sumout\,
	dataf => \Adder0|ALT_INV_aSignal[2]~10_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~combout\);

-- Location: LABCELL_X53_Y3_N0
\Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~1_combout\ = ( \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\ & ( ((\Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\ & 
-- ((\Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~0_combout\) # (\Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~combout\)))) # (\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\) ) ) ) # ( \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( 
-- !\Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\ & ( ((\Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\ & \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~0_combout\)) # (\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011111100000000000000000011011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:2:fAdderX|ALT_INV_cout~combout\,
	datab => \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_cout~0_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_sum~0_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_cout~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_sum~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_sum~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~1_combout\);

-- Location: LABCELL_X53_Y3_N36
\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~combout\ = ( \Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~1_combout\ & ( \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ & ( (!\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ & 
-- !\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~1_combout\ & ( \Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ & ( (!\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ & 
-- !\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\) ) ) ) # ( \Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~1_combout\ & ( !\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ & ( (!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ & 
-- ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\) # (!\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\))) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~1_combout\ & ( !\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~0_combout\ & ( 
-- (!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ & ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\) # ((!\Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\) # (!\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_sum~0_combout\,
	datab => \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_cout~0_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_cout~0_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_sum~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_cout~1_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~combout\);

-- Location: LABCELL_X55_Y4_N45
\Adder0|GEN_FULL_ADDERS:10:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:10:fAdderX|sum~0_combout\ = ( \Adder0|Add0~21_sumout\ & ( !\Adder0|aSignal[10]~5_combout\ $ (!\Mux34~0_combout\) ) ) # ( !\Adder0|Add0~21_sumout\ & ( \Adder0|aSignal[10]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_aSignal[10]~5_combout\,
	datab => \ALT_INV_Mux34~0_combout\,
	dataf => \Adder0|ALT_INV_Add0~21_sumout\,
	combout => \Adder0|GEN_FULL_ADDERS:10:fAdderX|sum~0_combout\);

-- Location: LABCELL_X56_Y4_N24
\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\ = ( \Adder0|Mux7~0_combout\ & ( \Adder0|Mux6~0_combout\ & ( (\Adder0|GEN_FULL_ADDERS:10:fAdderX|sum~0_combout\ & ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~combout\) # ((\Adder0|aSignal[8]~7_combout\) # 
-- (\Adder0|aSignal[9]~6_combout\)))) ) ) ) # ( !\Adder0|Mux7~0_combout\ & ( \Adder0|Mux6~0_combout\ & ( (\Adder0|GEN_FULL_ADDERS:10:fAdderX|sum~0_combout\ & (((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~combout\ & \Adder0|aSignal[8]~7_combout\)) # 
-- (\Adder0|aSignal[9]~6_combout\))) ) ) ) # ( \Adder0|Mux7~0_combout\ & ( !\Adder0|Mux6~0_combout\ & ( (\Adder0|aSignal[9]~6_combout\ & (\Adder0|GEN_FULL_ADDERS:10:fAdderX|sum~0_combout\ & ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~combout\) # 
-- (\Adder0|aSignal[8]~7_combout\)))) ) ) ) # ( !\Adder0|Mux7~0_combout\ & ( !\Adder0|Mux6~0_combout\ & ( (!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~combout\ & (\Adder0|aSignal[9]~6_combout\ & (\Adder0|aSignal[8]~7_combout\ & 
-- \Adder0|GEN_FULL_ADDERS:10:fAdderX|sum~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000010001100000000001110110000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_cout~combout\,
	datab => \Adder0|ALT_INV_aSignal[9]~6_combout\,
	datac => \Adder0|ALT_INV_aSignal[8]~7_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_sum~0_combout\,
	datae => \Adder0|ALT_INV_Mux7~0_combout\,
	dataf => \Adder0|ALT_INV_Mux6~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\);

-- Location: LABCELL_X56_Y4_N21
\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\ = ( \Adder0|Mux5~0_combout\ & ( \Adder0|aSignal[10]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Adder0|ALT_INV_aSignal[10]~5_combout\,
	dataf => \Adder0|ALT_INV_Mux5~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\);

-- Location: LABCELL_X56_Y4_N0
\Adder0|GEN_FULL_ADDERS:12:fAdderX|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:12:fAdderX|cout~combout\ = ( \Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\ & ( \Adder0|aSignal[11]~4_combout\ & ( (!\Adder0|aSignal[12]~3_combout\ & !\Adder0|Mux3~0_combout\) ) ) ) # ( 
-- !\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\ & ( \Adder0|aSignal[11]~4_combout\ & ( (!\Adder0|aSignal[12]~3_combout\ & ((!\Adder0|Mux3~0_combout\) # ((!\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\ & !\Adder0|Mux4~0_combout\)))) # 
-- (\Adder0|aSignal[12]~3_combout\ & (!\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\ & (!\Adder0|Mux3~0_combout\ & !\Adder0|Mux4~0_combout\))) ) ) ) # ( \Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\ & ( !\Adder0|aSignal[11]~4_combout\ & ( 
-- (!\Adder0|aSignal[12]~3_combout\ & ((!\Adder0|Mux3~0_combout\) # (!\Adder0|Mux4~0_combout\))) # (\Adder0|aSignal[12]~3_combout\ & (!\Adder0|Mux3~0_combout\ & !\Adder0|Mux4~0_combout\)) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\ & ( 
-- !\Adder0|aSignal[11]~4_combout\ & ( (!\Adder0|aSignal[12]~3_combout\ & ((!\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\) # ((!\Adder0|Mux3~0_combout\) # (!\Adder0|Mux4~0_combout\)))) # (\Adder0|aSignal[12]~3_combout\ & (!\Adder0|Mux3~0_combout\ & 
-- ((!\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\) # (!\Adder0|Mux4~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011101000111111001100000011101000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_cout~1_combout\,
	datab => \Adder0|ALT_INV_aSignal[12]~3_combout\,
	datac => \Adder0|ALT_INV_Mux3~0_combout\,
	datad => \Adder0|ALT_INV_Mux4~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_cout~0_combout\,
	dataf => \Adder0|ALT_INV_aSignal[11]~4_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:12:fAdderX|cout~combout\);

-- Location: LABCELL_X57_Y4_N6
\Adder0|fAdder15|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|fAdder15|sum~combout\ = ( \Adder0|aSignal[14]~1_combout\ & ( \Adder0|Mux1~0_combout\ & ( !\Adder0|fAdder15|sum~0_combout\ ) ) ) # ( !\Adder0|aSignal[14]~1_combout\ & ( \Adder0|Mux1~0_combout\ & ( !\Adder0|fAdder15|sum~0_combout\ $ 
-- (((!\Adder0|GEN_FULL_ADDERS:12:fAdderX|cout~combout\ & (!\Adder0|Mux2~0_combout\ & !\Adder0|aSignal[13]~2_combout\)) # (\Adder0|GEN_FULL_ADDERS:12:fAdderX|cout~combout\ & ((!\Adder0|Mux2~0_combout\) # (!\Adder0|aSignal[13]~2_combout\))))) ) ) ) # ( 
-- \Adder0|aSignal[14]~1_combout\ & ( !\Adder0|Mux1~0_combout\ & ( !\Adder0|fAdder15|sum~0_combout\ $ (((!\Adder0|GEN_FULL_ADDERS:12:fAdderX|cout~combout\ & (!\Adder0|Mux2~0_combout\ & !\Adder0|aSignal[13]~2_combout\)) # 
-- (\Adder0|GEN_FULL_ADDERS:12:fAdderX|cout~combout\ & ((!\Adder0|Mux2~0_combout\) # (!\Adder0|aSignal[13]~2_combout\))))) ) ) ) # ( !\Adder0|aSignal[14]~1_combout\ & ( !\Adder0|Mux1~0_combout\ & ( \Adder0|fAdder15|sum~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010110011001101001011001100110101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|fAdder15|ALT_INV_sum~0_combout\,
	datab => \Adder0|GEN_FULL_ADDERS:12:fAdderX|ALT_INV_cout~combout\,
	datac => \Adder0|ALT_INV_Mux2~0_combout\,
	datad => \Adder0|ALT_INV_aSignal[13]~2_combout\,
	datae => \Adder0|ALT_INV_aSignal[14]~1_combout\,
	dataf => \Adder0|ALT_INV_Mux1~0_combout\,
	combout => \Adder0|fAdder15|sum~combout\);

-- Location: LABCELL_X53_Y4_N18
\Mux93~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux93~0_combout\ = ( \FSEL[1]~input_o\ & ( \BBUS[12]~input_o\ & ( (\FSEL[2]~input_o\ & (!\FSEL[3]~input_o\ & ((!\ABUS[12]~input_o\) # (!\FSEL[0]~input_o\)))) ) ) ) # ( !\FSEL[1]~input_o\ & ( \BBUS[12]~input_o\ & ( (!\ABUS[12]~input_o\ & 
-- (!\FSEL[2]~input_o\ & (\FSEL[3]~input_o\ & !\FSEL[0]~input_o\))) # (\ABUS[12]~input_o\ & (!\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ $ (\FSEL[0]~input_o\)))) ) ) ) # ( \FSEL[1]~input_o\ & ( !\BBUS[12]~input_o\ & ( (\ABUS[12]~input_o\ & (\FSEL[2]~input_o\ & 
-- !\FSEL[3]~input_o\)) ) ) ) # ( !\FSEL[1]~input_o\ & ( !\BBUS[12]~input_o\ & ( (!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & (!\ABUS[12]~input_o\ $ (!\FSEL[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000000100000001000001001000000100000011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ABUS[12]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[3]~input_o\,
	datad => \ALT_INV_FSEL[0]~input_o\,
	datae => \ALT_INV_FSEL[1]~input_o\,
	dataf => \ALT_INV_BBUS[12]~input_o\,
	combout => \Mux93~0_combout\);

-- Location: LABCELL_X55_Y4_N30
\Mux93~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux93~1_combout\ = ( \ABUS[13]~input_o\ & ( \ABUS[11]~input_o\ & ( (!\Mux93~0_combout\ & ((!\Mux85~0_combout\) # ((!\Mux91~2_combout\ & !\Mux91~1_combout\)))) ) ) ) # ( !\ABUS[13]~input_o\ & ( \ABUS[11]~input_o\ & ( (!\Mux93~0_combout\ & 
-- ((!\Mux85~0_combout\) # (!\Mux91~1_combout\))) ) ) ) # ( \ABUS[13]~input_o\ & ( !\ABUS[11]~input_o\ & ( (!\Mux93~0_combout\ & ((!\Mux91~2_combout\) # (!\Mux85~0_combout\))) ) ) ) # ( !\ABUS[13]~input_o\ & ( !\ABUS[11]~input_o\ & ( !\Mux93~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110010001100100011001100110000001100100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux91~2_combout\,
	datab => \ALT_INV_Mux93~0_combout\,
	datac => \ALT_INV_Mux85~0_combout\,
	datad => \ALT_INV_Mux91~1_combout\,
	datae => \ALT_INV_ABUS[13]~input_o\,
	dataf => \ALT_INV_ABUS[11]~input_o\,
	combout => \Mux93~1_combout\);

-- Location: LABCELL_X53_Y4_N54
\Mux94~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux94~0_combout\ = ( \BBUS[11]~input_o\ & ( \ABUS[11]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[0]~input_o\ & (!\FSEL[2]~input_o\ $ (\FSEL[1]~input_o\))) # (\FSEL[0]~input_o\ & (\FSEL[2]~input_o\ & !\FSEL[1]~input_o\)))) ) ) ) # ( !\BBUS[11]~input_o\ & 
-- ( \ABUS[11]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[1]~input_o\)) # (\FSEL[2]~input_o\ & ((\FSEL[1]~input_o\))))) ) ) ) # ( \BBUS[11]~input_o\ & ( !\ABUS[11]~input_o\ & ( (!\FSEL[3]~input_o\ & 
-- (((\FSEL[2]~input_o\ & \FSEL[1]~input_o\)))) # (\FSEL[3]~input_o\ & (!\FSEL[0]~input_o\ & (!\FSEL[2]~input_o\ & !\FSEL[1]~input_o\))) ) ) ) # ( !\BBUS[11]~input_o\ & ( !\ABUS[11]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[0]~input_o\ & (!\FSEL[2]~input_o\ 
-- & !\FSEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000101010000000000010101000001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[0]~input_o\,
	datac => \ALT_INV_FSEL[2]~input_o\,
	datad => \ALT_INV_FSEL[1]~input_o\,
	datae => \ALT_INV_BBUS[11]~input_o\,
	dataf => \ALT_INV_ABUS[11]~input_o\,
	combout => \Mux94~0_combout\);

-- Location: LABCELL_X55_Y4_N36
\Mux94~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux94~1_combout\ = ( \Mux91~1_combout\ & ( \ABUS[12]~input_o\ & ( (!\Mux94~0_combout\ & ((!\Mux85~0_combout\) # ((!\Mux91~2_combout\ & !\ABUS[10]~input_o\)))) ) ) ) # ( !\Mux91~1_combout\ & ( \ABUS[12]~input_o\ & ( (!\Mux94~0_combout\ & 
-- ((!\Mux85~0_combout\) # (!\Mux91~2_combout\))) ) ) ) # ( \Mux91~1_combout\ & ( !\ABUS[12]~input_o\ & ( (!\Mux94~0_combout\ & ((!\Mux85~0_combout\) # (!\ABUS[10]~input_o\))) ) ) ) # ( !\Mux91~1_combout\ & ( !\ABUS[12]~input_o\ & ( !\Mux94~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001000100011001000110010001100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux85~0_combout\,
	datab => \ALT_INV_Mux94~0_combout\,
	datac => \ALT_INV_Mux91~2_combout\,
	datad => \ALT_INV_ABUS[10]~input_o\,
	datae => \ALT_INV_Mux91~1_combout\,
	dataf => \ALT_INV_ABUS[12]~input_o\,
	combout => \Mux94~1_combout\);

-- Location: LABCELL_X56_Y4_N18
\Mux94~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux94~2_combout\ = ( \Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\ & ( (!\Mux94~1_combout\) # ((\Mux91~0_combout\ & !\Adder0|GEN_FULL_ADDERS:11:fAdderX|sum~0_combout\)) ) ) # ( !\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\ & ( 
-- (!\Mux94~1_combout\) # ((\Mux91~0_combout\ & (!\Adder0|GEN_FULL_ADDERS:11:fAdderX|sum~0_combout\ $ (!\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110111010101010111011101010111010101110101011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux94~1_combout\,
	datab => \ALT_INV_Mux91~0_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_sum~0_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_cout~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_cout~1_combout\,
	combout => \Mux94~2_combout\);

-- Location: LABCELL_X53_Y3_N33
\Mux79~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux79~0_combout\ = (\ABUS[6]~input_o\ & \Mux85~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ABUS[6]~input_o\,
	datac => \ALT_INV_Mux85~0_combout\,
	combout => \Mux79~0_combout\);

-- Location: LABCELL_X53_Y3_N18
\Mux100~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux100~0_combout\ = ( \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~combout\ & ( (!\Mux91~8_combout\ & (((!\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & 
-- !\Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\)))) # (\Mux91~8_combout\ & (\Mux79~0_combout\)) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~combout\ & ( (!\Mux91~8_combout\ & 
-- (((\Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\) # (\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\)))) # (\Mux91~8_combout\ & (\Mux79~0_combout\)) ) ) ) # ( \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( 
-- !\Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~combout\ & ( (!\Mux91~8_combout\ & ((!\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\))) # (\Mux91~8_combout\ & (\Mux79~0_combout\)) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( 
-- !\Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~combout\ & ( (!\Mux91~8_combout\ & ((\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\))) # (\Mux91~8_combout\ & (\Mux79~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101110001011100010100110101111101011100010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux79~0_combout\,
	datab => \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_Mux91~8_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_sum~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_sum~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_cout~combout\,
	combout => \Mux100~0_combout\);

-- Location: LABCELL_X51_Y4_N24
\Mux100~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux100~1_combout\ = ( \BBUS[5]~input_o\ & ( \ABUS[5]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[1]~input_o\)) # (\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ $ (!\FSEL[1]~input_o\))))) ) ) ) # ( !\BBUS[5]~input_o\ & 
-- ( \ABUS[5]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[1]~input_o\)) # (\FSEL[2]~input_o\ & ((\FSEL[1]~input_o\))))) ) ) ) # ( \BBUS[5]~input_o\ & ( !\ABUS[5]~input_o\ & ( (!\FSEL[3]~input_o\ & (\FSEL[2]~input_o\ 
-- & ((\FSEL[1]~input_o\)))) # (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[1]~input_o\))) ) ) ) # ( !\BBUS[5]~input_o\ & ( !\ABUS[5]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & 
-- !\FSEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000010001010000000001000101000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[0]~input_o\,
	datad => \ALT_INV_FSEL[1]~input_o\,
	datae => \ALT_INV_BBUS[5]~input_o\,
	dataf => \ALT_INV_ABUS[5]~input_o\,
	combout => \Mux100~1_combout\);

-- Location: LABCELL_X53_Y3_N48
\Mux81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux81~0_combout\ = (\ABUS[4]~input_o\ & \Mux85~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ABUS[4]~input_o\,
	datad => \ALT_INV_Mux85~0_combout\,
	combout => \Mux81~0_combout\);

-- Location: LABCELL_X55_Y3_N18
\Mux100~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux100~2_combout\ = ( \Mux81~0_combout\ & ( ((!\Mux91~7_combout\ & ((\Mux91~6_combout\) # (\Mux100~0_combout\)))) # (\Mux100~1_combout\) ) ) # ( !\Mux81~0_combout\ & ( ((\Mux100~0_combout\ & (!\Mux91~7_combout\ & !\Mux91~6_combout\))) # 
-- (\Mux100~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100110011011100110011001101110011111100110111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux100~0_combout\,
	datab => \ALT_INV_Mux100~1_combout\,
	datac => \ALT_INV_Mux91~7_combout\,
	datad => \ALT_INV_Mux91~6_combout\,
	dataf => \ALT_INV_Mux81~0_combout\,
	combout => \Mux100~2_combout\);

-- Location: LABCELL_X51_Y4_N51
\Mux97~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux97~0_combout\ = ( \BBUS[8]~input_o\ & ( \ABUS[8]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\)) # (\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ $ (!\FSEL[0]~input_o\))))) ) ) ) # ( !\BBUS[8]~input_o\ & 
-- ( \ABUS[8]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\)) # (\FSEL[2]~input_o\ & (\FSEL[1]~input_o\)))) ) ) ) # ( \BBUS[8]~input_o\ & ( !\ABUS[8]~input_o\ & ( (!\FSEL[3]~input_o\ & (\FSEL[2]~input_o\ & 
-- (\FSEL[1]~input_o\))) # (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\))) ) ) ) # ( !\BBUS[8]~input_o\ & ( !\ABUS[8]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000100000001010000010000000101000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_FSEL[0]~input_o\,
	datae => \ALT_INV_BBUS[8]~input_o\,
	dataf => \ALT_INV_ABUS[8]~input_o\,
	combout => \Mux97~0_combout\);

-- Location: LABCELL_X55_Y4_N24
\Mux97~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux97~1_combout\ = ( \ABUS[9]~input_o\ & ( !\Mux97~0_combout\ & ( (!\Mux85~0_combout\) # ((!\Mux91~2_combout\ & ((!\Mux91~1_combout\) # (!\ABUS[7]~input_o\)))) ) ) ) # ( !\ABUS[9]~input_o\ & ( !\Mux97~0_combout\ & ( (!\Mux85~0_combout\) # 
-- ((!\Mux91~1_combout\) # (!\ABUS[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111110101110101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux85~0_combout\,
	datab => \ALT_INV_Mux91~1_combout\,
	datac => \ALT_INV_Mux91~2_combout\,
	datad => \ALT_INV_ABUS[7]~input_o\,
	datae => \ALT_INV_ABUS[9]~input_o\,
	dataf => \ALT_INV_Mux97~0_combout\,
	combout => \Mux97~1_combout\);

-- Location: LABCELL_X50_Y4_N18
\Adder0|GEN_FULL_ADDERS:8:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:8:fAdderX|sum~0_combout\ = !\Adder0|aSignal[8]~7_combout\ $ (((!\Mux34~0_combout\) # (!\Adder0|Add0~29_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111101110000100011110111000010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux34~0_combout\,
	datab => \Adder0|ALT_INV_Add0~29_sumout\,
	datad => \Adder0|ALT_INV_aSignal[8]~7_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:8:fAdderX|sum~0_combout\);

-- Location: LABCELL_X50_Y4_N24
\Mux97~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux97~2_combout\ = ( \Mux97~1_combout\ & ( \Adder0|GEN_FULL_ADDERS:8:fAdderX|sum~0_combout\ & ( (!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\ & (\Mux91~0_combout\ & ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\) # 
-- (\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~combout\)))) ) ) ) # ( !\Mux97~1_combout\ & ( \Adder0|GEN_FULL_ADDERS:8:fAdderX|sum~0_combout\ ) ) # ( \Mux97~1_combout\ & ( !\Adder0|GEN_FULL_ADDERS:8:fAdderX|sum~0_combout\ & ( (\Mux91~0_combout\ & 
-- (((\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ & !\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~combout\)) # (\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~0_combout\))) ) ) ) # ( !\Mux97~1_combout\ & ( !\Adder0|GEN_FULL_ADDERS:8:fAdderX|sum~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000100111111111111111111110000000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_sum~0_combout\,
	datab => \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~combout\,
	datac => \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_cout~0_combout\,
	datad => \ALT_INV_Mux91~0_combout\,
	datae => \ALT_INV_Mux97~1_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:8:fAdderX|ALT_INV_sum~0_combout\,
	combout => \Mux97~2_combout\);

-- Location: LABCELL_X55_Y3_N12
\Mux77~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux77~0_combout\ = (\ABUS[8]~input_o\ & \Mux85~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ABUS[8]~input_o\,
	datad => \ALT_INV_Mux85~0_combout\,
	combout => \Mux77~0_combout\);

-- Location: LABCELL_X55_Y3_N0
\Mux98~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux98~2_combout\ = ( !\FSEL[3]~input_o\ & ( (!\FSEL[2]~input_o\ & (\ABUS[7]~input_o\ & (((!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\))))) # (\FSEL[2]~input_o\ & ((!\ABUS[7]~input_o\ & (\BBUS[7]~input_o\ & (\FSEL[1]~input_o\))) # (\ABUS[7]~input_o\ & 
-- (!\FSEL[1]~input_o\ $ (((!\BBUS[7]~input_o\) # (!\FSEL[0]~input_o\))))))) ) ) # ( \FSEL[3]~input_o\ & ( (!\FSEL[1]~input_o\ & ((!\FSEL[2]~input_o\ & ((!\FSEL[0]~input_o\ & (!\ABUS[7]~input_o\)) # (\FSEL[0]~input_o\ & ((\ABUS[6]~input_o\))))) # 
-- (\FSEL[2]~input_o\ & (((\ABUS[6]~input_o\ & !\FSEL[0]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001000010101100011010000000000000001000101000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[2]~input_o\,
	datab => \ALT_INV_ABUS[7]~input_o\,
	datac => \ALT_INV_ABUS[6]~input_o\,
	datad => \ALT_INV_FSEL[1]~input_o\,
	datae => \ALT_INV_FSEL[3]~input_o\,
	dataf => \ALT_INV_FSEL[0]~input_o\,
	datag => \ALT_INV_BBUS[7]~input_o\,
	combout => \Mux98~2_combout\);

-- Location: LABCELL_X55_Y3_N30
\Mux98~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux98~1_combout\ = ( \Mux98~2_combout\ & ( \Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ ) ) # ( !\Mux98~2_combout\ & ( \Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ & ( (\Mux98~0_combout\ & ((!\Mux91~8_combout\ & 
-- ((\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~combout\))) # (\Mux91~8_combout\ & (\Mux77~0_combout\)))) ) ) ) # ( \Mux98~2_combout\ & ( !\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ ) ) # ( !\Mux98~2_combout\ & ( 
-- !\Adder0|GEN_FULL_ADDERS:7:fAdderX|sum~0_combout\ & ( (\Mux98~0_combout\ & ((!\Mux91~8_combout\ & ((!\Adder0|GEN_FULL_ADDERS:6:fAdderX|cout~combout\))) # (\Mux91~8_combout\ & (\Mux77~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110001111111111111111100000000000110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux91~8_combout\,
	datab => \ALT_INV_Mux77~0_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_cout~combout\,
	datad => \ALT_INV_Mux98~0_combout\,
	datae => \ALT_INV_Mux98~2_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_sum~0_combout\,
	combout => \Mux98~1_combout\);

-- Location: LABCELL_X51_Y4_N0
\Mux80~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux80~0_combout\ = ( \Mux85~0_combout\ & ( \ABUS[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ABUS[5]~input_o\,
	datae => \ALT_INV_Mux85~0_combout\,
	combout => \Mux80~0_combout\);

-- Location: LABCELL_X56_Y3_N9
\Mux99~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux99~0_combout\ = ( \Mux80~0_combout\ & ( \Mux91~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux91~6_combout\,
	dataf => \ALT_INV_Mux80~0_combout\,
	combout => \Mux99~0_combout\);

-- Location: LABCELL_X53_Y3_N54
\Mux99~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux99~2_combout\ = ( \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & ( (!\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\ & !\Mux91~8_combout\) ) ) ) # ( 
-- !\Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & ( (!\Mux91~8_combout\ & (!\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\ $ (!\Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\))) ) ) ) # ( 
-- \Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & ( (!\Mux91~8_combout\ & (!\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\ $ (((!\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~1_combout\ & 
-- !\Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\))))) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:5:fAdderX|sum~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:4:fAdderX|cout~0_combout\ & ( (!\Mux91~8_combout\ & (!\Adder0|GEN_FULL_ADDERS:6:fAdderX|sum~0_combout\ $ 
-- (!\Adder0|GEN_FULL_ADDERS:5:fAdderX|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000011000001100000000110000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_cout~1_combout\,
	datab => \Adder0|GEN_FULL_ADDERS:6:fAdderX|ALT_INV_sum~0_combout\,
	datac => \ALT_INV_Mux91~8_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_cout~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:5:fAdderX|ALT_INV_sum~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_cout~0_combout\,
	combout => \Mux99~2_combout\);

-- Location: LABCELL_X55_Y3_N39
\Mux99~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux99~1_combout\ = ( \Mux91~8_combout\ & ( (\ABUS[7]~input_o\ & \Mux85~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ABUS[7]~input_o\,
	datad => \ALT_INV_Mux85~0_combout\,
	dataf => \ALT_INV_Mux91~8_combout\,
	combout => \Mux99~1_combout\);

-- Location: LABCELL_X51_Y4_N27
\Mux99~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux99~3_combout\ = ( \BBUS[6]~input_o\ & ( \ABUS[6]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\)) # (\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ $ (!\FSEL[0]~input_o\))))) ) ) ) # ( !\BBUS[6]~input_o\ & 
-- ( \ABUS[6]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\)) # (\FSEL[2]~input_o\ & (\FSEL[1]~input_o\)))) ) ) ) # ( \BBUS[6]~input_o\ & ( !\ABUS[6]~input_o\ & ( (!\FSEL[3]~input_o\ & (\FSEL[2]~input_o\ & 
-- (\FSEL[1]~input_o\))) # (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\))) ) ) ) # ( !\BBUS[6]~input_o\ & ( !\ABUS[6]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000100000001010000010000000101000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_FSEL[0]~input_o\,
	datae => \ALT_INV_BBUS[6]~input_o\,
	dataf => \ALT_INV_ABUS[6]~input_o\,
	combout => \Mux99~3_combout\);

-- Location: LABCELL_X55_Y3_N42
\Mux99~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux99~4_combout\ = ( \Mux99~3_combout\ & ( \Mux91~7_combout\ ) ) # ( \Mux99~3_combout\ & ( !\Mux91~7_combout\ ) ) # ( !\Mux99~3_combout\ & ( !\Mux91~7_combout\ & ( ((!\Mux91~6_combout\ & ((\Mux99~1_combout\) # (\Mux99~2_combout\)))) # (\Mux99~0_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010111110101111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux99~0_combout\,
	datab => \ALT_INV_Mux99~2_combout\,
	datac => \ALT_INV_Mux91~6_combout\,
	datad => \ALT_INV_Mux99~1_combout\,
	datae => \ALT_INV_Mux99~3_combout\,
	dataf => \ALT_INV_Mux91~7_combout\,
	combout => \Mux99~4_combout\);

-- Location: LABCELL_X53_Y4_N57
\Mux96~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~0_combout\ = ( \BBUS[9]~input_o\ & ( \ABUS[9]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[0]~input_o\ & (!\FSEL[1]~input_o\ $ (\FSEL[2]~input_o\))) # (\FSEL[0]~input_o\ & (!\FSEL[1]~input_o\ & \FSEL[2]~input_o\)))) ) ) ) # ( !\BBUS[9]~input_o\ & ( 
-- \ABUS[9]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[1]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[2]~input_o\)) # (\FSEL[1]~input_o\ & ((\FSEL[2]~input_o\))))) ) ) ) # ( \BBUS[9]~input_o\ & ( !\ABUS[9]~input_o\ & ( (!\FSEL[3]~input_o\ & (((\FSEL[1]~input_o\ 
-- & \FSEL[2]~input_o\)))) # (\FSEL[3]~input_o\ & (!\FSEL[0]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[2]~input_o\))) ) ) ) # ( !\BBUS[9]~input_o\ & ( !\ABUS[9]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[0]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[2]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000101010000000000010101000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[0]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_FSEL[2]~input_o\,
	datae => \ALT_INV_BBUS[9]~input_o\,
	dataf => \ALT_INV_ABUS[9]~input_o\,
	combout => \Mux96~0_combout\);

-- Location: LABCELL_X55_Y4_N18
\Mux96~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~1_combout\ = ( \ABUS[8]~input_o\ & ( \Mux91~2_combout\ & ( (!\Mux96~0_combout\ & ((!\Mux85~0_combout\) # ((!\ABUS[10]~input_o\ & !\Mux91~1_combout\)))) ) ) ) # ( !\ABUS[8]~input_o\ & ( \Mux91~2_combout\ & ( (!\Mux96~0_combout\ & 
-- ((!\Mux85~0_combout\) # (!\ABUS[10]~input_o\))) ) ) ) # ( \ABUS[8]~input_o\ & ( !\Mux91~2_combout\ & ( (!\Mux96~0_combout\ & ((!\Mux85~0_combout\) # (!\Mux91~1_combout\))) ) ) ) # ( !\ABUS[8]~input_o\ & ( !\Mux91~2_combout\ & ( !\Mux96~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001000100011001000110010001100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux85~0_combout\,
	datab => \ALT_INV_Mux96~0_combout\,
	datac => \ALT_INV_ABUS[10]~input_o\,
	datad => \ALT_INV_Mux91~1_combout\,
	datae => \ALT_INV_ABUS[8]~input_o\,
	dataf => \ALT_INV_Mux91~2_combout\,
	combout => \Mux96~1_combout\);

-- Location: LABCELL_X50_Y4_N48
\Mux96~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~2_combout\ = ( \Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0_combout\ & ( \Mux96~1_combout\ & ( (\Mux91~0_combout\ & ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~combout\ & (!\Adder0|aSignal[8]~7_combout\ & !\Adder0|Mux7~0_combout\)) # 
-- (\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~combout\ & ((!\Adder0|aSignal[8]~7_combout\) # (!\Adder0|Mux7~0_combout\))))) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0_combout\ & ( \Mux96~1_combout\ & ( (\Mux91~0_combout\ & 
-- ((!\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~combout\ & ((\Adder0|Mux7~0_combout\) # (\Adder0|aSignal[8]~7_combout\))) # (\Adder0|GEN_FULL_ADDERS:7:fAdderX|cout~combout\ & (\Adder0|aSignal[8]~7_combout\ & \Adder0|Mux7~0_combout\)))) ) ) ) # ( 
-- \Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0_combout\ & ( !\Mux96~1_combout\ ) ) # ( !\Adder0|GEN_FULL_ADDERS:9:fAdderX|sum~0_combout\ & ( !\Mux96~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000001010110000000011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:7:fAdderX|ALT_INV_cout~combout\,
	datab => \Adder0|ALT_INV_aSignal[8]~7_combout\,
	datac => \Adder0|ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_Mux91~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:9:fAdderX|ALT_INV_sum~0_combout\,
	dataf => \ALT_INV_Mux96~1_combout\,
	combout => \Mux96~2_combout\);

-- Location: LABCELL_X56_Y3_N0
\Mux103~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux103~1_combout\ = ( \Adder0|aSignal[2]~10_combout\ & ( (!\Mux91~8_combout\ & (!\Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\ $ (((\Adder0|Add0~53_sumout\ & \Mux34~0_combout\))))) ) ) # ( !\Adder0|aSignal[2]~10_combout\ & ( (!\Mux91~8_combout\ & 
-- (!\Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\ $ (((!\Adder0|Add0~53_sumout\) # (!\Mux34~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000000000000111100000000011100001000000001110000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_Add0~53_sumout\,
	datab => \ALT_INV_Mux34~0_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:1:fAdderX|ALT_INV_cout~combout\,
	datad => \ALT_INV_Mux91~8_combout\,
	dataf => \Adder0|ALT_INV_aSignal[2]~10_combout\,
	combout => \Mux103~1_combout\);

-- Location: LABCELL_X57_Y3_N18
\Mux103~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux103~3_combout\ = ( \BBUS[2]~input_o\ & ( \ABUS[2]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[0]~input_o\ & (!\FSEL[1]~input_o\ $ (\FSEL[2]~input_o\))) # (\FSEL[0]~input_o\ & (!\FSEL[1]~input_o\ & \FSEL[2]~input_o\)))) ) ) ) # ( !\BBUS[2]~input_o\ & ( 
-- \ABUS[2]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[1]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[2]~input_o\)) # (\FSEL[1]~input_o\ & ((\FSEL[2]~input_o\))))) ) ) ) # ( \BBUS[2]~input_o\ & ( !\ABUS[2]~input_o\ & ( (!\FSEL[3]~input_o\ & (((\FSEL[1]~input_o\ 
-- & \FSEL[2]~input_o\)))) # (\FSEL[3]~input_o\ & (!\FSEL[0]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[2]~input_o\))) ) ) ) # ( !\BBUS[2]~input_o\ & ( !\ABUS[2]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[0]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[2]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000101010000000000010101000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[0]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_FSEL[2]~input_o\,
	datae => \ALT_INV_BBUS[2]~input_o\,
	dataf => \ALT_INV_ABUS[2]~input_o\,
	combout => \Mux103~3_combout\);

-- Location: LABCELL_X57_Y3_N15
\Mux103~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux103~2_combout\ = ( \ABUS[1]~input_o\ & ( (\Mux85~0_combout\ & \Mux91~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux85~0_combout\,
	datac => \ALT_INV_Mux91~6_combout\,
	dataf => \ALT_INV_ABUS[1]~input_o\,
	combout => \Mux103~2_combout\);

-- Location: LABCELL_X57_Y3_N12
\Mux103~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux103~0_combout\ = ( \ABUS[3]~input_o\ & ( (\Mux85~0_combout\ & \Mux91~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux85~0_combout\,
	datad => \ALT_INV_Mux91~8_combout\,
	dataf => \ALT_INV_ABUS[3]~input_o\,
	combout => \Mux103~0_combout\);

-- Location: LABCELL_X57_Y3_N54
\Mux103~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux103~4_combout\ = ( \Mux91~6_combout\ & ( \Mux103~0_combout\ & ( ((!\Mux91~7_combout\ & \Mux103~2_combout\)) # (\Mux103~3_combout\) ) ) ) # ( !\Mux91~6_combout\ & ( \Mux103~0_combout\ & ( (!\Mux91~7_combout\) # (\Mux103~3_combout\) ) ) ) # ( 
-- \Mux91~6_combout\ & ( !\Mux103~0_combout\ & ( ((!\Mux91~7_combout\ & \Mux103~2_combout\)) # (\Mux103~3_combout\) ) ) ) # ( !\Mux91~6_combout\ & ( !\Mux103~0_combout\ & ( ((!\Mux91~7_combout\ & ((\Mux103~2_combout\) # (\Mux103~1_combout\)))) # 
-- (\Mux103~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111110101111000011111010111110101111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux91~7_combout\,
	datab => \ALT_INV_Mux103~1_combout\,
	datac => \ALT_INV_Mux103~3_combout\,
	datad => \ALT_INV_Mux103~2_combout\,
	datae => \ALT_INV_Mux91~6_combout\,
	dataf => \ALT_INV_Mux103~0_combout\,
	combout => \Mux103~4_combout\);

-- Location: LABCELL_X57_Y3_N0
\Mux101~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux101~2_combout\ = ( \BBUS[4]~input_o\ & ( \ABUS[4]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\)) # (\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ $ (!\FSEL[0]~input_o\))))) ) ) ) # ( !\BBUS[4]~input_o\ & 
-- ( \ABUS[4]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\)) # (\FSEL[2]~input_o\ & (\FSEL[1]~input_o\)))) ) ) ) # ( \BBUS[4]~input_o\ & ( !\ABUS[4]~input_o\ & ( (!\FSEL[3]~input_o\ & (\FSEL[2]~input_o\ & 
-- (\FSEL[1]~input_o\))) # (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\))) ) ) ) # ( !\BBUS[4]~input_o\ & ( !\ABUS[4]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000100000001010000010000000101000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[1]~input_o\,
	datad => \ALT_INV_FSEL[0]~input_o\,
	datae => \ALT_INV_BBUS[4]~input_o\,
	dataf => \ALT_INV_ABUS[4]~input_o\,
	combout => \Mux101~2_combout\);

-- Location: LABCELL_X57_Y2_N36
\Mux105~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux105~6_combout\ = ( !\FSEL[0]~input_o\ & ( (!\FSEL[1]~input_o\ & ((!\FSEL[2]~input_o\ & (!\ABUS[0]~input_o\)) # (\FSEL[2]~input_o\ & (((\CIN~input_o\)))))) # (\FSEL[1]~input_o\ & (!\FSEL[2]~input_o\ & (((\ABUS[1]~input_o\))))) ) ) # ( \FSEL[0]~input_o\ 
-- & ( (!\FSEL[1]~input_o\ & (\FSEL[2]~input_o\ & ((!\FSEL[3]~input_o\ & ((\CIN~input_o\))) # (\FSEL[3]~input_o\ & (\ABUS[1]~input_o\))))) # (\FSEL[1]~input_o\ & (!\FSEL[2]~input_o\ & (((\ABUS[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1000000011000100000000000100011010100010111001100010000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[3]~input_o\,
	datad => \ALT_INV_ABUS[1]~input_o\,
	datae => \ALT_INV_FSEL[0]~input_o\,
	dataf => \ALT_INV_CIN~input_o\,
	datag => \ALT_INV_ABUS[0]~input_o\,
	combout => \Mux105~6_combout\);

-- Location: MLABCELL_X52_Y4_N57
\Mux105~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux105~0_combout\ = ( \Adder0|cinSignal~0_combout\ & ( !\Adder0|aSignal[0]~8_combout\ $ (((\Adder0|Add0~61_sumout\ & \Mux34~0_combout\))) ) ) # ( !\Adder0|cinSignal~0_combout\ & ( !\Adder0|aSignal[0]~8_combout\ $ (((!\Adder0|Add0~61_sumout\) # 
-- (!\Mux34~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101011110000101001011111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_Add0~61_sumout\,
	datac => \Adder0|ALT_INV_aSignal[0]~8_combout\,
	datad => \ALT_INV_Mux34~0_combout\,
	dataf => \Adder0|ALT_INV_cinSignal~0_combout\,
	combout => \Mux105~0_combout\);

-- Location: LABCELL_X57_Y2_N18
\Mux105~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux105~1_combout\ = ( \BBUS[0]~input_o\ & ( (!\FSEL[1]~input_o\ & (\ABUS[0]~input_o\ & (!\FSEL[0]~input_o\ $ (\FSEL[2]~input_o\)))) # (\FSEL[1]~input_o\ & (\FSEL[2]~input_o\ & ((!\ABUS[0]~input_o\) # (!\FSEL[0]~input_o\)))) ) ) # ( !\BBUS[0]~input_o\ & ( 
-- (\ABUS[0]~input_o\ & ((!\FSEL[1]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[2]~input_o\)) # (\FSEL[1]~input_o\ & ((\FSEL[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010001001000000001000100100000010101100010000001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_ABUS[0]~input_o\,
	datac => \ALT_INV_FSEL[0]~input_o\,
	datad => \ALT_INV_FSEL[2]~input_o\,
	dataf => \ALT_INV_BBUS[0]~input_o\,
	combout => \Mux105~1_combout\);

-- Location: LABCELL_X57_Y2_N30
\Mux105~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux105~2_combout\ = ( !\FSEL[3]~input_o\ & ( ((\Mux105~0_combout\ & (!\FSEL[2]~input_o\ $ (((!\FSEL[1]~input_o\ & !\FSEL[0]~input_o\)))))) # (\Mux105~1_combout\) ) ) # ( \FSEL[3]~input_o\ & ( (((\Mux105~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001101100000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_Mux105~6_combout\,
	datad => \ALT_INV_Mux105~0_combout\,
	datae => \ALT_INV_FSEL[3]~input_o\,
	dataf => \ALT_INV_Mux105~1_combout\,
	datag => \ALT_INV_FSEL[0]~input_o\,
	combout => \Mux105~2_combout\);

-- Location: LABCELL_X57_Y3_N6
\Mux83~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux83~0_combout\ = ( \ABUS[2]~input_o\ & ( \Mux85~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux85~0_combout\,
	dataf => \ALT_INV_ABUS[2]~input_o\,
	combout => \Mux83~0_combout\);

-- Location: LABCELL_X56_Y3_N24
\Mux104~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~1_combout\ = ( \Mux91~8_combout\ & ( \Adder0|aSignal[1]~9_combout\ & ( \Mux83~0_combout\ ) ) ) # ( !\Mux91~8_combout\ & ( \Adder0|aSignal[1]~9_combout\ & ( !\Adder0|fAdder0|cout~combout\ $ (((\Mux34~0_combout\ & \Adder0|Add0~57_sumout\))) ) ) ) # 
-- ( \Mux91~8_combout\ & ( !\Adder0|aSignal[1]~9_combout\ & ( \Mux83~0_combout\ ) ) ) # ( !\Mux91~8_combout\ & ( !\Adder0|aSignal[1]~9_combout\ & ( !\Adder0|fAdder0|cout~combout\ $ (((!\Mux34~0_combout\) # (!\Adder0|Add0~57_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100010101010101010111111100000000110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux83~0_combout\,
	datab => \ALT_INV_Mux34~0_combout\,
	datac => \Adder0|ALT_INV_Add0~57_sumout\,
	datad => \Adder0|fAdder0|ALT_INV_cout~combout\,
	datae => \ALT_INV_Mux91~8_combout\,
	dataf => \Adder0|ALT_INV_aSignal[1]~9_combout\,
	combout => \Mux104~1_combout\);

-- Location: LABCELL_X57_Y3_N33
\Mux104~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~0_combout\ = (\ABUS[0]~input_o\ & (\Mux91~6_combout\ & \Mux85~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ABUS[0]~input_o\,
	datab => \ALT_INV_Mux91~6_combout\,
	datac => \ALT_INV_Mux85~0_combout\,
	combout => \Mux104~0_combout\);

-- Location: LABCELL_X57_Y3_N21
\Mux104~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~2_combout\ = ( \BBUS[1]~input_o\ & ( \ABUS[1]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[0]~input_o\ & (!\FSEL[2]~input_o\ $ (\FSEL[1]~input_o\))) # (\FSEL[0]~input_o\ & (\FSEL[2]~input_o\ & !\FSEL[1]~input_o\)))) ) ) ) # ( !\BBUS[1]~input_o\ & ( 
-- \ABUS[1]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[1]~input_o\)) # (\FSEL[2]~input_o\ & ((\FSEL[1]~input_o\))))) ) ) ) # ( \BBUS[1]~input_o\ & ( !\ABUS[1]~input_o\ & ( (!\FSEL[3]~input_o\ & (((\FSEL[2]~input_o\ 
-- & \FSEL[1]~input_o\)))) # (\FSEL[3]~input_o\ & (!\FSEL[0]~input_o\ & (!\FSEL[2]~input_o\ & !\FSEL[1]~input_o\))) ) ) ) # ( !\BBUS[1]~input_o\ & ( !\ABUS[1]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[0]~input_o\ & (!\FSEL[2]~input_o\ & !\FSEL[1]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000101010000000000010101000001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[0]~input_o\,
	datac => \ALT_INV_FSEL[2]~input_o\,
	datad => \ALT_INV_FSEL[1]~input_o\,
	datae => \ALT_INV_BBUS[1]~input_o\,
	dataf => \ALT_INV_ABUS[1]~input_o\,
	combout => \Mux104~2_combout\);

-- Location: LABCELL_X57_Y3_N36
\Flags0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Flags0|Equal0~0_combout\ = ( \Mux91~6_combout\ & ( \Mux91~7_combout\ & ( (!\Mux105~2_combout\ & !\Mux104~2_combout\) ) ) ) # ( !\Mux91~6_combout\ & ( \Mux91~7_combout\ & ( (!\Mux105~2_combout\ & !\Mux104~2_combout\) ) ) ) # ( \Mux91~6_combout\ & ( 
-- !\Mux91~7_combout\ & ( (!\Mux105~2_combout\ & (!\Mux104~0_combout\ & !\Mux104~2_combout\)) ) ) ) # ( !\Mux91~6_combout\ & ( !\Mux91~7_combout\ & ( (!\Mux105~2_combout\ & (!\Mux104~1_combout\ & (!\Mux104~0_combout\ & !\Mux104~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000101000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux105~2_combout\,
	datab => \ALT_INV_Mux104~1_combout\,
	datac => \ALT_INV_Mux104~0_combout\,
	datad => \ALT_INV_Mux104~2_combout\,
	datae => \ALT_INV_Mux91~6_combout\,
	dataf => \ALT_INV_Mux91~7_combout\,
	combout => \Flags0|Equal0~0_combout\);

-- Location: LABCELL_X56_Y3_N18
\Mux102~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux102~0_combout\ = ( \Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\ & ( (\Mux91~8_combout\ & \Mux81~0_combout\) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0_combout\ & ( 
-- \Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\ & ( (!\Mux91~8_combout\ & ((!\Adder0|GEN_FULL_ADDERS:2:fAdderX|sum~0_combout\) # ((!\Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\)))) # (\Mux91~8_combout\ & (((\Mux81~0_combout\)))) ) ) ) # ( 
-- \Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\ & ( (!\Mux91~8_combout\) # (\Mux81~0_combout\) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:2:fAdderX|cout~0_combout\ & ( 
-- !\Adder0|GEN_FULL_ADDERS:3:fAdderX|sum~0_combout\ & ( (!\Mux91~8_combout\ & (\Adder0|GEN_FULL_ADDERS:2:fAdderX|sum~0_combout\ & (\Adder0|GEN_FULL_ADDERS:1:fAdderX|cout~combout\))) # (\Mux91~8_combout\ & (((\Mux81~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111101010101111111110101000111111010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux91~8_combout\,
	datab => \Adder0|GEN_FULL_ADDERS:2:fAdderX|ALT_INV_sum~0_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:1:fAdderX|ALT_INV_cout~combout\,
	datad => \ALT_INV_Mux81~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:2:fAdderX|ALT_INV_cout~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_sum~0_combout\,
	combout => \Mux102~0_combout\);

-- Location: LABCELL_X57_Y3_N3
\Mux102~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux102~1_combout\ = ( \BBUS[3]~input_o\ & ( \ABUS[3]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[1]~input_o\)) # (\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ $ (!\FSEL[1]~input_o\))))) ) ) ) # ( !\BBUS[3]~input_o\ & 
-- ( \ABUS[3]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[1]~input_o\)) # (\FSEL[2]~input_o\ & ((\FSEL[1]~input_o\))))) ) ) ) # ( \BBUS[3]~input_o\ & ( !\ABUS[3]~input_o\ & ( (!\FSEL[3]~input_o\ & (\FSEL[2]~input_o\ 
-- & ((\FSEL[1]~input_o\)))) # (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[1]~input_o\))) ) ) ) # ( !\BBUS[3]~input_o\ & ( !\ABUS[3]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & 
-- !\FSEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000010001010000000001000101000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[0]~input_o\,
	datad => \ALT_INV_FSEL[1]~input_o\,
	datae => \ALT_INV_BBUS[3]~input_o\,
	dataf => \ALT_INV_ABUS[3]~input_o\,
	combout => \Mux102~1_combout\);

-- Location: LABCELL_X57_Y3_N9
\Mux102~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux102~2_combout\ = ( \Mux91~7_combout\ & ( \Mux102~1_combout\ ) ) # ( !\Mux91~7_combout\ & ( ((!\Mux91~6_combout\ & (\Mux102~0_combout\)) # (\Mux91~6_combout\ & ((\Mux83~0_combout\)))) # (\Mux102~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011111111111010001111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux102~0_combout\,
	datab => \ALT_INV_Mux91~6_combout\,
	datac => \ALT_INV_Mux83~0_combout\,
	datad => \ALT_INV_Mux102~1_combout\,
	dataf => \ALT_INV_Mux91~7_combout\,
	combout => \Mux102~2_combout\);

-- Location: LABCELL_X55_Y3_N6
\Mux101~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux101~0_combout\ = ( \ABUS[3]~input_o\ & ( (\Mux85~0_combout\ & \Mux91~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux85~0_combout\,
	datac => \ALT_INV_Mux91~6_combout\,
	dataf => \ALT_INV_ABUS[3]~input_o\,
	combout => \Mux101~0_combout\);

-- Location: LABCELL_X56_Y3_N42
\Mux101~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux101~1_combout\ = ( !\Mux101~0_combout\ & ( \Mux80~0_combout\ & ( ((!\Mux91~8_combout\ & (!\Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\ $ (\Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~combout\)))) # (\Mux91~6_combout\) ) ) ) # ( !\Mux101~0_combout\ & ( 
-- !\Mux80~0_combout\ & ( ((!\Adder0|GEN_FULL_ADDERS:4:fAdderX|sum~0_combout\ $ (\Adder0|GEN_FULL_ADDERS:3:fAdderX|cout~combout\)) # (\Mux91~8_combout\)) # (\Mux91~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011101111111000000000000000011010101010111010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux91~6_combout\,
	datab => \ALT_INV_Mux91~8_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:4:fAdderX|ALT_INV_sum~0_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:3:fAdderX|ALT_INV_cout~combout\,
	datae => \ALT_INV_Mux101~0_combout\,
	dataf => \ALT_INV_Mux80~0_combout\,
	combout => \Mux101~1_combout\);

-- Location: LABCELL_X57_Y3_N42
\Flags0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Flags0|Equal0~1_combout\ = ( \Mux101~1_combout\ & ( \Mux91~7_combout\ & ( (!\Mux103~4_combout\ & (!\Mux101~2_combout\ & (\Flags0|Equal0~0_combout\ & !\Mux102~2_combout\))) ) ) ) # ( !\Mux101~1_combout\ & ( \Mux91~7_combout\ & ( (!\Mux103~4_combout\ & 
-- (!\Mux101~2_combout\ & (\Flags0|Equal0~0_combout\ & !\Mux102~2_combout\))) ) ) ) # ( \Mux101~1_combout\ & ( !\Mux91~7_combout\ & ( (!\Mux103~4_combout\ & (!\Mux101~2_combout\ & (\Flags0|Equal0~0_combout\ & !\Mux102~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux103~4_combout\,
	datab => \ALT_INV_Mux101~2_combout\,
	datac => \Flags0|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Mux102~2_combout\,
	datae => \ALT_INV_Mux101~1_combout\,
	dataf => \ALT_INV_Mux91~7_combout\,
	combout => \Flags0|Equal0~1_combout\);

-- Location: LABCELL_X55_Y3_N48
\Flags0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Flags0|Equal0~2_combout\ = ( !\Mux96~2_combout\ & ( \Flags0|Equal0~1_combout\ & ( (!\Mux100~2_combout\ & (!\Mux97~2_combout\ & (!\Mux98~1_combout\ & !\Mux99~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux100~2_combout\,
	datab => \ALT_INV_Mux97~2_combout\,
	datac => \ALT_INV_Mux98~1_combout\,
	datad => \ALT_INV_Mux99~4_combout\,
	datae => \ALT_INV_Mux96~2_combout\,
	dataf => \Flags0|ALT_INV_Equal0~1_combout\,
	combout => \Flags0|Equal0~2_combout\);

-- Location: LABCELL_X51_Y4_N48
\Mux95~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux95~0_combout\ = ( \BBUS[10]~input_o\ & ( \ABUS[10]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[1]~input_o\)) # (\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ $ (!\FSEL[1]~input_o\))))) ) ) ) # ( !\BBUS[10]~input_o\ 
-- & ( \ABUS[10]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[1]~input_o\)) # (\FSEL[2]~input_o\ & ((\FSEL[1]~input_o\))))) ) ) ) # ( \BBUS[10]~input_o\ & ( !\ABUS[10]~input_o\ & ( (!\FSEL[3]~input_o\ & 
-- (\FSEL[2]~input_o\ & ((\FSEL[1]~input_o\)))) # (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & !\FSEL[1]~input_o\))) ) ) ) # ( !\BBUS[10]~input_o\ & ( !\ABUS[10]~input_o\ & ( (\FSEL[3]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ 
-- & !\FSEL[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000010001010000000001000101000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[3]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[0]~input_o\,
	datad => \ALT_INV_FSEL[1]~input_o\,
	datae => \ALT_INV_BBUS[10]~input_o\,
	dataf => \ALT_INV_ABUS[10]~input_o\,
	combout => \Mux95~0_combout\);

-- Location: LABCELL_X55_Y4_N12
\Mux95~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux95~1_combout\ = ( \ABUS[9]~input_o\ & ( \ABUS[11]~input_o\ & ( (!\Mux95~0_combout\ & ((!\Mux85~0_combout\) # ((!\Mux91~1_combout\ & !\Mux91~2_combout\)))) ) ) ) # ( !\ABUS[9]~input_o\ & ( \ABUS[11]~input_o\ & ( (!\Mux95~0_combout\ & 
-- ((!\Mux85~0_combout\) # (!\Mux91~2_combout\))) ) ) ) # ( \ABUS[9]~input_o\ & ( !\ABUS[11]~input_o\ & ( (!\Mux95~0_combout\ & ((!\Mux85~0_combout\) # (!\Mux91~1_combout\))) ) ) ) # ( !\ABUS[9]~input_o\ & ( !\ABUS[11]~input_o\ & ( !\Mux95~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111011100000000011111010000000001110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux85~0_combout\,
	datab => \ALT_INV_Mux91~1_combout\,
	datac => \ALT_INV_Mux91~2_combout\,
	datad => \ALT_INV_Mux95~0_combout\,
	datae => \ALT_INV_ABUS[9]~input_o\,
	dataf => \ALT_INV_ABUS[11]~input_o\,
	combout => \Mux95~1_combout\);

-- Location: LABCELL_X56_Y4_N54
\Mux95~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux95~2_combout\ = ( \Mux91~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:8:fAdderX|cout~combout\ & ( (!\Mux95~1_combout\) # (!\Adder0|GEN_FULL_ADDERS:10:fAdderX|sum~0_combout\ $ (((!\Adder0|Mux6~0_combout\) # (!\Adder0|aSignal[9]~6_combout\)))) ) ) ) # ( 
-- !\Mux91~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:8:fAdderX|cout~combout\ & ( !\Mux95~1_combout\ ) ) ) # ( \Mux91~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:8:fAdderX|cout~combout\ & ( (!\Mux95~1_combout\) # (!\Adder0|GEN_FULL_ADDERS:10:fAdderX|sum~0_combout\ $ 
-- (((!\Adder0|Mux6~0_combout\ & !\Adder0|aSignal[9]~6_combout\)))) ) ) ) # ( !\Mux91~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:8:fAdderX|cout~combout\ & ( !\Mux95~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111101111111100011110000111100001111000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_Mux6~0_combout\,
	datab => \Adder0|ALT_INV_aSignal[9]~6_combout\,
	datac => \ALT_INV_Mux95~1_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_sum~0_combout\,
	datae => \ALT_INV_Mux91~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:8:fAdderX|ALT_INV_cout~combout\,
	combout => \Mux95~2_combout\);

-- Location: LABCELL_X56_Y4_N51
\Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~0_combout\ = ( \Mux34~0_combout\ & ( !\Adder0|aSignal[12]~3_combout\ $ (!\Adder0|Add0~13_sumout\) ) ) # ( !\Mux34~0_combout\ & ( \Adder0|aSignal[12]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Adder0|ALT_INV_aSignal[12]~3_combout\,
	datad => \Adder0|ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Mux34~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~0_combout\);

-- Location: LABCELL_X56_Y4_N33
\Adder0|GEN_FULL_ADDERS:12:fAdderX|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~combout\ = ( \Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~0_combout\ & ( (!\Adder0|Mux4~0_combout\ & ((!\Adder0|aSignal[11]~4_combout\) # ((!\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\ & 
-- !\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\)))) # (\Adder0|Mux4~0_combout\ & (!\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\ & (!\Adder0|aSignal[11]~4_combout\ & !\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\))) ) ) # ( 
-- !\Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~0_combout\ & ( (!\Adder0|Mux4~0_combout\ & (\Adder0|aSignal[11]~4_combout\ & ((\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\) # (\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\)))) # (\Adder0|Mux4~0_combout\ 
-- & (((\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~0_combout\) # (\Adder0|aSignal[11]~4_combout\)) # (\Adder0|GEN_FULL_ADDERS:10:fAdderX|cout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100111111000101110011111111101000110000001110100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_cout~1_combout\,
	datab => \Adder0|ALT_INV_Mux4~0_combout\,
	datac => \Adder0|ALT_INV_aSignal[11]~4_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:10:fAdderX|ALT_INV_cout~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:12:fAdderX|ALT_INV_sum~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~combout\);

-- Location: LABCELL_X55_Y3_N24
\Flags0|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Flags0|Equal0~3_combout\ = ( !\Mux91~0_combout\ & ( \Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~combout\ & ( (\Mux93~1_combout\ & (!\Mux94~2_combout\ & (\Flags0|Equal0~2_combout\ & !\Mux95~2_combout\))) ) ) ) # ( \Mux91~0_combout\ & ( 
-- !\Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~combout\ & ( (\Mux93~1_combout\ & (!\Mux94~2_combout\ & (\Flags0|Equal0~2_combout\ & !\Mux95~2_combout\))) ) ) ) # ( !\Mux91~0_combout\ & ( !\Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~combout\ & ( (\Mux93~1_combout\ & 
-- (!\Mux94~2_combout\ & (\Flags0|Equal0~2_combout\ & !\Mux95~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux93~1_combout\,
	datab => \ALT_INV_Mux94~2_combout\,
	datac => \Flags0|ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Mux95~2_combout\,
	datae => \ALT_INV_Mux91~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:12:fAdderX|ALT_INV_sum~combout\,
	combout => \Flags0|Equal0~3_combout\);

-- Location: LABCELL_X57_Y4_N3
\Adder0|GEN_FULL_ADDERS:14:fAdderX|sum~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder0|GEN_FULL_ADDERS:14:fAdderX|sum~0_combout\ = ( \Adder0|Mux1~0_combout\ & ( !\Adder0|aSignal[14]~1_combout\ ) ) # ( !\Adder0|Mux1~0_combout\ & ( \Adder0|aSignal[14]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_aSignal[14]~1_combout\,
	dataf => \Adder0|ALT_INV_Mux1~0_combout\,
	combout => \Adder0|GEN_FULL_ADDERS:14:fAdderX|sum~0_combout\);

-- Location: LABCELL_X57_Y2_N48
\Mux91~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux91~3_combout\ = ( \BBUS[14]~input_o\ & ( \ABUS[14]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[1]~input_o\ & (!\FSEL[2]~input_o\ $ (\FSEL[0]~input_o\))) # (\FSEL[1]~input_o\ & (\FSEL[2]~input_o\ & !\FSEL[0]~input_o\)))) ) ) ) # ( !\BBUS[14]~input_o\ & 
-- ( \ABUS[14]~input_o\ & ( (!\FSEL[3]~input_o\ & ((!\FSEL[1]~input_o\ & (!\FSEL[2]~input_o\ & !\FSEL[0]~input_o\)) # (\FSEL[1]~input_o\ & (\FSEL[2]~input_o\)))) ) ) ) # ( \BBUS[14]~input_o\ & ( !\ABUS[14]~input_o\ & ( (!\FSEL[1]~input_o\ & 
-- (!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ & \FSEL[3]~input_o\))) # (\FSEL[1]~input_o\ & (\FSEL[2]~input_o\ & ((!\FSEL[3]~input_o\)))) ) ) ) # ( !\BBUS[14]~input_o\ & ( !\ABUS[14]~input_o\ & ( (!\FSEL[1]~input_o\ & (!\FSEL[2]~input_o\ & (!\FSEL[0]~input_o\ 
-- & \FSEL[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000100011000000010010001000000001001001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FSEL[1]~input_o\,
	datab => \ALT_INV_FSEL[2]~input_o\,
	datac => \ALT_INV_FSEL[0]~input_o\,
	datad => \ALT_INV_FSEL[3]~input_o\,
	datae => \ALT_INV_BBUS[14]~input_o\,
	dataf => \ALT_INV_ABUS[14]~input_o\,
	combout => \Mux91~3_combout\);

-- Location: LABCELL_X55_Y4_N48
\Mux91~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux91~4_combout\ = ( \ABUS[13]~input_o\ & ( \Mux91~2_combout\ & ( (!\Mux91~3_combout\ & ((!\Mux85~0_combout\) # ((!\ABUS[15]~input_o\ & !\Mux91~1_combout\)))) ) ) ) # ( !\ABUS[13]~input_o\ & ( \Mux91~2_combout\ & ( (!\Mux91~3_combout\ & 
-- ((!\ABUS[15]~input_o\) # (!\Mux85~0_combout\))) ) ) ) # ( \ABUS[13]~input_o\ & ( !\Mux91~2_combout\ & ( (!\Mux91~3_combout\ & ((!\Mux91~1_combout\) # (!\Mux85~0_combout\))) ) ) ) # ( !\ABUS[13]~input_o\ & ( !\Mux91~2_combout\ & ( !\Mux91~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111000000000011111010000000001111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ABUS[15]~input_o\,
	datab => \ALT_INV_Mux91~1_combout\,
	datac => \ALT_INV_Mux85~0_combout\,
	datad => \ALT_INV_Mux91~3_combout\,
	datae => \ALT_INV_ABUS[13]~input_o\,
	dataf => \ALT_INV_Mux91~2_combout\,
	combout => \Mux91~4_combout\);

-- Location: LABCELL_X57_Y4_N42
\Mux91~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux91~5_combout\ = ( \Adder0|aSignal[13]~2_combout\ & ( \Mux91~4_combout\ & ( (\Mux91~0_combout\ & (!\Adder0|GEN_FULL_ADDERS:14:fAdderX|sum~0_combout\ $ (((!\Adder0|Mux2~0_combout\ & \Adder0|GEN_FULL_ADDERS:12:fAdderX|cout~combout\))))) ) ) ) # ( 
-- !\Adder0|aSignal[13]~2_combout\ & ( \Mux91~4_combout\ & ( (\Mux91~0_combout\ & (!\Adder0|GEN_FULL_ADDERS:14:fAdderX|sum~0_combout\ $ (((!\Adder0|Mux2~0_combout\) # (\Adder0|GEN_FULL_ADDERS:12:fAdderX|cout~combout\))))) ) ) ) # ( 
-- \Adder0|aSignal[13]~2_combout\ & ( !\Mux91~4_combout\ ) ) # ( !\Adder0|aSignal[13]~2_combout\ & ( !\Mux91~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100010010000000110011000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_Mux91~0_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:14:fAdderX|ALT_INV_sum~0_combout\,
	datad => \Adder0|GEN_FULL_ADDERS:12:fAdderX|ALT_INV_cout~combout\,
	datae => \Adder0|ALT_INV_aSignal[13]~2_combout\,
	dataf => \ALT_INV_Mux91~4_combout\,
	combout => \Mux91~5_combout\);

-- Location: LABCELL_X57_Y4_N48
\Flags0|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Flags0|Equal0~4_combout\ = ( \Flags0|Equal0~3_combout\ & ( !\Mux91~5_combout\ & ( (\Mux90~3_combout\ & (!\Mux92~2_combout\ & ((!\Mux90~0_combout\) # (!\Adder0|fAdder15|sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux90~0_combout\,
	datab => \ALT_INV_Mux90~3_combout\,
	datac => \ALT_INV_Mux92~2_combout\,
	datad => \Adder0|fAdder15|ALT_INV_sum~combout\,
	datae => \Flags0|ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Mux91~5_combout\,
	combout => \Flags0|Equal0~4_combout\);

-- Location: LABCELL_X57_Y4_N24
\Mux90~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux90~4_combout\ = ( \Adder0|aSignal[14]~1_combout\ & ( \Adder0|Mux1~0_combout\ & ( (!\Mux90~3_combout\) # ((!\Adder0|fAdder15|sum~0_combout\ & \Mux90~0_combout\)) ) ) ) # ( !\Adder0|aSignal[14]~1_combout\ & ( \Adder0|Mux1~0_combout\ & ( 
-- (!\Mux90~3_combout\) # ((\Mux90~0_combout\ & (!\Adder0|fAdder15|sum~0_combout\ $ (\Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\)))) ) ) ) # ( \Adder0|aSignal[14]~1_combout\ & ( !\Adder0|Mux1~0_combout\ & ( (!\Mux90~3_combout\) # ((\Mux90~0_combout\ & 
-- (!\Adder0|fAdder15|sum~0_combout\ $ (\Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\)))) ) ) ) # ( !\Adder0|aSignal[14]~1_combout\ & ( !\Adder0|Mux1~0_combout\ & ( (!\Mux90~3_combout\) # ((\Adder0|fAdder15|sum~0_combout\ & \Mux90~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011101110011001110110111001100111011011100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|fAdder15|ALT_INV_sum~0_combout\,
	datab => \ALT_INV_Mux90~3_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:13:fAdderX|ALT_INV_cout~combout\,
	datad => \ALT_INV_Mux90~0_combout\,
	datae => \Adder0|ALT_INV_aSignal[14]~1_combout\,
	dataf => \Adder0|ALT_INV_Mux1~0_combout\,
	combout => \Mux90~4_combout\);

-- Location: LABCELL_X57_Y4_N30
\Shifts0|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Shifts0|Mux17~0_combout\ = ( \ABUS[15]~input_o\ & ( (\Mux85~0_combout\ & (!\Mux88~0_combout\ & (!\Mux89~0_combout\ $ (!\Mux86~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux89~0_combout\,
	datab => \ALT_INV_Mux85~0_combout\,
	datac => \ALT_INV_Mux88~0_combout\,
	datad => \ALT_INV_Mux86~0_combout\,
	dataf => \ALT_INV_ABUS[15]~input_o\,
	combout => \Shifts0|Mux17~0_combout\);

-- Location: LABCELL_X57_Y4_N57
\Flags0|V\ : cyclonev_lcell_comb
-- Equation(s):
-- \Flags0|V~combout\ = ( \Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\ & ( \Shifts0|Mux17~0_combout\ ) ) # ( !\Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\ & ( \Shifts0|Mux17~0_combout\ ) ) # ( \Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\ & ( 
-- !\Shifts0|Mux17~0_combout\ & ( (!\Adder0|aSignal[15]~0_combout\ & (\Adder0|aSignal[14]~1_combout\ & (\Adder0|Mux1~0_combout\ & \Adder0|Mux0~0_combout\))) # (\Adder0|aSignal[15]~0_combout\ & (((\Adder0|aSignal[14]~1_combout\ & \Adder0|Mux1~0_combout\)) # 
-- (\Adder0|Mux0~0_combout\))) ) ) ) # ( !\Adder0|GEN_FULL_ADDERS:13:fAdderX|cout~combout\ & ( !\Shifts0|Mux17~0_combout\ & ( (!\Adder0|aSignal[15]~0_combout\ & (\Adder0|Mux0~0_combout\ & ((\Adder0|Mux1~0_combout\) # (\Adder0|aSignal[14]~1_combout\)))) # 
-- (\Adder0|aSignal[15]~0_combout\ & (((\Adder0|Mux0~0_combout\) # (\Adder0|Mux1~0_combout\)) # (\Adder0|aSignal[14]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001101111111000000010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder0|ALT_INV_aSignal[14]~1_combout\,
	datab => \Adder0|ALT_INV_aSignal[15]~0_combout\,
	datac => \Adder0|ALT_INV_Mux1~0_combout\,
	datad => \Adder0|ALT_INV_Mux0~0_combout\,
	datae => \Adder0|GEN_FULL_ADDERS:13:fAdderX|ALT_INV_cout~combout\,
	dataf => \Shifts0|ALT_INV_Mux17~0_combout\,
	combout => \Flags0|V~combout\);

-- Location: LABCELL_X56_Y3_N6
\Mux104~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux104~3_combout\ = ( \Mux104~1_combout\ & ( ((!\Mux91~7_combout\ & ((!\Mux91~6_combout\) # (\Mux104~0_combout\)))) # (\Mux104~2_combout\) ) ) # ( !\Mux104~1_combout\ & ( ((!\Mux91~7_combout\ & \Mux104~0_combout\)) # (\Mux104~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111110001100111111111000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux91~6_combout\,
	datab => \ALT_INV_Mux91~7_combout\,
	datac => \ALT_INV_Mux104~0_combout\,
	datad => \ALT_INV_Mux104~2_combout\,
	dataf => \ALT_INV_Mux104~1_combout\,
	combout => \Mux104~3_combout\);

-- Location: LABCELL_X57_Y3_N30
\Mux101~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux101~3_combout\ = ( \Mux101~2_combout\ ) # ( !\Mux101~2_combout\ & ( (!\Mux91~7_combout\ & !\Mux101~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux91~7_combout\,
	datad => \ALT_INV_Mux101~1_combout\,
	dataf => \ALT_INV_Mux101~2_combout\,
	combout => \Mux101~3_combout\);

-- Location: LABCELL_X56_Y4_N48
\Mux93~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux93~2_combout\ = ( \Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~0_combout\ & ( (!\Mux93~1_combout\) # ((!\Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~0_combout\ & \Mux91~0_combout\)) ) ) # ( !\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~0_combout\ & ( 
-- (!\Mux93~1_combout\) # ((\Mux91~0_combout\ & (!\Adder0|GEN_FULL_ADDERS:11:fAdderX|cout~1_combout\ $ (!\Adder0|GEN_FULL_ADDERS:12:fAdderX|sum~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010111110101010101011111010101010111110101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux93~1_combout\,
	datab => \Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_cout~1_combout\,
	datac => \Adder0|GEN_FULL_ADDERS:12:fAdderX|ALT_INV_sum~0_combout\,
	datad => \ALT_INV_Mux91~0_combout\,
	dataf => \Adder0|GEN_FULL_ADDERS:11:fAdderX|ALT_INV_cout~0_combout\,
	combout => \Mux93~2_combout\);

-- Location: LABCELL_X11_Y60_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


