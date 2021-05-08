library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlador is

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

end controlador;

architecture implementation of controlador is

	type estado is (initial, busca, decodificar, nop, andd, orr, xorr, add, sub, jma, slt, sltu, lw, sw, jme, ret, jz, mbh, mbl, MOV, MOVS);
		signal state   : estado;
		signal bau : std_logic_vector (6 downto 0);
		signal v_RE : std_logic_vector (15 downto 0);
		signal sel_DADOS : std_logic_vector (7 downto 0);

	function  get_register(
		in_register: std_logic_vector(2 downto 0)
		) 
		return std_logic_vector is variable return_register: std_logic_vector (6 downto 0);
	
	begin
		case in_register is 
			when "000" => return_register :="0000001";
			when "001" => return_register :="0000010";
			when "010" => return_register :="0000100";
			when "011" => return_register :="0001000";
			when "100" => return_register :="0010000";
			when "101" => return_register :="0100000";
			when "110" => return_register :="1000000";
			when others => return_register := "0000000";
	end case;
	
		return std_logic_vector(return_register);
		
	end get_register;

begin
	process (clk, reset)
	begin
		if reset = '1' then
			state <= initial;
		elsif (rising_edge(clk)) then
			case state is
				when initial=>
					if reset = '1' then
						state <= initial;
					else 
						state <= busca;
					end if;
				when busca=>
					state <= decodificar;
				when decodificar=>
					   if (regInstrucao (15 downto 11) = "00000") then 
						state <= nop;
					elsif (regInstrucao (15 downto 11) = "00001") then 
						state <= andd;
					elsif (regInstrucao (15 downto 11) = "00010") then 
						state <= orr;
					elsif (regInstrucao (15 downto 11) = "00011") then 
						state <= xorr;
					elsif (regInstrucao (15 downto 11) = "00111") then 
						state <= add;
					elsif (regInstrucao (15 downto 11) = "01000") then 
						state <= sub;
					elsif (regInstrucao (15 downto 11) = "01001") then 
						state <= jma;
					elsif (regInstrucao (15 downto 11) = "01010") then 
						state <= slt;
					elsif (regInstrucao (15 downto 11) = "01011") then 
						state <= sltu;
					elsif (regInstrucao (15 downto 11) = "01100") then 
						state <= lw;
					elsif (regInstrucao (15 downto 11) = "01101") then 
						state <= sw;
					elsif (regInstrucao (15 downto 11) = "01110") then 
						state <= jme;
					elsif (regInstrucao (15 downto 11) = "10000") then 
						state <= ret;
					elsif (regInstrucao (15 downto 11) = "10001") then 
						state <= jz;
					elsif (regInstrucao (15 downto 11) = "10010") then 
						state <= mbh;
					elsif (regInstrucao (15 downto 11) = "10011") then 
						state <= mbl;	
					elsif (regInstrucao (15 downto 11) = "10100") then
						state <= MOV;	
					elsif (regInstrucao (15 downto 11) = "10101") then 
						state <= MOVS;	
					else
						state <= busca;
						
		end if;
					when others => 
					state <= busca;
		end case;
		end if;				
		end process;
		
		process (state)
	begin
		case state is
			when initial=>
				ld_R0 <= '0';
				ld_R1 <= '0';
				ld_R2 <= '0';
				ld_R3 <= '0';
				ld_R4 <= '0';
				ld_R5 <= '0';
				ld_R6 <= '0';
				ld_PC <= '0';
				ld_RI <= '0';
				ld_RE <= '0'; 
				ld_RS <= '0';
				ld_RP <= '0';
				ld_MemDados <= '0';
				pc_increment <= '0'; 
				sel_mux5_1 <= "000";
				sel_mux7_1 <= "000";
				sel_mux7_2 <= "000";
				sel_ULA <= "000";
				wren <= '0';

			when busca=>
				ld_R0 <= '0';
				ld_R1 <= '0';
				ld_R2 <= '0';
				ld_R3 <= '0';
				ld_R4 <= '0';
				ld_R5 <= '0';
				ld_R6 <= '0';
				ld_PC <= '1';
				ld_RI <= '1';
				ld_RE <= '0'; 
				ld_RS <= '0';
				ld_RP <= '1';
				pc_increment <= '1'; 
				sel_mux5_1 <= "000";
				sel_mux7_1 <= "000";
				sel_mux7_2 <= "000";
				sel_ULA <= "000";
				wren <= '0';

			when decodificar=>
				ld_R0 <= '0';
				ld_R1 <= '0';
				ld_R2 <= '0';
				ld_R3 <= '0';
				ld_R4 <= '0';
				ld_R5 <= '0';
				ld_R6 <= '0';
				ld_PC <= '0';
				ld_RI <= '0';
				ld_RE <= '0'; 
				ld_RS <= '0';
				pc_increment <= '0'; 
				sel_mux5_1 <= "000";
				sel_mux7_1 <= "000";
				sel_mux7_2 <= "000";
				sel_ULA <= "000";
				wren <= '0';	
					
			when nop=>
            -- nop
			
			when andd=>
            -- 00000 OP 000 RS1 000 RS2 000 RD  XX
				sel_mux7_1 <= regInstrucao(10 downto 8);
				sel_mux7_2 <= regInstrucao(7 downto 5);
				sel_ULA <= "010";
				bau <= get_register(regInstrucao(4 downto 2));
					 ld_R0<=bau(0);
				    ld_R1<=bau(1);
				    ld_R2<=bau(2);
				    ld_R3<=bau(3);
				    ld_R4<=bau(4);
				    ld_R5<=bau(5);
				    ld_R6<=bau(6);
				sel_mux5_1 <= "100";
            
            when orr =>
            -- 00000 OP 000 RS1 000 RS2 000 RD  XX
                bau<=get_register(regInstrucao(4 downto 2));
                ld_R0<=bau(0);
                ld_R1<=bau(1);
                ld_R2<=bau(2);
                ld_R3<=bau(3);
                ld_R4<=bau(4);
                ld_R5<=bau(5);
                ld_R6<=bau(6);
                sel_mux5_1 <= "100";
                ld_PC <= '0';
                ld_RI <= '0';
                ld_RE <= '0'; 
                ld_RS <= '0';
                selmux3 <= '1';
                pc_increment <= '0'; 
                ativarDados <= '0';
                sel_mux7_1 <= regInstrucao(10 downto 8);
                sel_mux7_2 <= regInstrucao(7 downto 5);
                sel_ULA <= "011";
                wren <= '0';
			

            when xorr =>
                -- 00000 OP 000 RS1 000 RS2 000 RD  XX
                bau<=get_register(regInstrucao(4 downto 2));
                ld_R0<=bau(0);
                ld_R1<=bau(1);
                ld_R2<=bau(2);
                ld_R3<=bau(3);
                ld_R4<=bau(4);
                ld_R5<=bau(5);
                ld_R6<=bau(6);
                sel_mux5_1 <= "100";
                ld_PC <= '0';
                ld_RI <= '0';
                ld_RE <= '0'; 
                ld_RS <= '0';
                selmux3 <= '1';
                pc_increment <= '0'; 
                ativarDados <= '0';
                sel_mux7_1 <= regInstrucao(10 downto 8);
                sel_mux7_2 <= regInstrucao(7 downto 5);
                sel_ULA <= "100";
                wren <= '0';
            	

            when add =>
            -- 00000 OP 000 RS1 000 RS2 000 RD  XX
                bau<=get_register(regInstrucao(4 downto 2));
                ld_R0<=bau(0);
                ld_R1<=bau(1);
                ld_R2<=bau(2);
                ld_R3<=bau(3);
                ld_R4<=bau(4);
                ld_R5<=bau(5);
                ld_R6<=bau(6);
                ld_PC <= '0';
                ld_RI <= '0';
                ld_RE <= '0'; 
                ld_RS <= '0';
                selmux3 <= '0';
                pc_increment <= '0'; 
                ativarDados <= '0';
                sel_mux5_1 <= "101";
                sel_mux7_1 <= regInstrucao(10 downto 8);
                sel_mux7_2 <= regInstrucao(7 downto 5);
                sel_ULA <= "000";
                wren <= '0';
            
            when sub =>
            -- 00000 OP 000 RS1 000 RS2 000 RD  XX
                bau<=get_register(regInstrucao(4 downto 2));
                ld_R0<=bau(0);
                ld_R1<=bau(1);
                ld_R2<=bau(2);
                ld_R3<=bau(3);
                ld_R4<=bau(4);
                ld_R5<=bau(5);
                ld_R6<=bau(6);
                ld_PC <= '0';
                ld_RI <= '0';
                ld_RE <= '0'; 
                ld_RS <= '0';
                selmux3 <= '0';
                pc_increment <= '0'; 
                ativarDados <= '0';
                sel_mux5_1 <= "101";
                sel_mux7_1 <= regInstrucao(10 downto 8);
                sel_mux7_2 <= regInstrucao(7 downto 5);
                sel_ULA <= "001";
                wren <= '0';

            when jma =>
                   ld_RI <= '1';
						 ld_RE <= '0';
						 ld_RP <= '1';
                   sel_mux2_1 <= '1';
					    ld_PC <= '1';
                

            when slt =>
                -- 00000 OP 000 RS1 000 RS2 000 RD XX
                sel_mux7_1 <= regInstrucao(10 downto 8);
                sel_mux7_2 <= regInstrucao(7 downto 5);
                if out_comparador = "01" then 
                    ld_RE <= '1';
                    v_RE <= "0000000000000001";
                    sel_mux5_1 <= "000";
                    bau<=get_register(regInstrucao(4 downto 2));
                    ld_R0<=bau(0);
                    ld_R1<=bau(1);
                    ld_R2<=bau(2);
                    ld_R3<=bau(3);
                    ld_R4<=bau(4);
                    ld_R5<=bau(5);
                    ld_R6<=bau(6);
					end if;
					
            when sltu =>
                -- 00000 OP 000 RS1 000 RS2 000 RD XX
                ld_RE <= '1';
                v_RE <= "0000000000000000";
                sel_mux5_1 <= "000";
                bau<=get_register(regInstrucao(7 downto 5));
                ld_R0<=bau(0);
                ld_R1<=bau(1);
                ld_R2<=bau(2);
                ld_R3<=bau(3);
                ld_R4<=bau(4);
                ld_R5<=bau(5);
                ld_R6<=bau(6);
                sel_mux7_1 <= regInstrucao(7 downto 5);
                sel_mux7_2 <= regInstrucao(10 downto 8);
                if out_comparador = "01" then 
                    ld_RE <= '1';
                    v_RE <= "0000000000000001";
                    sel_mux5_1 <= "000";
                    bau<=get_register(regInstrucao(4 downto 2));
                    ld_R0<=bau(0);
                    ld_R1<=bau(1);
                    ld_R2<=bau(2);
                    ld_R3<=bau(3);
                    ld_R4<=bau(4);
                    ld_R5<=bau(5);
                    ld_R6<=bau(6);
					end if;

            when lw => 
            
                bau<=get_register(regInstrucao(10 downto 8));
                ld_R0<=bau(0);
                ld_R1<=bau(1);
                ld_R2<=bau(2);
                ld_R3<=bau(3);
                ld_R4<=bau(4);
                ld_R5<=bau(5);
                ld_R6<=bau(6); 
                sel_mux5_1 <= "011";
		
            
            when sw => 
            
                sel_mux5_1 <= regInstrucao(10 downto 8);
                sel_DADOS <= regInstrucao(7 downto 0);
                ld_MemDados <= '1';
		
            
            when jme =>
               	sel_mux7_1 <= regInstrucao(10 downto 8);
					   if (out_comparador = "10") then
							sel_mux5_1<= "000";
							
							ld_RP <= '1';
						end if;
         
                
            
            when ret =>
               
                    ld_RI <= '1';
						  ld_RE <= '0';
						  ld_RP <= '1';
                    sel_mux2_1 <= '1';
						
						  ld_PC <= '1';
						
            when jz =>
					   
						sel_mux7_1 <= regInstrucao(10 downto 8);
					   if (out_comparador = "11") then
							sel_mux5_1<= "000";
							
							ld_RP <= '1';
						end if;
						
				
				
				when MOV =>
					
					 sel_mux5_1 <= "000";
					
					 bau<=get_register(regInstrucao(10 downto 8));
                ld_R0<=bau(0);
                ld_R1<=bau(1);
                ld_R2<=bau(2);
                ld_R3<=bau(3);
                ld_R4<=bau(4);
                ld_R5<=bau(5);
                ld_R6<=bau(6);
				
				when MOVS =>
					
					sel_mux7_2 <= regInstrucao(10 downto 8);
					ld_RS <= '1';
					

            when mbh =>
					
                -- 00000 OP 000 RD 00000000 MEM
                sel_mux7_1 <= regInstrucao(10 downto 8);
                    ld_RI <= '1';
						  ld_RE <= '1';
                  --  v_RE = "0000000000000001";
                    sel_mux5_1 <= "000";
                    bau<=get_register(regInstrucao(10 downto 8));
                    ld_R0<=bau(0);
                    ld_R1<=bau(1);
                    ld_R2<=bau(2);
                    ld_R3<=bau(3);
                    ld_R4<=bau(4);
                    ld_R5<=bau(5);
                    ld_R6<=bau(6);

            
            when mbl =>
	
                -- 00000 OP 000 RD 00000000 MEM
                sel_mux7_1 <= regInstrucao(10 downto 8);
                    ld_RI <= '1';
						  ld_RE <= '1';
                    v_RE <= "0000000000000001";
                    sel_mux5_1 <= "000";
                    bau<=get_register(regInstrucao(10 downto 8));
                    ld_R0<=bau(0);
                    ld_R1<=bau(1);
                    ld_R2<=bau(2);
                    ld_R3<=bau(3);
                    ld_R4<=bau(4);
                    ld_R5<=bau(5);
                    ld_R6<=bau(6);
			when others =>
				state <= busca;
			end case;
	end process;

end implementation;