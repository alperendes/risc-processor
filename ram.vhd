LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity ram is
generic(
	address_length: natural := 16;
	data_length: natural := 16);
port(
	clk: IN STD_LOGIC;
	memread: IN STD_LOGIC;
	memwrite: IN STD_LOGIC;
	address: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	data_in: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	data_out: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end entity;

architecture BHV of ram is
type ram_type is array (0 TO (2**(address_length)-1)) of STD_LOGIC_VECTOR((data_length - 1) DOWNTO 0);
signal temp: STD_LOGIC_VECTOR(15 DOWNTO 0);
signal ram: ram_type;
begin
process(clk) is
begin
	if rising_edge(clk) then
		if(memwrite = '1') then
			temp <= data_in;
		elsif(memread = '1') then
			data_out <= temp;
		end if;
	end if;
end process;
end BHV;