library ieee;
use ieee.std_logic_1164.all;

entity pilhareg is
	port(
		entrada : in std_logic_vector(7 downto 0);
		saida : out std_logic_vector(7 downto 0);
		load : in std_logic;
		clear : in std_logic;
		clock : in std_logic
		);
 end pilhareg;
 
 architecture implementation of pilhareg is
	begin 
	 process(clock, load)
		begin
			if load = '1' and rising_edge(clock) then
				saida <= entrada;
			elsif clear = '1' and rising_edge(clock) then
				saida <= "00000000";
		end if;
end process;
end implementation;