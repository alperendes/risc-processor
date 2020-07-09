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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "06/14/2020 22:24:11"
                                                            
-- Vhdl Test Bench template for design  :  alu
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_tst IS
END alu_vhd_tst;
ARCHITECTURE alu_arch OF alu_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL agb : STD_LOGIC;
SIGNAL alb : STD_LOGIC;
SIGNAL Alu_op : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL aluO : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL az : STD_LOGIC;
SIGNAL B : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL bz : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL cmp : STD_LOGIC;
SIGNAL equal : STD_LOGIC;
SIGNAL Rd : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT alu
	PORT (
	A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	agb : BUFFER STD_LOGIC;
	alb : BUFFER STD_LOGIC;
	Alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	aluO : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	az : BUFFER STD_LOGIC;
	B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	bz : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	cmp : BUFFER STD_LOGIC;
	equal : BUFFER STD_LOGIC;
	Rd : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	agb => agb,
	alb => alb,
	Alu_op => Alu_op,
	aluO => aluO,
	az => az,
	B => B,
	bz => bz,
	clk => clk,
	cmp => cmp,
	equal => equal,
	Rd => Rd
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
		  A <= "0000000000000001";
		  B <= "0000000000000001";
		  Alu_op <= "0000";
		  clk <= '0';
		  wait for 25 ps;
		  clk <= '1';
		  wait for 25 ps;
		  A <= "1000000000000000";
		  B <= "1000000000000000";
		  Alu_op <= "0100";
		  clk <= '0';
		  wait for 25 ps;
		  clk <= '1';
		  wait for 25 ps;
		  A <= "0100000000000000";
		  B <= "1000000000000000";
		  Alu_op <= "0111";
		  clk <= '0';
		  wait for 25 ps;
		  clk <= '1';
		  wait for 25 ps;
		  A <= "1000000000000000";
		  B <= "1001000000000000";
		  Alu_op <= "1000";
		  clk <= '0';
		  wait for 25 ps;
		  clk <= '1';
		  wait for 25 ps;
		  A <= "1000000000000000";
		  B <= "1000000000000000";
		  Alu_op <= "0110";
		  clk <= '0';
		  wait for 25 ps;
		  clk <= '1';
		  wait for 25 ps;
		  A <= "0000000000000000";
		  B <= "1000000000000000";
		  Alu_op <= "0110";
		  clk <= '0';
		  wait for 25 ps;
		  clk <= '1';
		  wait for 25 ps;
		  A <= "1000000000000000";
		  B <= "0000000000000000";
		  Alu_op <= "0110";
		  clk <= '0';
		  wait for 25 ps;
		  clk <= '1';
		  wait for 25 ps;
		  A <= "0000000000000000";
		  B <= "0000000000000000";
		  Alu_op <= "0110";
		  clk <= '0';
		  wait for 25 ps;
		  clk <= '1';
		  wait for 25 ps;
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END alu_arch;
