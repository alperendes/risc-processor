LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
entity ir is
PORT (
		ins: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		clk,irwr : IN STD_LOGIC;
		Op_code: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		Immediate : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		Sel_s1,Sel_s2,Sel_sd: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
end entity;

architecture BHV of ir is
begin
process(clk,irwr) 
begin
if rising_edge(clk) then
--if irwr='1' then
Op_code<=ins(15 downto 12);
Sel_sd<=ins(11 downto 8);
Sel_s1<=ins(7 downto 4);
Sel_s2<=ins(3 downto 0);
Immediate<=ins;
--end if;
end if;
end process;
end BHV;