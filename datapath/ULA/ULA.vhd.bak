   library IEEE;
	use IEEE.std_logic_1164.all;
	use IEEE.std_logic_unsigned.all;
	
	entity ULA is port
	(
	   A,B         :  in   std_logic_vector(15 downto 0);
		saida           : out   std_logic_vector(15 downto 0);
		sel  :  in   std_logic_vector(2 downto 0);
		clock : in std_logic
	);
	end ULA;
	
	architecture implementation of ULA is
	begin
	process(A,B,sel,clock)
	begin
			if (rising_edge(clock)) then
				case sel is
					when "000" => saida <= A   +   B;
					when "001" => saida <= A   -   B;
					when "010" => saida <= A  AND  B;
					when "011" => saida <= A   OR  B;
					when "100" => saida <= A  XOR  B;
					when "101" => saida <= not A;
					when "110" => saida <= not B;
					when others => saida <= "ZZZZZZZZZZZZZZZZ";
				end case;
			end if;
	end process;
	end implementation;