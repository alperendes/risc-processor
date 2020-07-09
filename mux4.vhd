LIBRARY IEEE;
USE IEEE.STd_LOGIC_1164.ALL;

entity mux4 is
	port(
	A,B: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	S: IN STD_LOGIC;
	F: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
end entity;

architecture BHV of mux4 is
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