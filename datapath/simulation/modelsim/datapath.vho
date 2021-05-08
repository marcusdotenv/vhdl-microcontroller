-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/07/2021 00:04:43"

-- 
-- Device: Altera EP2C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	datapath IS
    PORT (
	MD_addr : IN std_logic_vector(7 DOWNTO 0);
	RIout : OUT std_logic_vector(15 DOWNTO 0);
	in_RE : IN std_logic_vector(15 DOWNTO 0);
	saida : OUT std_logic_vector(15 DOWNTO 0);
	ld_r0 : IN std_logic;
	ld_r1 : IN std_logic;
	ld_r2 : IN std_logic;
	ld_r3 : IN std_logic;
	ld_r4 : IN std_logic;
	ld_r5 : IN std_logic;
	ld_r6 : IN std_logic;
	ld_RP : IN std_logic;
	ld_RS : IN std_logic;
	ld_PC : IN std_logic;
	ld_RI : IN std_logic;
	ld_RE : IN std_logic;
	incrementar_PC : IN std_logic;
	sel_mux2_1 : IN std_logic;
	ld_MEM : IN std_logic;
	sel_ULA : IN std_logic_vector(2 DOWNTO 0);
	sel_mux5_1 : IN std_logic_vector(2 DOWNTO 0);
	sel_mux7_1 : IN std_logic_vector(2 DOWNTO 0);
	sel_mux7_2 : IN std_logic_vector(2 DOWNTO 0);
	clock : IN std_logic;
	reset_RS : IN std_logic;
	reset_r0 : IN std_logic;
	reset_r1 : IN std_logic;
	reset_r2 : IN std_logic;
	reset_r3 : IN std_logic;
	reset_r4 : IN std_logic;
	reset_r5 : IN std_logic;
	reset_r6 : IN std_logic;
	reset_RI : IN std_logic;
	reset_RP : IN std_logic;
	reset_RE : IN std_logic;
	reset_PC : IN std_logic;
	out_comparador : OUT std_logic_vector(1 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- RIout[0]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[1]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[4]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[5]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[6]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[7]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[8]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[9]	=>  Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[10]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[11]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[12]	=>  Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[13]	=>  Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[14]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RIout[15]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[0]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[4]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[5]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[6]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[8]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[9]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[10]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[11]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[12]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[13]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[14]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[15]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_comparador[0]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_comparador[1]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ld_RI	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_RI	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld_RS	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_RS	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux7_2[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux7_2[0]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux7_2[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux7_1[2]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux7_1[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux7_1[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_PC	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld_PC	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- incrementar_PC	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld_r5	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_r5	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld_r2	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_r2	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld_r1	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_r1	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld_r0	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_r0	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld_r3	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_r3	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld_r4	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_r4	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld_r6	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_r6	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux2_1	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux5_1[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux5_1[0]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_mux5_1[2]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld_RP	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_RP	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[0]	=>  Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld_RE	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_RE	=>  Location: PIN_M12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld_MEM	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_addr[0]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_addr[1]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_addr[2]	=>  Location: PIN_L12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_addr[3]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_addr[4]	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_addr[5]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_addr[6]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MD_addr[7]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_ULA[0]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_ULA[2]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel_ULA[1]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[1]	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[2]	=>  Location: PIN_M11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[3]	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[4]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[5]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[6]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[7]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[8]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[9]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[10]	=>  Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[11]	=>  Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[12]	=>  Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[13]	=>  Location: PIN_L11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[14]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_RE[15]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MD_addr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RIout : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_in_RE : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ld_r0 : std_logic;
SIGNAL ww_ld_r1 : std_logic;
SIGNAL ww_ld_r2 : std_logic;
SIGNAL ww_ld_r3 : std_logic;
SIGNAL ww_ld_r4 : std_logic;
SIGNAL ww_ld_r5 : std_logic;
SIGNAL ww_ld_r6 : std_logic;
SIGNAL ww_ld_RP : std_logic;
SIGNAL ww_ld_RS : std_logic;
SIGNAL ww_ld_PC : std_logic;
SIGNAL ww_ld_RI : std_logic;
SIGNAL ww_ld_RE : std_logic;
SIGNAL ww_incrementar_PC : std_logic;
SIGNAL ww_sel_mux2_1 : std_logic;
SIGNAL ww_ld_MEM : std_logic;
SIGNAL ww_sel_ULA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sel_mux5_1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sel_mux7_1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_sel_mux7_2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset_RS : std_logic;
SIGNAL ww_reset_r0 : std_logic;
SIGNAL ww_reset_r1 : std_logic;
SIGNAL ww_reset_r2 : std_logic;
SIGNAL ww_reset_r3 : std_logic;
SIGNAL ww_reset_r4 : std_logic;
SIGNAL ww_reset_r5 : std_logic;
SIGNAL ww_reset_r6 : std_logic;
SIGNAL ww_reset_RI : std_logic;
SIGNAL ww_reset_RP : std_logic;
SIGNAL ww_reset_RE : std_logic;
SIGNAL ww_reset_PC : std_logic;
SIGNAL ww_out_comparador : std_logic_vector(1 DOWNTO 0);
SIGNAL \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reset_PC~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu|Add0~9_combout\ : std_logic;
SIGNAL \compare|Equal0~3_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux15~0_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux14~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux12~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux10~0_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux9~0_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux8~0_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux8~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux7~0_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux4~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux0~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux14~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux10~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux10~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux10~2_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux5~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux3~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux3~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux0~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux1~2_combout\ : std_logic;
SIGNAL \r5|saida[0]~0_combout\ : std_logic;
SIGNAL \r2|saida[5]~6_combout\ : std_logic;
SIGNAL \r0|saida[5]~6_combout\ : std_logic;
SIGNAL \r4|saida[5]~6_combout\ : std_logic;
SIGNAL \r1|saida[7]~8_combout\ : std_logic;
SIGNAL \r3|saida[7]~8_combout\ : std_logic;
SIGNAL \r6|saida[8]~9_combout\ : std_logic;
SIGNAL \r0|saida[9]~10_combout\ : std_logic;
SIGNAL \r3|saida[9]~10_combout\ : std_logic;
SIGNAL \r2|saida[10]~11_combout\ : std_logic;
SIGNAL \r0|saida[10]~11_combout\ : std_logic;
SIGNAL \r3|saida[11]~12_combout\ : std_logic;
SIGNAL \r2|saida[12]~13_combout\ : std_logic;
SIGNAL \r1|saida[13]~14_combout\ : std_logic;
SIGNAL \r5|saida[13]~14_combout\ : std_logic;
SIGNAL \r3|saida[14]~15_combout\ : std_logic;
SIGNAL \r0|saida[15]~16_combout\ : std_logic;
SIGNAL \r5|saida[15]~16_combout\ : std_logic;
SIGNAL \mux1|Mux13~0_combout\ : std_logic;
SIGNAL \mux1|Mux6~0_combout\ : std_logic;
SIGNAL \Rp|saida[2]~3_combout\ : std_logic;
SIGNAL \Rp|saida[5]~6_combout\ : std_logic;
SIGNAL \inRegister|saida[1]~2_combout\ : std_logic;
SIGNAL \inRegister|saida[2]~3_combout\ : std_logic;
SIGNAL \alu|saida~26_combout\ : std_logic;
SIGNAL \alu|Add0~11_combout\ : std_logic;
SIGNAL \alu|Mux4~0_combout\ : std_logic;
SIGNAL \alu|saida~27_combout\ : std_logic;
SIGNAL \alu|Add0~14_combout\ : std_logic;
SIGNAL \alu|saida~30_combout\ : std_logic;
SIGNAL \alu|Add0~17_combout\ : std_logic;
SIGNAL \alu|saida~31_combout\ : std_logic;
SIGNAL \alu|saida~33_combout\ : std_logic;
SIGNAL \alu|Add0~23_combout\ : std_logic;
SIGNAL \alu|Mux8~0_combout\ : std_logic;
SIGNAL \inRegister|saida[9]~10_combout\ : std_logic;
SIGNAL \alu|saida~39_combout\ : std_logic;
SIGNAL \alu|Add0~32_combout\ : std_logic;
SIGNAL \inRegister|saida[11]~12_combout\ : std_logic;
SIGNAL \alu|Mux12~0_combout\ : std_logic;
SIGNAL \alu|saida~45_combout\ : std_logic;
SIGNAL \alu|Add0~44_combout\ : std_logic;
SIGNAL \alu|Mux16~0_combout\ : std_logic;
SIGNAL \ld_MEM~combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \contadordeprograma|PC_out[0]~8_combout\ : std_logic;
SIGNAL \ld_RP~combout\ : std_logic;
SIGNAL \Rp|saida[0]~0_combout\ : std_logic;
SIGNAL \reset_RP~combout\ : std_logic;
SIGNAL \Rp|saida[0]~1_combout\ : std_logic;
SIGNAL \sel_mux2_1~combout\ : std_logic;
SIGNAL \mux3|saida~0_combout\ : std_logic;
SIGNAL \reset_PC~combout\ : std_logic;
SIGNAL \reset_PC~clkctrl_outclk\ : std_logic;
SIGNAL \ld_PC~combout\ : std_logic;
SIGNAL \incrementar_PC~combout\ : std_logic;
SIGNAL \contadordeprograma|process_0~0_combout\ : std_logic;
SIGNAL \contadordeprograma|PC_out[0]~9\ : std_logic;
SIGNAL \contadordeprograma|PC_out[1]~10_combout\ : std_logic;
SIGNAL \Rp|saida[1]~2_combout\ : std_logic;
SIGNAL \contadordeprograma|PC_out[1]~11\ : std_logic;
SIGNAL \contadordeprograma|PC_out[2]~12_combout\ : std_logic;
SIGNAL \contadordeprograma|PC_out[2]~13\ : std_logic;
SIGNAL \contadordeprograma|PC_out[3]~14_combout\ : std_logic;
SIGNAL \contadordeprograma|PC_out[3]~15\ : std_logic;
SIGNAL \contadordeprograma|PC_out[4]~16_combout\ : std_logic;
SIGNAL \Rp|saida[4]~5_combout\ : std_logic;
SIGNAL \contadordeprograma|PC_out[4]~17\ : std_logic;
SIGNAL \contadordeprograma|PC_out[5]~18_combout\ : std_logic;
SIGNAL \contadordeprograma|PC_out[5]~19\ : std_logic;
SIGNAL \contadordeprograma|PC_out[6]~20_combout\ : std_logic;
SIGNAL \Rp|saida[6]~7_combout\ : std_logic;
SIGNAL \mux3|saida~6_combout\ : std_logic;
SIGNAL \contadordeprograma|PC_out[6]~21\ : std_logic;
SIGNAL \contadordeprograma|PC_out[7]~22_combout\ : std_logic;
SIGNAL \Rp|saida[7]~8_combout\ : std_logic;
SIGNAL \ld_RI~combout\ : std_logic;
SIGNAL \regInstrucao|saida[7]~8_combout\ : std_logic;
SIGNAL \reset_RI~combout\ : std_logic;
SIGNAL \regInstrucao|saida[3]~1_combout\ : std_logic;
SIGNAL \mux3|saida~7_combout\ : std_logic;
SIGNAL \regInstrucao|saida[5]~6_combout\ : std_logic;
SIGNAL \mux3|saida~5_combout\ : std_logic;
SIGNAL \regInstrucao|saida[4]~5_combout\ : std_logic;
SIGNAL \mux3|saida~4_combout\ : std_logic;
SIGNAL \regInstrucao|saida[3]~4_combout\ : std_logic;
SIGNAL \Rp|saida[3]~4_combout\ : std_logic;
SIGNAL \mux3|saida~3_combout\ : std_logic;
SIGNAL \regInstrucao|saida[2]~3_combout\ : std_logic;
SIGNAL \mux3|saida~2_combout\ : std_logic;
SIGNAL \regInstrucao|saida[1]~2_combout\ : std_logic;
SIGNAL \mux3|saida~1_combout\ : std_logic;
SIGNAL \regInstrucao|saida[0]~0_combout\ : std_logic;
SIGNAL \regInstrucao|saida[6]~7_combout\ : std_logic;
SIGNAL \regInstrucao|saida[8]~9_combout\ : std_logic;
SIGNAL \regInstrucao|saida[9]~10_combout\ : std_logic;
SIGNAL \regInstrucao|saida[10]~11_combout\ : std_logic;
SIGNAL \regInstrucao|saida[11]~12_combout\ : std_logic;
SIGNAL \regInstrucao|saida[12]~13_combout\ : std_logic;
SIGNAL \regInstrucao|saida[13]~14_combout\ : std_logic;
SIGNAL \regInstrucao|saida[14]~15_combout\ : std_logic;
SIGNAL \regInstrucao|saida[15]~16_combout\ : std_logic;
SIGNAL \mux7_registers2|saidamux7[4]~0_combout\ : std_logic;
SIGNAL \ld_RE~combout\ : std_logic;
SIGNAL \inRegister|saida[0]~0_combout\ : std_logic;
SIGNAL \reset_RE~combout\ : std_logic;
SIGNAL \inRegister|saida[0]~1_combout\ : std_logic;
SIGNAL \mux7_registers1|saidamux7[1]~1_combout\ : std_logic;
SIGNAL \mux7_registers1|saidamux7[1]~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux15~2_combout\ : std_logic;
SIGNAL \ld_r6~combout\ : std_logic;
SIGNAL \r6|saida[0]~0_combout\ : std_logic;
SIGNAL \reset_r6~combout\ : std_logic;
SIGNAL \r6|saida[14]~1_combout\ : std_logic;
SIGNAL \ld_r1~combout\ : std_logic;
SIGNAL \r1|saida[0]~0_combout\ : std_logic;
SIGNAL \reset_r1~combout\ : std_logic;
SIGNAL \r1|saida[13]~1_combout\ : std_logic;
SIGNAL \ld_r0~combout\ : std_logic;
SIGNAL \r0|saida[0]~0_combout\ : std_logic;
SIGNAL \reset_r0~combout\ : std_logic;
SIGNAL \r0|saida[9]~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux15~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux15~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux15~3_combout\ : std_logic;
SIGNAL \mux1|Mux15~0_combout\ : std_logic;
SIGNAL \mux1|Mux14~0_combout\ : std_logic;
SIGNAL \ld_r4~combout\ : std_logic;
SIGNAL \ld_r5~combout\ : std_logic;
SIGNAL \inRegister|saida[3]~4_combout\ : std_logic;
SIGNAL \mux1|Mux12~0_combout\ : std_logic;
SIGNAL \inRegister|saida[5]~6_combout\ : std_logic;
SIGNAL \mux1|Mux10~0_combout\ : std_logic;
SIGNAL \inRegister|saida[7]~8_combout\ : std_logic;
SIGNAL \mux1|Mux8~0_combout\ : std_logic;
SIGNAL \inRegister|saida[8]~9_combout\ : std_logic;
SIGNAL \mux1|Mux7~0_combout\ : std_logic;
SIGNAL \inRegister|saida[10]~11_combout\ : std_logic;
SIGNAL \mux1|Mux5~0_combout\ : std_logic;
SIGNAL \r6|saida[11]~12_combout\ : std_logic;
SIGNAL \mux1|Mux4~0_combout\ : std_logic;
SIGNAL \inRegister|saida[12]~13_combout\ : std_logic;
SIGNAL \mux1|Mux3~0_combout\ : std_logic;
SIGNAL \inRegister|saida[15]~16_combout\ : std_logic;
SIGNAL \mux1|Mux0~0_combout\ : std_logic;
SIGNAL \mux1|Mux0~1_combout\ : std_logic;
SIGNAL \mux1|saida[15]~feeder_combout\ : std_logic;
SIGNAL \r4|saida[15]~16_combout\ : std_logic;
SIGNAL \reset_r4~combout\ : std_logic;
SIGNAL \r4|saida[4]~1_combout\ : std_logic;
SIGNAL \mux7_registers2|saidamux7[4]~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux0~2_combout\ : std_logic;
SIGNAL \r1|saida[15]~16_combout\ : std_logic;
SIGNAL \r3|saida[15]~16_combout\ : std_logic;
SIGNAL \reset_r3~combout\ : std_logic;
SIGNAL \ld_r3~combout\ : std_logic;
SIGNAL \r3|saida[5]~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux0~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux0~3_combout\ : std_logic;
SIGNAL \alu|saida~49_combout\ : std_logic;
SIGNAL \alu|saida~50_combout\ : std_logic;
SIGNAL \alu|saida[15]~15_combout\ : std_logic;
SIGNAL \alu|saida[10]~19_combout\ : std_logic;
SIGNAL \alu|Add0~47_combout\ : std_logic;
SIGNAL \r4|saida[13]~14_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux2~2_combout\ : std_logic;
SIGNAL \r3|saida[13]~14_combout\ : std_logic;
SIGNAL \ld_r2~combout\ : std_logic;
SIGNAL \r2|saida[13]~14_combout\ : std_logic;
SIGNAL \reset_r2~combout\ : std_logic;
SIGNAL \r2|saida[2]~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux2~0_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux2~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux2~3_combout\ : std_logic;
SIGNAL \alu|Add0~41_combout\ : std_logic;
SIGNAL \r6|saida[12]~13_combout\ : std_logic;
SIGNAL \r1|saida[12]~13_combout\ : std_logic;
SIGNAL \r0|saida[12]~13_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux3~0_combout\ : std_logic;
SIGNAL \r3|saida[12]~13_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux3~1_combout\ : std_logic;
SIGNAL \r4|saida[12]~13_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux3~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux3~3_combout\ : std_logic;
SIGNAL \alu|Add0~38_combout\ : std_logic;
SIGNAL \r1|saida[11]~12_combout\ : std_logic;
SIGNAL \r0|saida[11]~12_combout\ : std_logic;
SIGNAL \r2|saida[11]~12_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux4~0_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux4~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux4~3_combout\ : std_logic;
SIGNAL \alu|Add0~35_combout\ : std_logic;
SIGNAL \r4|saida[9]~10_combout\ : std_logic;
SIGNAL \r5|saida[9]~10_combout\ : std_logic;
SIGNAL \reset_r5~combout\ : std_logic;
SIGNAL \r5|saida[8]~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux6~2_combout\ : std_logic;
SIGNAL \r2|saida[9]~10_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux6~0_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux6~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux6~3_combout\ : std_logic;
SIGNAL \alu|Add0~29_combout\ : std_logic;
SIGNAL \r3|saida[8]~9_combout\ : std_logic;
SIGNAL \r2|saida[8]~9_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux7~1_combout\ : std_logic;
SIGNAL \r4|saida[8]~9_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux7~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux7~3_combout\ : std_logic;
SIGNAL \alu|Add0~26_combout\ : std_logic;
SIGNAL \r5|saida[6]~7_combout\ : std_logic;
SIGNAL \r3|saida[6]~7_combout\ : std_logic;
SIGNAL \r2|saida[6]~7_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux9~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux9~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux9~3_combout\ : std_logic;
SIGNAL \alu|Add0~20_combout\ : std_logic;
SIGNAL \r6|saida[2]~3_combout\ : std_logic;
SIGNAL \r3|saida[2]~3_combout\ : std_logic;
SIGNAL \r1|saida[2]~3_combout\ : std_logic;
SIGNAL \r0|saida[2]~3_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux13~0_combout\ : std_logic;
SIGNAL \r2|saida[2]~3_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux13~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux13~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux13~3_combout\ : std_logic;
SIGNAL \alu|Add0~8_combout\ : std_logic;
SIGNAL \r3|saida[1]~2_combout\ : std_logic;
SIGNAL \r1|saida[1]~2_combout\ : std_logic;
SIGNAL \r0|saida[1]~2_combout\ : std_logic;
SIGNAL \r2|saida[1]~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux14~0_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux14~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux14~3_combout\ : std_logic;
SIGNAL \alu|Add0~5_combout\ : std_logic;
SIGNAL \alu|Add0~0_combout\ : std_logic;
SIGNAL \alu|Add0~2_cout\ : std_logic;
SIGNAL \alu|Add0~4\ : std_logic;
SIGNAL \alu|Add0~7\ : std_logic;
SIGNAL \alu|Add0~10\ : std_logic;
SIGNAL \alu|Add0~13\ : std_logic;
SIGNAL \alu|Add0~16\ : std_logic;
SIGNAL \alu|Add0~19\ : std_logic;
SIGNAL \alu|Add0~22\ : std_logic;
SIGNAL \alu|Add0~25\ : std_logic;
SIGNAL \alu|Add0~28\ : std_logic;
SIGNAL \alu|Add0~31\ : std_logic;
SIGNAL \alu|Add0~34\ : std_logic;
SIGNAL \alu|Add0~37\ : std_logic;
SIGNAL \alu|Add0~40\ : std_logic;
SIGNAL \alu|Add0~43\ : std_logic;
SIGNAL \alu|Add0~46\ : std_logic;
SIGNAL \alu|Add0~48_combout\ : std_logic;
SIGNAL \alu|Mux16~1_combout\ : std_logic;
SIGNAL \alu|saida[10]~20_combout\ : std_logic;
SIGNAL \alu|saida[15]~reg0_regout\ : std_logic;
SIGNAL \r6|saida[15]~16_combout\ : std_logic;
SIGNAL \r2|saida[15]~16_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux0~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux0~2_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux0~3_combout\ : std_logic;
SIGNAL \inRegister|saida[14]~15_combout\ : std_logic;
SIGNAL \mux1|Mux1~0_combout\ : std_logic;
SIGNAL \mux1|Mux1~1_combout\ : std_logic;
SIGNAL \mux1|saida[14]~feeder_combout\ : std_logic;
SIGNAL \r5|saida[14]~15_combout\ : std_logic;
SIGNAL \r4|saida[14]~15_combout\ : std_logic;
SIGNAL \r1|saida[14]~15_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux1~0_combout\ : std_logic;
SIGNAL \r2|saida[14]~15_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux1~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux1~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux1~3_combout\ : std_logic;
SIGNAL \alu|saida~48_combout\ : std_logic;
SIGNAL \alu|saida~47_combout\ : std_logic;
SIGNAL \alu|saida[14]~14_combout\ : std_logic;
SIGNAL \alu|saida[10]~18_combout\ : std_logic;
SIGNAL \compare|Equal0~9_combout\ : std_logic;
SIGNAL \alu|Add0~45_combout\ : std_logic;
SIGNAL \alu|Mux15~0_combout\ : std_logic;
SIGNAL \alu|Mux15~1_combout\ : std_logic;
SIGNAL \alu|saida[14]~reg0_regout\ : std_logic;
SIGNAL \r0|saida[14]~15_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux1~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux1~1_combout\ : std_logic;
SIGNAL \r6|saida[14]~15_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux1~3_combout\ : std_logic;
SIGNAL \inRegister|saida[13]~14_combout\ : std_logic;
SIGNAL \mux1|Mux2~0_combout\ : std_logic;
SIGNAL \mux1|Mux2~1_combout\ : std_logic;
SIGNAL \mux1|saida[13]~feeder_combout\ : std_logic;
SIGNAL \alu|saida~46_combout\ : std_logic;
SIGNAL \alu|saida[13]~13_combout\ : std_logic;
SIGNAL \alu|Mux14~0_combout\ : std_logic;
SIGNAL \alu|Add0~42_combout\ : std_logic;
SIGNAL \alu|Mux14~1_combout\ : std_logic;
SIGNAL \alu|saida[13]~reg0_regout\ : std_logic;
SIGNAL \r6|saida[13]~14_combout\ : std_logic;
SIGNAL \r0|saida[13]~14_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux2~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux2~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux2~2_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux2~3_combout\ : std_logic;
SIGNAL \mux1|Mux3~1_combout\ : std_logic;
SIGNAL \mux1|saida[12]~feeder_combout\ : std_logic;
SIGNAL \alu|saida~44_combout\ : std_logic;
SIGNAL \alu|saida~43_combout\ : std_logic;
SIGNAL \alu|saida[12]~12_combout\ : std_logic;
SIGNAL \alu|Add0~39_combout\ : std_logic;
SIGNAL \alu|Mux13~0_combout\ : std_logic;
SIGNAL \alu|Mux13~1_combout\ : std_logic;
SIGNAL \alu|saida[12]~reg0_regout\ : std_logic;
SIGNAL \r5|saida[12]~13_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux3~2_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux3~3_combout\ : std_logic;
SIGNAL \mux1|Mux4~1_combout\ : std_logic;
SIGNAL \mux1|saida[11]~feeder_combout\ : std_logic;
SIGNAL \alu|saida~42_combout\ : std_logic;
SIGNAL \alu|saida~41_combout\ : std_logic;
SIGNAL \alu|saida[11]~11_combout\ : std_logic;
SIGNAL \alu|Add0~36_combout\ : std_logic;
SIGNAL \alu|Mux12~1_combout\ : std_logic;
SIGNAL \alu|saida[11]~reg0_regout\ : std_logic;
SIGNAL \r5|saida[11]~12_combout\ : std_logic;
SIGNAL \r4|saida[11]~12_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux4~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux4~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux4~2_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux4~3_combout\ : std_logic;
SIGNAL \mux1|Mux5~1_combout\ : std_logic;
SIGNAL \mux1|saida[10]~feeder_combout\ : std_logic;
SIGNAL \r6|saida[10]~11_combout\ : std_logic;
SIGNAL \r4|saida[10]~11_combout\ : std_logic;
SIGNAL \r3|saida[10]~11_combout\ : std_logic;
SIGNAL \r1|saida[10]~11_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux5~0_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux5~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux5~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux5~3_combout\ : std_logic;
SIGNAL \alu|saida~40_combout\ : std_logic;
SIGNAL \alu|saida[10]~10_combout\ : std_logic;
SIGNAL \alu|Add0~33_combout\ : std_logic;
SIGNAL \alu|Mux11~0_combout\ : std_logic;
SIGNAL \alu|Mux11~1_combout\ : std_logic;
SIGNAL \alu|saida[10]~reg0_regout\ : std_logic;
SIGNAL \r5|saida[10]~11_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux5~2_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux5~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux5~3_combout\ : std_logic;
SIGNAL \mux1|Mux6~1_combout\ : std_logic;
SIGNAL \mux1|saida[9]~feeder_combout\ : std_logic;
SIGNAL \alu|saida~37_combout\ : std_logic;
SIGNAL \alu|saida~38_combout\ : std_logic;
SIGNAL \alu|saida[9]~9_combout\ : std_logic;
SIGNAL \alu|Mux10~0_combout\ : std_logic;
SIGNAL \alu|Add0~30_combout\ : std_logic;
SIGNAL \alu|Mux10~1_combout\ : std_logic;
SIGNAL \alu|saida[9]~reg0_regout\ : std_logic;
SIGNAL \r1|saida[9]~10_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux6~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux6~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux6~2_combout\ : std_logic;
SIGNAL \r6|saida[9]~10_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux6~3_combout\ : std_logic;
SIGNAL \mux1|Mux7~1_combout\ : std_logic;
SIGNAL \mux1|saida[8]~feeder_combout\ : std_logic;
SIGNAL \alu|saida~35_combout\ : std_logic;
SIGNAL \alu|saida~36_combout\ : std_logic;
SIGNAL \alu|saida[8]~8_combout\ : std_logic;
SIGNAL \alu|Mux9~0_combout\ : std_logic;
SIGNAL \alu|Add0~27_combout\ : std_logic;
SIGNAL \alu|Mux9~1_combout\ : std_logic;
SIGNAL \alu|saida[8]~reg0_regout\ : std_logic;
SIGNAL \r5|saida[8]~9_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux7~2_combout\ : std_logic;
SIGNAL \r1|saida[8]~9_combout\ : std_logic;
SIGNAL \r0|saida[8]~9_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux7~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux7~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux7~3_combout\ : std_logic;
SIGNAL \mux1|Mux8~1_combout\ : std_logic;
SIGNAL \mux1|saida[7]~feeder_combout\ : std_logic;
SIGNAL \r6|saida[7]~8_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux8~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux8~3_combout\ : std_logic;
SIGNAL \alu|saida~34_combout\ : std_logic;
SIGNAL \alu|saida[7]~7_combout\ : std_logic;
SIGNAL \alu|Add0~24_combout\ : std_logic;
SIGNAL \alu|Mux8~1_combout\ : std_logic;
SIGNAL \alu|saida[7]~reg0_regout\ : std_logic;
SIGNAL \r4|saida[7]~8_combout\ : std_logic;
SIGNAL \r0|saida[7]~8_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux8~0_combout\ : std_logic;
SIGNAL \r2|saida[7]~8_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux8~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux8~2_combout\ : std_logic;
SIGNAL \r5|saida[7]~8_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux8~3_combout\ : std_logic;
SIGNAL \inRegister|saida[6]~7_combout\ : std_logic;
SIGNAL \mux1|Mux9~0_combout\ : std_logic;
SIGNAL \mux1|Mux9~1_combout\ : std_logic;
SIGNAL \mux1|saida[6]~feeder_combout\ : std_logic;
SIGNAL \alu|saida~32_combout\ : std_logic;
SIGNAL \alu|saida[6]~6_combout\ : std_logic;
SIGNAL \alu|Mux7~0_combout\ : std_logic;
SIGNAL \alu|Add0~21_combout\ : std_logic;
SIGNAL \alu|Mux7~1_combout\ : std_logic;
SIGNAL \alu|saida[6]~reg0_regout\ : std_logic;
SIGNAL \r4|saida[6]~7_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux9~2_combout\ : std_logic;
SIGNAL \r6|saida[6]~7_combout\ : std_logic;
SIGNAL \r1|saida[6]~7_combout\ : std_logic;
SIGNAL \r0|saida[6]~7_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux9~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux9~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux9~3_combout\ : std_logic;
SIGNAL \mux1|Mux10~1_combout\ : std_logic;
SIGNAL \mux1|saida[5]~feeder_combout\ : std_logic;
SIGNAL \r6|saida[5]~6_combout\ : std_logic;
SIGNAL \r1|saida[5]~6_combout\ : std_logic;
SIGNAL \r3|saida[5]~6_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux10~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux10~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux10~3_combout\ : std_logic;
SIGNAL \alu|saida~29_combout\ : std_logic;
SIGNAL \alu|saida[5]~5_combout\ : std_logic;
SIGNAL \alu|Mux6~0_combout\ : std_logic;
SIGNAL \alu|Add0~18_combout\ : std_logic;
SIGNAL \alu|Mux6~1_combout\ : std_logic;
SIGNAL \alu|saida[5]~reg0_regout\ : std_logic;
SIGNAL \r5|saida[5]~6_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux10~3_combout\ : std_logic;
SIGNAL \inRegister|saida[4]~5_combout\ : std_logic;
SIGNAL \mux1|Mux11~0_combout\ : std_logic;
SIGNAL \mux1|Mux11~1_combout\ : std_logic;
SIGNAL \mux1|saida[4]~feeder_combout\ : std_logic;
SIGNAL \alu|saida~28_combout\ : std_logic;
SIGNAL \alu|saida[4]~4_combout\ : std_logic;
SIGNAL \alu|Mux5~0_combout\ : std_logic;
SIGNAL \alu|Add0~15_combout\ : std_logic;
SIGNAL \alu|Mux5~1_combout\ : std_logic;
SIGNAL \alu|saida[4]~reg0_regout\ : std_logic;
SIGNAL \r4|saida[4]~5_combout\ : std_logic;
SIGNAL \r5|saida[4]~5_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux11~2_combout\ : std_logic;
SIGNAL \r6|saida[4]~5_combout\ : std_logic;
SIGNAL \r3|saida[4]~5_combout\ : std_logic;
SIGNAL \r2|saida[4]~5_combout\ : std_logic;
SIGNAL \r0|saida[4]~5_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux11~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux11~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux11~3_combout\ : std_logic;
SIGNAL \mux1|Mux12~1_combout\ : std_logic;
SIGNAL \mux1|saida[3]~feeder_combout\ : std_logic;
SIGNAL \alu|saida~25_combout\ : std_logic;
SIGNAL \alu|saida[3]~3_combout\ : std_logic;
SIGNAL \r6|saida[3]~4_combout\ : std_logic;
SIGNAL \r3|saida[3]~4_combout\ : std_logic;
SIGNAL \r2|saida[3]~4_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux12~0_combout\ : std_logic;
SIGNAL \r1|saida[3]~4_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux12~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux12~3_combout\ : std_logic;
SIGNAL \alu|Add0~12_combout\ : std_logic;
SIGNAL \alu|Mux4~1_combout\ : std_logic;
SIGNAL \alu|saida[3]~reg0_regout\ : std_logic;
SIGNAL \r5|saida[3]~4_combout\ : std_logic;
SIGNAL \r4|saida[3]~4_combout\ : std_logic;
SIGNAL \r0|saida[3]~4_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux12~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux12~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux12~2_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux12~3_combout\ : std_logic;
SIGNAL \mux1|Mux13~1_combout\ : std_logic;
SIGNAL \mux1|saida[2]~feeder_combout\ : std_logic;
SIGNAL \alu|saida~24_combout\ : std_logic;
SIGNAL \alu|saida~23_combout\ : std_logic;
SIGNAL \alu|saida[2]~2_combout\ : std_logic;
SIGNAL \alu|Mux3~0_combout\ : std_logic;
SIGNAL \alu|Mux3~1_combout\ : std_logic;
SIGNAL \alu|saida[2]~reg0_regout\ : std_logic;
SIGNAL \r4|saida[2]~3_combout\ : std_logic;
SIGNAL \r5|saida[2]~3_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux13~2_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux13~0_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux13~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux13~3_combout\ : std_logic;
SIGNAL \mux1|Mux14~1_combout\ : std_logic;
SIGNAL \mux1|saida[1]~feeder_combout\ : std_logic;
SIGNAL \alu|saida~22_combout\ : std_logic;
SIGNAL \alu|saida~21_combout\ : std_logic;
SIGNAL \alu|saida[1]~1_combout\ : std_logic;
SIGNAL \alu|Mux2~0_combout\ : std_logic;
SIGNAL \alu|Add0~6_combout\ : std_logic;
SIGNAL \alu|Mux2~1_combout\ : std_logic;
SIGNAL \alu|saida[1]~reg0_regout\ : std_logic;
SIGNAL \r6|saida[1]~2_combout\ : std_logic;
SIGNAL \r5|saida[1]~2_combout\ : std_logic;
SIGNAL \r4|saida[1]~2_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux14~1_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux14~2_combout\ : std_logic;
SIGNAL \mux7_registers1|Mux14~3_combout\ : std_logic;
SIGNAL \mux1|Mux15~1_combout\ : std_logic;
SIGNAL \mux1|saida[0]~feeder_combout\ : std_logic;
SIGNAL \alu|saida~17_combout\ : std_logic;
SIGNAL \alu|saida~16_combout\ : std_logic;
SIGNAL \alu|saida[0]~0_combout\ : std_logic;
SIGNAL \alu|Add0~3_combout\ : std_logic;
SIGNAL \alu|Mux0~3_combout\ : std_logic;
SIGNAL \alu|Mux0~2_combout\ : std_logic;
SIGNAL \alu|saida[0]~reg0_regout\ : std_logic;
SIGNAL \r4|saida[0]~0_combout\ : std_logic;
SIGNAL \r2|saida[0]~0_combout\ : std_logic;
SIGNAL \r3|saida[0]~0_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux15~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux15~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux15~3_combout\ : std_logic;
SIGNAL \RSaida|saida[0]~0_combout\ : std_logic;
SIGNAL \reset_RS~combout\ : std_logic;
SIGNAL \ld_RS~combout\ : std_logic;
SIGNAL \RSaida|saida[9]~1_combout\ : std_logic;
SIGNAL \RSaida|saida[1]~2_combout\ : std_logic;
SIGNAL \RSaida|saida[2]~3_combout\ : std_logic;
SIGNAL \RSaida|saida[3]~4_combout\ : std_logic;
SIGNAL \r1|saida[4]~5_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux11~0_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux11~1_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux11~2_combout\ : std_logic;
SIGNAL \mux7_registers2|Mux11~3_combout\ : std_logic;
SIGNAL \RSaida|saida[4]~5_combout\ : std_logic;
SIGNAL \RSaida|saida[5]~6_combout\ : std_logic;
SIGNAL \RSaida|saida[6]~7_combout\ : std_logic;
SIGNAL \RSaida|saida[7]~8_combout\ : std_logic;
SIGNAL \RSaida|saida[8]~9_combout\ : std_logic;
SIGNAL \RSaida|saida[9]~10_combout\ : std_logic;
SIGNAL \RSaida|saida[10]~11_combout\ : std_logic;
SIGNAL \RSaida|saida[11]~12_combout\ : std_logic;
SIGNAL \RSaida|saida[12]~13_combout\ : std_logic;
SIGNAL \RSaida|saida[13]~14_combout\ : std_logic;
SIGNAL \RSaida|saida[14]~15_combout\ : std_logic;
SIGNAL \RSaida|saida[15]~16_combout\ : std_logic;
SIGNAL \compare|LessThan0~1_cout\ : std_logic;
SIGNAL \compare|LessThan0~3_cout\ : std_logic;
SIGNAL \compare|LessThan0~5_cout\ : std_logic;
SIGNAL \compare|LessThan0~7_cout\ : std_logic;
SIGNAL \compare|LessThan0~9_cout\ : std_logic;
SIGNAL \compare|LessThan0~11_cout\ : std_logic;
SIGNAL \compare|LessThan0~13_cout\ : std_logic;
SIGNAL \compare|LessThan0~15_cout\ : std_logic;
SIGNAL \compare|LessThan0~17_cout\ : std_logic;
SIGNAL \compare|LessThan0~19_cout\ : std_logic;
SIGNAL \compare|LessThan0~21_cout\ : std_logic;
SIGNAL \compare|LessThan0~23_cout\ : std_logic;
SIGNAL \compare|LessThan0~25_cout\ : std_logic;
SIGNAL \compare|LessThan0~27_cout\ : std_logic;
SIGNAL \compare|LessThan0~29_cout\ : std_logic;
SIGNAL \compare|LessThan0~30_combout\ : std_logic;
SIGNAL \compare|Equal0~6_combout\ : std_logic;
SIGNAL \compare|Equal0~5_combout\ : std_logic;
SIGNAL \compare|Equal0~7_combout\ : std_logic;
SIGNAL \compare|Equal0~8_combout\ : std_logic;
SIGNAL \compare|Equal0~10_combout\ : std_logic;
SIGNAL \compare|Equal0~11_combout\ : std_logic;
SIGNAL \compare|LessThan1~1_cout\ : std_logic;
SIGNAL \compare|LessThan1~3_cout\ : std_logic;
SIGNAL \compare|LessThan1~5_cout\ : std_logic;
SIGNAL \compare|LessThan1~7_cout\ : std_logic;
SIGNAL \compare|LessThan1~9_cout\ : std_logic;
SIGNAL \compare|LessThan1~11_cout\ : std_logic;
SIGNAL \compare|LessThan1~13_cout\ : std_logic;
SIGNAL \compare|LessThan1~15_cout\ : std_logic;
SIGNAL \compare|LessThan1~17_cout\ : std_logic;
SIGNAL \compare|LessThan1~19_cout\ : std_logic;
SIGNAL \compare|LessThan1~21_cout\ : std_logic;
SIGNAL \compare|LessThan1~23_cout\ : std_logic;
SIGNAL \compare|LessThan1~25_cout\ : std_logic;
SIGNAL \compare|LessThan1~27_cout\ : std_logic;
SIGNAL \compare|LessThan1~29_cout\ : std_logic;
SIGNAL \compare|LessThan1~30_combout\ : std_logic;
SIGNAL \compare|saida~0_combout\ : std_logic;
SIGNAL \compare|Equal0~2_combout\ : std_logic;
SIGNAL \compare|Equal0~1_combout\ : std_logic;
SIGNAL \compare|Equal0~0_combout\ : std_logic;
SIGNAL \compare|Equal0~4_combout\ : std_logic;
SIGNAL \compare|saida~1_combout\ : std_logic;
SIGNAL \MD_addr~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inRegister|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \compare|saida\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \contadordeprograma|PC_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mux1|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \in_RE~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \memoriaPrograma|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mux3|saida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sel_ULA~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sel_mux5_1~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sel_mux7_1~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sel_mux7_2~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \mux7_registers1|saidamux7\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Rp|saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r0|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r1|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r2|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r3|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r4|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r5|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \r6|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RSaida|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mux7_registers2|saidamux7\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regInstrucao|saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \memoriaDados|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_MD_addr <= MD_addr;
RIout <= ww_RIout;
ww_in_RE <= in_RE;
saida <= ww_saida;
ww_ld_r0 <= ld_r0;
ww_ld_r1 <= ld_r1;
ww_ld_r2 <= ld_r2;
ww_ld_r3 <= ld_r3;
ww_ld_r4 <= ld_r4;
ww_ld_r5 <= ld_r5;
ww_ld_r6 <= ld_r6;
ww_ld_RP <= ld_RP;
ww_ld_RS <= ld_RS;
ww_ld_PC <= ld_PC;
ww_ld_RI <= ld_RI;
ww_ld_RE <= ld_RE;
ww_incrementar_PC <= incrementar_PC;
ww_sel_mux2_1 <= sel_mux2_1;
ww_ld_MEM <= ld_MEM;
ww_sel_ULA <= sel_ULA;
ww_sel_mux5_1 <= sel_mux5_1;
ww_sel_mux7_1 <= sel_mux7_1;
ww_sel_mux7_2 <= sel_mux7_2;
ww_clock <= clock;
ww_reset_RS <= reset_RS;
ww_reset_r0 <= reset_r0;
ww_reset_r1 <= reset_r1;
ww_reset_r2 <= reset_r2;
ww_reset_r3 <= reset_r3;
ww_reset_r4 <= reset_r4;
ww_reset_r5 <= reset_r5;
ww_reset_r6 <= reset_r6;
ww_reset_RI <= reset_RI;
ww_reset_RP <= reset_RP;
ww_reset_RE <= reset_RE;
ww_reset_PC <= reset_PC;
out_comparador <= ww_out_comparador;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\contadordeprograma|PC_out\(7) & \contadordeprograma|PC_out\(6) & \contadordeprograma|PC_out\(5) & \contadordeprograma|PC_out\(4) & 
\contadordeprograma|PC_out\(3) & \contadordeprograma|PC_out\(2) & \contadordeprograma|PC_out\(1) & \contadordeprograma|PC_out\(0));

\memoriaPrograma|altsyncram_component|auto_generated|q_a\(0) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(1) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(2) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(3) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(4) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(5) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(6) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(7) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(8) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(9) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(10) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(11) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(12) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(13) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(14) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\memoriaPrograma|altsyncram_component|auto_generated|q_a\(15) <= \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\mux7_registers1|saidamux7\(15) & \mux7_registers1|saidamux7\(14) & \mux7_registers1|saidamux7\(13) & \mux7_registers1|saidamux7\(12) & 
\mux7_registers1|saidamux7\(11) & \mux7_registers1|saidamux7\(10) & \mux7_registers1|saidamux7\(9) & \mux7_registers1|saidamux7\(8) & \mux7_registers1|saidamux7\(7) & \mux7_registers1|saidamux7\(6) & \mux7_registers1|saidamux7\(5) & 
\mux7_registers1|saidamux7\(4) & \mux7_registers1|saidamux7\(3) & \mux7_registers1|saidamux7\(2) & \mux7_registers1|saidamux7\(1) & \mux7_registers1|saidamux7\(0));

\memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MD_addr~combout\(7) & \MD_addr~combout\(6) & \MD_addr~combout\(5) & \MD_addr~combout\(4) & \MD_addr~combout\(3) & \MD_addr~combout\(2) & \MD_addr~combout\(1)
& \MD_addr~combout\(0));

\memoriaDados|altsyncram_component|auto_generated|q_a\(0) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memoriaDados|altsyncram_component|auto_generated|q_a\(1) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memoriaDados|altsyncram_component|auto_generated|q_a\(2) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memoriaDados|altsyncram_component|auto_generated|q_a\(3) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memoriaDados|altsyncram_component|auto_generated|q_a\(4) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memoriaDados|altsyncram_component|auto_generated|q_a\(5) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memoriaDados|altsyncram_component|auto_generated|q_a\(6) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memoriaDados|altsyncram_component|auto_generated|q_a\(7) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\memoriaDados|altsyncram_component|auto_generated|q_a\(8) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\memoriaDados|altsyncram_component|auto_generated|q_a\(9) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\memoriaDados|altsyncram_component|auto_generated|q_a\(10) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\memoriaDados|altsyncram_component|auto_generated|q_a\(11) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\memoriaDados|altsyncram_component|auto_generated|q_a\(12) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\memoriaDados|altsyncram_component|auto_generated|q_a\(13) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\memoriaDados|altsyncram_component|auto_generated|q_a\(14) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\memoriaDados|altsyncram_component|auto_generated|q_a\(15) <= \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\reset_PC~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_PC~combout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

-- Location: LCCOMB_X14_Y10_N22
\alu|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~9_combout\ = (\mux7_registers1|saidamux7\(2) & ((\alu|Add0~8_combout\ & (\alu|Add0~7\ & VCC)) # (!\alu|Add0~8_combout\ & (!\alu|Add0~7\)))) # (!\mux7_registers1|saidamux7\(2) & ((\alu|Add0~8_combout\ & (!\alu|Add0~7\)) # (!\alu|Add0~8_combout\ & 
-- ((\alu|Add0~7\) # (GND)))))
-- \alu|Add0~10\ = CARRY((\mux7_registers1|saidamux7\(2) & (!\alu|Add0~8_combout\ & !\alu|Add0~7\)) # (!\mux7_registers1|saidamux7\(2) & ((!\alu|Add0~7\) # (!\alu|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(2),
	datab => \alu|Add0~8_combout\,
	datad => VCC,
	cin => \alu|Add0~7\,
	combout => \alu|Add0~9_combout\,
	cout => \alu|Add0~10\);

-- Location: LCCOMB_X15_Y10_N2
\compare|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|Equal0~3_combout\ = (\mux7_registers2|saidamux7\(7) & (\mux7_registers1|saidamux7\(7) & (\mux7_registers1|saidamux7\(6) $ (!\mux7_registers2|saidamux7\(6))))) # (!\mux7_registers2|saidamux7\(7) & (!\mux7_registers1|saidamux7\(7) & 
-- (\mux7_registers1|saidamux7\(6) $ (!\mux7_registers2|saidamux7\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(7),
	datab => \mux7_registers1|saidamux7\(7),
	datac => \mux7_registers1|saidamux7\(6),
	datad => \mux7_registers2|saidamux7\(6),
	combout => \compare|Equal0~3_combout\);

-- Location: LCFF_X17_Y10_N25
\r5|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[0]~0_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(0));

-- Location: LCCOMB_X20_Y10_N16
\mux7_registers2|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux15~0_combout\ = (\sel_mux7_2~combout\(1) & (\sel_mux7_2~combout\(0))) # (!\sel_mux7_2~combout\(1) & ((\sel_mux7_2~combout\(0) & (\r1|saida\(0))) # (!\sel_mux7_2~combout\(0) & ((\r0|saida\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(1),
	datab => \sel_mux7_2~combout\(0),
	datac => \r1|saida\(0),
	datad => \r0|saida\(0),
	combout => \mux7_registers2|Mux15~0_combout\);

-- Location: LCCOMB_X15_Y10_N28
\mux7_registers2|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux14~2_combout\ = (\mux7_registers2|saidamux7[4]~1_combout\ & (((\mux7_registers2|saidamux7[4]~0_combout\)))) # (!\mux7_registers2|saidamux7[4]~1_combout\ & ((\mux7_registers2|saidamux7[4]~0_combout\ & ((\r5|saida\(1)))) # 
-- (!\mux7_registers2|saidamux7[4]~0_combout\ & (\r4|saida\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|saida\(1),
	datab => \mux7_registers2|saidamux7[4]~1_combout\,
	datac => \mux7_registers2|saidamux7[4]~0_combout\,
	datad => \r5|saida\(1),
	combout => \mux7_registers2|Mux14~2_combout\);

-- Location: LCCOMB_X17_Y10_N8
\mux7_registers2|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux12~2_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & ((\r5|saida\(3)) # ((\mux7_registers2|saidamux7[4]~1_combout\)))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & (((\r4|saida\(3) & 
-- !\mux7_registers2|saidamux7[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r5|saida\(3),
	datab => \mux7_registers2|saidamux7[4]~0_combout\,
	datac => \r4|saida\(3),
	datad => \mux7_registers2|saidamux7[4]~1_combout\,
	combout => \mux7_registers2|Mux12~2_combout\);

-- Location: LCFF_X22_Y10_N7
\r2|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[5]~6_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(5));

-- Location: LCFF_X20_Y10_N5
\r0|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[5]~6_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(5));

-- Location: LCCOMB_X21_Y10_N4
\mux7_registers2|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux10~0_combout\ = (\sel_mux7_2~combout\(0) & (\sel_mux7_2~combout\(1))) # (!\sel_mux7_2~combout\(0) & ((\sel_mux7_2~combout\(1) & ((\r2|saida\(5)))) # (!\sel_mux7_2~combout\(1) & (\r0|saida\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(0),
	datab => \sel_mux7_2~combout\(1),
	datac => \r0|saida\(5),
	datad => \r2|saida\(5),
	combout => \mux7_registers2|Mux10~0_combout\);

-- Location: LCFF_X18_Y10_N7
\r4|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[5]~6_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(5));

-- Location: LCCOMB_X19_Y9_N16
\mux7_registers2|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux9~0_combout\ = (\sel_mux7_2~combout\(0) & ((\r1|saida\(6)) # ((\sel_mux7_2~combout\(1))))) # (!\sel_mux7_2~combout\(0) & (((!\sel_mux7_2~combout\(1) & \r0|saida\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(0),
	datab => \r1|saida\(6),
	datac => \sel_mux7_2~combout\(1),
	datad => \r0|saida\(6),
	combout => \mux7_registers2|Mux9~0_combout\);

-- Location: LCFF_X19_Y10_N11
\r1|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[7]~8_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(7));

-- Location: LCCOMB_X19_Y10_N20
\mux7_registers2|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux8~0_combout\ = (\sel_mux7_2~combout\(1) & ((\sel_mux7_2~combout\(0)) # ((\r2|saida\(7))))) # (!\sel_mux7_2~combout\(1) & (!\sel_mux7_2~combout\(0) & (\r0|saida\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(1),
	datab => \sel_mux7_2~combout\(0),
	datac => \r0|saida\(7),
	datad => \r2|saida\(7),
	combout => \mux7_registers2|Mux8~0_combout\);

-- Location: LCFF_X19_Y10_N7
\r3|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[7]~8_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(7));

-- Location: LCCOMB_X19_Y10_N28
\mux7_registers2|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux8~1_combout\ = (\sel_mux7_2~combout\(0) & ((\mux7_registers2|Mux8~0_combout\ & (\r3|saida\(7))) # (!\mux7_registers2|Mux8~0_combout\ & ((\r1|saida\(7)))))) # (!\sel_mux7_2~combout\(0) & (((\mux7_registers2|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|saida\(7),
	datab => \sel_mux7_2~combout\(0),
	datac => \mux7_registers2|Mux8~0_combout\,
	datad => \r1|saida\(7),
	combout => \mux7_registers2|Mux8~1_combout\);

-- Location: LCCOMB_X21_Y9_N6
\mux7_registers2|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux7~0_combout\ = (\sel_mux7_2~combout\(0) & ((\sel_mux7_2~combout\(1)) # ((\r1|saida\(8))))) # (!\sel_mux7_2~combout\(0) & (!\sel_mux7_2~combout\(1) & (\r0|saida\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(0),
	datab => \sel_mux7_2~combout\(1),
	datac => \r0|saida\(8),
	datad => \r1|saida\(8),
	combout => \mux7_registers2|Mux7~0_combout\);

-- Location: LCFF_X17_Y8_N7
\r6|saida[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[8]~9_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(8));

-- Location: LCFF_X20_Y9_N15
\r0|saida[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[9]~10_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(9));

-- Location: LCFF_X21_Y9_N21
\r3|saida[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[9]~10_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(9));

-- Location: LCFF_X22_Y10_N9
\r2|saida[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[10]~11_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(10));

-- Location: LCFF_X20_Y9_N23
\r0|saida[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[10]~11_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(10));

-- Location: LCFF_X18_Y9_N5
\r3|saida[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[11]~12_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(11));

-- Location: LCCOMB_X17_Y9_N24
\mux7_registers2|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux4~2_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & (((\r5|saida\(11)) # (\mux7_registers2|saidamux7[4]~1_combout\)))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & (\r4|saida\(11) & 
-- ((!\mux7_registers2|saidamux7[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~0_combout\,
	datab => \r4|saida\(11),
	datac => \r5|saida\(11),
	datad => \mux7_registers2|saidamux7[4]~1_combout\,
	combout => \mux7_registers2|Mux4~2_combout\);

-- Location: LCFF_X22_Y10_N25
\r2|saida[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[12]~13_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(12));

-- Location: LCFF_X20_Y9_N17
\r1|saida[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[13]~14_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(13));

-- Location: LCFF_X17_Y10_N19
\r5|saida[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[13]~14_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(13));

-- Location: LCFF_X18_Y8_N5
\r3|saida[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[14]~15_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(14));

-- Location: LCFF_X20_Y9_N19
\r0|saida[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[15]~16_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(15));

-- Location: LCCOMB_X19_Y9_N12
\mux7_registers2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux0~0_combout\ = (\sel_mux7_2~combout\(0) & (((\sel_mux7_2~combout\(1))))) # (!\sel_mux7_2~combout\(0) & ((\sel_mux7_2~combout\(1) & ((\r2|saida\(15)))) # (!\sel_mux7_2~combout\(1) & (\r0|saida\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(0),
	datab => \r0|saida\(15),
	datac => \sel_mux7_2~combout\(1),
	datad => \r2|saida\(15),
	combout => \mux7_registers2|Mux0~0_combout\);

-- Location: LCFF_X17_Y10_N29
\r5|saida[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[15]~16_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(15));

-- Location: LCCOMB_X21_Y10_N24
\mux7_registers1|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux14~0_combout\ = (\sel_mux7_1~combout\(0) & ((\sel_mux7_1~combout\(1)) # ((\r1|saida\(1))))) # (!\sel_mux7_1~combout\(0) & (!\sel_mux7_1~combout\(1) & ((\r0|saida\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_1~combout\(0),
	datab => \sel_mux7_1~combout\(1),
	datac => \r1|saida\(1),
	datad => \r0|saida\(1),
	combout => \mux7_registers1|Mux14~0_combout\);

-- Location: LCCOMB_X21_Y10_N12
\mux7_registers1|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux10~0_combout\ = (\sel_mux7_1~combout\(0) & (((\sel_mux7_1~combout\(1)) # (\r1|saida\(5))))) # (!\sel_mux7_1~combout\(0) & (\r0|saida\(5) & (!\sel_mux7_1~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_1~combout\(0),
	datab => \r0|saida\(5),
	datac => \sel_mux7_1~combout\(1),
	datad => \r1|saida\(5),
	combout => \mux7_registers1|Mux10~0_combout\);

-- Location: LCCOMB_X21_Y10_N22
\mux7_registers1|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux10~1_combout\ = (\mux7_registers1|Mux10~0_combout\ & ((\r3|saida\(5)) # ((!\sel_mux7_1~combout\(1))))) # (!\mux7_registers1|Mux10~0_combout\ & (((\sel_mux7_1~combout\(1) & \r2|saida\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|Mux10~0_combout\,
	datab => \r3|saida\(5),
	datac => \sel_mux7_1~combout\(1),
	datad => \r2|saida\(5),
	combout => \mux7_registers1|Mux10~1_combout\);

-- Location: LCCOMB_X13_Y10_N24
\mux7_registers1|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux10~2_combout\ = (\mux7_registers1|saidamux7[1]~1_combout\ & (((\mux7_registers1|saidamux7[1]~0_combout\) # (\mux7_registers1|Mux10~1_combout\)))) # (!\mux7_registers1|saidamux7[1]~1_combout\ & (\r4|saida\(5) & 
-- (!\mux7_registers1|saidamux7[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|saida\(5),
	datab => \mux7_registers1|saidamux7[1]~1_combout\,
	datac => \mux7_registers1|saidamux7[1]~0_combout\,
	datad => \mux7_registers1|Mux10~1_combout\,
	combout => \mux7_registers1|Mux10~2_combout\);

-- Location: LCCOMB_X15_Y9_N10
\mux7_registers1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux5~0_combout\ = (\sel_mux7_1~combout\(0) & (((\sel_mux7_1~combout\(1))))) # (!\sel_mux7_1~combout\(0) & ((\sel_mux7_1~combout\(1) & ((\r2|saida\(10)))) # (!\sel_mux7_1~combout\(1) & (\r0|saida\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r0|saida\(10),
	datab => \sel_mux7_1~combout\(0),
	datac => \sel_mux7_1~combout\(1),
	datad => \r2|saida\(10),
	combout => \mux7_registers1|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y11_N6
\mux7_registers1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux3~0_combout\ = (\sel_mux7_1~combout\(1) & ((\r2|saida\(12)) # ((\sel_mux7_1~combout\(0))))) # (!\sel_mux7_1~combout\(1) & (((!\sel_mux7_1~combout\(0) & \r0|saida\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|saida\(12),
	datab => \sel_mux7_1~combout\(1),
	datac => \sel_mux7_1~combout\(0),
	datad => \r0|saida\(12),
	combout => \mux7_registers1|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y11_N16
\mux7_registers1|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux3~1_combout\ = (\sel_mux7_1~combout\(0) & ((\mux7_registers1|Mux3~0_combout\ & (\r3|saida\(12))) # (!\mux7_registers1|Mux3~0_combout\ & ((\r1|saida\(12)))))) # (!\sel_mux7_1~combout\(0) & (((\mux7_registers1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|saida\(12),
	datab => \sel_mux7_1~combout\(0),
	datac => \r1|saida\(12),
	datad => \mux7_registers1|Mux3~0_combout\,
	combout => \mux7_registers1|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y9_N10
\mux7_registers1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux0~0_combout\ = (\sel_mux7_1~combout\(0) & ((\r1|saida\(15)) # ((\sel_mux7_1~combout\(1))))) # (!\sel_mux7_1~combout\(0) & (((!\sel_mux7_1~combout\(1) & \r0|saida\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_1~combout\(0),
	datab => \r1|saida\(15),
	datac => \sel_mux7_1~combout\(1),
	datad => \r0|saida\(15),
	combout => \mux7_registers1|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y11_N10
\mux7_registers1|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux1~2_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & ((\r5|saida\(14)) # ((\mux7_registers1|saidamux7[1]~1_combout\)))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & (((!\mux7_registers1|saidamux7[1]~1_combout\ & 
-- \r4|saida\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \r5|saida\(14),
	datac => \mux7_registers1|saidamux7[1]~1_combout\,
	datad => \r4|saida\(14),
	combout => \mux7_registers1|Mux1~2_combout\);

-- Location: LCCOMB_X17_Y10_N24
\r5|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[0]~0_combout\ = (\ld_r5~combout\ & \mux1|saida\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \mux1|saida\(0),
	combout => \r5|saida[0]~0_combout\);

-- Location: LCCOMB_X22_Y10_N6
\r2|saida[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[5]~6_combout\ = (\mux1|saida\(5) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(5),
	datad => \ld_r2~combout\,
	combout => \r2|saida[5]~6_combout\);

-- Location: LCCOMB_X20_Y10_N4
\r0|saida[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[5]~6_combout\ = (\mux1|saida\(5) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(5),
	datad => \ld_r0~combout\,
	combout => \r0|saida[5]~6_combout\);

-- Location: LCCOMB_X18_Y10_N6
\r4|saida[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[5]~6_combout\ = (\mux1|saida\(5) & \ld_r4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(5),
	datac => \ld_r4~combout\,
	combout => \r4|saida[5]~6_combout\);

-- Location: LCCOMB_X19_Y10_N10
\r1|saida[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[7]~8_combout\ = (\mux1|saida\(7) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(7),
	datad => \ld_r1~combout\,
	combout => \r1|saida[7]~8_combout\);

-- Location: LCCOMB_X19_Y10_N6
\r3|saida[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[7]~8_combout\ = (\ld_r3~combout\ & \mux1|saida\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_r3~combout\,
	datac => \mux1|saida\(7),
	combout => \r3|saida[7]~8_combout\);

-- Location: LCCOMB_X17_Y8_N6
\r6|saida[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[8]~9_combout\ = (\ld_r6~combout\ & \mux1|saida\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r6~combout\,
	datad => \mux1|saida\(8),
	combout => \r6|saida[8]~9_combout\);

-- Location: LCCOMB_X20_Y9_N14
\r0|saida[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[9]~10_combout\ = (\mux1|saida\(9) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(9),
	datad => \ld_r0~combout\,
	combout => \r0|saida[9]~10_combout\);

-- Location: LCCOMB_X21_Y9_N20
\r3|saida[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[9]~10_combout\ = (\mux1|saida\(9) & \ld_r3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(9),
	datac => \ld_r3~combout\,
	combout => \r3|saida[9]~10_combout\);

-- Location: LCCOMB_X22_Y10_N8
\r2|saida[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[10]~11_combout\ = (\mux1|saida\(10) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(10),
	datad => \ld_r2~combout\,
	combout => \r2|saida[10]~11_combout\);

-- Location: LCCOMB_X20_Y9_N22
\r0|saida[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[10]~11_combout\ = (\mux1|saida\(10) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(10),
	datad => \ld_r0~combout\,
	combout => \r0|saida[10]~11_combout\);

-- Location: LCCOMB_X18_Y9_N4
\r3|saida[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[11]~12_combout\ = (\ld_r3~combout\ & \mux1|saida\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_r3~combout\,
	datac => \mux1|saida\(11),
	combout => \r3|saida[11]~12_combout\);

-- Location: LCCOMB_X22_Y10_N24
\r2|saida[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[12]~13_combout\ = (\mux1|saida\(12) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(12),
	datad => \ld_r2~combout\,
	combout => \r2|saida[12]~13_combout\);

-- Location: LCCOMB_X20_Y9_N16
\r1|saida[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[13]~14_combout\ = (\mux1|saida\(13) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(13),
	datad => \ld_r1~combout\,
	combout => \r1|saida[13]~14_combout\);

-- Location: LCCOMB_X17_Y10_N18
\r5|saida[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[13]~14_combout\ = (\ld_r5~combout\ & \mux1|saida\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \mux1|saida\(13),
	combout => \r5|saida[13]~14_combout\);

-- Location: LCCOMB_X18_Y8_N4
\r3|saida[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[14]~15_combout\ = (\ld_r3~combout\ & \mux1|saida\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r3~combout\,
	datad => \mux1|saida\(14),
	combout => \r3|saida[14]~15_combout\);

-- Location: LCCOMB_X20_Y9_N18
\r0|saida[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[15]~16_combout\ = (\mux1|saida\(15) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(15),
	datad => \ld_r0~combout\,
	combout => \r0|saida[15]~16_combout\);

-- Location: LCCOMB_X17_Y10_N28
\r5|saida[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[15]~16_combout\ = (\mux1|saida\(15) & \ld_r5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(15),
	datac => \ld_r5~combout\,
	combout => \r5|saida[15]~16_combout\);

-- Location: LCFF_X24_Y9_N1
\Rp|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rp|saida[2]~3_combout\,
	ena => \Rp|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rp|saida\(2));

-- Location: LCFF_X24_Y9_N3
\Rp|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rp|saida[5]~6_combout\,
	ena => \Rp|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rp|saida\(5));

-- Location: LCFF_X20_Y8_N13
\inRegister|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[1]~2_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(1));

-- Location: LCFF_X25_Y8_N13
\inRegister|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[2]~3_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(2));

-- Location: LCCOMB_X24_Y8_N24
\mux1|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux13~0_combout\ = (\sel_mux5_1~combout\(1) & (((\sel_mux5_1~combout\(0))))) # (!\sel_mux5_1~combout\(1) & ((\sel_mux5_1~combout\(0) & ((\mux7_registers1|saidamux7\(2)))) # (!\sel_mux5_1~combout\(0) & (\inRegister|saida\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \inRegister|saida\(2),
	datac => \sel_mux5_1~combout\(0),
	datad => \mux7_registers1|saidamux7\(2),
	combout => \mux1|Mux13~0_combout\);

-- Location: LCFF_X25_Y8_N21
\inRegister|saida[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[9]~10_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(9));

-- Location: LCCOMB_X24_Y8_N10
\mux1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux6~0_combout\ = (\sel_mux5_1~combout\(1) & (((\sel_mux5_1~combout\(0)) # (\regInstrucao|saida\(9))))) # (!\sel_mux5_1~combout\(1) & (\inRegister|saida\(9) & (!\sel_mux5_1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \inRegister|saida\(9),
	datac => \sel_mux5_1~combout\(0),
	datad => \regInstrucao|saida\(9),
	combout => \mux1|Mux6~0_combout\);

-- Location: LCFF_X20_Y8_N11
\inRegister|saida[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[11]~12_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(11));

-- Location: LCCOMB_X24_Y9_N0
\Rp|saida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rp|saida[2]~3_combout\ = (\contadordeprograma|PC_out\(2) & \ld_RP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadordeprograma|PC_out\(2),
	datad => \ld_RP~combout\,
	combout => \Rp|saida[2]~3_combout\);

-- Location: LCCOMB_X24_Y9_N2
\Rp|saida[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rp|saida[5]~6_combout\ = (\contadordeprograma|PC_out\(5) & \ld_RP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contadordeprograma|PC_out\(5),
	datad => \ld_RP~combout\,
	combout => \Rp|saida[5]~6_combout\);

-- Location: LCCOMB_X20_Y8_N12
\inRegister|saida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[1]~2_combout\ = (\in_RE~combout\(1) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(1),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[1]~2_combout\);

-- Location: LCCOMB_X25_Y8_N12
\inRegister|saida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[2]~3_combout\ = (\in_RE~combout\(2) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(2),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[2]~3_combout\);

-- Location: LCCOMB_X15_Y8_N10
\alu|saida~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~26_combout\ = (\mux7_registers2|saidamux7\(3)) # (\mux7_registers1|saidamux7\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(3),
	datac => \mux7_registers1|saidamux7\(3),
	combout => \alu|saida~26_combout\);

-- Location: LCCOMB_X14_Y10_N10
\alu|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~11_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(3),
	combout => \alu|Add0~11_combout\);

-- Location: LCCOMB_X15_Y8_N16
\alu|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~0_combout\ = (\alu|saida[10]~19_combout\ & (((\alu|saida[10]~18_combout\)))) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(3) $ (((\mux7_registers2|saidamux7\(3)) # (\alu|saida[10]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(3),
	datab => \alu|saida[10]~19_combout\,
	datac => \mux7_registers2|saidamux7\(3),
	datad => \alu|saida[10]~18_combout\,
	combout => \alu|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y10_N12
\alu|saida~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~27_combout\ = (\mux7_registers2|saidamux7\(4) & \mux7_registers1|saidamux7\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(4),
	datac => \mux7_registers1|saidamux7\(4),
	combout => \alu|saida~27_combout\);

-- Location: LCCOMB_X15_Y10_N4
\alu|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~14_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(4),
	combout => \alu|Add0~14_combout\);

-- Location: LCCOMB_X12_Y10_N6
\alu|saida~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~30_combout\ = (\mux7_registers2|saidamux7\(5)) # (\mux7_registers1|saidamux7\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(5),
	datad => \mux7_registers1|saidamux7\(5),
	combout => \alu|saida~30_combout\);

-- Location: LCCOMB_X13_Y10_N12
\alu|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~17_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(5),
	combout => \alu|Add0~17_combout\);

-- Location: LCCOMB_X12_Y10_N24
\alu|saida~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~31_combout\ = (\mux7_registers1|saidamux7\(6) & \mux7_registers2|saidamux7\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers1|saidamux7\(6),
	datad => \mux7_registers2|saidamux7\(6),
	combout => \alu|saida~31_combout\);

-- Location: LCCOMB_X15_Y8_N12
\alu|saida~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~33_combout\ = (\mux7_registers1|saidamux7\(7) & \mux7_registers2|saidamux7\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(7),
	datac => \mux7_registers2|saidamux7\(7),
	combout => \alu|saida~33_combout\);

-- Location: LCCOMB_X14_Y9_N20
\alu|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~23_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(7),
	combout => \alu|Add0~23_combout\);

-- Location: LCCOMB_X15_Y8_N24
\alu|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~0_combout\ = (\alu|saida[10]~19_combout\ & (((\alu|saida[10]~18_combout\)))) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(7) $ (((\mux7_registers2|saidamux7\(7)) # (\alu|saida[10]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(7),
	datab => \alu|saida[10]~19_combout\,
	datac => \mux7_registers2|saidamux7\(7),
	datad => \alu|saida[10]~18_combout\,
	combout => \alu|Mux8~0_combout\);

-- Location: LCCOMB_X25_Y8_N20
\inRegister|saida[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[9]~10_combout\ = (\in_RE~combout\(9) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(9),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[9]~10_combout\);

-- Location: LCCOMB_X15_Y9_N12
\alu|saida~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~39_combout\ = (\mux7_registers1|saidamux7\(10) & \mux7_registers2|saidamux7\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers1|saidamux7\(10),
	datad => \mux7_registers2|saidamux7\(10),
	combout => \alu|saida~39_combout\);

-- Location: LCCOMB_X15_Y9_N4
\alu|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~32_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(10),
	combout => \alu|Add0~32_combout\);

-- Location: LCCOMB_X20_Y8_N10
\inRegister|saida[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[11]~12_combout\ = (\in_RE~combout\(11) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(11),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[11]~12_combout\);

-- Location: LCCOMB_X12_Y9_N20
\alu|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~0_combout\ = (\alu|saida[10]~19_combout\ & (\alu|saida[10]~18_combout\)) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(11) $ (((\alu|saida[10]~18_combout\) # (\mux7_registers2|saidamux7\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~18_combout\,
	datab => \mux7_registers1|saidamux7\(11),
	datac => \alu|saida[10]~19_combout\,
	datad => \mux7_registers2|saidamux7\(11),
	combout => \alu|Mux12~0_combout\);

-- Location: LCCOMB_X18_Y9_N24
\alu|saida~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~45_combout\ = (\mux7_registers1|saidamux7\(13) & \mux7_registers2|saidamux7\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux7_registers1|saidamux7\(13),
	datad => \mux7_registers2|saidamux7\(13),
	combout => \alu|saida~45_combout\);

-- Location: LCCOMB_X17_Y11_N24
\alu|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~44_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(14),
	combout => \alu|Add0~44_combout\);

-- Location: LCCOMB_X13_Y9_N12
\alu|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~0_combout\ = (\alu|saida[10]~19_combout\ & (\alu|saida[10]~18_combout\)) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(15) $ (((\alu|saida[10]~18_combout\) # (\mux7_registers2|saidamux7\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~18_combout\,
	datab => \alu|saida[10]~19_combout\,
	datac => \mux7_registers1|saidamux7\(15),
	datad => \mux7_registers2|saidamux7\(15),
	combout => \alu|Mux16~0_combout\);

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_MEM~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_MEM,
	combout => \ld_MEM~combout\);

-- Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(1),
	combout => \in_RE~combout\(1));

-- Location: PIN_M11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(2),
	combout => \in_RE~combout\(2));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(9),
	combout => \in_RE~combout\(9));

-- Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(11),
	combout => \in_RE~combout\(11));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y9_N6
\contadordeprograma|PC_out[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadordeprograma|PC_out[0]~8_combout\ = \contadordeprograma|PC_out\(0) $ (VCC)
-- \contadordeprograma|PC_out[0]~9\ = CARRY(\contadordeprograma|PC_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadordeprograma|PC_out\(0),
	datad => VCC,
	combout => \contadordeprograma|PC_out[0]~8_combout\,
	cout => \contadordeprograma|PC_out[0]~9\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_RP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_RP,
	combout => \ld_RP~combout\);

-- Location: LCCOMB_X24_Y9_N24
\Rp|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rp|saida[0]~0_combout\ = (\contadordeprograma|PC_out\(0) & \ld_RP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadordeprograma|PC_out\(0),
	datad => \ld_RP~combout\,
	combout => \Rp|saida[0]~0_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_RP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_RP,
	combout => \reset_RP~combout\);

-- Location: LCCOMB_X25_Y9_N24
\Rp|saida[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rp|saida[0]~1_combout\ = (\reset_RP~combout\) # (\ld_RP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_RP~combout\,
	datad => \ld_RP~combout\,
	combout => \Rp|saida[0]~1_combout\);

-- Location: LCFF_X24_Y9_N25
\Rp|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rp|saida[0]~0_combout\,
	ena => \Rp|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rp|saida\(0));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux2_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_mux2_1,
	combout => \sel_mux2_1~combout\);

-- Location: LCCOMB_X25_Y9_N14
\mux3|saida~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux3|saida~0_combout\ = (\sel_mux2_1~combout\ & ((\regInstrucao|saida\(0)))) # (!\sel_mux2_1~combout\ & (\Rp|saida\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rp|saida\(0),
	datac => \regInstrucao|saida\(0),
	datad => \sel_mux2_1~combout\,
	combout => \mux3|saida~0_combout\);

-- Location: LCFF_X25_Y9_N15
\mux3|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux3|saida\(0));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_PC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_PC,
	combout => \reset_PC~combout\);

-- Location: CLKCTRL_G1
\reset_PC~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_PC~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_PC~clkctrl_outclk\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_PC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_PC,
	combout => \ld_PC~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\incrementar_PC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_incrementar_PC,
	combout => \incrementar_PC~combout\);

-- Location: LCCOMB_X25_Y9_N4
\contadordeprograma|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadordeprograma|process_0~0_combout\ = (\ld_PC~combout\ & !\incrementar_PC~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_PC~combout\,
	datad => \incrementar_PC~combout\,
	combout => \contadordeprograma|process_0~0_combout\);

-- Location: LCFF_X24_Y9_N7
\contadordeprograma|PC_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contadordeprograma|PC_out[0]~8_combout\,
	sdata => \mux3|saida\(0),
	aclr => \reset_PC~clkctrl_outclk\,
	sload => \contadordeprograma|process_0~0_combout\,
	ena => \ld_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadordeprograma|PC_out\(0));

-- Location: LCCOMB_X24_Y9_N8
\contadordeprograma|PC_out[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadordeprograma|PC_out[1]~10_combout\ = (\contadordeprograma|PC_out\(1) & (!\contadordeprograma|PC_out[0]~9\)) # (!\contadordeprograma|PC_out\(1) & ((\contadordeprograma|PC_out[0]~9\) # (GND)))
-- \contadordeprograma|PC_out[1]~11\ = CARRY((!\contadordeprograma|PC_out[0]~9\) # (!\contadordeprograma|PC_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contadordeprograma|PC_out\(1),
	datad => VCC,
	cin => \contadordeprograma|PC_out[0]~9\,
	combout => \contadordeprograma|PC_out[1]~10_combout\,
	cout => \contadordeprograma|PC_out[1]~11\);

-- Location: LCCOMB_X24_Y9_N22
\Rp|saida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rp|saida[1]~2_combout\ = (\contadordeprograma|PC_out\(1) & \ld_RP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contadordeprograma|PC_out\(1),
	datad => \ld_RP~combout\,
	combout => \Rp|saida[1]~2_combout\);

-- Location: LCFF_X24_Y9_N23
\Rp|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rp|saida[1]~2_combout\,
	ena => \Rp|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rp|saida\(1));

-- Location: LCCOMB_X24_Y9_N10
\contadordeprograma|PC_out[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadordeprograma|PC_out[2]~12_combout\ = (\contadordeprograma|PC_out\(2) & (\contadordeprograma|PC_out[1]~11\ $ (GND))) # (!\contadordeprograma|PC_out\(2) & (!\contadordeprograma|PC_out[1]~11\ & VCC))
-- \contadordeprograma|PC_out[2]~13\ = CARRY((\contadordeprograma|PC_out\(2) & !\contadordeprograma|PC_out[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadordeprograma|PC_out\(2),
	datad => VCC,
	cin => \contadordeprograma|PC_out[1]~11\,
	combout => \contadordeprograma|PC_out[2]~12_combout\,
	cout => \contadordeprograma|PC_out[2]~13\);

-- Location: LCCOMB_X24_Y9_N12
\contadordeprograma|PC_out[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadordeprograma|PC_out[3]~14_combout\ = (\contadordeprograma|PC_out\(3) & (!\contadordeprograma|PC_out[2]~13\)) # (!\contadordeprograma|PC_out\(3) & ((\contadordeprograma|PC_out[2]~13\) # (GND)))
-- \contadordeprograma|PC_out[3]~15\ = CARRY((!\contadordeprograma|PC_out[2]~13\) # (!\contadordeprograma|PC_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadordeprograma|PC_out\(3),
	datad => VCC,
	cin => \contadordeprograma|PC_out[2]~13\,
	combout => \contadordeprograma|PC_out[3]~14_combout\,
	cout => \contadordeprograma|PC_out[3]~15\);

-- Location: LCCOMB_X24_Y9_N14
\contadordeprograma|PC_out[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadordeprograma|PC_out[4]~16_combout\ = (\contadordeprograma|PC_out\(4) & (\contadordeprograma|PC_out[3]~15\ $ (GND))) # (!\contadordeprograma|PC_out\(4) & (!\contadordeprograma|PC_out[3]~15\ & VCC))
-- \contadordeprograma|PC_out[4]~17\ = CARRY((\contadordeprograma|PC_out\(4) & !\contadordeprograma|PC_out[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contadordeprograma|PC_out\(4),
	datad => VCC,
	cin => \contadordeprograma|PC_out[3]~15\,
	combout => \contadordeprograma|PC_out[4]~16_combout\,
	cout => \contadordeprograma|PC_out[4]~17\);

-- Location: LCCOMB_X24_Y9_N4
\Rp|saida[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rp|saida[4]~5_combout\ = (\contadordeprograma|PC_out\(4) & \ld_RP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contadordeprograma|PC_out\(4),
	datad => \ld_RP~combout\,
	combout => \Rp|saida[4]~5_combout\);

-- Location: LCFF_X24_Y9_N5
\Rp|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rp|saida[4]~5_combout\,
	ena => \Rp|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rp|saida\(4));

-- Location: LCCOMB_X24_Y9_N16
\contadordeprograma|PC_out[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadordeprograma|PC_out[5]~18_combout\ = (\contadordeprograma|PC_out\(5) & (!\contadordeprograma|PC_out[4]~17\)) # (!\contadordeprograma|PC_out\(5) & ((\contadordeprograma|PC_out[4]~17\) # (GND)))
-- \contadordeprograma|PC_out[5]~19\ = CARRY((!\contadordeprograma|PC_out[4]~17\) # (!\contadordeprograma|PC_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadordeprograma|PC_out\(5),
	datad => VCC,
	cin => \contadordeprograma|PC_out[4]~17\,
	combout => \contadordeprograma|PC_out[5]~18_combout\,
	cout => \contadordeprograma|PC_out[5]~19\);

-- Location: LCCOMB_X24_Y9_N18
\contadordeprograma|PC_out[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadordeprograma|PC_out[6]~20_combout\ = (\contadordeprograma|PC_out\(6) & (\contadordeprograma|PC_out[5]~19\ $ (GND))) # (!\contadordeprograma|PC_out\(6) & (!\contadordeprograma|PC_out[5]~19\ & VCC))
-- \contadordeprograma|PC_out[6]~21\ = CARRY((\contadordeprograma|PC_out\(6) & !\contadordeprograma|PC_out[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contadordeprograma|PC_out\(6),
	datad => VCC,
	cin => \contadordeprograma|PC_out[5]~19\,
	combout => \contadordeprograma|PC_out[6]~20_combout\,
	cout => \contadordeprograma|PC_out[6]~21\);

-- Location: LCCOMB_X24_Y9_N28
\Rp|saida[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rp|saida[6]~7_combout\ = (\contadordeprograma|PC_out\(6) & \ld_RP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contadordeprograma|PC_out\(6),
	datad => \ld_RP~combout\,
	combout => \Rp|saida[6]~7_combout\);

-- Location: LCFF_X24_Y9_N29
\Rp|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rp|saida[6]~7_combout\,
	ena => \Rp|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rp|saida\(6));

-- Location: LCCOMB_X25_Y9_N12
\mux3|saida~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux3|saida~6_combout\ = (\sel_mux2_1~combout\ & (\regInstrucao|saida\(6))) # (!\sel_mux2_1~combout\ & ((\Rp|saida\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regInstrucao|saida\(6),
	datab => \Rp|saida\(6),
	datad => \sel_mux2_1~combout\,
	combout => \mux3|saida~6_combout\);

-- Location: LCFF_X25_Y9_N13
\mux3|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux3|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux3|saida\(6));

-- Location: LCFF_X24_Y9_N19
\contadordeprograma|PC_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contadordeprograma|PC_out[6]~20_combout\,
	sdata => \mux3|saida\(6),
	aclr => \reset_PC~clkctrl_outclk\,
	sload => \contadordeprograma|process_0~0_combout\,
	ena => \ld_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadordeprograma|PC_out\(6));

-- Location: LCCOMB_X24_Y9_N20
\contadordeprograma|PC_out[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \contadordeprograma|PC_out[7]~22_combout\ = \contadordeprograma|PC_out\(7) $ (\contadordeprograma|PC_out[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contadordeprograma|PC_out\(7),
	cin => \contadordeprograma|PC_out[6]~21\,
	combout => \contadordeprograma|PC_out[7]~22_combout\);

-- Location: LCCOMB_X24_Y9_N26
\Rp|saida[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rp|saida[7]~8_combout\ = (\contadordeprograma|PC_out\(7) & \ld_RP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contadordeprograma|PC_out\(7),
	datad => \ld_RP~combout\,
	combout => \Rp|saida[7]~8_combout\);

-- Location: LCFF_X24_Y9_N27
\Rp|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rp|saida[7]~8_combout\,
	ena => \Rp|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rp|saida\(7));

-- Location: M4K_X23_Y9
\memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AC000950A200A100",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memoriaDePrograma.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoriaDePrograma:memoriaPrograma|altsyncram:altsyncram_component|altsyncram_6091:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clock~clkctrl_outclk\,
	portaaddr => \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaPrograma|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_RI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_RI,
	combout => \ld_RI~combout\);

-- Location: LCCOMB_X22_Y9_N26
\regInstrucao|saida[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[7]~8_combout\ = (\memoriaPrograma|altsyncram_component|auto_generated|q_a\(7) & \ld_RI~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(7),
	datad => \ld_RI~combout\,
	combout => \regInstrucao|saida[7]~8_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_RI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_RI,
	combout => \reset_RI~combout\);

-- Location: LCCOMB_X25_Y9_N28
\regInstrucao|saida[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[3]~1_combout\ = (\ld_RI~combout\) # (\reset_RI~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_RI~combout\,
	datac => \reset_RI~combout\,
	combout => \regInstrucao|saida[3]~1_combout\);

-- Location: LCFF_X22_Y9_N27
\regInstrucao|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[7]~8_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(7));

-- Location: LCCOMB_X25_Y9_N10
\mux3|saida~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux3|saida~7_combout\ = (\sel_mux2_1~combout\ & ((\regInstrucao|saida\(7)))) # (!\sel_mux2_1~combout\ & (\Rp|saida\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rp|saida\(7),
	datac => \regInstrucao|saida\(7),
	datad => \sel_mux2_1~combout\,
	combout => \mux3|saida~7_combout\);

-- Location: LCFF_X25_Y9_N11
\mux3|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux3|saida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux3|saida\(7));

-- Location: LCFF_X24_Y9_N21
\contadordeprograma|PC_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contadordeprograma|PC_out[7]~22_combout\,
	sdata => \mux3|saida\(7),
	aclr => \reset_PC~clkctrl_outclk\,
	sload => \contadordeprograma|process_0~0_combout\,
	ena => \ld_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadordeprograma|PC_out\(7));

-- Location: LCCOMB_X22_Y9_N22
\regInstrucao|saida[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[5]~6_combout\ = (\ld_RI~combout\ & \memoriaPrograma|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RI~combout\,
	datad => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(5),
	combout => \regInstrucao|saida[5]~6_combout\);

-- Location: LCFF_X22_Y9_N23
\regInstrucao|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[5]~6_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(5));

-- Location: LCCOMB_X25_Y9_N26
\mux3|saida~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux3|saida~5_combout\ = (\sel_mux2_1~combout\ & ((\regInstrucao|saida\(5)))) # (!\sel_mux2_1~combout\ & (\Rp|saida\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rp|saida\(5),
	datac => \regInstrucao|saida\(5),
	datad => \sel_mux2_1~combout\,
	combout => \mux3|saida~5_combout\);

-- Location: LCFF_X25_Y9_N27
\mux3|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux3|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux3|saida\(5));

-- Location: LCFF_X24_Y9_N17
\contadordeprograma|PC_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contadordeprograma|PC_out[5]~18_combout\,
	sdata => \mux3|saida\(5),
	aclr => \reset_PC~clkctrl_outclk\,
	sload => \contadordeprograma|process_0~0_combout\,
	ena => \ld_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadordeprograma|PC_out\(5));

-- Location: LCCOMB_X22_Y9_N20
\regInstrucao|saida[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[4]~5_combout\ = (\ld_RI~combout\ & \memoriaPrograma|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RI~combout\,
	datad => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(4),
	combout => \regInstrucao|saida[4]~5_combout\);

-- Location: LCFF_X22_Y9_N21
\regInstrucao|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[4]~5_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(4));

-- Location: LCCOMB_X25_Y9_N0
\mux3|saida~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux3|saida~4_combout\ = (\sel_mux2_1~combout\ & ((\regInstrucao|saida\(4)))) # (!\sel_mux2_1~combout\ & (\Rp|saida\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rp|saida\(4),
	datac => \regInstrucao|saida\(4),
	datad => \sel_mux2_1~combout\,
	combout => \mux3|saida~4_combout\);

-- Location: LCFF_X25_Y9_N1
\mux3|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux3|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux3|saida\(4));

-- Location: LCFF_X24_Y9_N15
\contadordeprograma|PC_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contadordeprograma|PC_out[4]~16_combout\,
	sdata => \mux3|saida\(4),
	aclr => \reset_PC~clkctrl_outclk\,
	sload => \contadordeprograma|process_0~0_combout\,
	ena => \ld_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadordeprograma|PC_out\(4));

-- Location: LCCOMB_X22_Y9_N6
\regInstrucao|saida[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[3]~4_combout\ = (\ld_RI~combout\ & \memoriaPrograma|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RI~combout\,
	datad => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(3),
	combout => \regInstrucao|saida[3]~4_combout\);

-- Location: LCFF_X22_Y9_N7
\regInstrucao|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[3]~4_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(3));

-- Location: LCCOMB_X24_Y9_N30
\Rp|saida[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Rp|saida[3]~4_combout\ = (\contadordeprograma|PC_out\(3) & \ld_RP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contadordeprograma|PC_out\(3),
	datad => \ld_RP~combout\,
	combout => \Rp|saida[3]~4_combout\);

-- Location: LCFF_X24_Y9_N31
\Rp|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Rp|saida[3]~4_combout\,
	ena => \Rp|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rp|saida\(3));

-- Location: LCCOMB_X25_Y9_N22
\mux3|saida~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux3|saida~3_combout\ = (\sel_mux2_1~combout\ & (\regInstrucao|saida\(3))) # (!\sel_mux2_1~combout\ & ((\Rp|saida\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regInstrucao|saida\(3),
	datac => \Rp|saida\(3),
	datad => \sel_mux2_1~combout\,
	combout => \mux3|saida~3_combout\);

-- Location: LCFF_X25_Y9_N23
\mux3|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux3|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux3|saida\(3));

-- Location: LCFF_X24_Y9_N13
\contadordeprograma|PC_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contadordeprograma|PC_out[3]~14_combout\,
	sdata => \mux3|saida\(3),
	aclr => \reset_PC~clkctrl_outclk\,
	sload => \contadordeprograma|process_0~0_combout\,
	ena => \ld_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadordeprograma|PC_out\(3));

-- Location: LCCOMB_X22_Y9_N24
\regInstrucao|saida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[2]~3_combout\ = (\memoriaPrograma|altsyncram_component|auto_generated|q_a\(2) & \ld_RI~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(2),
	datad => \ld_RI~combout\,
	combout => \regInstrucao|saida[2]~3_combout\);

-- Location: LCFF_X22_Y9_N25
\regInstrucao|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[2]~3_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(2));

-- Location: LCCOMB_X25_Y9_N8
\mux3|saida~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux3|saida~2_combout\ = (\sel_mux2_1~combout\ & ((\regInstrucao|saida\(2)))) # (!\sel_mux2_1~combout\ & (\Rp|saida\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rp|saida\(2),
	datac => \regInstrucao|saida\(2),
	datad => \sel_mux2_1~combout\,
	combout => \mux3|saida~2_combout\);

-- Location: LCFF_X25_Y9_N9
\mux3|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux3|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux3|saida\(2));

-- Location: LCFF_X24_Y9_N11
\contadordeprograma|PC_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contadordeprograma|PC_out[2]~12_combout\,
	sdata => \mux3|saida\(2),
	aclr => \reset_PC~clkctrl_outclk\,
	sload => \contadordeprograma|process_0~0_combout\,
	ena => \ld_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadordeprograma|PC_out\(2));

-- Location: LCCOMB_X22_Y9_N30
\regInstrucao|saida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[1]~2_combout\ = (\ld_RI~combout\ & \memoriaPrograma|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RI~combout\,
	datad => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(1),
	combout => \regInstrucao|saida[1]~2_combout\);

-- Location: LCFF_X22_Y9_N31
\regInstrucao|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[1]~2_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(1));

-- Location: LCCOMB_X25_Y9_N18
\mux3|saida~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux3|saida~1_combout\ = (\sel_mux2_1~combout\ & ((\regInstrucao|saida\(1)))) # (!\sel_mux2_1~combout\ & (\Rp|saida\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rp|saida\(1),
	datac => \regInstrucao|saida\(1),
	datad => \sel_mux2_1~combout\,
	combout => \mux3|saida~1_combout\);

-- Location: LCFF_X25_Y9_N19
\mux3|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux3|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux3|saida\(1));

-- Location: LCFF_X24_Y9_N9
\contadordeprograma|PC_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contadordeprograma|PC_out[1]~10_combout\,
	sdata => \mux3|saida\(1),
	aclr => \reset_PC~clkctrl_outclk\,
	sload => \contadordeprograma|process_0~0_combout\,
	ena => \ld_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contadordeprograma|PC_out\(1));

-- Location: LCCOMB_X22_Y9_N0
\regInstrucao|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[0]~0_combout\ = (\ld_RI~combout\ & \memoriaPrograma|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RI~combout\,
	datad => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(0),
	combout => \regInstrucao|saida[0]~0_combout\);

-- Location: LCFF_X22_Y9_N1
\regInstrucao|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[0]~0_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(0));

-- Location: LCCOMB_X22_Y9_N8
\regInstrucao|saida[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[6]~7_combout\ = (\memoriaPrograma|altsyncram_component|auto_generated|q_a\(6) & \ld_RI~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(6),
	datad => \ld_RI~combout\,
	combout => \regInstrucao|saida[6]~7_combout\);

-- Location: LCFF_X22_Y9_N9
\regInstrucao|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[6]~7_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(6));

-- Location: LCCOMB_X22_Y9_N16
\regInstrucao|saida[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[8]~9_combout\ = (\memoriaPrograma|altsyncram_component|auto_generated|q_a\(8) & \ld_RI~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(8),
	datad => \ld_RI~combout\,
	combout => \regInstrucao|saida[8]~9_combout\);

-- Location: LCFF_X22_Y9_N17
\regInstrucao|saida[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[8]~9_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(8));

-- Location: LCCOMB_X22_Y9_N18
\regInstrucao|saida[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[9]~10_combout\ = (\memoriaPrograma|altsyncram_component|auto_generated|q_a\(9) & \ld_RI~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(9),
	datad => \ld_RI~combout\,
	combout => \regInstrucao|saida[9]~10_combout\);

-- Location: LCFF_X22_Y9_N19
\regInstrucao|saida[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[9]~10_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(9));

-- Location: LCCOMB_X22_Y9_N12
\regInstrucao|saida[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[10]~11_combout\ = (\memoriaPrograma|altsyncram_component|auto_generated|q_a\(10) & \ld_RI~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(10),
	datad => \ld_RI~combout\,
	combout => \regInstrucao|saida[10]~11_combout\);

-- Location: LCFF_X22_Y9_N13
\regInstrucao|saida[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[10]~11_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(10));

-- Location: LCCOMB_X22_Y9_N10
\regInstrucao|saida[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[11]~12_combout\ = (\ld_RI~combout\ & \memoriaPrograma|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RI~combout\,
	datad => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(11),
	combout => \regInstrucao|saida[11]~12_combout\);

-- Location: LCFF_X22_Y9_N11
\regInstrucao|saida[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[11]~12_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(11));

-- Location: LCCOMB_X22_Y9_N28
\regInstrucao|saida[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[12]~13_combout\ = (\ld_RI~combout\ & \memoriaPrograma|altsyncram_component|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RI~combout\,
	datad => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(12),
	combout => \regInstrucao|saida[12]~13_combout\);

-- Location: LCFF_X22_Y9_N29
\regInstrucao|saida[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[12]~13_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(12));

-- Location: LCCOMB_X22_Y9_N14
\regInstrucao|saida[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[13]~14_combout\ = (\ld_RI~combout\ & \memoriaPrograma|altsyncram_component|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RI~combout\,
	datad => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(13),
	combout => \regInstrucao|saida[13]~14_combout\);

-- Location: LCFF_X22_Y9_N15
\regInstrucao|saida[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[13]~14_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(13));

-- Location: LCCOMB_X22_Y9_N4
\regInstrucao|saida[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[14]~15_combout\ = (\memoriaPrograma|altsyncram_component|auto_generated|q_a\(14) & \ld_RI~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(14),
	datad => \ld_RI~combout\,
	combout => \regInstrucao|saida[14]~15_combout\);

-- Location: LCFF_X22_Y9_N5
\regInstrucao|saida[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[14]~15_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(14));

-- Location: LCCOMB_X22_Y9_N2
\regInstrucao|saida[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \regInstrucao|saida[15]~16_combout\ = (\ld_RI~combout\ & \memoriaPrograma|altsyncram_component|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RI~combout\,
	datad => \memoriaPrograma|altsyncram_component|auto_generated|q_a\(15),
	combout => \regInstrucao|saida[15]~16_combout\);

-- Location: LCFF_X22_Y9_N3
\regInstrucao|saida[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regInstrucao|saida[15]~16_combout\,
	ena => \regInstrucao|saida[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regInstrucao|saida\(15));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux7_2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_mux7_2(1),
	combout => \sel_mux7_2~combout\(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux7_2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_mux7_2(2),
	combout => \sel_mux7_2~combout\(2));

-- Location: LCCOMB_X18_Y10_N0
\mux7_registers2|saidamux7[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|saidamux7[4]~0_combout\ = (\sel_mux7_2~combout\(2) & ((\sel_mux7_2~combout\(0)) # (\sel_mux7_2~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(0),
	datab => \sel_mux7_2~combout\(1),
	datac => \sel_mux7_2~combout\(2),
	combout => \mux7_registers2|saidamux7[4]~0_combout\);

-- Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(0),
	combout => \in_RE~combout\(0));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_RE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_RE,
	combout => \ld_RE~combout\);

-- Location: LCCOMB_X21_Y8_N28
\inRegister|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[0]~0_combout\ = (\in_RE~combout\(0) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(0),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[0]~0_combout\);

-- Location: PIN_M12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_RE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_RE,
	combout => \reset_RE~combout\);

-- Location: LCCOMB_X25_Y8_N2
\inRegister|saida[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[0]~1_combout\ = (\reset_RE~combout\) # (\ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_RE~combout\,
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[0]~1_combout\);

-- Location: LCFF_X21_Y8_N29
\inRegister|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[0]~0_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux7_1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_mux7_1(1),
	combout => \sel_mux7_1~combout\(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux7_1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_mux7_1(2),
	combout => \sel_mux7_1~combout\(2));

-- Location: LCCOMB_X18_Y10_N10
\mux7_registers1|saidamux7[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|saidamux7[1]~1_combout\ = (\sel_mux7_1~combout\(1)) # (!\sel_mux7_1~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_mux7_1~combout\(1),
	datad => \sel_mux7_1~combout\(2),
	combout => \mux7_registers1|saidamux7[1]~1_combout\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux7_1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_mux7_1(0),
	combout => \sel_mux7_1~combout\(0));

-- Location: LCCOMB_X18_Y10_N12
\mux7_registers1|saidamux7[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|saidamux7[1]~0_combout\ = (\sel_mux7_1~combout\(2) & ((\sel_mux7_1~combout\(0)) # (\sel_mux7_1~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_mux7_1~combout\(0),
	datac => \sel_mux7_1~combout\(1),
	datad => \sel_mux7_1~combout\(2),
	combout => \mux7_registers1|saidamux7[1]~0_combout\);

-- Location: LCCOMB_X13_Y10_N26
\mux7_registers1|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux15~2_combout\ = (\mux7_registers1|saidamux7[1]~1_combout\ & (((\mux7_registers1|saidamux7[1]~0_combout\)))) # (!\mux7_registers1|saidamux7[1]~1_combout\ & ((\mux7_registers1|saidamux7[1]~0_combout\ & (\r5|saida\(0))) # 
-- (!\mux7_registers1|saidamux7[1]~0_combout\ & ((\r4|saida\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r5|saida\(0),
	datab => \mux7_registers1|saidamux7[1]~1_combout\,
	datac => \mux7_registers1|saidamux7[1]~0_combout\,
	datad => \r4|saida\(0),
	combout => \mux7_registers1|Mux15~2_combout\);

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_r6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_r6,
	combout => \ld_r6~combout\);

-- Location: LCCOMB_X17_Y8_N16
\r6|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[0]~0_combout\ = (\mux1|saida\(0) & \ld_r6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(0),
	datac => \ld_r6~combout\,
	combout => \r6|saida[0]~0_combout\);

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_r6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_r6,
	combout => \reset_r6~combout\);

-- Location: LCCOMB_X17_Y8_N0
\r6|saida[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[14]~1_combout\ = (\ld_r6~combout\) # (\reset_r6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r6~combout\,
	datad => \reset_r6~combout\,
	combout => \r6|saida[14]~1_combout\);

-- Location: LCFF_X17_Y8_N17
\r6|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[0]~0_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(0));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_r1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_r1,
	combout => \ld_r1~combout\);

-- Location: LCCOMB_X20_Y10_N24
\r1|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[0]~0_combout\ = (\ld_r1~combout\ & \mux1|saida\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_r1~combout\,
	datad => \mux1|saida\(0),
	combout => \r1|saida[0]~0_combout\);

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_r1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_r1,
	combout => \reset_r1~combout\);

-- Location: LCCOMB_X21_Y9_N0
\r1|saida[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[13]~1_combout\ = (\reset_r1~combout\) # (\ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_r1~combout\,
	datad => \ld_r1~combout\,
	combout => \r1|saida[13]~1_combout\);

-- Location: LCFF_X20_Y10_N25
\r1|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[0]~0_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_r0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_r0,
	combout => \ld_r0~combout\);

-- Location: LCCOMB_X20_Y10_N2
\r0|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[0]~0_combout\ = (\mux1|saida\(0) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(0),
	datad => \ld_r0~combout\,
	combout => \r0|saida[0]~0_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_r0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_r0,
	combout => \reset_r0~combout\);

-- Location: LCCOMB_X20_Y10_N20
\r0|saida[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[9]~1_combout\ = (\reset_r0~combout\) # (\ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_r0~combout\,
	datad => \ld_r0~combout\,
	combout => \r0|saida[9]~1_combout\);

-- Location: LCFF_X20_Y10_N3
\r0|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[0]~0_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(0));

-- Location: LCCOMB_X20_Y10_N8
\mux7_registers1|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux15~0_combout\ = (\sel_mux7_1~combout\(0) & (((\sel_mux7_1~combout\(1))))) # (!\sel_mux7_1~combout\(0) & ((\sel_mux7_1~combout\(1) & (\r2|saida\(0))) # (!\sel_mux7_1~combout\(1) & ((\r0|saida\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|saida\(0),
	datab => \sel_mux7_1~combout\(0),
	datac => \sel_mux7_1~combout\(1),
	datad => \r0|saida\(0),
	combout => \mux7_registers1|Mux15~0_combout\);

-- Location: LCCOMB_X19_Y10_N12
\mux7_registers1|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux15~1_combout\ = (\mux7_registers1|Mux15~0_combout\ & ((\r3|saida\(0)) # ((!\sel_mux7_1~combout\(0))))) # (!\mux7_registers1|Mux15~0_combout\ & (((\r1|saida\(0) & \sel_mux7_1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|saida\(0),
	datab => \r1|saida\(0),
	datac => \mux7_registers1|Mux15~0_combout\,
	datad => \sel_mux7_1~combout\(0),
	combout => \mux7_registers1|Mux15~1_combout\);

-- Location: LCCOMB_X14_Y10_N6
\mux7_registers1|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux15~3_combout\ = (\mux7_registers1|saidamux7[1]~1_combout\ & ((\mux7_registers1|Mux15~2_combout\ & (\r6|saida\(0))) # (!\mux7_registers1|Mux15~2_combout\ & ((\mux7_registers1|Mux15~1_combout\))))) # 
-- (!\mux7_registers1|saidamux7[1]~1_combout\ & (\mux7_registers1|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~1_combout\,
	datab => \mux7_registers1|Mux15~2_combout\,
	datac => \r6|saida\(0),
	datad => \mux7_registers1|Mux15~1_combout\,
	combout => \mux7_registers1|Mux15~3_combout\);

-- Location: LCFF_X14_Y10_N7
\mux7_registers1|saidamux7[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(0));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux5_1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_mux5_1(0),
	combout => \sel_mux5_1~combout\(0));

-- Location: LCCOMB_X21_Y8_N18
\mux1|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux15~0_combout\ = (\sel_mux5_1~combout\(1) & (((\sel_mux5_1~combout\(0))))) # (!\sel_mux5_1~combout\(1) & ((\sel_mux5_1~combout\(0) & ((\mux7_registers1|saidamux7\(0)))) # (!\sel_mux5_1~combout\(0) & (\inRegister|saida\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \inRegister|saida\(0),
	datac => \mux7_registers1|saidamux7\(0),
	datad => \sel_mux5_1~combout\(0),
	combout => \mux1|Mux15~0_combout\);

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_addr(0),
	combout => \MD_addr~combout\(0));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_addr(1),
	combout => \MD_addr~combout\(1));

-- Location: PIN_L12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_addr(2),
	combout => \MD_addr~combout\(2));

-- Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_addr(3),
	combout => \MD_addr~combout\(3));

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_addr(4),
	combout => \MD_addr~combout\(4));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_addr(5),
	combout => \MD_addr~combout\(5));

-- Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_addr[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_addr(6),
	combout => \MD_addr~combout\(6));

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MD_addr[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MD_addr(7),
	combout => \MD_addr~combout\(7));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux5_1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_mux5_1(1),
	combout => \sel_mux5_1~combout\(1));

-- Location: LCCOMB_X20_Y8_N30
\mux1|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux14~0_combout\ = (\sel_mux5_1~combout\(0) & (((\sel_mux5_1~combout\(1))))) # (!\sel_mux5_1~combout\(0) & ((\sel_mux5_1~combout\(1) & ((\regInstrucao|saida\(1)))) # (!\sel_mux5_1~combout\(1) & (\inRegister|saida\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRegister|saida\(1),
	datab => \sel_mux5_1~combout\(0),
	datac => \regInstrucao|saida\(1),
	datad => \sel_mux5_1~combout\(1),
	combout => \mux1|Mux14~0_combout\);

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_r4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_r4,
	combout => \ld_r4~combout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_r5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_r5,
	combout => \ld_r5~combout\);

-- Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(3),
	combout => \in_RE~combout\(3));

-- Location: LCCOMB_X21_Y8_N20
\inRegister|saida[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[3]~4_combout\ = (\in_RE~combout\(3) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(3),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[3]~4_combout\);

-- Location: LCFF_X21_Y8_N21
\inRegister|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[3]~4_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(3));

-- Location: LCCOMB_X21_Y8_N14
\mux1|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux12~0_combout\ = (\sel_mux5_1~combout\(1) & ((\regInstrucao|saida\(3)) # ((\sel_mux5_1~combout\(0))))) # (!\sel_mux5_1~combout\(1) & (((\inRegister|saida\(3) & !\sel_mux5_1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \regInstrucao|saida\(3),
	datac => \inRegister|saida\(3),
	datad => \sel_mux5_1~combout\(0),
	combout => \mux1|Mux12~0_combout\);

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(5),
	combout => \in_RE~combout\(5));

-- Location: LCCOMB_X21_Y8_N30
\inRegister|saida[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[5]~6_combout\ = (\in_RE~combout\(5) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(5),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[5]~6_combout\);

-- Location: LCFF_X21_Y8_N31
\inRegister|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[5]~6_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(5));

-- Location: LCCOMB_X21_Y8_N16
\mux1|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux10~0_combout\ = (\sel_mux5_1~combout\(0) & (((\sel_mux5_1~combout\(1))))) # (!\sel_mux5_1~combout\(0) & ((\sel_mux5_1~combout\(1) & ((\regInstrucao|saida\(5)))) # (!\sel_mux5_1~combout\(1) & (\inRegister|saida\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(0),
	datab => \inRegister|saida\(5),
	datac => \sel_mux5_1~combout\(1),
	datad => \regInstrucao|saida\(5),
	combout => \mux1|Mux10~0_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(7),
	combout => \in_RE~combout\(7));

-- Location: LCCOMB_X21_Y8_N26
\inRegister|saida[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[7]~8_combout\ = (\in_RE~combout\(7) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(7),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[7]~8_combout\);

-- Location: LCFF_X21_Y8_N27
\inRegister|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[7]~8_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(7));

-- Location: LCCOMB_X22_Y8_N14
\mux1|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux8~0_combout\ = (\sel_mux5_1~combout\(1) & (((\regInstrucao|saida\(7)) # (\sel_mux5_1~combout\(0))))) # (!\sel_mux5_1~combout\(1) & (\inRegister|saida\(7) & ((!\sel_mux5_1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \inRegister|saida\(7),
	datac => \regInstrucao|saida\(7),
	datad => \sel_mux5_1~combout\(0),
	combout => \mux1|Mux8~0_combout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(8),
	combout => \in_RE~combout\(8));

-- Location: LCCOMB_X25_Y8_N30
\inRegister|saida[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[8]~9_combout\ = (\in_RE~combout\(8) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(8),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[8]~9_combout\);

-- Location: LCFF_X25_Y8_N31
\inRegister|saida[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[8]~9_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(8));

-- Location: LCCOMB_X24_Y8_N22
\mux1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux7~0_combout\ = (\sel_mux5_1~combout\(0) & ((\mux7_registers1|saidamux7\(8)) # ((\sel_mux5_1~combout\(1))))) # (!\sel_mux5_1~combout\(0) & (((\inRegister|saida\(8) & !\sel_mux5_1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(8),
	datab => \inRegister|saida\(8),
	datac => \sel_mux5_1~combout\(0),
	datad => \sel_mux5_1~combout\(1),
	combout => \mux1|Mux7~0_combout\);

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(10),
	combout => \in_RE~combout\(10));

-- Location: LCCOMB_X21_Y8_N24
\inRegister|saida[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[10]~11_combout\ = (\in_RE~combout\(10) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(10),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[10]~11_combout\);

-- Location: LCFF_X21_Y8_N25
\inRegister|saida[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[10]~11_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(10));

-- Location: LCCOMB_X21_Y8_N22
\mux1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux5~0_combout\ = (\sel_mux5_1~combout\(1) & (((\sel_mux5_1~combout\(0))))) # (!\sel_mux5_1~combout\(1) & ((\sel_mux5_1~combout\(0) & (\mux7_registers1|saidamux7\(10))) # (!\sel_mux5_1~combout\(0) & ((\inRegister|saida\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \mux7_registers1|saidamux7\(10),
	datac => \inRegister|saida\(10),
	datad => \sel_mux5_1~combout\(0),
	combout => \mux1|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y8_N10
\r6|saida[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[11]~12_combout\ = (\mux1|saida\(11) & \ld_r6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(11),
	datac => \ld_r6~combout\,
	combout => \r6|saida[11]~12_combout\);

-- Location: LCFF_X17_Y8_N11
\r6|saida[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[11]~12_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(11));

-- Location: LCCOMB_X20_Y8_N28
\mux1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux4~0_combout\ = (\sel_mux5_1~combout\(0) & (((\sel_mux5_1~combout\(1))))) # (!\sel_mux5_1~combout\(0) & ((\sel_mux5_1~combout\(1) & ((\regInstrucao|saida\(11)))) # (!\sel_mux5_1~combout\(1) & (\inRegister|saida\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inRegister|saida\(11),
	datab => \sel_mux5_1~combout\(0),
	datac => \regInstrucao|saida\(11),
	datad => \sel_mux5_1~combout\(1),
	combout => \mux1|Mux4~0_combout\);

-- Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(12),
	combout => \in_RE~combout\(12));

-- Location: LCCOMB_X20_Y8_N4
\inRegister|saida[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[12]~13_combout\ = (\in_RE~combout\(12) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(12),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[12]~13_combout\);

-- Location: LCFF_X20_Y8_N5
\inRegister|saida[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[12]~13_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(12));

-- Location: LCCOMB_X20_Y8_N18
\mux1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux3~0_combout\ = (\sel_mux5_1~combout\(1) & (((\sel_mux5_1~combout\(0))))) # (!\sel_mux5_1~combout\(1) & ((\sel_mux5_1~combout\(0) & ((\mux7_registers1|saidamux7\(12)))) # (!\sel_mux5_1~combout\(0) & (\inRegister|saida\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \inRegister|saida\(12),
	datac => \sel_mux5_1~combout\(0),
	datad => \mux7_registers1|saidamux7\(12),
	combout => \mux1|Mux3~0_combout\);

-- Location: M4K_X23_Y8
\memoriaDados|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MemoriadeDados:memoriaDados|altsyncram:altsyncram_component|altsyncram_vsa1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \ld_MEM~combout\,
	clk0 => \clock~clkctrl_outclk\,
	portadatain => \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(15),
	combout => \in_RE~combout\(15));

-- Location: LCCOMB_X25_Y8_N14
\inRegister|saida[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[15]~16_combout\ = (\ld_RE~combout\ & \in_RE~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RE~combout\,
	datad => \in_RE~combout\(15),
	combout => \inRegister|saida[15]~16_combout\);

-- Location: LCFF_X25_Y8_N15
\inRegister|saida[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[15]~16_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(15));

-- Location: LCCOMB_X25_Y8_N24
\mux1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux0~0_combout\ = (\sel_mux5_1~combout\(1) & ((\sel_mux5_1~combout\(0)) # ((\regInstrucao|saida\(15))))) # (!\sel_mux5_1~combout\(1) & (!\sel_mux5_1~combout\(0) & (\inRegister|saida\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \sel_mux5_1~combout\(0),
	datac => \inRegister|saida\(15),
	datad => \regInstrucao|saida\(15),
	combout => \mux1|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y8_N12
\mux1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux0~1_combout\ = (\sel_mux5_1~combout\(0) & ((\mux1|Mux0~0_combout\ & ((\memoriaDados|altsyncram_component|auto_generated|q_a\(15)))) # (!\mux1|Mux0~0_combout\ & (\mux7_registers1|saidamux7\(15))))) # (!\sel_mux5_1~combout\(0) & 
-- (((\mux1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(15),
	datab => \sel_mux5_1~combout\(0),
	datac => \memoriaDados|altsyncram_component|auto_generated|q_a\(15),
	datad => \mux1|Mux0~0_combout\,
	combout => \mux1|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y8_N18
\mux1|saida[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[15]~feeder_combout\ = \mux1|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux0~1_combout\,
	combout => \mux1|saida[15]~feeder_combout\);

-- Location: LCCOMB_X18_Y8_N28
\r4|saida[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[15]~16_combout\ = (\ld_r4~combout\ & \mux1|saida\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_r4~combout\,
	datad => \mux1|saida\(15),
	combout => \r4|saida[15]~16_combout\);

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_r4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_r4,
	combout => \reset_r4~combout\);

-- Location: LCCOMB_X18_Y8_N10
\r4|saida[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[4]~1_combout\ = (\reset_r4~combout\) # (\ld_r4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_r4~combout\,
	datad => \ld_r4~combout\,
	combout => \r4|saida[4]~1_combout\);

-- Location: LCFF_X18_Y8_N29
\r4|saida[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[15]~16_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(15));

-- Location: LCCOMB_X18_Y10_N14
\mux7_registers2|saidamux7[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|saidamux7[4]~1_combout\ = (\sel_mux7_2~combout\(1)) # (!\sel_mux7_2~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_mux7_2~combout\(2),
	datad => \sel_mux7_2~combout\(1),
	combout => \mux7_registers2|saidamux7[4]~1_combout\);

-- Location: LCCOMB_X18_Y9_N20
\mux7_registers2|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux0~2_combout\ = (\mux7_registers2|saidamux7[4]~1_combout\ & (((\mux7_registers2|saidamux7[4]~0_combout\)))) # (!\mux7_registers2|saidamux7[4]~1_combout\ & ((\mux7_registers2|saidamux7[4]~0_combout\ & (\r5|saida\(15))) # 
-- (!\mux7_registers2|saidamux7[4]~0_combout\ & ((\r4|saida\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r5|saida\(15),
	datab => \r4|saida\(15),
	datac => \mux7_registers2|saidamux7[4]~1_combout\,
	datad => \mux7_registers2|saidamux7[4]~0_combout\,
	combout => \mux7_registers2|Mux0~2_combout\);

-- Location: LCCOMB_X20_Y9_N8
\r1|saida[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[15]~16_combout\ = (\mux1|saida\(15) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(15),
	datad => \ld_r1~combout\,
	combout => \r1|saida[15]~16_combout\);

-- Location: LCFF_X20_Y9_N9
\r1|saida[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[15]~16_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(15));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux7_2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_mux7_2(0),
	combout => \sel_mux7_2~combout\(0));

-- Location: LCCOMB_X19_Y9_N2
\r3|saida[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[15]~16_combout\ = (\ld_r3~combout\ & \mux1|saida\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_r3~combout\,
	datac => \mux1|saida\(15),
	combout => \r3|saida[15]~16_combout\);

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_r3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_r3,
	combout => \reset_r3~combout\);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_r3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_r3,
	combout => \ld_r3~combout\);

-- Location: LCCOMB_X19_Y8_N20
\r3|saida[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[5]~1_combout\ = (\reset_r3~combout\) # (\ld_r3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_r3~combout\,
	datad => \ld_r3~combout\,
	combout => \r3|saida[5]~1_combout\);

-- Location: LCFF_X19_Y9_N3
\r3|saida[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[15]~16_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(15));

-- Location: LCCOMB_X19_Y9_N20
\mux7_registers2|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux0~1_combout\ = (\mux7_registers2|Mux0~0_combout\ & (((\r3|saida\(15)) # (!\sel_mux7_2~combout\(0))))) # (!\mux7_registers2|Mux0~0_combout\ & (\r1|saida\(15) & (\sel_mux7_2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|Mux0~0_combout\,
	datab => \r1|saida\(15),
	datac => \sel_mux7_2~combout\(0),
	datad => \r3|saida\(15),
	combout => \mux7_registers2|Mux0~1_combout\);

-- Location: LCCOMB_X18_Y9_N28
\mux7_registers2|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux0~3_combout\ = (\mux7_registers2|saidamux7[4]~1_combout\ & ((\mux7_registers2|Mux0~2_combout\ & (\r6|saida\(15))) # (!\mux7_registers2|Mux0~2_combout\ & ((\mux7_registers2|Mux0~1_combout\))))) # 
-- (!\mux7_registers2|saidamux7[4]~1_combout\ & (((\mux7_registers2|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~1_combout\,
	datab => \r6|saida\(15),
	datac => \mux7_registers2|Mux0~2_combout\,
	datad => \mux7_registers2|Mux0~1_combout\,
	combout => \mux7_registers2|Mux0~3_combout\);

-- Location: LCFF_X18_Y9_N29
\mux7_registers2|saidamux7[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(15));

-- Location: LCCOMB_X12_Y9_N26
\alu|saida~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~49_combout\ = (\mux7_registers1|saidamux7\(15) & \mux7_registers2|saidamux7\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers1|saidamux7\(15),
	datad => \mux7_registers2|saidamux7\(15),
	combout => \alu|saida~49_combout\);

-- Location: LCCOMB_X12_Y9_N24
\alu|saida~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~50_combout\ = (\mux7_registers1|saidamux7\(15)) # (\mux7_registers2|saidamux7\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers1|saidamux7\(15),
	datad => \mux7_registers2|saidamux7\(15),
	combout => \alu|saida~50_combout\);

-- Location: LCCOMB_X13_Y9_N16
\alu|saida[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[15]~15_combout\ = (\sel_ULA~combout\(0) & ((\alu|saida~50_combout\))) # (!\sel_ULA~combout\(0) & (\alu|saida~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_ULA~combout\(0),
	datab => \alu|saida~49_combout\,
	datad => \alu|saida~50_combout\,
	combout => \alu|saida[15]~15_combout\);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_ULA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_ULA(1),
	combout => \sel_ULA~combout\(1));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_ULA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_ULA(2),
	combout => \sel_ULA~combout\(2));

-- Location: LCCOMB_X13_Y11_N2
\alu|saida[10]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[10]~19_combout\ = (\sel_ULA~combout\(1)) # (!\sel_ULA~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_ULA~combout\(1),
	datac => \sel_ULA~combout\(2),
	combout => \alu|saida[10]~19_combout\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_ULA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_ULA(0),
	combout => \sel_ULA~combout\(0));

-- Location: LCCOMB_X13_Y9_N22
\alu|Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~47_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(15),
	combout => \alu|Add0~47_combout\);

-- Location: LCCOMB_X18_Y8_N18
\r4|saida[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[13]~14_combout\ = (\mux1|saida\(13) & \ld_r4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(13),
	datad => \ld_r4~combout\,
	combout => \r4|saida[13]~14_combout\);

-- Location: LCFF_X18_Y8_N19
\r4|saida[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[13]~14_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(13));

-- Location: LCCOMB_X18_Y9_N22
\mux7_registers2|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux2~2_combout\ = (\mux7_registers2|saidamux7[4]~1_combout\ & (((\mux7_registers2|saidamux7[4]~0_combout\)))) # (!\mux7_registers2|saidamux7[4]~1_combout\ & ((\mux7_registers2|saidamux7[4]~0_combout\ & (\r5|saida\(13))) # 
-- (!\mux7_registers2|saidamux7[4]~0_combout\ & ((\r4|saida\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r5|saida\(13),
	datab => \r4|saida\(13),
	datac => \mux7_registers2|saidamux7[4]~1_combout\,
	datad => \mux7_registers2|saidamux7[4]~0_combout\,
	combout => \mux7_registers2|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y9_N8
\r3|saida[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[13]~14_combout\ = (\ld_r3~combout\ & \mux1|saida\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_r3~combout\,
	datad => \mux1|saida\(13),
	combout => \r3|saida[13]~14_combout\);

-- Location: LCFF_X19_Y9_N9
\r3|saida[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[13]~14_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(13));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_r2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_r2,
	combout => \ld_r2~combout\);

-- Location: LCCOMB_X22_Y10_N14
\r2|saida[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[13]~14_combout\ = (\mux1|saida\(13) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(13),
	datad => \ld_r2~combout\,
	combout => \r2|saida[13]~14_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_r2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_r2,
	combout => \reset_r2~combout\);

-- Location: LCCOMB_X24_Y10_N8
\r2|saida[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[2]~1_combout\ = (\reset_r2~combout\) # (\ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_r2~combout\,
	datad => \ld_r2~combout\,
	combout => \r2|saida[2]~1_combout\);

-- Location: LCFF_X22_Y10_N15
\r2|saida[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[13]~14_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(13));

-- Location: LCCOMB_X19_Y9_N26
\mux7_registers2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux2~0_combout\ = (\sel_mux7_2~combout\(1) & (((\sel_mux7_2~combout\(0)) # (\r2|saida\(13))))) # (!\sel_mux7_2~combout\(1) & (\r0|saida\(13) & (!\sel_mux7_2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r0|saida\(13),
	datab => \sel_mux7_2~combout\(1),
	datac => \sel_mux7_2~combout\(0),
	datad => \r2|saida\(13),
	combout => \mux7_registers2|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y9_N30
\mux7_registers2|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux2~1_combout\ = (\sel_mux7_2~combout\(0) & ((\mux7_registers2|Mux2~0_combout\ & ((\r3|saida\(13)))) # (!\mux7_registers2|Mux2~0_combout\ & (\r1|saida\(13))))) # (!\sel_mux7_2~combout\(0) & (((\mux7_registers2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|saida\(13),
	datab => \r3|saida\(13),
	datac => \sel_mux7_2~combout\(0),
	datad => \mux7_registers2|Mux2~0_combout\,
	combout => \mux7_registers2|Mux2~1_combout\);

-- Location: LCCOMB_X18_Y9_N10
\mux7_registers2|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux2~3_combout\ = (\mux7_registers2|saidamux7[4]~1_combout\ & ((\mux7_registers2|Mux2~2_combout\ & (\r6|saida\(13))) # (!\mux7_registers2|Mux2~2_combout\ & ((\mux7_registers2|Mux2~1_combout\))))) # 
-- (!\mux7_registers2|saidamux7[4]~1_combout\ & (\mux7_registers2|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~1_combout\,
	datab => \mux7_registers2|Mux2~2_combout\,
	datac => \r6|saida\(13),
	datad => \mux7_registers2|Mux2~1_combout\,
	combout => \mux7_registers2|Mux2~3_combout\);

-- Location: LCFF_X18_Y9_N11
\mux7_registers2|saidamux7[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(13));

-- Location: LCCOMB_X14_Y9_N26
\alu|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~41_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(13),
	combout => \alu|Add0~41_combout\);

-- Location: LCCOMB_X17_Y8_N20
\r6|saida[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[12]~13_combout\ = (\ld_r6~combout\ & \mux1|saida\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r6~combout\,
	datad => \mux1|saida\(12),
	combout => \r6|saida[12]~13_combout\);

-- Location: LCFF_X17_Y8_N21
\r6|saida[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[12]~13_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(12));

-- Location: LCCOMB_X19_Y10_N2
\r1|saida[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[12]~13_combout\ = (\mux1|saida\(12) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(12),
	datad => \ld_r1~combout\,
	combout => \r1|saida[12]~13_combout\);

-- Location: LCFF_X19_Y10_N3
\r1|saida[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[12]~13_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(12));

-- Location: LCCOMB_X20_Y10_N18
\r0|saida[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[12]~13_combout\ = (\mux1|saida\(12) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(12),
	datad => \ld_r0~combout\,
	combout => \r0|saida[12]~13_combout\);

-- Location: LCFF_X20_Y10_N19
\r0|saida[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[12]~13_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(12));

-- Location: LCCOMB_X14_Y11_N8
\mux7_registers2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux3~0_combout\ = (\sel_mux7_2~combout\(0) & ((\sel_mux7_2~combout\(1)) # ((\r1|saida\(12))))) # (!\sel_mux7_2~combout\(0) & (!\sel_mux7_2~combout\(1) & ((\r0|saida\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(0),
	datab => \sel_mux7_2~combout\(1),
	datac => \r1|saida\(12),
	datad => \r0|saida\(12),
	combout => \mux7_registers2|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y8_N26
\r3|saida[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[12]~13_combout\ = (\mux1|saida\(12) & \ld_r3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(12),
	datac => \ld_r3~combout\,
	combout => \r3|saida[12]~13_combout\);

-- Location: LCFF_X18_Y8_N27
\r3|saida[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[12]~13_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(12));

-- Location: LCCOMB_X14_Y11_N26
\mux7_registers2|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux3~1_combout\ = (\mux7_registers2|Mux3~0_combout\ & (((\r3|saida\(12)) # (!\sel_mux7_2~combout\(1))))) # (!\mux7_registers2|Mux3~0_combout\ & (\r2|saida\(12) & ((\sel_mux7_2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|saida\(12),
	datab => \mux7_registers2|Mux3~0_combout\,
	datac => \r3|saida\(12),
	datad => \sel_mux7_2~combout\(1),
	combout => \mux7_registers2|Mux3~1_combout\);

-- Location: LCCOMB_X18_Y8_N16
\r4|saida[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[12]~13_combout\ = (\ld_r4~combout\ & \mux1|saida\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_r4~combout\,
	datac => \mux1|saida\(12),
	combout => \r4|saida[12]~13_combout\);

-- Location: LCFF_X18_Y8_N17
\r4|saida[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[12]~13_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(12));

-- Location: LCCOMB_X14_Y11_N12
\mux7_registers2|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux3~2_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & (((\mux7_registers2|saidamux7[4]~1_combout\)))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & ((\mux7_registers2|saidamux7[4]~1_combout\ & (\mux7_registers2|Mux3~1_combout\)) 
-- # (!\mux7_registers2|saidamux7[4]~1_combout\ & ((\r4|saida\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~0_combout\,
	datab => \mux7_registers2|Mux3~1_combout\,
	datac => \r4|saida\(12),
	datad => \mux7_registers2|saidamux7[4]~1_combout\,
	combout => \mux7_registers2|Mux3~2_combout\);

-- Location: LCCOMB_X14_Y11_N28
\mux7_registers2|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux3~3_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & ((\mux7_registers2|Mux3~2_combout\ & (\r6|saida\(12))) # (!\mux7_registers2|Mux3~2_combout\ & ((\r5|saida\(12)))))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & 
-- (((\mux7_registers2|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~0_combout\,
	datab => \r6|saida\(12),
	datac => \r5|saida\(12),
	datad => \mux7_registers2|Mux3~2_combout\,
	combout => \mux7_registers2|Mux3~3_combout\);

-- Location: LCFF_X14_Y11_N29
\mux7_registers2|saidamux7[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(12));

-- Location: LCCOMB_X14_Y11_N20
\alu|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~38_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(12),
	combout => \alu|Add0~38_combout\);

-- Location: LCCOMB_X20_Y9_N28
\r1|saida[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[11]~12_combout\ = (\mux1|saida\(11) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(11),
	datad => \ld_r1~combout\,
	combout => \r1|saida[11]~12_combout\);

-- Location: LCFF_X20_Y9_N29
\r1|saida[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[11]~12_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(11));

-- Location: LCCOMB_X20_Y9_N26
\r0|saida[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[11]~12_combout\ = (\mux1|saida\(11) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(11),
	datad => \ld_r0~combout\,
	combout => \r0|saida[11]~12_combout\);

-- Location: LCFF_X20_Y9_N27
\r0|saida[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[11]~12_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(11));

-- Location: LCCOMB_X22_Y10_N2
\r2|saida[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[11]~12_combout\ = (\mux1|saida\(11) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(11),
	datad => \ld_r2~combout\,
	combout => \r2|saida[11]~12_combout\);

-- Location: LCFF_X22_Y10_N3
\r2|saida[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[11]~12_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(11));

-- Location: LCCOMB_X17_Y9_N28
\mux7_registers2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux4~0_combout\ = (\sel_mux7_2~combout\(0) & (((\sel_mux7_2~combout\(1))))) # (!\sel_mux7_2~combout\(0) & ((\sel_mux7_2~combout\(1) & ((\r2|saida\(11)))) # (!\sel_mux7_2~combout\(1) & (\r0|saida\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(0),
	datab => \r0|saida\(11),
	datac => \sel_mux7_2~combout\(1),
	datad => \r2|saida\(11),
	combout => \mux7_registers2|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y9_N30
\mux7_registers2|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux4~1_combout\ = (\sel_mux7_2~combout\(0) & ((\mux7_registers2|Mux4~0_combout\ & (\r3|saida\(11))) # (!\mux7_registers2|Mux4~0_combout\ & ((\r1|saida\(11)))))) # (!\sel_mux7_2~combout\(0) & (((\mux7_registers2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|saida\(11),
	datab => \r1|saida\(11),
	datac => \sel_mux7_2~combout\(0),
	datad => \mux7_registers2|Mux4~0_combout\,
	combout => \mux7_registers2|Mux4~1_combout\);

-- Location: LCCOMB_X17_Y9_N16
\mux7_registers2|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux4~3_combout\ = (\mux7_registers2|Mux4~2_combout\ & (((\r6|saida\(11))) # (!\mux7_registers2|saidamux7[4]~1_combout\))) # (!\mux7_registers2|Mux4~2_combout\ & (\mux7_registers2|saidamux7[4]~1_combout\ & 
-- ((\mux7_registers2|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|Mux4~2_combout\,
	datab => \mux7_registers2|saidamux7[4]~1_combout\,
	datac => \r6|saida\(11),
	datad => \mux7_registers2|Mux4~1_combout\,
	combout => \mux7_registers2|Mux4~3_combout\);

-- Location: LCFF_X17_Y9_N17
\mux7_registers2|saidamux7[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(11));

-- Location: LCCOMB_X17_Y9_N26
\alu|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~35_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_ULA~combout\(0),
	datac => \mux7_registers2|saidamux7\(11),
	combout => \alu|Add0~35_combout\);

-- Location: LCCOMB_X18_Y8_N8
\r4|saida[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[9]~10_combout\ = (\ld_r4~combout\ & \mux1|saida\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_r4~combout\,
	datad => \mux1|saida\(9),
	combout => \r4|saida[9]~10_combout\);

-- Location: LCFF_X18_Y8_N9
\r4|saida[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[9]~10_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(9));

-- Location: LCCOMB_X17_Y10_N16
\r5|saida[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[9]~10_combout\ = (\ld_r5~combout\ & \mux1|saida\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \mux1|saida\(9),
	combout => \r5|saida[9]~10_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_r5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_r5,
	combout => \reset_r5~combout\);

-- Location: LCCOMB_X17_Y11_N16
\r5|saida[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[8]~1_combout\ = (\ld_r5~combout\) # (\reset_r5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \reset_r5~combout\,
	combout => \r5|saida[8]~1_combout\);

-- Location: LCFF_X17_Y10_N17
\r5|saida[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[9]~10_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(9));

-- Location: LCCOMB_X17_Y9_N14
\mux7_registers2|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux6~2_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & (((\r5|saida\(9)) # (\mux7_registers2|saidamux7[4]~1_combout\)))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & (\r4|saida\(9) & 
-- ((!\mux7_registers2|saidamux7[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~0_combout\,
	datab => \r4|saida\(9),
	datac => \r5|saida\(9),
	datad => \mux7_registers2|saidamux7[4]~1_combout\,
	combout => \mux7_registers2|Mux6~2_combout\);

-- Location: LCCOMB_X22_Y10_N22
\r2|saida[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[9]~10_combout\ = (\mux1|saida\(9) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(9),
	datad => \ld_r2~combout\,
	combout => \r2|saida[9]~10_combout\);

-- Location: LCFF_X22_Y10_N23
\r2|saida[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[9]~10_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(9));

-- Location: LCCOMB_X21_Y9_N10
\mux7_registers2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux6~0_combout\ = (\sel_mux7_2~combout\(1) & (((\sel_mux7_2~combout\(0)) # (\r2|saida\(9))))) # (!\sel_mux7_2~combout\(1) & (\r0|saida\(9) & (!\sel_mux7_2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r0|saida\(9),
	datab => \sel_mux7_2~combout\(1),
	datac => \sel_mux7_2~combout\(0),
	datad => \r2|saida\(9),
	combout => \mux7_registers2|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y9_N18
\mux7_registers2|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux6~1_combout\ = (\sel_mux7_2~combout\(0) & ((\mux7_registers2|Mux6~0_combout\ & (\r3|saida\(9))) # (!\mux7_registers2|Mux6~0_combout\ & ((\r1|saida\(9)))))) # (!\sel_mux7_2~combout\(0) & (((\mux7_registers2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|saida\(9),
	datab => \r1|saida\(9),
	datac => \sel_mux7_2~combout\(0),
	datad => \mux7_registers2|Mux6~0_combout\,
	combout => \mux7_registers2|Mux6~1_combout\);

-- Location: LCCOMB_X17_Y9_N6
\mux7_registers2|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux6~3_combout\ = (\mux7_registers2|saidamux7[4]~1_combout\ & ((\mux7_registers2|Mux6~2_combout\ & (\r6|saida\(9))) # (!\mux7_registers2|Mux6~2_combout\ & ((\mux7_registers2|Mux6~1_combout\))))) # 
-- (!\mux7_registers2|saidamux7[4]~1_combout\ & (((\mux7_registers2|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r6|saida\(9),
	datab => \mux7_registers2|saidamux7[4]~1_combout\,
	datac => \mux7_registers2|Mux6~2_combout\,
	datad => \mux7_registers2|Mux6~1_combout\,
	combout => \mux7_registers2|Mux6~3_combout\);

-- Location: LCFF_X17_Y9_N7
\mux7_registers2|saidamux7[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(9));

-- Location: LCCOMB_X17_Y9_N4
\alu|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~29_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(9),
	combout => \alu|Add0~29_combout\);

-- Location: LCCOMB_X21_Y9_N24
\r3|saida[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[8]~9_combout\ = (\mux1|saida\(8) & \ld_r3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(8),
	datac => \ld_r3~combout\,
	combout => \r3|saida[8]~9_combout\);

-- Location: LCFF_X21_Y9_N25
\r3|saida[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[8]~9_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(8));

-- Location: LCCOMB_X22_Y10_N28
\r2|saida[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[8]~9_combout\ = (\mux1|saida\(8) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(8),
	datad => \ld_r2~combout\,
	combout => \r2|saida[8]~9_combout\);

-- Location: LCFF_X22_Y10_N29
\r2|saida[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[8]~9_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(8));

-- Location: LCCOMB_X21_Y9_N2
\mux7_registers2|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux7~1_combout\ = (\mux7_registers2|Mux7~0_combout\ & (((\r3|saida\(8))) # (!\sel_mux7_2~combout\(1)))) # (!\mux7_registers2|Mux7~0_combout\ & (\sel_mux7_2~combout\(1) & ((\r2|saida\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|Mux7~0_combout\,
	datab => \sel_mux7_2~combout\(1),
	datac => \r3|saida\(8),
	datad => \r2|saida\(8),
	combout => \mux7_registers2|Mux7~1_combout\);

-- Location: LCCOMB_X18_Y8_N6
\r4|saida[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[8]~9_combout\ = (\ld_r4~combout\ & \mux1|saida\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_r4~combout\,
	datad => \mux1|saida\(8),
	combout => \r4|saida[8]~9_combout\);

-- Location: LCFF_X18_Y8_N7
\r4|saida[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[8]~9_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(8));

-- Location: LCCOMB_X13_Y10_N0
\mux7_registers2|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux7~2_combout\ = (\mux7_registers2|saidamux7[4]~1_combout\ & ((\mux7_registers2|saidamux7[4]~0_combout\) # ((\mux7_registers2|Mux7~1_combout\)))) # (!\mux7_registers2|saidamux7[4]~1_combout\ & (!\mux7_registers2|saidamux7[4]~0_combout\ & 
-- ((\r4|saida\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~1_combout\,
	datab => \mux7_registers2|saidamux7[4]~0_combout\,
	datac => \mux7_registers2|Mux7~1_combout\,
	datad => \r4|saida\(8),
	combout => \mux7_registers2|Mux7~2_combout\);

-- Location: LCCOMB_X13_Y10_N16
\mux7_registers2|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux7~3_combout\ = (\mux7_registers2|Mux7~2_combout\ & ((\r6|saida\(8)) # ((!\mux7_registers2|saidamux7[4]~0_combout\)))) # (!\mux7_registers2|Mux7~2_combout\ & (((\mux7_registers2|saidamux7[4]~0_combout\ & \r5|saida\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r6|saida\(8),
	datab => \mux7_registers2|Mux7~2_combout\,
	datac => \mux7_registers2|saidamux7[4]~0_combout\,
	datad => \r5|saida\(8),
	combout => \mux7_registers2|Mux7~3_combout\);

-- Location: LCFF_X13_Y10_N17
\mux7_registers2|saidamux7[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(8));

-- Location: LCCOMB_X14_Y9_N22
\alu|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~26_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_ULA~combout\(0),
	datac => \mux7_registers2|saidamux7\(8),
	combout => \alu|Add0~26_combout\);

-- Location: LCCOMB_X17_Y10_N22
\r5|saida[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[6]~7_combout\ = (\mux1|saida\(6) & \ld_r5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(6),
	datac => \ld_r5~combout\,
	combout => \r5|saida[6]~7_combout\);

-- Location: LCFF_X17_Y10_N23
\r5|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[6]~7_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(6));

-- Location: LCCOMB_X19_Y9_N14
\r3|saida[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[6]~7_combout\ = (\ld_r3~combout\ & \mux1|saida\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_r3~combout\,
	datad => \mux1|saida\(6),
	combout => \r3|saida[6]~7_combout\);

-- Location: LCFF_X19_Y9_N15
\r3|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[6]~7_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(6));

-- Location: LCCOMB_X22_Y10_N16
\r2|saida[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[6]~7_combout\ = (\mux1|saida\(6) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(6),
	datad => \ld_r2~combout\,
	combout => \r2|saida[6]~7_combout\);

-- Location: LCFF_X22_Y10_N17
\r2|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[6]~7_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(6));

-- Location: LCCOMB_X19_Y9_N0
\mux7_registers2|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux9~1_combout\ = (\mux7_registers2|Mux9~0_combout\ & ((\r3|saida\(6)) # ((!\sel_mux7_2~combout\(1))))) # (!\mux7_registers2|Mux9~0_combout\ & (((\sel_mux7_2~combout\(1) & \r2|saida\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|Mux9~0_combout\,
	datab => \r3|saida\(6),
	datac => \sel_mux7_2~combout\(1),
	datad => \r2|saida\(6),
	combout => \mux7_registers2|Mux9~1_combout\);

-- Location: LCCOMB_X15_Y10_N0
\mux7_registers2|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux9~2_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & (((\mux7_registers2|saidamux7[4]~1_combout\)))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & ((\mux7_registers2|saidamux7[4]~1_combout\ & 
-- ((\mux7_registers2|Mux9~1_combout\))) # (!\mux7_registers2|saidamux7[4]~1_combout\ & (\r4|saida\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|saida\(6),
	datab => \mux7_registers2|saidamux7[4]~0_combout\,
	datac => \mux7_registers2|saidamux7[4]~1_combout\,
	datad => \mux7_registers2|Mux9~1_combout\,
	combout => \mux7_registers2|Mux9~2_combout\);

-- Location: LCCOMB_X15_Y10_N12
\mux7_registers2|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux9~3_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & ((\mux7_registers2|Mux9~2_combout\ & (\r6|saida\(6))) # (!\mux7_registers2|Mux9~2_combout\ & ((\r5|saida\(6)))))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & 
-- (((\mux7_registers2|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r6|saida\(6),
	datab => \mux7_registers2|saidamux7[4]~0_combout\,
	datac => \r5|saida\(6),
	datad => \mux7_registers2|Mux9~2_combout\,
	combout => \mux7_registers2|Mux9~3_combout\);

-- Location: LCFF_X15_Y10_N13
\mux7_registers2|saidamux7[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(6));

-- Location: LCCOMB_X15_Y10_N10
\alu|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~20_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(6),
	combout => \alu|Add0~20_combout\);

-- Location: LCCOMB_X17_Y8_N12
\r6|saida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[2]~3_combout\ = (\ld_r6~combout\ & \mux1|saida\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r6~combout\,
	datad => \mux1|saida\(2),
	combout => \r6|saida[2]~3_combout\);

-- Location: LCFF_X17_Y8_N13
\r6|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[2]~3_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(2));

-- Location: LCCOMB_X19_Y10_N22
\r3|saida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[2]~3_combout\ = (\ld_r3~combout\ & \mux1|saida\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_r3~combout\,
	datad => \mux1|saida\(2),
	combout => \r3|saida[2]~3_combout\);

-- Location: LCFF_X19_Y10_N23
\r3|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[2]~3_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(2));

-- Location: LCCOMB_X19_Y10_N18
\r1|saida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[2]~3_combout\ = (\mux1|saida\(2) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(2),
	datad => \ld_r1~combout\,
	combout => \r1|saida[2]~3_combout\);

-- Location: LCFF_X19_Y10_N19
\r1|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[2]~3_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(2));

-- Location: LCCOMB_X20_Y10_N14
\r0|saida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[2]~3_combout\ = (\mux1|saida\(2) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(2),
	datad => \ld_r0~combout\,
	combout => \r0|saida[2]~3_combout\);

-- Location: LCFF_X20_Y10_N15
\r0|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[2]~3_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(2));

-- Location: LCCOMB_X19_Y10_N4
\mux7_registers2|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux13~0_combout\ = (\sel_mux7_2~combout\(1) & (((\sel_mux7_2~combout\(0))))) # (!\sel_mux7_2~combout\(1) & ((\sel_mux7_2~combout\(0) & (\r1|saida\(2))) # (!\sel_mux7_2~combout\(0) & ((\r0|saida\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(1),
	datab => \r1|saida\(2),
	datac => \r0|saida\(2),
	datad => \sel_mux7_2~combout\(0),
	combout => \mux7_registers2|Mux13~0_combout\);

-- Location: LCCOMB_X22_Y10_N12
\r2|saida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[2]~3_combout\ = (\mux1|saida\(2) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(2),
	datad => \ld_r2~combout\,
	combout => \r2|saida[2]~3_combout\);

-- Location: LCFF_X22_Y10_N13
\r2|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[2]~3_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(2));

-- Location: LCCOMB_X19_Y10_N8
\mux7_registers2|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux13~1_combout\ = (\sel_mux7_2~combout\(1) & ((\mux7_registers2|Mux13~0_combout\ & (\r3|saida\(2))) # (!\mux7_registers2|Mux13~0_combout\ & ((\r2|saida\(2)))))) # (!\sel_mux7_2~combout\(1) & (((\mux7_registers2|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(1),
	datab => \r3|saida\(2),
	datac => \mux7_registers2|Mux13~0_combout\,
	datad => \r2|saida\(2),
	combout => \mux7_registers2|Mux13~1_combout\);

-- Location: LCCOMB_X15_Y10_N22
\mux7_registers2|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux13~2_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & (((\mux7_registers2|saidamux7[4]~1_combout\)))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & ((\mux7_registers2|saidamux7[4]~1_combout\ & 
-- ((\mux7_registers2|Mux13~1_combout\))) # (!\mux7_registers2|saidamux7[4]~1_combout\ & (\r4|saida\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|saida\(2),
	datab => \mux7_registers2|saidamux7[4]~0_combout\,
	datac => \mux7_registers2|saidamux7[4]~1_combout\,
	datad => \mux7_registers2|Mux13~1_combout\,
	combout => \mux7_registers2|Mux13~2_combout\);

-- Location: LCCOMB_X15_Y10_N24
\mux7_registers2|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux13~3_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & ((\mux7_registers2|Mux13~2_combout\ & ((\r6|saida\(2)))) # (!\mux7_registers2|Mux13~2_combout\ & (\r5|saida\(2))))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & 
-- (((\mux7_registers2|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r5|saida\(2),
	datab => \r6|saida\(2),
	datac => \mux7_registers2|saidamux7[4]~0_combout\,
	datad => \mux7_registers2|Mux13~2_combout\,
	combout => \mux7_registers2|Mux13~3_combout\);

-- Location: LCFF_X15_Y10_N25
\mux7_registers2|saidamux7[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux13~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(2));

-- Location: LCCOMB_X14_Y10_N4
\alu|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~8_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(2),
	combout => \alu|Add0~8_combout\);

-- Location: LCCOMB_X21_Y10_N0
\r3|saida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[1]~2_combout\ = (\mux1|saida\(1) & \ld_r3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(1),
	datac => \ld_r3~combout\,
	combout => \r3|saida[1]~2_combout\);

-- Location: LCFF_X21_Y10_N1
\r3|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[1]~2_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(1));

-- Location: LCCOMB_X20_Y10_N6
\r1|saida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[1]~2_combout\ = (\ld_r1~combout\ & \mux1|saida\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_r1~combout\,
	datac => \mux1|saida\(1),
	combout => \r1|saida[1]~2_combout\);

-- Location: LCFF_X21_Y10_N9
\r1|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \r1|saida[1]~2_combout\,
	sload => VCC,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(1));

-- Location: LCCOMB_X20_Y10_N28
\r0|saida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[1]~2_combout\ = (\mux1|saida\(1) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(1),
	datad => \ld_r0~combout\,
	combout => \r0|saida[1]~2_combout\);

-- Location: LCFF_X20_Y10_N29
\r0|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[1]~2_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(1));

-- Location: LCCOMB_X22_Y10_N30
\r2|saida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[1]~2_combout\ = (\mux1|saida\(1) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(1),
	datad => \ld_r2~combout\,
	combout => \r2|saida[1]~2_combout\);

-- Location: LCFF_X22_Y10_N31
\r2|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[1]~2_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(1));

-- Location: LCCOMB_X21_Y10_N18
\mux7_registers2|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux14~0_combout\ = (\sel_mux7_2~combout\(1) & (((\sel_mux7_2~combout\(0)) # (\r2|saida\(1))))) # (!\sel_mux7_2~combout\(1) & (\r0|saida\(1) & (!\sel_mux7_2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(1),
	datab => \r0|saida\(1),
	datac => \sel_mux7_2~combout\(0),
	datad => \r2|saida\(1),
	combout => \mux7_registers2|Mux14~0_combout\);

-- Location: LCCOMB_X21_Y10_N8
\mux7_registers2|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux14~1_combout\ = (\sel_mux7_2~combout\(0) & ((\mux7_registers2|Mux14~0_combout\ & (\r3|saida\(1))) # (!\mux7_registers2|Mux14~0_combout\ & ((\r1|saida\(1)))))) # (!\sel_mux7_2~combout\(0) & (((\mux7_registers2|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(0),
	datab => \r3|saida\(1),
	datac => \r1|saida\(1),
	datad => \mux7_registers2|Mux14~0_combout\,
	combout => \mux7_registers2|Mux14~1_combout\);

-- Location: LCCOMB_X14_Y10_N12
\mux7_registers2|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux14~3_combout\ = (\mux7_registers2|Mux14~2_combout\ & (((\r6|saida\(1))) # (!\mux7_registers2|saidamux7[4]~1_combout\))) # (!\mux7_registers2|Mux14~2_combout\ & (\mux7_registers2|saidamux7[4]~1_combout\ & 
-- ((\mux7_registers2|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|Mux14~2_combout\,
	datab => \mux7_registers2|saidamux7[4]~1_combout\,
	datac => \r6|saida\(1),
	datad => \mux7_registers2|Mux14~1_combout\,
	combout => \mux7_registers2|Mux14~3_combout\);

-- Location: LCFF_X14_Y10_N13
\mux7_registers2|saidamux7[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(1));

-- Location: LCCOMB_X14_Y10_N14
\alu|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~5_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(1),
	combout => \alu|Add0~5_combout\);

-- Location: LCCOMB_X14_Y10_N8
\alu|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~0_combout\ = \sel_ULA~combout\(0) $ (\mux7_registers2|saidamux7\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_ULA~combout\(0),
	datad => \mux7_registers2|saidamux7\(0),
	combout => \alu|Add0~0_combout\);

-- Location: LCCOMB_X14_Y10_N16
\alu|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~2_cout\ = CARRY(\sel_ULA~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_ULA~combout\(0),
	datad => VCC,
	cout => \alu|Add0~2_cout\);

-- Location: LCCOMB_X14_Y10_N18
\alu|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~3_combout\ = (\mux7_registers1|saidamux7\(0) & ((\alu|Add0~0_combout\ & (\alu|Add0~2_cout\ & VCC)) # (!\alu|Add0~0_combout\ & (!\alu|Add0~2_cout\)))) # (!\mux7_registers1|saidamux7\(0) & ((\alu|Add0~0_combout\ & (!\alu|Add0~2_cout\)) # 
-- (!\alu|Add0~0_combout\ & ((\alu|Add0~2_cout\) # (GND)))))
-- \alu|Add0~4\ = CARRY((\mux7_registers1|saidamux7\(0) & (!\alu|Add0~0_combout\ & !\alu|Add0~2_cout\)) # (!\mux7_registers1|saidamux7\(0) & ((!\alu|Add0~2_cout\) # (!\alu|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(0),
	datab => \alu|Add0~0_combout\,
	datad => VCC,
	cin => \alu|Add0~2_cout\,
	combout => \alu|Add0~3_combout\,
	cout => \alu|Add0~4\);

-- Location: LCCOMB_X14_Y10_N20
\alu|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~6_combout\ = ((\mux7_registers1|saidamux7\(1) $ (\alu|Add0~5_combout\ $ (!\alu|Add0~4\)))) # (GND)
-- \alu|Add0~7\ = CARRY((\mux7_registers1|saidamux7\(1) & ((\alu|Add0~5_combout\) # (!\alu|Add0~4\))) # (!\mux7_registers1|saidamux7\(1) & (\alu|Add0~5_combout\ & !\alu|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(1),
	datab => \alu|Add0~5_combout\,
	datad => VCC,
	cin => \alu|Add0~4\,
	combout => \alu|Add0~6_combout\,
	cout => \alu|Add0~7\);

-- Location: LCCOMB_X14_Y10_N24
\alu|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~12_combout\ = ((\alu|Add0~11_combout\ $ (\mux7_registers1|saidamux7\(3) $ (!\alu|Add0~10\)))) # (GND)
-- \alu|Add0~13\ = CARRY((\alu|Add0~11_combout\ & ((\mux7_registers1|saidamux7\(3)) # (!\alu|Add0~10\))) # (!\alu|Add0~11_combout\ & (\mux7_registers1|saidamux7\(3) & !\alu|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add0~11_combout\,
	datab => \mux7_registers1|saidamux7\(3),
	datad => VCC,
	cin => \alu|Add0~10\,
	combout => \alu|Add0~12_combout\,
	cout => \alu|Add0~13\);

-- Location: LCCOMB_X14_Y10_N26
\alu|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~15_combout\ = (\alu|Add0~14_combout\ & ((\mux7_registers1|saidamux7\(4) & (\alu|Add0~13\ & VCC)) # (!\mux7_registers1|saidamux7\(4) & (!\alu|Add0~13\)))) # (!\alu|Add0~14_combout\ & ((\mux7_registers1|saidamux7\(4) & (!\alu|Add0~13\)) # 
-- (!\mux7_registers1|saidamux7\(4) & ((\alu|Add0~13\) # (GND)))))
-- \alu|Add0~16\ = CARRY((\alu|Add0~14_combout\ & (!\mux7_registers1|saidamux7\(4) & !\alu|Add0~13\)) # (!\alu|Add0~14_combout\ & ((!\alu|Add0~13\) # (!\mux7_registers1|saidamux7\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add0~14_combout\,
	datab => \mux7_registers1|saidamux7\(4),
	datad => VCC,
	cin => \alu|Add0~13\,
	combout => \alu|Add0~15_combout\,
	cout => \alu|Add0~16\);

-- Location: LCCOMB_X14_Y10_N28
\alu|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~18_combout\ = ((\alu|Add0~17_combout\ $ (\mux7_registers1|saidamux7\(5) $ (!\alu|Add0~16\)))) # (GND)
-- \alu|Add0~19\ = CARRY((\alu|Add0~17_combout\ & ((\mux7_registers1|saidamux7\(5)) # (!\alu|Add0~16\))) # (!\alu|Add0~17_combout\ & (\mux7_registers1|saidamux7\(5) & !\alu|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add0~17_combout\,
	datab => \mux7_registers1|saidamux7\(5),
	datad => VCC,
	cin => \alu|Add0~16\,
	combout => \alu|Add0~18_combout\,
	cout => \alu|Add0~19\);

-- Location: LCCOMB_X14_Y10_N30
\alu|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~21_combout\ = (\mux7_registers1|saidamux7\(6) & ((\alu|Add0~20_combout\ & (\alu|Add0~19\ & VCC)) # (!\alu|Add0~20_combout\ & (!\alu|Add0~19\)))) # (!\mux7_registers1|saidamux7\(6) & ((\alu|Add0~20_combout\ & (!\alu|Add0~19\)) # 
-- (!\alu|Add0~20_combout\ & ((\alu|Add0~19\) # (GND)))))
-- \alu|Add0~22\ = CARRY((\mux7_registers1|saidamux7\(6) & (!\alu|Add0~20_combout\ & !\alu|Add0~19\)) # (!\mux7_registers1|saidamux7\(6) & ((!\alu|Add0~19\) # (!\alu|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(6),
	datab => \alu|Add0~20_combout\,
	datad => VCC,
	cin => \alu|Add0~19\,
	combout => \alu|Add0~21_combout\,
	cout => \alu|Add0~22\);

-- Location: LCCOMB_X14_Y9_N0
\alu|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~24_combout\ = ((\alu|Add0~23_combout\ $ (\mux7_registers1|saidamux7\(7) $ (!\alu|Add0~22\)))) # (GND)
-- \alu|Add0~25\ = CARRY((\alu|Add0~23_combout\ & ((\mux7_registers1|saidamux7\(7)) # (!\alu|Add0~22\))) # (!\alu|Add0~23_combout\ & (\mux7_registers1|saidamux7\(7) & !\alu|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add0~23_combout\,
	datab => \mux7_registers1|saidamux7\(7),
	datad => VCC,
	cin => \alu|Add0~22\,
	combout => \alu|Add0~24_combout\,
	cout => \alu|Add0~25\);

-- Location: LCCOMB_X14_Y9_N2
\alu|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~27_combout\ = (\mux7_registers1|saidamux7\(8) & ((\alu|Add0~26_combout\ & (\alu|Add0~25\ & VCC)) # (!\alu|Add0~26_combout\ & (!\alu|Add0~25\)))) # (!\mux7_registers1|saidamux7\(8) & ((\alu|Add0~26_combout\ & (!\alu|Add0~25\)) # 
-- (!\alu|Add0~26_combout\ & ((\alu|Add0~25\) # (GND)))))
-- \alu|Add0~28\ = CARRY((\mux7_registers1|saidamux7\(8) & (!\alu|Add0~26_combout\ & !\alu|Add0~25\)) # (!\mux7_registers1|saidamux7\(8) & ((!\alu|Add0~25\) # (!\alu|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(8),
	datab => \alu|Add0~26_combout\,
	datad => VCC,
	cin => \alu|Add0~25\,
	combout => \alu|Add0~27_combout\,
	cout => \alu|Add0~28\);

-- Location: LCCOMB_X14_Y9_N4
\alu|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~30_combout\ = ((\mux7_registers1|saidamux7\(9) $ (\alu|Add0~29_combout\ $ (!\alu|Add0~28\)))) # (GND)
-- \alu|Add0~31\ = CARRY((\mux7_registers1|saidamux7\(9) & ((\alu|Add0~29_combout\) # (!\alu|Add0~28\))) # (!\mux7_registers1|saidamux7\(9) & (\alu|Add0~29_combout\ & !\alu|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(9),
	datab => \alu|Add0~29_combout\,
	datad => VCC,
	cin => \alu|Add0~28\,
	combout => \alu|Add0~30_combout\,
	cout => \alu|Add0~31\);

-- Location: LCCOMB_X14_Y9_N6
\alu|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~33_combout\ = (\alu|Add0~32_combout\ & ((\mux7_registers1|saidamux7\(10) & (\alu|Add0~31\ & VCC)) # (!\mux7_registers1|saidamux7\(10) & (!\alu|Add0~31\)))) # (!\alu|Add0~32_combout\ & ((\mux7_registers1|saidamux7\(10) & (!\alu|Add0~31\)) # 
-- (!\mux7_registers1|saidamux7\(10) & ((\alu|Add0~31\) # (GND)))))
-- \alu|Add0~34\ = CARRY((\alu|Add0~32_combout\ & (!\mux7_registers1|saidamux7\(10) & !\alu|Add0~31\)) # (!\alu|Add0~32_combout\ & ((!\alu|Add0~31\) # (!\mux7_registers1|saidamux7\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add0~32_combout\,
	datab => \mux7_registers1|saidamux7\(10),
	datad => VCC,
	cin => \alu|Add0~31\,
	combout => \alu|Add0~33_combout\,
	cout => \alu|Add0~34\);

-- Location: LCCOMB_X14_Y9_N8
\alu|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~36_combout\ = ((\mux7_registers1|saidamux7\(11) $ (\alu|Add0~35_combout\ $ (!\alu|Add0~34\)))) # (GND)
-- \alu|Add0~37\ = CARRY((\mux7_registers1|saidamux7\(11) & ((\alu|Add0~35_combout\) # (!\alu|Add0~34\))) # (!\mux7_registers1|saidamux7\(11) & (\alu|Add0~35_combout\ & !\alu|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(11),
	datab => \alu|Add0~35_combout\,
	datad => VCC,
	cin => \alu|Add0~34\,
	combout => \alu|Add0~36_combout\,
	cout => \alu|Add0~37\);

-- Location: LCCOMB_X14_Y9_N10
\alu|Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~39_combout\ = (\mux7_registers1|saidamux7\(12) & ((\alu|Add0~38_combout\ & (\alu|Add0~37\ & VCC)) # (!\alu|Add0~38_combout\ & (!\alu|Add0~37\)))) # (!\mux7_registers1|saidamux7\(12) & ((\alu|Add0~38_combout\ & (!\alu|Add0~37\)) # 
-- (!\alu|Add0~38_combout\ & ((\alu|Add0~37\) # (GND)))))
-- \alu|Add0~40\ = CARRY((\mux7_registers1|saidamux7\(12) & (!\alu|Add0~38_combout\ & !\alu|Add0~37\)) # (!\mux7_registers1|saidamux7\(12) & ((!\alu|Add0~37\) # (!\alu|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(12),
	datab => \alu|Add0~38_combout\,
	datad => VCC,
	cin => \alu|Add0~37\,
	combout => \alu|Add0~39_combout\,
	cout => \alu|Add0~40\);

-- Location: LCCOMB_X14_Y9_N12
\alu|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~42_combout\ = ((\mux7_registers1|saidamux7\(13) $ (\alu|Add0~41_combout\ $ (!\alu|Add0~40\)))) # (GND)
-- \alu|Add0~43\ = CARRY((\mux7_registers1|saidamux7\(13) & ((\alu|Add0~41_combout\) # (!\alu|Add0~40\))) # (!\mux7_registers1|saidamux7\(13) & (\alu|Add0~41_combout\ & !\alu|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(13),
	datab => \alu|Add0~41_combout\,
	datad => VCC,
	cin => \alu|Add0~40\,
	combout => \alu|Add0~42_combout\,
	cout => \alu|Add0~43\);

-- Location: LCCOMB_X14_Y9_N14
\alu|Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~45_combout\ = (\alu|Add0~44_combout\ & ((\mux7_registers1|saidamux7\(14) & (\alu|Add0~43\ & VCC)) # (!\mux7_registers1|saidamux7\(14) & (!\alu|Add0~43\)))) # (!\alu|Add0~44_combout\ & ((\mux7_registers1|saidamux7\(14) & (!\alu|Add0~43\)) # 
-- (!\mux7_registers1|saidamux7\(14) & ((\alu|Add0~43\) # (GND)))))
-- \alu|Add0~46\ = CARRY((\alu|Add0~44_combout\ & (!\mux7_registers1|saidamux7\(14) & !\alu|Add0~43\)) # (!\alu|Add0~44_combout\ & ((!\alu|Add0~43\) # (!\mux7_registers1|saidamux7\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add0~44_combout\,
	datab => \mux7_registers1|saidamux7\(14),
	datad => VCC,
	cin => \alu|Add0~43\,
	combout => \alu|Add0~45_combout\,
	cout => \alu|Add0~46\);

-- Location: LCCOMB_X14_Y9_N16
\alu|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add0~48_combout\ = \mux7_registers1|saidamux7\(15) $ (\alu|Add0~46\ $ (!\alu|Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux7_registers1|saidamux7\(15),
	datad => \alu|Add0~47_combout\,
	cin => \alu|Add0~46\,
	combout => \alu|Add0~48_combout\);

-- Location: LCCOMB_X13_Y9_N14
\alu|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~1_combout\ = (\alu|Mux16~0_combout\ & (((!\mux7_registers2|saidamux7\(15))) # (!\alu|saida[10]~19_combout\))) # (!\alu|Mux16~0_combout\ & (\alu|saida[10]~19_combout\ & (\alu|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux16~0_combout\,
	datab => \alu|saida[10]~19_combout\,
	datac => \alu|Add0~48_combout\,
	datad => \mux7_registers2|saidamux7\(15),
	combout => \alu|Mux16~1_combout\);

-- Location: LCCOMB_X13_Y11_N26
\alu|saida[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[10]~20_combout\ = (\sel_ULA~combout\(2)) # (!\sel_ULA~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_ULA~combout\(1),
	datac => \sel_ULA~combout\(2),
	combout => \alu|saida[10]~20_combout\);

-- Location: LCFF_X13_Y9_N17
\alu|saida[15]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[15]~15_combout\,
	sdata => \alu|Mux16~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[15]~reg0_regout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel_mux5_1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sel_mux5_1(2),
	combout => \sel_mux5_1~combout\(2));

-- Location: LCFF_X24_Y8_N19
\mux1|saida[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[15]~feeder_combout\,
	sdata => \alu|saida[15]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(15));

-- Location: LCCOMB_X17_Y8_N14
\r6|saida[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[15]~16_combout\ = (\ld_r6~combout\ & \mux1|saida\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r6~combout\,
	datad => \mux1|saida\(15),
	combout => \r6|saida[15]~16_combout\);

-- Location: LCFF_X17_Y8_N15
\r6|saida[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[15]~16_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(15));

-- Location: LCCOMB_X22_Y10_N10
\r2|saida[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[15]~16_combout\ = (\mux1|saida\(15) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(15),
	datad => \ld_r2~combout\,
	combout => \r2|saida[15]~16_combout\);

-- Location: LCFF_X22_Y10_N11
\r2|saida[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[15]~16_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(15));

-- Location: LCCOMB_X19_Y9_N28
\mux7_registers1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux0~1_combout\ = (\mux7_registers1|Mux0~0_combout\ & ((\r3|saida\(15)) # ((!\sel_mux7_1~combout\(1))))) # (!\mux7_registers1|Mux0~0_combout\ & (((\sel_mux7_1~combout\(1) & \r2|saida\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|Mux0~0_combout\,
	datab => \r3|saida\(15),
	datac => \sel_mux7_1~combout\(1),
	datad => \r2|saida\(15),
	combout => \mux7_registers1|Mux0~1_combout\);

-- Location: LCCOMB_X18_Y9_N18
\mux7_registers1|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux0~2_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & (((\mux7_registers1|saidamux7[1]~1_combout\)))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & ((\mux7_registers1|saidamux7[1]~1_combout\ & (\mux7_registers1|Mux0~1_combout\)) 
-- # (!\mux7_registers1|saidamux7[1]~1_combout\ & ((\r4|saida\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \mux7_registers1|Mux0~1_combout\,
	datac => \mux7_registers1|saidamux7[1]~1_combout\,
	datad => \r4|saida\(15),
	combout => \mux7_registers1|Mux0~2_combout\);

-- Location: LCCOMB_X18_Y9_N8
\mux7_registers1|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux0~3_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & ((\mux7_registers1|Mux0~2_combout\ & ((\r6|saida\(15)))) # (!\mux7_registers1|Mux0~2_combout\ & (\r5|saida\(15))))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & 
-- (((\mux7_registers1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r5|saida\(15),
	datab => \r6|saida\(15),
	datac => \mux7_registers1|saidamux7[1]~0_combout\,
	datad => \mux7_registers1|Mux0~2_combout\,
	combout => \mux7_registers1|Mux0~3_combout\);

-- Location: LCFF_X18_Y9_N9
\mux7_registers1|saidamux7[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(15));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(14),
	combout => \in_RE~combout\(14));

-- Location: LCCOMB_X25_Y8_N8
\inRegister|saida[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[14]~15_combout\ = (\ld_RE~combout\ & \in_RE~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RE~combout\,
	datad => \in_RE~combout\(14),
	combout => \inRegister|saida[14]~15_combout\);

-- Location: LCFF_X25_Y8_N9
\inRegister|saida[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[14]~15_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(14));

-- Location: LCCOMB_X22_Y8_N18
\mux1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux1~0_combout\ = (\sel_mux5_1~combout\(1) & (((\sel_mux5_1~combout\(0))))) # (!\sel_mux5_1~combout\(1) & ((\sel_mux5_1~combout\(0) & ((\mux7_registers1|saidamux7\(14)))) # (!\sel_mux5_1~combout\(0) & (\inRegister|saida\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \inRegister|saida\(14),
	datac => \mux7_registers1|saidamux7\(14),
	datad => \sel_mux5_1~combout\(0),
	combout => \mux1|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y8_N0
\mux1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux1~1_combout\ = (\sel_mux5_1~combout\(1) & ((\mux1|Mux1~0_combout\ & ((\memoriaDados|altsyncram_component|auto_generated|q_a\(14)))) # (!\mux1|Mux1~0_combout\ & (\regInstrucao|saida\(14))))) # (!\sel_mux5_1~combout\(1) & 
-- (((\mux1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \regInstrucao|saida\(14),
	datac => \memoriaDados|altsyncram_component|auto_generated|q_a\(14),
	datad => \mux1|Mux1~0_combout\,
	combout => \mux1|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y8_N30
\mux1|saida[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[14]~feeder_combout\ = \mux1|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux1~1_combout\,
	combout => \mux1|saida[14]~feeder_combout\);

-- Location: LCCOMB_X17_Y11_N0
\r5|saida[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[14]~15_combout\ = (\ld_r5~combout\ & \mux1|saida\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \mux1|saida\(14),
	combout => \r5|saida[14]~15_combout\);

-- Location: LCFF_X17_Y11_N1
\r5|saida[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[14]~15_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(14));

-- Location: LCCOMB_X18_Y8_N30
\r4|saida[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[14]~15_combout\ = (\ld_r4~combout\ & \mux1|saida\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_r4~combout\,
	datad => \mux1|saida\(14),
	combout => \r4|saida[14]~15_combout\);

-- Location: LCFF_X18_Y8_N31
\r4|saida[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[14]~15_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(14));

-- Location: LCCOMB_X20_Y9_N24
\r1|saida[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[14]~15_combout\ = (\mux1|saida\(14) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(14),
	datad => \ld_r1~combout\,
	combout => \r1|saida[14]~15_combout\);

-- Location: LCFF_X20_Y9_N25
\r1|saida[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[14]~15_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(14));

-- Location: LCCOMB_X17_Y11_N14
\mux7_registers2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux1~0_combout\ = (\sel_mux7_2~combout\(0) & ((\sel_mux7_2~combout\(1)) # ((\r1|saida\(14))))) # (!\sel_mux7_2~combout\(0) & (!\sel_mux7_2~combout\(1) & (\r0|saida\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(0),
	datab => \sel_mux7_2~combout\(1),
	datac => \r0|saida\(14),
	datad => \r1|saida\(14),
	combout => \mux7_registers2|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y10_N0
\r2|saida[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[14]~15_combout\ = (\mux1|saida\(14) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(14),
	datad => \ld_r2~combout\,
	combout => \r2|saida[14]~15_combout\);

-- Location: LCFF_X22_Y10_N1
\r2|saida[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[14]~15_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(14));

-- Location: LCCOMB_X17_Y11_N20
\mux7_registers2|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux1~1_combout\ = (\sel_mux7_2~combout\(1) & ((\mux7_registers2|Mux1~0_combout\ & (\r3|saida\(14))) # (!\mux7_registers2|Mux1~0_combout\ & ((\r2|saida\(14)))))) # (!\sel_mux7_2~combout\(1) & (((\mux7_registers2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|saida\(14),
	datab => \sel_mux7_2~combout\(1),
	datac => \mux7_registers2|Mux1~0_combout\,
	datad => \r2|saida\(14),
	combout => \mux7_registers2|Mux1~1_combout\);

-- Location: LCCOMB_X17_Y11_N22
\mux7_registers2|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux1~2_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & (((\mux7_registers2|saidamux7[4]~1_combout\)))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & ((\mux7_registers2|saidamux7[4]~1_combout\ & 
-- ((\mux7_registers2|Mux1~1_combout\))) # (!\mux7_registers2|saidamux7[4]~1_combout\ & (\r4|saida\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~0_combout\,
	datab => \r4|saida\(14),
	datac => \mux7_registers2|Mux1~1_combout\,
	datad => \mux7_registers2|saidamux7[4]~1_combout\,
	combout => \mux7_registers2|Mux1~2_combout\);

-- Location: LCCOMB_X17_Y11_N12
\mux7_registers2|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux1~3_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & ((\mux7_registers2|Mux1~2_combout\ & (\r6|saida\(14))) # (!\mux7_registers2|Mux1~2_combout\ & ((\r5|saida\(14)))))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & 
-- (((\mux7_registers2|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r6|saida\(14),
	datab => \r5|saida\(14),
	datac => \mux7_registers2|saidamux7[4]~0_combout\,
	datad => \mux7_registers2|Mux1~2_combout\,
	combout => \mux7_registers2|Mux1~3_combout\);

-- Location: LCFF_X17_Y11_N13
\mux7_registers2|saidamux7[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(14));

-- Location: LCCOMB_X13_Y11_N16
\alu|saida~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~48_combout\ = (\mux7_registers2|saidamux7\(14)) # (\mux7_registers1|saidamux7\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(14),
	datad => \mux7_registers1|saidamux7\(14),
	combout => \alu|saida~48_combout\);

-- Location: LCCOMB_X17_Y11_N6
\alu|saida~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~47_combout\ = (\mux7_registers2|saidamux7\(14) & \mux7_registers1|saidamux7\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(14),
	datad => \mux7_registers1|saidamux7\(14),
	combout => \alu|saida~47_combout\);

-- Location: LCCOMB_X14_Y9_N18
\alu|saida[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[14]~14_combout\ = (\sel_ULA~combout\(0) & (\alu|saida~48_combout\)) # (!\sel_ULA~combout\(0) & ((\alu|saida~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_ULA~combout\(0),
	datab => \alu|saida~48_combout\,
	datad => \alu|saida~47_combout\,
	combout => \alu|saida[14]~14_combout\);

-- Location: LCCOMB_X13_Y11_N8
\alu|saida[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[10]~18_combout\ = (\sel_ULA~combout\(2) & ((\sel_ULA~combout\(1)) # (\sel_ULA~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_ULA~combout\(1),
	datac => \sel_ULA~combout\(2),
	datad => \sel_ULA~combout\(0),
	combout => \alu|saida[10]~18_combout\);

-- Location: LCCOMB_X17_Y11_N4
\compare|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|Equal0~9_combout\ = \mux7_registers2|saidamux7\(14) $ (\mux7_registers1|saidamux7\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(14),
	datad => \mux7_registers1|saidamux7\(14),
	combout => \compare|Equal0~9_combout\);

-- Location: LCCOMB_X14_Y9_N28
\alu|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~0_combout\ = (\alu|saida[10]~19_combout\ & (((\alu|saida[10]~18_combout\) # (\alu|Add0~45_combout\)))) # (!\alu|saida[10]~19_combout\ & (\compare|Equal0~9_combout\ & (!\alu|saida[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~19_combout\,
	datab => \compare|Equal0~9_combout\,
	datac => \alu|saida[10]~18_combout\,
	datad => \alu|Add0~45_combout\,
	combout => \alu|Mux15~0_combout\);

-- Location: LCCOMB_X14_Y9_N30
\alu|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~1_combout\ = (\alu|saida[10]~18_combout\ & ((\alu|Mux15~0_combout\ & (!\mux7_registers2|saidamux7\(14))) # (!\alu|Mux15~0_combout\ & ((!\mux7_registers1|saidamux7\(14)))))) # (!\alu|saida[10]~18_combout\ & (((\alu|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(14),
	datab => \alu|saida[10]~18_combout\,
	datac => \mux7_registers1|saidamux7\(14),
	datad => \alu|Mux15~0_combout\,
	combout => \alu|Mux15~1_combout\);

-- Location: LCFF_X14_Y9_N19
\alu|saida[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[14]~14_combout\,
	sdata => \alu|Mux15~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[14]~reg0_regout\);

-- Location: LCFF_X22_Y8_N31
\mux1|saida[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[14]~feeder_combout\,
	sdata => \alu|saida[14]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(14));

-- Location: LCCOMB_X20_Y9_N10
\r0|saida[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[14]~15_combout\ = (\mux1|saida\(14) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(14),
	datad => \ld_r0~combout\,
	combout => \r0|saida[14]~15_combout\);

-- Location: LCFF_X20_Y9_N11
\r0|saida[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[14]~15_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(14));

-- Location: LCCOMB_X17_Y11_N2
\mux7_registers1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux1~0_combout\ = (\sel_mux7_1~combout\(0) & (((\sel_mux7_1~combout\(1))))) # (!\sel_mux7_1~combout\(0) & ((\sel_mux7_1~combout\(1) & ((\r2|saida\(14)))) # (!\sel_mux7_1~combout\(1) & (\r0|saida\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_1~combout\(0),
	datab => \r0|saida\(14),
	datac => \sel_mux7_1~combout\(1),
	datad => \r2|saida\(14),
	combout => \mux7_registers1|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y11_N8
\mux7_registers1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux1~1_combout\ = (\mux7_registers1|Mux1~0_combout\ & ((\r3|saida\(14)) # ((!\sel_mux7_1~combout\(0))))) # (!\mux7_registers1|Mux1~0_combout\ & (((\sel_mux7_1~combout\(0) & \r1|saida\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|saida\(14),
	datab => \mux7_registers1|Mux1~0_combout\,
	datac => \sel_mux7_1~combout\(0),
	datad => \r1|saida\(14),
	combout => \mux7_registers1|Mux1~1_combout\);

-- Location: LCCOMB_X17_Y8_N4
\r6|saida[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[14]~15_combout\ = (\mux1|saida\(14) & \ld_r6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(14),
	datac => \ld_r6~combout\,
	combout => \r6|saida[14]~15_combout\);

-- Location: LCFF_X17_Y8_N5
\r6|saida[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[14]~15_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(14));

-- Location: LCCOMB_X17_Y11_N18
\mux7_registers1|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux1~3_combout\ = (\mux7_registers1|Mux1~2_combout\ & (((\r6|saida\(14)) # (!\mux7_registers1|saidamux7[1]~1_combout\)))) # (!\mux7_registers1|Mux1~2_combout\ & (\mux7_registers1|Mux1~1_combout\ & 
-- (\mux7_registers1|saidamux7[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|Mux1~2_combout\,
	datab => \mux7_registers1|Mux1~1_combout\,
	datac => \mux7_registers1|saidamux7[1]~1_combout\,
	datad => \r6|saida\(14),
	combout => \mux7_registers1|Mux1~3_combout\);

-- Location: LCFF_X17_Y11_N19
\mux7_registers1|saidamux7[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(14));

-- Location: PIN_L11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(13),
	combout => \in_RE~combout\(13));

-- Location: LCCOMB_X25_Y8_N26
\inRegister|saida[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[13]~14_combout\ = (\in_RE~combout\(13) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(13),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[13]~14_combout\);

-- Location: LCFF_X25_Y8_N27
\inRegister|saida[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[13]~14_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(13));

-- Location: LCCOMB_X22_Y8_N26
\mux1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux2~0_combout\ = (\sel_mux5_1~combout\(1) & (((\regInstrucao|saida\(13)) # (\sel_mux5_1~combout\(0))))) # (!\sel_mux5_1~combout\(1) & (\inRegister|saida\(13) & ((!\sel_mux5_1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \inRegister|saida\(13),
	datac => \regInstrucao|saida\(13),
	datad => \sel_mux5_1~combout\(0),
	combout => \mux1|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y8_N28
\mux1|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux2~1_combout\ = (\sel_mux5_1~combout\(0) & ((\mux1|Mux2~0_combout\ & ((\memoriaDados|altsyncram_component|auto_generated|q_a\(13)))) # (!\mux1|Mux2~0_combout\ & (\mux7_registers1|saidamux7\(13))))) # (!\sel_mux5_1~combout\(0) & 
-- (((\mux1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(0),
	datab => \mux7_registers1|saidamux7\(13),
	datac => \memoriaDados|altsyncram_component|auto_generated|q_a\(13),
	datad => \mux1|Mux2~0_combout\,
	combout => \mux1|Mux2~1_combout\);

-- Location: LCCOMB_X22_Y8_N16
\mux1|saida[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[13]~feeder_combout\ = \mux1|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux2~1_combout\,
	combout => \mux1|saida[13]~feeder_combout\);

-- Location: LCCOMB_X18_Y9_N2
\alu|saida~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~46_combout\ = (\mux7_registers1|saidamux7\(13)) # (\mux7_registers2|saidamux7\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux7_registers1|saidamux7\(13),
	datad => \mux7_registers2|saidamux7\(13),
	combout => \alu|saida~46_combout\);

-- Location: LCCOMB_X18_Y9_N16
\alu|saida[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[13]~13_combout\ = (\sel_ULA~combout\(0) & ((\alu|saida~46_combout\))) # (!\sel_ULA~combout\(0) & (\alu|saida~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida~45_combout\,
	datab => \alu|saida~46_combout\,
	datad => \sel_ULA~combout\(0),
	combout => \alu|saida[13]~13_combout\);

-- Location: LCCOMB_X18_Y9_N0
\alu|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~0_combout\ = (\alu|saida[10]~19_combout\ & (((\alu|saida[10]~18_combout\)))) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(13) $ (((\mux7_registers2|saidamux7\(13)) # (\alu|saida[10]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(13),
	datab => \alu|saida[10]~18_combout\,
	datac => \alu|saida[10]~19_combout\,
	datad => \mux7_registers1|saidamux7\(13),
	combout => \alu|Mux14~0_combout\);

-- Location: LCCOMB_X18_Y9_N14
\alu|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~1_combout\ = (\alu|Mux14~0_combout\ & (((!\alu|saida[10]~19_combout\)) # (!\mux7_registers2|saidamux7\(13)))) # (!\alu|Mux14~0_combout\ & (((\alu|saida[10]~19_combout\ & \alu|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(13),
	datab => \alu|Mux14~0_combout\,
	datac => \alu|saida[10]~19_combout\,
	datad => \alu|Add0~42_combout\,
	combout => \alu|Mux14~1_combout\);

-- Location: LCFF_X18_Y9_N17
\alu|saida[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[13]~13_combout\,
	sdata => \alu|Mux14~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[13]~reg0_regout\);

-- Location: LCFF_X22_Y8_N17
\mux1|saida[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[13]~feeder_combout\,
	sdata => \alu|saida[13]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(13));

-- Location: LCCOMB_X17_Y8_N22
\r6|saida[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[13]~14_combout\ = (\ld_r6~combout\ & \mux1|saida\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r6~combout\,
	datad => \mux1|saida\(13),
	combout => \r6|saida[13]~14_combout\);

-- Location: LCFF_X17_Y8_N23
\r6|saida[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[13]~14_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(13));

-- Location: LCCOMB_X20_Y9_N6
\r0|saida[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[13]~14_combout\ = (\mux1|saida\(13) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(13),
	datad => \ld_r0~combout\,
	combout => \r0|saida[13]~14_combout\);

-- Location: LCFF_X20_Y9_N7
\r0|saida[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[13]~14_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(13));

-- Location: LCCOMB_X19_Y9_N18
\mux7_registers1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux2~0_combout\ = (\sel_mux7_1~combout\(1) & (((\sel_mux7_1~combout\(0))))) # (!\sel_mux7_1~combout\(1) & ((\sel_mux7_1~combout\(0) & (\r1|saida\(13))) # (!\sel_mux7_1~combout\(0) & ((\r0|saida\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|saida\(13),
	datab => \sel_mux7_1~combout\(1),
	datac => \sel_mux7_1~combout\(0),
	datad => \r0|saida\(13),
	combout => \mux7_registers1|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y9_N24
\mux7_registers1|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux2~1_combout\ = (\sel_mux7_1~combout\(1) & ((\mux7_registers1|Mux2~0_combout\ & ((\r3|saida\(13)))) # (!\mux7_registers1|Mux2~0_combout\ & (\r2|saida\(13))))) # (!\sel_mux7_1~combout\(1) & (((\mux7_registers1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|saida\(13),
	datab => \sel_mux7_1~combout\(1),
	datac => \r3|saida\(13),
	datad => \mux7_registers1|Mux2~0_combout\,
	combout => \mux7_registers1|Mux2~1_combout\);

-- Location: LCCOMB_X18_Y9_N12
\mux7_registers1|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux2~2_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & (((\mux7_registers1|saidamux7[1]~1_combout\)))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & ((\mux7_registers1|saidamux7[1]~1_combout\ & 
-- ((\mux7_registers1|Mux2~1_combout\))) # (!\mux7_registers1|saidamux7[1]~1_combout\ & (\r4|saida\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \r4|saida\(13),
	datac => \mux7_registers1|saidamux7[1]~1_combout\,
	datad => \mux7_registers1|Mux2~1_combout\,
	combout => \mux7_registers1|Mux2~2_combout\);

-- Location: LCCOMB_X18_Y9_N26
\mux7_registers1|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux2~3_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & ((\mux7_registers1|Mux2~2_combout\ & ((\r6|saida\(13)))) # (!\mux7_registers1|Mux2~2_combout\ & (\r5|saida\(13))))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & 
-- (((\mux7_registers1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r5|saida\(13),
	datab => \r6|saida\(13),
	datac => \mux7_registers1|saidamux7[1]~0_combout\,
	datad => \mux7_registers1|Mux2~2_combout\,
	combout => \mux7_registers1|Mux2~3_combout\);

-- Location: LCFF_X18_Y9_N27
\mux7_registers1|saidamux7[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(13));

-- Location: LCCOMB_X24_Y8_N26
\mux1|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux3~1_combout\ = (\sel_mux5_1~combout\(1) & ((\mux1|Mux3~0_combout\ & ((\memoriaDados|altsyncram_component|auto_generated|q_a\(12)))) # (!\mux1|Mux3~0_combout\ & (\regInstrucao|saida\(12))))) # (!\sel_mux5_1~combout\(1) & 
-- (((\mux1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \regInstrucao|saida\(12),
	datac => \mux1|Mux3~0_combout\,
	datad => \memoriaDados|altsyncram_component|auto_generated|q_a\(12),
	combout => \mux1|Mux3~1_combout\);

-- Location: LCCOMB_X24_Y8_N8
\mux1|saida[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[12]~feeder_combout\ = \mux1|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux3~1_combout\,
	combout => \mux1|saida[12]~feeder_combout\);

-- Location: LCCOMB_X13_Y9_N0
\alu|saida~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~44_combout\ = (\mux7_registers2|saidamux7\(12)) # (\mux7_registers1|saidamux7\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(12),
	datad => \mux7_registers1|saidamux7\(12),
	combout => \alu|saida~44_combout\);

-- Location: LCCOMB_X13_Y9_N26
\alu|saida~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~43_combout\ = (\mux7_registers2|saidamux7\(12) & \mux7_registers1|saidamux7\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(12),
	datad => \mux7_registers1|saidamux7\(12),
	combout => \alu|saida~43_combout\);

-- Location: LCCOMB_X13_Y9_N6
\alu|saida[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[12]~12_combout\ = (\sel_ULA~combout\(0) & (\alu|saida~44_combout\)) # (!\sel_ULA~combout\(0) & ((\alu|saida~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_ULA~combout\(0),
	datab => \alu|saida~44_combout\,
	datad => \alu|saida~43_combout\,
	combout => \alu|saida[12]~12_combout\);

-- Location: LCCOMB_X13_Y9_N18
\alu|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~0_combout\ = (\alu|saida[10]~19_combout\ & (((!\mux7_registers2|saidamux7\(12))) # (!\alu|saida[10]~18_combout\))) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(12) $ (((\alu|saida[10]~18_combout\) # 
-- (\mux7_registers2|saidamux7\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~18_combout\,
	datab => \mux7_registers1|saidamux7\(12),
	datac => \mux7_registers2|saidamux7\(12),
	datad => \alu|saida[10]~19_combout\,
	combout => \alu|Mux13~0_combout\);

-- Location: LCCOMB_X13_Y9_N24
\alu|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~1_combout\ = (\alu|Mux13~0_combout\ & ((\alu|saida[10]~18_combout\) # ((\alu|Add0~39_combout\) # (!\alu|saida[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~18_combout\,
	datab => \alu|saida[10]~19_combout\,
	datac => \alu|Add0~39_combout\,
	datad => \alu|Mux13~0_combout\,
	combout => \alu|Mux13~1_combout\);

-- Location: LCFF_X13_Y9_N7
\alu|saida[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[12]~12_combout\,
	sdata => \alu|Mux13~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[12]~reg0_regout\);

-- Location: LCFF_X24_Y8_N9
\mux1|saida[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[12]~feeder_combout\,
	sdata => \alu|saida[12]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(12));

-- Location: LCCOMB_X17_Y11_N30
\r5|saida[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[12]~13_combout\ = (\ld_r5~combout\ & \mux1|saida\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \mux1|saida\(12),
	combout => \r5|saida[12]~13_combout\);

-- Location: LCFF_X17_Y11_N31
\r5|saida[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[12]~13_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(12));

-- Location: LCCOMB_X14_Y11_N30
\mux7_registers1|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux3~2_combout\ = (\mux7_registers1|saidamux7[1]~1_combout\ & (((\mux7_registers1|saidamux7[1]~0_combout\)))) # (!\mux7_registers1|saidamux7[1]~1_combout\ & ((\mux7_registers1|saidamux7[1]~0_combout\ & ((\r5|saida\(12)))) # 
-- (!\mux7_registers1|saidamux7[1]~0_combout\ & (\r4|saida\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|saida\(12),
	datab => \mux7_registers1|saidamux7[1]~1_combout\,
	datac => \r5|saida\(12),
	datad => \mux7_registers1|saidamux7[1]~0_combout\,
	combout => \mux7_registers1|Mux3~2_combout\);

-- Location: LCCOMB_X14_Y11_N22
\mux7_registers1|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux3~3_combout\ = (\mux7_registers1|Mux3~2_combout\ & (((\r6|saida\(12)) # (!\mux7_registers1|saidamux7[1]~1_combout\)))) # (!\mux7_registers1|Mux3~2_combout\ & (\mux7_registers1|Mux3~1_combout\ & 
-- (\mux7_registers1|saidamux7[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|Mux3~1_combout\,
	datab => \mux7_registers1|Mux3~2_combout\,
	datac => \mux7_registers1|saidamux7[1]~1_combout\,
	datad => \r6|saida\(12),
	combout => \mux7_registers1|Mux3~3_combout\);

-- Location: LCFF_X14_Y11_N23
\mux7_registers1|saidamux7[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(12));

-- Location: LCCOMB_X20_Y8_N2
\mux1|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux4~1_combout\ = (\mux1|Mux4~0_combout\ & (((\memoriaDados|altsyncram_component|auto_generated|q_a\(11)) # (!\sel_mux5_1~combout\(0))))) # (!\mux1|Mux4~0_combout\ & (\mux7_registers1|saidamux7\(11) & (\sel_mux5_1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(11),
	datab => \mux1|Mux4~0_combout\,
	datac => \sel_mux5_1~combout\(0),
	datad => \memoriaDados|altsyncram_component|auto_generated|q_a\(11),
	combout => \mux1|Mux4~1_combout\);

-- Location: LCCOMB_X20_Y8_N22
\mux1|saida[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[11]~feeder_combout\ = \mux1|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux4~1_combout\,
	combout => \mux1|saida[11]~feeder_combout\);

-- Location: LCCOMB_X12_Y9_N6
\alu|saida~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~42_combout\ = (\mux7_registers1|saidamux7\(11)) # (\mux7_registers2|saidamux7\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux7_registers1|saidamux7\(11),
	datad => \mux7_registers2|saidamux7\(11),
	combout => \alu|saida~42_combout\);

-- Location: LCCOMB_X12_Y9_N16
\alu|saida~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~41_combout\ = (\mux7_registers1|saidamux7\(11) & \mux7_registers2|saidamux7\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux7_registers1|saidamux7\(11),
	datad => \mux7_registers2|saidamux7\(11),
	combout => \alu|saida~41_combout\);

-- Location: LCCOMB_X13_Y9_N28
\alu|saida[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[11]~11_combout\ = (\sel_ULA~combout\(0) & (\alu|saida~42_combout\)) # (!\sel_ULA~combout\(0) & ((\alu|saida~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_ULA~combout\(0),
	datab => \alu|saida~42_combout\,
	datad => \alu|saida~41_combout\,
	combout => \alu|saida[11]~11_combout\);

-- Location: LCCOMB_X13_Y9_N8
\alu|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~1_combout\ = (\alu|Mux12~0_combout\ & (((!\alu|saida[10]~19_combout\)) # (!\mux7_registers2|saidamux7\(11)))) # (!\alu|Mux12~0_combout\ & (((\alu|Add0~36_combout\ & \alu|saida[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux12~0_combout\,
	datab => \mux7_registers2|saidamux7\(11),
	datac => \alu|Add0~36_combout\,
	datad => \alu|saida[10]~19_combout\,
	combout => \alu|Mux12~1_combout\);

-- Location: LCFF_X13_Y9_N29
\alu|saida[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[11]~11_combout\,
	sdata => \alu|Mux12~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[11]~reg0_regout\);

-- Location: LCFF_X20_Y8_N23
\mux1|saida[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[11]~feeder_combout\,
	sdata => \alu|saida[11]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(11));

-- Location: LCCOMB_X17_Y10_N20
\r5|saida[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[11]~12_combout\ = (\ld_r5~combout\ & \mux1|saida\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \mux1|saida\(11),
	combout => \r5|saida[11]~12_combout\);

-- Location: LCFF_X17_Y10_N21
\r5|saida[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[11]~12_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(11));

-- Location: LCCOMB_X18_Y8_N24
\r4|saida[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[11]~12_combout\ = (\mux1|saida\(11) & \ld_r4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(11),
	datad => \ld_r4~combout\,
	combout => \r4|saida[11]~12_combout\);

-- Location: LCFF_X18_Y8_N25
\r4|saida[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[11]~12_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(11));

-- Location: LCCOMB_X17_Y9_N18
\mux7_registers1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux4~0_combout\ = (\sel_mux7_1~combout\(1) & (((\sel_mux7_1~combout\(0))))) # (!\sel_mux7_1~combout\(1) & ((\sel_mux7_1~combout\(0) & ((\r1|saida\(11)))) # (!\sel_mux7_1~combout\(0) & (\r0|saida\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r0|saida\(11),
	datab => \sel_mux7_1~combout\(1),
	datac => \sel_mux7_1~combout\(0),
	datad => \r1|saida\(11),
	combout => \mux7_registers1|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y9_N20
\mux7_registers1|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux4~1_combout\ = (\mux7_registers1|Mux4~0_combout\ & ((\r3|saida\(11)) # ((!\sel_mux7_1~combout\(1))))) # (!\mux7_registers1|Mux4~0_combout\ & (((\sel_mux7_1~combout\(1) & \r2|saida\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|saida\(11),
	datab => \mux7_registers1|Mux4~0_combout\,
	datac => \sel_mux7_1~combout\(1),
	datad => \r2|saida\(11),
	combout => \mux7_registers1|Mux4~1_combout\);

-- Location: LCCOMB_X17_Y9_N10
\mux7_registers1|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux4~2_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & (((\mux7_registers1|saidamux7[1]~1_combout\)))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & ((\mux7_registers1|saidamux7[1]~1_combout\ & 
-- ((\mux7_registers1|Mux4~1_combout\))) # (!\mux7_registers1|saidamux7[1]~1_combout\ & (\r4|saida\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \r4|saida\(11),
	datac => \mux7_registers1|Mux4~1_combout\,
	datad => \mux7_registers1|saidamux7[1]~1_combout\,
	combout => \mux7_registers1|Mux4~2_combout\);

-- Location: LCCOMB_X17_Y9_N8
\mux7_registers1|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux4~3_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & ((\mux7_registers1|Mux4~2_combout\ & (\r6|saida\(11))) # (!\mux7_registers1|Mux4~2_combout\ & ((\r5|saida\(11)))))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & 
-- (((\mux7_registers1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \r6|saida\(11),
	datac => \r5|saida\(11),
	datad => \mux7_registers1|Mux4~2_combout\,
	combout => \mux7_registers1|Mux4~3_combout\);

-- Location: LCFF_X17_Y9_N9
\mux7_registers1|saidamux7[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(11));

-- Location: LCCOMB_X21_Y8_N0
\mux1|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux5~1_combout\ = (\sel_mux5_1~combout\(1) & ((\mux1|Mux5~0_combout\ & ((\memoriaDados|altsyncram_component|auto_generated|q_a\(10)))) # (!\mux1|Mux5~0_combout\ & (\regInstrucao|saida\(10))))) # (!\sel_mux5_1~combout\(1) & 
-- (((\mux1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \regInstrucao|saida\(10),
	datac => \mux1|Mux5~0_combout\,
	datad => \memoriaDados|altsyncram_component|auto_generated|q_a\(10),
	combout => \mux1|Mux5~1_combout\);

-- Location: LCCOMB_X21_Y8_N10
\mux1|saida[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[10]~feeder_combout\ = \mux1|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux5~1_combout\,
	combout => \mux1|saida[10]~feeder_combout\);

-- Location: LCCOMB_X15_Y9_N24
\r6|saida[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[10]~11_combout\ = (\ld_r6~combout\ & \mux1|saida\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r6~combout\,
	datad => \mux1|saida\(10),
	combout => \r6|saida[10]~11_combout\);

-- Location: LCFF_X15_Y9_N25
\r6|saida[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[10]~11_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(10));

-- Location: LCCOMB_X18_Y8_N22
\r4|saida[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[10]~11_combout\ = (\ld_r4~combout\ & \mux1|saida\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_r4~combout\,
	datad => \mux1|saida\(10),
	combout => \r4|saida[10]~11_combout\);

-- Location: LCFF_X18_Y8_N23
\r4|saida[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[10]~11_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(10));

-- Location: LCCOMB_X18_Y9_N6
\r3|saida[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[10]~11_combout\ = (\ld_r3~combout\ & \mux1|saida\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r3~combout\,
	datad => \mux1|saida\(10),
	combout => \r3|saida[10]~11_combout\);

-- Location: LCFF_X18_Y9_N7
\r3|saida[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[10]~11_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(10));

-- Location: LCCOMB_X20_Y9_N20
\r1|saida[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[10]~11_combout\ = (\mux1|saida\(10) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(10),
	datad => \ld_r1~combout\,
	combout => \r1|saida[10]~11_combout\);

-- Location: LCFF_X20_Y9_N21
\r1|saida[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[10]~11_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(10));

-- Location: LCCOMB_X15_Y9_N30
\mux7_registers2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux5~0_combout\ = (\sel_mux7_2~combout\(0) & (((\sel_mux7_2~combout\(1)) # (\r1|saida\(10))))) # (!\sel_mux7_2~combout\(0) & (\r0|saida\(10) & (!\sel_mux7_2~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r0|saida\(10),
	datab => \sel_mux7_2~combout\(0),
	datac => \sel_mux7_2~combout\(1),
	datad => \r1|saida\(10),
	combout => \mux7_registers2|Mux5~0_combout\);

-- Location: LCCOMB_X15_Y9_N20
\mux7_registers2|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux5~1_combout\ = (\sel_mux7_2~combout\(1) & ((\mux7_registers2|Mux5~0_combout\ & ((\r3|saida\(10)))) # (!\mux7_registers2|Mux5~0_combout\ & (\r2|saida\(10))))) # (!\sel_mux7_2~combout\(1) & (((\mux7_registers2|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|saida\(10),
	datab => \r3|saida\(10),
	datac => \sel_mux7_2~combout\(1),
	datad => \mux7_registers2|Mux5~0_combout\,
	combout => \mux7_registers2|Mux5~1_combout\);

-- Location: LCCOMB_X15_Y9_N26
\mux7_registers2|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux5~2_combout\ = (\mux7_registers2|saidamux7[4]~1_combout\ & (((\mux7_registers2|Mux5~1_combout\) # (\mux7_registers2|saidamux7[4]~0_combout\)))) # (!\mux7_registers2|saidamux7[4]~1_combout\ & (\r4|saida\(10) & 
-- ((!\mux7_registers2|saidamux7[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~1_combout\,
	datab => \r4|saida\(10),
	datac => \mux7_registers2|Mux5~1_combout\,
	datad => \mux7_registers2|saidamux7[4]~0_combout\,
	combout => \mux7_registers2|Mux5~2_combout\);

-- Location: LCCOMB_X15_Y9_N6
\mux7_registers2|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux5~3_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & ((\mux7_registers2|Mux5~2_combout\ & ((\r6|saida\(10)))) # (!\mux7_registers2|Mux5~2_combout\ & (\r5|saida\(10))))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & 
-- (((\mux7_registers2|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~0_combout\,
	datab => \r5|saida\(10),
	datac => \r6|saida\(10),
	datad => \mux7_registers2|Mux5~2_combout\,
	combout => \mux7_registers2|Mux5~3_combout\);

-- Location: LCFF_X15_Y9_N7
\mux7_registers2|saidamux7[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(10));

-- Location: LCCOMB_X15_Y9_N22
\alu|saida~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~40_combout\ = (\mux7_registers1|saidamux7\(10)) # (\mux7_registers2|saidamux7\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers1|saidamux7\(10),
	datad => \mux7_registers2|saidamux7\(10),
	combout => \alu|saida~40_combout\);

-- Location: LCCOMB_X15_Y9_N16
\alu|saida[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[10]~10_combout\ = (\sel_ULA~combout\(0) & ((\alu|saida~40_combout\))) # (!\sel_ULA~combout\(0) & (\alu|saida~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida~39_combout\,
	datab => \sel_ULA~combout\(0),
	datad => \alu|saida~40_combout\,
	combout => \alu|saida[10]~10_combout\);

-- Location: LCCOMB_X14_Y9_N24
\alu|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~0_combout\ = (\alu|saida[10]~18_combout\ & (((\alu|saida[10]~19_combout\)))) # (!\alu|saida[10]~18_combout\ & ((\alu|saida[10]~19_combout\ & ((\alu|Add0~33_combout\))) # (!\alu|saida[10]~19_combout\ & (\compare|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compare|Equal0~6_combout\,
	datab => \alu|saida[10]~18_combout\,
	datac => \alu|saida[10]~19_combout\,
	datad => \alu|Add0~33_combout\,
	combout => \alu|Mux11~0_combout\);

-- Location: LCCOMB_X15_Y9_N14
\alu|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~1_combout\ = (\alu|saida[10]~18_combout\ & ((\alu|Mux11~0_combout\ & (!\mux7_registers2|saidamux7\(10))) # (!\alu|Mux11~0_combout\ & ((!\mux7_registers1|saidamux7\(10)))))) # (!\alu|saida[10]~18_combout\ & (((\alu|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(10),
	datab => \mux7_registers1|saidamux7\(10),
	datac => \alu|saida[10]~18_combout\,
	datad => \alu|Mux11~0_combout\,
	combout => \alu|Mux11~1_combout\);

-- Location: LCFF_X15_Y9_N17
\alu|saida[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[10]~10_combout\,
	sdata => \alu|Mux11~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[10]~reg0_regout\);

-- Location: LCFF_X21_Y8_N11
\mux1|saida[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[10]~feeder_combout\,
	sdata => \alu|saida[10]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(10));

-- Location: LCCOMB_X17_Y10_N10
\r5|saida[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[10]~11_combout\ = (\ld_r5~combout\ & \mux1|saida\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \mux1|saida\(10),
	combout => \r5|saida[10]~11_combout\);

-- Location: LCFF_X17_Y10_N11
\r5|saida[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[10]~11_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(10));

-- Location: LCCOMB_X15_Y9_N2
\mux7_registers1|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux5~2_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & ((\r5|saida\(10)) # ((\mux7_registers1|saidamux7[1]~1_combout\)))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & (((\r4|saida\(10) & 
-- !\mux7_registers1|saidamux7[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \r5|saida\(10),
	datac => \r4|saida\(10),
	datad => \mux7_registers1|saidamux7[1]~1_combout\,
	combout => \mux7_registers1|Mux5~2_combout\);

-- Location: LCCOMB_X15_Y9_N28
\mux7_registers1|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux5~1_combout\ = (\mux7_registers1|Mux5~0_combout\ & (((\r3|saida\(10))) # (!\sel_mux7_1~combout\(0)))) # (!\mux7_registers1|Mux5~0_combout\ & (\sel_mux7_1~combout\(0) & ((\r1|saida\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|Mux5~0_combout\,
	datab => \sel_mux7_1~combout\(0),
	datac => \r3|saida\(10),
	datad => \r1|saida\(10),
	combout => \mux7_registers1|Mux5~1_combout\);

-- Location: LCCOMB_X15_Y9_N8
\mux7_registers1|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux5~3_combout\ = (\mux7_registers1|saidamux7[1]~1_combout\ & ((\mux7_registers1|Mux5~2_combout\ & (\r6|saida\(10))) # (!\mux7_registers1|Mux5~2_combout\ & ((\mux7_registers1|Mux5~1_combout\))))) # 
-- (!\mux7_registers1|saidamux7[1]~1_combout\ & (\mux7_registers1|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~1_combout\,
	datab => \mux7_registers1|Mux5~2_combout\,
	datac => \r6|saida\(10),
	datad => \mux7_registers1|Mux5~1_combout\,
	combout => \mux7_registers1|Mux5~3_combout\);

-- Location: LCFF_X15_Y9_N9
\mux7_registers1|saidamux7[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(10));

-- Location: LCCOMB_X24_Y8_N4
\mux1|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux6~1_combout\ = (\mux1|Mux6~0_combout\ & (((\memoriaDados|altsyncram_component|auto_generated|q_a\(9)) # (!\sel_mux5_1~combout\(0))))) # (!\mux1|Mux6~0_combout\ & (\mux7_registers1|saidamux7\(9) & (\sel_mux5_1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux6~0_combout\,
	datab => \mux7_registers1|saidamux7\(9),
	datac => \sel_mux5_1~combout\(0),
	datad => \memoriaDados|altsyncram_component|auto_generated|q_a\(9),
	combout => \mux1|Mux6~1_combout\);

-- Location: LCCOMB_X24_Y8_N6
\mux1|saida[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[9]~feeder_combout\ = \mux1|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux6~1_combout\,
	combout => \mux1|saida[9]~feeder_combout\);

-- Location: LCCOMB_X12_Y9_N18
\alu|saida~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~37_combout\ = (\mux7_registers2|saidamux7\(9) & \mux7_registers1|saidamux7\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(9),
	datad => \mux7_registers1|saidamux7\(9),
	combout => \alu|saida~37_combout\);

-- Location: LCCOMB_X12_Y9_N12
\alu|saida~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~38_combout\ = (\mux7_registers2|saidamux7\(9)) # (\mux7_registers1|saidamux7\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(9),
	datad => \mux7_registers1|saidamux7\(9),
	combout => \alu|saida~38_combout\);

-- Location: LCCOMB_X13_Y9_N10
\alu|saida[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[9]~9_combout\ = (\sel_ULA~combout\(0) & ((\alu|saida~38_combout\))) # (!\sel_ULA~combout\(0) & (\alu|saida~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_ULA~combout\(0),
	datab => \alu|saida~37_combout\,
	datad => \alu|saida~38_combout\,
	combout => \alu|saida[9]~9_combout\);

-- Location: LCCOMB_X12_Y9_N30
\alu|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~0_combout\ = (\alu|saida[10]~19_combout\ & (\alu|saida[10]~18_combout\)) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(9) $ (((\alu|saida[10]~18_combout\) # (\mux7_registers2|saidamux7\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~18_combout\,
	datab => \mux7_registers2|saidamux7\(9),
	datac => \alu|saida[10]~19_combout\,
	datad => \mux7_registers1|saidamux7\(9),
	combout => \alu|Mux10~0_combout\);

-- Location: LCCOMB_X13_Y9_N30
\alu|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~1_combout\ = (\alu|saida[10]~19_combout\ & ((\alu|Mux10~0_combout\ & (!\mux7_registers2|saidamux7\(9))) # (!\alu|Mux10~0_combout\ & ((\alu|Add0~30_combout\))))) # (!\alu|saida[10]~19_combout\ & (((\alu|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(9),
	datab => \alu|saida[10]~19_combout\,
	datac => \alu|Mux10~0_combout\,
	datad => \alu|Add0~30_combout\,
	combout => \alu|Mux10~1_combout\);

-- Location: LCFF_X13_Y9_N11
\alu|saida[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[9]~9_combout\,
	sdata => \alu|Mux10~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[9]~reg0_regout\);

-- Location: LCFF_X24_Y8_N7
\mux1|saida[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[9]~feeder_combout\,
	sdata => \alu|saida[9]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(9));

-- Location: LCCOMB_X21_Y9_N4
\r1|saida[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[9]~10_combout\ = (\mux1|saida\(9) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(9),
	datad => \ld_r1~combout\,
	combout => \r1|saida[9]~10_combout\);

-- Location: LCFF_X21_Y9_N5
\r1|saida[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[9]~10_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(9));

-- Location: LCCOMB_X21_Y9_N16
\mux7_registers1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux6~0_combout\ = (\sel_mux7_1~combout\(0) & (((\r1|saida\(9)) # (\sel_mux7_1~combout\(1))))) # (!\sel_mux7_1~combout\(0) & (\r0|saida\(9) & ((!\sel_mux7_1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r0|saida\(9),
	datab => \sel_mux7_1~combout\(0),
	datac => \r1|saida\(9),
	datad => \sel_mux7_1~combout\(1),
	combout => \mux7_registers1|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y9_N22
\mux7_registers1|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux6~1_combout\ = (\sel_mux7_1~combout\(1) & ((\mux7_registers1|Mux6~0_combout\ & (\r3|saida\(9))) # (!\mux7_registers1|Mux6~0_combout\ & ((\r2|saida\(9)))))) # (!\sel_mux7_1~combout\(1) & (((\mux7_registers1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|saida\(9),
	datab => \sel_mux7_1~combout\(1),
	datac => \mux7_registers1|Mux6~0_combout\,
	datad => \r2|saida\(9),
	combout => \mux7_registers1|Mux6~1_combout\);

-- Location: LCCOMB_X18_Y9_N30
\mux7_registers1|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux6~2_combout\ = (\mux7_registers1|saidamux7[1]~1_combout\ & (((\mux7_registers1|saidamux7[1]~0_combout\) # (\mux7_registers1|Mux6~1_combout\)))) # (!\mux7_registers1|saidamux7[1]~1_combout\ & (\r4|saida\(9) & 
-- (!\mux7_registers1|saidamux7[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|saida\(9),
	datab => \mux7_registers1|saidamux7[1]~1_combout\,
	datac => \mux7_registers1|saidamux7[1]~0_combout\,
	datad => \mux7_registers1|Mux6~1_combout\,
	combout => \mux7_registers1|Mux6~2_combout\);

-- Location: LCCOMB_X17_Y8_N24
\r6|saida[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[9]~10_combout\ = (\ld_r6~combout\ & \mux1|saida\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r6~combout\,
	datad => \mux1|saida\(9),
	combout => \r6|saida[9]~10_combout\);

-- Location: LCFF_X17_Y8_N25
\r6|saida[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[9]~10_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(9));

-- Location: LCCOMB_X17_Y9_N22
\mux7_registers1|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux6~3_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & ((\mux7_registers1|Mux6~2_combout\ & ((\r6|saida\(9)))) # (!\mux7_registers1|Mux6~2_combout\ & (\r5|saida\(9))))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & 
-- (\mux7_registers1|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \mux7_registers1|Mux6~2_combout\,
	datac => \r5|saida\(9),
	datad => \r6|saida\(9),
	combout => \mux7_registers1|Mux6~3_combout\);

-- Location: LCFF_X17_Y9_N23
\mux7_registers1|saidamux7[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(9));

-- Location: LCCOMB_X24_Y8_N0
\mux1|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux7~1_combout\ = (\sel_mux5_1~combout\(1) & ((\mux1|Mux7~0_combout\ & ((\memoriaDados|altsyncram_component|auto_generated|q_a\(8)))) # (!\mux1|Mux7~0_combout\ & (\regInstrucao|saida\(8))))) # (!\sel_mux5_1~combout\(1) & (\mux1|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \mux1|Mux7~0_combout\,
	datac => \regInstrucao|saida\(8),
	datad => \memoriaDados|altsyncram_component|auto_generated|q_a\(8),
	combout => \mux1|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y8_N16
\mux1|saida[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[8]~feeder_combout\ = \mux1|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux7~1_combout\,
	combout => \mux1|saida[8]~feeder_combout\);

-- Location: LCCOMB_X12_Y9_N28
\alu|saida~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~35_combout\ = (\mux7_registers2|saidamux7\(8) & \mux7_registers1|saidamux7\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(8),
	datad => \mux7_registers1|saidamux7\(8),
	combout => \alu|saida~35_combout\);

-- Location: LCCOMB_X12_Y9_N2
\alu|saida~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~36_combout\ = (\mux7_registers2|saidamux7\(8)) # (\mux7_registers1|saidamux7\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(8),
	datad => \mux7_registers1|saidamux7\(8),
	combout => \alu|saida~36_combout\);

-- Location: LCCOMB_X13_Y9_N4
\alu|saida[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[8]~8_combout\ = (\sel_ULA~combout\(0) & ((\alu|saida~36_combout\))) # (!\sel_ULA~combout\(0) & (\alu|saida~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_ULA~combout\(0),
	datab => \alu|saida~35_combout\,
	datad => \alu|saida~36_combout\,
	combout => \alu|saida[8]~8_combout\);

-- Location: LCCOMB_X12_Y9_N4
\alu|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~0_combout\ = (\alu|saida[10]~19_combout\ & (((!\mux7_registers2|saidamux7\(8))) # (!\alu|saida[10]~18_combout\))) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(8) $ (((\alu|saida[10]~18_combout\) # 
-- (\mux7_registers2|saidamux7\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~18_combout\,
	datab => \mux7_registers2|saidamux7\(8),
	datac => \alu|saida[10]~19_combout\,
	datad => \mux7_registers1|saidamux7\(8),
	combout => \alu|Mux9~0_combout\);

-- Location: LCCOMB_X13_Y9_N20
\alu|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~1_combout\ = (\alu|Mux9~0_combout\ & ((\alu|saida[10]~18_combout\) # ((\alu|Add0~27_combout\) # (!\alu|saida[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~18_combout\,
	datab => \alu|saida[10]~19_combout\,
	datac => \alu|Mux9~0_combout\,
	datad => \alu|Add0~27_combout\,
	combout => \alu|Mux9~1_combout\);

-- Location: LCFF_X13_Y9_N5
\alu|saida[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[8]~8_combout\,
	sdata => \alu|Mux9~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[8]~reg0_regout\);

-- Location: LCFF_X24_Y8_N17
\mux1|saida[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[8]~feeder_combout\,
	sdata => \alu|saida[8]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(8));

-- Location: LCCOMB_X17_Y10_N2
\r5|saida[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[8]~9_combout\ = (\ld_r5~combout\ & \mux1|saida\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \mux1|saida\(8),
	combout => \r5|saida[8]~9_combout\);

-- Location: LCFF_X17_Y10_N3
\r5|saida[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[8]~9_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(8));

-- Location: LCCOMB_X13_Y10_N18
\mux7_registers1|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux7~2_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & (((\mux7_registers1|saidamux7[1]~1_combout\) # (\r5|saida\(8))))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & (\r4|saida\(8) & (!\mux7_registers1|saidamux7[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|saida\(8),
	datab => \mux7_registers1|saidamux7[1]~0_combout\,
	datac => \mux7_registers1|saidamux7[1]~1_combout\,
	datad => \r5|saida\(8),
	combout => \mux7_registers1|Mux7~2_combout\);

-- Location: LCCOMB_X21_Y9_N28
\r1|saida[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[8]~9_combout\ = (\mux1|saida\(8) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(8),
	datad => \ld_r1~combout\,
	combout => \r1|saida[8]~9_combout\);

-- Location: LCFF_X21_Y9_N29
\r1|saida[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[8]~9_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(8));

-- Location: LCCOMB_X20_Y9_N4
\r0|saida[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[8]~9_combout\ = (\mux1|saida\(8) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(8),
	datad => \ld_r0~combout\,
	combout => \r0|saida[8]~9_combout\);

-- Location: LCFF_X20_Y9_N5
\r0|saida[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[8]~9_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(8));

-- Location: LCCOMB_X21_Y9_N12
\mux7_registers1|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux7~0_combout\ = (\sel_mux7_1~combout\(1) & ((\sel_mux7_1~combout\(0)) # ((\r2|saida\(8))))) # (!\sel_mux7_1~combout\(1) & (!\sel_mux7_1~combout\(0) & (\r0|saida\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_1~combout\(1),
	datab => \sel_mux7_1~combout\(0),
	datac => \r0|saida\(8),
	datad => \r2|saida\(8),
	combout => \mux7_registers1|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y9_N30
\mux7_registers1|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux7~1_combout\ = (\sel_mux7_1~combout\(0) & ((\mux7_registers1|Mux7~0_combout\ & (\r3|saida\(8))) # (!\mux7_registers1|Mux7~0_combout\ & ((\r1|saida\(8)))))) # (!\sel_mux7_1~combout\(0) & (((\mux7_registers1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|saida\(8),
	datab => \r1|saida\(8),
	datac => \sel_mux7_1~combout\(0),
	datad => \mux7_registers1|Mux7~0_combout\,
	combout => \mux7_registers1|Mux7~1_combout\);

-- Location: LCCOMB_X13_Y10_N22
\mux7_registers1|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux7~3_combout\ = (\mux7_registers1|Mux7~2_combout\ & ((\r6|saida\(8)) # ((!\mux7_registers1|saidamux7[1]~1_combout\)))) # (!\mux7_registers1|Mux7~2_combout\ & (((\mux7_registers1|saidamux7[1]~1_combout\ & 
-- \mux7_registers1|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r6|saida\(8),
	datab => \mux7_registers1|Mux7~2_combout\,
	datac => \mux7_registers1|saidamux7[1]~1_combout\,
	datad => \mux7_registers1|Mux7~1_combout\,
	combout => \mux7_registers1|Mux7~3_combout\);

-- Location: LCFF_X13_Y10_N23
\mux7_registers1|saidamux7[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(8));

-- Location: LCCOMB_X22_Y8_N8
\mux1|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux8~1_combout\ = (\mux1|Mux8~0_combout\ & (((\memoriaDados|altsyncram_component|auto_generated|q_a\(7)) # (!\sel_mux5_1~combout\(0))))) # (!\mux1|Mux8~0_combout\ & (\mux7_registers1|saidamux7\(7) & ((\sel_mux5_1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(7),
	datab => \mux1|Mux8~0_combout\,
	datac => \memoriaDados|altsyncram_component|auto_generated|q_a\(7),
	datad => \sel_mux5_1~combout\(0),
	combout => \mux1|Mux8~1_combout\);

-- Location: LCCOMB_X22_Y8_N22
\mux1|saida[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[7]~feeder_combout\ = \mux1|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux8~1_combout\,
	combout => \mux1|saida[7]~feeder_combout\);

-- Location: LCCOMB_X15_Y9_N0
\r6|saida[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[7]~8_combout\ = (\ld_r6~combout\ & \mux1|saida\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r6~combout\,
	datad => \mux1|saida\(7),
	combout => \r6|saida[7]~8_combout\);

-- Location: LCFF_X15_Y9_N1
\r6|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[7]~8_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(7));

-- Location: LCCOMB_X15_Y10_N18
\mux7_registers2|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux8~2_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & ((\r5|saida\(7)) # ((\mux7_registers2|saidamux7[4]~1_combout\)))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & (((\r4|saida\(7) & 
-- !\mux7_registers2|saidamux7[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r5|saida\(7),
	datab => \r4|saida\(7),
	datac => \mux7_registers2|saidamux7[4]~0_combout\,
	datad => \mux7_registers2|saidamux7[4]~1_combout\,
	combout => \mux7_registers2|Mux8~2_combout\);

-- Location: LCCOMB_X15_Y10_N6
\mux7_registers2|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux8~3_combout\ = (\mux7_registers2|saidamux7[4]~1_combout\ & ((\mux7_registers2|Mux8~2_combout\ & ((\r6|saida\(7)))) # (!\mux7_registers2|Mux8~2_combout\ & (\mux7_registers2|Mux8~1_combout\)))) # 
-- (!\mux7_registers2|saidamux7[4]~1_combout\ & (((\mux7_registers2|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|Mux8~1_combout\,
	datab => \r6|saida\(7),
	datac => \mux7_registers2|saidamux7[4]~1_combout\,
	datad => \mux7_registers2|Mux8~2_combout\,
	combout => \mux7_registers2|Mux8~3_combout\);

-- Location: LCFF_X15_Y10_N7
\mux7_registers2|saidamux7[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(7));

-- Location: LCCOMB_X15_Y8_N22
\alu|saida~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~34_combout\ = (\mux7_registers1|saidamux7\(7)) # (\mux7_registers2|saidamux7\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(7),
	datac => \mux7_registers2|saidamux7\(7),
	combout => \alu|saida~34_combout\);

-- Location: LCCOMB_X15_Y8_N20
\alu|saida[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[7]~7_combout\ = (\sel_ULA~combout\(0) & ((\alu|saida~34_combout\))) # (!\sel_ULA~combout\(0) & (\alu|saida~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida~33_combout\,
	datab => \sel_ULA~combout\(0),
	datad => \alu|saida~34_combout\,
	combout => \alu|saida[7]~7_combout\);

-- Location: LCCOMB_X15_Y8_N14
\alu|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~1_combout\ = (\alu|Mux8~0_combout\ & (((!\mux7_registers2|saidamux7\(7))) # (!\alu|saida[10]~19_combout\))) # (!\alu|Mux8~0_combout\ & (\alu|saida[10]~19_combout\ & ((\alu|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~0_combout\,
	datab => \alu|saida[10]~19_combout\,
	datac => \mux7_registers2|saidamux7\(7),
	datad => \alu|Add0~24_combout\,
	combout => \alu|Mux8~1_combout\);

-- Location: LCFF_X15_Y8_N21
\alu|saida[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[7]~7_combout\,
	sdata => \alu|Mux8~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[7]~reg0_regout\);

-- Location: LCFF_X22_Y8_N23
\mux1|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[7]~feeder_combout\,
	sdata => \alu|saida[7]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(7));

-- Location: LCCOMB_X18_Y8_N12
\r4|saida[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[7]~8_combout\ = (\ld_r4~combout\ & \mux1|saida\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_r4~combout\,
	datad => \mux1|saida\(7),
	combout => \r4|saida[7]~8_combout\);

-- Location: LCFF_X18_Y8_N13
\r4|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[7]~8_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(7));

-- Location: LCCOMB_X20_Y10_N12
\r0|saida[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[7]~8_combout\ = (\mux1|saida\(7) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(7),
	datad => \ld_r0~combout\,
	combout => \r0|saida[7]~8_combout\);

-- Location: LCFF_X20_Y10_N13
\r0|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[7]~8_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(7));

-- Location: LCCOMB_X20_Y10_N30
\mux7_registers1|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux8~0_combout\ = (\sel_mux7_1~combout\(0) & ((\r1|saida\(7)) # ((\sel_mux7_1~combout\(1))))) # (!\sel_mux7_1~combout\(0) & (((!\sel_mux7_1~combout\(1) & \r0|saida\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|saida\(7),
	datab => \sel_mux7_1~combout\(0),
	datac => \sel_mux7_1~combout\(1),
	datad => \r0|saida\(7),
	combout => \mux7_registers1|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y10_N18
\r2|saida[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[7]~8_combout\ = (\mux1|saida\(7) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(7),
	datad => \ld_r2~combout\,
	combout => \r2|saida[7]~8_combout\);

-- Location: LCFF_X22_Y10_N19
\r2|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[7]~8_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(7));

-- Location: LCCOMB_X19_Y10_N30
\mux7_registers1|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux8~1_combout\ = (\mux7_registers1|Mux8~0_combout\ & ((\r3|saida\(7)) # ((!\sel_mux7_1~combout\(1))))) # (!\mux7_registers1|Mux8~0_combout\ & (((\sel_mux7_1~combout\(1) & \r2|saida\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r3|saida\(7),
	datab => \mux7_registers1|Mux8~0_combout\,
	datac => \sel_mux7_1~combout\(1),
	datad => \r2|saida\(7),
	combout => \mux7_registers1|Mux8~1_combout\);

-- Location: LCCOMB_X15_Y10_N8
\mux7_registers1|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux8~2_combout\ = (\mux7_registers1|saidamux7[1]~1_combout\ & (((\mux7_registers1|Mux8~1_combout\) # (\mux7_registers1|saidamux7[1]~0_combout\)))) # (!\mux7_registers1|saidamux7[1]~1_combout\ & (\r4|saida\(7) & 
-- ((!\mux7_registers1|saidamux7[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~1_combout\,
	datab => \r4|saida\(7),
	datac => \mux7_registers1|Mux8~1_combout\,
	datad => \mux7_registers1|saidamux7[1]~0_combout\,
	combout => \mux7_registers1|Mux8~2_combout\);

-- Location: LCCOMB_X17_Y10_N4
\r5|saida[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[7]~8_combout\ = (\mux1|saida\(7) & \ld_r5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(7),
	datac => \ld_r5~combout\,
	combout => \r5|saida[7]~8_combout\);

-- Location: LCFF_X17_Y10_N5
\r5|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[7]~8_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(7));

-- Location: LCCOMB_X15_Y10_N26
\mux7_registers1|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux8~3_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & ((\mux7_registers1|Mux8~2_combout\ & ((\r6|saida\(7)))) # (!\mux7_registers1|Mux8~2_combout\ & (\r5|saida\(7))))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & 
-- (\mux7_registers1|Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \mux7_registers1|Mux8~2_combout\,
	datac => \r5|saida\(7),
	datad => \r6|saida\(7),
	combout => \mux7_registers1|Mux8~3_combout\);

-- Location: LCFF_X15_Y10_N27
\mux7_registers1|saidamux7[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(7));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(6),
	combout => \in_RE~combout\(6));

-- Location: LCCOMB_X21_Y8_N2
\inRegister|saida[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[6]~7_combout\ = (\in_RE~combout\(6) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(6),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[6]~7_combout\);

-- Location: LCFF_X21_Y8_N3
\inRegister|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[6]~7_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(6));

-- Location: LCCOMB_X21_Y8_N8
\mux1|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux9~0_combout\ = (\sel_mux5_1~combout\(1) & (((\sel_mux5_1~combout\(0))))) # (!\sel_mux5_1~combout\(1) & ((\sel_mux5_1~combout\(0) & ((\mux7_registers1|saidamux7\(6)))) # (!\sel_mux5_1~combout\(0) & (\inRegister|saida\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \inRegister|saida\(6),
	datac => \mux7_registers1|saidamux7\(6),
	datad => \sel_mux5_1~combout\(0),
	combout => \mux1|Mux9~0_combout\);

-- Location: LCCOMB_X22_Y8_N12
\mux1|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux9~1_combout\ = (\sel_mux5_1~combout\(1) & ((\mux1|Mux9~0_combout\ & ((\memoriaDados|altsyncram_component|auto_generated|q_a\(6)))) # (!\mux1|Mux9~0_combout\ & (\regInstrucao|saida\(6))))) # (!\sel_mux5_1~combout\(1) & (((\mux1|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \regInstrucao|saida\(6),
	datac => \memoriaDados|altsyncram_component|auto_generated|q_a\(6),
	datad => \mux1|Mux9~0_combout\,
	combout => \mux1|Mux9~1_combout\);

-- Location: LCCOMB_X22_Y8_N24
\mux1|saida[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[6]~feeder_combout\ = \mux1|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux9~1_combout\,
	combout => \mux1|saida[6]~feeder_combout\);

-- Location: LCCOMB_X12_Y10_N30
\alu|saida~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~32_combout\ = (\mux7_registers1|saidamux7\(6)) # (\mux7_registers2|saidamux7\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers1|saidamux7\(6),
	datad => \mux7_registers2|saidamux7\(6),
	combout => \alu|saida~32_combout\);

-- Location: LCCOMB_X12_Y10_N20
\alu|saida[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[6]~6_combout\ = (\sel_ULA~combout\(0) & ((\alu|saida~32_combout\))) # (!\sel_ULA~combout\(0) & (\alu|saida~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida~31_combout\,
	datab => \sel_ULA~combout\(0),
	datad => \alu|saida~32_combout\,
	combout => \alu|saida[6]~6_combout\);

-- Location: LCCOMB_X12_Y10_N4
\alu|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~0_combout\ = (\alu|saida[10]~19_combout\ & (((!\mux7_registers2|saidamux7\(6))) # (!\alu|saida[10]~18_combout\))) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(6) $ (((\alu|saida[10]~18_combout\) # 
-- (\mux7_registers2|saidamux7\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~18_combout\,
	datab => \alu|saida[10]~19_combout\,
	datac => \mux7_registers1|saidamux7\(6),
	datad => \mux7_registers2|saidamux7\(6),
	combout => \alu|Mux7~0_combout\);

-- Location: LCCOMB_X12_Y10_N10
\alu|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~1_combout\ = (\alu|Mux7~0_combout\ & ((\alu|saida[10]~18_combout\) # ((\alu|Add0~21_combout\) # (!\alu|saida[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~18_combout\,
	datab => \alu|saida[10]~19_combout\,
	datac => \alu|Mux7~0_combout\,
	datad => \alu|Add0~21_combout\,
	combout => \alu|Mux7~1_combout\);

-- Location: LCFF_X12_Y10_N21
\alu|saida[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[6]~6_combout\,
	sdata => \alu|Mux7~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[6]~reg0_regout\);

-- Location: LCFF_X22_Y8_N25
\mux1|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[6]~feeder_combout\,
	sdata => \alu|saida[6]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(6));

-- Location: LCCOMB_X18_Y8_N2
\r4|saida[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[6]~7_combout\ = (\ld_r4~combout\ & \mux1|saida\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_r4~combout\,
	datad => \mux1|saida\(6),
	combout => \r4|saida[6]~7_combout\);

-- Location: LCFF_X18_Y8_N3
\r4|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[6]~7_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(6));

-- Location: LCCOMB_X15_Y10_N14
\mux7_registers1|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux9~2_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & (((\r5|saida\(6)) # (\mux7_registers1|saidamux7[1]~1_combout\)))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & (\r4|saida\(6) & 
-- ((!\mux7_registers1|saidamux7[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \r4|saida\(6),
	datac => \r5|saida\(6),
	datad => \mux7_registers1|saidamux7[1]~1_combout\,
	combout => \mux7_registers1|Mux9~2_combout\);

-- Location: LCCOMB_X17_Y8_N28
\r6|saida[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[6]~7_combout\ = (\ld_r6~combout\ & \mux1|saida\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r6~combout\,
	datad => \mux1|saida\(6),
	combout => \r6|saida[6]~7_combout\);

-- Location: LCFF_X17_Y8_N29
\r6|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[6]~7_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(6));

-- Location: LCCOMB_X20_Y9_N12
\r1|saida[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[6]~7_combout\ = (\mux1|saida\(6) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(6),
	datad => \ld_r1~combout\,
	combout => \r1|saida[6]~7_combout\);

-- Location: LCFF_X20_Y9_N13
\r1|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[6]~7_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(6));

-- Location: LCCOMB_X20_Y9_N30
\r0|saida[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[6]~7_combout\ = (\mux1|saida\(6) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(6),
	datad => \ld_r0~combout\,
	combout => \r0|saida[6]~7_combout\);

-- Location: LCFF_X20_Y9_N31
\r0|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[6]~7_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(6));

-- Location: LCCOMB_X19_Y9_N22
\mux7_registers1|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux9~0_combout\ = (\sel_mux7_1~combout\(0) & (((\sel_mux7_1~combout\(1))))) # (!\sel_mux7_1~combout\(0) & ((\sel_mux7_1~combout\(1) & ((\r2|saida\(6)))) # (!\sel_mux7_1~combout\(1) & (\r0|saida\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_1~combout\(0),
	datab => \r0|saida\(6),
	datac => \sel_mux7_1~combout\(1),
	datad => \r2|saida\(6),
	combout => \mux7_registers1|Mux9~0_combout\);

-- Location: LCCOMB_X19_Y9_N4
\mux7_registers1|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux9~1_combout\ = (\sel_mux7_1~combout\(0) & ((\mux7_registers1|Mux9~0_combout\ & (\r3|saida\(6))) # (!\mux7_registers1|Mux9~0_combout\ & ((\r1|saida\(6)))))) # (!\sel_mux7_1~combout\(0) & (((\mux7_registers1|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_1~combout\(0),
	datab => \r3|saida\(6),
	datac => \r1|saida\(6),
	datad => \mux7_registers1|Mux9~0_combout\,
	combout => \mux7_registers1|Mux9~1_combout\);

-- Location: LCCOMB_X15_Y10_N16
\mux7_registers1|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux9~3_combout\ = (\mux7_registers1|saidamux7[1]~1_combout\ & ((\mux7_registers1|Mux9~2_combout\ & (\r6|saida\(6))) # (!\mux7_registers1|Mux9~2_combout\ & ((\mux7_registers1|Mux9~1_combout\))))) # 
-- (!\mux7_registers1|saidamux7[1]~1_combout\ & (\mux7_registers1|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~1_combout\,
	datab => \mux7_registers1|Mux9~2_combout\,
	datac => \r6|saida\(6),
	datad => \mux7_registers1|Mux9~1_combout\,
	combout => \mux7_registers1|Mux9~3_combout\);

-- Location: LCFF_X15_Y10_N17
\mux7_registers1|saidamux7[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(6));

-- Location: LCCOMB_X22_Y8_N2
\mux1|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux10~1_combout\ = (\sel_mux5_1~combout\(0) & ((\mux1|Mux10~0_combout\ & ((\memoriaDados|altsyncram_component|auto_generated|q_a\(5)))) # (!\mux1|Mux10~0_combout\ & (\mux7_registers1|saidamux7\(5))))) # (!\sel_mux5_1~combout\(0) & 
-- (\mux1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(0),
	datab => \mux1|Mux10~0_combout\,
	datac => \mux7_registers1|saidamux7\(5),
	datad => \memoriaDados|altsyncram_component|auto_generated|q_a\(5),
	combout => \mux1|Mux10~1_combout\);

-- Location: LCCOMB_X22_Y8_N6
\mux1|saida[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[5]~feeder_combout\ = \mux1|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux10~1_combout\,
	combout => \mux1|saida[5]~feeder_combout\);

-- Location: LCCOMB_X17_Y8_N26
\r6|saida[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[5]~6_combout\ = (\mux1|saida\(5) & \ld_r6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(5),
	datac => \ld_r6~combout\,
	combout => \r6|saida[5]~6_combout\);

-- Location: LCFF_X17_Y8_N27
\r6|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[5]~6_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(5));

-- Location: LCCOMB_X21_Y10_N30
\r1|saida[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[5]~6_combout\ = (\mux1|saida\(5) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(5),
	datad => \ld_r1~combout\,
	combout => \r1|saida[5]~6_combout\);

-- Location: LCFF_X21_Y10_N31
\r1|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[5]~6_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(5));

-- Location: LCCOMB_X21_Y10_N14
\r3|saida[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[5]~6_combout\ = (\ld_r3~combout\ & \mux1|saida\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r3~combout\,
	datad => \mux1|saida\(5),
	combout => \r3|saida[5]~6_combout\);

-- Location: LCFF_X21_Y10_N15
\r3|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[5]~6_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(5));

-- Location: LCCOMB_X20_Y10_N26
\mux7_registers2|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux10~1_combout\ = (\mux7_registers2|Mux10~0_combout\ & (((\r3|saida\(5)) # (!\sel_mux7_2~combout\(0))))) # (!\mux7_registers2|Mux10~0_combout\ & (\r1|saida\(5) & ((\sel_mux7_2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|Mux10~0_combout\,
	datab => \r1|saida\(5),
	datac => \r3|saida\(5),
	datad => \sel_mux7_2~combout\(0),
	combout => \mux7_registers2|Mux10~1_combout\);

-- Location: LCCOMB_X13_Y10_N2
\mux7_registers2|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux10~2_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & (((\r5|saida\(5)) # (\mux7_registers2|saidamux7[4]~1_combout\)))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & (\r4|saida\(5) & 
-- ((!\mux7_registers2|saidamux7[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r4|saida\(5),
	datab => \r5|saida\(5),
	datac => \mux7_registers2|saidamux7[4]~0_combout\,
	datad => \mux7_registers2|saidamux7[4]~1_combout\,
	combout => \mux7_registers2|Mux10~2_combout\);

-- Location: LCCOMB_X13_Y10_N30
\mux7_registers2|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux10~3_combout\ = (\mux7_registers2|saidamux7[4]~1_combout\ & ((\mux7_registers2|Mux10~2_combout\ & (\r6|saida\(5))) # (!\mux7_registers2|Mux10~2_combout\ & ((\mux7_registers2|Mux10~1_combout\))))) # 
-- (!\mux7_registers2|saidamux7[4]~1_combout\ & (((\mux7_registers2|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~1_combout\,
	datab => \r6|saida\(5),
	datac => \mux7_registers2|Mux10~1_combout\,
	datad => \mux7_registers2|Mux10~2_combout\,
	combout => \mux7_registers2|Mux10~3_combout\);

-- Location: LCFF_X13_Y10_N31
\mux7_registers2|saidamux7[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(5));

-- Location: LCCOMB_X12_Y10_N0
\alu|saida~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~29_combout\ = (\mux7_registers2|saidamux7\(5) & \mux7_registers1|saidamux7\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(5),
	datad => \mux7_registers1|saidamux7\(5),
	combout => \alu|saida~29_combout\);

-- Location: LCCOMB_X12_Y10_N22
\alu|saida[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[5]~5_combout\ = (\sel_ULA~combout\(0) & (\alu|saida~30_combout\)) # (!\sel_ULA~combout\(0) & ((\alu|saida~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida~30_combout\,
	datab => \sel_ULA~combout\(0),
	datad => \alu|saida~29_combout\,
	combout => \alu|saida[5]~5_combout\);

-- Location: LCCOMB_X13_Y9_N2
\alu|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~0_combout\ = (\alu|saida[10]~19_combout\ & (\alu|saida[10]~18_combout\)) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(5) $ (((\alu|saida[10]~18_combout\) # (\mux7_registers2|saidamux7\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~18_combout\,
	datab => \alu|saida[10]~19_combout\,
	datac => \mux7_registers2|saidamux7\(5),
	datad => \mux7_registers1|saidamux7\(5),
	combout => \alu|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y10_N14
\alu|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~1_combout\ = (\alu|saida[10]~19_combout\ & ((\alu|Mux6~0_combout\ & (!\mux7_registers2|saidamux7\(5))) # (!\alu|Mux6~0_combout\ & ((\alu|Add0~18_combout\))))) # (!\alu|saida[10]~19_combout\ & (((\alu|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~19_combout\,
	datab => \mux7_registers2|saidamux7\(5),
	datac => \alu|Mux6~0_combout\,
	datad => \alu|Add0~18_combout\,
	combout => \alu|Mux6~1_combout\);

-- Location: LCFF_X12_Y10_N23
\alu|saida[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[5]~5_combout\,
	sdata => \alu|Mux6~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[5]~reg0_regout\);

-- Location: LCFF_X22_Y8_N7
\mux1|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[5]~feeder_combout\,
	sdata => \alu|saida[5]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(5));

-- Location: LCCOMB_X17_Y10_N12
\r5|saida[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[5]~6_combout\ = (\ld_r5~combout\ & \mux1|saida\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \mux1|saida\(5),
	combout => \r5|saida[5]~6_combout\);

-- Location: LCFF_X17_Y10_N13
\r5|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[5]~6_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(5));

-- Location: LCCOMB_X13_Y10_N28
\mux7_registers1|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux10~3_combout\ = (\mux7_registers1|Mux10~2_combout\ & (((\r6|saida\(5))) # (!\mux7_registers1|saidamux7[1]~0_combout\))) # (!\mux7_registers1|Mux10~2_combout\ & (\mux7_registers1|saidamux7[1]~0_combout\ & (\r5|saida\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|Mux10~2_combout\,
	datab => \mux7_registers1|saidamux7[1]~0_combout\,
	datac => \r5|saida\(5),
	datad => \r6|saida\(5),
	combout => \mux7_registers1|Mux10~3_combout\);

-- Location: LCFF_X13_Y10_N29
\mux7_registers1|saidamux7[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(5));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_RE[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_RE(4),
	combout => \in_RE~combout\(4));

-- Location: LCCOMB_X25_Y8_N22
\inRegister|saida[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inRegister|saida[4]~5_combout\ = (\in_RE~combout\(4) & \ld_RE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_RE~combout\(4),
	datad => \ld_RE~combout\,
	combout => \inRegister|saida[4]~5_combout\);

-- Location: LCFF_X25_Y8_N23
\inRegister|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inRegister|saida[4]~5_combout\,
	ena => \inRegister|saida[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inRegister|saida\(4));

-- Location: LCCOMB_X25_Y8_N4
\mux1|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux11~0_combout\ = (\sel_mux5_1~combout\(1) & (((\sel_mux5_1~combout\(0))))) # (!\sel_mux5_1~combout\(1) & ((\sel_mux5_1~combout\(0) & ((\mux7_registers1|saidamux7\(4)))) # (!\sel_mux5_1~combout\(0) & (\inRegister|saida\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \inRegister|saida\(4),
	datac => \sel_mux5_1~combout\(0),
	datad => \mux7_registers1|saidamux7\(4),
	combout => \mux1|Mux11~0_combout\);

-- Location: LCCOMB_X24_Y8_N28
\mux1|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux11~1_combout\ = (\sel_mux5_1~combout\(1) & ((\mux1|Mux11~0_combout\ & ((\memoriaDados|altsyncram_component|auto_generated|q_a\(4)))) # (!\mux1|Mux11~0_combout\ & (\regInstrucao|saida\(4))))) # (!\sel_mux5_1~combout\(1) & 
-- (((\mux1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \regInstrucao|saida\(4),
	datac => \memoriaDados|altsyncram_component|auto_generated|q_a\(4),
	datad => \mux1|Mux11~0_combout\,
	combout => \mux1|Mux11~1_combout\);

-- Location: LCCOMB_X24_Y8_N2
\mux1|saida[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[4]~feeder_combout\ = \mux1|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux11~1_combout\,
	combout => \mux1|saida[4]~feeder_combout\);

-- Location: LCCOMB_X12_Y10_N18
\alu|saida~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~28_combout\ = (\mux7_registers2|saidamux7\(4)) # (\mux7_registers1|saidamux7\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(4),
	datac => \mux7_registers1|saidamux7\(4),
	combout => \alu|saida~28_combout\);

-- Location: LCCOMB_X12_Y10_N28
\alu|saida[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[4]~4_combout\ = (\sel_ULA~combout\(0) & ((\alu|saida~28_combout\))) # (!\sel_ULA~combout\(0) & (\alu|saida~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida~27_combout\,
	datab => \sel_ULA~combout\(0),
	datad => \alu|saida~28_combout\,
	combout => \alu|saida[4]~4_combout\);

-- Location: LCCOMB_X12_Y10_N16
\alu|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~0_combout\ = (\alu|saida[10]~19_combout\ & (((!\alu|saida[10]~18_combout\)) # (!\mux7_registers2|saidamux7\(4)))) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(4) $ (((\mux7_registers2|saidamux7\(4)) # 
-- (\alu|saida[10]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(4),
	datab => \alu|saida[10]~19_combout\,
	datac => \mux7_registers1|saidamux7\(4),
	datad => \alu|saida[10]~18_combout\,
	combout => \alu|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y10_N14
\alu|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~1_combout\ = (\alu|Mux5~0_combout\ & ((\alu|saida[10]~18_combout\) # ((\alu|Add0~15_combout\) # (!\alu|saida[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~18_combout\,
	datab => \alu|saida[10]~19_combout\,
	datac => \alu|Mux5~0_combout\,
	datad => \alu|Add0~15_combout\,
	combout => \alu|Mux5~1_combout\);

-- Location: LCFF_X12_Y10_N29
\alu|saida[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[4]~4_combout\,
	sdata => \alu|Mux5~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[4]~reg0_regout\);

-- Location: LCFF_X24_Y8_N3
\mux1|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[4]~feeder_combout\,
	sdata => \alu|saida[4]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(4));

-- Location: LCCOMB_X18_Y10_N18
\r4|saida[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[4]~5_combout\ = (\ld_r4~combout\ & \mux1|saida\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r4~combout\,
	datad => \mux1|saida\(4),
	combout => \r4|saida[4]~5_combout\);

-- Location: LCFF_X18_Y10_N19
\r4|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[4]~5_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(4));

-- Location: LCCOMB_X17_Y10_N14
\r5|saida[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[4]~5_combout\ = (\mux1|saida\(4) & \ld_r5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(4),
	datac => \ld_r5~combout\,
	combout => \r5|saida[4]~5_combout\);

-- Location: LCFF_X17_Y10_N15
\r5|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[4]~5_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(4));

-- Location: LCCOMB_X18_Y10_N22
\mux7_registers1|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux11~2_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & (((\r5|saida\(4)) # (\mux7_registers1|saidamux7[1]~1_combout\)))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & (\r4|saida\(4) & 
-- ((!\mux7_registers1|saidamux7[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \r4|saida\(4),
	datac => \r5|saida\(4),
	datad => \mux7_registers1|saidamux7[1]~1_combout\,
	combout => \mux7_registers1|Mux11~2_combout\);

-- Location: LCCOMB_X17_Y8_N8
\r6|saida[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[4]~5_combout\ = (\ld_r6~combout\ & \mux1|saida\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r6~combout\,
	datad => \mux1|saida\(4),
	combout => \r6|saida[4]~5_combout\);

-- Location: LCFF_X17_Y8_N9
\r6|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[4]~5_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(4));

-- Location: LCCOMB_X19_Y10_N0
\r3|saida[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[4]~5_combout\ = (\ld_r3~combout\ & \mux1|saida\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_r3~combout\,
	datad => \mux1|saida\(4),
	combout => \r3|saida[4]~5_combout\);

-- Location: LCFF_X19_Y10_N1
\r3|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[4]~5_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(4));

-- Location: LCCOMB_X22_Y10_N4
\r2|saida[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[4]~5_combout\ = (\mux1|saida\(4) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(4),
	datad => \ld_r2~combout\,
	combout => \r2|saida[4]~5_combout\);

-- Location: LCFF_X22_Y10_N5
\r2|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[4]~5_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(4));

-- Location: LCCOMB_X20_Y10_N22
\r0|saida[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[4]~5_combout\ = (\mux1|saida\(4) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(4),
	datad => \ld_r0~combout\,
	combout => \r0|saida[4]~5_combout\);

-- Location: LCFF_X20_Y10_N23
\r0|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[4]~5_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(4));

-- Location: LCCOMB_X18_Y10_N26
\mux7_registers1|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux11~0_combout\ = (\sel_mux7_1~combout\(1) & ((\sel_mux7_1~combout\(0)) # ((\r2|saida\(4))))) # (!\sel_mux7_1~combout\(1) & (!\sel_mux7_1~combout\(0) & ((\r0|saida\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_1~combout\(1),
	datab => \sel_mux7_1~combout\(0),
	datac => \r2|saida\(4),
	datad => \r0|saida\(4),
	combout => \mux7_registers1|Mux11~0_combout\);

-- Location: LCCOMB_X18_Y10_N24
\mux7_registers1|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux11~1_combout\ = (\sel_mux7_1~combout\(0) & ((\mux7_registers1|Mux11~0_combout\ & ((\r3|saida\(4)))) # (!\mux7_registers1|Mux11~0_combout\ & (\r1|saida\(4))))) # (!\sel_mux7_1~combout\(0) & (((\mux7_registers1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|saida\(4),
	datab => \sel_mux7_1~combout\(0),
	datac => \r3|saida\(4),
	datad => \mux7_registers1|Mux11~0_combout\,
	combout => \mux7_registers1|Mux11~1_combout\);

-- Location: LCCOMB_X15_Y10_N20
\mux7_registers1|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux11~3_combout\ = (\mux7_registers1|saidamux7[1]~1_combout\ & ((\mux7_registers1|Mux11~2_combout\ & (\r6|saida\(4))) # (!\mux7_registers1|Mux11~2_combout\ & ((\mux7_registers1|Mux11~1_combout\))))) # 
-- (!\mux7_registers1|saidamux7[1]~1_combout\ & (\mux7_registers1|Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~1_combout\,
	datab => \mux7_registers1|Mux11~2_combout\,
	datac => \r6|saida\(4),
	datad => \mux7_registers1|Mux11~1_combout\,
	combout => \mux7_registers1|Mux11~3_combout\);

-- Location: LCFF_X15_Y10_N21
\mux7_registers1|saidamux7[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(4));

-- Location: LCCOMB_X21_Y8_N12
\mux1|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux12~1_combout\ = (\sel_mux5_1~combout\(0) & ((\mux1|Mux12~0_combout\ & ((\memoriaDados|altsyncram_component|auto_generated|q_a\(3)))) # (!\mux1|Mux12~0_combout\ & (\mux7_registers1|saidamux7\(3))))) # (!\sel_mux5_1~combout\(0) & 
-- (((\mux1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(0),
	datab => \mux7_registers1|saidamux7\(3),
	datac => \mux1|Mux12~0_combout\,
	datad => \memoriaDados|altsyncram_component|auto_generated|q_a\(3),
	combout => \mux1|Mux12~1_combout\);

-- Location: LCCOMB_X21_Y8_N4
\mux1|saida[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[3]~feeder_combout\ = \mux1|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux12~1_combout\,
	combout => \mux1|saida[3]~feeder_combout\);

-- Location: LCCOMB_X15_Y8_N28
\alu|saida~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~25_combout\ = (\mux7_registers2|saidamux7\(3) & \mux7_registers1|saidamux7\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(3),
	datac => \mux7_registers1|saidamux7\(3),
	combout => \alu|saida~25_combout\);

-- Location: LCCOMB_X15_Y8_N18
\alu|saida[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[3]~3_combout\ = (\sel_ULA~combout\(0) & (\alu|saida~26_combout\)) # (!\sel_ULA~combout\(0) & ((\alu|saida~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida~26_combout\,
	datab => \sel_ULA~combout\(0),
	datad => \alu|saida~25_combout\,
	combout => \alu|saida[3]~3_combout\);

-- Location: LCCOMB_X17_Y8_N18
\r6|saida[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[3]~4_combout\ = (\mux1|saida\(3) & \ld_r6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(3),
	datac => \ld_r6~combout\,
	combout => \r6|saida[3]~4_combout\);

-- Location: LCFF_X17_Y8_N19
\r6|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[3]~4_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(3));

-- Location: LCCOMB_X21_Y10_N26
\r3|saida[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[3]~4_combout\ = (\ld_r3~combout\ & \mux1|saida\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_r3~combout\,
	datac => \mux1|saida\(3),
	combout => \r3|saida[3]~4_combout\);

-- Location: LCFF_X21_Y10_N27
\r3|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[3]~4_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(3));

-- Location: LCCOMB_X22_Y10_N26
\r2|saida[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[3]~4_combout\ = (\mux1|saida\(3) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(3),
	datad => \ld_r2~combout\,
	combout => \r2|saida[3]~4_combout\);

-- Location: LCFF_X22_Y10_N27
\r2|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[3]~4_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(3));

-- Location: LCCOMB_X21_Y10_N16
\mux7_registers2|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux12~0_combout\ = (\sel_mux7_2~combout\(1) & (((\r2|saida\(3)) # (\sel_mux7_2~combout\(0))))) # (!\sel_mux7_2~combout\(1) & (\r0|saida\(3) & ((!\sel_mux7_2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r0|saida\(3),
	datab => \sel_mux7_2~combout\(1),
	datac => \r2|saida\(3),
	datad => \sel_mux7_2~combout\(0),
	combout => \mux7_registers2|Mux12~0_combout\);

-- Location: LCCOMB_X21_Y10_N6
\r1|saida[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[3]~4_combout\ = (\mux1|saida\(3) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(3),
	datad => \ld_r1~combout\,
	combout => \r1|saida[3]~4_combout\);

-- Location: LCFF_X21_Y10_N7
\r1|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[3]~4_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(3));

-- Location: LCCOMB_X21_Y10_N20
\mux7_registers2|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux12~1_combout\ = (\sel_mux7_2~combout\(0) & ((\mux7_registers2|Mux12~0_combout\ & (\r3|saida\(3))) # (!\mux7_registers2|Mux12~0_combout\ & ((\r1|saida\(3)))))) # (!\sel_mux7_2~combout\(0) & (((\mux7_registers2|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(0),
	datab => \r3|saida\(3),
	datac => \mux7_registers2|Mux12~0_combout\,
	datad => \r1|saida\(3),
	combout => \mux7_registers2|Mux12~1_combout\);

-- Location: LCCOMB_X14_Y10_N2
\mux7_registers2|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux12~3_combout\ = (\mux7_registers2|Mux12~2_combout\ & (((\r6|saida\(3))) # (!\mux7_registers2|saidamux7[4]~1_combout\))) # (!\mux7_registers2|Mux12~2_combout\ & (\mux7_registers2|saidamux7[4]~1_combout\ & 
-- ((\mux7_registers2|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|Mux12~2_combout\,
	datab => \mux7_registers2|saidamux7[4]~1_combout\,
	datac => \r6|saida\(3),
	datad => \mux7_registers2|Mux12~1_combout\,
	combout => \mux7_registers2|Mux12~3_combout\);

-- Location: LCFF_X14_Y10_N3
\mux7_registers2|saidamux7[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(3));

-- Location: LCCOMB_X15_Y8_N6
\alu|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~1_combout\ = (\alu|Mux4~0_combout\ & (((!\alu|saida[10]~19_combout\)) # (!\mux7_registers2|saidamux7\(3)))) # (!\alu|Mux4~0_combout\ & (((\alu|Add0~12_combout\ & \alu|saida[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux4~0_combout\,
	datab => \mux7_registers2|saidamux7\(3),
	datac => \alu|Add0~12_combout\,
	datad => \alu|saida[10]~19_combout\,
	combout => \alu|Mux4~1_combout\);

-- Location: LCFF_X15_Y8_N19
\alu|saida[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[3]~3_combout\,
	sdata => \alu|Mux4~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[3]~reg0_regout\);

-- Location: LCFF_X21_Y8_N5
\mux1|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[3]~feeder_combout\,
	sdata => \alu|saida[3]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(3));

-- Location: LCCOMB_X17_Y10_N6
\r5|saida[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[3]~4_combout\ = (\ld_r5~combout\ & \mux1|saida\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \mux1|saida\(3),
	combout => \r5|saida[3]~4_combout\);

-- Location: LCFF_X17_Y10_N7
\r5|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[3]~4_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(3));

-- Location: LCCOMB_X18_Y10_N8
\r4|saida[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[3]~4_combout\ = (\mux1|saida\(3) & \ld_r4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(3),
	datac => \ld_r4~combout\,
	combout => \r4|saida[3]~4_combout\);

-- Location: LCFF_X18_Y10_N9
\r4|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[3]~4_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(3));

-- Location: LCCOMB_X20_Y10_N0
\r0|saida[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \r0|saida[3]~4_combout\ = (\mux1|saida\(3) & \ld_r0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(3),
	datad => \ld_r0~combout\,
	combout => \r0|saida[3]~4_combout\);

-- Location: LCFF_X20_Y10_N1
\r0|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r0|saida[3]~4_combout\,
	ena => \r0|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|saida\(3));

-- Location: LCCOMB_X21_Y10_N28
\mux7_registers1|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux12~0_combout\ = (\sel_mux7_1~combout\(0) & ((\sel_mux7_1~combout\(1)) # ((\r1|saida\(3))))) # (!\sel_mux7_1~combout\(0) & (!\sel_mux7_1~combout\(1) & (\r0|saida\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_1~combout\(0),
	datab => \sel_mux7_1~combout\(1),
	datac => \r0|saida\(3),
	datad => \r1|saida\(3),
	combout => \mux7_registers1|Mux12~0_combout\);

-- Location: LCCOMB_X21_Y10_N10
\mux7_registers1|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux12~1_combout\ = (\sel_mux7_1~combout\(1) & ((\mux7_registers1|Mux12~0_combout\ & ((\r3|saida\(3)))) # (!\mux7_registers1|Mux12~0_combout\ & (\r2|saida\(3))))) # (!\sel_mux7_1~combout\(1) & (((\mux7_registers1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r2|saida\(3),
	datab => \r3|saida\(3),
	datac => \sel_mux7_1~combout\(1),
	datad => \mux7_registers1|Mux12~0_combout\,
	combout => \mux7_registers1|Mux12~1_combout\);

-- Location: LCCOMB_X17_Y10_N26
\mux7_registers1|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux12~2_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & (\mux7_registers1|saidamux7[1]~1_combout\)) # (!\mux7_registers1|saidamux7[1]~0_combout\ & ((\mux7_registers1|saidamux7[1]~1_combout\ & ((\mux7_registers1|Mux12~1_combout\))) 
-- # (!\mux7_registers1|saidamux7[1]~1_combout\ & (\r4|saida\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \mux7_registers1|saidamux7[1]~1_combout\,
	datac => \r4|saida\(3),
	datad => \mux7_registers1|Mux12~1_combout\,
	combout => \mux7_registers1|Mux12~2_combout\);

-- Location: LCCOMB_X13_Y10_N6
\mux7_registers1|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux12~3_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & ((\mux7_registers1|Mux12~2_combout\ & (\r6|saida\(3))) # (!\mux7_registers1|Mux12~2_combout\ & ((\r5|saida\(3)))))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & 
-- (((\mux7_registers1|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r6|saida\(3),
	datab => \r5|saida\(3),
	datac => \mux7_registers1|saidamux7[1]~0_combout\,
	datad => \mux7_registers1|Mux12~2_combout\,
	combout => \mux7_registers1|Mux12~3_combout\);

-- Location: LCFF_X13_Y10_N7
\mux7_registers1|saidamux7[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(3));

-- Location: LCCOMB_X24_Y8_N30
\mux1|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux13~1_combout\ = (\mux1|Mux13~0_combout\ & (((\memoriaDados|altsyncram_component|auto_generated|q_a\(2)) # (!\sel_mux5_1~combout\(1))))) # (!\mux1|Mux13~0_combout\ & (\regInstrucao|saida\(2) & ((\sel_mux5_1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|Mux13~0_combout\,
	datab => \regInstrucao|saida\(2),
	datac => \memoriaDados|altsyncram_component|auto_generated|q_a\(2),
	datad => \sel_mux5_1~combout\(1),
	combout => \mux1|Mux13~1_combout\);

-- Location: LCCOMB_X24_Y8_N20
\mux1|saida[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[2]~feeder_combout\ = \mux1|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux13~1_combout\,
	combout => \mux1|saida[2]~feeder_combout\);

-- Location: LCCOMB_X15_Y8_N26
\alu|saida~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~24_combout\ = (\mux7_registers2|saidamux7\(2)) # (\mux7_registers1|saidamux7\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux7_registers2|saidamux7\(2),
	datad => \mux7_registers1|saidamux7\(2),
	combout => \alu|saida~24_combout\);

-- Location: LCCOMB_X15_Y8_N0
\alu|saida~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~23_combout\ = (\mux7_registers2|saidamux7\(2) & \mux7_registers1|saidamux7\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux7_registers2|saidamux7\(2),
	datad => \mux7_registers1|saidamux7\(2),
	combout => \alu|saida~23_combout\);

-- Location: LCCOMB_X15_Y8_N8
\alu|saida[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[2]~2_combout\ = (\sel_ULA~combout\(0) & (\alu|saida~24_combout\)) # (!\sel_ULA~combout\(0) & ((\alu|saida~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_ULA~combout\(0),
	datab => \alu|saida~24_combout\,
	datad => \alu|saida~23_combout\,
	combout => \alu|saida[2]~2_combout\);

-- Location: LCCOMB_X15_Y8_N4
\alu|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~0_combout\ = (\alu|saida[10]~19_combout\ & (((!\alu|saida[10]~18_combout\) # (!\mux7_registers2|saidamux7\(2))))) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(2) $ (((\mux7_registers2|saidamux7\(2)) # 
-- (\alu|saida[10]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(2),
	datab => \mux7_registers2|saidamux7\(2),
	datac => \alu|saida[10]~19_combout\,
	datad => \alu|saida[10]~18_combout\,
	combout => \alu|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y8_N2
\alu|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~1_combout\ = (\alu|Mux3~0_combout\ & ((\alu|Add0~9_combout\) # ((\alu|saida[10]~18_combout\) # (!\alu|saida[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add0~9_combout\,
	datab => \alu|saida[10]~19_combout\,
	datac => \alu|Mux3~0_combout\,
	datad => \alu|saida[10]~18_combout\,
	combout => \alu|Mux3~1_combout\);

-- Location: LCFF_X15_Y8_N9
\alu|saida[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[2]~2_combout\,
	sdata => \alu|Mux3~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[2]~reg0_regout\);

-- Location: LCFF_X24_Y8_N21
\mux1|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[2]~feeder_combout\,
	sdata => \alu|saida[2]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(2));

-- Location: LCCOMB_X18_Y10_N2
\r4|saida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[2]~3_combout\ = (\ld_r4~combout\ & \mux1|saida\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r4~combout\,
	datad => \mux1|saida\(2),
	combout => \r4|saida[2]~3_combout\);

-- Location: LCFF_X18_Y10_N3
\r4|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[2]~3_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(2));

-- Location: LCCOMB_X17_Y10_N0
\r5|saida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[2]~3_combout\ = (\ld_r5~combout\ & \mux1|saida\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \mux1|saida\(2),
	combout => \r5|saida[2]~3_combout\);

-- Location: LCFF_X17_Y10_N1
\r5|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[2]~3_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(2));

-- Location: LCCOMB_X17_Y11_N28
\mux7_registers1|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux13~2_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & (((\mux7_registers1|saidamux7[1]~1_combout\) # (\r5|saida\(2))))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & (\r4|saida\(2) & (!\mux7_registers1|saidamux7[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \r4|saida\(2),
	datac => \mux7_registers1|saidamux7[1]~1_combout\,
	datad => \r5|saida\(2),
	combout => \mux7_registers1|Mux13~2_combout\);

-- Location: LCCOMB_X19_Y10_N14
\mux7_registers1|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux13~0_combout\ = (\sel_mux7_1~combout\(0) & (\sel_mux7_1~combout\(1))) # (!\sel_mux7_1~combout\(0) & ((\sel_mux7_1~combout\(1) & ((\r2|saida\(2)))) # (!\sel_mux7_1~combout\(1) & (\r0|saida\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_1~combout\(0),
	datab => \sel_mux7_1~combout\(1),
	datac => \r0|saida\(2),
	datad => \r2|saida\(2),
	combout => \mux7_registers1|Mux13~0_combout\);

-- Location: LCCOMB_X19_Y10_N24
\mux7_registers1|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux13~1_combout\ = (\sel_mux7_1~combout\(0) & ((\mux7_registers1|Mux13~0_combout\ & ((\r3|saida\(2)))) # (!\mux7_registers1|Mux13~0_combout\ & (\r1|saida\(2))))) # (!\sel_mux7_1~combout\(0) & (((\mux7_registers1|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_1~combout\(0),
	datab => \r1|saida\(2),
	datac => \mux7_registers1|Mux13~0_combout\,
	datad => \r3|saida\(2),
	combout => \mux7_registers1|Mux13~1_combout\);

-- Location: LCCOMB_X13_Y10_N4
\mux7_registers1|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux13~3_combout\ = (\mux7_registers1|saidamux7[1]~1_combout\ & ((\mux7_registers1|Mux13~2_combout\ & (\r6|saida\(2))) # (!\mux7_registers1|Mux13~2_combout\ & ((\mux7_registers1|Mux13~1_combout\))))) # 
-- (!\mux7_registers1|saidamux7[1]~1_combout\ & (((\mux7_registers1|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r6|saida\(2),
	datab => \mux7_registers1|saidamux7[1]~1_combout\,
	datac => \mux7_registers1|Mux13~2_combout\,
	datad => \mux7_registers1|Mux13~1_combout\,
	combout => \mux7_registers1|Mux13~3_combout\);

-- Location: LCFF_X13_Y10_N5
\mux7_registers1|saidamux7[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux13~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(2));

-- Location: LCCOMB_X20_Y8_N0
\mux1|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux14~1_combout\ = (\mux1|Mux14~0_combout\ & (((\memoriaDados|altsyncram_component|auto_generated|q_a\(1)) # (!\sel_mux5_1~combout\(0))))) # (!\mux1|Mux14~0_combout\ & (\mux7_registers1|saidamux7\(1) & (\sel_mux5_1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(1),
	datab => \mux1|Mux14~0_combout\,
	datac => \sel_mux5_1~combout\(0),
	datad => \memoriaDados|altsyncram_component|auto_generated|q_a\(1),
	combout => \mux1|Mux14~1_combout\);

-- Location: LCCOMB_X20_Y8_N16
\mux1|saida[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[1]~feeder_combout\ = \mux1|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux14~1_combout\,
	combout => \mux1|saida[1]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N30
\alu|saida~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~22_combout\ = (\mux7_registers2|saidamux7\(1)) # (\mux7_registers1|saidamux7\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux7_registers2|saidamux7\(1),
	datac => \mux7_registers1|saidamux7\(1),
	combout => \alu|saida~22_combout\);

-- Location: LCCOMB_X13_Y11_N12
\alu|saida~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~21_combout\ = (\mux7_registers2|saidamux7\(1) & \mux7_registers1|saidamux7\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux7_registers2|saidamux7\(1),
	datac => \mux7_registers1|saidamux7\(1),
	combout => \alu|saida~21_combout\);

-- Location: LCCOMB_X13_Y11_N6
\alu|saida[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[1]~1_combout\ = (\sel_ULA~combout\(0) & (\alu|saida~22_combout\)) # (!\sel_ULA~combout\(0) & ((\alu|saida~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_ULA~combout\(0),
	datab => \alu|saida~22_combout\,
	datad => \alu|saida~21_combout\,
	combout => \alu|saida[1]~1_combout\);

-- Location: LCCOMB_X13_Y11_N4
\alu|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~0_combout\ = (\alu|saida[10]~19_combout\ & (((\alu|saida[10]~18_combout\)))) # (!\alu|saida[10]~19_combout\ & (\mux7_registers1|saidamux7\(1) $ (((\mux7_registers2|saidamux7\(1)) # (\alu|saida[10]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(1),
	datab => \mux7_registers2|saidamux7\(1),
	datac => \alu|saida[10]~18_combout\,
	datad => \alu|saida[10]~19_combout\,
	combout => \alu|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y11_N14
\alu|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~1_combout\ = (\alu|saida[10]~19_combout\ & ((\alu|Mux2~0_combout\ & (!\mux7_registers2|saidamux7\(1))) # (!\alu|Mux2~0_combout\ & ((\alu|Add0~6_combout\))))) # (!\alu|saida[10]~19_combout\ & (\alu|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|saida[10]~19_combout\,
	datab => \alu|Mux2~0_combout\,
	datac => \mux7_registers2|saidamux7\(1),
	datad => \alu|Add0~6_combout\,
	combout => \alu|Mux2~1_combout\);

-- Location: LCFF_X13_Y11_N7
\alu|saida[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[1]~1_combout\,
	sdata => \alu|Mux2~1_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[1]~reg0_regout\);

-- Location: LCFF_X20_Y8_N17
\mux1|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[1]~feeder_combout\,
	sdata => \alu|saida[1]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(1));

-- Location: LCCOMB_X17_Y8_N30
\r6|saida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r6|saida[1]~2_combout\ = (\ld_r6~combout\ & \mux1|saida\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r6~combout\,
	datad => \mux1|saida\(1),
	combout => \r6|saida[1]~2_combout\);

-- Location: LCFF_X17_Y8_N31
\r6|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r6|saida[1]~2_combout\,
	ena => \r6|saida[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r6|saida\(1));

-- Location: LCCOMB_X17_Y10_N30
\r5|saida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r5|saida[1]~2_combout\ = (\ld_r5~combout\ & \mux1|saida\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r5~combout\,
	datad => \mux1|saida\(1),
	combout => \r5|saida[1]~2_combout\);

-- Location: LCFF_X17_Y10_N31
\r5|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r5|saida[1]~2_combout\,
	ena => \r5|saida[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r5|saida\(1));

-- Location: LCCOMB_X18_Y10_N16
\r4|saida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[1]~2_combout\ = (\ld_r4~combout\ & \mux1|saida\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_r4~combout\,
	datad => \mux1|saida\(1),
	combout => \r4|saida[1]~2_combout\);

-- Location: LCFF_X18_Y10_N17
\r4|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[1]~2_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(1));

-- Location: LCCOMB_X21_Y10_N2
\mux7_registers1|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux14~1_combout\ = (\mux7_registers1|Mux14~0_combout\ & ((\r3|saida\(1)) # ((!\sel_mux7_1~combout\(1))))) # (!\mux7_registers1|Mux14~0_combout\ & (((\sel_mux7_1~combout\(1) & \r2|saida\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|Mux14~0_combout\,
	datab => \r3|saida\(1),
	datac => \sel_mux7_1~combout\(1),
	datad => \r2|saida\(1),
	combout => \mux7_registers1|Mux14~1_combout\);

-- Location: LCCOMB_X18_Y10_N28
\mux7_registers1|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux14~2_combout\ = (\mux7_registers1|saidamux7[1]~1_combout\ & (((\mux7_registers1|Mux14~1_combout\) # (\mux7_registers1|saidamux7[1]~0_combout\)))) # (!\mux7_registers1|saidamux7[1]~1_combout\ & (\r4|saida\(1) & 
-- ((!\mux7_registers1|saidamux7[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~1_combout\,
	datab => \r4|saida\(1),
	datac => \mux7_registers1|Mux14~1_combout\,
	datad => \mux7_registers1|saidamux7[1]~0_combout\,
	combout => \mux7_registers1|Mux14~2_combout\);

-- Location: LCCOMB_X14_Y10_N0
\mux7_registers1|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers1|Mux14~3_combout\ = (\mux7_registers1|saidamux7[1]~0_combout\ & ((\mux7_registers1|Mux14~2_combout\ & (\r6|saida\(1))) # (!\mux7_registers1|Mux14~2_combout\ & ((\r5|saida\(1)))))) # (!\mux7_registers1|saidamux7[1]~0_combout\ & 
-- (((\mux7_registers1|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7[1]~0_combout\,
	datab => \r6|saida\(1),
	datac => \r5|saida\(1),
	datad => \mux7_registers1|Mux14~2_combout\,
	combout => \mux7_registers1|Mux14~3_combout\);

-- Location: LCFF_X14_Y10_N1
\mux7_registers1|saidamux7[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers1|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers1|saidamux7\(1));

-- Location: LCCOMB_X22_Y8_N20
\mux1|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|Mux15~1_combout\ = (\sel_mux5_1~combout\(1) & ((\mux1|Mux15~0_combout\ & ((\memoriaDados|altsyncram_component|auto_generated|q_a\(0)))) # (!\mux1|Mux15~0_combout\ & (\regInstrucao|saida\(0))))) # (!\sel_mux5_1~combout\(1) & (\mux1|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux5_1~combout\(1),
	datab => \mux1|Mux15~0_combout\,
	datac => \regInstrucao|saida\(0),
	datad => \memoriaDados|altsyncram_component|auto_generated|q_a\(0),
	combout => \mux1|Mux15~1_combout\);

-- Location: LCCOMB_X22_Y8_N4
\mux1|saida[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|saida[0]~feeder_combout\ = \mux1|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux1|Mux15~1_combout\,
	combout => \mux1|saida[0]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N22
\alu|saida~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~17_combout\ = (\mux7_registers2|saidamux7\(0)) # (\mux7_registers1|saidamux7\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(0),
	datad => \mux7_registers1|saidamux7\(0),
	combout => \alu|saida~17_combout\);

-- Location: LCCOMB_X13_Y11_N28
\alu|saida~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida~16_combout\ = (\mux7_registers2|saidamux7\(0) & \mux7_registers1|saidamux7\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(0),
	datad => \mux7_registers1|saidamux7\(0),
	combout => \alu|saida~16_combout\);

-- Location: LCCOMB_X13_Y11_N20
\alu|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|saida[0]~0_combout\ = (\sel_ULA~combout\(0) & (\alu|saida~17_combout\)) # (!\sel_ULA~combout\(0) & ((\alu|saida~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_ULA~combout\(0),
	datab => \alu|saida~17_combout\,
	datad => \alu|saida~16_combout\,
	combout => \alu|saida[0]~0_combout\);

-- Location: LCCOMB_X13_Y11_N18
\alu|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~3_combout\ = (\sel_ULA~combout\(2) & ((\sel_ULA~combout\(1) & ((\alu|Add0~3_combout\))) # (!\sel_ULA~combout\(1) & (\mux7_registers1|saidamux7\(0))))) # (!\sel_ULA~combout\(2) & (((\alu|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(0),
	datab => \sel_ULA~combout\(2),
	datac => \sel_ULA~combout\(1),
	datad => \alu|Add0~3_combout\,
	combout => \alu|Mux0~3_combout\);

-- Location: LCCOMB_X13_Y11_N24
\alu|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~2_combout\ = (\alu|saida[10]~19_combout\ & ((\alu|saida[10]~18_combout\ & (!\mux7_registers2|saidamux7\(0))) # (!\alu|saida[10]~18_combout\ & ((\alu|Mux0~3_combout\))))) # (!\alu|saida[10]~19_combout\ & (\alu|Mux0~3_combout\ $ 
-- (((\mux7_registers2|saidamux7\(0)) # (\alu|saida[10]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(0),
	datab => \alu|saida[10]~19_combout\,
	datac => \alu|saida[10]~18_combout\,
	datad => \alu|Mux0~3_combout\,
	combout => \alu|Mux0~2_combout\);

-- Location: LCFF_X13_Y11_N21
\alu|saida[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \alu|saida[0]~0_combout\,
	sdata => \alu|Mux0~2_combout\,
	sload => \alu|saida[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \alu|saida[0]~reg0_regout\);

-- Location: LCFF_X22_Y8_N5
\mux1|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|saida[0]~feeder_combout\,
	sdata => \alu|saida[0]~reg0_regout\,
	sload => \sel_mux5_1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux1|saida\(0));

-- Location: LCCOMB_X18_Y8_N0
\r4|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r4|saida[0]~0_combout\ = (\mux1|saida\(0) & \ld_r4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|saida\(0),
	datad => \ld_r4~combout\,
	combout => \r4|saida[0]~0_combout\);

-- Location: LCFF_X18_Y8_N1
\r4|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r4|saida[0]~0_combout\,
	ena => \r4|saida[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r4|saida\(0));

-- Location: LCCOMB_X22_Y10_N20
\r2|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r2|saida[0]~0_combout\ = (\mux1|saida\(0) & \ld_r2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|saida\(0),
	datad => \ld_r2~combout\,
	combout => \r2|saida[0]~0_combout\);

-- Location: LCFF_X22_Y10_N21
\r2|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r2|saida[0]~0_combout\,
	ena => \r2|saida[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|saida\(0));

-- Location: LCCOMB_X19_Y10_N16
\r3|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r3|saida[0]~0_combout\ = (\ld_r3~combout\ & \mux1|saida\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_r3~combout\,
	datac => \mux1|saida\(0),
	combout => \r3|saida[0]~0_combout\);

-- Location: LCFF_X19_Y10_N17
\r3|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r3|saida[0]~0_combout\,
	ena => \r3|saida[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r3|saida\(0));

-- Location: LCCOMB_X20_Y10_N10
\mux7_registers2|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux15~1_combout\ = (\mux7_registers2|Mux15~0_combout\ & (((\r3|saida\(0))) # (!\sel_mux7_2~combout\(1)))) # (!\mux7_registers2|Mux15~0_combout\ & (\sel_mux7_2~combout\(1) & (\r2|saida\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|Mux15~0_combout\,
	datab => \sel_mux7_2~combout\(1),
	datac => \r2|saida\(0),
	datad => \r3|saida\(0),
	combout => \mux7_registers2|Mux15~1_combout\);

-- Location: LCCOMB_X13_Y10_N20
\mux7_registers2|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux15~2_combout\ = (\mux7_registers2|saidamux7[4]~1_combout\ & (((\mux7_registers2|saidamux7[4]~0_combout\) # (\mux7_registers2|Mux15~1_combout\)))) # (!\mux7_registers2|saidamux7[4]~1_combout\ & (\r4|saida\(0) & 
-- (!\mux7_registers2|saidamux7[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~1_combout\,
	datab => \r4|saida\(0),
	datac => \mux7_registers2|saidamux7[4]~0_combout\,
	datad => \mux7_registers2|Mux15~1_combout\,
	combout => \mux7_registers2|Mux15~2_combout\);

-- Location: LCCOMB_X13_Y10_N8
\mux7_registers2|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux15~3_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & ((\mux7_registers2|Mux15~2_combout\ & ((\r6|saida\(0)))) # (!\mux7_registers2|Mux15~2_combout\ & (\r5|saida\(0))))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & 
-- (((\mux7_registers2|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r5|saida\(0),
	datab => \mux7_registers2|saidamux7[4]~0_combout\,
	datac => \mux7_registers2|Mux15~2_combout\,
	datad => \r6|saida\(0),
	combout => \mux7_registers2|Mux15~3_combout\);

-- Location: LCFF_X13_Y10_N9
\mux7_registers2|saidamux7[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(0));

-- Location: LCCOMB_X14_Y11_N4
\RSaida|saida[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[0]~0_combout\ = (\ld_RS~combout\ & \mux7_registers2|saidamux7\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RS~combout\,
	datac => \mux7_registers2|saidamux7\(0),
	combout => \RSaida|saida[0]~0_combout\);

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_RS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_RS,
	combout => \reset_RS~combout\);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_RS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ld_RS,
	combout => \ld_RS~combout\);

-- Location: LCCOMB_X12_Y11_N18
\RSaida|saida[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[9]~1_combout\ = (\reset_RS~combout\) # (\ld_RS~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_RS~combout\,
	datad => \ld_RS~combout\,
	combout => \RSaida|saida[9]~1_combout\);

-- Location: LCFF_X14_Y11_N5
\RSaida|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[0]~0_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(0));

-- Location: LCCOMB_X14_Y11_N18
\RSaida|saida[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[1]~2_combout\ = (\mux7_registers2|saidamux7\(1) & \ld_RS~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux7_registers2|saidamux7\(1),
	datac => \ld_RS~combout\,
	combout => \RSaida|saida[1]~2_combout\);

-- Location: LCFF_X14_Y11_N19
\RSaida|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[1]~2_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(1));

-- Location: LCCOMB_X14_Y11_N0
\RSaida|saida[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[2]~3_combout\ = (\ld_RS~combout\ & \mux7_registers2|saidamux7\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_RS~combout\,
	datad => \mux7_registers2|saidamux7\(2),
	combout => \RSaida|saida[2]~3_combout\);

-- Location: LCFF_X14_Y11_N1
\RSaida|saida[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[2]~3_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(2));

-- Location: LCCOMB_X12_Y11_N8
\RSaida|saida[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[3]~4_combout\ = (\mux7_registers2|saidamux7\(3) & \ld_RS~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(3),
	datad => \ld_RS~combout\,
	combout => \RSaida|saida[3]~4_combout\);

-- Location: LCFF_X12_Y11_N9
\RSaida|saida[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[3]~4_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(3));

-- Location: LCCOMB_X19_Y10_N26
\r1|saida[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \r1|saida[4]~5_combout\ = (\mux1|saida\(4) & \ld_r1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|saida\(4),
	datad => \ld_r1~combout\,
	combout => \r1|saida[4]~5_combout\);

-- Location: LCFF_X19_Y10_N27
\r1|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r1|saida[4]~5_combout\,
	ena => \r1|saida[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|saida\(4));

-- Location: LCCOMB_X18_Y10_N30
\mux7_registers2|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux11~0_combout\ = (\sel_mux7_2~combout\(0) & ((\sel_mux7_2~combout\(1)) # ((\r1|saida\(4))))) # (!\sel_mux7_2~combout\(0) & (!\sel_mux7_2~combout\(1) & ((\r0|saida\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(0),
	datab => \sel_mux7_2~combout\(1),
	datac => \r1|saida\(4),
	datad => \r0|saida\(4),
	combout => \mux7_registers2|Mux11~0_combout\);

-- Location: LCCOMB_X18_Y10_N4
\mux7_registers2|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux11~1_combout\ = (\sel_mux7_2~combout\(1) & ((\mux7_registers2|Mux11~0_combout\ & (\r3|saida\(4))) # (!\mux7_registers2|Mux11~0_combout\ & ((\r2|saida\(4)))))) # (!\sel_mux7_2~combout\(1) & (((\mux7_registers2|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux7_2~combout\(1),
	datab => \r3|saida\(4),
	datac => \r2|saida\(4),
	datad => \mux7_registers2|Mux11~0_combout\,
	combout => \mux7_registers2|Mux11~1_combout\);

-- Location: LCCOMB_X18_Y10_N20
\mux7_registers2|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux11~2_combout\ = (\mux7_registers2|saidamux7[4]~1_combout\ & (((\mux7_registers2|Mux11~1_combout\) # (\mux7_registers2|saidamux7[4]~0_combout\)))) # (!\mux7_registers2|saidamux7[4]~1_combout\ & (\r4|saida\(4) & 
-- ((!\mux7_registers2|saidamux7[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7[4]~1_combout\,
	datab => \r4|saida\(4),
	datac => \mux7_registers2|Mux11~1_combout\,
	datad => \mux7_registers2|saidamux7[4]~0_combout\,
	combout => \mux7_registers2|Mux11~2_combout\);

-- Location: LCCOMB_X15_Y10_N30
\mux7_registers2|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux7_registers2|Mux11~3_combout\ = (\mux7_registers2|saidamux7[4]~0_combout\ & ((\mux7_registers2|Mux11~2_combout\ & (\r6|saida\(4))) # (!\mux7_registers2|Mux11~2_combout\ & ((\r5|saida\(4)))))) # (!\mux7_registers2|saidamux7[4]~0_combout\ & 
-- (((\mux7_registers2|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r6|saida\(4),
	datab => \r5|saida\(4),
	datac => \mux7_registers2|saidamux7[4]~0_combout\,
	datad => \mux7_registers2|Mux11~2_combout\,
	combout => \mux7_registers2|Mux11~3_combout\);

-- Location: LCFF_X15_Y10_N31
\mux7_registers2|saidamux7[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux7_registers2|Mux11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mux7_registers2|saidamux7\(4));

-- Location: LCCOMB_X12_Y11_N30
\RSaida|saida[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[4]~5_combout\ = (\mux7_registers2|saidamux7\(4) & \ld_RS~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(4),
	datad => \ld_RS~combout\,
	combout => \RSaida|saida[4]~5_combout\);

-- Location: LCFF_X12_Y11_N31
\RSaida|saida[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[4]~5_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(4));

-- Location: LCCOMB_X12_Y10_N2
\RSaida|saida[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[5]~6_combout\ = (\mux7_registers2|saidamux7\(5) & \ld_RS~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(5),
	datad => \ld_RS~combout\,
	combout => \RSaida|saida[5]~6_combout\);

-- Location: LCFF_X12_Y10_N3
\RSaida|saida[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[5]~6_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(5));

-- Location: LCCOMB_X12_Y11_N16
\RSaida|saida[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[6]~7_combout\ = (\mux7_registers2|saidamux7\(6) & \ld_RS~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(6),
	datad => \ld_RS~combout\,
	combout => \RSaida|saida[6]~7_combout\);

-- Location: LCFF_X12_Y11_N17
\RSaida|saida[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[6]~7_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(6));

-- Location: LCCOMB_X14_Y11_N10
\RSaida|saida[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[7]~8_combout\ = (\ld_RS~combout\ & \mux7_registers2|saidamux7\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RS~combout\,
	datac => \mux7_registers2|saidamux7\(7),
	combout => \RSaida|saida[7]~8_combout\);

-- Location: LCFF_X14_Y11_N11
\RSaida|saida[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[7]~8_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(7));

-- Location: LCCOMB_X12_Y11_N22
\RSaida|saida[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[8]~9_combout\ = (\mux7_registers2|saidamux7\(8) & \ld_RS~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers2|saidamux7\(8),
	datad => \ld_RS~combout\,
	combout => \RSaida|saida[8]~9_combout\);

-- Location: LCFF_X12_Y11_N23
\RSaida|saida[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[8]~9_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(8));

-- Location: LCCOMB_X17_Y9_N0
\RSaida|saida[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[9]~10_combout\ = (\mux7_registers2|saidamux7\(9) & \ld_RS~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(9),
	datac => \ld_RS~combout\,
	combout => \RSaida|saida[9]~10_combout\);

-- Location: LCFF_X17_Y9_N1
\RSaida|saida[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[9]~10_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(9));

-- Location: LCCOMB_X14_Y11_N24
\RSaida|saida[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[10]~11_combout\ = (\ld_RS~combout\ & \mux7_registers2|saidamux7\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_RS~combout\,
	datad => \mux7_registers2|saidamux7\(10),
	combout => \RSaida|saida[10]~11_combout\);

-- Location: LCFF_X14_Y11_N25
\RSaida|saida[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[10]~11_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(10));

-- Location: LCCOMB_X17_Y9_N2
\RSaida|saida[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[11]~12_combout\ = (\mux7_registers2|saidamux7\(11) & \ld_RS~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(11),
	datac => \ld_RS~combout\,
	combout => \RSaida|saida[11]~12_combout\);

-- Location: LCFF_X17_Y9_N3
\RSaida|saida[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[11]~12_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(11));

-- Location: LCCOMB_X14_Y11_N2
\RSaida|saida[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[12]~13_combout\ = (\ld_RS~combout\ & \mux7_registers2|saidamux7\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ld_RS~combout\,
	datad => \mux7_registers2|saidamux7\(12),
	combout => \RSaida|saida[12]~13_combout\);

-- Location: LCFF_X14_Y11_N3
\RSaida|saida[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[12]~13_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(12));

-- Location: LCCOMB_X17_Y9_N12
\RSaida|saida[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[13]~14_combout\ = (\mux7_registers2|saidamux7\(13) & \ld_RS~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux7_registers2|saidamux7\(13),
	datac => \ld_RS~combout\,
	combout => \RSaida|saida[13]~14_combout\);

-- Location: LCFF_X17_Y9_N13
\RSaida|saida[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[13]~14_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(13));

-- Location: LCCOMB_X13_Y11_N0
\RSaida|saida[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[14]~15_combout\ = (\ld_RS~combout\ & \mux7_registers2|saidamux7\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_RS~combout\,
	datac => \mux7_registers2|saidamux7\(14),
	combout => \RSaida|saida[14]~15_combout\);

-- Location: LCFF_X13_Y11_N1
\RSaida|saida[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[14]~15_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(14));

-- Location: LCCOMB_X12_Y11_N12
\RSaida|saida[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \RSaida|saida[15]~16_combout\ = (\ld_RS~combout\ & \mux7_registers2|saidamux7\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ld_RS~combout\,
	datad => \mux7_registers2|saidamux7\(15),
	combout => \RSaida|saida[15]~16_combout\);

-- Location: LCFF_X12_Y11_N13
\RSaida|saida[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RSaida|saida[15]~16_combout\,
	ena => \RSaida|saida[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RSaida|saida\(15));

-- Location: LCCOMB_X13_Y8_N0
\compare|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~1_cout\ = CARRY((!\mux7_registers2|saidamux7\(0) & \mux7_registers1|saidamux7\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(0),
	datab => \mux7_registers1|saidamux7\(0),
	datad => VCC,
	cout => \compare|LessThan0~1_cout\);

-- Location: LCCOMB_X13_Y8_N2
\compare|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~3_cout\ = CARRY((\mux7_registers1|saidamux7\(1) & (\mux7_registers2|saidamux7\(1) & !\compare|LessThan0~1_cout\)) # (!\mux7_registers1|saidamux7\(1) & ((\mux7_registers2|saidamux7\(1)) # (!\compare|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(1),
	datab => \mux7_registers2|saidamux7\(1),
	datad => VCC,
	cin => \compare|LessThan0~1_cout\,
	cout => \compare|LessThan0~3_cout\);

-- Location: LCCOMB_X13_Y8_N4
\compare|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~5_cout\ = CARRY((\mux7_registers1|saidamux7\(2) & ((!\compare|LessThan0~3_cout\) # (!\mux7_registers2|saidamux7\(2)))) # (!\mux7_registers1|saidamux7\(2) & (!\mux7_registers2|saidamux7\(2) & !\compare|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(2),
	datab => \mux7_registers2|saidamux7\(2),
	datad => VCC,
	cin => \compare|LessThan0~3_cout\,
	cout => \compare|LessThan0~5_cout\);

-- Location: LCCOMB_X13_Y8_N6
\compare|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~7_cout\ = CARRY((\mux7_registers1|saidamux7\(3) & (\mux7_registers2|saidamux7\(3) & !\compare|LessThan0~5_cout\)) # (!\mux7_registers1|saidamux7\(3) & ((\mux7_registers2|saidamux7\(3)) # (!\compare|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(3),
	datab => \mux7_registers2|saidamux7\(3),
	datad => VCC,
	cin => \compare|LessThan0~5_cout\,
	cout => \compare|LessThan0~7_cout\);

-- Location: LCCOMB_X13_Y8_N8
\compare|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~9_cout\ = CARRY((\mux7_registers1|saidamux7\(4) & ((!\compare|LessThan0~7_cout\) # (!\mux7_registers2|saidamux7\(4)))) # (!\mux7_registers1|saidamux7\(4) & (!\mux7_registers2|saidamux7\(4) & !\compare|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(4),
	datab => \mux7_registers2|saidamux7\(4),
	datad => VCC,
	cin => \compare|LessThan0~7_cout\,
	cout => \compare|LessThan0~9_cout\);

-- Location: LCCOMB_X13_Y8_N10
\compare|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~11_cout\ = CARRY((\mux7_registers2|saidamux7\(5) & ((!\compare|LessThan0~9_cout\) # (!\mux7_registers1|saidamux7\(5)))) # (!\mux7_registers2|saidamux7\(5) & (!\mux7_registers1|saidamux7\(5) & !\compare|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(5),
	datab => \mux7_registers1|saidamux7\(5),
	datad => VCC,
	cin => \compare|LessThan0~9_cout\,
	cout => \compare|LessThan0~11_cout\);

-- Location: LCCOMB_X13_Y8_N12
\compare|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~13_cout\ = CARRY((\mux7_registers2|saidamux7\(6) & (\mux7_registers1|saidamux7\(6) & !\compare|LessThan0~11_cout\)) # (!\mux7_registers2|saidamux7\(6) & ((\mux7_registers1|saidamux7\(6)) # (!\compare|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(6),
	datab => \mux7_registers1|saidamux7\(6),
	datad => VCC,
	cin => \compare|LessThan0~11_cout\,
	cout => \compare|LessThan0~13_cout\);

-- Location: LCCOMB_X13_Y8_N14
\compare|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~15_cout\ = CARRY((\mux7_registers1|saidamux7\(7) & (\mux7_registers2|saidamux7\(7) & !\compare|LessThan0~13_cout\)) # (!\mux7_registers1|saidamux7\(7) & ((\mux7_registers2|saidamux7\(7)) # (!\compare|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(7),
	datab => \mux7_registers2|saidamux7\(7),
	datad => VCC,
	cin => \compare|LessThan0~13_cout\,
	cout => \compare|LessThan0~15_cout\);

-- Location: LCCOMB_X13_Y8_N16
\compare|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~17_cout\ = CARRY((\mux7_registers1|saidamux7\(8) & ((!\compare|LessThan0~15_cout\) # (!\mux7_registers2|saidamux7\(8)))) # (!\mux7_registers1|saidamux7\(8) & (!\mux7_registers2|saidamux7\(8) & !\compare|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(8),
	datab => \mux7_registers2|saidamux7\(8),
	datad => VCC,
	cin => \compare|LessThan0~15_cout\,
	cout => \compare|LessThan0~17_cout\);

-- Location: LCCOMB_X13_Y8_N18
\compare|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~19_cout\ = CARRY((\mux7_registers2|saidamux7\(9) & ((!\compare|LessThan0~17_cout\) # (!\mux7_registers1|saidamux7\(9)))) # (!\mux7_registers2|saidamux7\(9) & (!\mux7_registers1|saidamux7\(9) & !\compare|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(9),
	datab => \mux7_registers1|saidamux7\(9),
	datad => VCC,
	cin => \compare|LessThan0~17_cout\,
	cout => \compare|LessThan0~19_cout\);

-- Location: LCCOMB_X13_Y8_N20
\compare|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~21_cout\ = CARRY((\mux7_registers2|saidamux7\(10) & (\mux7_registers1|saidamux7\(10) & !\compare|LessThan0~19_cout\)) # (!\mux7_registers2|saidamux7\(10) & ((\mux7_registers1|saidamux7\(10)) # (!\compare|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(10),
	datab => \mux7_registers1|saidamux7\(10),
	datad => VCC,
	cin => \compare|LessThan0~19_cout\,
	cout => \compare|LessThan0~21_cout\);

-- Location: LCCOMB_X13_Y8_N22
\compare|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~23_cout\ = CARRY((\mux7_registers2|saidamux7\(11) & ((!\compare|LessThan0~21_cout\) # (!\mux7_registers1|saidamux7\(11)))) # (!\mux7_registers2|saidamux7\(11) & (!\mux7_registers1|saidamux7\(11) & !\compare|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(11),
	datab => \mux7_registers1|saidamux7\(11),
	datad => VCC,
	cin => \compare|LessThan0~21_cout\,
	cout => \compare|LessThan0~23_cout\);

-- Location: LCCOMB_X13_Y8_N24
\compare|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~25_cout\ = CARRY((\mux7_registers2|saidamux7\(12) & (\mux7_registers1|saidamux7\(12) & !\compare|LessThan0~23_cout\)) # (!\mux7_registers2|saidamux7\(12) & ((\mux7_registers1|saidamux7\(12)) # (!\compare|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(12),
	datab => \mux7_registers1|saidamux7\(12),
	datad => VCC,
	cin => \compare|LessThan0~23_cout\,
	cout => \compare|LessThan0~25_cout\);

-- Location: LCCOMB_X13_Y8_N26
\compare|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~27_cout\ = CARRY((\mux7_registers1|saidamux7\(13) & (\mux7_registers2|saidamux7\(13) & !\compare|LessThan0~25_cout\)) # (!\mux7_registers1|saidamux7\(13) & ((\mux7_registers2|saidamux7\(13)) # (!\compare|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(13),
	datab => \mux7_registers2|saidamux7\(13),
	datad => VCC,
	cin => \compare|LessThan0~25_cout\,
	cout => \compare|LessThan0~27_cout\);

-- Location: LCCOMB_X13_Y8_N28
\compare|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~29_cout\ = CARRY((\mux7_registers2|saidamux7\(14) & (\mux7_registers1|saidamux7\(14) & !\compare|LessThan0~27_cout\)) # (!\mux7_registers2|saidamux7\(14) & ((\mux7_registers1|saidamux7\(14)) # (!\compare|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(14),
	datab => \mux7_registers1|saidamux7\(14),
	datad => VCC,
	cin => \compare|LessThan0~27_cout\,
	cout => \compare|LessThan0~29_cout\);

-- Location: LCCOMB_X13_Y8_N30
\compare|LessThan0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan0~30_combout\ = (\mux7_registers2|saidamux7\(15) & (\mux7_registers1|saidamux7\(15) & \compare|LessThan0~29_cout\)) # (!\mux7_registers2|saidamux7\(15) & ((\mux7_registers1|saidamux7\(15)) # (\compare|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(15),
	datab => \mux7_registers1|saidamux7\(15),
	cin => \compare|LessThan0~29_cout\,
	combout => \compare|LessThan0~30_combout\);

-- Location: LCCOMB_X15_Y9_N18
\compare|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|Equal0~6_combout\ = \mux7_registers1|saidamux7\(10) $ (\mux7_registers2|saidamux7\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux7_registers1|saidamux7\(10),
	datad => \mux7_registers2|saidamux7\(10),
	combout => \compare|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y9_N0
\compare|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|Equal0~5_combout\ = (\mux7_registers1|saidamux7\(8) & (\mux7_registers2|saidamux7\(8) & (\mux7_registers2|saidamux7\(9) $ (!\mux7_registers1|saidamux7\(9))))) # (!\mux7_registers1|saidamux7\(8) & (!\mux7_registers2|saidamux7\(8) & 
-- (\mux7_registers2|saidamux7\(9) $ (!\mux7_registers1|saidamux7\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(8),
	datab => \mux7_registers2|saidamux7\(8),
	datac => \mux7_registers2|saidamux7\(9),
	datad => \mux7_registers1|saidamux7\(9),
	combout => \compare|Equal0~5_combout\);

-- Location: LCCOMB_X12_Y9_N10
\compare|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|Equal0~7_combout\ = (!\compare|Equal0~6_combout\ & (\compare|Equal0~5_combout\ & (\mux7_registers2|saidamux7\(11) $ (!\mux7_registers1|saidamux7\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(11),
	datab => \compare|Equal0~6_combout\,
	datac => \mux7_registers1|saidamux7\(11),
	datad => \compare|Equal0~5_combout\,
	combout => \compare|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y8_N30
\compare|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|Equal0~8_combout\ = (\mux7_registers1|saidamux7\(13) & (\mux7_registers2|saidamux7\(13) & (\mux7_registers1|saidamux7\(12) $ (!\mux7_registers2|saidamux7\(12))))) # (!\mux7_registers1|saidamux7\(13) & (!\mux7_registers2|saidamux7\(13) & 
-- (\mux7_registers1|saidamux7\(12) $ (!\mux7_registers2|saidamux7\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(13),
	datab => \mux7_registers2|saidamux7\(13),
	datac => \mux7_registers1|saidamux7\(12),
	datad => \mux7_registers2|saidamux7\(12),
	combout => \compare|Equal0~8_combout\);

-- Location: LCCOMB_X12_Y8_N0
\compare|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|Equal0~10_combout\ = (!\compare|Equal0~9_combout\ & (\compare|Equal0~8_combout\ & (\mux7_registers1|saidamux7\(15) $ (!\mux7_registers2|saidamux7\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compare|Equal0~9_combout\,
	datab => \mux7_registers1|saidamux7\(15),
	datac => \mux7_registers2|saidamux7\(15),
	datad => \compare|Equal0~8_combout\,
	combout => \compare|Equal0~10_combout\);

-- Location: LCCOMB_X12_Y8_N14
\compare|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|Equal0~11_combout\ = (\compare|Equal0~7_combout\ & \compare|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \compare|Equal0~7_combout\,
	datad => \compare|Equal0~10_combout\,
	combout => \compare|Equal0~11_combout\);

-- Location: LCCOMB_X14_Y8_N0
\compare|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~1_cout\ = CARRY((!\mux7_registers1|saidamux7\(0) & \mux7_registers2|saidamux7\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(0),
	datab => \mux7_registers2|saidamux7\(0),
	datad => VCC,
	cout => \compare|LessThan1~1_cout\);

-- Location: LCCOMB_X14_Y8_N2
\compare|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~3_cout\ = CARRY((\mux7_registers2|saidamux7\(1) & (\mux7_registers1|saidamux7\(1) & !\compare|LessThan1~1_cout\)) # (!\mux7_registers2|saidamux7\(1) & ((\mux7_registers1|saidamux7\(1)) # (!\compare|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(1),
	datab => \mux7_registers1|saidamux7\(1),
	datad => VCC,
	cin => \compare|LessThan1~1_cout\,
	cout => \compare|LessThan1~3_cout\);

-- Location: LCCOMB_X14_Y8_N4
\compare|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~5_cout\ = CARRY((\mux7_registers1|saidamux7\(2) & (\mux7_registers2|saidamux7\(2) & !\compare|LessThan1~3_cout\)) # (!\mux7_registers1|saidamux7\(2) & ((\mux7_registers2|saidamux7\(2)) # (!\compare|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(2),
	datab => \mux7_registers2|saidamux7\(2),
	datad => VCC,
	cin => \compare|LessThan1~3_cout\,
	cout => \compare|LessThan1~5_cout\);

-- Location: LCCOMB_X14_Y8_N6
\compare|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~7_cout\ = CARRY((\mux7_registers2|saidamux7\(3) & (\mux7_registers1|saidamux7\(3) & !\compare|LessThan1~5_cout\)) # (!\mux7_registers2|saidamux7\(3) & ((\mux7_registers1|saidamux7\(3)) # (!\compare|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(3),
	datab => \mux7_registers1|saidamux7\(3),
	datad => VCC,
	cin => \compare|LessThan1~5_cout\,
	cout => \compare|LessThan1~7_cout\);

-- Location: LCCOMB_X14_Y8_N8
\compare|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~9_cout\ = CARRY((\mux7_registers2|saidamux7\(4) & ((!\compare|LessThan1~7_cout\) # (!\mux7_registers1|saidamux7\(4)))) # (!\mux7_registers2|saidamux7\(4) & (!\mux7_registers1|saidamux7\(4) & !\compare|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(4),
	datab => \mux7_registers1|saidamux7\(4),
	datad => VCC,
	cin => \compare|LessThan1~7_cout\,
	cout => \compare|LessThan1~9_cout\);

-- Location: LCCOMB_X14_Y8_N10
\compare|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~11_cout\ = CARRY((\mux7_registers1|saidamux7\(5) & ((!\compare|LessThan1~9_cout\) # (!\mux7_registers2|saidamux7\(5)))) # (!\mux7_registers1|saidamux7\(5) & (!\mux7_registers2|saidamux7\(5) & !\compare|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(5),
	datab => \mux7_registers2|saidamux7\(5),
	datad => VCC,
	cin => \compare|LessThan1~9_cout\,
	cout => \compare|LessThan1~11_cout\);

-- Location: LCCOMB_X14_Y8_N12
\compare|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~13_cout\ = CARRY((\mux7_registers2|saidamux7\(6) & ((!\compare|LessThan1~11_cout\) # (!\mux7_registers1|saidamux7\(6)))) # (!\mux7_registers2|saidamux7\(6) & (!\mux7_registers1|saidamux7\(6) & !\compare|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(6),
	datab => \mux7_registers1|saidamux7\(6),
	datad => VCC,
	cin => \compare|LessThan1~11_cout\,
	cout => \compare|LessThan1~13_cout\);

-- Location: LCCOMB_X14_Y8_N14
\compare|LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~15_cout\ = CARRY((\mux7_registers2|saidamux7\(7) & (\mux7_registers1|saidamux7\(7) & !\compare|LessThan1~13_cout\)) # (!\mux7_registers2|saidamux7\(7) & ((\mux7_registers1|saidamux7\(7)) # (!\compare|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(7),
	datab => \mux7_registers1|saidamux7\(7),
	datad => VCC,
	cin => \compare|LessThan1~13_cout\,
	cout => \compare|LessThan1~15_cout\);

-- Location: LCCOMB_X14_Y8_N16
\compare|LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~17_cout\ = CARRY((\mux7_registers1|saidamux7\(8) & (\mux7_registers2|saidamux7\(8) & !\compare|LessThan1~15_cout\)) # (!\mux7_registers1|saidamux7\(8) & ((\mux7_registers2|saidamux7\(8)) # (!\compare|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(8),
	datab => \mux7_registers2|saidamux7\(8),
	datad => VCC,
	cin => \compare|LessThan1~15_cout\,
	cout => \compare|LessThan1~17_cout\);

-- Location: LCCOMB_X14_Y8_N18
\compare|LessThan1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~19_cout\ = CARRY((\mux7_registers1|saidamux7\(9) & ((!\compare|LessThan1~17_cout\) # (!\mux7_registers2|saidamux7\(9)))) # (!\mux7_registers1|saidamux7\(9) & (!\mux7_registers2|saidamux7\(9) & !\compare|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(9),
	datab => \mux7_registers2|saidamux7\(9),
	datad => VCC,
	cin => \compare|LessThan1~17_cout\,
	cout => \compare|LessThan1~19_cout\);

-- Location: LCCOMB_X14_Y8_N20
\compare|LessThan1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~21_cout\ = CARRY((\mux7_registers1|saidamux7\(10) & (\mux7_registers2|saidamux7\(10) & !\compare|LessThan1~19_cout\)) # (!\mux7_registers1|saidamux7\(10) & ((\mux7_registers2|saidamux7\(10)) # (!\compare|LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(10),
	datab => \mux7_registers2|saidamux7\(10),
	datad => VCC,
	cin => \compare|LessThan1~19_cout\,
	cout => \compare|LessThan1~21_cout\);

-- Location: LCCOMB_X14_Y8_N22
\compare|LessThan1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~23_cout\ = CARRY((\mux7_registers2|saidamux7\(11) & (\mux7_registers1|saidamux7\(11) & !\compare|LessThan1~21_cout\)) # (!\mux7_registers2|saidamux7\(11) & ((\mux7_registers1|saidamux7\(11)) # (!\compare|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(11),
	datab => \mux7_registers1|saidamux7\(11),
	datad => VCC,
	cin => \compare|LessThan1~21_cout\,
	cout => \compare|LessThan1~23_cout\);

-- Location: LCCOMB_X14_Y8_N24
\compare|LessThan1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~25_cout\ = CARRY((\mux7_registers2|saidamux7\(12) & ((!\compare|LessThan1~23_cout\) # (!\mux7_registers1|saidamux7\(12)))) # (!\mux7_registers2|saidamux7\(12) & (!\mux7_registers1|saidamux7\(12) & !\compare|LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(12),
	datab => \mux7_registers1|saidamux7\(12),
	datad => VCC,
	cin => \compare|LessThan1~23_cout\,
	cout => \compare|LessThan1~25_cout\);

-- Location: LCCOMB_X14_Y8_N26
\compare|LessThan1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~27_cout\ = CARRY((\mux7_registers2|saidamux7\(13) & (\mux7_registers1|saidamux7\(13) & !\compare|LessThan1~25_cout\)) # (!\mux7_registers2|saidamux7\(13) & ((\mux7_registers1|saidamux7\(13)) # (!\compare|LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(13),
	datab => \mux7_registers1|saidamux7\(13),
	datad => VCC,
	cin => \compare|LessThan1~25_cout\,
	cout => \compare|LessThan1~27_cout\);

-- Location: LCCOMB_X14_Y8_N28
\compare|LessThan1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~29_cout\ = CARRY((\mux7_registers2|saidamux7\(14) & ((!\compare|LessThan1~27_cout\) # (!\mux7_registers1|saidamux7\(14)))) # (!\mux7_registers2|saidamux7\(14) & (!\mux7_registers1|saidamux7\(14) & !\compare|LessThan1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(14),
	datab => \mux7_registers1|saidamux7\(14),
	datad => VCC,
	cin => \compare|LessThan1~27_cout\,
	cout => \compare|LessThan1~29_cout\);

-- Location: LCCOMB_X14_Y8_N30
\compare|LessThan1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|LessThan1~30_combout\ = (\mux7_registers1|saidamux7\(15) & (\mux7_registers2|saidamux7\(15) & \compare|LessThan1~29_cout\)) # (!\mux7_registers1|saidamux7\(15) & ((\mux7_registers2|saidamux7\(15)) # (\compare|LessThan1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(15),
	datab => \mux7_registers2|saidamux7\(15),
	cin => \compare|LessThan1~29_cout\,
	combout => \compare|LessThan1~30_combout\);

-- Location: LCCOMB_X12_Y8_N16
\compare|saida~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|saida~0_combout\ = (\compare|Equal0~4_combout\ & ((\compare|Equal0~11_combout\) # ((!\compare|LessThan0~30_combout\ & \compare|LessThan1~30_combout\)))) # (!\compare|Equal0~4_combout\ & (!\compare|LessThan0~30_combout\ & 
-- ((\compare|LessThan1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compare|Equal0~4_combout\,
	datab => \compare|LessThan0~30_combout\,
	datac => \compare|Equal0~11_combout\,
	datad => \compare|LessThan1~30_combout\,
	combout => \compare|saida~0_combout\);

-- Location: LCFF_X12_Y8_N17
\compare|saida[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \compare|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \compare|saida\(0));

-- Location: LCCOMB_X12_Y10_N8
\compare|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|Equal0~2_combout\ = (\mux7_registers2|saidamux7\(4) & (\mux7_registers1|saidamux7\(4) & (\mux7_registers1|saidamux7\(5) $ (!\mux7_registers2|saidamux7\(5))))) # (!\mux7_registers2|saidamux7\(4) & (!\mux7_registers1|saidamux7\(4) & 
-- (\mux7_registers1|saidamux7\(5) $ (!\mux7_registers2|saidamux7\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(4),
	datab => \mux7_registers1|saidamux7\(5),
	datac => \mux7_registers1|saidamux7\(4),
	datad => \mux7_registers2|saidamux7\(5),
	combout => \compare|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y10_N10
\compare|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|Equal0~1_combout\ = (\mux7_registers1|saidamux7\(3) & (\mux7_registers2|saidamux7\(3) & (\mux7_registers1|saidamux7\(2) $ (!\mux7_registers2|saidamux7\(2))))) # (!\mux7_registers1|saidamux7\(3) & (!\mux7_registers2|saidamux7\(3) & 
-- (\mux7_registers1|saidamux7\(2) $ (!\mux7_registers2|saidamux7\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers1|saidamux7\(3),
	datab => \mux7_registers1|saidamux7\(2),
	datac => \mux7_registers2|saidamux7\(3),
	datad => \mux7_registers2|saidamux7\(2),
	combout => \compare|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y11_N10
\compare|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|Equal0~0_combout\ = (\mux7_registers2|saidamux7\(0) & (\mux7_registers1|saidamux7\(0) & (\mux7_registers2|saidamux7\(1) $ (!\mux7_registers1|saidamux7\(1))))) # (!\mux7_registers2|saidamux7\(0) & (!\mux7_registers1|saidamux7\(0) & 
-- (\mux7_registers2|saidamux7\(1) $ (!\mux7_registers1|saidamux7\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux7_registers2|saidamux7\(0),
	datab => \mux7_registers2|saidamux7\(1),
	datac => \mux7_registers1|saidamux7\(1),
	datad => \mux7_registers1|saidamux7\(0),
	combout => \compare|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y10_N26
\compare|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|Equal0~4_combout\ = (\compare|Equal0~3_combout\ & (\compare|Equal0~2_combout\ & (\compare|Equal0~1_combout\ & \compare|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compare|Equal0~3_combout\,
	datab => \compare|Equal0~2_combout\,
	datac => \compare|Equal0~1_combout\,
	datad => \compare|Equal0~0_combout\,
	combout => \compare|Equal0~4_combout\);

-- Location: LCCOMB_X12_Y8_N22
\compare|saida~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \compare|saida~1_combout\ = (\compare|LessThan0~30_combout\) # ((\compare|Equal0~7_combout\ & (\compare|Equal0~10_combout\ & \compare|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compare|Equal0~7_combout\,
	datab => \compare|Equal0~10_combout\,
	datac => \compare|Equal0~4_combout\,
	datad => \compare|LessThan0~30_combout\,
	combout => \compare|saida~1_combout\);

-- Location: LCFF_X12_Y8_N23
\compare|saida[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \compare|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \compare|saida\(1));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(0));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(3));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(4));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(5));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(6));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(7));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(8));

-- Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(9));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(10));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(11));

-- Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(12));

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(13));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(14));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RIout[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \regInstrucao|saida\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RIout(15));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(0));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(1));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(2));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(3));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(4));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(5));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(6));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(7));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(8));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(9));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(10));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(11));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(12));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(13));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(14));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RSaida|saida\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(15));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_comparador[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \compare|saida\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_comparador(0));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_comparador[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \compare|saida\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_comparador(1));
END structure;


