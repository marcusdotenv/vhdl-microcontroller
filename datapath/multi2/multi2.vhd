library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity multi2 is
	port (
		out_RI, out_RP : in std_logic_vector (9 downto 0);
		sel, clock : in std_logic;
		saida : out std_logic_vector (9 downto 0)
	);
end multi2;

architecture implementation of multi2 is
	begin
		process(clock)
			begin
				if (rising_edge(clock)) then
					if (sel = '0') then
						saida <= out_RP;
					elsif (sel = '1') then
						saida <= out_RI;
				end if;
				end if;
		end process;
				
end implementation;

--with sel select
--					saida <= out_RP when '0',
--								out_RI when '1';