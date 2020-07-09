LIBRARY IEEE;
USE IEEE.STd_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
--pc_wr = pc_in = 0 ----> pc++
--pc_wr = pc_in = 1 ----> pc = pc
entity cu is
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
end entity;

architecture BHV of cu is
signal opfake: STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
	process(opcode,clk,en) is	
	variable i:integer;

	begin
	if rising_edge(clk) then
	if(opcode/="UUUU") then
	i:=to_integer(unsigned(opcode));
		if en = '0' then
		case(i) is
		when 0 =>
			mem_read <= '0';
			cu_st <= "0000";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "0000";
			alu_src2 <= "00";
			alu_src1 <= '0';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '0';
		when 1 =>
			mem_read <= '0';
			cu_st <= "0001";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "0001";
			alu_src2 <= "00";
			alu_src1 <= '0';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '1';
		when 2 =>
			mem_read <= '0';
			cu_st <= "0010";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "0010";
			alu_src2 <= "00";
			alu_src1 <= '0';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '1';
		when 3 =>
			mem_read <= '0';
			cu_st <= "0011";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "0011";
			alu_src2 <= "00";
			alu_src1 <= '0';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '1';
		when 4 =>
			mem_read <= '0';
			cu_st <= "0100";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "0100";
			alu_src2 <= "00";
			alu_src1 <= '0';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '1';
		when 5 =>
			mem_read <= '0';
			cu_st <= "0101";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "0101";
			alu_src2 <= "00";
			alu_src1 <= '0';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '1';
		when 6 =>
			mem_read <= '0';
			cu_st <= "0110";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "0110";
			alu_src2 <= "00";
			alu_src1 <= '0';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '1';
		when 7 =>
			mem_read <= '0';
			cu_st <= "0111";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "0111";
			alu_src2 <= "00";
			alu_src1 <= '0';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '1';
		when 8 =>
			mem_read <= '0';
			cu_st <= "1000";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "1000";
			alu_src2 <= "00";
			alu_src1 <= '0';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '0';
		when 9=> --LOAD
			mem_read <= '1';
			cu_st <= "1001";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "1001";
			alu_src2 <= "00";
			alu_src1 <= '0';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '0';
		when 10 => --STORE
			mem_read <= '0';
			cu_st <= "1010";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "1010";
			alu_src2 <= "00";
			alu_src1 <= '0';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '1';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '0';
		when 11 => --JUMP
			mem_read <= '0';
			cu_st <= "1011";
			pc_wr <= '1';
			pc_src <= '0';
			alu_op <= "1011";
			alu_src2 <= "10";
			alu_src1 <= '1';
			memtoreg <= '0';
			gprf_wr <= '1';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '0';
		when 12 => --NOP
			mem_read <= '0';
			cu_st <= "1100";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "1100";
			alu_src2 <= "00";
			alu_src1 <= '0';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '0';
		when 13 => --JZ
			mem_read <= '0';
			cu_st <= "1101";
			pc_wr <= '1';
			pc_src <= '0';
			alu_op <= "1101";
			alu_src2 <= "10";
			alu_src1 <= '1';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '1';
			rs2_sel<= '1';
			iord <= '0';
		when 14 => --JNZ
			mem_read <= '0';
			cu_st <= "1110";
			pc_wr <= '1';
			pc_src <= '0';
			alu_op <= "1110";
			alu_src2 <= "10";
			alu_src1 <= '1';
			memtoreg <= '0';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '1';
			rs2_sel<= '1';
			iord <= '0';
		when 15 => --LOAD IMMEDIATE
			mem_read <= '1';
			cu_st <= "1111";
			pc_wr <= '0';
			pc_src <= '0';
			alu_op <= "1111";
			alu_src2 <= "10";
			alu_src1 <= '0';
			memtoreg <= '1';
			gprf_wr <= '0';
			ir_wr <= '1';
			mem_wr <= '0';
			pc_cond <= '0';
			rs2_sel<= '0';
			iord <= '0';
		when others =>
			opfake <= opcode;
			
		end case;
		end if;
		end if;
		end if;
	end process;
end BHV;