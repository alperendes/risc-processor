library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity PC is
	port(
           pc_op_in : in STD_LOGIC;
           pc_in : in STD_LOGIC_VECTOR (15 downto 0);
           pc_out : out STD_LOGIC_VECTOR (15 downto 0);
		clk: IN STD_LOGIC);
end entity;

architecture BHV of PC is
signal pc: STD_LOGIC_VECTOR(15 downto 0) := x"0000";
begin
 process (clk)
 begin
if rising_edge(clk) then 
case pc_op_in is
when '0'=>
  pc <= STD_LOGIC_VECTOR(unsigned(pc)+1);
  when '1'=>
  pc <= pc_in;
  when others =>
  end case;

end if;
end process;
pc_out<=pc;
end BHV;