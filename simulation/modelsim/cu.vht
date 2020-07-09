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
-- Generated on "06/14/2020 22:47:41"
                                                            
-- Vhdl Test Bench template for design  :  cu
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cu_vhd_tst IS
END cu_vhd_tst;
ARCHITECTURE cu_arch OF cu_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_op : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL alu_src1 : STD_LOGIC;
SIGNAL alu_src2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL cu_st : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL en : STD_LOGIC;
SIGNAL gprf_wr : STD_LOGIC;
SIGNAL iord : STD_LOGIC;
SIGNAL ir_wr : STD_LOGIC;
SIGNAL mem_read : STD_LOGIC;
SIGNAL mem_wr : STD_LOGIC;
SIGNAL memtoreg : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pc_cond : STD_LOGIC;
SIGNAL pc_src : STD_LOGIC;
SIGNAL pc_wr : STD_LOGIC;
SIGNAL rs2_sel : STD_LOGIC;
COMPONENT cu
	PORT (
	alu_op : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	alu_src1 : BUFFER STD_LOGIC;
	alu_src2 : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : IN STD_LOGIC;
	cu_st : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	en : IN STD_LOGIC;
	gprf_wr : BUFFER STD_LOGIC;
	iord : BUFFER STD_LOGIC;
	ir_wr : BUFFER STD_LOGIC;
	mem_read : BUFFER STD_LOGIC;
	mem_wr : BUFFER STD_LOGIC;
	memtoreg : BUFFER STD_LOGIC;
	opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	pc_cond : BUFFER STD_LOGIC;
	pc_src : BUFFER STD_LOGIC;
	pc_wr : BUFFER STD_LOGIC;
	rs2_sel : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : cu
	PORT MAP (
-- list connections between master ports and signals
	alu_op => alu_op,
	alu_src1 => alu_src1,
	alu_src2 => alu_src2,
	clk => clk,
	cu_st => cu_st,
	en => en,
	gprf_wr => gprf_wr,
	iord => iord,
	ir_wr => ir_wr,
	mem_read => mem_read,
	mem_wr => mem_wr,
	memtoreg => memtoreg,
	opcode => opcode,
	pc_cond => pc_cond,
	pc_src => pc_src,
	pc_wr => pc_wr,
	rs2_sel => rs2_sel
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
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
END cu_arch;