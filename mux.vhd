LIBRARY IEEE;
USE IEEE.STd_LOGIC_1164.ALL;

entity mux is
	port(
	A,B: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	S: IN STD_LOGIC;
	F: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end entity;

architecture BHV of mux is
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