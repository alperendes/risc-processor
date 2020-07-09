LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
entity alu is
PORT (
		A,B: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		clk : IN STD_LOGIC;
		Alu_op: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		equal,az,bz,agb,alb: OUT STD_LOGIC;
		cmp: OUT STD_LOGIC;
		aluO: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		Rd: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
end entity;

architecture BHV of alu is
SIGNAL TA,TB,O: STD_LOGIC_VECTOR(15 DOWNTO 0);
signal teq,taz,tbz,tagb,talb: STD_LOGIC;
begin
TA <=A;
TB <=B;
sel_case: process(TA,TB,Alu_op,clk)
begin
if rising_edge(clk) then
case Alu_op is
	when "0000" =>
	O<= std_logic_vector(unsigned(TA) + unsigned(TB));
	cmp <= '1';
	when "0001" =>
	if TA > TB then
		O <= std_logic_vector(unsigned(TA) - unsigned(TB));
	else
		O <= std_logic_vector(unsigned(TB) - unsigned(TA));
	end if;
	cmp <= '1';
	when "0010" =>
	O<=TA AND TB;
	cmp <= '1';
	when "0011" =>
	O<=TA OR TB;
	cmp <= '1';
	when "0100" =>
	O<=NOT TB;
	cmp <= '1';
	when "0101" =>
	O<=TA XOR TB;
	cmp <= '1';
	when "0110" =>
	if TA = TB then
		teq <= '1';
		tagb <= '0';
		talb <= '0';
		if TA = "0000000000000000" then
			taz <= '1';
			tbz <= '1';
		else
			taz <= '0';
			tbz <= '0';
		end if;
	cmp <= '1';
	end if;
	if TA < TB then
		teq <= '0';
		tagb <= '0';
		talb <= '1';
		tbz <= '0';
		if TA = "0000000000000000" then
			taz <= '1';
		else
			taz <= '0';
		end if;
	cmp <= '1';
	elsif TA > TB then
		teq <= '0';
		tagb <= '1';
		talb <= '0';
		taz <= '0';
		if TB = "0000000000000000" then
			tbz <= '1';
		else
			tbz <= '0';
		end if;
	cmp <= '1';
	end if;
	when "0111" =>
	O<=std_logic_vector(shift_left(unsigned(TA),1));
	cmp <= '1';
	when "1000" =>
	O<=std_logic_vector(shift_right(unsigned(TA),1));
	cmp <= '1';
	when "1001" =>
	O <= O;
	cmp <= '1';
	when "1010" =>
	O <= O;
	cmp <= '1';
	when "1011" =>
	O <= O;
	cmp <= '1';
	when "1100" =>
	O <= O;
	cmp <= '1';
	when "1101" =>
	if (O(11 DOWNTO 8) <= "0000") then
		cmp <= '1';
	else 
		cmp <= '0';
	end if;
	when "1110" =>
	if (O(11 DOWNTO 8) <= "0000") then
		cmp <= '0';
	else 
		cmp <= '1';
	end if;
	when "1111" =>
	O <= O;
	cmp <= '1';
	when others =>
	O <= O;
	end case;
	end if;
	end process sel_case;
	equal <= teq; az <= taz; bz <= tbz; agb <= tagb; alb <= talb;
	aluO<=O;
	Rd <= O(11 DOWNTO 8);
end BHV;