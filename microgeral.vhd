library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity microgeral is
	port(
		clock, reset : in std_logic;
		in_RE : in std_logic_vector(15 downto 0);
		outall : out std_logic_vector(15 downto 0)
	);
	
end microgeral;


architecture rtl_microgeral of microgeral is

	signal instruction, saidaSig, saida	: std_LOGIC_VECTOR(15 downto 0);
	signal LDR0, LDR1, LDR2, LDR3, LDR4, LDR5, LDR6, LDPC, LDRI, LDRE, LDRP, LDRS, SELETM3,
			 INC_PC, ACTIVE_DATA, WRENN, SELETM2_1, LDMD, LDBAND, RRS, RR0, RR1, RR2, RR3, RR4, 
			 RR5, RR6, RRI, RRP, RRE, RPC, BAND : std_LOGIC;
	signal SELETULA, SELETM5_1, SELETM7_1, SELETM7_2 : std_LOGIC_VECTOR(2 downto 0);
	signal END_MD, OUT8BIT : std_LOGIC_VECTOR(7 downto 0);
	signal SAI_COMP : std_LOGIC_VECTOR(1 downto 0);


component controlador is

		port(
		clk	 : in	std_logic;
		regInstrucao	 : in	std_logic_vector (15 downto 0);
		reset	 : in	std_logic;
		ld_R0, ld_R1, ld_R2, ld_R3, ld_R4, ld_R5, ld_R6, ld_PC,	ld_RI, ld_RE, ld_RP, ld_RS, selmux3,  pc_increment, ativarDados, wren, 
		sel_mux2_1, ld_MemDados, reset_RS, reset_r0, reset_r1, reset_r2, reset_r3, reset_r4, reset_r5, reset_r6, reset_RI, reset_RP, 
		reset_RE, reset_PC : out std_logic;
		sel_ULA : out std_logic_vector (2 downto 0);
		MD_addr : out std_logic_vector (7 downto 0);
		out_comparador : in std_logic_vector (1 downto 0);
		sel_mux5_1, sel_mux7_1, sel_mux7_2  : out std_logic_vector(2 downto 0)
	);
	
end component controlador;
	
	component datapath is
			port(
		MD_addr	:	in std_logic_vector(7 downto 0); -- lembrar de colocar saida do controlador MD_addr	:	out std_logic_vector(7 downto 0);
		RIout : out std_LOGIC_VECTOR(15 downto 0);
		in_RE : in std_logic_vector(15 downto 0);
		saida : out std_logic_vector(15 downto 0);
		ld_r0, ld_r1, ld_r2, ld_r3, ld_r4, ld_r5, ld_r6, ld_RP, ld_RS, ld_PC, ld_RI,
		ld_RE, incrementar_PC, sel_mux2_1, ld_MEM : in std_logic;
		sel_ULA : in std_logic_vector (2 downto 0);
		sel_mux5_1, sel_mux7_1, sel_mux7_2 : in std_logic_vector(2 downto 0);
		clock, reset_RS, reset_r0, reset_r1, reset_r2, reset_r3, reset_r4, reset_r5, reset_r6, reset_RI, reset_RP, reset_RE, reset_PC : in std_logic;
		out_comparador : out std_LOGIC_VECTOR(1 downto 0)
	);
	
	end component datapath; 

	begin
		
		controler : controlador port map (clock, instruction, reset, LDR0, LDR1, LDR2, LDR3, LDR4, LDR5, LDR6, LDPC, LDRI, LDRE, LDRP, LDRS, SELETM3,
		INC_PC, ACTIVE_DATA, WRENN, SELETM2_1, LDMD, RRS, RR0, RR1, RR2, RR3, RR4, RR5, RR6, RRI, RRP, RRE, RPC, SELETULA, END_MD, SAI_COMP, SELETM5_1, 
		SELETM7_1, SELETM7_2);
		
		pathdata : datapath port map (END_MD, instruction, in_RE, saidaSig, LDR0, LDR1, LDR2, LDR3, LDR4, LDR5, LDR6, LDRP, LDRS, LDPC, LDRI,
		LDRE, INC_PC, SELETM2_1, LDMD, SELETULA, SELETM5_1, SELETM7_1, SELETM7_2, clock, RRS, RR0, RR1, RR2, RR3, RR4, RR5, RR6, RRI, RRP, RRE, RPC, SAI_COMP);
		
		
		outall <= saidaSig;

end rtl_microgeral;