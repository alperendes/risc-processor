-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "07/03/2020 00:59:13"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	risc IS
    PORT (
	ins : IN std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	res : IN std_logic;
	state : OUT std_logic_vector(3 DOWNTO 0);
	seq : OUT std_logic;
	equal : OUT std_logic;
	az : OUT std_logic;
	bz : OUT std_logic;
	agb : OUT std_logic;
	alb : OUT std_logic;
	mem_read : OUT std_logic;
	mem_write : OUT std_logic;
	O_add : OUT std_logic_vector(15 DOWNTO 0);
	O_data : OUT std_logic_vector(15 DOWNTO 0)
	);
END risc;

-- Design Ports Information
-- state[0]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[1]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[2]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state[3]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seq	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equal	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- az	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bz	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- agb	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alb	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_read	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_write	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[0]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[1]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[2]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[3]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[4]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[7]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[8]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[9]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[10]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[11]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[12]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[13]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[14]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_add[15]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[1]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[2]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[3]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[4]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[5]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[6]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[7]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[8]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[10]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[11]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[12]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[13]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[14]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_data[15]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[12]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[13]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[14]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[15]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[11]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[10]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[9]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[8]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[7]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[6]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[3]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[2]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[5]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[4]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[1]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ins[0]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF risc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ins : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_res : std_logic;
SIGNAL ww_state : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seq : std_logic;
SIGNAL ww_equal : std_logic;
SIGNAL ww_az : std_logic;
SIGNAL ww_bz : std_logic;
SIGNAL ww_agb : std_logic;
SIGNAL ww_alb : std_logic;
SIGNAL ww_mem_read : std_logic;
SIGNAL ww_mem_write : std_logic;
SIGNAL ww_O_add : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_O_data : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ins[12]~input_o\ : std_logic;
SIGNAL \res~input_o\ : std_logic;
SIGNAL \ins[13]~input_o\ : std_logic;
SIGNAL \ins[14]~input_o\ : std_logic;
SIGNAL \ins[15]~input_o\ : std_logic;
SIGNAL \m12|next_state~0_combout\ : std_logic;
SIGNAL \m12|state~q\ : std_logic;
SIGNAL \m12|z~0_combout\ : std_logic;
SIGNAL \m2|Mux2~0_combout\ : std_logic;
SIGNAL \m8|F[12]~8_combout\ : std_logic;
SIGNAL \m2|Mux1~0_combout\ : std_logic;
SIGNAL \m2|alu_src1~q\ : std_logic;
SIGNAL \m10|Add0~1_sumout\ : std_logic;
SIGNAL \ins[7]~input_o\ : std_logic;
SIGNAL \ins[6]~input_o\ : std_logic;
SIGNAL \m6|LessThan0~2_combout\ : std_logic;
SIGNAL \m2|Mux6~0_combout\ : std_logic;
SIGNAL \m2|pc_cond~q\ : std_logic;
SIGNAL \ins[3]~input_o\ : std_logic;
SIGNAL \ins[11]~input_o\ : std_logic;
SIGNAL \m3|F[3]~0_combout\ : std_logic;
SIGNAL \m8|F[3]~1_combout\ : std_logic;
SIGNAL \ins[2]~input_o\ : std_logic;
SIGNAL \ins[10]~input_o\ : std_logic;
SIGNAL \m3|F[2]~1_combout\ : std_logic;
SIGNAL \m4|O_dataB[2]~DUPLICATE_q\ : std_logic;
SIGNAL \m8|F[2]~2_combout\ : std_logic;
SIGNAL \m7|F[3]~1_combout\ : std_logic;
SIGNAL \ins[5]~input_o\ : std_logic;
SIGNAL \ins[4]~input_o\ : std_logic;
SIGNAL \m6|Equal0~0_combout\ : std_logic;
SIGNAL \m7|F[2]~2_combout\ : std_logic;
SIGNAL \m6|LessThan1~6_combout\ : std_logic;
SIGNAL \ins[8]~input_o\ : std_logic;
SIGNAL \m6|LessThan1~4_combout\ : std_logic;
SIGNAL \m6|LessThan1~8_combout\ : std_logic;
SIGNAL \m8|F[7]~5_combout\ : std_logic;
SIGNAL \m7|F[6]~6_combout\ : std_logic;
SIGNAL \m2|alu_op[1]~feeder_combout\ : std_logic;
SIGNAL \m7|F[4]~11_combout\ : std_logic;
SIGNAL \m8|F[4]~11_combout\ : std_logic;
SIGNAL \m4|O_dataA[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ins[1]~input_o\ : std_logic;
SIGNAL \ins[9]~input_o\ : std_logic;
SIGNAL \m3|F[1]~2_combout\ : std_logic;
SIGNAL \m4|O_dataB[1]~DUPLICATE_q\ : std_logic;
SIGNAL \m8|F[1]~3_combout\ : std_logic;
SIGNAL \m4|O_dataA[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ins[0]~input_o\ : std_logic;
SIGNAL \m3|F[0]~3_combout\ : std_logic;
SIGNAL \m8|F[0]~4_combout\ : std_logic;
SIGNAL \m6|Add0~2\ : std_logic;
SIGNAL \m6|Add0~6\ : std_logic;
SIGNAL \m6|Add0~10\ : std_logic;
SIGNAL \m6|Add0~14\ : std_logic;
SIGNAL \m6|Add0~17_sumout\ : std_logic;
SIGNAL \m7|F[1]~3_combout\ : std_logic;
SIGNAL \m6|Add0~9_sumout\ : std_logic;
SIGNAL \m4|O_dataA[0]~DUPLICATE_q\ : std_logic;
SIGNAL \m6|Add2~66_cout\ : std_logic;
SIGNAL \m6|Add2~2\ : std_logic;
SIGNAL \m6|Add2~6\ : std_logic;
SIGNAL \m6|Add2~9_sumout\ : std_logic;
SIGNAL \m6|Add1~66_cout\ : std_logic;
SIGNAL \m6|Add1~2\ : std_logic;
SIGNAL \m6|Add1~6\ : std_logic;
SIGNAL \m6|Add1~9_sumout\ : std_logic;
SIGNAL \m6|Mux13~0_combout\ : std_logic;
SIGNAL \m6|Mux13~1_combout\ : std_logic;
SIGNAL \m6|O[1]~0_combout\ : std_logic;
SIGNAL \m7|F[9]~13_combout\ : std_logic;
SIGNAL \m7|F[8]~7_combout\ : std_logic;
SIGNAL \m8|F[9]~13_combout\ : std_logic;
SIGNAL \m6|Add0~18\ : std_logic;
SIGNAL \m6|Add0~22\ : std_logic;
SIGNAL \m6|Add0~26\ : std_logic;
SIGNAL \m6|Add0~30\ : std_logic;
SIGNAL \m6|Add0~34\ : std_logic;
SIGNAL \m6|Add0~37_sumout\ : std_logic;
SIGNAL \m6|Add2~30\ : std_logic;
SIGNAL \m6|Add2~34\ : std_logic;
SIGNAL \m6|Add2~37_sumout\ : std_logic;
SIGNAL \m6|Add1~18\ : std_logic;
SIGNAL \m6|Add1~22\ : std_logic;
SIGNAL \m6|Add1~26\ : std_logic;
SIGNAL \m6|Add1~30\ : std_logic;
SIGNAL \m6|Add1~34\ : std_logic;
SIGNAL \m6|Add1~37_sumout\ : std_logic;
SIGNAL \m6|Mux6~0_combout\ : std_logic;
SIGNAL \m6|Mux6~1_combout\ : std_logic;
SIGNAL \m8|F[10]~10_combout\ : std_logic;
SIGNAL \m6|Add0~38\ : std_logic;
SIGNAL \m6|Add0~41_sumout\ : std_logic;
SIGNAL \m6|Add2~38\ : std_logic;
SIGNAL \m6|Add2~41_sumout\ : std_logic;
SIGNAL \m6|Add1~38\ : std_logic;
SIGNAL \m6|Add1~41_sumout\ : std_logic;
SIGNAL \m6|Mux5~0_combout\ : std_logic;
SIGNAL \m6|Mux5~1_combout\ : std_logic;
SIGNAL \m8|F[11]~9_combout\ : std_logic;
SIGNAL \m6|Add0~42\ : std_logic;
SIGNAL \m6|Add0~45_sumout\ : std_logic;
SIGNAL \m6|Add2~42\ : std_logic;
SIGNAL \m6|Add2~45_sumout\ : std_logic;
SIGNAL \m6|Add1~42\ : std_logic;
SIGNAL \m6|Add1~45_sumout\ : std_logic;
SIGNAL \m6|Mux4~0_combout\ : std_logic;
SIGNAL \m6|Mux4~1_combout\ : std_logic;
SIGNAL \m7|F[12]~8_combout\ : std_logic;
SIGNAL \m7|F[11]~9_combout\ : std_logic;
SIGNAL \m10|pc[10]~DUPLICATE_q\ : std_logic;
SIGNAL \m7|F[10]~10_combout\ : std_logic;
SIGNAL \m8|F[8]~7_combout\ : std_logic;
SIGNAL \m6|Add2~33_sumout\ : std_logic;
SIGNAL \m6|Add0~33_sumout\ : std_logic;
SIGNAL \m6|Add1~33_sumout\ : std_logic;
SIGNAL \m6|Mux7~0_combout\ : std_logic;
SIGNAL \m6|Mux7~1_combout\ : std_logic;
SIGNAL \m6|Mux16~0_combout\ : std_logic;
SIGNAL \m6|Mux16~1_combout\ : std_logic;
SIGNAL \m7|F[0]~4_combout\ : std_logic;
SIGNAL \m6|Equal0~3_combout\ : std_logic;
SIGNAL \m6|Equal0~1_combout\ : std_logic;
SIGNAL \m6|Add2~46\ : std_logic;
SIGNAL \m6|Add2~49_sumout\ : std_logic;
SIGNAL \m6|Add1~46\ : std_logic;
SIGNAL \m6|Add1~49_sumout\ : std_logic;
SIGNAL \m6|Add0~46\ : std_logic;
SIGNAL \m6|Add0~49_sumout\ : std_logic;
SIGNAL \m6|Mux3~0_combout\ : std_logic;
SIGNAL \m6|Mux3~1_combout\ : std_logic;
SIGNAL \m8|F[13]~14_combout\ : std_logic;
SIGNAL \m6|Add0~50\ : std_logic;
SIGNAL \m6|Add0~53_sumout\ : std_logic;
SIGNAL \m6|Add2~50\ : std_logic;
SIGNAL \m6|Add2~53_sumout\ : std_logic;
SIGNAL \m6|Add1~50\ : std_logic;
SIGNAL \m6|Add1~53_sumout\ : std_logic;
SIGNAL \m6|Mux2~0_combout\ : std_logic;
SIGNAL \m6|Mux2~1_combout\ : std_logic;
SIGNAL \m7|F[14]~15_combout\ : std_logic;
SIGNAL \m7|F[13]~14_combout\ : std_logic;
SIGNAL \m10|pc[12]~DUPLICATE_q\ : std_logic;
SIGNAL \m6|LessThan1~0_combout\ : std_logic;
SIGNAL \m6|LessThan0~0_combout\ : std_logic;
SIGNAL \m6|LessThan1~2_combout\ : std_logic;
SIGNAL \m6|LessThan1~1_combout\ : std_logic;
SIGNAL \m6|LessThan1~3_combout\ : std_logic;
SIGNAL \m6|Equal0~2_combout\ : std_logic;
SIGNAL \m6|Equal0~4_combout\ : std_logic;
SIGNAL \m6|Mux16~2_combout\ : std_logic;
SIGNAL \m6|cmp~q\ : std_logic;
SIGNAL \pc_opin~combout\ : std_logic;
SIGNAL \m6|Add1~10\ : std_logic;
SIGNAL \m6|Add1~14\ : std_logic;
SIGNAL \m6|Add1~17_sumout\ : std_logic;
SIGNAL \m4|O_dataA[3]~DUPLICATE_q\ : std_logic;
SIGNAL \m6|Add2~10\ : std_logic;
SIGNAL \m6|Add2~14\ : std_logic;
SIGNAL \m6|Add2~17_sumout\ : std_logic;
SIGNAL \m6|Mux11~0_combout\ : std_logic;
SIGNAL \m6|Mux11~1_combout\ : std_logic;
SIGNAL \m7|F[5]~12_combout\ : std_logic;
SIGNAL \m10|pc[4]~DUPLICATE_q\ : std_logic;
SIGNAL \m6|Add2~18\ : std_logic;
SIGNAL \m6|Add2~22\ : std_logic;
SIGNAL \m6|Add2~26\ : std_logic;
SIGNAL \m6|Add2~29_sumout\ : std_logic;
SIGNAL \m6|Add0~29_sumout\ : std_logic;
SIGNAL \m6|Add1~29_sumout\ : std_logic;
SIGNAL \m6|Mux8~0_combout\ : std_logic;
SIGNAL \m6|Mux8~1_combout\ : std_logic;
SIGNAL \m7|F[7]~5_combout\ : std_logic;
SIGNAL \m8|F[6]~6_combout\ : std_logic;
SIGNAL \m6|LessThan1~9_combout\ : std_logic;
SIGNAL \m6|LessThan1~7_combout\ : std_logic;
SIGNAL \m6|LessThan1~10_combout\ : std_logic;
SIGNAL \m6|Add2~1_sumout\ : std_logic;
SIGNAL \m6|Mux15~0_combout\ : std_logic;
SIGNAL \m6|Add1~1_sumout\ : std_logic;
SIGNAL \m6|Add0~1_sumout\ : std_logic;
SIGNAL \m6|Mux15~1_combout\ : std_logic;
SIGNAL \m6|Mux15~2_combout\ : std_logic;
SIGNAL \m6|Mux15~3_combout\ : std_logic;
SIGNAL \m6|Mux15~4_combout\ : std_logic;
SIGNAL \m6|Mux15~5_combout\ : std_logic;
SIGNAL \m10|Add0~2\ : std_logic;
SIGNAL \m10|Add0~5_sumout\ : std_logic;
SIGNAL \m6|Add0~5_sumout\ : std_logic;
SIGNAL \m6|Add2~5_sumout\ : std_logic;
SIGNAL \m6|Add1~5_sumout\ : std_logic;
SIGNAL \m6|Mux14~0_combout\ : std_logic;
SIGNAL \m6|Mux14~1_combout\ : std_logic;
SIGNAL \m10|Add0~6\ : std_logic;
SIGNAL \m10|Add0~9_sumout\ : std_logic;
SIGNAL \m10|pc[2]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|Add0~10\ : std_logic;
SIGNAL \m10|Add0~13_sumout\ : std_logic;
SIGNAL \m6|Add1~13_sumout\ : std_logic;
SIGNAL \m6|Add2~13_sumout\ : std_logic;
SIGNAL \m6|Add0~13_sumout\ : std_logic;
SIGNAL \m6|Mux12~0_combout\ : std_logic;
SIGNAL \m6|Mux12~1_combout\ : std_logic;
SIGNAL \m10|Add0~14\ : std_logic;
SIGNAL \m10|Add0~17_sumout\ : std_logic;
SIGNAL \m10|Add0~18\ : std_logic;
SIGNAL \m10|Add0~21_sumout\ : std_logic;
SIGNAL \m8|F[5]~12_combout\ : std_logic;
SIGNAL \m6|Add0~21_sumout\ : std_logic;
SIGNAL \m6|Add2~21_sumout\ : std_logic;
SIGNAL \m6|Add1~21_sumout\ : std_logic;
SIGNAL \m6|Mux10~0_combout\ : std_logic;
SIGNAL \m6|Mux10~1_combout\ : std_logic;
SIGNAL \m10|pc[5]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|Add0~22\ : std_logic;
SIGNAL \m10|Add0~25_sumout\ : std_logic;
SIGNAL \m6|Add0~25_sumout\ : std_logic;
SIGNAL \m6|Add2~25_sumout\ : std_logic;
SIGNAL \m6|Add1~25_sumout\ : std_logic;
SIGNAL \m6|Mux9~0_combout\ : std_logic;
SIGNAL \m6|Mux9~1_combout\ : std_logic;
SIGNAL \m10|Add0~26\ : std_logic;
SIGNAL \m10|Add0~29_sumout\ : std_logic;
SIGNAL \m10|pc[7]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|Add0~30\ : std_logic;
SIGNAL \m10|Add0~33_sumout\ : std_logic;
SIGNAL \m10|Add0~34\ : std_logic;
SIGNAL \m10|Add0~37_sumout\ : std_logic;
SIGNAL \m10|Add0~38\ : std_logic;
SIGNAL \m10|Add0~41_sumout\ : std_logic;
SIGNAL \m10|Add0~42\ : std_logic;
SIGNAL \m10|Add0~45_sumout\ : std_logic;
SIGNAL \m10|pc[11]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|Add0~46\ : std_logic;
SIGNAL \m10|Add0~49_sumout\ : std_logic;
SIGNAL \m10|Add0~50\ : std_logic;
SIGNAL \m10|Add0~53_sumout\ : std_logic;
SIGNAL \m10|pc[13]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|Add0~54\ : std_logic;
SIGNAL \m10|Add0~57_sumout\ : std_logic;
SIGNAL \m8|F[14]~15_combout\ : std_logic;
SIGNAL \m6|Add2~54\ : std_logic;
SIGNAL \m6|Add2~57_sumout\ : std_logic;
SIGNAL \m6|Add1~54\ : std_logic;
SIGNAL \m6|Add1~57_sumout\ : std_logic;
SIGNAL \m6|Add0~54\ : std_logic;
SIGNAL \m6|Add0~57_sumout\ : std_logic;
SIGNAL \m6|Mux1~0_combout\ : std_logic;
SIGNAL \m6|Mux1~1_combout\ : std_logic;
SIGNAL \m7|F[15]~0_combout\ : std_logic;
SIGNAL \m10|pc[14]~DUPLICATE_q\ : std_logic;
SIGNAL \m6|Add1~58\ : std_logic;
SIGNAL \m6|Add1~61_sumout\ : std_logic;
SIGNAL \m6|Add2~58\ : std_logic;
SIGNAL \m6|Add2~61_sumout\ : std_logic;
SIGNAL \m6|Mux0~0_combout\ : std_logic;
SIGNAL \m8|F[15]~0_combout\ : std_logic;
SIGNAL \m6|Add0~58\ : std_logic;
SIGNAL \m6|Add0~61_sumout\ : std_logic;
SIGNAL \m6|Mux0~2_combout\ : std_logic;
SIGNAL \m6|Mux0~1_combout\ : std_logic;
SIGNAL \m10|Add0~58\ : std_logic;
SIGNAL \m10|Add0~61_sumout\ : std_logic;
SIGNAL \m10|pc[15]~DUPLICATE_q\ : std_logic;
SIGNAL \m6|LessThan1~5_combout\ : std_logic;
SIGNAL \m6|LessThan1~14_combout\ : std_logic;
SIGNAL \m6|LessThan1~13_combout\ : std_logic;
SIGNAL \m6|LessThan1~15_combout\ : std_logic;
SIGNAL \m6|LessThan1~11_combout\ : std_logic;
SIGNAL \m6|LessThan1~12_combout\ : std_logic;
SIGNAL \m6|LessThan1~16_combout\ : std_logic;
SIGNAL \m6|LessThan1~17_combout\ : std_logic;
SIGNAL \m6|LessThan1~18_combout\ : std_logic;
SIGNAL \m6|LessThan0~10_combout\ : std_logic;
SIGNAL \m6|LessThan0~11_combout\ : std_logic;
SIGNAL \m6|LessThan0~8_combout\ : std_logic;
SIGNAL \m6|LessThan0~9_combout\ : std_logic;
SIGNAL \m6|LessThan0~1_combout\ : std_logic;
SIGNAL \m6|LessThan0~12_combout\ : std_logic;
SIGNAL \m6|LessThan0~4_combout\ : std_logic;
SIGNAL \m6|LessThan0~5_combout\ : std_logic;
SIGNAL \m6|LessThan0~6_combout\ : std_logic;
SIGNAL \m6|LessThan0~3_combout\ : std_logic;
SIGNAL \m6|LessThan0~7_combout\ : std_logic;
SIGNAL \m6|Mux17~0_combout\ : std_logic;
SIGNAL \m6|teq~0_combout\ : std_logic;
SIGNAL \m6|teq~q\ : std_logic;
SIGNAL \m6|Equal1~3_combout\ : std_logic;
SIGNAL \m6|Equal1~0_combout\ : std_logic;
SIGNAL \m6|Equal1~2_combout\ : std_logic;
SIGNAL \m6|Equal1~1_combout\ : std_logic;
SIGNAL \m6|Equal1~4_combout\ : std_logic;
SIGNAL \m6|Mux20~0_combout\ : std_logic;
SIGNAL \m6|Mux20~1_combout\ : std_logic;
SIGNAL \m6|taz~q\ : std_logic;
SIGNAL \m6|Mux21~0_combout\ : std_logic;
SIGNAL \m6|Mux21~3_combout\ : std_logic;
SIGNAL \m6|Mux21~2_combout\ : std_logic;
SIGNAL \m6|Mux21~1_combout\ : std_logic;
SIGNAL \m6|Mux21~4_combout\ : std_logic;
SIGNAL \m6|Mux21~5_combout\ : std_logic;
SIGNAL \m6|LessThan0~13_combout\ : std_logic;
SIGNAL \m6|Mux21~6_combout\ : std_logic;
SIGNAL \m6|tbz~q\ : std_logic;
SIGNAL \m6|tagb~q\ : std_logic;
SIGNAL \m6|talb~q\ : std_logic;
SIGNAL \m2|Mux0~0_combout\ : std_logic;
SIGNAL \m2|mem_read~q\ : std_logic;
SIGNAL \m2|Mux5~0_combout\ : std_logic;
SIGNAL \m2|mem_wr~q\ : std_logic;
SIGNAL \m2|Mux7~0_combout\ : std_logic;
SIGNAL \m2|iord~q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \m2|Mux5~1_combout\ : std_logic;
SIGNAL \O_data[0]$latch~combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \O_data[1]$latch~combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \O_data[2]$latch~combout\ : std_logic;
SIGNAL \m4|O_dataB[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \O_data[3]$latch~combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \O_data[4]$latch~combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \O_data[5]$latch~combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \O_data[6]$latch~combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \O_data[7]$latch~combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \O_data[8]$latch~combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \O_data[9]$latch~combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \O_data[10]$latch~combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \O_data[11]$latch~combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \O_data[12]$latch~combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \O_data[13]$latch~combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \O_data[14]$latch~combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \O_data[15]$latch~combout\ : std_logic;
SIGNAL \m10|pc\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \m1|Immediate\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \m6|O\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \m4|O_dataB\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \m2|cu_st\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m2|alu_src2\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \m4|O_dataA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL temp : std_logic_vector(15 DOWNTO 0);
SIGNAL \m2|alu_op\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m6|ALT_INV_O\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \m10|ALT_INV_pc\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \m6|ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[10]~10_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[10]~10_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[11]~9_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[11]~9_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[12]~8_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[12]~8_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[8]~7_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[8]~7_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[7]~5_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[7]~5_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[0]~4_combout\ : std_logic;
SIGNAL \m4|ALT_INV_O_dataB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m1|ALT_INV_Immediate\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \m7|ALT_INV_F[0]~4_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[1]~3_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[1]~3_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[2]~2_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[2]~2_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[3]~1_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[3]~1_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[15]~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_alu_src2\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \m7|ALT_INV_F[15]~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_alu_src1~q\ : std_logic;
SIGNAL \m4|ALT_INV_O_dataA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_iord~q\ : std_logic;
SIGNAL \m12|ALT_INV_state~q\ : std_logic;
SIGNAL \m6|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL ALT_INV_temp : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_O_data[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[14]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_O_data[0]$latch~combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[14]~15_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[14]~15_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[13]~14_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[13]~14_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[9]~13_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[9]~13_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[5]~12_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[5]~12_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \m8|ALT_INV_F[4]~11_combout\ : std_logic;
SIGNAL \m7|ALT_INV_F[4]~11_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux48~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux47~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux46~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux45~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux43~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_cmp~q\ : std_logic;
SIGNAL \m2|ALT_INV_pc_cond~q\ : std_logic;
SIGNAL \m2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux21~5_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux21~4_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \m2|ALT_INV_alu_op\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m6|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \m6|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~18_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~17_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~16_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~15_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~14_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~13_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~12_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~11_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~10_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~9_combout\ : std_logic;
SIGNAL \m6|ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \m4|ALT_INV_O_dataB[1]~DUPLICATE_q\ : std_logic;
SIGNAL \m4|ALT_INV_O_dataB[2]~DUPLICATE_q\ : std_logic;
SIGNAL \m4|ALT_INV_O_dataB[3]~DUPLICATE_q\ : std_logic;
SIGNAL \m4|ALT_INV_O_dataA[3]~DUPLICATE_q\ : std_logic;
SIGNAL \m4|ALT_INV_O_dataA[2]~DUPLICATE_q\ : std_logic;
SIGNAL \m4|ALT_INV_O_dataA[1]~DUPLICATE_q\ : std_logic;
SIGNAL \m4|ALT_INV_O_dataA[0]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|ALT_INV_pc[15]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|ALT_INV_pc[14]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|ALT_INV_pc[13]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|ALT_INV_pc[12]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|ALT_INV_pc[11]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|ALT_INV_pc[10]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|ALT_INV_pc[7]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|ALT_INV_pc[5]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|ALT_INV_pc[4]~DUPLICATE_q\ : std_logic;
SIGNAL \m10|ALT_INV_pc[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_res~input_o\ : std_logic;
SIGNAL \ALT_INV_ins[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_ins[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_ins[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_ins[12]~input_o\ : std_logic;

BEGIN

ww_ins <= ins;
ww_clk <= clk;
ww_res <= res;
state <= ww_state;
seq <= ww_seq;
equal <= ww_equal;
az <= ww_az;
bz <= ww_bz;
agb <= ww_agb;
alb <= ww_alb;
mem_read <= ww_mem_read;
mem_write <= ww_mem_write;
O_add <= ww_O_add;
O_data <= ww_O_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\m6|ALT_INV_O\(3) <= NOT \m6|O\(3);
\m6|ALT_INV_O\(2) <= NOT \m6|O\(2);
\m6|ALT_INV_O\(1) <= NOT \m6|O\(1);
\m10|ALT_INV_pc\(15) <= NOT \m10|pc\(15);
\m10|ALT_INV_pc\(14) <= NOT \m10|pc\(14);
\m10|ALT_INV_pc\(13) <= NOT \m10|pc\(13);
\m10|ALT_INV_pc\(12) <= NOT \m10|pc\(12);
\m10|ALT_INV_pc\(11) <= NOT \m10|pc\(11);
\m10|ALT_INV_pc\(10) <= NOT \m10|pc\(10);
\m10|ALT_INV_pc\(9) <= NOT \m10|pc\(9);
\m10|ALT_INV_pc\(8) <= NOT \m10|pc\(8);
\m10|ALT_INV_pc\(7) <= NOT \m10|pc\(7);
\m10|ALT_INV_pc\(6) <= NOT \m10|pc\(6);
\m10|ALT_INV_pc\(5) <= NOT \m10|pc\(5);
\m10|ALT_INV_pc\(4) <= NOT \m10|pc\(4);
\m10|ALT_INV_pc\(3) <= NOT \m10|pc\(3);
\m10|ALT_INV_pc\(2) <= NOT \m10|pc\(2);
\m10|ALT_INV_pc\(1) <= NOT \m10|pc\(1);
\m10|ALT_INV_pc\(0) <= NOT \m10|pc\(0);
\m6|ALT_INV_Add2~61_sumout\ <= NOT \m6|Add2~61_sumout\;
\m6|ALT_INV_Add1~61_sumout\ <= NOT \m6|Add1~61_sumout\;
\m6|ALT_INV_Add2~57_sumout\ <= NOT \m6|Add2~57_sumout\;
\m6|ALT_INV_Add1~57_sumout\ <= NOT \m6|Add1~57_sumout\;
\m6|ALT_INV_Add0~57_sumout\ <= NOT \m6|Add0~57_sumout\;
\m6|ALT_INV_Add2~53_sumout\ <= NOT \m6|Add2~53_sumout\;
\m6|ALT_INV_Add1~53_sumout\ <= NOT \m6|Add1~53_sumout\;
\m6|ALT_INV_Add0~53_sumout\ <= NOT \m6|Add0~53_sumout\;
\m6|ALT_INV_Add2~49_sumout\ <= NOT \m6|Add2~49_sumout\;
\m6|ALT_INV_Add1~49_sumout\ <= NOT \m6|Add1~49_sumout\;
\m6|ALT_INV_Add0~49_sumout\ <= NOT \m6|Add0~49_sumout\;
\m6|ALT_INV_Add2~45_sumout\ <= NOT \m6|Add2~45_sumout\;
\m6|ALT_INV_Add1~45_sumout\ <= NOT \m6|Add1~45_sumout\;
\m6|ALT_INV_Add0~45_sumout\ <= NOT \m6|Add0~45_sumout\;
\m6|ALT_INV_Add2~41_sumout\ <= NOT \m6|Add2~41_sumout\;
\m6|ALT_INV_Add1~41_sumout\ <= NOT \m6|Add1~41_sumout\;
\m6|ALT_INV_Add0~41_sumout\ <= NOT \m6|Add0~41_sumout\;
\m6|ALT_INV_Add2~37_sumout\ <= NOT \m6|Add2~37_sumout\;
\m6|ALT_INV_Add1~37_sumout\ <= NOT \m6|Add1~37_sumout\;
\m6|ALT_INV_Add0~37_sumout\ <= NOT \m6|Add0~37_sumout\;
\m6|ALT_INV_Add2~33_sumout\ <= NOT \m6|Add2~33_sumout\;
\m6|ALT_INV_Add1~33_sumout\ <= NOT \m6|Add1~33_sumout\;
\m6|ALT_INV_Add0~33_sumout\ <= NOT \m6|Add0~33_sumout\;
\m6|ALT_INV_Add2~29_sumout\ <= NOT \m6|Add2~29_sumout\;
\m6|ALT_INV_Add1~29_sumout\ <= NOT \m6|Add1~29_sumout\;
\m6|ALT_INV_Add0~29_sumout\ <= NOT \m6|Add0~29_sumout\;
\m6|ALT_INV_Add2~25_sumout\ <= NOT \m6|Add2~25_sumout\;
\m6|ALT_INV_Add1~25_sumout\ <= NOT \m6|Add1~25_sumout\;
\m6|ALT_INV_Add0~25_sumout\ <= NOT \m6|Add0~25_sumout\;
\m6|ALT_INV_Add2~21_sumout\ <= NOT \m6|Add2~21_sumout\;
\m6|ALT_INV_Add1~21_sumout\ <= NOT \m6|Add1~21_sumout\;
\m6|ALT_INV_Add0~21_sumout\ <= NOT \m6|Add0~21_sumout\;
\m6|ALT_INV_Add2~17_sumout\ <= NOT \m6|Add2~17_sumout\;
\m6|ALT_INV_Add1~17_sumout\ <= NOT \m6|Add1~17_sumout\;
\m6|ALT_INV_Add0~17_sumout\ <= NOT \m6|Add0~17_sumout\;
\m6|ALT_INV_Add2~13_sumout\ <= NOT \m6|Add2~13_sumout\;
\m6|ALT_INV_Add1~13_sumout\ <= NOT \m6|Add1~13_sumout\;
\m6|ALT_INV_Add0~13_sumout\ <= NOT \m6|Add0~13_sumout\;
\m6|ALT_INV_Add2~9_sumout\ <= NOT \m6|Add2~9_sumout\;
\m6|ALT_INV_Add1~9_sumout\ <= NOT \m6|Add1~9_sumout\;
\m6|ALT_INV_Add0~9_sumout\ <= NOT \m6|Add0~9_sumout\;
\m6|ALT_INV_Add2~5_sumout\ <= NOT \m6|Add2~5_sumout\;
\m6|ALT_INV_Add1~5_sumout\ <= NOT \m6|Add1~5_sumout\;
\m6|ALT_INV_Add0~5_sumout\ <= NOT \m6|Add0~5_sumout\;
\m6|ALT_INV_Add0~1_sumout\ <= NOT \m6|Add0~1_sumout\;
\m6|ALT_INV_Add1~1_sumout\ <= NOT \m6|Add1~1_sumout\;
\m6|ALT_INV_Add2~1_sumout\ <= NOT \m6|Add2~1_sumout\;
\m6|ALT_INV_O\(15) <= NOT \m6|O\(15);
\m6|ALT_INV_O\(14) <= NOT \m6|O\(14);
\m6|ALT_INV_O\(13) <= NOT \m6|O\(13);
\m6|ALT_INV_O\(12) <= NOT \m6|O\(12);
\m6|ALT_INV_O\(11) <= NOT \m6|O\(11);
\m6|ALT_INV_O\(10) <= NOT \m6|O\(10);
\m6|ALT_INV_O\(9) <= NOT \m6|O\(9);
\m6|ALT_INV_O\(8) <= NOT \m6|O\(8);
\m6|ALT_INV_O\(7) <= NOT \m6|O\(7);
\m6|ALT_INV_O\(6) <= NOT \m6|O\(6);
\m6|ALT_INV_O\(5) <= NOT \m6|O\(5);
\m6|ALT_INV_O\(4) <= NOT \m6|O\(4);
\m6|ALT_INV_LessThan1~7_combout\ <= NOT \m6|LessThan1~7_combout\;
\m6|ALT_INV_LessThan1~6_combout\ <= NOT \m6|LessThan1~6_combout\;
\m6|ALT_INV_Equal0~2_combout\ <= NOT \m6|Equal0~2_combout\;
\m6|ALT_INV_LessThan1~5_combout\ <= NOT \m6|LessThan1~5_combout\;
\m6|ALT_INV_LessThan0~12_combout\ <= NOT \m6|LessThan0~12_combout\;
\m6|ALT_INV_LessThan0~11_combout\ <= NOT \m6|LessThan0~11_combout\;
\m6|ALT_INV_LessThan0~10_combout\ <= NOT \m6|LessThan0~10_combout\;
\m8|ALT_INV_F[10]~10_combout\ <= NOT \m8|F[10]~10_combout\;
\m7|ALT_INV_F[10]~10_combout\ <= NOT \m7|F[10]~10_combout\;
\m6|ALT_INV_LessThan0~9_combout\ <= NOT \m6|LessThan0~9_combout\;
\m6|ALT_INV_LessThan0~8_combout\ <= NOT \m6|LessThan0~8_combout\;
\m8|ALT_INV_F[11]~9_combout\ <= NOT \m8|F[11]~9_combout\;
\m7|ALT_INV_F[11]~9_combout\ <= NOT \m7|F[11]~9_combout\;
\m8|ALT_INV_F[12]~8_combout\ <= NOT \m8|F[12]~8_combout\;
\m7|ALT_INV_F[12]~8_combout\ <= NOT \m7|F[12]~8_combout\;
\m8|ALT_INV_F[8]~7_combout\ <= NOT \m8|F[8]~7_combout\;
\m7|ALT_INV_F[8]~7_combout\ <= NOT \m7|F[8]~7_combout\;
\m6|ALT_INV_LessThan0~7_combout\ <= NOT \m6|LessThan0~7_combout\;
\m6|ALT_INV_LessThan0~6_combout\ <= NOT \m6|LessThan0~6_combout\;
\m6|ALT_INV_LessThan0~5_combout\ <= NOT \m6|LessThan0~5_combout\;
\m8|ALT_INV_F[6]~6_combout\ <= NOT \m8|F[6]~6_combout\;
\m7|ALT_INV_F[6]~6_combout\ <= NOT \m7|F[6]~6_combout\;
\m8|ALT_INV_F[7]~5_combout\ <= NOT \m8|F[7]~5_combout\;
\m7|ALT_INV_F[7]~5_combout\ <= NOT \m7|F[7]~5_combout\;
\m6|ALT_INV_Equal0~1_combout\ <= NOT \m6|Equal0~1_combout\;
\m6|ALT_INV_LessThan0~4_combout\ <= NOT \m6|LessThan0~4_combout\;
\m8|ALT_INV_F[0]~4_combout\ <= NOT \m8|F[0]~4_combout\;
\m4|ALT_INV_O_dataB\(0) <= NOT \m4|O_dataB\(0);
\m1|ALT_INV_Immediate\(0) <= NOT \m1|Immediate\(0);
\m7|ALT_INV_F[0]~4_combout\ <= NOT \m7|F[0]~4_combout\;
\m8|ALT_INV_F[1]~3_combout\ <= NOT \m8|F[1]~3_combout\;
\m4|ALT_INV_O_dataB\(1) <= NOT \m4|O_dataB\(1);
\m1|ALT_INV_Immediate\(1) <= NOT \m1|Immediate\(1);
\m7|ALT_INV_F[1]~3_combout\ <= NOT \m7|F[1]~3_combout\;
\m6|ALT_INV_LessThan0~3_combout\ <= NOT \m6|LessThan0~3_combout\;
\m6|ALT_INV_Equal0~0_combout\ <= NOT \m6|Equal0~0_combout\;
\m1|ALT_INV_Immediate\(4) <= NOT \m1|Immediate\(4);
\m1|ALT_INV_Immediate\(5) <= NOT \m1|Immediate\(5);
\m8|ALT_INV_F[2]~2_combout\ <= NOT \m8|F[2]~2_combout\;
\m4|ALT_INV_O_dataB\(2) <= NOT \m4|O_dataB\(2);
\m1|ALT_INV_Immediate\(2) <= NOT \m1|Immediate\(2);
\m7|ALT_INV_F[2]~2_combout\ <= NOT \m7|F[2]~2_combout\;
\m8|ALT_INV_F[3]~1_combout\ <= NOT \m8|F[3]~1_combout\;
\m4|ALT_INV_O_dataB\(3) <= NOT \m4|O_dataB\(3);
\m1|ALT_INV_Immediate\(3) <= NOT \m1|Immediate\(3);
\m7|ALT_INV_F[3]~1_combout\ <= NOT \m7|F[3]~1_combout\;
\m6|ALT_INV_LessThan0~2_combout\ <= NOT \m6|LessThan0~2_combout\;
\m1|ALT_INV_Immediate\(6) <= NOT \m1|Immediate\(6);
\m1|ALT_INV_Immediate\(7) <= NOT \m1|Immediate\(7);
\m6|ALT_INV_LessThan1~4_combout\ <= NOT \m6|LessThan1~4_combout\;
\m1|ALT_INV_Immediate\(8) <= NOT \m1|Immediate\(8);
\m6|ALT_INV_LessThan0~1_combout\ <= NOT \m6|LessThan0~1_combout\;
\m6|ALT_INV_LessThan1~3_combout\ <= NOT \m6|LessThan1~3_combout\;
\m1|ALT_INV_Immediate\(9) <= NOT \m1|Immediate\(9);
\m6|ALT_INV_LessThan1~2_combout\ <= NOT \m6|LessThan1~2_combout\;
\m1|ALT_INV_Immediate\(10) <= NOT \m1|Immediate\(10);
\m6|ALT_INV_LessThan1~1_combout\ <= NOT \m6|LessThan1~1_combout\;
\m1|ALT_INV_Immediate\(11) <= NOT \m1|Immediate\(11);
\m6|ALT_INV_LessThan1~0_combout\ <= NOT \m6|LessThan1~0_combout\;
\m6|ALT_INV_LessThan0~0_combout\ <= NOT \m6|LessThan0~0_combout\;
\m8|ALT_INV_F[15]~0_combout\ <= NOT \m8|F[15]~0_combout\;
\m2|ALT_INV_alu_src2\(1) <= NOT \m2|alu_src2\(1);
\m7|ALT_INV_F[15]~0_combout\ <= NOT \m7|F[15]~0_combout\;
\m2|ALT_INV_alu_src1~q\ <= NOT \m2|alu_src1~q\;
\m4|ALT_INV_O_dataA\(3) <= NOT \m4|O_dataA\(3);
\m4|ALT_INV_O_dataA\(2) <= NOT \m4|O_dataA\(2);
\m4|ALT_INV_O_dataA\(1) <= NOT \m4|O_dataA\(1);
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\m1|ALT_INV_Immediate\(12) <= NOT \m1|Immediate\(12);
\m1|ALT_INV_Immediate\(14) <= NOT \m1|Immediate\(14);
\m1|ALT_INV_Immediate\(13) <= NOT \m1|Immediate\(13);
\m1|ALT_INV_Immediate\(15) <= NOT \m1|Immediate\(15);
\m4|ALT_INV_O_dataA\(0) <= NOT \m4|O_dataA\(0);
\m2|ALT_INV_iord~q\ <= NOT \m2|iord~q\;
\m12|ALT_INV_state~q\ <= NOT \m12|state~q\;
\m6|ALT_INV_Mux0~2_combout\ <= NOT \m6|Mux0~2_combout\;
\m6|ALT_INV_Add0~61_sumout\ <= NOT \m6|Add0~61_sumout\;
ALT_INV_temp(5) <= NOT temp(5);
ALT_INV_temp(4) <= NOT temp(4);
ALT_INV_temp(3) <= NOT temp(3);
ALT_INV_temp(2) <= NOT temp(2);
ALT_INV_temp(1) <= NOT temp(1);
ALT_INV_temp(0) <= NOT temp(0);
\ALT_INV_O_data[15]$latch~combout\ <= NOT \O_data[15]$latch~combout\;
\ALT_INV_O_data[14]$latch~combout\ <= NOT \O_data[14]$latch~combout\;
\ALT_INV_O_data[13]$latch~combout\ <= NOT \O_data[13]$latch~combout\;
\ALT_INV_O_data[12]$latch~combout\ <= NOT \O_data[12]$latch~combout\;
\ALT_INV_O_data[11]$latch~combout\ <= NOT \O_data[11]$latch~combout\;
\ALT_INV_O_data[10]$latch~combout\ <= NOT \O_data[10]$latch~combout\;
\ALT_INV_O_data[9]$latch~combout\ <= NOT \O_data[9]$latch~combout\;
\ALT_INV_O_data[8]$latch~combout\ <= NOT \O_data[8]$latch~combout\;
\ALT_INV_O_data[7]$latch~combout\ <= NOT \O_data[7]$latch~combout\;
\ALT_INV_O_data[6]$latch~combout\ <= NOT \O_data[6]$latch~combout\;
\ALT_INV_O_data[5]$latch~combout\ <= NOT \O_data[5]$latch~combout\;
\ALT_INV_O_data[4]$latch~combout\ <= NOT \O_data[4]$latch~combout\;
\ALT_INV_O_data[3]$latch~combout\ <= NOT \O_data[3]$latch~combout\;
\ALT_INV_O_data[2]$latch~combout\ <= NOT \O_data[2]$latch~combout\;
\ALT_INV_O_data[1]$latch~combout\ <= NOT \O_data[1]$latch~combout\;
\ALT_INV_O_data[0]$latch~combout\ <= NOT \O_data[0]$latch~combout\;
\m6|ALT_INV_Mux0~0_combout\ <= NOT \m6|Mux0~0_combout\;
\m6|ALT_INV_Mux1~0_combout\ <= NOT \m6|Mux1~0_combout\;
\m8|ALT_INV_F[14]~15_combout\ <= NOT \m8|F[14]~15_combout\;
\m7|ALT_INV_F[14]~15_combout\ <= NOT \m7|F[14]~15_combout\;
\m6|ALT_INV_Mux2~0_combout\ <= NOT \m6|Mux2~0_combout\;
\m8|ALT_INV_F[13]~14_combout\ <= NOT \m8|F[13]~14_combout\;
\m7|ALT_INV_F[13]~14_combout\ <= NOT \m7|F[13]~14_combout\;
\m6|ALT_INV_Mux3~0_combout\ <= NOT \m6|Mux3~0_combout\;
\m6|ALT_INV_Mux4~0_combout\ <= NOT \m6|Mux4~0_combout\;
\m6|ALT_INV_Mux5~0_combout\ <= NOT \m6|Mux5~0_combout\;
\m6|ALT_INV_Mux6~0_combout\ <= NOT \m6|Mux6~0_combout\;
\m8|ALT_INV_F[9]~13_combout\ <= NOT \m8|F[9]~13_combout\;
\m7|ALT_INV_F[9]~13_combout\ <= NOT \m7|F[9]~13_combout\;
\m6|ALT_INV_Mux7~0_combout\ <= NOT \m6|Mux7~0_combout\;
\m6|ALT_INV_Mux8~0_combout\ <= NOT \m6|Mux8~0_combout\;
\m6|ALT_INV_Mux9~0_combout\ <= NOT \m6|Mux9~0_combout\;
\m6|ALT_INV_Mux10~0_combout\ <= NOT \m6|Mux10~0_combout\;
\m8|ALT_INV_F[5]~12_combout\ <= NOT \m8|F[5]~12_combout\;
\m7|ALT_INV_F[5]~12_combout\ <= NOT \m7|F[5]~12_combout\;
\m6|ALT_INV_Mux11~0_combout\ <= NOT \m6|Mux11~0_combout\;
\m8|ALT_INV_F[4]~11_combout\ <= NOT \m8|F[4]~11_combout\;
\m7|ALT_INV_F[4]~11_combout\ <= NOT \m7|F[4]~11_combout\;
\m6|ALT_INV_Mux12~0_combout\ <= NOT \m6|Mux12~0_combout\;
\m6|ALT_INV_Mux13~0_combout\ <= NOT \m6|Mux13~0_combout\;
\m6|ALT_INV_Mux14~0_combout\ <= NOT \m6|Mux14~0_combout\;
\m6|ALT_INV_Mux16~1_combout\ <= NOT \m6|Mux16~1_combout\;
\m6|ALT_INV_Mux16~0_combout\ <= NOT \m6|Mux16~0_combout\;
\m6|ALT_INV_Mux15~3_combout\ <= NOT \m6|Mux15~3_combout\;
\m6|ALT_INV_Mux15~2_combout\ <= NOT \m6|Mux15~2_combout\;
\m6|ALT_INV_Mux15~1_combout\ <= NOT \m6|Mux15~1_combout\;
\m6|ALT_INV_Mux15~0_combout\ <= NOT \m6|Mux15~0_combout\;
\ALT_INV_Mux48~0_combout\ <= NOT \Mux48~0_combout\;
\ALT_INV_Mux47~0_combout\ <= NOT \Mux47~0_combout\;
\ALT_INV_Mux46~0_combout\ <= NOT \Mux46~0_combout\;
\ALT_INV_Mux45~0_combout\ <= NOT \Mux45~0_combout\;
\ALT_INV_Mux44~0_combout\ <= NOT \Mux44~0_combout\;
\ALT_INV_Mux43~0_combout\ <= NOT \Mux43~0_combout\;
\ALT_INV_Mux42~0_combout\ <= NOT \Mux42~0_combout\;
\ALT_INV_Mux41~0_combout\ <= NOT \Mux41~0_combout\;
\ALT_INV_Mux40~0_combout\ <= NOT \Mux40~0_combout\;
\ALT_INV_Mux39~0_combout\ <= NOT \Mux39~0_combout\;
\ALT_INV_Mux38~0_combout\ <= NOT \Mux38~0_combout\;
\ALT_INV_Mux37~0_combout\ <= NOT \Mux37~0_combout\;
\ALT_INV_Mux36~2_combout\ <= NOT \Mux36~2_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\m2|ALT_INV_Mux5~1_combout\ <= NOT \m2|Mux5~1_combout\;
\ALT_INV_Mux33~0_combout\ <= NOT \Mux33~0_combout\;
\ALT_INV_Mux36~1_combout\ <= NOT \Mux36~1_combout\;
\ALT_INV_Mux36~0_combout\ <= NOT \Mux36~0_combout\;
\m6|ALT_INV_cmp~q\ <= NOT \m6|cmp~q\;
\m2|ALT_INV_pc_cond~q\ <= NOT \m2|pc_cond~q\;
\m6|ALT_INV_O\(0) <= NOT \m6|O\(0);
\m2|ALT_INV_Mux5~0_combout\ <= NOT \m2|Mux5~0_combout\;
\m6|ALT_INV_Mux21~5_combout\ <= NOT \m6|Mux21~5_combout\;
\m6|ALT_INV_Mux21~4_combout\ <= NOT \m6|Mux21~4_combout\;
\m6|ALT_INV_Mux21~3_combout\ <= NOT \m6|Mux21~3_combout\;
\m6|ALT_INV_Mux21~2_combout\ <= NOT \m6|Mux21~2_combout\;
\m6|ALT_INV_Mux21~1_combout\ <= NOT \m6|Mux21~1_combout\;
\m6|ALT_INV_Mux21~0_combout\ <= NOT \m6|Mux21~0_combout\;
\m6|ALT_INV_LessThan0~13_combout\ <= NOT \m6|LessThan0~13_combout\;
\m6|ALT_INV_Equal1~4_combout\ <= NOT \m6|Equal1~4_combout\;
\m6|ALT_INV_Equal1~3_combout\ <= NOT \m6|Equal1~3_combout\;
\m6|ALT_INV_Equal1~2_combout\ <= NOT \m6|Equal1~2_combout\;
\m6|ALT_INV_Equal1~1_combout\ <= NOT \m6|Equal1~1_combout\;
\m6|ALT_INV_Equal1~0_combout\ <= NOT \m6|Equal1~0_combout\;
\m6|ALT_INV_Mux20~0_combout\ <= NOT \m6|Mux20~0_combout\;
\m2|ALT_INV_alu_op\(0) <= NOT \m2|alu_op\(0);
\m2|ALT_INV_alu_op\(1) <= NOT \m2|alu_op\(1);
\m2|ALT_INV_alu_op\(2) <= NOT \m2|alu_op\(2);
\m6|ALT_INV_Equal0~4_combout\ <= NOT \m6|Equal0~4_combout\;
\m6|ALT_INV_Equal0~3_combout\ <= NOT \m6|Equal0~3_combout\;
\m2|ALT_INV_alu_op\(3) <= NOT \m2|alu_op\(3);
\m6|ALT_INV_Mux17~0_combout\ <= NOT \m6|Mux17~0_combout\;
\m6|ALT_INV_LessThan1~18_combout\ <= NOT \m6|LessThan1~18_combout\;
\m6|ALT_INV_LessThan1~17_combout\ <= NOT \m6|LessThan1~17_combout\;
\m6|ALT_INV_LessThan1~16_combout\ <= NOT \m6|LessThan1~16_combout\;
\m6|ALT_INV_LessThan1~15_combout\ <= NOT \m6|LessThan1~15_combout\;
\m6|ALT_INV_LessThan1~14_combout\ <= NOT \m6|LessThan1~14_combout\;
\m6|ALT_INV_LessThan1~13_combout\ <= NOT \m6|LessThan1~13_combout\;
\m6|ALT_INV_LessThan1~12_combout\ <= NOT \m6|LessThan1~12_combout\;
\m6|ALT_INV_LessThan1~11_combout\ <= NOT \m6|LessThan1~11_combout\;
\m6|ALT_INV_LessThan1~10_combout\ <= NOT \m6|LessThan1~10_combout\;
\m6|ALT_INV_LessThan1~9_combout\ <= NOT \m6|LessThan1~9_combout\;
\m6|ALT_INV_LessThan1~8_combout\ <= NOT \m6|LessThan1~8_combout\;
\m4|ALT_INV_O_dataB[1]~DUPLICATE_q\ <= NOT \m4|O_dataB[1]~DUPLICATE_q\;
\m4|ALT_INV_O_dataB[2]~DUPLICATE_q\ <= NOT \m4|O_dataB[2]~DUPLICATE_q\;
\m4|ALT_INV_O_dataB[3]~DUPLICATE_q\ <= NOT \m4|O_dataB[3]~DUPLICATE_q\;
\m4|ALT_INV_O_dataA[3]~DUPLICATE_q\ <= NOT \m4|O_dataA[3]~DUPLICATE_q\;
\m4|ALT_INV_O_dataA[2]~DUPLICATE_q\ <= NOT \m4|O_dataA[2]~DUPLICATE_q\;
\m4|ALT_INV_O_dataA[1]~DUPLICATE_q\ <= NOT \m4|O_dataA[1]~DUPLICATE_q\;
\m4|ALT_INV_O_dataA[0]~DUPLICATE_q\ <= NOT \m4|O_dataA[0]~DUPLICATE_q\;
\m10|ALT_INV_pc[15]~DUPLICATE_q\ <= NOT \m10|pc[15]~DUPLICATE_q\;
\m10|ALT_INV_pc[14]~DUPLICATE_q\ <= NOT \m10|pc[14]~DUPLICATE_q\;
\m10|ALT_INV_pc[13]~DUPLICATE_q\ <= NOT \m10|pc[13]~DUPLICATE_q\;
\m10|ALT_INV_pc[12]~DUPLICATE_q\ <= NOT \m10|pc[12]~DUPLICATE_q\;
\m10|ALT_INV_pc[11]~DUPLICATE_q\ <= NOT \m10|pc[11]~DUPLICATE_q\;
\m10|ALT_INV_pc[10]~DUPLICATE_q\ <= NOT \m10|pc[10]~DUPLICATE_q\;
\m10|ALT_INV_pc[7]~DUPLICATE_q\ <= NOT \m10|pc[7]~DUPLICATE_q\;
\m10|ALT_INV_pc[5]~DUPLICATE_q\ <= NOT \m10|pc[5]~DUPLICATE_q\;
\m10|ALT_INV_pc[4]~DUPLICATE_q\ <= NOT \m10|pc[4]~DUPLICATE_q\;
\m10|ALT_INV_pc[2]~DUPLICATE_q\ <= NOT \m10|pc[2]~DUPLICATE_q\;
\ALT_INV_res~input_o\ <= NOT \res~input_o\;
\ALT_INV_ins[15]~input_o\ <= NOT \ins[15]~input_o\;
\ALT_INV_ins[14]~input_o\ <= NOT \ins[14]~input_o\;
\ALT_INV_ins[13]~input_o\ <= NOT \ins[13]~input_o\;
\ALT_INV_ins[12]~input_o\ <= NOT \ins[12]~input_o\;
ALT_INV_temp(15) <= NOT temp(15);
ALT_INV_temp(14) <= NOT temp(14);
ALT_INV_temp(13) <= NOT temp(13);
ALT_INV_temp(12) <= NOT temp(12);
ALT_INV_temp(11) <= NOT temp(11);
ALT_INV_temp(10) <= NOT temp(10);
ALT_INV_temp(9) <= NOT temp(9);
ALT_INV_temp(8) <= NOT temp(8);
ALT_INV_temp(7) <= NOT temp(7);
ALT_INV_temp(6) <= NOT temp(6);

-- Location: IOOBUF_X76_Y0_N36
\state[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m2|cu_st\(0),
	devoe => ww_devoe,
	o => ww_state(0));

-- Location: IOOBUF_X72_Y0_N36
\state[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m2|cu_st\(1),
	devoe => ww_devoe,
	o => ww_state(1));

-- Location: IOOBUF_X50_Y0_N59
\state[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m2|cu_st\(2),
	devoe => ww_devoe,
	o => ww_state(2));

-- Location: IOOBUF_X54_Y0_N2
\state[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m2|cu_st\(3),
	devoe => ww_devoe,
	o => ww_state(3));

-- Location: IOOBUF_X68_Y0_N19
\seq~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m12|z~0_combout\,
	devoe => ww_devoe,
	o => ww_seq);

-- Location: IOOBUF_X70_Y0_N36
\equal~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m6|teq~q\,
	devoe => ww_devoe,
	o => ww_equal);

-- Location: IOOBUF_X76_Y0_N53
\az~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m6|taz~q\,
	devoe => ww_devoe,
	o => ww_az);

-- Location: IOOBUF_X74_Y0_N76
\bz~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m6|tbz~q\,
	devoe => ww_devoe,
	o => ww_bz);

-- Location: IOOBUF_X74_Y0_N42
\agb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m6|tagb~q\,
	devoe => ww_devoe,
	o => ww_agb);

-- Location: IOOBUF_X70_Y0_N53
\alb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m6|talb~q\,
	devoe => ww_devoe,
	o => ww_alb);

-- Location: IOOBUF_X62_Y0_N2
\mem_read~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m2|mem_read~q\,
	devoe => ww_devoe,
	o => ww_mem_read);

-- Location: IOOBUF_X40_Y81_N2
\mem_write~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \m2|mem_wr~q\,
	devoe => ww_devoe,
	o => ww_mem_write);

-- Location: IOOBUF_X66_Y0_N42
\O_add[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~1_combout\,
	devoe => ww_devoe,
	o => ww_O_add(0));

-- Location: IOOBUF_X60_Y0_N2
\O_add[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(1));

-- Location: IOOBUF_X60_Y0_N19
\O_add[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(2));

-- Location: IOOBUF_X52_Y0_N53
\O_add[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(3));

-- Location: IOOBUF_X54_Y0_N19
\O_add[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(4));

-- Location: IOOBUF_X58_Y0_N76
\O_add[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(5));

-- Location: IOOBUF_X50_Y0_N93
\O_add[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(6));

-- Location: IOOBUF_X58_Y0_N93
\O_add[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(7));

-- Location: IOOBUF_X60_Y0_N36
\O_add[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(8));

-- Location: IOOBUF_X56_Y0_N36
\O_add[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(9));

-- Location: IOOBUF_X56_Y0_N19
\O_add[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(10));

-- Location: IOOBUF_X56_Y0_N2
\O_add[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(11));

-- Location: IOOBUF_X62_Y0_N19
\O_add[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(12));

-- Location: IOOBUF_X58_Y0_N42
\O_add[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(13));

-- Location: IOOBUF_X62_Y0_N53
\O_add[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(14));

-- Location: IOOBUF_X62_Y0_N36
\O_add[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_O_add(15));

-- Location: IOOBUF_X68_Y0_N2
\O_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(0));

-- Location: IOOBUF_X72_Y0_N2
\O_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(1));

-- Location: IOOBUF_X68_Y0_N53
\O_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(2));

-- Location: IOOBUF_X72_Y0_N53
\O_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(3));

-- Location: IOOBUF_X40_Y0_N53
\O_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(4));

-- Location: IOOBUF_X74_Y0_N59
\O_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(5));

-- Location: IOOBUF_X54_Y0_N53
\O_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(6));

-- Location: IOOBUF_X60_Y0_N53
\O_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(7));

-- Location: IOOBUF_X78_Y0_N19
\O_data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(8));

-- Location: IOOBUF_X40_Y81_N19
\O_data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(9));

-- Location: IOOBUF_X52_Y0_N19
\O_data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[10]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(10));

-- Location: IOOBUF_X52_Y0_N2
\O_data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[11]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(11));

-- Location: IOOBUF_X34_Y0_N59
\O_data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[12]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(12));

-- Location: IOOBUF_X50_Y0_N76
\O_data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[13]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(13));

-- Location: IOOBUF_X74_Y0_N93
\O_data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[14]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(14));

-- Location: IOOBUF_X56_Y0_N53
\O_data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \O_data[15]$latch~combout\,
	devoe => ww_devoe,
	o => ww_O_data(15));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X78_Y0_N35
\ins[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(12),
	o => \ins[12]~input_o\);

-- Location: FF_X65_Y3_N8
\m1|Immediate[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(12));

-- Location: IOIBUF_X66_Y0_N75
\res~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_res,
	o => \res~input_o\);

-- Location: FF_X64_Y6_N58
\m2|cu_st[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(12),
	sload => VCC,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|cu_st\(0));

-- Location: IOIBUF_X68_Y0_N35
\ins[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(13),
	o => \ins[13]~input_o\);

-- Location: FF_X65_Y3_N17
\m1|Immediate[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(13));

-- Location: FF_X66_Y4_N16
\m2|cu_st[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(13),
	sload => VCC,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|cu_st\(1));

-- Location: IOIBUF_X70_Y0_N1
\ins[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(14),
	o => \ins[14]~input_o\);

-- Location: FF_X65_Y3_N38
\m1|Immediate[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(14));

-- Location: FF_X62_Y4_N49
\m2|cu_st[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(14),
	sload => VCC,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|cu_st\(2));

-- Location: IOIBUF_X70_Y0_N18
\ins[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(15),
	o => \ins[15]~input_o\);

-- Location: FF_X65_Y3_N26
\m1|Immediate[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(15));

-- Location: FF_X62_Y4_N28
\m2|cu_st[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(15),
	sload => VCC,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|cu_st\(3));

-- Location: LABCELL_X67_Y1_N24
\m12|next_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m12|next_state~0_combout\ = ( !\m12|state~q\ & ( !\ins[12]~input_o\ & ( (\ins[14]~input_o\ & (!\ins[15]~input_o\ & \ins[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ins[14]~input_o\,
	datab => \ALT_INV_ins[15]~input_o\,
	datac => \ALT_INV_ins[13]~input_o\,
	datae => \m12|ALT_INV_state~q\,
	dataf => \ALT_INV_ins[12]~input_o\,
	combout => \m12|next_state~0_combout\);

-- Location: FF_X67_Y1_N25
\m12|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m12|next_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m12|state~q\);

-- Location: LABCELL_X64_Y3_N0
\m12|z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m12|z~0_combout\ = ( !\ins[15]~input_o\ & ( (\ins[13]~input_o\ & (\ins[14]~input_o\ & (!\ins[12]~input_o\ & \m12|state~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ins[13]~input_o\,
	datab => \ALT_INV_ins[14]~input_o\,
	datac => \ALT_INV_ins[12]~input_o\,
	datad => \m12|ALT_INV_state~q\,
	dataf => \ALT_INV_ins[15]~input_o\,
	combout => \m12|z~0_combout\);

-- Location: LABCELL_X64_Y3_N12
\m2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|Mux2~0_combout\ = ( \m1|Immediate\(12) & ( (\m1|Immediate\(15) & ((\m1|Immediate\(14)) # (\m1|Immediate\(13)))) ) ) # ( !\m1|Immediate\(12) & ( (\m1|Immediate\(13) & (\m1|Immediate\(15) & \m1|Immediate\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datab => \m1|ALT_INV_Immediate\(15),
	datad => \m1|ALT_INV_Immediate\(14),
	dataf => \m1|ALT_INV_Immediate\(12),
	combout => \m2|Mux2~0_combout\);

-- Location: FF_X64_Y3_N14
\m2|alu_src2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m2|Mux2~0_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|alu_src2\(1));

-- Location: LABCELL_X64_Y3_N15
\m8|F[12]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[12]~8_combout\ = ( \m1|Immediate\(12) & ( \m2|alu_src2\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_alu_src2\(1),
	dataf => \m1|ALT_INV_Immediate\(12),
	combout => \m8|F[12]~8_combout\);

-- Location: LABCELL_X64_Y3_N54
\m2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|Mux1~0_combout\ = ( \m1|Immediate\(12) & ( (\m1|Immediate\(15) & (!\m1|Immediate\(13) $ (!\m1|Immediate\(14)))) ) ) # ( !\m1|Immediate\(12) & ( (\m1|Immediate\(13) & (\m1|Immediate\(15) & \m1|Immediate\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|ALT_INV_Immediate\(13),
	datac => \m1|ALT_INV_Immediate\(15),
	datad => \m1|ALT_INV_Immediate\(14),
	dataf => \m1|ALT_INV_Immediate\(12),
	combout => \m2|Mux1~0_combout\);

-- Location: FF_X64_Y3_N56
\m2|alu_src1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m2|Mux1~0_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|alu_src1~q\);

-- Location: LABCELL_X63_Y3_N0
\m10|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~1_sumout\ = SUM(( \m10|pc\(0) ) + ( VCC ) + ( !VCC ))
-- \m10|Add0~2\ = CARRY(( \m10|pc\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc\(0),
	cin => GND,
	sumout => \m10|Add0~1_sumout\,
	cout => \m10|Add0~2\);

-- Location: IOIBUF_X54_Y0_N35
\ins[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(7),
	o => \ins[7]~input_o\);

-- Location: FF_X63_Y4_N5
\m1|Immediate[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(7));

-- Location: IOIBUF_X64_Y0_N52
\ins[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(6),
	o => \ins[6]~input_o\);

-- Location: FF_X63_Y2_N11
\m1|Immediate[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(6));

-- Location: LABCELL_X62_Y4_N42
\m6|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~2_combout\ = ( \m10|pc\(6) & ( \m2|alu_src1~q\ & ( (\m2|alu_src2\(1) & (\m1|Immediate\(6) & (!\m10|pc[7]~DUPLICATE_q\ $ (\m1|Immediate\(7))))) ) ) ) # ( !\m10|pc\(6) & ( \m2|alu_src1~q\ & ( (!\m2|alu_src2\(1) & (!\m10|pc[7]~DUPLICATE_q\)) # 
-- (\m2|alu_src2\(1) & (!\m1|Immediate\(6) & (!\m10|pc[7]~DUPLICATE_q\ $ (\m1|Immediate\(7))))) ) ) ) # ( \m10|pc\(6) & ( !\m2|alu_src1~q\ & ( (!\m2|alu_src2\(1)) # ((!\m1|Immediate\(7) & !\m1|Immediate\(6))) ) ) ) # ( !\m10|pc\(6) & ( !\m2|alu_src1~q\ & ( 
-- (!\m2|alu_src2\(1)) # ((!\m1|Immediate\(7) & !\m1|Immediate\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101011001001100010000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datab => \m10|ALT_INV_pc[7]~DUPLICATE_q\,
	datac => \m1|ALT_INV_Immediate\(7),
	datad => \m1|ALT_INV_Immediate\(6),
	datae => \m10|ALT_INV_pc\(6),
	dataf => \m2|ALT_INV_alu_src1~q\,
	combout => \m6|LessThan0~2_combout\);

-- Location: LABCELL_X62_Y2_N27
\m2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|Mux6~0_combout\ = ( \m1|Immediate\(15) & ( (\m1|Immediate\(14) & (!\m1|Immediate\(13) $ (!\m1|Immediate\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|ALT_INV_Immediate\(13),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(12),
	dataf => \m1|ALT_INV_Immediate\(15),
	combout => \m2|Mux6~0_combout\);

-- Location: FF_X62_Y2_N29
\m2|pc_cond\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m2|Mux6~0_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|pc_cond~q\);

-- Location: IOIBUF_X76_Y0_N1
\ins[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(3),
	o => \ins[3]~input_o\);

-- Location: FF_X63_Y5_N47
\m1|Immediate[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(3));

-- Location: IOIBUF_X52_Y0_N35
\ins[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(11),
	o => \ins[11]~input_o\);

-- Location: FF_X63_Y5_N53
\m1|Immediate[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(11));

-- Location: LABCELL_X61_Y5_N24
\m3|F[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m3|F[3]~0_combout\ = ( \m1|Immediate\(3) & ( \m1|Immediate\(11) ) ) # ( !\m1|Immediate\(3) & ( \m1|Immediate\(11) & ( \m2|pc_cond~q\ ) ) ) # ( \m1|Immediate\(3) & ( !\m1|Immediate\(11) & ( !\m2|pc_cond~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_pc_cond~q\,
	datae => \m1|ALT_INV_Immediate\(3),
	dataf => \m1|ALT_INV_Immediate\(11),
	combout => \m3|F[3]~0_combout\);

-- Location: FF_X63_Y5_N35
\m4|O_dataB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m3|F[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataB\(3));

-- Location: LABCELL_X63_Y5_N24
\m8|F[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[3]~1_combout\ = ( \m2|alu_src2\(1) & ( \m1|Immediate\(3) ) ) # ( !\m2|alu_src2\(1) & ( \m4|O_dataB\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m4|ALT_INV_O_dataB\(3),
	datad => \m1|ALT_INV_Immediate\(3),
	dataf => \m2|ALT_INV_alu_src2\(1),
	combout => \m8|F[3]~1_combout\);

-- Location: IOIBUF_X64_Y0_N1
\ins[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(2),
	o => \ins[2]~input_o\);

-- Location: FF_X63_Y4_N41
\m1|Immediate[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(2));

-- Location: IOIBUF_X64_Y0_N35
\ins[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(10),
	o => \ins[10]~input_o\);

-- Location: FF_X64_Y3_N53
\m1|Immediate[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(10));

-- Location: MLABCELL_X65_Y3_N48
\m3|F[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m3|F[2]~1_combout\ = (!\m2|pc_cond~q\ & ((\m1|Immediate\(2)))) # (\m2|pc_cond~q\ & (\m1|Immediate\(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_pc_cond~q\,
	datab => \m1|ALT_INV_Immediate\(10),
	datac => \m1|ALT_INV_Immediate\(2),
	combout => \m3|F[2]~1_combout\);

-- Location: FF_X65_Y3_N49
\m4|O_dataB[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m3|F[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataB[2]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y4_N51
\m8|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[2]~2_combout\ = ( \m4|O_dataB[2]~DUPLICATE_q\ & ( (!\m2|alu_src2\(1)) # (\m1|Immediate\(2)) ) ) # ( !\m4|O_dataB[2]~DUPLICATE_q\ & ( (\m1|Immediate\(2) & \m2|alu_src2\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m1|ALT_INV_Immediate\(2),
	datad => \m2|ALT_INV_alu_src2\(1),
	dataf => \m4|ALT_INV_O_dataB[2]~DUPLICATE_q\,
	combout => \m8|F[2]~2_combout\);

-- Location: FF_X63_Y2_N35
\m4|O_dataA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataA\(3));

-- Location: LABCELL_X63_Y2_N24
\m7|F[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[3]~1_combout\ = (!\m2|alu_src1~q\ & (\m4|O_dataA\(3))) # (\m2|alu_src1~q\ & ((\m10|pc\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m4|ALT_INV_O_dataA\(3),
	datab => \m10|ALT_INV_pc\(3),
	datad => \m2|ALT_INV_alu_src1~q\,
	combout => \m7|F[3]~1_combout\);

-- Location: IOIBUF_X66_Y0_N58
\ins[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(5),
	o => \ins[5]~input_o\);

-- Location: FF_X63_Y3_N59
\m1|Immediate[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(5));

-- Location: IOIBUF_X66_Y0_N92
\ins[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(4),
	o => \ins[4]~input_o\);

-- Location: FF_X63_Y3_N56
\m1|Immediate[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(4));

-- Location: LABCELL_X63_Y3_N54
\m6|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Equal0~0_combout\ = ( \m1|Immediate\(4) & ( \m10|pc\(4) & ( (!\m2|alu_src1~q\ & (((!\m2|alu_src2\(1))))) # (\m2|alu_src1~q\ & (\m2|alu_src2\(1) & (!\m10|pc[5]~DUPLICATE_q\ $ (\m1|Immediate\(5))))) ) ) ) # ( !\m1|Immediate\(4) & ( \m10|pc\(4) & ( 
-- (!\m2|alu_src1~q\ & ((!\m1|Immediate\(5)) # (!\m2|alu_src2\(1)))) ) ) ) # ( \m1|Immediate\(4) & ( !\m10|pc\(4) & ( (!\m2|alu_src2\(1) & ((!\m10|pc[5]~DUPLICATE_q\) # (!\m2|alu_src1~q\))) ) ) ) # ( !\m1|Immediate\(4) & ( !\m10|pc\(4) & ( 
-- (!\m10|pc[5]~DUPLICATE_q\ & ((!\m1|Immediate\(5)) # ((!\m2|alu_src2\(1))))) # (\m10|pc[5]~DUPLICATE_q\ & (!\m2|alu_src1~q\ $ (((\m1|Immediate\(5) & \m2|alu_src2\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001001111110100000000011110000110000001111000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc[5]~DUPLICATE_q\,
	datab => \m1|ALT_INV_Immediate\(5),
	datac => \m2|ALT_INV_alu_src1~q\,
	datad => \m2|ALT_INV_alu_src2\(1),
	datae => \m1|ALT_INV_Immediate\(4),
	dataf => \m10|ALT_INV_pc\(4),
	combout => \m6|Equal0~0_combout\);

-- Location: FF_X63_Y5_N58
\m4|O_dataA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataA\(2));

-- Location: LABCELL_X64_Y3_N33
\m7|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[2]~2_combout\ = ( \m4|O_dataA\(2) & ( (!\m2|alu_src1~q\) # (\m10|pc[2]~DUPLICATE_q\) ) ) # ( !\m4|O_dataA\(2) & ( (\m2|alu_src1~q\ & \m10|pc[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datad => \m10|ALT_INV_pc[2]~DUPLICATE_q\,
	dataf => \m4|ALT_INV_O_dataA\(2),
	combout => \m7|F[2]~2_combout\);

-- Location: LABCELL_X63_Y4_N36
\m6|LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~6_combout\ = ( \m6|Equal0~0_combout\ & ( \m7|F[2]~2_combout\ & ( (\m6|LessThan0~2_combout\ & ((!\m8|F[3]~1_combout\ & ((!\m8|F[2]~2_combout\) # (\m7|F[3]~1_combout\))) # (\m8|F[3]~1_combout\ & (!\m8|F[2]~2_combout\ & \m7|F[3]~1_combout\)))) 
-- ) ) ) # ( \m6|Equal0~0_combout\ & ( !\m7|F[2]~2_combout\ & ( (\m6|LessThan0~2_combout\ & (!\m8|F[3]~1_combout\ & \m7|F[3]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010000000000000000000100000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan0~2_combout\,
	datab => \m8|ALT_INV_F[3]~1_combout\,
	datac => \m8|ALT_INV_F[2]~2_combout\,
	datad => \m7|ALT_INV_F[3]~1_combout\,
	datae => \m6|ALT_INV_Equal0~0_combout\,
	dataf => \m7|ALT_INV_F[2]~2_combout\,
	combout => \m6|LessThan1~6_combout\);

-- Location: IOIBUF_X58_Y0_N58
\ins[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(8),
	o => \ins[8]~input_o\);

-- Location: FF_X63_Y4_N56
\m1|Immediate[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(8));

-- Location: LABCELL_X62_Y4_N24
\m6|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~4_combout\ = ( \m1|Immediate\(8) & ( \m10|pc\(8) & ( !\m2|alu_src1~q\ $ (!\m2|alu_src2\(1)) ) ) ) # ( !\m1|Immediate\(8) & ( \m10|pc\(8) & ( \m2|alu_src1~q\ ) ) ) # ( \m1|Immediate\(8) & ( !\m10|pc\(8) & ( \m2|alu_src2\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100110011001100110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m2|ALT_INV_alu_src2\(1),
	datae => \m1|ALT_INV_Immediate\(8),
	dataf => \m10|ALT_INV_pc\(8),
	combout => \m6|LessThan1~4_combout\);

-- Location: LABCELL_X63_Y3_N48
\m6|LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~8_combout\ = ( \m1|Immediate\(5) & ( \m10|pc[5]~DUPLICATE_q\ & ( (\m2|alu_src1~q\ & ((!\m2|alu_src2\(1)) # ((\m10|pc\(4) & !\m1|Immediate\(4))))) ) ) ) # ( !\m1|Immediate\(5) & ( \m10|pc[5]~DUPLICATE_q\ & ( \m2|alu_src1~q\ ) ) ) # ( 
-- \m1|Immediate\(5) & ( !\m10|pc[5]~DUPLICATE_q\ & ( (\m2|alu_src1~q\ & (\m10|pc\(4) & !\m2|alu_src2\(1))) ) ) ) # ( !\m1|Immediate\(5) & ( !\m10|pc[5]~DUPLICATE_q\ & ( (\m2|alu_src1~q\ & (\m10|pc\(4) & ((!\m1|Immediate\(4)) # (!\m2|alu_src2\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000000100010000000001010101010101010101010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m10|ALT_INV_pc\(4),
	datac => \m1|ALT_INV_Immediate\(4),
	datad => \m2|ALT_INV_alu_src2\(1),
	datae => \m1|ALT_INV_Immediate\(5),
	dataf => \m10|ALT_INV_pc[5]~DUPLICATE_q\,
	combout => \m6|LessThan1~8_combout\);

-- Location: LABCELL_X63_Y4_N30
\m8|F[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[7]~5_combout\ = (\m1|Immediate\(7) & \m2|alu_src2\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m1|ALT_INV_Immediate\(7),
	datad => \m2|ALT_INV_alu_src2\(1),
	combout => \m8|F[7]~5_combout\);

-- Location: FF_X63_Y6_N5
\m2|alu_op[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(14),
	sload => VCC,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|alu_op\(2));

-- Location: LABCELL_X63_Y2_N51
\m7|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[6]~6_combout\ = (\m2|alu_src1~q\ & \m10|pc\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_alu_src1~q\,
	datad => \m10|ALT_INV_pc\(6),
	combout => \m7|F[6]~6_combout\);

-- Location: LABCELL_X66_Y4_N57
\m2|alu_op[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|alu_op[1]~feeder_combout\ = ( \m1|Immediate\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \m1|ALT_INV_Immediate\(13),
	combout => \m2|alu_op[1]~feeder_combout\);

-- Location: FF_X66_Y4_N59
\m2|alu_op[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m2|alu_op[1]~feeder_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|alu_op\(1));

-- Location: FF_X62_Y4_N47
\m2|alu_op[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(12),
	sload => VCC,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|alu_op\(0));

-- Location: MLABCELL_X65_Y4_N24
\m7|F[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[4]~11_combout\ = ( \m2|alu_src1~q\ & ( \m10|pc[4]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc[4]~DUPLICATE_q\,
	dataf => \m2|ALT_INV_alu_src1~q\,
	combout => \m7|F[4]~11_combout\);

-- Location: LABCELL_X63_Y2_N39
\m8|F[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[4]~11_combout\ = (\m2|alu_src2\(1) & \m1|Immediate\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datad => \m1|ALT_INV_Immediate\(4),
	combout => \m8|F[4]~11_combout\);

-- Location: FF_X63_Y5_N59
\m4|O_dataA[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataA[2]~DUPLICATE_q\);

-- Location: IOIBUF_X64_Y0_N18
\ins[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(1),
	o => \ins[1]~input_o\);

-- Location: FF_X64_Y3_N2
\m1|Immediate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(1));

-- Location: IOIBUF_X72_Y0_N18
\ins[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(9),
	o => \ins[9]~input_o\);

-- Location: FF_X64_Y3_N29
\m1|Immediate[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(9));

-- Location: LABCELL_X64_Y3_N30
\m3|F[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m3|F[1]~2_combout\ = ( \m1|Immediate\(9) & ( (\m1|Immediate\(1)) # (\m2|pc_cond~q\) ) ) # ( !\m1|Immediate\(9) & ( (!\m2|pc_cond~q\ & \m1|Immediate\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_pc_cond~q\,
	datac => \m1|ALT_INV_Immediate\(1),
	dataf => \m1|ALT_INV_Immediate\(9),
	combout => \m3|F[1]~2_combout\);

-- Location: FF_X64_Y3_N32
\m4|O_dataB[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m3|F[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataB[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y3_N21
\m8|F[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[1]~3_combout\ = ( \m4|O_dataB[1]~DUPLICATE_q\ & ( (!\m2|alu_src2\(1)) # (\m1|Immediate\(1)) ) ) # ( !\m4|O_dataB[1]~DUPLICATE_q\ & ( (\m2|alu_src2\(1) & \m1|Immediate\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_alu_src2\(1),
	datad => \m1|ALT_INV_Immediate\(1),
	dataf => \m4|ALT_INV_O_dataB[1]~DUPLICATE_q\,
	combout => \m8|F[1]~3_combout\);

-- Location: FF_X63_Y3_N53
\m4|O_dataA[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataA[1]~DUPLICATE_q\);

-- Location: IOIBUF_X76_Y0_N18
\ins[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ins(0),
	o => \ins[0]~input_o\);

-- Location: FF_X65_Y4_N59
\m1|Immediate[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ins[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1|Immediate\(0));

-- Location: MLABCELL_X65_Y3_N21
\m3|F[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m3|F[0]~3_combout\ = (!\m2|pc_cond~q\ & (\m1|Immediate\(0))) # (\m2|pc_cond~q\ & ((\m1|Immediate\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|ALT_INV_Immediate\(0),
	datac => \m1|ALT_INV_Immediate\(8),
	datad => \m2|ALT_INV_pc_cond~q\,
	combout => \m3|F[0]~3_combout\);

-- Location: FF_X65_Y3_N23
\m4|O_dataB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m3|F[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataB\(0));

-- Location: MLABCELL_X65_Y4_N42
\m8|F[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[0]~4_combout\ = ( \m2|alu_src2\(1) & ( \m1|Immediate\(0) ) ) # ( !\m2|alu_src2\(1) & ( \m4|O_dataB\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m4|ALT_INV_O_dataB\(0),
	datad => \m1|ALT_INV_Immediate\(0),
	dataf => \m2|ALT_INV_alu_src2\(1),
	combout => \m8|F[0]~4_combout\);

-- Location: FF_X62_Y5_N55
\m4|O_dataA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataA\(0));

-- Location: LABCELL_X64_Y5_N0
\m6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~1_sumout\ = SUM(( (!\m2|alu_src1~q\ & ((\m4|O_dataA\(0)))) # (\m2|alu_src1~q\ & (\m10|pc\(0))) ) + ( \m8|F[0]~4_combout\ ) + ( !VCC ))
-- \m6|Add0~2\ = CARRY(( (!\m2|alu_src1~q\ & ((\m4|O_dataA\(0)))) # (\m2|alu_src1~q\ & (\m10|pc\(0))) ) + ( \m8|F[0]~4_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc\(0),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m8|ALT_INV_F[0]~4_combout\,
	datad => \m4|ALT_INV_O_dataA\(0),
	cin => GND,
	sumout => \m6|Add0~1_sumout\,
	cout => \m6|Add0~2\);

-- Location: LABCELL_X64_Y5_N3
\m6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~5_sumout\ = SUM(( \m8|F[1]~3_combout\ ) + ( (!\m2|alu_src1~q\ & ((\m4|O_dataA[1]~DUPLICATE_q\))) # (\m2|alu_src1~q\ & (\m10|pc\(1))) ) + ( \m6|Add0~2\ ))
-- \m6|Add0~6\ = CARRY(( \m8|F[1]~3_combout\ ) + ( (!\m2|alu_src1~q\ & ((\m4|O_dataA[1]~DUPLICATE_q\))) # (\m2|alu_src1~q\ & (\m10|pc\(1))) ) + ( \m6|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc\(1),
	datad => \m8|ALT_INV_F[1]~3_combout\,
	dataf => \m4|ALT_INV_O_dataA[1]~DUPLICATE_q\,
	cin => \m6|Add0~2\,
	sumout => \m6|Add0~5_sumout\,
	cout => \m6|Add0~6\);

-- Location: LABCELL_X64_Y5_N6
\m6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~9_sumout\ = SUM(( \m8|F[2]~2_combout\ ) + ( (!\m2|alu_src1~q\ & ((\m4|O_dataA[2]~DUPLICATE_q\))) # (\m2|alu_src1~q\ & (\m10|pc[2]~DUPLICATE_q\)) ) + ( \m6|Add0~6\ ))
-- \m6|Add0~10\ = CARRY(( \m8|F[2]~2_combout\ ) + ( (!\m2|alu_src1~q\ & ((\m4|O_dataA[2]~DUPLICATE_q\))) # (\m2|alu_src1~q\ & (\m10|pc[2]~DUPLICATE_q\)) ) + ( \m6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc[2]~DUPLICATE_q\,
	datad => \m8|ALT_INV_F[2]~2_combout\,
	dataf => \m4|ALT_INV_O_dataA[2]~DUPLICATE_q\,
	cin => \m6|Add0~6\,
	sumout => \m6|Add0~9_sumout\,
	cout => \m6|Add0~10\);

-- Location: LABCELL_X64_Y5_N9
\m6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~13_sumout\ = SUM(( (!\m2|alu_src1~q\ & ((\m4|O_dataA\(3)))) # (\m2|alu_src1~q\ & (\m10|pc\(3))) ) + ( \m8|F[3]~1_combout\ ) + ( \m6|Add0~10\ ))
-- \m6|Add0~14\ = CARRY(( (!\m2|alu_src1~q\ & ((\m4|O_dataA\(3)))) # (\m2|alu_src1~q\ & (\m10|pc\(3))) ) + ( \m8|F[3]~1_combout\ ) + ( \m6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m10|ALT_INV_pc\(3),
	datac => \m8|ALT_INV_F[3]~1_combout\,
	datad => \m4|ALT_INV_O_dataA\(3),
	cin => \m6|Add0~10\,
	sumout => \m6|Add0~13_sumout\,
	cout => \m6|Add0~14\);

-- Location: LABCELL_X64_Y5_N12
\m6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~17_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(4)) ) + ( (\m2|alu_src1~q\ & \m10|pc[4]~DUPLICATE_q\) ) + ( \m6|Add0~14\ ))
-- \m6|Add0~18\ = CARRY(( (\m2|alu_src2\(1) & \m1|Immediate\(4)) ) + ( (\m2|alu_src1~q\ & \m10|pc[4]~DUPLICATE_q\) ) + ( \m6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m10|ALT_INV_pc[4]~DUPLICATE_q\,
	datad => \m1|ALT_INV_Immediate\(4),
	cin => \m6|Add0~14\,
	sumout => \m6|Add0~17_sumout\,
	cout => \m6|Add0~18\);

-- Location: LABCELL_X62_Y4_N57
\m7|F[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[1]~3_combout\ = ( \m2|alu_src1~q\ & ( \m10|pc\(1) ) ) # ( !\m2|alu_src1~q\ & ( \m4|O_dataA[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m4|ALT_INV_O_dataA[1]~DUPLICATE_q\,
	datad => \m10|ALT_INV_pc\(1),
	dataf => \m2|ALT_INV_alu_src1~q\,
	combout => \m7|F[1]~3_combout\);

-- Location: FF_X62_Y5_N56
\m4|O_dataA[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataA[0]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y5_N0
\m6|Add2~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~66_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \m6|Add2~66_cout\);

-- Location: LABCELL_X62_Y5_N3
\m6|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~1_sumout\ = SUM(( \m8|F[0]~4_combout\ ) + ( (!\m2|alu_src1~q\ & (!\m4|O_dataA[0]~DUPLICATE_q\)) # (\m2|alu_src1~q\ & ((!\m10|pc\(0)))) ) + ( \m6|Add2~66_cout\ ))
-- \m6|Add2~2\ = CARRY(( \m8|F[0]~4_combout\ ) + ( (!\m2|alu_src1~q\ & (!\m4|O_dataA[0]~DUPLICATE_q\)) # (\m2|alu_src1~q\ & ((!\m10|pc\(0)))) ) + ( \m6|Add2~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100110101001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m4|ALT_INV_O_dataA[0]~DUPLICATE_q\,
	datab => \m10|ALT_INV_pc\(0),
	datac => \m2|ALT_INV_alu_src1~q\,
	datad => \m8|ALT_INV_F[0]~4_combout\,
	cin => \m6|Add2~66_cout\,
	sumout => \m6|Add2~1_sumout\,
	cout => \m6|Add2~2\);

-- Location: LABCELL_X62_Y5_N6
\m6|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~5_sumout\ = SUM(( \m8|F[1]~3_combout\ ) + ( (!\m2|alu_src1~q\ & (!\m4|O_dataA[1]~DUPLICATE_q\)) # (\m2|alu_src1~q\ & ((!\m10|pc\(1)))) ) + ( \m6|Add2~2\ ))
-- \m6|Add2~6\ = CARRY(( \m8|F[1]~3_combout\ ) + ( (!\m2|alu_src1~q\ & (!\m4|O_dataA[1]~DUPLICATE_q\)) # (\m2|alu_src1~q\ & ((!\m10|pc\(1)))) ) + ( \m6|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110100011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m4|ALT_INV_O_dataA[1]~DUPLICATE_q\,
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc\(1),
	datad => \m8|ALT_INV_F[1]~3_combout\,
	cin => \m6|Add2~2\,
	sumout => \m6|Add2~5_sumout\,
	cout => \m6|Add2~6\);

-- Location: LABCELL_X62_Y5_N9
\m6|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~9_sumout\ = SUM(( \m8|F[2]~2_combout\ ) + ( (!\m2|alu_src1~q\ & ((!\m4|O_dataA[2]~DUPLICATE_q\))) # (\m2|alu_src1~q\ & (!\m10|pc\(2))) ) + ( \m6|Add2~6\ ))
-- \m6|Add2~10\ = CARRY(( \m8|F[2]~2_combout\ ) + ( (!\m2|alu_src1~q\ & ((!\m4|O_dataA[2]~DUPLICATE_q\))) # (\m2|alu_src1~q\ & (!\m10|pc\(2))) ) + ( \m6|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc\(2),
	datad => \m8|ALT_INV_F[2]~2_combout\,
	dataf => \m4|ALT_INV_O_dataA[2]~DUPLICATE_q\,
	cin => \m6|Add2~6\,
	sumout => \m6|Add2~9_sumout\,
	cout => \m6|Add2~10\);

-- Location: LABCELL_X62_Y3_N6
\m6|Add1~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~66_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \m6|Add1~66_cout\);

-- Location: LABCELL_X62_Y3_N9
\m6|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~1_sumout\ = SUM(( !\m8|F[0]~4_combout\ ) + ( (!\m2|alu_src1~q\ & ((\m4|O_dataA[0]~DUPLICATE_q\))) # (\m2|alu_src1~q\ & (\m10|pc\(0))) ) + ( \m6|Add1~66_cout\ ))
-- \m6|Add1~2\ = CARRY(( !\m8|F[0]~4_combout\ ) + ( (!\m2|alu_src1~q\ & ((\m4|O_dataA[0]~DUPLICATE_q\))) # (\m2|alu_src1~q\ & (\m10|pc\(0))) ) + ( \m6|Add1~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101110001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc\(0),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m4|ALT_INV_O_dataA[0]~DUPLICATE_q\,
	datad => \m8|ALT_INV_F[0]~4_combout\,
	cin => \m6|Add1~66_cout\,
	sumout => \m6|Add1~1_sumout\,
	cout => \m6|Add1~2\);

-- Location: LABCELL_X62_Y3_N12
\m6|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~5_sumout\ = SUM(( !\m8|F[1]~3_combout\ ) + ( (!\m2|alu_src1~q\ & ((\m4|O_dataA[1]~DUPLICATE_q\))) # (\m2|alu_src1~q\ & (\m10|pc\(1))) ) + ( \m6|Add1~2\ ))
-- \m6|Add1~6\ = CARRY(( !\m8|F[1]~3_combout\ ) + ( (!\m2|alu_src1~q\ & ((\m4|O_dataA[1]~DUPLICATE_q\))) # (\m2|alu_src1~q\ & (\m10|pc\(1))) ) + ( \m6|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc\(1),
	datad => \m8|ALT_INV_F[1]~3_combout\,
	dataf => \m4|ALT_INV_O_dataA[1]~DUPLICATE_q\,
	cin => \m6|Add1~2\,
	sumout => \m6|Add1~5_sumout\,
	cout => \m6|Add1~6\);

-- Location: LABCELL_X62_Y3_N15
\m6|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~9_sumout\ = SUM(( !\m8|F[2]~2_combout\ ) + ( (!\m2|alu_src1~q\ & ((\m4|O_dataA\(2)))) # (\m2|alu_src1~q\ & (\m10|pc\(2))) ) + ( \m6|Add1~6\ ))
-- \m6|Add1~10\ = CARRY(( !\m8|F[2]~2_combout\ ) + ( (!\m2|alu_src1~q\ & ((\m4|O_dataA\(2)))) # (\m2|alu_src1~q\ & (\m10|pc\(2))) ) + ( \m6|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101110001000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc\(2),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m4|ALT_INV_O_dataA\(2),
	datad => \m8|ALT_INV_F[2]~2_combout\,
	cin => \m6|Add1~6\,
	sumout => \m6|Add1~9_sumout\,
	cout => \m6|Add1~10\);

-- Location: MLABCELL_X65_Y4_N6
\m6|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux13~0_combout\ = ( \m6|Add2~9_sumout\ & ( \m6|Add1~9_sumout\ & ( (\m6|Add0~9_sumout\) # (\m2|alu_op\(0)) ) ) ) # ( !\m6|Add2~9_sumout\ & ( \m6|Add1~9_sumout\ & ( (!\m2|alu_op\(0) & (((\m6|Add0~9_sumout\)))) # (\m2|alu_op\(0) & 
-- (((!\m6|LessThan1~18_combout\)) # (\m6|LessThan1~10_combout\))) ) ) ) # ( \m6|Add2~9_sumout\ & ( !\m6|Add1~9_sumout\ & ( (!\m2|alu_op\(0) & (((\m6|Add0~9_sumout\)))) # (\m2|alu_op\(0) & (!\m6|LessThan1~10_combout\ & (\m6|LessThan1~18_combout\))) ) ) ) # ( 
-- !\m6|Add2~9_sumout\ & ( !\m6|Add1~9_sumout\ & ( (!\m2|alu_op\(0) & \m6|Add0~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000101111001000001101111111010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~10_combout\,
	datab => \m6|ALT_INV_LessThan1~18_combout\,
	datac => \m2|ALT_INV_alu_op\(0),
	datad => \m6|ALT_INV_Add0~9_sumout\,
	datae => \m6|ALT_INV_Add2~9_sumout\,
	dataf => \m6|ALT_INV_Add1~9_sumout\,
	combout => \m6|Mux13~0_combout\);

-- Location: LABCELL_X66_Y4_N18
\m6|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux13~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((((\m6|Mux13~0_combout\))))) # (\m2|alu_op\(2) & ((!\m8|F[2]~2_combout\ $ (((!\m7|F[2]~2_combout\ & \m2|alu_op\(0))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((!\m7|F[2]~2_combout\ 
-- & (\m2|alu_op\(0) & ((\m8|F[2]~2_combout\)))) # (\m7|F[2]~2_combout\ & (((\m8|F[2]~2_combout\)) # (\m2|alu_op\(0)))))) # (\m2|alu_op\(2) & ((((\m7|F[1]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111011101000100010000111100001111001000100111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_F[2]~2_combout\,
	datab => \m2|ALT_INV_alu_op\(0),
	datac => \m7|ALT_INV_F[1]~3_combout\,
	datad => \m2|ALT_INV_alu_op\(2),
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m8|ALT_INV_F[2]~2_combout\,
	datag => \m6|ALT_INV_Mux13~0_combout\,
	combout => \m6|Mux13~1_combout\);

-- Location: FF_X62_Y4_N5
\m2|alu_op[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(15),
	sload => VCC,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|alu_op\(3));

-- Location: LABCELL_X62_Y4_N30
\m6|O[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|O[1]~0_combout\ = ( \m2|alu_op\(2) & ( (!\m2|alu_op\(3) & ((!\m2|alu_op\(1)) # (\m2|alu_op\(0)))) ) ) # ( !\m2|alu_op\(2) & ( (!\m2|alu_op\(3)) # ((!\m2|alu_op\(1) & !\m2|alu_op\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_op\(3),
	datac => \m2|ALT_INV_alu_op\(1),
	datad => \m2|ALT_INV_alu_op\(0),
	dataf => \m2|ALT_INV_alu_op\(2),
	combout => \m6|O[1]~0_combout\);

-- Location: FF_X66_Y4_N20
\m6|O[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux13~1_combout\,
	asdata => \m7|F[3]~1_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(2));

-- Location: LABCELL_X61_Y5_N30
\m7|F[9]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[9]~13_combout\ = ( \m10|pc\(9) & ( \m2|alu_src1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \m10|ALT_INV_pc\(9),
	dataf => \m2|ALT_INV_alu_src1~q\,
	combout => \m7|F[9]~13_combout\);

-- Location: MLABCELL_X65_Y4_N21
\m7|F[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[8]~7_combout\ = (\m2|alu_src1~q\ & \m10|pc\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc\(8),
	combout => \m7|F[8]~7_combout\);

-- Location: LABCELL_X64_Y5_N48
\m8|F[9]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[9]~13_combout\ = ( \m1|Immediate\(9) & ( \m2|alu_src2\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src2\(1),
	dataf => \m1|ALT_INV_Immediate\(9),
	combout => \m8|F[9]~13_combout\);

-- Location: LABCELL_X64_Y5_N15
\m6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~21_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(5)) ) + ( (\m2|alu_src1~q\ & \m10|pc[5]~DUPLICATE_q\) ) + ( \m6|Add0~18\ ))
-- \m6|Add0~22\ = CARRY(( (\m2|alu_src2\(1) & \m1|Immediate\(5)) ) + ( (\m2|alu_src1~q\ & \m10|pc[5]~DUPLICATE_q\) ) + ( \m6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m1|ALT_INV_Immediate\(5),
	dataf => \m10|ALT_INV_pc[5]~DUPLICATE_q\,
	cin => \m6|Add0~18\,
	sumout => \m6|Add0~21_sumout\,
	cout => \m6|Add0~22\);

-- Location: LABCELL_X64_Y5_N18
\m6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~25_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(6)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(6)) ) + ( \m6|Add0~22\ ))
-- \m6|Add0~26\ = CARRY(( (\m2|alu_src2\(1) & \m1|Immediate\(6)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(6)) ) + ( \m6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m10|ALT_INV_pc\(6),
	datad => \m1|ALT_INV_Immediate\(6),
	cin => \m6|Add0~22\,
	sumout => \m6|Add0~25_sumout\,
	cout => \m6|Add0~26\);

-- Location: LABCELL_X64_Y5_N21
\m6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~29_sumout\ = SUM(( (\m2|alu_src1~q\ & \m10|pc[7]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(7)) ) + ( \m6|Add0~26\ ))
-- \m6|Add0~30\ = CARRY(( (\m2|alu_src1~q\ & \m10|pc[7]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(7)) ) + ( \m6|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m1|ALT_INV_Immediate\(7),
	datad => \m10|ALT_INV_pc[7]~DUPLICATE_q\,
	cin => \m6|Add0~26\,
	sumout => \m6|Add0~29_sumout\,
	cout => \m6|Add0~30\);

-- Location: LABCELL_X64_Y5_N24
\m6|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~33_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(8)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(8)) ) + ( \m6|Add0~30\ ))
-- \m6|Add0~34\ = CARRY(( (\m2|alu_src2\(1) & \m1|Immediate\(8)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(8)) ) + ( \m6|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m10|ALT_INV_pc\(8),
	datad => \m1|ALT_INV_Immediate\(8),
	cin => \m6|Add0~30\,
	sumout => \m6|Add0~33_sumout\,
	cout => \m6|Add0~34\);

-- Location: LABCELL_X64_Y5_N27
\m6|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~37_sumout\ = SUM(( (\m2|alu_src1~q\ & \m10|pc\(9)) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(9)) ) + ( \m6|Add0~34\ ))
-- \m6|Add0~38\ = CARRY(( (\m2|alu_src1~q\ & \m10|pc\(9)) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(9)) ) + ( \m6|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100110000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m10|ALT_INV_pc\(9),
	dataf => \m1|ALT_INV_Immediate\(9),
	cin => \m6|Add0~34\,
	sumout => \m6|Add0~37_sumout\,
	cout => \m6|Add0~38\);

-- Location: LABCELL_X62_Y5_N24
\m6|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~29_sumout\ = SUM(( (!\m2|alu_src1~q\) # (!\m10|pc[7]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(7)) ) + ( \m6|Add2~26\ ))
-- \m6|Add2~30\ = CARRY(( (!\m2|alu_src1~q\) # (!\m10|pc[7]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(7)) ) + ( \m6|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m1|ALT_INV_Immediate\(7),
	datad => \m10|ALT_INV_pc[7]~DUPLICATE_q\,
	cin => \m6|Add2~26\,
	sumout => \m6|Add2~29_sumout\,
	cout => \m6|Add2~30\);

-- Location: LABCELL_X62_Y5_N27
\m6|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~33_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(8)) ) + ( (!\m2|alu_src1~q\) # (!\m10|pc\(8)) ) + ( \m6|Add2~30\ ))
-- \m6|Add2~34\ = CARRY(( (\m2|alu_src2\(1) & \m1|Immediate\(8)) ) + ( (!\m2|alu_src1~q\) # (!\m10|pc\(8)) ) + ( \m6|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc\(8),
	datad => \m1|ALT_INV_Immediate\(8),
	cin => \m6|Add2~30\,
	sumout => \m6|Add2~33_sumout\,
	cout => \m6|Add2~34\);

-- Location: LABCELL_X62_Y5_N30
\m6|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~37_sumout\ = SUM(( (!\m2|alu_src1~q\) # (!\m10|pc\(9)) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(9)) ) + ( \m6|Add2~34\ ))
-- \m6|Add2~38\ = CARRY(( (!\m2|alu_src1~q\) # (!\m10|pc\(9)) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(9)) ) + ( \m6|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m1|ALT_INV_Immediate\(9),
	datad => \m10|ALT_INV_pc\(9),
	cin => \m6|Add2~34\,
	sumout => \m6|Add2~37_sumout\,
	cout => \m6|Add2~38\);

-- Location: LABCELL_X62_Y3_N21
\m6|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~17_sumout\ = SUM(( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(4)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(4)) ) + ( \m6|Add1~14\ ))
-- \m6|Add1~18\ = CARRY(( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(4)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(4)) ) + ( \m6|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100110000000000000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m2|ALT_INV_alu_src2\(1),
	datad => \m1|ALT_INV_Immediate\(4),
	dataf => \m10|ALT_INV_pc\(4),
	cin => \m6|Add1~14\,
	sumout => \m6|Add1~17_sumout\,
	cout => \m6|Add1~18\);

-- Location: LABCELL_X62_Y3_N24
\m6|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~21_sumout\ = SUM(( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(5)) ) + ( (\m2|alu_src1~q\ & \m10|pc[5]~DUPLICATE_q\) ) + ( \m6|Add1~18\ ))
-- \m6|Add1~22\ = CARRY(( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(5)) ) + ( (\m2|alu_src1~q\ & \m10|pc[5]~DUPLICATE_q\) ) + ( \m6|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m10|ALT_INV_pc[5]~DUPLICATE_q\,
	datad => \m1|ALT_INV_Immediate\(5),
	cin => \m6|Add1~18\,
	sumout => \m6|Add1~21_sumout\,
	cout => \m6|Add1~22\);

-- Location: LABCELL_X62_Y3_N27
\m6|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~25_sumout\ = SUM(( (\m2|alu_src1~q\ & \m10|pc\(6)) ) + ( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(6)) ) + ( \m6|Add1~22\ ))
-- \m6|Add1~26\ = CARRY(( (\m2|alu_src1~q\ & \m10|pc\(6)) ) + ( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(6)) ) + ( \m6|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m10|ALT_INV_pc\(6),
	dataf => \m1|ALT_INV_Immediate\(6),
	cin => \m6|Add1~22\,
	sumout => \m6|Add1~25_sumout\,
	cout => \m6|Add1~26\);

-- Location: LABCELL_X62_Y3_N30
\m6|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~29_sumout\ = SUM(( (\m2|alu_src1~q\ & \m10|pc\(7)) ) + ( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(7)) ) + ( \m6|Add1~26\ ))
-- \m6|Add1~30\ = CARRY(( (\m2|alu_src1~q\ & \m10|pc\(7)) ) + ( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(7)) ) + ( \m6|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m10|ALT_INV_pc\(7),
	dataf => \m1|ALT_INV_Immediate\(7),
	cin => \m6|Add1~26\,
	sumout => \m6|Add1~29_sumout\,
	cout => \m6|Add1~30\);

-- Location: LABCELL_X62_Y3_N33
\m6|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~33_sumout\ = SUM(( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(8)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(8)) ) + ( \m6|Add1~30\ ))
-- \m6|Add1~34\ = CARRY(( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(8)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(8)) ) + ( \m6|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datac => \m2|ALT_INV_alu_src2\(1),
	datad => \m1|ALT_INV_Immediate\(8),
	dataf => \m10|ALT_INV_pc\(8),
	cin => \m6|Add1~30\,
	sumout => \m6|Add1~33_sumout\,
	cout => \m6|Add1~34\);

-- Location: LABCELL_X62_Y3_N36
\m6|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~37_sumout\ = SUM(( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(9)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(9)) ) + ( \m6|Add1~34\ ))
-- \m6|Add1~38\ = CARRY(( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(9)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(9)) ) + ( \m6|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datad => \m1|ALT_INV_Immediate\(9),
	dataf => \m10|ALT_INV_pc\(9),
	cin => \m6|Add1~34\,
	sumout => \m6|Add1~37_sumout\,
	cout => \m6|Add1~38\);

-- Location: MLABCELL_X65_Y5_N18
\m6|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux6~0_combout\ = ( \m6|Add2~37_sumout\ & ( \m6|Add1~37_sumout\ & ( (\m2|alu_op\(0)) # (\m6|Add0~37_sumout\) ) ) ) # ( !\m6|Add2~37_sumout\ & ( \m6|Add1~37_sumout\ & ( (!\m2|alu_op\(0) & (((\m6|Add0~37_sumout\)))) # (\m2|alu_op\(0) & 
-- (((!\m6|LessThan1~18_combout\)) # (\m6|LessThan1~10_combout\))) ) ) ) # ( \m6|Add2~37_sumout\ & ( !\m6|Add1~37_sumout\ & ( (!\m2|alu_op\(0) & (((\m6|Add0~37_sumout\)))) # (\m2|alu_op\(0) & (!\m6|LessThan1~10_combout\ & (\m6|LessThan1~18_combout\))) ) ) ) 
-- # ( !\m6|Add2~37_sumout\ & ( !\m6|Add1~37_sumout\ & ( (\m6|Add0~37_sumout\ & !\m2|alu_op\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110010001000001111110111010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~10_combout\,
	datab => \m6|ALT_INV_LessThan1~18_combout\,
	datac => \m6|ALT_INV_Add0~37_sumout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m6|ALT_INV_Add2~37_sumout\,
	dataf => \m6|ALT_INV_Add1~37_sumout\,
	combout => \m6|Mux6~0_combout\);

-- Location: MLABCELL_X65_Y5_N30
\m6|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux6~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & (((\m6|Mux6~0_combout\)))) # (\m2|alu_op\(2) & ((!\m8|F[9]~13_combout\ $ (((!\m7|F[9]~13_combout\ & \m2|alu_op\(0))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((!\m7|F[9]~13_combout\ & 
-- (((\m8|F[9]~13_combout\ & \m2|alu_op\(0))))) # (\m7|F[9]~13_combout\ & (((\m2|alu_op\(0)) # (\m8|F[9]~13_combout\)))))) # (\m2|alu_op\(2) & (((\m7|F[8]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011111100001100000000110100011100011101001011100100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_F[9]~13_combout\,
	datab => \m2|ALT_INV_alu_op\(2),
	datac => \m7|ALT_INV_F[8]~7_combout\,
	datad => \m8|ALT_INV_F[9]~13_combout\,
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m2|ALT_INV_alu_op\(0),
	datag => \m6|ALT_INV_Mux6~0_combout\,
	combout => \m6|Mux6~1_combout\);

-- Location: MLABCELL_X65_Y3_N54
\m8|F[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[10]~10_combout\ = ( \m2|alu_src2\(1) & ( \m1|Immediate\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m1|ALT_INV_Immediate\(10),
	dataf => \m2|ALT_INV_alu_src2\(1),
	combout => \m8|F[10]~10_combout\);

-- Location: LABCELL_X64_Y5_N30
\m6|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~41_sumout\ = SUM(( (\m2|alu_src1~q\ & \m10|pc[10]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(10)) ) + ( \m6|Add0~38\ ))
-- \m6|Add0~42\ = CARRY(( (\m2|alu_src1~q\ & \m10|pc[10]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(10)) ) + ( \m6|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m1|ALT_INV_Immediate\(10),
	datad => \m10|ALT_INV_pc[10]~DUPLICATE_q\,
	cin => \m6|Add0~38\,
	sumout => \m6|Add0~41_sumout\,
	cout => \m6|Add0~42\);

-- Location: LABCELL_X62_Y5_N33
\m6|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~41_sumout\ = SUM(( (!\m2|alu_src1~q\) # (!\m10|pc[10]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(10)) ) + ( \m6|Add2~38\ ))
-- \m6|Add2~42\ = CARRY(( (!\m2|alu_src1~q\) # (!\m10|pc[10]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(10)) ) + ( \m6|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datac => \m2|ALT_INV_alu_src1~q\,
	datad => \m10|ALT_INV_pc[10]~DUPLICATE_q\,
	dataf => \m1|ALT_INV_Immediate\(10),
	cin => \m6|Add2~38\,
	sumout => \m6|Add2~41_sumout\,
	cout => \m6|Add2~42\);

-- Location: LABCELL_X62_Y3_N39
\m6|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~41_sumout\ = SUM(( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(10)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(10)) ) + ( \m6|Add1~38\ ))
-- \m6|Add1~42\ = CARRY(( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(10)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(10)) ) + ( \m6|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datac => \m2|ALT_INV_alu_src2\(1),
	datad => \m1|ALT_INV_Immediate\(10),
	dataf => \m10|ALT_INV_pc\(10),
	cin => \m6|Add1~38\,
	sumout => \m6|Add1~41_sumout\,
	cout => \m6|Add1~42\);

-- Location: MLABCELL_X65_Y5_N0
\m6|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux5~0_combout\ = ( \m6|Add2~41_sumout\ & ( \m6|Add1~41_sumout\ & ( (\m2|alu_op\(0)) # (\m6|Add0~41_sumout\) ) ) ) # ( !\m6|Add2~41_sumout\ & ( \m6|Add1~41_sumout\ & ( (!\m2|alu_op\(0) & (\m6|Add0~41_sumout\)) # (\m2|alu_op\(0) & 
-- (((!\m6|LessThan1~18_combout\) # (\m6|LessThan1~10_combout\)))) ) ) ) # ( \m6|Add2~41_sumout\ & ( !\m6|Add1~41_sumout\ & ( (!\m2|alu_op\(0) & (\m6|Add0~41_sumout\)) # (\m2|alu_op\(0) & (((\m6|LessThan1~18_combout\ & !\m6|LessThan1~10_combout\)))) ) ) ) # 
-- ( !\m6|Add2~41_sumout\ & ( !\m6|Add1~41_sumout\ & ( (\m6|Add0~41_sumout\ & !\m2|alu_op\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010011000001010101110011110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_Add0~41_sumout\,
	datab => \m6|ALT_INV_LessThan1~18_combout\,
	datac => \m6|ALT_INV_LessThan1~10_combout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m6|ALT_INV_Add2~41_sumout\,
	dataf => \m6|ALT_INV_Add1~41_sumout\,
	combout => \m6|Mux5~0_combout\);

-- Location: MLABCELL_X65_Y5_N6
\m6|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux5~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & (((\m6|Mux5~0_combout\)))) # (\m2|alu_op\(2) & ((!\m8|F[10]~10_combout\ $ (((!\m7|F[10]~10_combout\ & \m2|alu_op\(0))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & 
-- ((!\m7|F[10]~10_combout\ & (((\m2|alu_op\(0) & \m8|F[10]~10_combout\)))) # (\m7|F[10]~10_combout\ & (((\m8|F[10]~10_combout\) # (\m2|alu_op\(0))))))) # (\m2|alu_op\(2) & (((\m7|F[9]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011111100011101000000110100011100001100001011100100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_F[10]~10_combout\,
	datab => \m2|ALT_INV_alu_op\(2),
	datac => \m7|ALT_INV_F[9]~13_combout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m8|ALT_INV_F[10]~10_combout\,
	datag => \m6|ALT_INV_Mux5~0_combout\,
	combout => \m6|Mux5~1_combout\);

-- Location: LABCELL_X63_Y5_N21
\m8|F[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[11]~9_combout\ = ( \m1|Immediate\(11) & ( \m2|alu_src2\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \m2|ALT_INV_alu_src2\(1),
	dataf => \m1|ALT_INV_Immediate\(11),
	combout => \m8|F[11]~9_combout\);

-- Location: LABCELL_X64_Y5_N33
\m6|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~45_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(11)) ) + ( (\m2|alu_src1~q\ & \m10|pc[11]~DUPLICATE_q\) ) + ( \m6|Add0~42\ ))
-- \m6|Add0~46\ = CARRY(( (\m2|alu_src2\(1) & \m1|Immediate\(11)) ) + ( (\m2|alu_src1~q\ & \m10|pc[11]~DUPLICATE_q\) ) + ( \m6|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m10|ALT_INV_pc[11]~DUPLICATE_q\,
	datad => \m1|ALT_INV_Immediate\(11),
	cin => \m6|Add0~42\,
	sumout => \m6|Add0~45_sumout\,
	cout => \m6|Add0~46\);

-- Location: LABCELL_X62_Y5_N36
\m6|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~45_sumout\ = SUM(( (!\m2|alu_src1~q\) # (!\m10|pc[11]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(11)) ) + ( \m6|Add2~42\ ))
-- \m6|Add2~46\ = CARRY(( (!\m2|alu_src1~q\) # (!\m10|pc[11]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(11)) ) + ( \m6|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m1|ALT_INV_Immediate\(11),
	datad => \m10|ALT_INV_pc[11]~DUPLICATE_q\,
	cin => \m6|Add2~42\,
	sumout => \m6|Add2~45_sumout\,
	cout => \m6|Add2~46\);

-- Location: LABCELL_X62_Y3_N42
\m6|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~45_sumout\ = SUM(( (\m2|alu_src1~q\ & \m10|pc[11]~DUPLICATE_q\) ) + ( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(11)) ) + ( \m6|Add1~42\ ))
-- \m6|Add1~46\ = CARRY(( (\m2|alu_src1~q\ & \m10|pc[11]~DUPLICATE_q\) ) + ( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(11)) ) + ( \m6|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m10|ALT_INV_pc[11]~DUPLICATE_q\,
	dataf => \m1|ALT_INV_Immediate\(11),
	cin => \m6|Add1~42\,
	sumout => \m6|Add1~45_sumout\,
	cout => \m6|Add1~46\);

-- Location: LABCELL_X63_Y5_N54
\m6|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux4~0_combout\ = ( \m6|Add2~45_sumout\ & ( \m6|Add1~45_sumout\ & ( (\m2|alu_op\(0)) # (\m6|Add0~45_sumout\) ) ) ) # ( !\m6|Add2~45_sumout\ & ( \m6|Add1~45_sumout\ & ( (!\m2|alu_op\(0) & (((\m6|Add0~45_sumout\)))) # (\m2|alu_op\(0) & 
-- (((!\m6|LessThan1~18_combout\)) # (\m6|LessThan1~10_combout\))) ) ) ) # ( \m6|Add2~45_sumout\ & ( !\m6|Add1~45_sumout\ & ( (!\m2|alu_op\(0) & (((\m6|Add0~45_sumout\)))) # (\m2|alu_op\(0) & (!\m6|LessThan1~10_combout\ & (\m6|LessThan1~18_combout\))) ) ) ) 
-- # ( !\m6|Add2~45_sumout\ & ( !\m6|Add1~45_sumout\ & ( (\m6|Add0~45_sumout\ & !\m2|alu_op\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110010001000001111110111010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~10_combout\,
	datab => \m6|ALT_INV_LessThan1~18_combout\,
	datac => \m6|ALT_INV_Add0~45_sumout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m6|ALT_INV_Add2~45_sumout\,
	dataf => \m6|ALT_INV_Add1~45_sumout\,
	combout => \m6|Mux4~0_combout\);

-- Location: LABCELL_X63_Y5_N6
\m6|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux4~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((((\m6|Mux4~0_combout\))))) # (\m2|alu_op\(2) & (!\m8|F[11]~9_combout\ $ (((!\m7|F[11]~9_combout\ & ((\m2|alu_op\(0)))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & 
-- ((!\m7|F[11]~9_combout\ & (\m8|F[11]~9_combout\ & ((\m2|alu_op\(0))))) # (\m7|F[11]~9_combout\ & (((\m2|alu_op\(0))) # (\m8|F[11]~9_combout\))))) # (\m2|alu_op\(2) & ((((\m7|F[10]~10_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000100010111011111001100011001100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_F[11]~9_combout\,
	datab => \m8|ALT_INV_F[11]~9_combout\,
	datac => \m7|ALT_INV_F[10]~10_combout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m2|ALT_INV_alu_op\(2),
	datag => \m6|ALT_INV_Mux4~0_combout\,
	combout => \m6|Mux4~1_combout\);

-- Location: MLABCELL_X65_Y3_N51
\m7|F[12]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[12]~8_combout\ = ( \m10|pc\(12) & ( \m2|alu_src1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \m2|ALT_INV_alu_src1~q\,
	dataf => \m10|ALT_INV_pc\(12),
	combout => \m7|F[12]~8_combout\);

-- Location: FF_X63_Y5_N8
\m6|O[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux4~1_combout\,
	asdata => \m7|F[12]~8_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(11));

-- Location: FF_X63_Y3_N34
\m10|pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~45_sumout\,
	asdata => \m6|O\(11),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(11));

-- Location: LABCELL_X64_Y3_N3
\m7|F[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[11]~9_combout\ = (\m10|pc\(11) & \m2|alu_src1~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc\(11),
	datad => \m2|ALT_INV_alu_src1~q\,
	combout => \m7|F[11]~9_combout\);

-- Location: FF_X65_Y5_N8
\m6|O[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux5~1_combout\,
	asdata => \m7|F[11]~9_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(10));

-- Location: FF_X63_Y3_N31
\m10|pc[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~41_sumout\,
	asdata => \m6|O\(10),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc[10]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y4_N51
\m7|F[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[10]~10_combout\ = ( \m10|pc[10]~DUPLICATE_q\ & ( \m2|alu_src1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_alu_src1~q\,
	dataf => \m10|ALT_INV_pc[10]~DUPLICATE_q\,
	combout => \m7|F[10]~10_combout\);

-- Location: FF_X65_Y5_N32
\m6|O[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux6~1_combout\,
	asdata => \m7|F[10]~10_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(9));

-- Location: LABCELL_X64_Y5_N51
\m8|F[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[8]~7_combout\ = (\m2|alu_src2\(1) & \m1|Immediate\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src2\(1),
	datad => \m1|ALT_INV_Immediate\(8),
	combout => \m8|F[8]~7_combout\);

-- Location: MLABCELL_X65_Y5_N12
\m6|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux7~0_combout\ = ( \m6|Add0~33_sumout\ & ( \m6|Add1~33_sumout\ & ( ((!\m6|LessThan1~18_combout\) # ((!\m2|alu_op\(0)) # (\m6|Add2~33_sumout\))) # (\m6|LessThan1~10_combout\) ) ) ) # ( !\m6|Add0~33_sumout\ & ( \m6|Add1~33_sumout\ & ( (\m2|alu_op\(0) & 
-- (((!\m6|LessThan1~18_combout\) # (\m6|Add2~33_sumout\)) # (\m6|LessThan1~10_combout\))) ) ) ) # ( \m6|Add0~33_sumout\ & ( !\m6|Add1~33_sumout\ & ( (!\m2|alu_op\(0)) # ((!\m6|LessThan1~10_combout\ & (\m6|LessThan1~18_combout\ & \m6|Add2~33_sumout\))) ) ) ) 
-- # ( !\m6|Add0~33_sumout\ & ( !\m6|Add1~33_sumout\ & ( (!\m6|LessThan1~10_combout\ & (\m6|LessThan1~18_combout\ & (\m6|Add2~33_sumout\ & \m2|alu_op\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111110000001000000000110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~10_combout\,
	datab => \m6|ALT_INV_LessThan1~18_combout\,
	datac => \m6|ALT_INV_Add2~33_sumout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m6|ALT_INV_Add0~33_sumout\,
	dataf => \m6|ALT_INV_Add1~33_sumout\,
	combout => \m6|Mux7~0_combout\);

-- Location: MLABCELL_X65_Y5_N42
\m6|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux7~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((((\m6|Mux7~0_combout\))))) # (\m2|alu_op\(2) & (!\m8|F[8]~7_combout\ $ (((\m2|alu_op\(0) & ((!\m7|F[8]~7_combout\))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((!\m8|F[8]~7_combout\ 
-- & (\m2|alu_op\(0) & ((\m7|F[8]~7_combout\)))) # (\m8|F[8]~7_combout\ & (((\m7|F[8]~7_combout\)) # (\m2|alu_op\(0)))))) # (\m2|alu_op\(2) & ((((\m7|F[7]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111110011001000100010000111100001111101010100111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m8|ALT_INV_F[8]~7_combout\,
	datab => \m2|ALT_INV_alu_op\(0),
	datac => \m7|ALT_INV_F[7]~5_combout\,
	datad => \m2|ALT_INV_alu_op\(2),
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m7|ALT_INV_F[8]~7_combout\,
	datag => \m6|ALT_INV_Mux7~0_combout\,
	combout => \m6|Mux7~1_combout\);

-- Location: FF_X65_Y5_N44
\m6|O[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux7~1_combout\,
	asdata => \m7|F[9]~13_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(8));

-- Location: LABCELL_X62_Y4_N12
\m6|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux16~0_combout\ = ( !\m6|O\(11) & ( (!\m6|O\(9) & (!\m6|O\(10) & !\m6|O\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m6|ALT_INV_O\(9),
	datac => \m6|ALT_INV_O\(10),
	datad => \m6|ALT_INV_O\(8),
	dataf => \m6|ALT_INV_O\(11),
	combout => \m6|Mux16~0_combout\);

-- Location: LABCELL_X62_Y4_N54
\m6|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux16~1_combout\ = ( \m6|Mux16~0_combout\ & ( (\m2|alu_op\(2) & (\m2|alu_op\(1) & !\m2|alu_op\(0))) ) ) # ( !\m6|Mux16~0_combout\ & ( (\m2|alu_op\(2) & ((!\m2|alu_op\(1) & ((\m2|alu_op\(0)))) # (\m2|alu_op\(1) & (!\m2|alu_op\(3) & !\m2|alu_op\(0))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000110000000000100011000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_op\(3),
	datab => \m2|ALT_INV_alu_op\(2),
	datac => \m2|ALT_INV_alu_op\(1),
	datad => \m2|ALT_INV_alu_op\(0),
	dataf => \m6|ALT_INV_Mux16~0_combout\,
	combout => \m6|Mux16~1_combout\);

-- Location: LABCELL_X64_Y4_N27
\m7|F[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[0]~4_combout\ = ( \m10|pc\(0) & ( (\m2|alu_src1~q\) # (\m4|O_dataA[0]~DUPLICATE_q\) ) ) # ( !\m10|pc\(0) & ( (\m4|O_dataA[0]~DUPLICATE_q\ & !\m2|alu_src1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m4|ALT_INV_O_dataA[0]~DUPLICATE_q\,
	datad => \m2|ALT_INV_alu_src1~q\,
	dataf => \m10|ALT_INV_pc\(0),
	combout => \m7|F[0]~4_combout\);

-- Location: MLABCELL_X65_Y4_N39
\m6|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Equal0~3_combout\ = ( \m7|F[0]~4_combout\ & ( \m7|F[1]~3_combout\ & ( (\m8|F[1]~3_combout\ & \m8|F[0]~4_combout\) ) ) ) # ( !\m7|F[0]~4_combout\ & ( \m7|F[1]~3_combout\ & ( (\m8|F[1]~3_combout\ & !\m8|F[0]~4_combout\) ) ) ) # ( \m7|F[0]~4_combout\ & ( 
-- !\m7|F[1]~3_combout\ & ( (!\m8|F[1]~3_combout\ & \m8|F[0]~4_combout\) ) ) ) # ( !\m7|F[0]~4_combout\ & ( !\m7|F[1]~3_combout\ & ( (!\m8|F[1]~3_combout\ & !\m8|F[0]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m8|ALT_INV_F[1]~3_combout\,
	datac => \m8|ALT_INV_F[0]~4_combout\,
	datae => \m7|ALT_INV_F[0]~4_combout\,
	dataf => \m7|ALT_INV_F[1]~3_combout\,
	combout => \m6|Equal0~3_combout\);

-- Location: LABCELL_X63_Y4_N57
\m6|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Equal0~1_combout\ = ( \m6|Equal0~0_combout\ & ( \m7|F[2]~2_combout\ & ( (\m6|LessThan0~2_combout\ & (\m8|F[2]~2_combout\ & (!\m8|F[3]~1_combout\ $ (\m7|F[3]~1_combout\)))) ) ) ) # ( \m6|Equal0~0_combout\ & ( !\m7|F[2]~2_combout\ & ( 
-- (\m6|LessThan0~2_combout\ & (!\m8|F[2]~2_combout\ & (!\m8|F[3]~1_combout\ $ (\m7|F[3]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000010000000000000000000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan0~2_combout\,
	datab => \m8|ALT_INV_F[3]~1_combout\,
	datac => \m7|ALT_INV_F[3]~1_combout\,
	datad => \m8|ALT_INV_F[2]~2_combout\,
	datae => \m6|ALT_INV_Equal0~0_combout\,
	dataf => \m7|ALT_INV_F[2]~2_combout\,
	combout => \m6|Equal0~1_combout\);

-- Location: LABCELL_X62_Y5_N39
\m6|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~49_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(12)) ) + ( (!\m2|alu_src1~q\) # (!\m10|pc[12]~DUPLICATE_q\) ) + ( \m6|Add2~46\ ))
-- \m6|Add2~50\ = CARRY(( (\m2|alu_src2\(1) & \m1|Immediate\(12)) ) + ( (!\m2|alu_src1~q\) # (!\m10|pc[12]~DUPLICATE_q\) ) + ( \m6|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datac => \m2|ALT_INV_alu_src1~q\,
	datad => \m1|ALT_INV_Immediate\(12),
	dataf => \m10|ALT_INV_pc[12]~DUPLICATE_q\,
	cin => \m6|Add2~46\,
	sumout => \m6|Add2~49_sumout\,
	cout => \m6|Add2~50\);

-- Location: LABCELL_X62_Y3_N45
\m6|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~49_sumout\ = SUM(( (\m2|alu_src1~q\ & \m10|pc\(12)) ) + ( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(12)) ) + ( \m6|Add1~46\ ))
-- \m6|Add1~50\ = CARRY(( (\m2|alu_src1~q\ & \m10|pc\(12)) ) + ( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(12)) ) + ( \m6|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m1|ALT_INV_Immediate\(12),
	datad => \m10|ALT_INV_pc\(12),
	cin => \m6|Add1~46\,
	sumout => \m6|Add1~49_sumout\,
	cout => \m6|Add1~50\);

-- Location: LABCELL_X64_Y5_N36
\m6|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~49_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(12)) ) + ( (\m2|alu_src1~q\ & \m10|pc[12]~DUPLICATE_q\) ) + ( \m6|Add0~46\ ))
-- \m6|Add0~50\ = CARRY(( (\m2|alu_src2\(1) & \m1|Immediate\(12)) ) + ( (\m2|alu_src1~q\ & \m10|pc[12]~DUPLICATE_q\) ) + ( \m6|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m2|ALT_INV_alu_src1~q\,
	datad => \m1|ALT_INV_Immediate\(12),
	dataf => \m10|ALT_INV_pc[12]~DUPLICATE_q\,
	cin => \m6|Add0~46\,
	sumout => \m6|Add0~49_sumout\,
	cout => \m6|Add0~50\);

-- Location: LABCELL_X63_Y5_N30
\m6|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux3~0_combout\ = ( \m6|LessThan1~10_combout\ & ( \m6|Add0~49_sumout\ & ( (!\m2|alu_op\(0)) # (\m6|Add1~49_sumout\) ) ) ) # ( !\m6|LessThan1~10_combout\ & ( \m6|Add0~49_sumout\ & ( (!\m2|alu_op\(0)) # ((!\m6|LessThan1~18_combout\ & 
-- ((\m6|Add1~49_sumout\))) # (\m6|LessThan1~18_combout\ & (\m6|Add2~49_sumout\))) ) ) ) # ( \m6|LessThan1~10_combout\ & ( !\m6|Add0~49_sumout\ & ( (\m6|Add1~49_sumout\ & \m2|alu_op\(0)) ) ) ) # ( !\m6|LessThan1~10_combout\ & ( !\m6|Add0~49_sumout\ & ( 
-- (\m2|alu_op\(0) & ((!\m6|LessThan1~18_combout\ & ((\m6|Add1~49_sumout\))) # (\m6|LessThan1~18_combout\ & (\m6|Add2~49_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000000111111111111000111011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_Add2~49_sumout\,
	datab => \m6|ALT_INV_LessThan1~18_combout\,
	datac => \m6|ALT_INV_Add1~49_sumout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m6|ALT_INV_LessThan1~10_combout\,
	dataf => \m6|ALT_INV_Add0~49_sumout\,
	combout => \m6|Mux3~0_combout\);

-- Location: LABCELL_X63_Y5_N12
\m6|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux3~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & (((\m6|Mux3~0_combout\)))) # (\m2|alu_op\(2) & ((!\m8|F[12]~8_combout\ $ (((!\m7|F[12]~8_combout\ & \m2|alu_op\(0))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((!\m7|F[12]~8_combout\ & 
-- (((\m2|alu_op\(0) & \m8|F[12]~8_combout\)))) # (\m7|F[12]~8_combout\ & (((\m8|F[12]~8_combout\) # (\m2|alu_op\(0))))))) # (\m2|alu_op\(2) & (((\m7|F[11]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101111100011011000001010010011100001010010011100010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_op\(2),
	datab => \m7|ALT_INV_F[12]~8_combout\,
	datac => \m7|ALT_INV_F[11]~9_combout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m8|ALT_INV_F[12]~8_combout\,
	datag => \m6|ALT_INV_Mux3~0_combout\,
	combout => \m6|Mux3~1_combout\);

-- Location: LABCELL_X63_Y6_N21
\m8|F[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[13]~14_combout\ = ( \m2|alu_src2\(1) & ( \m1|Immediate\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	dataf => \m2|ALT_INV_alu_src2\(1),
	combout => \m8|F[13]~14_combout\);

-- Location: LABCELL_X64_Y5_N39
\m6|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~53_sumout\ = SUM(( (\m1|Immediate\(13) & \m2|alu_src2\(1)) ) + ( (\m2|alu_src1~q\ & \m10|pc[13]~DUPLICATE_q\) ) + ( \m6|Add0~50\ ))
-- \m6|Add0~54\ = CARRY(( (\m1|Immediate\(13) & \m2|alu_src2\(1)) ) + ( (\m2|alu_src1~q\ & \m10|pc[13]~DUPLICATE_q\) ) + ( \m6|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m2|ALT_INV_alu_src1~q\,
	dataf => \m10|ALT_INV_pc[13]~DUPLICATE_q\,
	cin => \m6|Add0~50\,
	sumout => \m6|Add0~53_sumout\,
	cout => \m6|Add0~54\);

-- Location: LABCELL_X62_Y5_N42
\m6|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~53_sumout\ = SUM(( (!\m2|alu_src1~q\) # (!\m10|pc[13]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(13)) ) + ( \m6|Add2~50\ ))
-- \m6|Add2~54\ = CARRY(( (!\m2|alu_src1~q\) # (!\m10|pc[13]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(13)) ) + ( \m6|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m1|ALT_INV_Immediate\(13),
	datad => \m10|ALT_INV_pc[13]~DUPLICATE_q\,
	cin => \m6|Add2~50\,
	sumout => \m6|Add2~53_sumout\,
	cout => \m6|Add2~54\);

-- Location: LABCELL_X62_Y3_N48
\m6|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~53_sumout\ = SUM(( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(13)) ) + ( (\m2|alu_src1~q\ & \m10|pc[13]~DUPLICATE_q\) ) + ( \m6|Add1~50\ ))
-- \m6|Add1~54\ = CARRY(( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(13)) ) + ( (\m2|alu_src1~q\ & \m10|pc[13]~DUPLICATE_q\) ) + ( \m6|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m1|ALT_INV_Immediate\(13),
	dataf => \m10|ALT_INV_pc[13]~DUPLICATE_q\,
	cin => \m6|Add1~50\,
	sumout => \m6|Add1~53_sumout\,
	cout => \m6|Add1~54\);

-- Location: LABCELL_X63_Y6_N0
\m6|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux2~0_combout\ = ( \m6|LessThan1~18_combout\ & ( \m6|Add1~53_sumout\ & ( (!\m2|alu_op\(0) & (\m6|Add0~53_sumout\)) # (\m2|alu_op\(0) & (((\m6|LessThan1~10_combout\) # (\m6|Add2~53_sumout\)))) ) ) ) # ( !\m6|LessThan1~18_combout\ & ( 
-- \m6|Add1~53_sumout\ & ( (\m2|alu_op\(0)) # (\m6|Add0~53_sumout\) ) ) ) # ( \m6|LessThan1~18_combout\ & ( !\m6|Add1~53_sumout\ & ( (!\m2|alu_op\(0) & (\m6|Add0~53_sumout\)) # (\m2|alu_op\(0) & (((\m6|Add2~53_sumout\ & !\m6|LessThan1~10_combout\)))) ) ) ) # 
-- ( !\m6|LessThan1~18_combout\ & ( !\m6|Add1~53_sumout\ & ( (\m6|Add0~53_sumout\ & !\m2|alu_op\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010011000001010101111111110101010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_Add0~53_sumout\,
	datab => \m6|ALT_INV_Add2~53_sumout\,
	datac => \m6|ALT_INV_LessThan1~10_combout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m6|ALT_INV_LessThan1~18_combout\,
	dataf => \m6|ALT_INV_Add1~53_sumout\,
	combout => \m6|Mux2~0_combout\);

-- Location: LABCELL_X63_Y6_N42
\m6|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux2~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((((\m6|Mux2~0_combout\))))) # (\m2|alu_op\(2) & (!\m8|F[13]~14_combout\ $ (((!\m7|F[13]~14_combout\ & ((\m2|alu_op\(0)))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & 
-- ((!\m7|F[13]~14_combout\ & (\m8|F[13]~14_combout\ & ((\m2|alu_op\(0))))) # (\m7|F[13]~14_combout\ & (((\m2|alu_op\(0))) # (\m8|F[13]~14_combout\))))) # (\m2|alu_op\(2) & ((((\m7|F[12]~8_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000100010111011111001100011001100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_F[13]~14_combout\,
	datab => \m8|ALT_INV_F[13]~14_combout\,
	datac => \m7|ALT_INV_F[12]~8_combout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m2|ALT_INV_alu_op\(2),
	datag => \m6|ALT_INV_Mux2~0_combout\,
	combout => \m6|Mux2~1_combout\);

-- Location: LABCELL_X63_Y6_N27
\m7|F[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[14]~15_combout\ = ( \m2|alu_src1~q\ & ( \m10|pc[14]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc[14]~DUPLICATE_q\,
	dataf => \m2|ALT_INV_alu_src1~q\,
	combout => \m7|F[14]~15_combout\);

-- Location: FF_X63_Y6_N44
\m6|O[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux2~1_combout\,
	asdata => \m7|F[14]~15_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(13));

-- Location: FF_X63_Y3_N40
\m10|pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~53_sumout\,
	asdata => \m6|O\(13),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(13));

-- Location: LABCELL_X63_Y6_N36
\m7|F[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[13]~14_combout\ = ( \m2|alu_src1~q\ & ( \m10|pc\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc\(13),
	dataf => \m2|ALT_INV_alu_src1~q\,
	combout => \m7|F[13]~14_combout\);

-- Location: FF_X63_Y5_N14
\m6|O[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux3~1_combout\,
	asdata => \m7|F[13]~14_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(12));

-- Location: FF_X63_Y3_N37
\m10|pc[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~49_sumout\,
	asdata => \m6|O\(12),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc[12]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y3_N39
\m6|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~0_combout\ = ( \m1|Immediate\(12) & ( !\m2|alu_src2\(1) $ (((!\m10|pc[12]~DUPLICATE_q\) # (!\m2|alu_src1~q\))) ) ) # ( !\m1|Immediate\(12) & ( (\m10|pc[12]~DUPLICATE_q\ & \m2|alu_src1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100110011011001100011001101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc[12]~DUPLICATE_q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datad => \m2|ALT_INV_alu_src1~q\,
	dataf => \m1|ALT_INV_Immediate\(12),
	combout => \m6|LessThan1~0_combout\);

-- Location: MLABCELL_X65_Y3_N39
\m6|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~0_combout\ = ( \m2|alu_src1~q\ & ( \m10|pc[14]~DUPLICATE_q\ & ( (\m1|Immediate\(14) & (\m2|alu_src2\(1) & (!\m1|Immediate\(13) $ (\m10|pc\(13))))) ) ) ) # ( !\m2|alu_src1~q\ & ( \m10|pc[14]~DUPLICATE_q\ & ( (!\m2|alu_src2\(1)) # 
-- ((!\m1|Immediate\(14) & !\m1|Immediate\(13))) ) ) ) # ( \m2|alu_src1~q\ & ( !\m10|pc[14]~DUPLICATE_q\ & ( (!\m2|alu_src2\(1) & (((!\m10|pc\(13))))) # (\m2|alu_src2\(1) & (!\m1|Immediate\(14) & (!\m1|Immediate\(13) $ (\m10|pc\(13))))) ) ) ) # ( 
-- !\m2|alu_src1~q\ & ( !\m10|pc[14]~DUPLICATE_q\ & ( (!\m2|alu_src2\(1)) # ((!\m1|Immediate\(14) & !\m1|Immediate\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111000111110000000001011111000111110000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(14),
	datab => \m1|ALT_INV_Immediate\(13),
	datac => \m2|ALT_INV_alu_src2\(1),
	datad => \m10|ALT_INV_pc\(13),
	datae => \m2|ALT_INV_alu_src1~q\,
	dataf => \m10|ALT_INV_pc[14]~DUPLICATE_q\,
	combout => \m6|LessThan0~0_combout\);

-- Location: LABCELL_X64_Y3_N57
\m6|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~2_combout\ = ( \m10|pc[10]~DUPLICATE_q\ & ( !\m2|alu_src1~q\ $ (((!\m1|Immediate\(10)) # (!\m2|alu_src2\(1)))) ) ) # ( !\m10|pc[10]~DUPLICATE_q\ & ( (\m1|Immediate\(10) & \m2|alu_src2\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(10),
	datac => \m2|ALT_INV_alu_src2\(1),
	datad => \m2|ALT_INV_alu_src1~q\,
	dataf => \m10|ALT_INV_pc[10]~DUPLICATE_q\,
	combout => \m6|LessThan1~2_combout\);

-- Location: LABCELL_X63_Y5_N36
\m6|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~1_combout\ = ( \m10|pc[11]~DUPLICATE_q\ & ( !\m2|alu_src1~q\ $ (((!\m2|alu_src2\(1)) # (!\m1|Immediate\(11)))) ) ) # ( !\m10|pc[11]~DUPLICATE_q\ & ( (\m2|alu_src2\(1) & \m1|Immediate\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datac => \m1|ALT_INV_Immediate\(11),
	datad => \m2|ALT_INV_alu_src1~q\,
	dataf => \m10|ALT_INV_pc[11]~DUPLICATE_q\,
	combout => \m6|LessThan1~1_combout\);

-- Location: LABCELL_X64_Y3_N18
\m6|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~3_combout\ = ( \m1|Immediate\(9) & ( !\m2|alu_src2\(1) $ (((!\m2|alu_src1~q\) # (!\m10|pc\(9)))) ) ) # ( !\m1|Immediate\(9) & ( (\m2|alu_src1~q\ & \m10|pc\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111000011001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m2|ALT_INV_alu_src1~q\,
	datad => \m10|ALT_INV_pc\(9),
	dataf => \m1|ALT_INV_Immediate\(9),
	combout => \m6|LessThan1~3_combout\);

-- Location: LABCELL_X64_Y4_N48
\m6|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Equal0~2_combout\ = ( !\m6|LessThan1~1_combout\ & ( !\m6|LessThan1~3_combout\ & ( (!\m6|LessThan1~0_combout\ & (\m6|LessThan0~0_combout\ & (!\m6|LessThan1~2_combout\ & !\m6|LessThan1~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~0_combout\,
	datab => \m6|ALT_INV_LessThan0~0_combout\,
	datac => \m6|ALT_INV_LessThan1~2_combout\,
	datad => \m6|ALT_INV_LessThan1~5_combout\,
	datae => \m6|ALT_INV_LessThan1~1_combout\,
	dataf => \m6|ALT_INV_LessThan1~3_combout\,
	combout => \m6|Equal0~2_combout\);

-- Location: LABCELL_X64_Y4_N30
\m6|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Equal0~4_combout\ = ( \m6|Equal0~2_combout\ & ( (!\m6|LessThan1~4_combout\ & (\m6|Equal0~3_combout\ & \m6|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m6|ALT_INV_LessThan1~4_combout\,
	datac => \m6|ALT_INV_Equal0~3_combout\,
	datad => \m6|ALT_INV_Equal0~1_combout\,
	dataf => \m6|ALT_INV_Equal0~2_combout\,
	combout => \m6|Equal0~4_combout\);

-- Location: MLABCELL_X65_Y4_N54
\m6|Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux16~2_combout\ = ( \m6|cmp~q\ & ( \m6|Equal0~4_combout\ & ( (!\m2|alu_op\(3)) # (!\m6|Mux16~1_combout\) ) ) ) # ( !\m6|cmp~q\ & ( \m6|Equal0~4_combout\ & ( (!\m2|alu_op\(3)) # (!\m6|Mux16~1_combout\) ) ) ) # ( \m6|cmp~q\ & ( !\m6|Equal0~4_combout\ & 
-- ( (!\m2|alu_op\(3)) # (!\m6|Mux16~1_combout\) ) ) ) # ( !\m6|cmp~q\ & ( !\m6|Equal0~4_combout\ & ( (!\m6|Mux16~1_combout\) # ((!\m2|alu_op\(3) & ((!\m6|Mux17~0_combout\) # (!\m2|alu_op\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111000111110101111101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_op\(3),
	datab => \m6|ALT_INV_Mux17~0_combout\,
	datac => \m6|ALT_INV_Mux16~1_combout\,
	datad => \m2|ALT_INV_alu_op\(1),
	datae => \m6|ALT_INV_cmp~q\,
	dataf => \m6|ALT_INV_Equal0~4_combout\,
	combout => \m6|Mux16~2_combout\);

-- Location: FF_X65_Y4_N55
\m6|cmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|cmp~q\);

-- Location: LABCELL_X61_Y3_N3
pc_opin : cyclonev_lcell_comb
-- Equation(s):
-- \pc_opin~combout\ = ( \m2|alu_src1~q\ & ( \m6|cmp~q\ ) ) # ( !\m2|alu_src1~q\ & ( \m6|cmp~q\ & ( \m2|pc_cond~q\ ) ) ) # ( \m2|alu_src1~q\ & ( !\m6|cmp~q\ ) ) # ( !\m2|alu_src1~q\ & ( !\m6|cmp~q\ & ( !\m2|pc_cond~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_pc_cond~q\,
	datae => \m2|ALT_INV_alu_src1~q\,
	dataf => \m6|ALT_INV_cmp~q\,
	combout => \pc_opin~combout\);

-- Location: FF_X63_Y3_N8
\m10|pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~9_sumout\,
	asdata => \m6|O\(2),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(2));

-- Location: LABCELL_X62_Y3_N18
\m6|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~13_sumout\ = SUM(( !\m8|F[3]~1_combout\ ) + ( (!\m2|alu_src1~q\ & ((\m4|O_dataA\(3)))) # (\m2|alu_src1~q\ & (\m10|pc\(3))) ) + ( \m6|Add1~10\ ))
-- \m6|Add1~14\ = CARRY(( !\m8|F[3]~1_combout\ ) + ( (!\m2|alu_src1~q\ & ((\m4|O_dataA\(3)))) # (\m2|alu_src1~q\ & (\m10|pc\(3))) ) + ( \m6|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc\(3),
	datad => \m8|ALT_INV_F[3]~1_combout\,
	dataf => \m4|ALT_INV_O_dataA\(3),
	cin => \m6|Add1~10\,
	sumout => \m6|Add1~13_sumout\,
	cout => \m6|Add1~14\);

-- Location: FF_X63_Y2_N34
\m4|O_dataA[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataA[3]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y5_N12
\m6|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~13_sumout\ = SUM(( (!\m2|alu_src1~q\ & ((!\m4|O_dataA[3]~DUPLICATE_q\))) # (\m2|alu_src1~q\ & (!\m10|pc\(3))) ) + ( \m8|F[3]~1_combout\ ) + ( \m6|Add2~10\ ))
-- \m6|Add2~14\ = CARRY(( (!\m2|alu_src1~q\ & ((!\m4|O_dataA[3]~DUPLICATE_q\))) # (\m2|alu_src1~q\ & (!\m10|pc\(3))) ) + ( \m8|F[3]~1_combout\ ) + ( \m6|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc\(3),
	datad => \m4|ALT_INV_O_dataA[3]~DUPLICATE_q\,
	dataf => \m8|ALT_INV_F[3]~1_combout\,
	cin => \m6|Add2~10\,
	sumout => \m6|Add2~13_sumout\,
	cout => \m6|Add2~14\);

-- Location: LABCELL_X62_Y5_N15
\m6|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~17_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(4)) ) + ( (!\m2|alu_src1~q\) # (!\m10|pc[4]~DUPLICATE_q\) ) + ( \m6|Add2~14\ ))
-- \m6|Add2~18\ = CARRY(( (\m2|alu_src2\(1) & \m1|Immediate\(4)) ) + ( (!\m2|alu_src1~q\) # (!\m10|pc[4]~DUPLICATE_q\) ) + ( \m6|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datab => \m2|ALT_INV_alu_src1~q\,
	datad => \m1|ALT_INV_Immediate\(4),
	dataf => \m10|ALT_INV_pc[4]~DUPLICATE_q\,
	cin => \m6|Add2~14\,
	sumout => \m6|Add2~17_sumout\,
	cout => \m6|Add2~18\);

-- Location: LABCELL_X63_Y4_N6
\m6|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux11~0_combout\ = ( \m2|alu_op\(0) & ( \m6|Add2~17_sumout\ & ( ((!\m6|LessThan1~10_combout\ & \m6|LessThan1~18_combout\)) # (\m6|Add1~17_sumout\) ) ) ) # ( !\m2|alu_op\(0) & ( \m6|Add2~17_sumout\ & ( \m6|Add0~17_sumout\ ) ) ) # ( \m2|alu_op\(0) & ( 
-- !\m6|Add2~17_sumout\ & ( (\m6|Add1~17_sumout\ & ((!\m6|LessThan1~18_combout\) # (\m6|LessThan1~10_combout\))) ) ) ) # ( !\m2|alu_op\(0) & ( !\m6|Add2~17_sumout\ & ( \m6|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001101110100001111000011110010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~10_combout\,
	datab => \m6|ALT_INV_LessThan1~18_combout\,
	datac => \m6|ALT_INV_Add0~17_sumout\,
	datad => \m6|ALT_INV_Add1~17_sumout\,
	datae => \m2|ALT_INV_alu_op\(0),
	dataf => \m6|ALT_INV_Add2~17_sumout\,
	combout => \m6|Mux11~0_combout\);

-- Location: LABCELL_X63_Y4_N42
\m6|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux11~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & (((\m6|Mux11~0_combout\)))) # (\m2|alu_op\(2) & ((!\m8|F[4]~11_combout\ $ (((!\m7|F[4]~11_combout\ & \m2|alu_op\(0))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((!\m7|F[4]~11_combout\ 
-- & (((\m2|alu_op\(0) & \m8|F[4]~11_combout\)))) # (\m7|F[4]~11_combout\ & (((\m8|F[4]~11_combout\) # (\m2|alu_op\(0))))))) # (\m2|alu_op\(2) & (((\m7|F[3]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011111100011101000000110100011100001100001011100100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_F[4]~11_combout\,
	datab => \m2|ALT_INV_alu_op\(2),
	datac => \m7|ALT_INV_F[3]~1_combout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m8|ALT_INV_F[4]~11_combout\,
	datag => \m6|ALT_INV_Mux11~0_combout\,
	combout => \m6|Mux11~1_combout\);

-- Location: LABCELL_X64_Y5_N57
\m7|F[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[5]~12_combout\ = ( \m2|alu_src1~q\ & ( \m10|pc[5]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc[5]~DUPLICATE_q\,
	dataf => \m2|ALT_INV_alu_src1~q\,
	combout => \m7|F[5]~12_combout\);

-- Location: FF_X63_Y4_N44
\m6|O[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux11~1_combout\,
	asdata => \m7|F[5]~12_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(4));

-- Location: FF_X63_Y3_N13
\m10|pc[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~17_sumout\,
	asdata => \m6|O\(4),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc[4]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y5_N18
\m6|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~21_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(5)) ) + ( (!\m2|alu_src1~q\) # (!\m10|pc[5]~DUPLICATE_q\) ) + ( \m6|Add2~18\ ))
-- \m6|Add2~22\ = CARRY(( (\m2|alu_src2\(1) & \m1|Immediate\(5)) ) + ( (!\m2|alu_src1~q\) # (!\m10|pc[5]~DUPLICATE_q\) ) + ( \m6|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc[5]~DUPLICATE_q\,
	datad => \m1|ALT_INV_Immediate\(5),
	cin => \m6|Add2~18\,
	sumout => \m6|Add2~21_sumout\,
	cout => \m6|Add2~22\);

-- Location: LABCELL_X62_Y5_N21
\m6|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~25_sumout\ = SUM(( (!\m2|alu_src1~q\) # (!\m10|pc\(6)) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(6)) ) + ( \m6|Add2~22\ ))
-- \m6|Add2~26\ = CARRY(( (!\m2|alu_src1~q\) # (!\m10|pc\(6)) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(6)) ) + ( \m6|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc\(6),
	dataf => \m1|ALT_INV_Immediate\(6),
	cin => \m6|Add2~22\,
	sumout => \m6|Add2~25_sumout\,
	cout => \m6|Add2~26\);

-- Location: LABCELL_X64_Y6_N30
\m6|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux8~0_combout\ = ( \m2|alu_op\(0) & ( \m6|Add1~29_sumout\ & ( (!\m6|LessThan1~18_combout\) # ((\m6|Add2~29_sumout\) # (\m6|LessThan1~10_combout\)) ) ) ) # ( !\m2|alu_op\(0) & ( \m6|Add1~29_sumout\ & ( \m6|Add0~29_sumout\ ) ) ) # ( \m2|alu_op\(0) & ( 
-- !\m6|Add1~29_sumout\ & ( (\m6|LessThan1~18_combout\ & (!\m6|LessThan1~10_combout\ & \m6|Add2~29_sumout\)) ) ) ) # ( !\m2|alu_op\(0) & ( !\m6|Add1~29_sumout\ & ( \m6|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000001000000010000000000111111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~18_combout\,
	datab => \m6|ALT_INV_LessThan1~10_combout\,
	datac => \m6|ALT_INV_Add2~29_sumout\,
	datad => \m6|ALT_INV_Add0~29_sumout\,
	datae => \m2|ALT_INV_alu_op\(0),
	dataf => \m6|ALT_INV_Add1~29_sumout\,
	combout => \m6|Mux8~0_combout\);

-- Location: LABCELL_X64_Y6_N24
\m6|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux8~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & (((\m6|Mux8~0_combout\)))) # (\m2|alu_op\(2) & ((!\m8|F[7]~5_combout\ $ (((!\m7|F[7]~5_combout\ & \m2|alu_op\(0))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((!\m7|F[7]~5_combout\ & 
-- (((\m8|F[7]~5_combout\ & \m2|alu_op\(0))))) # (\m7|F[7]~5_combout\ & (((\m2|alu_op\(0)) # (\m8|F[7]~5_combout\)))))) # (\m2|alu_op\(2) & (((\m7|F[6]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011111100001100000000110100011100011101001011100100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_F[7]~5_combout\,
	datab => \m2|ALT_INV_alu_op\(2),
	datac => \m7|ALT_INV_F[6]~6_combout\,
	datad => \m8|ALT_INV_F[7]~5_combout\,
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m2|ALT_INV_alu_op\(0),
	datag => \m6|ALT_INV_Mux8~0_combout\,
	combout => \m6|Mux8~1_combout\);

-- Location: FF_X64_Y6_N26
\m6|O[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux8~1_combout\,
	asdata => \m7|F[8]~7_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(7));

-- Location: FF_X63_Y3_N22
\m10|pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~29_sumout\,
	asdata => \m6|O\(7),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(7));

-- Location: LABCELL_X63_Y2_N57
\m7|F[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[7]~5_combout\ = ( \m2|alu_src1~q\ & ( \m10|pc\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \m2|ALT_INV_alu_src1~q\,
	dataf => \m10|ALT_INV_pc\(7),
	combout => \m7|F[7]~5_combout\);

-- Location: LABCELL_X63_Y2_N36
\m8|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[6]~6_combout\ = ( \m1|Immediate\(6) & ( \m2|alu_src2\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	dataf => \m1|ALT_INV_Immediate\(6),
	combout => \m8|F[6]~6_combout\);

-- Location: LABCELL_X63_Y4_N33
\m6|LessThan1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~9_combout\ = ( \m8|F[6]~6_combout\ & ( (!\m8|F[7]~5_combout\ & (((\m6|LessThan1~8_combout\ & \m7|F[6]~6_combout\)) # (\m7|F[7]~5_combout\))) # (\m8|F[7]~5_combout\ & (\m6|LessThan1~8_combout\ & (\m7|F[7]~5_combout\ & \m7|F[6]~6_combout\))) ) 
-- ) # ( !\m8|F[6]~6_combout\ & ( (!\m8|F[7]~5_combout\ & (((\m7|F[6]~6_combout\) # (\m7|F[7]~5_combout\)) # (\m6|LessThan1~8_combout\))) # (\m8|F[7]~5_combout\ & (\m7|F[7]~5_combout\ & ((\m7|F[6]~6_combout\) # (\m6|LessThan1~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110111001111010011011100111100001100010011010000110001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~8_combout\,
	datab => \m8|ALT_INV_F[7]~5_combout\,
	datac => \m7|ALT_INV_F[7]~5_combout\,
	datad => \m7|ALT_INV_F[6]~6_combout\,
	dataf => \m8|ALT_INV_F[6]~6_combout\,
	combout => \m6|LessThan1~9_combout\);

-- Location: LABCELL_X62_Y4_N15
\m6|LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~7_combout\ = ( \m7|F[0]~4_combout\ & ( (!\m8|F[1]~3_combout\ & ((!\m8|F[0]~4_combout\) # (\m7|F[1]~3_combout\))) # (\m8|F[1]~3_combout\ & (\m7|F[1]~3_combout\ & !\m8|F[0]~4_combout\)) ) ) # ( !\m7|F[0]~4_combout\ & ( (!\m8|F[1]~3_combout\ & 
-- \m7|F[1]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101111000010101010111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m8|ALT_INV_F[1]~3_combout\,
	datac => \m7|ALT_INV_F[1]~3_combout\,
	datad => \m8|ALT_INV_F[0]~4_combout\,
	dataf => \m7|ALT_INV_F[0]~4_combout\,
	combout => \m6|LessThan1~7_combout\);

-- Location: LABCELL_X63_Y4_N12
\m6|LessThan1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~10_combout\ = ( \m6|Equal0~1_combout\ & ( \m6|Equal0~2_combout\ & ( (!\m6|LessThan1~4_combout\ & (((\m6|LessThan1~7_combout\) # (\m6|LessThan1~9_combout\)) # (\m6|LessThan1~6_combout\))) ) ) ) # ( !\m6|Equal0~1_combout\ & ( 
-- \m6|Equal0~2_combout\ & ( (!\m6|LessThan1~4_combout\ & ((\m6|LessThan1~9_combout\) # (\m6|LessThan1~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001100010011000100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~6_combout\,
	datab => \m6|ALT_INV_LessThan1~4_combout\,
	datac => \m6|ALT_INV_LessThan1~9_combout\,
	datad => \m6|ALT_INV_LessThan1~7_combout\,
	datae => \m6|ALT_INV_Equal0~1_combout\,
	dataf => \m6|ALT_INV_Equal0~2_combout\,
	combout => \m6|LessThan1~10_combout\);

-- Location: LABCELL_X63_Y4_N0
\m6|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux15~0_combout\ = ( \m2|alu_op\(0) & ( \m6|Add2~1_sumout\ & ( (!\m6|LessThan1~10_combout\ & (\m6|LessThan1~18_combout\ & !\m2|alu_op\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~10_combout\,
	datab => \m6|ALT_INV_LessThan1~18_combout\,
	datad => \m2|ALT_INV_alu_op\(1),
	datae => \m2|ALT_INV_alu_op\(0),
	dataf => \m6|ALT_INV_Add2~1_sumout\,
	combout => \m6|Mux15~0_combout\);

-- Location: MLABCELL_X65_Y4_N33
\m6|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux15~1_combout\ = ( \m6|Add0~1_sumout\ & ( (!\m2|alu_op\(0) & ((!\m2|alu_op\(1)) # ((\m8|F[0]~4_combout\ & \m7|F[0]~4_combout\)))) # (\m2|alu_op\(0) & (\m2|alu_op\(1) & ((\m7|F[0]~4_combout\) # (\m8|F[0]~4_combout\)))) ) ) # ( !\m6|Add0~1_sumout\ & ( 
-- (\m2|alu_op\(1) & ((!\m2|alu_op\(0) & (\m8|F[0]~4_combout\ & \m7|F[0]~4_combout\)) # (\m2|alu_op\(0) & ((\m7|F[0]~4_combout\) # (\m8|F[0]~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011110100001101001111010000110100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_op\(0),
	datab => \m8|ALT_INV_F[0]~4_combout\,
	datac => \m2|ALT_INV_alu_op\(1),
	datad => \m7|ALT_INV_F[0]~4_combout\,
	dataf => \m6|ALT_INV_Add0~1_sumout\,
	combout => \m6|Mux15~1_combout\);

-- Location: LABCELL_X66_Y4_N42
\m6|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux15~2_combout\ = ( !\m6|Mux15~1_combout\ & ( \m6|LessThan1~10_combout\ & ( ((!\m2|alu_op\(0)) # (!\m6|Add1~1_sumout\)) # (\m2|alu_op\(1)) ) ) ) # ( !\m6|Mux15~1_combout\ & ( !\m6|LessThan1~10_combout\ & ( (((!\m2|alu_op\(0)) # (!\m6|Add1~1_sumout\)) 
-- # (\m2|alu_op\(1))) # (\m6|LessThan1~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111000000000000000011111111111100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~18_combout\,
	datab => \m2|ALT_INV_alu_op\(1),
	datac => \m2|ALT_INV_alu_op\(0),
	datad => \m6|ALT_INV_Add1~1_sumout\,
	datae => \m6|ALT_INV_Mux15~1_combout\,
	dataf => \m6|ALT_INV_LessThan1~10_combout\,
	combout => \m6|Mux15~2_combout\);

-- Location: LABCELL_X67_Y4_N39
\m6|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux15~3_combout\ = ( !\m2|alu_op\(1) & ( \m6|Add0~1_sumout\ & ( (\m2|alu_op\(2) & (!\m2|alu_op\(3) & ((!\m8|F[0]~4_combout\) # (\m2|alu_op\(0))))) ) ) ) # ( !\m2|alu_op\(1) & ( !\m6|Add0~1_sumout\ & ( (!\m8|F[0]~4_combout\ & (\m2|alu_op\(2) & 
-- (!\m2|alu_op\(0) & !\m2|alu_op\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m8|ALT_INV_F[0]~4_combout\,
	datab => \m2|ALT_INV_alu_op\(2),
	datac => \m2|ALT_INV_alu_op\(0),
	datad => \m2|ALT_INV_alu_op\(3),
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m6|ALT_INV_Add0~1_sumout\,
	combout => \m6|Mux15~3_combout\);

-- Location: LABCELL_X66_Y4_N36
\m6|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux15~4_combout\ = ( \m6|Mux15~3_combout\ & ( \m2|alu_op\(2) ) ) # ( !\m6|Mux15~3_combout\ & ( \m2|alu_op\(2) & ( (\m7|F[1]~3_combout\ & \m2|alu_op\(3)) ) ) ) # ( \m6|Mux15~3_combout\ & ( !\m2|alu_op\(2) ) ) # ( !\m6|Mux15~3_combout\ & ( 
-- !\m2|alu_op\(2) & ( (!\m2|alu_op\(3) & (((!\m6|Mux15~2_combout\)) # (\m6|Mux15~0_combout\))) # (\m2|alu_op\(3) & (((\m7|F[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100001111111111111111111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_Mux15~0_combout\,
	datab => \m6|ALT_INV_Mux15~2_combout\,
	datac => \m7|ALT_INV_F[1]~3_combout\,
	datad => \m2|ALT_INV_alu_op\(3),
	datae => \m6|ALT_INV_Mux15~3_combout\,
	dataf => \m2|ALT_INV_alu_op\(2),
	combout => \m6|Mux15~4_combout\);

-- Location: LABCELL_X62_Y4_N21
\m6|Mux15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux15~5_combout\ = ( \m2|alu_op\(1) & ( (!\m2|alu_op\(3) & ((!\m2|alu_op\(2)) # (\m2|alu_op\(0)))) ) ) # ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(3)) # ((!\m2|alu_op\(2) & !\m2|alu_op\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_op\(2),
	datac => \m2|ALT_INV_alu_op\(0),
	datad => \m2|ALT_INV_alu_op\(3),
	dataf => \m2|ALT_INV_alu_op\(1),
	combout => \m6|Mux15~5_combout\);

-- Location: FF_X66_Y4_N38
\m6|O[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux15~4_combout\,
	ena => \m6|Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(0));

-- Location: FF_X63_Y3_N2
\m10|pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~1_sumout\,
	asdata => \m6|O\(0),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(0));

-- Location: LABCELL_X63_Y3_N3
\m10|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~5_sumout\ = SUM(( \m10|pc\(1) ) + ( GND ) + ( \m10|Add0~2\ ))
-- \m10|Add0~6\ = CARRY(( \m10|pc\(1) ) + ( GND ) + ( \m10|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc\(1),
	cin => \m10|Add0~2\,
	sumout => \m10|Add0~5_sumout\,
	cout => \m10|Add0~6\);

-- Location: LABCELL_X63_Y4_N18
\m6|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux14~0_combout\ = ( \m6|Add1~5_sumout\ & ( \m6|LessThan1~18_combout\ & ( (!\m2|alu_op\(0) & (\m6|Add0~5_sumout\)) # (\m2|alu_op\(0) & (((\m6|Add2~5_sumout\) # (\m6|LessThan1~10_combout\)))) ) ) ) # ( !\m6|Add1~5_sumout\ & ( \m6|LessThan1~18_combout\ 
-- & ( (!\m2|alu_op\(0) & (\m6|Add0~5_sumout\)) # (\m2|alu_op\(0) & (((!\m6|LessThan1~10_combout\ & \m6|Add2~5_sumout\)))) ) ) ) # ( \m6|Add1~5_sumout\ & ( !\m6|LessThan1~18_combout\ & ( (\m2|alu_op\(0)) # (\m6|Add0~5_sumout\) ) ) ) # ( !\m6|Add1~5_sumout\ & 
-- ( !\m6|LessThan1~18_combout\ & ( (\m6|Add0~5_sumout\ & !\m2|alu_op\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111101010101000011000101010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_Add0~5_sumout\,
	datab => \m6|ALT_INV_LessThan1~10_combout\,
	datac => \m6|ALT_INV_Add2~5_sumout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m6|ALT_INV_Add1~5_sumout\,
	dataf => \m6|ALT_INV_LessThan1~18_combout\,
	combout => \m6|Mux14~0_combout\);

-- Location: LABCELL_X66_Y4_N6
\m6|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux14~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & (((\m6|Mux14~0_combout\)))) # (\m2|alu_op\(2) & (!\m8|F[1]~3_combout\ $ ((((\m2|alu_op\(0) & !\m7|F[1]~3_combout\)))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((!\m8|F[1]~3_combout\ & 
-- (((\m2|alu_op\(0) & \m7|F[1]~3_combout\)))) # (\m8|F[1]~3_combout\ & (((\m7|F[1]~3_combout\) # (\m2|alu_op\(0))))))) # (\m2|alu_op\(2) & (((\m7|F[0]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100111000011011000001010010011101001110010011100010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_op\(2),
	datab => \m8|ALT_INV_F[1]~3_combout\,
	datac => \m7|ALT_INV_F[0]~4_combout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m7|ALT_INV_F[1]~3_combout\,
	datag => \m6|ALT_INV_Mux14~0_combout\,
	combout => \m6|Mux14~1_combout\);

-- Location: FF_X66_Y4_N8
\m6|O[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux14~1_combout\,
	asdata => \m7|F[2]~2_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(1));

-- Location: FF_X63_Y3_N5
\m10|pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~5_sumout\,
	asdata => \m6|O\(1),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(1));

-- Location: LABCELL_X63_Y3_N6
\m10|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~9_sumout\ = SUM(( \m10|pc[2]~DUPLICATE_q\ ) + ( GND ) + ( \m10|Add0~6\ ))
-- \m10|Add0~10\ = CARRY(( \m10|pc[2]~DUPLICATE_q\ ) + ( GND ) + ( \m10|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc[2]~DUPLICATE_q\,
	cin => \m10|Add0~6\,
	sumout => \m10|Add0~9_sumout\,
	cout => \m10|Add0~10\);

-- Location: FF_X63_Y3_N7
\m10|pc[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~9_sumout\,
	asdata => \m6|O\(2),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc[2]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y3_N9
\m10|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~13_sumout\ = SUM(( \m10|pc\(3) ) + ( GND ) + ( \m10|Add0~10\ ))
-- \m10|Add0~14\ = CARRY(( \m10|pc\(3) ) + ( GND ) + ( \m10|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc\(3),
	cin => \m10|Add0~10\,
	sumout => \m10|Add0~13_sumout\,
	cout => \m10|Add0~14\);

-- Location: MLABCELL_X65_Y4_N0
\m6|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux12~0_combout\ = ( \m6|Add2~13_sumout\ & ( \m6|Add0~13_sumout\ & ( (!\m2|alu_op\(0)) # (((!\m6|LessThan1~10_combout\ & \m6|LessThan1~18_combout\)) # (\m6|Add1~13_sumout\)) ) ) ) # ( !\m6|Add2~13_sumout\ & ( \m6|Add0~13_sumout\ & ( (!\m2|alu_op\(0)) 
-- # ((\m6|Add1~13_sumout\ & ((!\m6|LessThan1~18_combout\) # (\m6|LessThan1~10_combout\)))) ) ) ) # ( \m6|Add2~13_sumout\ & ( !\m6|Add0~13_sumout\ & ( (\m2|alu_op\(0) & (((!\m6|LessThan1~10_combout\ & \m6|LessThan1~18_combout\)) # (\m6|Add1~13_sumout\))) ) ) 
-- ) # ( !\m6|Add2~13_sumout\ & ( !\m6|Add0~13_sumout\ & ( (\m2|alu_op\(0) & (\m6|Add1~13_sumout\ & ((!\m6|LessThan1~18_combout\) # (\m6|LessThan1~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000100000111111110000111111011111001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~10_combout\,
	datab => \m6|ALT_INV_LessThan1~18_combout\,
	datac => \m2|ALT_INV_alu_op\(0),
	datad => \m6|ALT_INV_Add1~13_sumout\,
	datae => \m6|ALT_INV_Add2~13_sumout\,
	dataf => \m6|ALT_INV_Add0~13_sumout\,
	combout => \m6|Mux12~0_combout\);

-- Location: LABCELL_X66_Y4_N24
\m6|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux12~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((((\m6|Mux12~0_combout\))))) # (\m2|alu_op\(2) & (!\m8|F[3]~1_combout\ $ (((\m2|alu_op\(0) & ((!\m7|F[3]~1_combout\))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((!\m2|alu_op\(0) & 
-- (\m8|F[3]~1_combout\ & ((\m7|F[3]~1_combout\)))) # (\m2|alu_op\(0) & (((\m7|F[3]~1_combout\)) # (\m8|F[3]~1_combout\))))) # (\m2|alu_op\(2) & ((((\m7|F[2]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111110011001000100010000111100001111110011000111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_op\(0),
	datab => \m8|ALT_INV_F[3]~1_combout\,
	datac => \m7|ALT_INV_F[2]~2_combout\,
	datad => \m2|ALT_INV_alu_op\(2),
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m7|ALT_INV_F[3]~1_combout\,
	datag => \m6|ALT_INV_Mux12~0_combout\,
	combout => \m6|Mux12~1_combout\);

-- Location: FF_X66_Y4_N26
\m6|O[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux12~1_combout\,
	asdata => \m7|F[4]~11_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(3));

-- Location: FF_X63_Y3_N11
\m10|pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~13_sumout\,
	asdata => \m6|O\(3),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(3));

-- Location: LABCELL_X63_Y3_N12
\m10|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~17_sumout\ = SUM(( \m10|pc\(4) ) + ( GND ) + ( \m10|Add0~14\ ))
-- \m10|Add0~18\ = CARRY(( \m10|pc\(4) ) + ( GND ) + ( \m10|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m10|ALT_INV_pc\(4),
	cin => \m10|Add0~14\,
	sumout => \m10|Add0~17_sumout\,
	cout => \m10|Add0~18\);

-- Location: FF_X63_Y3_N14
\m10|pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~17_sumout\,
	asdata => \m6|O\(4),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(4));

-- Location: LABCELL_X63_Y3_N15
\m10|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~21_sumout\ = SUM(( \m10|pc[5]~DUPLICATE_q\ ) + ( GND ) + ( \m10|Add0~18\ ))
-- \m10|Add0~22\ = CARRY(( \m10|pc[5]~DUPLICATE_q\ ) + ( GND ) + ( \m10|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc[5]~DUPLICATE_q\,
	cin => \m10|Add0~18\,
	sumout => \m10|Add0~21_sumout\,
	cout => \m10|Add0~22\);

-- Location: MLABCELL_X65_Y5_N48
\m8|F[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[5]~12_combout\ = ( \m2|alu_src2\(1) & ( \m1|Immediate\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m1|ALT_INV_Immediate\(5),
	dataf => \m2|ALT_INV_alu_src2\(1),
	combout => \m8|F[5]~12_combout\);

-- Location: LABCELL_X64_Y6_N36
\m6|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux10~0_combout\ = ( \m6|Add2~21_sumout\ & ( \m6|Add1~21_sumout\ & ( (\m6|Add0~21_sumout\) # (\m2|alu_op\(0)) ) ) ) # ( !\m6|Add2~21_sumout\ & ( \m6|Add1~21_sumout\ & ( (!\m2|alu_op\(0) & (((\m6|Add0~21_sumout\)))) # (\m2|alu_op\(0) & 
-- ((!\m6|LessThan1~18_combout\) # ((\m6|LessThan1~10_combout\)))) ) ) ) # ( \m6|Add2~21_sumout\ & ( !\m6|Add1~21_sumout\ & ( (!\m2|alu_op\(0) & (((\m6|Add0~21_sumout\)))) # (\m2|alu_op\(0) & (\m6|LessThan1~18_combout\ & (!\m6|LessThan1~10_combout\))) ) ) ) 
-- # ( !\m6|Add2~21_sumout\ & ( !\m6|Add1~21_sumout\ & ( (!\m2|alu_op\(0) & \m6|Add0~21_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000001001111010000001011111110110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~18_combout\,
	datab => \m6|ALT_INV_LessThan1~10_combout\,
	datac => \m2|ALT_INV_alu_op\(0),
	datad => \m6|ALT_INV_Add0~21_sumout\,
	datae => \m6|ALT_INV_Add2~21_sumout\,
	dataf => \m6|ALT_INV_Add1~21_sumout\,
	combout => \m6|Mux10~0_combout\);

-- Location: LABCELL_X64_Y6_N18
\m6|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux10~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & (((\m6|Mux10~0_combout\)))) # (\m2|alu_op\(2) & ((!\m8|F[5]~12_combout\ $ (((!\m7|F[5]~12_combout\ & \m2|alu_op\(0))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((!\m7|F[5]~12_combout\ 
-- & (((\m2|alu_op\(0) & \m8|F[5]~12_combout\)))) # (\m7|F[5]~12_combout\ & (((\m8|F[5]~12_combout\) # (\m2|alu_op\(0))))))) # (\m2|alu_op\(2) & (((\m7|F[4]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011111100011101000000110100011100001100001011100100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_F[5]~12_combout\,
	datab => \m2|ALT_INV_alu_op\(2),
	datac => \m7|ALT_INV_F[4]~11_combout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m8|ALT_INV_F[5]~12_combout\,
	datag => \m6|ALT_INV_Mux10~0_combout\,
	combout => \m6|Mux10~1_combout\);

-- Location: FF_X64_Y6_N20
\m6|O[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux10~1_combout\,
	asdata => \m7|F[6]~6_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(5));

-- Location: FF_X63_Y3_N17
\m10|pc[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~21_sumout\,
	asdata => \m6|O\(5),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc[5]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y3_N18
\m10|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~25_sumout\ = SUM(( \m10|pc\(6) ) + ( GND ) + ( \m10|Add0~22\ ))
-- \m10|Add0~26\ = CARRY(( \m10|pc\(6) ) + ( GND ) + ( \m10|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc\(6),
	cin => \m10|Add0~22\,
	sumout => \m10|Add0~25_sumout\,
	cout => \m10|Add0~26\);

-- Location: LABCELL_X64_Y6_N54
\m6|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux9~0_combout\ = ( \m6|Add2~25_sumout\ & ( \m6|Add1~25_sumout\ & ( (\m2|alu_op\(0)) # (\m6|Add0~25_sumout\) ) ) ) # ( !\m6|Add2~25_sumout\ & ( \m6|Add1~25_sumout\ & ( (!\m2|alu_op\(0) & (((\m6|Add0~25_sumout\)))) # (\m2|alu_op\(0) & 
-- ((!\m6|LessThan1~18_combout\) # ((\m6|LessThan1~10_combout\)))) ) ) ) # ( \m6|Add2~25_sumout\ & ( !\m6|Add1~25_sumout\ & ( (!\m2|alu_op\(0) & (((\m6|Add0~25_sumout\)))) # (\m2|alu_op\(0) & (\m6|LessThan1~18_combout\ & (!\m6|LessThan1~10_combout\))) ) ) ) 
-- # ( !\m6|Add2~25_sumout\ & ( !\m6|Add1~25_sumout\ & ( (\m6|Add0~25_sumout\ & !\m2|alu_op\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110100010000001111101110110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~18_combout\,
	datab => \m6|ALT_INV_LessThan1~10_combout\,
	datac => \m6|ALT_INV_Add0~25_sumout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m6|ALT_INV_Add2~25_sumout\,
	dataf => \m6|ALT_INV_Add1~25_sumout\,
	combout => \m6|Mux9~0_combout\);

-- Location: LABCELL_X64_Y6_N42
\m6|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux9~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((((\m6|Mux9~0_combout\))))) # (\m2|alu_op\(2) & (!\m8|F[6]~6_combout\ $ (((!\m7|F[6]~6_combout\ & ((\m2|alu_op\(0)))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((!\m7|F[6]~6_combout\ 
-- & (\m8|F[6]~6_combout\ & ((\m2|alu_op\(0))))) # (\m7|F[6]~6_combout\ & (((\m2|alu_op\(0))) # (\m8|F[6]~6_combout\))))) # (\m2|alu_op\(2) & ((((\m7|F[5]~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111001100000100010000111100001111011001100111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_F[6]~6_combout\,
	datab => \m8|ALT_INV_F[6]~6_combout\,
	datac => \m7|ALT_INV_F[5]~12_combout\,
	datad => \m2|ALT_INV_alu_op\(2),
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m2|ALT_INV_alu_op\(0),
	datag => \m6|ALT_INV_Mux9~0_combout\,
	combout => \m6|Mux9~1_combout\);

-- Location: FF_X64_Y6_N44
\m6|O[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux9~1_combout\,
	asdata => \m7|F[7]~5_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(6));

-- Location: FF_X63_Y3_N20
\m10|pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~25_sumout\,
	asdata => \m6|O\(6),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(6));

-- Location: LABCELL_X63_Y3_N21
\m10|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~29_sumout\ = SUM(( \m10|pc[7]~DUPLICATE_q\ ) + ( GND ) + ( \m10|Add0~26\ ))
-- \m10|Add0~30\ = CARRY(( \m10|pc[7]~DUPLICATE_q\ ) + ( GND ) + ( \m10|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc[7]~DUPLICATE_q\,
	cin => \m10|Add0~26\,
	sumout => \m10|Add0~29_sumout\,
	cout => \m10|Add0~30\);

-- Location: FF_X63_Y3_N23
\m10|pc[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~29_sumout\,
	asdata => \m6|O\(7),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc[7]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y3_N24
\m10|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~33_sumout\ = SUM(( \m10|pc\(8) ) + ( GND ) + ( \m10|Add0~30\ ))
-- \m10|Add0~34\ = CARRY(( \m10|pc\(8) ) + ( GND ) + ( \m10|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc\(8),
	cin => \m10|Add0~30\,
	sumout => \m10|Add0~33_sumout\,
	cout => \m10|Add0~34\);

-- Location: FF_X63_Y3_N26
\m10|pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~33_sumout\,
	asdata => \m6|O\(8),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(8));

-- Location: LABCELL_X63_Y3_N27
\m10|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~37_sumout\ = SUM(( \m10|pc\(9) ) + ( GND ) + ( \m10|Add0~34\ ))
-- \m10|Add0~38\ = CARRY(( \m10|pc\(9) ) + ( GND ) + ( \m10|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc\(9),
	cin => \m10|Add0~34\,
	sumout => \m10|Add0~37_sumout\,
	cout => \m10|Add0~38\);

-- Location: FF_X63_Y3_N28
\m10|pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~37_sumout\,
	asdata => \m6|O\(9),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(9));

-- Location: LABCELL_X63_Y3_N30
\m10|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~41_sumout\ = SUM(( \m10|pc\(10) ) + ( GND ) + ( \m10|Add0~38\ ))
-- \m10|Add0~42\ = CARRY(( \m10|pc\(10) ) + ( GND ) + ( \m10|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m10|ALT_INV_pc\(10),
	cin => \m10|Add0~38\,
	sumout => \m10|Add0~41_sumout\,
	cout => \m10|Add0~42\);

-- Location: FF_X63_Y3_N32
\m10|pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~41_sumout\,
	asdata => \m6|O\(10),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(10));

-- Location: LABCELL_X63_Y3_N33
\m10|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~45_sumout\ = SUM(( \m10|pc[11]~DUPLICATE_q\ ) + ( GND ) + ( \m10|Add0~42\ ))
-- \m10|Add0~46\ = CARRY(( \m10|pc[11]~DUPLICATE_q\ ) + ( GND ) + ( \m10|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc[11]~DUPLICATE_q\,
	cin => \m10|Add0~42\,
	sumout => \m10|Add0~45_sumout\,
	cout => \m10|Add0~46\);

-- Location: FF_X63_Y3_N35
\m10|pc[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~45_sumout\,
	asdata => \m6|O\(11),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc[11]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y3_N36
\m10|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~49_sumout\ = SUM(( \m10|pc\(12) ) + ( GND ) + ( \m10|Add0~46\ ))
-- \m10|Add0~50\ = CARRY(( \m10|pc\(12) ) + ( GND ) + ( \m10|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc\(12),
	cin => \m10|Add0~46\,
	sumout => \m10|Add0~49_sumout\,
	cout => \m10|Add0~50\);

-- Location: FF_X63_Y3_N38
\m10|pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~49_sumout\,
	asdata => \m6|O\(12),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(12));

-- Location: LABCELL_X63_Y3_N39
\m10|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~53_sumout\ = SUM(( \m10|pc[13]~DUPLICATE_q\ ) + ( GND ) + ( \m10|Add0~50\ ))
-- \m10|Add0~54\ = CARRY(( \m10|pc[13]~DUPLICATE_q\ ) + ( GND ) + ( \m10|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc[13]~DUPLICATE_q\,
	cin => \m10|Add0~50\,
	sumout => \m10|Add0~53_sumout\,
	cout => \m10|Add0~54\);

-- Location: FF_X63_Y3_N41
\m10|pc[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~53_sumout\,
	asdata => \m6|O\(13),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc[13]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y3_N42
\m10|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~57_sumout\ = SUM(( \m10|pc[14]~DUPLICATE_q\ ) + ( GND ) + ( \m10|Add0~54\ ))
-- \m10|Add0~58\ = CARRY(( \m10|pc[14]~DUPLICATE_q\ ) + ( GND ) + ( \m10|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m10|ALT_INV_pc[14]~DUPLICATE_q\,
	cin => \m10|Add0~54\,
	sumout => \m10|Add0~57_sumout\,
	cout => \m10|Add0~58\);

-- Location: LABCELL_X63_Y6_N12
\m8|F[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[14]~15_combout\ = ( \m1|Immediate\(14) & ( \m2|alu_src2\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_alu_src2\(1),
	dataf => \m1|ALT_INV_Immediate\(14),
	combout => \m8|F[14]~15_combout\);

-- Location: LABCELL_X62_Y5_N45
\m6|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~57_sumout\ = SUM(( (!\m2|alu_src1~q\) # (!\m10|pc[14]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(14)) ) + ( \m6|Add2~54\ ))
-- \m6|Add2~58\ = CARRY(( (!\m2|alu_src1~q\) # (!\m10|pc[14]~DUPLICATE_q\) ) + ( (\m2|alu_src2\(1) & \m1|Immediate\(14)) ) + ( \m6|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc[14]~DUPLICATE_q\,
	dataf => \m1|ALT_INV_Immediate\(14),
	cin => \m6|Add2~54\,
	sumout => \m6|Add2~57_sumout\,
	cout => \m6|Add2~58\);

-- Location: LABCELL_X62_Y3_N51
\m6|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~57_sumout\ = SUM(( (\m2|alu_src1~q\ & \m10|pc[14]~DUPLICATE_q\) ) + ( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(14)) ) + ( \m6|Add1~54\ ))
-- \m6|Add1~58\ = CARRY(( (\m2|alu_src1~q\ & \m10|pc[14]~DUPLICATE_q\) ) + ( (!\m2|alu_src2\(1)) # (!\m1|Immediate\(14)) ) + ( \m6|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m10|ALT_INV_pc[14]~DUPLICATE_q\,
	cin => \m6|Add1~54\,
	sumout => \m6|Add1~57_sumout\,
	cout => \m6|Add1~58\);

-- Location: LABCELL_X64_Y5_N42
\m6|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~57_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(14)) ) + ( (\m2|alu_src1~q\ & \m10|pc[14]~DUPLICATE_q\) ) + ( \m6|Add0~54\ ))
-- \m6|Add0~58\ = CARRY(( (\m2|alu_src2\(1) & \m1|Immediate\(14)) ) + ( (\m2|alu_src1~q\ & \m10|pc[14]~DUPLICATE_q\) ) + ( \m6|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m1|ALT_INV_Immediate\(14),
	dataf => \m10|ALT_INV_pc[14]~DUPLICATE_q\,
	cin => \m6|Add0~54\,
	sumout => \m6|Add0~57_sumout\,
	cout => \m6|Add0~58\);

-- Location: LABCELL_X63_Y6_N54
\m6|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux1~0_combout\ = ( \m6|Add1~57_sumout\ & ( \m6|Add0~57_sumout\ & ( (((!\m6|LessThan1~18_combout\) # (!\m2|alu_op\(0))) # (\m6|Add2~57_sumout\)) # (\m6|LessThan1~10_combout\) ) ) ) # ( !\m6|Add1~57_sumout\ & ( \m6|Add0~57_sumout\ & ( (!\m2|alu_op\(0)) 
-- # ((!\m6|LessThan1~10_combout\ & (\m6|Add2~57_sumout\ & \m6|LessThan1~18_combout\))) ) ) ) # ( \m6|Add1~57_sumout\ & ( !\m6|Add0~57_sumout\ & ( (\m2|alu_op\(0) & (((!\m6|LessThan1~18_combout\) # (\m6|Add2~57_sumout\)) # (\m6|LessThan1~10_combout\))) ) ) ) 
-- # ( !\m6|Add1~57_sumout\ & ( !\m6|Add0~57_sumout\ & ( (!\m6|LessThan1~10_combout\ & (\m6|Add2~57_sumout\ & (\m6|LessThan1~18_combout\ & \m2|alu_op\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000001111011111111111000000101111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~10_combout\,
	datab => \m6|ALT_INV_Add2~57_sumout\,
	datac => \m6|ALT_INV_LessThan1~18_combout\,
	datad => \m2|ALT_INV_alu_op\(0),
	datae => \m6|ALT_INV_Add1~57_sumout\,
	dataf => \m6|ALT_INV_Add0~57_sumout\,
	combout => \m6|Mux1~0_combout\);

-- Location: LABCELL_X63_Y6_N6
\m6|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux1~1_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((((\m6|Mux1~0_combout\))))) # (\m2|alu_op\(2) & (!\m8|F[14]~15_combout\ $ (((\m2|alu_op\(0) & ((!\m7|F[14]~15_combout\))))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & ((!\m2|alu_op\(0) & 
-- (\m8|F[14]~15_combout\ & ((\m7|F[14]~15_combout\)))) # (\m2|alu_op\(0) & (((\m7|F[14]~15_combout\)) # (\m8|F[14]~15_combout\))))) # (\m2|alu_op\(2) & ((((\m7|F[13]~14_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000100010111011110011001110011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_op\(0),
	datab => \m8|ALT_INV_F[14]~15_combout\,
	datac => \m7|ALT_INV_F[13]~14_combout\,
	datad => \m7|ALT_INV_F[14]~15_combout\,
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m2|ALT_INV_alu_op\(2),
	datag => \m6|ALT_INV_Mux1~0_combout\,
	combout => \m6|Mux1~1_combout\);

-- Location: MLABCELL_X65_Y4_N30
\m7|F[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|F[15]~0_combout\ = ( \m2|alu_src1~q\ & ( \m10|pc[15]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \m10|ALT_INV_pc[15]~DUPLICATE_q\,
	dataf => \m2|ALT_INV_alu_src1~q\,
	combout => \m7|F[15]~0_combout\);

-- Location: FF_X63_Y6_N8
\m6|O[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux1~1_combout\,
	asdata => \m7|F[15]~0_combout\,
	sload => \m2|alu_op\(3),
	ena => \m6|O[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(14));

-- Location: FF_X63_Y3_N43
\m10|pc[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~57_sumout\,
	asdata => \m6|O\(14),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc[14]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y3_N54
\m6|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add1~61_sumout\ = SUM(( (!\m1|Immediate\(15)) # (!\m2|alu_src2\(1)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(15)) ) + ( \m6|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000000000000000001110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(15),
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m2|ALT_INV_alu_src1~q\,
	dataf => \m10|ALT_INV_pc\(15),
	cin => \m6|Add1~58\,
	sumout => \m6|Add1~61_sumout\);

-- Location: LABCELL_X62_Y5_N48
\m6|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add2~61_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(15)) ) + ( (!\m2|alu_src1~q\) # (!\m10|pc\(15)) ) + ( \m6|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m1|ALT_INV_Immediate\(15),
	dataf => \m10|ALT_INV_pc\(15),
	cin => \m6|Add2~58\,
	sumout => \m6|Add2~61_sumout\);

-- Location: LABCELL_X62_Y4_N36
\m6|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux0~0_combout\ = ( !\m2|alu_op\(2) & ( (!\m2|alu_op\(1) & \m2|alu_op\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_alu_op\(1),
	datad => \m2|ALT_INV_alu_op\(0),
	dataf => \m2|ALT_INV_alu_op\(2),
	combout => \m6|Mux0~0_combout\);

-- Location: MLABCELL_X65_Y5_N27
\m8|F[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m8|F[15]~0_combout\ = ( \m2|alu_src2\(1) & ( !\m1|Immediate\(15) ) ) # ( !\m2|alu_src2\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(15),
	dataf => \m2|ALT_INV_alu_src2\(1),
	combout => \m8|F[15]~0_combout\);

-- Location: LABCELL_X64_Y5_N45
\m6|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Add0~61_sumout\ = SUM(( (\m2|alu_src2\(1) & \m1|Immediate\(15)) ) + ( (\m2|alu_src1~q\ & \m10|pc\(15)) ) + ( \m6|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m1|ALT_INV_Immediate\(15),
	dataf => \m10|ALT_INV_pc\(15),
	cin => \m6|Add0~58\,
	sumout => \m6|Add0~61_sumout\);

-- Location: LABCELL_X63_Y6_N48
\m6|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux0~2_combout\ = ( !\m2|alu_op\(1) & ( (!\m2|alu_op\(2) & (((\m6|Add0~61_sumout\ & ((!\m2|alu_op\(0))))))) # (\m2|alu_op\(2) & (!\m8|F[15]~0_combout\ $ ((((!\m2|alu_op\(0)) # (\m7|F[15]~0_combout\)))))) ) ) # ( \m2|alu_op\(1) & ( (!\m2|alu_op\(2) & 
-- ((!\m8|F[15]~0_combout\ & (((\m2|alu_op\(0)) # (\m7|F[15]~0_combout\)))) # (\m8|F[15]~0_combout\ & (((\m7|F[15]~0_combout\ & \m2|alu_op\(0))))))) # (\m2|alu_op\(2) & (((\m7|F[14]~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000000111000101100100010000100011000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m8|ALT_INV_F[15]~0_combout\,
	datab => \m2|ALT_INV_alu_op\(2),
	datac => \m7|ALT_INV_F[14]~15_combout\,
	datad => \m7|ALT_INV_F[15]~0_combout\,
	datae => \m2|ALT_INV_alu_op\(1),
	dataf => \m2|ALT_INV_alu_op\(0),
	datag => \m6|ALT_INV_Add0~61_sumout\,
	combout => \m6|Mux0~2_combout\);

-- Location: LABCELL_X62_Y4_N6
\m6|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux0~1_combout\ = ( \m6|Mux0~0_combout\ & ( \m6|Mux0~2_combout\ ) ) # ( !\m6|Mux0~0_combout\ & ( \m6|Mux0~2_combout\ ) ) # ( \m6|Mux0~0_combout\ & ( !\m6|Mux0~2_combout\ & ( (!\m6|LessThan1~10_combout\ & ((!\m6|LessThan1~18_combout\ & 
-- (\m6|Add1~61_sumout\)) # (\m6|LessThan1~18_combout\ & ((\m6|Add2~61_sumout\))))) # (\m6|LessThan1~10_combout\ & (\m6|Add1~61_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010001110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_Add1~61_sumout\,
	datab => \m6|ALT_INV_LessThan1~10_combout\,
	datac => \m6|ALT_INV_Add2~61_sumout\,
	datad => \m6|ALT_INV_LessThan1~18_combout\,
	datae => \m6|ALT_INV_Mux0~0_combout\,
	dataf => \m6|ALT_INV_Mux0~2_combout\,
	combout => \m6|Mux0~1_combout\);

-- Location: FF_X62_Y4_N8
\m6|O[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux0~1_combout\,
	sclr => \m2|alu_op\(3),
	ena => \m6|Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|O\(15));

-- Location: FF_X63_Y3_N47
\m10|pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~61_sumout\,
	asdata => \m6|O\(15),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(15));

-- Location: LABCELL_X63_Y3_N45
\m10|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \m10|Add0~61_sumout\ = SUM(( \m10|pc\(15) ) + ( GND ) + ( \m10|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m10|ALT_INV_pc\(15),
	cin => \m10|Add0~58\,
	sumout => \m10|Add0~61_sumout\);

-- Location: FF_X63_Y3_N46
\m10|pc[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~61_sumout\,
	asdata => \m6|O\(15),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc[15]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y3_N36
\m6|LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~5_combout\ = ( \m10|pc[15]~DUPLICATE_q\ & ( !\m2|alu_src1~q\ $ (((!\m2|alu_src2\(1)) # (!\m1|Immediate\(15)))) ) ) # ( !\m10|pc[15]~DUPLICATE_q\ & ( (\m2|alu_src2\(1) & \m1|Immediate\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m2|ALT_INV_alu_src1~q\,
	datad => \m1|ALT_INV_Immediate\(15),
	dataf => \m10|ALT_INV_pc[15]~DUPLICATE_q\,
	combout => \m6|LessThan1~5_combout\);

-- Location: MLABCELL_X65_Y3_N27
\m6|LessThan1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~14_combout\ = ( \m2|alu_src1~q\ & ( \m1|Immediate\(15) & ( (!\m10|pc[14]~DUPLICATE_q\ & (!\m2|alu_src2\(1) & ((\m10|pc[15]~DUPLICATE_q\)))) # (\m10|pc[14]~DUPLICATE_q\ & ((!\m2|alu_src2\(1)) # ((!\m1|Immediate\(14) & 
-- \m10|pc[15]~DUPLICATE_q\)))) ) ) ) # ( \m2|alu_src1~q\ & ( !\m1|Immediate\(15) & ( ((\m10|pc[14]~DUPLICATE_q\ & ((!\m2|alu_src2\(1)) # (!\m1|Immediate\(14))))) # (\m10|pc[15]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101001111111100000000000000000100010011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc[14]~DUPLICATE_q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m10|ALT_INV_pc[15]~DUPLICATE_q\,
	datae => \m2|ALT_INV_alu_src1~q\,
	dataf => \m1|ALT_INV_Immediate\(15),
	combout => \m6|LessThan1~14_combout\);

-- Location: FF_X63_Y3_N44
\m10|pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~57_sumout\,
	asdata => \m6|O\(14),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(14));

-- Location: MLABCELL_X65_Y3_N9
\m6|LessThan1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~13_combout\ = ( \m1|Immediate\(14) & ( \m1|Immediate\(13) & ( (\m2|alu_src1~q\ & (!\m10|pc\(14) & (!\m2|alu_src2\(1) & \m10|pc\(13)))) ) ) ) # ( !\m1|Immediate\(14) & ( \m1|Immediate\(13) & ( (\m2|alu_src1~q\ & (!\m10|pc\(14) & 
-- (!\m2|alu_src2\(1) & \m10|pc\(13)))) ) ) ) # ( \m1|Immediate\(14) & ( !\m1|Immediate\(13) & ( (\m2|alu_src1~q\ & (\m10|pc\(13) & (!\m10|pc\(14) $ (\m2|alu_src2\(1))))) ) ) ) # ( !\m1|Immediate\(14) & ( !\m1|Immediate\(13) & ( (\m2|alu_src1~q\ & 
-- (!\m10|pc\(14) & \m10|pc\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100000100000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m10|ALT_INV_pc\(14),
	datac => \m2|ALT_INV_alu_src2\(1),
	datad => \m10|ALT_INV_pc\(13),
	datae => \m1|ALT_INV_Immediate\(14),
	dataf => \m1|ALT_INV_Immediate\(13),
	combout => \m6|LessThan1~13_combout\);

-- Location: MLABCELL_X65_Y3_N12
\m6|LessThan1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~15_combout\ = ( \m6|LessThan1~13_combout\ & ( \m6|LessThan0~0_combout\ & ( (\m6|LessThan1~5_combout\ & !\m6|LessThan1~14_combout\) ) ) ) # ( !\m6|LessThan1~13_combout\ & ( \m6|LessThan0~0_combout\ & ( (!\m6|LessThan1~14_combout\ & 
-- (((!\m7|F[12]~8_combout\) # (\m6|LessThan1~5_combout\)) # (\m8|F[12]~8_combout\))) ) ) ) # ( \m6|LessThan1~13_combout\ & ( !\m6|LessThan0~0_combout\ & ( (\m6|LessThan1~5_combout\ & !\m6|LessThan1~14_combout\) ) ) ) # ( !\m6|LessThan1~13_combout\ & ( 
-- !\m6|LessThan0~0_combout\ & ( !\m6|LessThan1~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000001100000011000011110000011100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m8|ALT_INV_F[12]~8_combout\,
	datab => \m6|ALT_INV_LessThan1~5_combout\,
	datac => \m6|ALT_INV_LessThan1~14_combout\,
	datad => \m7|ALT_INV_F[12]~8_combout\,
	datae => \m6|ALT_INV_LessThan1~13_combout\,
	dataf => \m6|ALT_INV_LessThan0~0_combout\,
	combout => \m6|LessThan1~15_combout\);

-- Location: LABCELL_X64_Y3_N45
\m6|LessThan1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~11_combout\ = ( \m10|pc\(9) & ( \m1|Immediate\(9) & ( (\m2|alu_src1~q\ & (!\m2|alu_src2\(1) & !\m10|pc[15]~DUPLICATE_q\)) ) ) ) # ( \m10|pc\(9) & ( !\m1|Immediate\(9) & ( (\m2|alu_src1~q\ & (!\m10|pc[15]~DUPLICATE_q\ $ (((\m2|alu_src2\(1) & 
-- \m1|Immediate\(15)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101000000000100000000000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m1|ALT_INV_Immediate\(15),
	datad => \m10|ALT_INV_pc[15]~DUPLICATE_q\,
	datae => \m10|ALT_INV_pc\(9),
	dataf => \m1|ALT_INV_Immediate\(9),
	combout => \m6|LessThan1~11_combout\);

-- Location: LABCELL_X64_Y4_N57
\m6|LessThan1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~12_combout\ = ( !\m6|LessThan1~0_combout\ & ( (!\m6|LessThan1~2_combout\ & (\m6|LessThan0~0_combout\ & (\m6|LessThan1~11_combout\ & !\m6|LessThan1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~2_combout\,
	datab => \m6|ALT_INV_LessThan0~0_combout\,
	datac => \m6|ALT_INV_LessThan1~11_combout\,
	datad => \m6|ALT_INV_LessThan1~1_combout\,
	dataf => \m6|ALT_INV_LessThan1~0_combout\,
	combout => \m6|LessThan1~12_combout\);

-- Location: LABCELL_X64_Y3_N42
\m6|LessThan1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~16_combout\ = ( \m10|pc[10]~DUPLICATE_q\ & ( \m1|Immediate\(10) & ( (\m2|alu_src1~q\ & (!\m2|alu_src2\(1) & !\m10|pc[15]~DUPLICATE_q\)) ) ) ) # ( \m10|pc[10]~DUPLICATE_q\ & ( !\m1|Immediate\(10) & ( (\m2|alu_src1~q\ & 
-- (!\m10|pc[15]~DUPLICATE_q\ $ (((\m2|alu_src2\(1) & \m1|Immediate\(15)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000100000100000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m10|ALT_INV_pc[15]~DUPLICATE_q\,
	datad => \m1|ALT_INV_Immediate\(15),
	datae => \m10|ALT_INV_pc[10]~DUPLICATE_q\,
	dataf => \m1|ALT_INV_Immediate\(10),
	combout => \m6|LessThan1~16_combout\);

-- Location: LABCELL_X64_Y3_N6
\m6|LessThan1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~17_combout\ = ( !\m6|LessThan1~0_combout\ & ( \m6|LessThan0~0_combout\ & ( (!\m8|F[11]~9_combout\ & ((!\m7|F[11]~9_combout\ & (\m6|LessThan1~16_combout\)) # (\m7|F[11]~9_combout\ & ((!\m6|LessThan1~5_combout\))))) # (\m8|F[11]~9_combout\ & 
-- (\m6|LessThan1~16_combout\ & (\m7|F[11]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101011001000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m8|ALT_INV_F[11]~9_combout\,
	datab => \m6|ALT_INV_LessThan1~16_combout\,
	datac => \m7|ALT_INV_F[11]~9_combout\,
	datad => \m6|ALT_INV_LessThan1~5_combout\,
	datae => \m6|ALT_INV_LessThan1~0_combout\,
	dataf => \m6|ALT_INV_LessThan0~0_combout\,
	combout => \m6|LessThan1~17_combout\);

-- Location: LABCELL_X64_Y4_N0
\m6|LessThan1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan1~18_combout\ = ( !\m6|LessThan1~12_combout\ & ( !\m6|LessThan1~17_combout\ & ( (\m6|LessThan1~15_combout\ & ((!\m6|Equal0~2_combout\) # ((!\m7|F[8]~7_combout\) # (\m8|F[8]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~15_combout\,
	datab => \m6|ALT_INV_Equal0~2_combout\,
	datac => \m8|ALT_INV_F[8]~7_combout\,
	datad => \m7|ALT_INV_F[8]~7_combout\,
	datae => \m6|ALT_INV_LessThan1~12_combout\,
	dataf => \m6|ALT_INV_LessThan1~17_combout\,
	combout => \m6|LessThan1~18_combout\);

-- Location: MLABCELL_X65_Y4_N18
\m6|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~10_combout\ = ( \m1|Immediate\(9) & ( (\m2|alu_src2\(1) & ((!\m2|alu_src1~q\) # (!\m10|pc\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc\(9),
	datad => \m2|ALT_INV_alu_src2\(1),
	dataf => \m1|ALT_INV_Immediate\(9),
	combout => \m6|LessThan0~10_combout\);

-- Location: LABCELL_X64_Y4_N6
\m6|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~11_combout\ = ( \m6|LessThan0~10_combout\ & ( \m8|F[10]~10_combout\ & ( (!\m6|LessThan1~0_combout\ & (\m6|LessThan0~0_combout\ & !\m6|LessThan1~1_combout\)) ) ) ) # ( !\m6|LessThan0~10_combout\ & ( \m8|F[10]~10_combout\ & ( 
-- (!\m6|LessThan1~0_combout\ & (\m6|LessThan0~0_combout\ & (!\m6|LessThan1~1_combout\ & !\m7|F[10]~10_combout\))) ) ) ) # ( \m6|LessThan0~10_combout\ & ( !\m8|F[10]~10_combout\ & ( (!\m6|LessThan1~0_combout\ & (\m6|LessThan0~0_combout\ & 
-- (!\m6|LessThan1~1_combout\ & !\m7|F[10]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000100000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~0_combout\,
	datab => \m6|ALT_INV_LessThan0~0_combout\,
	datac => \m6|ALT_INV_LessThan1~1_combout\,
	datad => \m7|ALT_INV_F[10]~10_combout\,
	datae => \m6|ALT_INV_LessThan0~10_combout\,
	dataf => \m8|ALT_INV_F[10]~10_combout\,
	combout => \m6|LessThan0~11_combout\);

-- Location: LABCELL_X64_Y3_N48
\m6|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~8_combout\ = ( \m1|Immediate\(14) & ( \m1|Immediate\(13) & ( (\m2|alu_src2\(1) & ((!\m10|pc\(13)) # ((!\m2|alu_src1~q\) # (!\m10|pc[14]~DUPLICATE_q\)))) ) ) ) # ( !\m1|Immediate\(14) & ( \m1|Immediate\(13) & ( (\m2|alu_src2\(1) & 
-- ((!\m2|alu_src1~q\) # ((!\m10|pc\(13) & !\m10|pc[14]~DUPLICATE_q\)))) ) ) ) # ( \m1|Immediate\(14) & ( !\m1|Immediate\(13) & ( (\m2|alu_src2\(1) & ((!\m2|alu_src1~q\) # (!\m10|pc[14]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011000000110010001100000011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc\(13),
	datab => \m2|ALT_INV_alu_src2\(1),
	datac => \m2|ALT_INV_alu_src1~q\,
	datad => \m10|ALT_INV_pc[14]~DUPLICATE_q\,
	datae => \m1|ALT_INV_Immediate\(14),
	dataf => \m1|ALT_INV_Immediate\(13),
	combout => \m6|LessThan0~8_combout\);

-- Location: LABCELL_X64_Y3_N24
\m6|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~9_combout\ = ( \m8|F[11]~9_combout\ & ( \m8|F[12]~8_combout\ & ( (!\m6|LessThan0~8_combout\ & ((!\m6|LessThan0~0_combout\) # ((\m7|F[11]~9_combout\ & \m7|F[12]~8_combout\)))) ) ) ) # ( !\m8|F[11]~9_combout\ & ( \m8|F[12]~8_combout\ & ( 
-- (!\m6|LessThan0~8_combout\ & ((!\m6|LessThan0~0_combout\) # (\m7|F[12]~8_combout\))) ) ) ) # ( \m8|F[11]~9_combout\ & ( !\m8|F[12]~8_combout\ & ( (!\m6|LessThan0~8_combout\ & ((!\m6|LessThan0~0_combout\) # ((\m7|F[12]~8_combout\) # 
-- (\m7|F[11]~9_combout\)))) ) ) ) # ( !\m8|F[11]~9_combout\ & ( !\m8|F[12]~8_combout\ & ( !\m6|LessThan0~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010100010101010101010001000101010101000100010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan0~8_combout\,
	datab => \m6|ALT_INV_LessThan0~0_combout\,
	datac => \m7|ALT_INV_F[11]~9_combout\,
	datad => \m7|ALT_INV_F[12]~8_combout\,
	datae => \m8|ALT_INV_F[11]~9_combout\,
	dataf => \m8|ALT_INV_F[12]~8_combout\,
	combout => \m6|LessThan0~9_combout\);

-- Location: LABCELL_X64_Y4_N54
\m6|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~1_combout\ = ( !\m6|LessThan1~3_combout\ & ( (!\m6|LessThan1~2_combout\ & (\m6|LessThan0~0_combout\ & (!\m6|LessThan1~0_combout\ & !\m6|LessThan1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~2_combout\,
	datab => \m6|ALT_INV_LessThan0~0_combout\,
	datac => \m6|ALT_INV_LessThan1~0_combout\,
	datad => \m6|ALT_INV_LessThan1~1_combout\,
	dataf => \m6|ALT_INV_LessThan1~3_combout\,
	combout => \m6|LessThan0~1_combout\);

-- Location: LABCELL_X64_Y4_N24
\m6|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~12_combout\ = ( \m6|LessThan0~1_combout\ & ( (!\m6|LessThan0~11_combout\ & (\m6|LessThan0~9_combout\ & ((!\m8|F[8]~7_combout\) # (\m7|F[8]~7_combout\)))) ) ) # ( !\m6|LessThan0~1_combout\ & ( (!\m6|LessThan0~11_combout\ & 
-- \m6|LessThan0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101000100000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan0~11_combout\,
	datab => \m7|ALT_INV_F[8]~7_combout\,
	datac => \m8|ALT_INV_F[8]~7_combout\,
	datad => \m6|ALT_INV_LessThan0~9_combout\,
	dataf => \m6|ALT_INV_LessThan0~1_combout\,
	combout => \m6|LessThan0~12_combout\);

-- Location: LABCELL_X64_Y4_N33
\m6|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~4_combout\ = ( \m7|F[1]~3_combout\ & ( (\m8|F[0]~4_combout\ & (\m8|F[1]~3_combout\ & !\m7|F[0]~4_combout\)) ) ) # ( !\m7|F[1]~3_combout\ & ( ((\m8|F[0]~4_combout\ & !\m7|F[0]~4_combout\)) # (\m8|F[1]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m8|ALT_INV_F[0]~4_combout\,
	datac => \m8|ALT_INV_F[1]~3_combout\,
	datad => \m7|ALT_INV_F[0]~4_combout\,
	dataf => \m7|ALT_INV_F[1]~3_combout\,
	combout => \m6|LessThan0~4_combout\);

-- Location: FF_X63_Y3_N16
\m10|pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m10|Add0~21_sumout\,
	asdata => \m6|O\(5),
	sload => \pc_opin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m10|pc\(5));

-- Location: LABCELL_X63_Y2_N42
\m6|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~5_combout\ = ( \m2|alu_src2\(1) & ( \m10|pc\(5) & ( (!\m1|Immediate\(4) & (!\m2|alu_src1~q\ & (\m1|Immediate\(5)))) # (\m1|Immediate\(4) & ((!\m2|alu_src1~q\) # ((\m1|Immediate\(5) & !\m10|pc\(4))))) ) ) ) # ( \m2|alu_src2\(1) & ( 
-- !\m10|pc\(5) & ( ((\m1|Immediate\(4) & ((!\m2|alu_src1~q\) # (!\m10|pc\(4))))) # (\m1|Immediate\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110100111100000000000000000100110101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(4),
	datab => \m2|ALT_INV_alu_src1~q\,
	datac => \m1|ALT_INV_Immediate\(5),
	datad => \m10|ALT_INV_pc\(4),
	datae => \m2|ALT_INV_alu_src2\(1),
	dataf => \m10|ALT_INV_pc\(5),
	combout => \m6|LessThan0~5_combout\);

-- Location: LABCELL_X63_Y2_N15
\m6|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~6_combout\ = ( \m7|F[7]~5_combout\ & ( \m8|F[7]~5_combout\ & ( (!\m7|F[6]~6_combout\ & ((\m8|F[6]~6_combout\) # (\m6|LessThan0~5_combout\))) # (\m7|F[6]~6_combout\ & (\m6|LessThan0~5_combout\ & \m8|F[6]~6_combout\)) ) ) ) # ( 
-- !\m7|F[7]~5_combout\ & ( \m8|F[7]~5_combout\ ) ) # ( !\m7|F[7]~5_combout\ & ( !\m8|F[7]~5_combout\ & ( (!\m7|F[6]~6_combout\ & ((\m8|F[6]~6_combout\) # (\m6|LessThan0~5_combout\))) # (\m7|F[6]~6_combout\ & (\m6|LessThan0~5_combout\ & \m8|F[6]~6_combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011000000000000000011111111111111110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_F[6]~6_combout\,
	datab => \m6|ALT_INV_LessThan0~5_combout\,
	datad => \m8|ALT_INV_F[6]~6_combout\,
	datae => \m7|ALT_INV_F[7]~5_combout\,
	dataf => \m8|ALT_INV_F[7]~5_combout\,
	combout => \m6|LessThan0~6_combout\);

-- Location: LABCELL_X62_Y4_N0
\m6|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~3_combout\ = ( \m6|LessThan0~2_combout\ & ( \m7|F[3]~1_combout\ & ( (!\m7|F[2]~2_combout\ & (\m6|Equal0~0_combout\ & (\m8|F[3]~1_combout\ & \m8|F[2]~2_combout\))) ) ) ) # ( \m6|LessThan0~2_combout\ & ( !\m7|F[3]~1_combout\ & ( 
-- (\m6|Equal0~0_combout\ & (((!\m7|F[2]~2_combout\ & \m8|F[2]~2_combout\)) # (\m8|F[3]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110010001100000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_F[2]~2_combout\,
	datab => \m6|ALT_INV_Equal0~0_combout\,
	datac => \m8|ALT_INV_F[3]~1_combout\,
	datad => \m8|ALT_INV_F[2]~2_combout\,
	datae => \m6|ALT_INV_LessThan0~2_combout\,
	dataf => \m7|ALT_INV_F[3]~1_combout\,
	combout => \m6|LessThan0~3_combout\);

-- Location: LABCELL_X64_Y4_N12
\m6|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~7_combout\ = ( \m6|LessThan0~3_combout\ & ( \m6|LessThan0~1_combout\ & ( !\m6|LessThan1~4_combout\ ) ) ) # ( !\m6|LessThan0~3_combout\ & ( \m6|LessThan0~1_combout\ & ( (!\m6|LessThan1~4_combout\ & (((\m6|LessThan0~4_combout\ & 
-- \m6|Equal0~1_combout\)) # (\m6|LessThan0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100010011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan0~4_combout\,
	datab => \m6|ALT_INV_LessThan1~4_combout\,
	datac => \m6|ALT_INV_LessThan0~6_combout\,
	datad => \m6|ALT_INV_Equal0~1_combout\,
	datae => \m6|ALT_INV_LessThan0~3_combout\,
	dataf => \m6|ALT_INV_LessThan0~1_combout\,
	combout => \m6|LessThan0~7_combout\);

-- Location: LABCELL_X64_Y4_N36
\m6|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux17~0_combout\ = ( \m6|LessThan0~7_combout\ & ( !\m6|LessThan1~10_combout\ & ( (\m6|LessThan1~18_combout\ & (\m8|F[15]~0_combout\ & \m7|F[15]~0_combout\)) ) ) ) # ( !\m6|LessThan0~7_combout\ & ( !\m6|LessThan1~10_combout\ & ( 
-- (\m6|LessThan1~18_combout\ & ((!\m6|LessThan0~12_combout\ & (\m8|F[15]~0_combout\ & \m7|F[15]~0_combout\)) # (\m6|LessThan0~12_combout\ & ((\m7|F[15]~0_combout\) # (\m8|F[15]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~18_combout\,
	datab => \m6|ALT_INV_LessThan0~12_combout\,
	datac => \m8|ALT_INV_F[15]~0_combout\,
	datad => \m7|ALT_INV_F[15]~0_combout\,
	datae => \m6|ALT_INV_LessThan0~7_combout\,
	dataf => \m6|ALT_INV_LessThan1~10_combout\,
	combout => \m6|Mux17~0_combout\);

-- Location: LABCELL_X64_Y4_N18
\m6|teq~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|teq~0_combout\ = ( \m6|Mux17~0_combout\ & ( !\m2|alu_op\(0) & ( (!\m2|alu_op\(3) & (\m6|Equal0~4_combout\ & (\m2|alu_op\(2) & \m2|alu_op\(1)))) ) ) ) # ( !\m6|Mux17~0_combout\ & ( !\m2|alu_op\(0) & ( (!\m2|alu_op\(3) & (\m2|alu_op\(2) & 
-- \m2|alu_op\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_op\(3),
	datab => \m6|ALT_INV_Equal0~4_combout\,
	datac => \m2|ALT_INV_alu_op\(2),
	datad => \m2|ALT_INV_alu_op\(1),
	datae => \m6|ALT_INV_Mux17~0_combout\,
	dataf => \m2|ALT_INV_alu_op\(0),
	combout => \m6|teq~0_combout\);

-- Location: FF_X64_Y4_N38
\m6|teq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux17~0_combout\,
	ena => \m6|teq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|teq~q\);

-- Location: LABCELL_X62_Y2_N24
\m6|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Equal1~3_combout\ = ( \m10|pc[10]~DUPLICATE_q\ & ( \m2|alu_src1~q\ ) ) # ( !\m10|pc[10]~DUPLICATE_q\ & ( (\m2|alu_src1~q\ & ((\m10|pc\(12)) # (\m10|pc[11]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datac => \m10|ALT_INV_pc[11]~DUPLICATE_q\,
	datad => \m10|ALT_INV_pc\(12),
	dataf => \m10|ALT_INV_pc[10]~DUPLICATE_q\,
	combout => \m6|Equal1~3_combout\);

-- Location: LABCELL_X62_Y3_N0
\m6|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Equal1~0_combout\ = ( \m10|pc[5]~DUPLICATE_q\ & ( \m10|pc\(4) & ( (!\m2|alu_src1~q\ & !\m4|O_dataA[0]~DUPLICATE_q\) ) ) ) # ( !\m10|pc[5]~DUPLICATE_q\ & ( \m10|pc\(4) & ( (!\m2|alu_src1~q\ & !\m4|O_dataA[0]~DUPLICATE_q\) ) ) ) # ( 
-- \m10|pc[5]~DUPLICATE_q\ & ( !\m10|pc\(4) & ( (!\m2|alu_src1~q\ & !\m4|O_dataA[0]~DUPLICATE_q\) ) ) ) # ( !\m10|pc[5]~DUPLICATE_q\ & ( !\m10|pc\(4) & ( (!\m2|alu_src1~q\ & (!\m4|O_dataA[0]~DUPLICATE_q\)) # (\m2|alu_src1~q\ & (((!\m10|pc\(0) & 
-- !\m10|pc\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src1~q\,
	datab => \m4|ALT_INV_O_dataA[0]~DUPLICATE_q\,
	datac => \m10|ALT_INV_pc\(0),
	datad => \m10|ALT_INV_pc\(6),
	datae => \m10|ALT_INV_pc[5]~DUPLICATE_q\,
	dataf => \m10|ALT_INV_pc\(4),
	combout => \m6|Equal1~0_combout\);

-- Location: LABCELL_X62_Y2_N21
\m6|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Equal1~2_combout\ = ( \m2|alu_src1~q\ & ( ((\m10|pc[13]~DUPLICATE_q\) # (\m10|pc[14]~DUPLICATE_q\)) # (\m10|pc[15]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc[15]~DUPLICATE_q\,
	datac => \m10|ALT_INV_pc[14]~DUPLICATE_q\,
	datad => \m10|ALT_INV_pc[13]~DUPLICATE_q\,
	dataf => \m2|ALT_INV_alu_src1~q\,
	combout => \m6|Equal1~2_combout\);

-- Location: LABCELL_X62_Y5_N57
\m6|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Equal1~1_combout\ = ( !\m10|pc\(1) & ( \m2|alu_src1~q\ & ( (!\m10|pc\(9) & (!\m10|pc\(8) & !\m10|pc[7]~DUPLICATE_q\)) ) ) ) # ( \m10|pc\(1) & ( !\m2|alu_src1~q\ & ( !\m4|O_dataA[1]~DUPLICATE_q\ ) ) ) # ( !\m10|pc\(1) & ( !\m2|alu_src1~q\ & ( 
-- !\m4|O_dataA[1]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc\(9),
	datab => \m10|ALT_INV_pc\(8),
	datac => \m10|ALT_INV_pc[7]~DUPLICATE_q\,
	datad => \m4|ALT_INV_O_dataA[1]~DUPLICATE_q\,
	datae => \m10|ALT_INV_pc\(1),
	dataf => \m2|ALT_INV_alu_src1~q\,
	combout => \m6|Equal1~1_combout\);

-- Location: LABCELL_X62_Y2_N54
\m6|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Equal1~4_combout\ = ( !\m6|Equal1~2_combout\ & ( \m6|Equal1~1_combout\ & ( (!\m6|Equal1~3_combout\ & (!\m7|F[3]~1_combout\ & (!\m7|F[2]~2_combout\ & \m6|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_Equal1~3_combout\,
	datab => \m7|ALT_INV_F[3]~1_combout\,
	datac => \m7|ALT_INV_F[2]~2_combout\,
	datad => \m6|ALT_INV_Equal1~0_combout\,
	datae => \m6|ALT_INV_Equal1~2_combout\,
	dataf => \m6|ALT_INV_Equal1~1_combout\,
	combout => \m6|Equal1~4_combout\);

-- Location: LABCELL_X64_Y4_N42
\m6|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux20~0_combout\ = ( \m7|F[15]~0_combout\ & ( \m6|LessThan0~12_combout\ & ( (!\m8|F[15]~0_combout\ & (!\m6|LessThan0~7_combout\ & ((!\m6|LessThan1~18_combout\) # (\m6|LessThan1~10_combout\)))) # (\m8|F[15]~0_combout\ & (((!\m6|LessThan1~18_combout\) # 
-- (\m6|LessThan1~10_combout\)))) ) ) ) # ( !\m7|F[15]~0_combout\ & ( \m6|LessThan0~12_combout\ & ( (\m8|F[15]~0_combout\ & (!\m6|LessThan0~7_combout\ & ((!\m6|LessThan1~18_combout\) # (\m6|LessThan1~10_combout\)))) ) ) ) # ( \m7|F[15]~0_combout\ & ( 
-- !\m6|LessThan0~12_combout\ & ( (\m8|F[15]~0_combout\ & ((!\m6|LessThan1~18_combout\) # (\m6|LessThan1~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101010101000000010001001101000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m8|ALT_INV_F[15]~0_combout\,
	datab => \m6|ALT_INV_LessThan0~7_combout\,
	datac => \m6|ALT_INV_LessThan1~18_combout\,
	datad => \m6|ALT_INV_LessThan1~10_combout\,
	datae => \m7|ALT_INV_F[15]~0_combout\,
	dataf => \m6|ALT_INV_LessThan0~12_combout\,
	combout => \m6|Mux20~0_combout\);

-- Location: MLABCELL_X65_Y4_N15
\m6|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux20~1_combout\ = ( !\m6|Mux20~0_combout\ & ( \m6|Equal1~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \m6|ALT_INV_Equal1~4_combout\,
	dataf => \m6|ALT_INV_Mux20~0_combout\,
	combout => \m6|Mux20~1_combout\);

-- Location: FF_X65_Y4_N16
\m6|taz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux20~1_combout\,
	ena => \m6|teq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|taz~q\);

-- Location: LABCELL_X66_Y4_N0
\m6|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux21~0_combout\ = ( \m1|Immediate\(6) & ( \m2|alu_src2\(1) ) ) # ( !\m1|Immediate\(6) & ( (\m2|alu_src2\(1) & ((\m1|Immediate\(4)) # (\m1|Immediate\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_alu_src2\(1),
	datab => \m1|ALT_INV_Immediate\(5),
	datac => \m1|ALT_INV_Immediate\(4),
	dataf => \m1|ALT_INV_Immediate\(6),
	combout => \m6|Mux21~0_combout\);

-- Location: LABCELL_X64_Y5_N54
\m6|Mux21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux21~3_combout\ = ( \m2|alu_src2\(1) & ( ((\m1|Immediate\(11)) # (\m1|Immediate\(10))) # (\m1|Immediate\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(10),
	datad => \m1|ALT_INV_Immediate\(11),
	dataf => \m2|ALT_INV_alu_src2\(1),
	combout => \m6|Mux21~3_combout\);

-- Location: LABCELL_X62_Y4_N39
\m6|Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux21~2_combout\ = ( \m1|Immediate\(13) & ( \m2|alu_src2\(1) ) ) # ( !\m1|Immediate\(13) & ( (\m2|alu_src2\(1) & ((\m1|Immediate\(14)) # (\m1|Immediate\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(15),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m2|ALT_INV_alu_src2\(1),
	dataf => \m1|ALT_INV_Immediate\(13),
	combout => \m6|Mux21~2_combout\);

-- Location: MLABCELL_X65_Y4_N48
\m6|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux21~1_combout\ = ( \m1|Immediate\(7) & ( \m2|alu_src2\(1) ) ) # ( !\m1|Immediate\(7) & ( (\m2|alu_src2\(1) & ((\m1|Immediate\(8)) # (\m1|Immediate\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(9),
	datab => \m1|ALT_INV_Immediate\(8),
	datad => \m2|ALT_INV_alu_src2\(1),
	dataf => \m1|ALT_INV_Immediate\(7),
	combout => \m6|Mux21~1_combout\);

-- Location: LABCELL_X66_Y4_N12
\m6|Mux21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux21~4_combout\ = ( !\m6|Mux21~1_combout\ & ( !\m8|F[1]~3_combout\ & ( (!\m6|Mux21~3_combout\ & (!\m6|Mux21~2_combout\ & (!\m8|F[2]~2_combout\ & !\m8|F[3]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_Mux21~3_combout\,
	datab => \m6|ALT_INV_Mux21~2_combout\,
	datac => \m8|ALT_INV_F[2]~2_combout\,
	datad => \m8|ALT_INV_F[3]~1_combout\,
	datae => \m6|ALT_INV_Mux21~1_combout\,
	dataf => \m8|ALT_INV_F[1]~3_combout\,
	combout => \m6|Mux21~4_combout\);

-- Location: MLABCELL_X65_Y4_N12
\m6|Mux21~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux21~5_combout\ = ( \m6|Mux21~4_combout\ & ( (!\m8|F[0]~4_combout\ & (!\m6|Mux21~0_combout\ & ((!\m6|LessThan1~18_combout\) # (\m6|LessThan1~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~10_combout\,
	datab => \m6|ALT_INV_LessThan1~18_combout\,
	datac => \m8|ALT_INV_F[0]~4_combout\,
	datad => \m6|ALT_INV_Mux21~0_combout\,
	dataf => \m6|ALT_INV_Mux21~4_combout\,
	combout => \m6|Mux21~5_combout\);

-- Location: MLABCELL_X65_Y4_N27
\m6|LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|LessThan0~13_combout\ = ( \m7|F[15]~0_combout\ & ( (!\m8|F[15]~0_combout\ & ((!\m6|LessThan0~12_combout\) # (\m6|LessThan0~7_combout\))) ) ) # ( !\m7|F[15]~0_combout\ & ( (!\m8|F[15]~0_combout\) # ((!\m6|LessThan0~12_combout\) # 
-- (\m6|LessThan0~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101111111111111010111110101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m8|ALT_INV_F[15]~0_combout\,
	datac => \m6|ALT_INV_LessThan0~7_combout\,
	datad => \m6|ALT_INV_LessThan0~12_combout\,
	dataf => \m7|ALT_INV_F[15]~0_combout\,
	combout => \m6|LessThan0~13_combout\);

-- Location: MLABCELL_X65_Y4_N45
\m6|Mux21~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|Mux21~6_combout\ = ( !\m6|LessThan0~13_combout\ & ( ((\m6|LessThan1~18_combout\ & (!\m6|LessThan1~10_combout\ & \m6|Equal1~4_combout\))) # (\m6|Mux21~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011001100110111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_LessThan1~18_combout\,
	datab => \m6|ALT_INV_Mux21~5_combout\,
	datac => \m6|ALT_INV_LessThan1~10_combout\,
	datad => \m6|ALT_INV_Equal1~4_combout\,
	dataf => \m6|ALT_INV_LessThan0~13_combout\,
	combout => \m6|Mux21~6_combout\);

-- Location: FF_X65_Y4_N46
\m6|tbz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux21~6_combout\,
	ena => \m6|teq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|tbz~q\);

-- Location: FF_X64_Y4_N44
\m6|tagb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|Mux20~0_combout\,
	ena => \m6|teq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|tagb~q\);

-- Location: FF_X64_Y4_N49
\m6|talb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m6|LessThan0~13_combout\,
	sload => VCC,
	ena => \m6|teq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m6|talb~q\);

-- Location: LABCELL_X62_Y2_N51
\m2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|Mux0~0_combout\ = ( \m1|Immediate\(14) & ( (\m1|Immediate\(15) & (\m1|Immediate\(13) & \m1|Immediate\(12))) ) ) # ( !\m1|Immediate\(14) & ( (\m1|Immediate\(15) & (!\m1|Immediate\(13) & \m1|Immediate\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(15),
	datab => \m1|ALT_INV_Immediate\(13),
	datad => \m1|ALT_INV_Immediate\(12),
	dataf => \m1|ALT_INV_Immediate\(14),
	combout => \m2|Mux0~0_combout\);

-- Location: FF_X62_Y2_N53
\m2|mem_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m2|Mux0~0_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|mem_read~q\);

-- Location: LABCELL_X64_Y6_N48
\m2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|Mux5~0_combout\ = ( !\m1|Immediate\(14) & ( (\m1|Immediate\(13) & (!\m1|Immediate\(12) & \m1|Immediate\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datac => \m1|ALT_INV_Immediate\(12),
	datad => \m1|ALT_INV_Immediate\(15),
	dataf => \m1|ALT_INV_Immediate\(14),
	combout => \m2|Mux5~0_combout\);

-- Location: FF_X64_Y6_N34
\m2|mem_wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m2|Mux5~0_combout\,
	sload => VCC,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|mem_wr~q\);

-- Location: LABCELL_X62_Y2_N48
\m2|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|Mux7~0_combout\ = ( \m1|Immediate\(14) & ( !\m1|Immediate\(15) ) ) # ( !\m1|Immediate\(14) & ( (!\m1|Immediate\(15) & ((\m1|Immediate\(12)) # (\m1|Immediate\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|ALT_INV_Immediate\(13),
	datac => \m1|ALT_INV_Immediate\(15),
	datad => \m1|ALT_INV_Immediate\(12),
	dataf => \m1|ALT_INV_Immediate\(14),
	combout => \m2|Mux7~0_combout\);

-- Location: FF_X62_Y2_N50
\m2|iord\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m2|Mux7~0_combout\,
	ena => \ALT_INV_res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m2|iord~q\);

-- Location: LABCELL_X62_Y2_N18
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \m1|Immediate\(13) & ( (!\m1|Immediate\(14) & (\m1|Immediate\(15) & \m1|Immediate\(12))) ) ) # ( !\m1|Immediate\(13) & ( (\m1|Immediate\(14) & (\m1|Immediate\(15) & !\m1|Immediate\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|ALT_INV_Immediate\(14),
	datac => \m1|ALT_INV_Immediate\(15),
	datad => \m1|ALT_INV_Immediate\(12),
	dataf => \m1|ALT_INV_Immediate\(13),
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X63_Y2_N0
\Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = ( \m10|pc\(0) & ( !\Mux16~0_combout\ & ( (!\m2|iord~q\) # (\m4|O_dataA[0]~DUPLICATE_q\) ) ) ) # ( !\m10|pc\(0) & ( !\Mux16~0_combout\ & ( (\m4|O_dataA[0]~DUPLICATE_q\ & \m2|iord~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m4|ALT_INV_O_dataA[0]~DUPLICATE_q\,
	datad => \m2|ALT_INV_iord~q\,
	datae => \m10|ALT_INV_pc\(0),
	dataf => \ALT_INV_Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: FF_X63_Y3_N52
\m4|O_dataA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m1|Immediate\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataA\(1));

-- Location: LABCELL_X63_Y2_N9
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \m2|iord~q\ & ( \m10|pc\(1) & ( (\m4|O_dataA\(1) & !\Mux16~0_combout\) ) ) ) # ( !\m2|iord~q\ & ( \m10|pc\(1) & ( !\Mux16~0_combout\ ) ) ) # ( \m2|iord~q\ & ( !\m10|pc\(1) & ( (\m4|O_dataA\(1) & !\Mux16~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011110000111100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \m4|ALT_INV_O_dataA\(1),
	datac => \ALT_INV_Mux16~0_combout\,
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc\(1),
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X63_Y2_N48
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( !\Mux16~0_combout\ & ( (!\m2|iord~q\ & (\m10|pc[2]~DUPLICATE_q\)) # (\m2|iord~q\ & ((\m4|O_dataA\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m10|ALT_INV_pc[2]~DUPLICATE_q\,
	datab => \m2|ALT_INV_iord~q\,
	datac => \m4|ALT_INV_O_dataA\(2),
	dataf => \ALT_INV_Mux16~0_combout\,
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X63_Y2_N27
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\Mux16~0_combout\ & ((!\m2|iord~q\ & ((\m10|pc\(3)))) # (\m2|iord~q\ & (\m4|O_dataA\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000110000010100000011000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m4|ALT_INV_O_dataA\(3),
	datab => \m10|ALT_INV_pc\(3),
	datac => \ALT_INV_Mux16~0_combout\,
	datad => \m2|ALT_INV_iord~q\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X62_Y2_N0
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( !\m2|iord~q\ & ( \m10|pc\(4) & ( (!\m1|Immediate\(15)) # ((!\m1|Immediate\(12) & ((!\m1|Immediate\(14)) # (\m1|Immediate\(13)))) # (\m1|Immediate\(12) & ((!\m1|Immediate\(13)) # (\m1|Immediate\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110101111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(15),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(13),
	datad => \m1|ALT_INV_Immediate\(14),
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc\(4),
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X62_Y2_N45
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( !\m2|iord~q\ & ( \m10|pc\(5) & ( (!\m1|Immediate\(15)) # ((!\m1|Immediate\(13) & ((!\m1|Immediate\(14)) # (\m1|Immediate\(12)))) # (\m1|Immediate\(13) & ((!\m1|Immediate\(12)) # (\m1|Immediate\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc\(5),
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X62_Y2_N39
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( !\m2|iord~q\ & ( \m10|pc\(6) & ( (!\m1|Immediate\(15)) # ((!\m1|Immediate\(13) & ((!\m1|Immediate\(14)) # (\m1|Immediate\(12)))) # (\m1|Immediate\(13) & ((!\m1|Immediate\(12)) # (\m1|Immediate\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc\(6),
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X62_Y2_N33
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( !\m2|iord~q\ & ( \m10|pc\(7) & ( (!\m1|Immediate\(15)) # ((!\m1|Immediate\(13) & ((!\m1|Immediate\(14)) # (\m1|Immediate\(12)))) # (\m1|Immediate\(13) & ((!\m1|Immediate\(12)) # (\m1|Immediate\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc\(7),
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X62_Y2_N30
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( !\m2|iord~q\ & ( \m10|pc\(8) & ( (!\m1|Immediate\(15)) # ((!\m1|Immediate\(13) & ((!\m1|Immediate\(14)) # (\m1|Immediate\(12)))) # (\m1|Immediate\(13) & ((!\m1|Immediate\(12)) # (\m1|Immediate\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(15),
	datad => \m1|ALT_INV_Immediate\(14),
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc\(8),
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X62_Y2_N15
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( !\m2|iord~q\ & ( \m10|pc\(9) & ( (!\m1|Immediate\(15)) # ((!\m1|Immediate\(13) & ((!\m1|Immediate\(14)) # (\m1|Immediate\(12)))) # (\m1|Immediate\(13) & ((!\m1|Immediate\(12)) # (\m1|Immediate\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc\(9),
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X62_Y2_N12
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( !\m2|iord~q\ & ( \m10|pc[10]~DUPLICATE_q\ & ( (!\m1|Immediate\(15)) # ((!\m1|Immediate\(13) & ((!\m1|Immediate\(14)) # (\m1|Immediate\(12)))) # (\m1|Immediate\(13) & ((!\m1|Immediate\(12)) # (\m1|Immediate\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(15),
	datad => \m1|ALT_INV_Immediate\(14),
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc[10]~DUPLICATE_q\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X62_Y2_N3
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !\m2|iord~q\ & ( \m10|pc[11]~DUPLICATE_q\ & ( (!\m1|Immediate\(15)) # ((!\m1|Immediate\(12) & ((!\m1|Immediate\(14)) # (\m1|Immediate\(13)))) # (\m1|Immediate\(12) & ((!\m1|Immediate\(13)) # (\m1|Immediate\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111011111011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(15),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(13),
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc[11]~DUPLICATE_q\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X62_Y2_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !\m2|iord~q\ & ( \m10|pc\(12) & ( (!\m1|Immediate\(15)) # ((!\m1|Immediate\(13) & ((!\m1|Immediate\(14)) # (\m1|Immediate\(12)))) # (\m1|Immediate\(13) & ((!\m1|Immediate\(12)) # (\m1|Immediate\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(15),
	datad => \m1|ALT_INV_Immediate\(14),
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc\(12),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X62_Y2_N6
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( !\m2|iord~q\ & ( \m10|pc[13]~DUPLICATE_q\ & ( (!\m1|Immediate\(15)) # ((!\m1|Immediate\(13) & ((!\m1|Immediate\(14)) # (\m1|Immediate\(12)))) # (\m1|Immediate\(13) & ((!\m1|Immediate\(12)) # (\m1|Immediate\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(15),
	datad => \m1|ALT_INV_Immediate\(14),
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc[13]~DUPLICATE_q\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X62_Y2_N9
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\m2|iord~q\ & ( \m10|pc[14]~DUPLICATE_q\ & ( (!\m1|Immediate\(15)) # ((!\m1|Immediate\(13) & ((!\m1|Immediate\(14)) # (\m1|Immediate\(12)))) # (\m1|Immediate\(13) & ((!\m1|Immediate\(12)) # (\m1|Immediate\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc[14]~DUPLICATE_q\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X62_Y2_N36
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( !\m2|iord~q\ & ( \m10|pc[15]~DUPLICATE_q\ & ( (!\m1|Immediate\(15)) # ((!\m1|Immediate\(13) & ((!\m1|Immediate\(14)) # (\m1|Immediate\(12)))) # (\m1|Immediate\(13) & ((!\m1|Immediate\(12)) # (\m1|Immediate\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(15),
	datad => \m1|ALT_INV_Immediate\(14),
	datae => \m2|ALT_INV_iord~q\,
	dataf => \m10|ALT_INV_pc[15]~DUPLICATE_q\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X65_Y3_N42
\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( \m1|Immediate\(15) & ( \m1|Immediate\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \m1|ALT_INV_Immediate\(14),
	dataf => \m1|ALT_INV_Immediate\(15),
	combout => \Mux36~0_combout\);

-- Location: MLABCELL_X65_Y3_N33
\Mux36~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = ( \m1|Immediate\(15) & ( (!\m1|Immediate\(12) & (!\m1|Immediate\(13) & \m1|Immediate\(14))) # (\m1|Immediate\(12) & ((!\m1|Immediate\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111101000000000111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(13),
	datac => \m1|ALT_INV_Immediate\(12),
	datad => \m1|ALT_INV_Immediate\(14),
	dataf => \m1|ALT_INV_Immediate\(15),
	combout => \Mux36~1_combout\);

-- Location: MLABCELL_X65_Y3_N45
\temp[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(0) = ( \m6|O\(0) & ( (\m2|Mux5~0_combout\) # (temp(0)) ) ) # ( !\m6|O\(0) & ( (temp(0) & !\m2|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(0),
	datad => \m2|ALT_INV_Mux5~0_combout\,
	dataf => \m6|ALT_INV_O\(0),
	combout => temp(0));

-- Location: MLABCELL_X65_Y3_N57
\Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( \m6|O\(0) & ( (!\Mux36~0_combout\ & (((!\Mux36~1_combout\) # (temp(0))))) # (\Mux36~0_combout\ & (\m4|O_dataB\(0) & (!\Mux36~1_combout\))) ) ) # ( !\m6|O\(0) & ( (!\Mux36~0_combout\ & (((\Mux36~1_combout\ & temp(0))))) # 
-- (\Mux36~0_combout\ & (\m4|O_dataB\(0) & (!\Mux36~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100000001110011010000110111001101000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m4|ALT_INV_O_dataB\(0),
	datab => \ALT_INV_Mux36~0_combout\,
	datac => \ALT_INV_Mux36~1_combout\,
	datad => ALT_INV_temp(0),
	dataf => \m6|ALT_INV_O\(0),
	combout => \Mux33~0_combout\);

-- Location: MLABCELL_X65_Y3_N30
\m2|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m2|Mux5~1_combout\ = ( \m1|Immediate\(13) & ( (\m1|Immediate\(15) & !\m1|Immediate\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m1|ALT_INV_Immediate\(15),
	datad => \m1|ALT_INV_Immediate\(14),
	dataf => \m1|ALT_INV_Immediate\(13),
	combout => \m2|Mux5~1_combout\);

-- Location: MLABCELL_X65_Y3_N18
\O_data[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[0]$latch~combout\ = ( \m2|Mux5~1_combout\ & ( \O_data[0]$latch~combout\ ) ) # ( !\m2|Mux5~1_combout\ & ( \Mux33~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux33~0_combout\,
	datac => \ALT_INV_O_data[0]$latch~combout\,
	dataf => \m2|ALT_INV_Mux5~1_combout\,
	combout => \O_data[0]$latch~combout\);

-- Location: FF_X64_Y3_N31
\m4|O_dataB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m3|F[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataB\(1));

-- Location: LABCELL_X66_Y4_N48
\temp[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(1) = ( \m2|Mux5~0_combout\ & ( \m6|O\(1) ) ) # ( !\m2|Mux5~0_combout\ & ( \m6|O\(1) & ( temp(1) ) ) ) # ( !\m2|Mux5~0_combout\ & ( !\m6|O\(1) & ( temp(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(1),
	datae => \m2|ALT_INV_Mux5~0_combout\,
	dataf => \m6|ALT_INV_O\(1),
	combout => temp(1));

-- Location: LABCELL_X66_Y3_N12
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \Mux36~0_combout\ & ( temp(1) & ( (!\Mux36~1_combout\ & \m4|O_dataB\(1)) ) ) ) # ( !\Mux36~0_combout\ & ( temp(1) & ( (\Mux36~1_combout\) # (\m6|O\(1)) ) ) ) # ( \Mux36~0_combout\ & ( !temp(1) & ( (!\Mux36~1_combout\ & 
-- \m4|O_dataB\(1)) ) ) ) # ( !\Mux36~0_combout\ & ( !temp(1) & ( (\m6|O\(1) & !\Mux36~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000000110001110111011101110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_O\(1),
	datab => \ALT_INV_Mux36~1_combout\,
	datac => \m4|ALT_INV_O_dataB\(1),
	datae => \ALT_INV_Mux36~0_combout\,
	dataf => ALT_INV_temp(1),
	combout => \Mux34~0_combout\);

-- Location: LABCELL_X66_Y3_N6
\O_data[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[1]$latch~combout\ = ( \O_data[1]$latch~combout\ & ( \m2|Mux5~1_combout\ ) ) # ( \O_data[1]$latch~combout\ & ( !\m2|Mux5~1_combout\ & ( \Mux34~0_combout\ ) ) ) # ( !\O_data[1]$latch~combout\ & ( !\m2|Mux5~1_combout\ & ( \Mux34~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux34~0_combout\,
	datae => \ALT_INV_O_data[1]$latch~combout\,
	dataf => \m2|ALT_INV_Mux5~1_combout\,
	combout => \O_data[1]$latch~combout\);

-- Location: FF_X65_Y3_N50
\m4|O_dataB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m3|F[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataB\(2));

-- Location: LABCELL_X66_Y4_N3
\temp[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(2) = ( \m6|O\(2) & ( (temp(2)) # (\m2|Mux5~0_combout\) ) ) # ( !\m6|O\(2) & ( (!\m2|Mux5~0_combout\ & temp(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_Mux5~0_combout\,
	datad => ALT_INV_temp(2),
	dataf => \m6|ALT_INV_O\(2),
	combout => temp(2));

-- Location: MLABCELL_X65_Y3_N0
\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( temp(2) & ( (!\Mux36~0_combout\ & (((\m6|O\(2)) # (\Mux36~1_combout\)))) # (\Mux36~0_combout\ & (\m4|O_dataB\(2) & (!\Mux36~1_combout\))) ) ) # ( !temp(2) & ( (!\Mux36~1_combout\ & ((!\Mux36~0_combout\ & ((\m6|O\(2)))) # 
-- (\Mux36~0_combout\ & (\m4|O_dataB\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000011100110111000001110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m4|ALT_INV_O_dataB\(2),
	datab => \ALT_INV_Mux36~0_combout\,
	datac => \ALT_INV_Mux36~1_combout\,
	datad => \m6|ALT_INV_O\(2),
	dataf => ALT_INV_temp(2),
	combout => \Mux35~0_combout\);

-- Location: MLABCELL_X65_Y3_N3
\O_data[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[2]$latch~combout\ = ( \m2|Mux5~1_combout\ & ( \O_data[2]$latch~combout\ ) ) # ( !\m2|Mux5~1_combout\ & ( \Mux35~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux35~0_combout\,
	datad => \ALT_INV_O_data[2]$latch~combout\,
	dataf => \m2|ALT_INV_Mux5~1_combout\,
	combout => \O_data[2]$latch~combout\);

-- Location: FF_X63_Y5_N34
\m4|O_dataB[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m3|F[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m4|O_dataB[3]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N30
\temp[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(3) = ( \m6|O\(3) & ( (temp(3)) # (\m2|Mux5~0_combout\) ) ) # ( !\m6|O\(3) & ( (!\m2|Mux5~0_combout\ & temp(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_Mux5~0_combout\,
	datad => ALT_INV_temp(3),
	dataf => \m6|ALT_INV_O\(3),
	combout => temp(3));

-- Location: LABCELL_X66_Y3_N27
\Mux36~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = ( \m4|O_dataB[3]~DUPLICATE_q\ & ( temp(3) & ( (!\Mux36~1_combout\ & ((\m6|O\(3)) # (\Mux36~0_combout\))) # (\Mux36~1_combout\ & (!\Mux36~0_combout\)) ) ) ) # ( !\m4|O_dataB[3]~DUPLICATE_q\ & ( temp(3) & ( (!\Mux36~0_combout\ & 
-- ((\m6|O\(3)) # (\Mux36~1_combout\))) ) ) ) # ( \m4|O_dataB[3]~DUPLICATE_q\ & ( !temp(3) & ( (!\Mux36~1_combout\ & ((\m6|O\(3)) # (\Mux36~0_combout\))) ) ) ) # ( !\m4|O_dataB[3]~DUPLICATE_q\ & ( !temp(3) & ( (!\Mux36~1_combout\ & (!\Mux36~0_combout\ & 
-- \m6|O\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000011001100110000110000111100000011110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux36~1_combout\,
	datac => \ALT_INV_Mux36~0_combout\,
	datad => \m6|ALT_INV_O\(3),
	datae => \m4|ALT_INV_O_dataB[3]~DUPLICATE_q\,
	dataf => ALT_INV_temp(3),
	combout => \Mux36~2_combout\);

-- Location: LABCELL_X66_Y3_N42
\O_data[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[3]$latch~combout\ = ( \O_data[3]$latch~combout\ & ( (\m2|Mux5~1_combout\) # (\Mux36~2_combout\) ) ) # ( !\O_data[3]$latch~combout\ & ( (\Mux36~2_combout\ & !\m2|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux36~2_combout\,
	datac => \m2|ALT_INV_Mux5~1_combout\,
	dataf => \ALT_INV_O_data[3]$latch~combout\,
	combout => \O_data[3]$latch~combout\);

-- Location: LABCELL_X63_Y4_N24
\temp[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(4) = ( \m6|O\(4) & ( (\m2|Mux5~0_combout\) # (temp(4)) ) ) # ( !\m6|O\(4) & ( (temp(4) & !\m2|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(4),
	datad => \m2|ALT_INV_Mux5~0_combout\,
	dataf => \m6|ALT_INV_O\(4),
	combout => temp(4));

-- Location: LABCELL_X63_Y4_N48
\Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( temp(4) & ( (!\m1|Immediate\(15) & (\m6|O\(4))) # (\m1|Immediate\(15) & (!\m1|Immediate\(14) & ((\m1|Immediate\(12)) # (\m6|O\(4))))) ) ) # ( !temp(4) & ( (\m6|O\(4) & ((!\m1|Immediate\(15)) # ((!\m1|Immediate\(12) & 
-- !\m1|Immediate\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000100010001100100010001000110111001000100011011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(15),
	datab => \m6|ALT_INV_O\(4),
	datac => \m1|ALT_INV_Immediate\(12),
	datad => \m1|ALT_INV_Immediate\(14),
	dataf => ALT_INV_temp(4),
	combout => \Mux37~0_combout\);

-- Location: LABCELL_X63_Y4_N27
\O_data[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[4]$latch~combout\ = ( \Mux37~0_combout\ & ( (!\m2|Mux5~1_combout\) # (\O_data[4]$latch~combout\) ) ) # ( !\Mux37~0_combout\ & ( (\m2|Mux5~1_combout\ & \O_data[4]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_Mux5~1_combout\,
	datad => \ALT_INV_O_data[4]$latch~combout\,
	dataf => \ALT_INV_Mux37~0_combout\,
	combout => \O_data[4]$latch~combout\);

-- Location: LABCELL_X64_Y6_N6
\temp[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(5) = ( \m6|O\(5) & ( (temp(5)) # (\m2|Mux5~0_combout\) ) ) # ( !\m6|O\(5) & ( (!\m2|Mux5~0_combout\ & temp(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_Mux5~0_combout\,
	datad => ALT_INV_temp(5),
	dataf => \m6|ALT_INV_O\(5),
	combout => temp(5));

-- Location: LABCELL_X64_Y6_N0
\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( temp(5) & ( (!\m1|Immediate\(15) & (\m6|O\(5))) # (\m1|Immediate\(15) & (!\m1|Immediate\(14) & ((\m1|Immediate\(12)) # (\m6|O\(5))))) ) ) # ( !temp(5) & ( (\m6|O\(5) & ((!\m1|Immediate\(15)) # ((!\m1|Immediate\(12) & 
-- !\m1|Immediate\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000000010101010100000001010101011100000101010101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_O\(5),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	dataf => ALT_INV_temp(5),
	combout => \Mux38~0_combout\);

-- Location: LABCELL_X64_Y6_N3
\O_data[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[5]$latch~combout\ = ( \m2|Mux5~1_combout\ & ( \O_data[5]$latch~combout\ ) ) # ( !\m2|Mux5~1_combout\ & ( \Mux38~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux38~0_combout\,
	datad => \ALT_INV_O_data[5]$latch~combout\,
	dataf => \m2|ALT_INV_Mux5~1_combout\,
	combout => \O_data[5]$latch~combout\);

-- Location: LABCELL_X64_Y6_N9
\temp[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(6) = ( \m6|O\(6) & ( (temp(6)) # (\m2|Mux5~0_combout\) ) ) # ( !\m6|O\(6) & ( (!\m2|Mux5~0_combout\ & temp(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_Mux5~0_combout\,
	datac => ALT_INV_temp(6),
	dataf => \m6|ALT_INV_O\(6),
	combout => temp(6));

-- Location: LABCELL_X64_Y6_N12
\Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( temp(6) & ( (!\m1|Immediate\(15) & (((\m6|O\(6))))) # (\m1|Immediate\(15) & (!\m1|Immediate\(14) & ((\m6|O\(6)) # (\m1|Immediate\(12))))) ) ) # ( !temp(6) & ( (\m6|O\(6) & ((!\m1|Immediate\(15)) # ((!\m1|Immediate\(12) & 
-- !\m1|Immediate\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100000001100110010000000110011011100000011001101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(12),
	datab => \m6|ALT_INV_O\(6),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	dataf => ALT_INV_temp(6),
	combout => \Mux39~0_combout\);

-- Location: LABCELL_X64_Y6_N15
\O_data[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[6]$latch~combout\ = ( \Mux39~0_combout\ & ( (!\m2|Mux5~1_combout\) # (\O_data[6]$latch~combout\) ) ) # ( !\Mux39~0_combout\ & ( (\O_data[6]$latch~combout\ & \m2|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_O_data[6]$latch~combout\,
	datad => \m2|ALT_INV_Mux5~1_combout\,
	dataf => \ALT_INV_Mux39~0_combout\,
	combout => \O_data[6]$latch~combout\);

-- Location: LABCELL_X64_Y6_N51
\temp[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(7) = ( \m6|O\(7) & ( (temp(7)) # (\m2|Mux5~0_combout\) ) ) # ( !\m6|O\(7) & ( (!\m2|Mux5~0_combout\ & temp(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_Mux5~0_combout\,
	datad => ALT_INV_temp(7),
	dataf => \m6|ALT_INV_O\(7),
	combout => temp(7));

-- Location: MLABCELL_X65_Y6_N18
\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \m1|Immediate\(14) & ( temp(7) & ( (\m6|O\(7) & !\m1|Immediate\(15)) ) ) ) # ( !\m1|Immediate\(14) & ( temp(7) & ( ((\m1|Immediate\(12) & \m1|Immediate\(15))) # (\m6|O\(7)) ) ) ) # ( \m1|Immediate\(14) & ( !temp(7) & ( (\m6|O\(7) & 
-- !\m1|Immediate\(15)) ) ) ) # ( !\m1|Immediate\(14) & ( !temp(7) & ( (\m6|O\(7) & ((!\m1|Immediate\(12)) # (!\m1|Immediate\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110000000000110011011101110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(12),
	datab => \m6|ALT_INV_O\(7),
	datad => \m1|ALT_INV_Immediate\(15),
	datae => \m1|ALT_INV_Immediate\(14),
	dataf => ALT_INV_temp(7),
	combout => \Mux40~0_combout\);

-- Location: MLABCELL_X65_Y6_N39
\O_data[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[7]$latch~combout\ = ( \m2|Mux5~1_combout\ & ( \Mux40~0_combout\ & ( \O_data[7]$latch~combout\ ) ) ) # ( !\m2|Mux5~1_combout\ & ( \Mux40~0_combout\ ) ) # ( \m2|Mux5~1_combout\ & ( !\Mux40~0_combout\ & ( \O_data[7]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_O_data[7]$latch~combout\,
	datae => \m2|ALT_INV_Mux5~1_combout\,
	dataf => \ALT_INV_Mux40~0_combout\,
	combout => \O_data[7]$latch~combout\);

-- Location: MLABCELL_X65_Y5_N24
\temp[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(8) = ( \m6|O\(8) & ( (\m2|Mux5~0_combout\) # (temp(8)) ) ) # ( !\m6|O\(8) & ( (temp(8) & !\m2|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(8),
	datad => \m2|ALT_INV_Mux5~0_combout\,
	dataf => \m6|ALT_INV_O\(8),
	combout => temp(8));

-- Location: MLABCELL_X65_Y5_N54
\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( temp(8) & ( (!\m1|Immediate\(15) & (((\m6|O\(8))))) # (\m1|Immediate\(15) & (!\m1|Immediate\(14) & ((\m6|O\(8)) # (\m1|Immediate\(12))))) ) ) # ( !temp(8) & ( (\m6|O\(8) & ((!\m1|Immediate\(15)) # ((!\m1|Immediate\(12) & 
-- !\m1|Immediate\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100000001100110010000000110011011100000011001101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(12),
	datab => \m6|ALT_INV_O\(8),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	dataf => ALT_INV_temp(8),
	combout => \Mux41~0_combout\);

-- Location: MLABCELL_X65_Y5_N57
\O_data[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[8]$latch~combout\ = ( \Mux41~0_combout\ & ( (!\m2|Mux5~1_combout\) # (\O_data[8]$latch~combout\) ) ) # ( !\Mux41~0_combout\ & ( (\m2|Mux5~1_combout\ & \O_data[8]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \m2|ALT_INV_Mux5~1_combout\,
	datad => \ALT_INV_O_data[8]$latch~combout\,
	dataf => \ALT_INV_Mux41~0_combout\,
	combout => \O_data[8]$latch~combout\);

-- Location: MLABCELL_X65_Y5_N51
\temp[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(9) = ( \m6|O\(9) & ( (\m2|Mux5~0_combout\) # (temp(9)) ) ) # ( !\m6|O\(9) & ( (temp(9) & !\m2|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(9),
	datad => \m2|ALT_INV_Mux5~0_combout\,
	dataf => \m6|ALT_INV_O\(9),
	combout => temp(9));

-- Location: MLABCELL_X65_Y5_N36
\Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( temp(9) & ( (!\m1|Immediate\(15) & (((\m6|O\(9))))) # (\m1|Immediate\(15) & (!\m1|Immediate\(14) & ((\m6|O\(9)) # (\m1|Immediate\(12))))) ) ) # ( !temp(9) & ( (\m6|O\(9) & ((!\m1|Immediate\(15)) # ((!\m1|Immediate\(12) & 
-- !\m1|Immediate\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100000001100110010000000110011011100000011001101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(12),
	datab => \m6|ALT_INV_O\(9),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	dataf => ALT_INV_temp(9),
	combout => \Mux42~0_combout\);

-- Location: MLABCELL_X65_Y5_N39
\O_data[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[9]$latch~combout\ = ( \Mux42~0_combout\ & ( (!\m2|Mux5~1_combout\) # (\O_data[9]$latch~combout\) ) ) # ( !\Mux42~0_combout\ & ( (\O_data[9]$latch~combout\ & \m2|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_O_data[9]$latch~combout\,
	datad => \m2|ALT_INV_Mux5~1_combout\,
	dataf => \ALT_INV_Mux42~0_combout\,
	combout => \O_data[9]$latch~combout\);

-- Location: LABCELL_X63_Y5_N48
\temp[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(10) = ( \m6|O\(10) & ( (\m2|Mux5~0_combout\) # (temp(10)) ) ) # ( !\m6|O\(10) & ( (temp(10) & !\m2|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(10),
	datad => \m2|ALT_INV_Mux5~0_combout\,
	dataf => \m6|ALT_INV_O\(10),
	combout => temp(10));

-- Location: LABCELL_X63_Y5_N27
\Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = ( temp(10) & ( (!\m1|Immediate\(15) & (((\m6|O\(10))))) # (\m1|Immediate\(15) & (!\m1|Immediate\(14) & ((\m6|O\(10)) # (\m1|Immediate\(12))))) ) ) # ( !temp(10) & ( (\m6|O\(10) & ((!\m1|Immediate\(15)) # ((!\m1|Immediate\(14) & 
-- !\m1|Immediate\(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001000000011110000100000001111001010100000111100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(14),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m6|ALT_INV_O\(10),
	datad => \m1|ALT_INV_Immediate\(15),
	dataf => ALT_INV_temp(10),
	combout => \Mux43~0_combout\);

-- Location: LABCELL_X63_Y5_N51
\O_data[10]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[10]$latch~combout\ = ( \Mux43~0_combout\ & ( (!\m2|Mux5~1_combout\) # (\O_data[10]$latch~combout\) ) ) # ( !\Mux43~0_combout\ & ( (\m2|Mux5~1_combout\ & \O_data[10]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m2|ALT_INV_Mux5~1_combout\,
	datac => \ALT_INV_O_data[10]$latch~combout\,
	dataf => \ALT_INV_Mux43~0_combout\,
	combout => \O_data[10]$latch~combout\);

-- Location: LABCELL_X63_Y5_N42
\temp[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(11) = ( \m6|O\(11) & ( (\m2|Mux5~0_combout\) # (temp(11)) ) ) # ( !\m6|O\(11) & ( (temp(11) & !\m2|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(11),
	datad => \m2|ALT_INV_Mux5~0_combout\,
	dataf => \m6|ALT_INV_O\(11),
	combout => temp(11));

-- Location: LABCELL_X63_Y5_N0
\Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = ( temp(11) & ( (!\m1|Immediate\(15) & (((\m6|O\(11))))) # (\m1|Immediate\(15) & (!\m1|Immediate\(14) & ((\m6|O\(11)) # (\m1|Immediate\(12))))) ) ) # ( !temp(11) & ( (\m6|O\(11) & ((!\m1|Immediate\(15)) # ((!\m1|Immediate\(12) & 
-- !\m1|Immediate\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100000001100110010000000110011011100000011001101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(12),
	datab => \m6|ALT_INV_O\(11),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	dataf => ALT_INV_temp(11),
	combout => \Mux44~0_combout\);

-- Location: LABCELL_X63_Y5_N3
\O_data[11]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[11]$latch~combout\ = ( \Mux44~0_combout\ & ( (!\m2|Mux5~1_combout\) # (\O_data[11]$latch~combout\) ) ) # ( !\Mux44~0_combout\ & ( (\O_data[11]$latch~combout\ & \m2|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_O_data[11]$latch~combout\,
	datad => \m2|ALT_INV_Mux5~1_combout\,
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => \O_data[11]$latch~combout\);

-- Location: LABCELL_X63_Y5_N39
\temp[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(12) = ( \m6|O\(12) & ( (\m2|Mux5~0_combout\) # (temp(12)) ) ) # ( !\m6|O\(12) & ( (temp(12) & !\m2|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(12),
	datad => \m2|ALT_INV_Mux5~0_combout\,
	dataf => \m6|ALT_INV_O\(12),
	combout => temp(12));

-- Location: LABCELL_X63_Y5_N18
\Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = ( temp(12) & ( (!\m1|Immediate\(15) & (((\m6|O\(12))))) # (\m1|Immediate\(15) & (!\m1|Immediate\(14) & ((\m6|O\(12)) # (\m1|Immediate\(12))))) ) ) # ( !temp(12) & ( (\m6|O\(12) & ((!\m1|Immediate\(15)) # ((!\m1|Immediate\(12) & 
-- !\m1|Immediate\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100000001100110010000000110011011100000011001101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|ALT_INV_Immediate\(12),
	datab => \m6|ALT_INV_O\(12),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	dataf => ALT_INV_temp(12),
	combout => \Mux45~0_combout\);

-- Location: LABCELL_X63_Y5_N45
\O_data[12]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[12]$latch~combout\ = ( \m2|Mux5~1_combout\ & ( \O_data[12]$latch~combout\ ) ) # ( !\m2|Mux5~1_combout\ & ( \Mux45~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux45~0_combout\,
	datac => \ALT_INV_O_data[12]$latch~combout\,
	dataf => \m2|ALT_INV_Mux5~1_combout\,
	combout => \O_data[12]$latch~combout\);

-- Location: LABCELL_X63_Y6_N18
\temp[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(13) = ( \m6|O\(13) & ( (\m2|Mux5~0_combout\) # (temp(13)) ) ) # ( !\m6|O\(13) & ( (temp(13) & !\m2|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(13),
	datad => \m2|ALT_INV_Mux5~0_combout\,
	dataf => \m6|ALT_INV_O\(13),
	combout => temp(13));

-- Location: LABCELL_X63_Y6_N30
\Mux46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = ( temp(13) & ( (!\m1|Immediate\(15) & (\m6|O\(13))) # (\m1|Immediate\(15) & (!\m1|Immediate\(14) & ((\m1|Immediate\(12)) # (\m6|O\(13))))) ) ) # ( !temp(13) & ( (\m6|O\(13) & ((!\m1|Immediate\(15)) # ((!\m1|Immediate\(12) & 
-- !\m1|Immediate\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000000010101010100000001010101011100000101010101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_O\(13),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	dataf => ALT_INV_temp(13),
	combout => \Mux46~0_combout\);

-- Location: LABCELL_X63_Y6_N33
\O_data[13]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[13]$latch~combout\ = ( \Mux46~0_combout\ & ( (!\m2|Mux5~1_combout\) # (\O_data[13]$latch~combout\) ) ) # ( !\Mux46~0_combout\ & ( (\O_data[13]$latch~combout\ & \m2|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_O_data[13]$latch~combout\,
	datad => \m2|ALT_INV_Mux5~1_combout\,
	dataf => \ALT_INV_Mux46~0_combout\,
	combout => \O_data[13]$latch~combout\);

-- Location: LABCELL_X63_Y6_N39
\temp[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(14) = ( \m6|O\(14) & ( (\m2|Mux5~0_combout\) # (temp(14)) ) ) # ( !\m6|O\(14) & ( (temp(14) & !\m2|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(14),
	datad => \m2|ALT_INV_Mux5~0_combout\,
	dataf => \m6|ALT_INV_O\(14),
	combout => temp(14));

-- Location: LABCELL_X63_Y6_N24
\Mux47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = ( temp(14) & ( (!\m1|Immediate\(15) & (\m6|O\(14))) # (\m1|Immediate\(15) & (!\m1|Immediate\(14) & ((\m1|Immediate\(12)) # (\m6|O\(14))))) ) ) # ( !temp(14) & ( (\m6|O\(14) & ((!\m1|Immediate\(15)) # ((!\m1|Immediate\(12) & 
-- !\m1|Immediate\(14))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000000010101010100000001010101011100000101010101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_O\(14),
	datab => \m1|ALT_INV_Immediate\(12),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	dataf => ALT_INV_temp(14),
	combout => \Mux47~0_combout\);

-- Location: LABCELL_X63_Y6_N15
\O_data[14]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[14]$latch~combout\ = ( \Mux47~0_combout\ & ( (!\m2|Mux5~1_combout\) # (\O_data[14]$latch~combout\) ) ) # ( !\Mux47~0_combout\ & ( (\O_data[14]$latch~combout\ & \m2|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_O_data[14]$latch~combout\,
	datad => \m2|ALT_INV_Mux5~1_combout\,
	dataf => \ALT_INV_Mux47~0_combout\,
	combout => \O_data[14]$latch~combout\);

-- Location: LABCELL_X62_Y4_N18
\temp[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp(15) = ( \m6|O\(15) & ( (\m2|Mux5~0_combout\) # (temp(15)) ) ) # ( !\m6|O\(15) & ( (temp(15) & !\m2|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp(15),
	datac => \m2|ALT_INV_Mux5~0_combout\,
	dataf => \m6|ALT_INV_O\(15),
	combout => temp(15));

-- Location: LABCELL_X62_Y4_N51
\Mux48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = ( \m1|Immediate\(12) & ( temp(15) & ( (!\m1|Immediate\(15) & (\m6|O\(15))) # (\m1|Immediate\(15) & ((!\m1|Immediate\(14)))) ) ) ) # ( !\m1|Immediate\(12) & ( temp(15) & ( (\m6|O\(15) & ((!\m1|Immediate\(14)) # (!\m1|Immediate\(15)))) ) 
-- ) ) # ( \m1|Immediate\(12) & ( !temp(15) & ( (\m6|O\(15) & !\m1|Immediate\(15)) ) ) ) # ( !\m1|Immediate\(12) & ( !temp(15) & ( (\m6|O\(15) & ((!\m1|Immediate\(14)) # (!\m1|Immediate\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010000000001010101010100000101010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m6|ALT_INV_O\(15),
	datac => \m1|ALT_INV_Immediate\(14),
	datad => \m1|ALT_INV_Immediate\(15),
	datae => \m1|ALT_INV_Immediate\(12),
	dataf => ALT_INV_temp(15),
	combout => \Mux48~0_combout\);

-- Location: LABCELL_X62_Y4_N33
\O_data[15]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \O_data[15]$latch~combout\ = ( \O_data[15]$latch~combout\ & ( (\m2|Mux5~1_combout\) # (\Mux48~0_combout\) ) ) # ( !\O_data[15]$latch~combout\ & ( (\Mux48~0_combout\ & !\m2|Mux5~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux48~0_combout\,
	datad => \m2|ALT_INV_Mux5~1_combout\,
	dataf => \ALT_INV_O_data[15]$latch~combout\,
	combout => \O_data[15]$latch~combout\);

-- Location: LABCELL_X51_Y22_N0
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


