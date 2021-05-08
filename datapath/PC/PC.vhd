library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity PC is 
	PORT (
		PC_in : in std_logic_vector (7 downto 0);
		PC_out : buffer std_logic_vector (7 downto 0);
		ld_PC : in std_logic;
		clk_PC : in std_logic;
		rst_PC : in std_logic;
		incrementar : in std_logic
	);	
end PC;

architecture arch_PC of PC is
	begin 
		process(clk_PC, rst_PC)
			begin
				if(rst_PC = '1') then
					PC_out <= "00000000";
				elsif (clk_PC 'event and clk_PC = '1' and ld_PC = '1' and incrementar = '0') then
					PC_out <= PC_in;
				elsif (clk_PC 'event and clk_PC = '1' and ld_PC = '1' and incrementar = '1') then
					PC_out <= std_logic_vector(unsigned(PC_out) + 1);
				end if;			
			end process;
end arch_PC;