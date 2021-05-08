library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is
	port(
		MD_addr	:	in std_logic_vector(7 downto 0); 
		RIout : out std_LOGIC_VECTOR(15 downto 0);
		in_RE : in std_logic_vector(15 downto 0);
		saida : out std_logic_vector(15 downto 0);
		ld_r0, ld_r1, ld_r2, ld_r3, ld_r4, ld_r5, ld_r6, ld_RP, ld_RS, ld_PC, ld_RI,
		ld_RE, incrementar_PC, sel_mux2_1, ld_MEM : in std_logic;
		sel_ULA : in std_logic_vector (2 downto 0);
		sel_mux5_1, sel_mux7_1, sel_mux7_2 : in std_logic_vector(2 downto 0);
		clock, reset_RS, reset_r0, reset_r1, reset_r2, reset_r3, reset_r4, reset_r5,
		reset_r6, reset_RI, reset_RP, reset_RE, reset_PC : in std_logic;
		out_comparador : out std_LOGIC_VECTOR(1 downto 0)
	);
end entity;

architecture rtl_datapath of datapath is 

	signal out_RE, mux0out, mux7out1,mux7out2, out_mux5_1, mux2out, mux3out, out_r0,out_MemDados,
	out_r1, out_r2, out_r3, out_r4, out_r5, out_r6,out_mux7_1, out_mux7_2, out_ULA, out_DADOS, 
	saidaReg, out_RI, out_RS, out_MemPrograma: std_LOGIC_VECTOR(15 downto 0);
	signal out_RP, out_mux2_1: std_LOGIC_VECTOR(9 downto 0);
	signal out_PC: std_LOGIC_VECTOR(7 downto 0);
	
	component ULA 
	port
	(
	   A,B        :  in   std_logic_vector(15 downto 0);
		saida           : out   std_logic_vector(15 downto 0);
		sel  :  in   std_logic_vector(2 downto 0);
		clock : in std_logic
	);
	end component ULA;
	
	component pilhareg 
	port(
		entrada : in std_logic_vector(7 downto 0);
		saida : out std_logic_vector(7 downto 0);
		load : in std_logic;
		clear : in std_logic;
		clock : in std_logic
		);
 end component pilhareg;
	
	component registrador16bits 
		port(
			entrada : in std_logic_vector(15 downto 0);
			saida : out std_logic_vector(15 downto 0);
			load : in std_logic;
			clear : in std_logic;
			clock : in std_logic
			);
	end component registrador16bits;
	
	
	
	component registradorde8bits
		port(
			entradadoRegistrador : in std_logic_vector(7 downto 0);
			clock_signal, loadDoRegistrador,reset : in std_logic;
			saidadoRegistrador : out std_logic_vector(7 downto 0)
		);
	end component registradorde8bits;
	
		component multi7
		port (
			clk : in std_logic;
			sel : in std_logic_vector(2 downto 0);
			A, B, C, D, E, F, G 	 : in std_logic_vector(15 downto 0);
			saidamux7	 : out std_logic_vector(15 downto 0)
	);
	end component multi7;
	
component multi5 
	port (
		in_RI : in std_logic_vector (15 downto 0);
		in_RE : in std_logic_vector (15 downto 0);
		in_DADOS : in std_logic_vector (15 downto 0);
		in_ULA : in std_logic_vector (15 downto 0);
		in_MUX2 : in std_logic_vector (15 downto 0);
		sel : in std_logic_vector (2 downto 0);
		saida : out std_logic_vector (15 downto 0);
		clock : in std_logic
	);
end component multi5;


component multi2 
	port (
			out_RI, out_RP : in std_logic_vector(9 downto 0);
			sel, clock : in std_logic;
			saida : out std_logic_vector (9 downto 0)
			);
end component multi2;
	
component PC 
	PORT (
		PC_in : in std_logic_vector (7 downto 0);
		PC_out : buffer std_logic_vector (7 downto 0);
		ld_PC : in std_logic;
		clk_PC : in std_logic;
		rst_PC : in std_logic;
		incrementar : in std_logic
	);	
end component PC;

component MemoriadeDados 
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END component MemoriadeDados;

component memoriaDePrograma 
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
end component memoriaDePrograma;

component comparador IS
	PORT 
	(
		A, B: IN STD_LOGIC_VECTOR(15 DOWNTO 0) ;
		saida : OUT STD_LOGIC_VECTOR (1 downto 0);
		clock : in std_LOGIC
	);
end component;

begin
	   memoriaDados : memoriadeDados port map (MD_addr, clock, out_mux7_1, ld_MEM, out_MemDados);
		memoriaPrograma : memoriaDePrograma port map(out_PC, clock, out_MemPrograma);
   	inRegister : registrador16bits port map (in_RE, out_RE, ld_RE, reset_RE, clock);
		
   	mux1 : multi5 port map (out_RI, out_RE, out_MemDados, out_ULA, out_mux7_1, sel_mux5_1, out_mux5_1, clock);

    	r0 : registrador16bits port map (out_mux5_1,out_r0, ld_r0,reset_r0, clock);
		r1 : registrador16bits port map (out_mux5_1,out_r1, ld_r1,reset_r1, clock);
		r2 : registrador16bits port map (out_mux5_1,out_r2, ld_r2,reset_r2, clock);
		r3 : registrador16bits port map (out_mux5_1,out_r3, ld_r3,reset_r3, clock);
		r4 : registrador16bits port map (out_mux5_1,out_r4, ld_r4,reset_r4, clock);
		r5 : registrador16bits port map (out_mux5_1,out_r5, ld_r5,reset_r5, clock);
		r6 : registrador16bits port map (out_mux5_1,out_r6, ld_r6,reset_r6, clock);
		
		RSaida: registrador16bits port map (out_mux7_2, out_RS, ld_RS, reset_RS, clock);

   	Rp : pilhareg port map (out_PC, out_RP(7 downto 0), ld_RP, reset_RP, clock);
		
		mux7_registers1 : multi7 port map (clock, sel_mux7_1, out_r0, out_r1, out_r2, out_r3, out_r4, out_r5, out_r6, out_mux7_1);
    	mux7_registers2 : multi7 port map (clock, sel_mux7_2, out_r0, out_r1, out_r2, out_r3, out_r4, out_r5, out_r6, out_mux7_2);
		
		compare : comparador port map (out_mux7_1, out_mux7_2, out_comparador, clock);
--		
--		---------------------------------------------
		mux3 : multi2 port map (out_RI(9 downto 0), out_RP, sel_mux2_1, clock, out_mux2_1);
--		
		alu : ula port map (out_mux7_1, out_mux7_2, out_ULA, sel_ULA, clock);
	
		contadordeprograma : PC port map (out_mux2_1(7 downto 0), out_PC, ld_PC, clock, reset_PC, incrementar_PC);
		
		regInstrucao : registrador16bits port map (out_MemPrograma, out_RI, ld_RI, reset_RI, clock);-- memoria de programa em vez de dados
-- 		
	   saida <= out_RS;
		RIout <= out_RI;
--		saida8bits <= "0000000"&ldrout; -- COCATENAÇÃO
end rtl_datapath;