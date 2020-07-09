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
-- Generated on "07/03/2020 01:00:02"
                                                            
-- Vhdl Test Bench template for design  :  risc
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY risc_vhd_tst IS
END risc_vhd_tst;
ARCHITECTURE risc_arch OF risc_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL agb : STD_LOGIC;
SIGNAL alb : STD_LOGIC;
SIGNAL az : STD_LOGIC;
SIGNAL bz : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL equal : STD_LOGIC;
SIGNAL ins : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL mem_read : STD_LOGIC;
SIGNAL mem_write : STD_LOGIC;
SIGNAL O_add : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL O_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL res : STD_LOGIC;
SIGNAL seq : STD_LOGIC;
SIGNAL state : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT risc
	PORT (
	agb : OUT STD_LOGIC;
	alb : OUT STD_LOGIC;
	az : OUT STD_LOGIC;
	bz : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	equal : OUT STD_LOGIC;
	ins : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	mem_read : OUT STD_LOGIC;
	mem_write : OUT STD_LOGIC;
	O_add : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	O_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	res : IN STD_LOGIC;
	seq : OUT STD_LOGIC;
	state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : risc
	PORT MAP (
-- list connections between master ports and signals
	agb => agb,
	alb => alb,
	az => az,
	bz => bz,
	clk => clk,
	equal => equal,
	ins => ins,
	mem_read => mem_read,
	mem_write => mem_write,
	O_add => O_add,
	O_data => O_data,
	res => res,
	seq => seq,
	state => state
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
		  res <= '1';
		  wait for 50 ps;
		  res <= '0';
		  wait for 50 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "0000101001011010";
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "0000101000010100";
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "0110101001011010";
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "0110101000000000";
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "0001101010101000";
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "0001101000101000";
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "1000101010101010";
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "1010010111110000";
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "0001101000101000";
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "1001010100001010";
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "0000101001011010";
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "0000101001011010";
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "1011101001011010";--JUMP
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  ins <= "1100101001011010";--NOP
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
		  wait for 25 ps;
		  clk <= '1';
		  wait for 25 ps;
		  clk <= '0';
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
END risc_arch;
