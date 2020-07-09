library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
entity gpreg is
Port ( clk : in  STD_LOGIC;
       data_in_O: in  STD_LOGIC_VECTOR (15 downto 0);--
       O_dataA : out  STD_LOGIC_VECTOR (15 downto 0);
       O_dataB : out  STD_LOGIC_VECTOR (15 downto 0);
       selA : in  STD_LOGIC_VECTOR (3 downto 0);--
       selB : in  STD_LOGIC_VECTOR (3 downto 0);--
       selD : in  STD_LOGIC_VECTOR (3 downto 0);--
       GPRF_wr : in  STD_LOGIC);
end entity;
architecture BHV of gpreg is
  type store_t is array (0 to 15) of std_logic_vector(15 downto 0);--16x16 memory
  signal regs: store_t := (others => X"0000");  
begin 
process(clk)
begin
  if rising_edge(clk) then -- enable koymuş  
    O_dataA(15 downto 4) <= "000000000000";
	 O_dataA(3 downto 0) <= selA;
    O_dataB(15 downto 4) <= "000000000000";
	 O_dataB(3 downto 0) <= selB;
    if (GPRF_wr = '1') then
      regs(to_integer(unsigned(selD))) <= data_in_O;
    end if;
  end if;
end process;
end BHV;