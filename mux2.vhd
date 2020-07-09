LIBRARY IEEE;
USE IEEE.STd_LOGIC_1164.ALL;

entity mux2 is
	port(
	A,B,c: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	S: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	F: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end entity;

architecture BHV of mux2 is
begin
process(A,B,S)
begin
if S = "00" then
	F <= A;
elsif S = "01" then
	F <= B;
elsif S = "10" then
	F <= C;
end if;
end process;
end BHV;