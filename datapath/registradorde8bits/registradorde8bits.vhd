library ieee;
use IEEE.std_logic_1164.all;
use ieee.numeric_std;

entity registradorde8bits is
	port(
		entradadoRegistrador : in std_logic_vector(7 downto 0);
		clock_signal, loadDoRegistrador, reset : in std_logic;
		saidadoRegistrador : out std_logic_vector(7 downto 0)
	);
end registradorde8bits;

architecture rtl_registradorde8bits of registradorde8bits is
	begin
	process (clock_signal)
	begin
		if (reset = '0') then
			if(rising_edge(clock_signal) and loadDoRegistrador = '1') then
				saidadoRegistrador <= entradadoRegistrador;
			end if;
		elsif (reset = '1') then
				saidadoRegistrador <= "00000000"; 
		end if;
	end process;
end rtl_registradorde8bits;
