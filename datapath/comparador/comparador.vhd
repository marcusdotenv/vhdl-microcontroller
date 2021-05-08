LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY comparador IS
PORT (A, B: IN STD_LOGIC_VECTOR(15 DOWNTO 0) ;
saida : OUT STD_LOGIC_VECTOR (1 downto 0);
clock: in std_logic);
END comparador ;

ARCHITECTURE implementation OF comparador IS
BEGIN
	process (clock)
	begin
		if(rising_edge(clock)) then
			if (A = B) then	
				saida <= "11";
			elsif (A > B) then
				saida <= "10";
			elsif (A < B) then
				saida <= "01";
			else 
				saida <= "00";
		end if;
		end if;
	end process;
			
END implementation ;