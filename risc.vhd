LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity risc is
	port(
		ins: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		clk: IN STD_LOGIC;
		res: IN STD_LOGIC;
		state: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		seq: OUT STD_LOGIC;
		equal,az,bz,agb,alb: OUT STD_LOGIC;
		mem_read, mem_write: OUT STD_LOGIC;
		O_add, O_data: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end entity;

architecture BHV of risc is
component cu is
	port(
		opcode: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		mem_read: OUT STD_LOGIC;
		cu_st: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		pc_wr: OUT STD_LOGIC;
		pc_src: OUT STD_LOGIC;
		alu_op: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		alu_src2: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		alu_src1: OUT STD_LOGIC;
		memtoreg: OUT STD_LOGIC;
		gprf_wr: OUT STD_LOGIC;
		ir_wr: OUT STD_LOGIC;
		mem_wr: OUT STD_LOGIC;
		pc_cond: OUT STD_LOGIC;
		rs2_sel: OUT STD_LOGIC;
		iord: OUT STD_LOGIC;
		clk, en: IN STD_LOGIC);
end component;

component squen is port (
     clk:    in STD_LOGIC;
	  reg : in std_logic_vector(15 downto 0);--registirdan gelen 16bitlik data 
     z:        out STD_LOGIC);
end component;

component alu is
PORT (
		A,B: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		clk : IN STD_LOGIC;
		Alu_op: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		equal,az,bz,agb,alb: OUT STD_LOGIC;
		cmp: OUT STD_LOGIC;
		aluO: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		Rd: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
end component;

component ir is
	port(
		ins: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		clk,irwr : IN STD_LOGIC;
		Op_code: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		Immediate : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		Sel_s1,Sel_s2,Sel_sd: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
end component;

component pc is
	port(
		pc_op_in : in STD_LOGIC;
		pc_in : in STD_LOGIC_VECTOR (15 downto 0);
      pc_out : out STD_LOGIC_VECTOR (15 downto 0);
		clk: IN STD_LOGIC);
end component;

component gpreg is
	port(
		clk : in  STD_LOGIC;
		data_in_O: in  STD_LOGIC_VECTOR (15 downto 0);
      O_dataA : out  STD_LOGIC_VECTOR (15 downto 0);
      O_dataB : out  STD_LOGIC_VECTOR (15 downto 0);
      selA : in  STD_LOGIC_VECTOR (3 downto 0);--
      selB : in  STD_LOGIC_VECTOR (3 downto 0);--
      selD : in  STD_LOGIC_VECTOR (3 downto 0);--
      GPRF_wr : in  STD_LOGIC);
end component;

component mux is
	port(
	A,B: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	S: IN STD_LOGIC;
	F: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end component;

component mux2 is
	port(
	A,B,c: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	S: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	F: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end component;

component mux3 is
	port(
	A,B: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	s: IN STD_LOGIC;
	F: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end component;

component mux4 is
	port(
	A,B: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	S: IN STD_LOGIC;
	F: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
end component;
--GENERAL SIGNALS
signal mdr: STD_LOGIC_VECTOR(15 DOWNTO 0);
signal Rd: STD_LOGIC_VECTOR(3 DOWNTO 0);
--SIGNALS FOR IR
signal opcode,seld,sel1,sel2: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal immd: STD_LOGIC_VECTOR(15 DOWNTO 0);
signal irwr: STD_LOGIC;
--SIGNALS FOR CU
signal pcwr,pc_src,alu_src1,mtreg,pc_cond,rs2select,iord,memread,memwrite: STD_LOGIC;
signal alu_op: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal alu_src2: STD_LOGIC_VECTOR(1 DOWNTO 0);
--SIGNALS FOR ALU
signal aluin1,aluin2: STD_LOGIC_VECTOR(15 DOWNTO 0);
signal alucmp: STD_LOGIC;
signal aluout: STD_LOGIC_VECTOR(15 DOWNTO 0);
--SIGNALS FOR GPREG
signal datain,datas1,datas2: STD_LOGIC_VECTOR(15 DOWNTO 0);
signal muxout1: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal gprf: STD_LOGIC;
--SIGNALS FOR PC
signal cu_out: STD_LOGIC;
signal pcout,pcin: STD_LOGIC_VECTOR(15 DOWNTO 0);
signal pc_opin: STD_LOGIC;
--SIGNALS FOR RAM
signal temp: STD_LOGIC_VECTOR(15 downto 0);
signal tempadd: STD_LOGIC_VECTOR(15 downto 0);
begin
mdr <= ins;
m1: ir port map (ins,clk,irwr,opcode,immd,sel1,sel2,seld);
m2: cu port map (opcode,memread,state,pcwr,pc_src,alu_op,alu_src2,alu_src1,mtreg,gprf,irwr,memwrite,pc_cond,rs2select,iord,clk,res);
m3: mux4 port map (sel2,seld,rs2select,muxout1);
m4: gpreg port map (clk,datain,datas1,datas2,sel1,muxout1,seld,gprf);
m5: mux port map (aluout,mdr,mtreg,datain);
m6: alu port map (aluin1,aluin2,clk,alu_op,equal,az,bz,agb,alb,alucmp,aluout,Rd);
m7: mux3 port map (datas1,pcout,alu_src1,aluin1);
m8: mux2 port map (datas2,"0000000000001111",immd,alu_src2,aluin2);
cu_out <= pc_cond XNOR alucmp; 
pc_opin <= cu_out OR pcwr;
m9: mux port map (aluout,aluout,pc_src,pcin);
m10: pc port map (pc_opin,pcin,pcout,clk);
m11: mux port map (pcout,datas1,iord,tempadd);
m12: squen port map (clk,ins,seq);
mem_read<=memread;
mem_write<=memwrite;
process(opcode,aluout,datas2)
begin
case(opcode) is
when "0000" =>
O_data <= aluout;
O_add <= tempadd;
when "0001" =>
O_data <= aluout;
O_add <= tempadd;
when "0010" =>
O_data <= aluout;
O_add <= tempadd;
when "0011" =>
O_data <= aluout;
O_add <= tempadd;
when "0100" =>
O_data <= aluout;
O_add <= tempadd;
when "0101" =>
O_data <= aluout;
O_add <= tempadd;
when "0110" =>
O_data <= aluout;
O_add <= tempadd;
when "0111" =>
O_data <= aluout;
O_add <= tempadd;
when "1000" =>
O_data <= aluout;
O_add <= tempadd;
when "1010" =>
temp <= aluout;
O_add <= tempadd;
when "1001" =>
O_data <= temp;
O_add <= tempadd;
when "1011" =>
O_add <= x"0000";
when "1100" =>
O_add <= x"0000";
O_data <= x"0000";
when others =>
O_data <= datas2;
O_add <= tempadd;
end case;
end process;
end BHV;