library ieee;
use ieee.std_logic_1164.all;

entity multi7 is
	port (
		clk : in std_logic;
		sel : in std_logic_vector(2 downto 0);
		A, B, C, D, E, F, G 	 : in std_logic_vector(15 downto 0);
		saidamux7	 : out std_logic_vector(15 downto 0)
	);
end multi7;

architecture implementation of multi7 is
begin
	process(clk)
		begin 
			IF (clk'event AND clk = '1') THEN
				case sel is
					when "000" => saidamux7 <= A;
					when "001" => saidamux7 <= B;
					when "010" => saidamux7 <= C;
					when "011" => saidamux7 <= D;
					when "100" => saidamux7 <= E;
					when "101" => saidamux7 <= F;
					when "110" => saidamux7 <= G;
	
					when others => saidamux7 <= G;
				end case;	
			end if;
	end process;
end implementation;