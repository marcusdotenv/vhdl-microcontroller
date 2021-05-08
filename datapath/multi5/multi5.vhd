library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity multi5 is
	port (
		in_RI : in std_logic_vector (15 downto 0);
		in_RE : in std_logic_vector (15 downto 0);
		in_DADOS : in std_logic_vector (15 downto 0);
		in_ULA : in std_logic_vector (15 downto 0);
		in_MUX2 : in std_logic_vector (15 downto 0);
		sel : in std_logic_vector (2 downto 0);
		saida : out std_logic_vector (15 downto 0);
		clock: in std_logic
	);
end multi5;

architecture implementation of multi5 is
	begin
		process(clock)
			begin
				if (rising_edge(clock)) then
					case sel is
						when "010" => saida <= in_RI;
						when "000" => saida <= in_RE;
						when "011" => saida <= in_DADOS;
						when "100" => saida <= in_ULA;
						when "001" => saida <= in_MUX2;
						when others => saida <= in_ULA;
					end case;
				end if;
		end process;
end implementation;

--with sel select
--					saida <= in_RI when "010",
--					in_RE when "000",
--					in_DADOS	when "011",
--					in_ULA when "100",
--					in_MUX2 when "001",
--					in_ULA when others;