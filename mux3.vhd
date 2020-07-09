LIBRARY IEEE;
USE IEEE.STd_LOGIC_1164.ALL;

entity mux3 is
	port(
	A,B: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	s: IN STD_LOGIC;
	F: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end entity;

architecture BHV of mux3 is
begin
process(A,B,S)
begin
if S = '0' then
	F <= A;
else
	F <= B;
end if;
end process;
end BHV;