-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 17.1 (Release Build #590)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2017 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from fir_fir_compiler_ii_0_rtl_core
-- VHDL created on Wed Oct 30 22:30:29 2019


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity fir_fir_compiler_ii_0_rtl_core is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(15 downto 0);  -- sfix16
        bankIn_0 : in std_logic_vector(2 downto 0);  -- sfix3
        busIn_writedata : in std_logic_vector(15 downto 0);  -- sfix16
        busIn_address : in std_logic_vector(9 downto 0);  -- sfix10
        busIn_write : in std_logic_vector(0 downto 0);  -- sfix1
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(38 downto 0);  -- sfix39
        clk : in std_logic;
        areset : in std_logic;
        bus_clk : in std_logic;
        h_areset : in std_logic
    );
end fir_fir_compiler_ii_0_rtl_core;

architecture normal of fir_fir_compiler_ii_0_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_bankIn_0_13_q : STD_LOGIC_VECTOR (2 downto 0);
    signal d_busIn_write_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_busIn_writedata_12_q : STD_LOGIC_VECTOR (15 downto 0);
    signal d_in0_m0_wi0_wo0_assign_id1_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_in0_m0_wi0_wo0_assign_id1_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_in0_m0_wi0_wo0_assign_id1_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_inputframe_seq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_inputframe_seq_eq : std_logic;
    signal u0_m0_wo0_run_count : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_run_preEnaQ : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_out : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_enableQ : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_ctrl : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_memread_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_inner_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_inner_i : SIGNED (10 downto 0);
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_inner_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_i : UNSIGNED (9 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_i : UNSIGNED (2 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count1_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count2_inner_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count2_inner_i : SIGNED (3 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count2_inner_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count2_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count2_i : UNSIGNED (9 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count2_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_add_1_0_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_1_0_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_1_0_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_1_0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_i : UNSIGNED (9 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_memr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_bank_ra0_count0_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_bank_ra0_count0_i : UNSIGNED (2 downto 0);
    attribute preserve of u0_m0_wo0_bank_ra0_count0_i : signal is true;
    signal u0_m0_wo0_bank_wa0_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_bank_wa0_i : UNSIGNED (2 downto 0);
    attribute preserve of u0_m0_wo0_bank_wa0_i : signal is true;
    signal u0_m0_wo0_bank_memr0_reset0 : std_logic;
    signal u0_m0_wo0_bank_memr0_ia : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_bank_memr0_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_bank_memr0_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_bank_memr0_iq : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_bank_memr0_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_ca0_inner_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_ca0_inner_i : SIGNED (3 downto 0);
    attribute preserve of u0_m0_wo0_ca0_inner_i : signal is true;
    signal u0_m0_wo0_ca0_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_ca0_i : UNSIGNED (6 downto 0);
    attribute preserve of u0_m0_wo0_ca0_i : signal is true;
    signal u0_m0_wo0_cm0_reset0 : std_logic;
    signal u0_m0_wo0_cm0_reset1 : std_logic;
    signal u0_m0_wo0_cm0_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_cm0_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm0_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm0_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_cm0_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_accum_a : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_accum_b : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_accum_i : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_accum_o : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_accum_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_out0_m0_wo0_assign_id3_q_18_q : STD_LOGIC_VECTOR (0 downto 0);
    signal outchan_q : STD_LOGIC_VECTOR (3 downto 0);
    signal outchan_i : UNSIGNED (2 downto 0);
    attribute preserve of outchan_i : signal is true;
    signal u0_m0_wo0_dec0_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_dec0_lutmem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_dec0_lutmem_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_dec0_lutmem_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_dec0_lutmem_ir : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_dec0_lutmem_r : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_cma_reset : std_logic;
    type u0_m0_wo0_mtree_mult1_0_cma_a0type is array(NATURAL range <>) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_cma_a0 : u0_m0_wo0_mtree_mult1_0_cma_a0type(0 to 0);
    attribute preserve of u0_m0_wo0_mtree_mult1_0_cma_a0 : signal is true;
    signal u0_m0_wo0_mtree_mult1_0_cma_c0 : u0_m0_wo0_mtree_mult1_0_cma_a0type(0 to 0);
    attribute preserve of u0_m0_wo0_mtree_mult1_0_cma_c0 : signal is true;
    type u0_m0_wo0_mtree_mult1_0_cma_ptype is array(NATURAL range <>) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_cma_p : u0_m0_wo0_mtree_mult1_0_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_cma_u : u0_m0_wo0_mtree_mult1_0_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_cma_w : u0_m0_wo0_mtree_mult1_0_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_cma_x : u0_m0_wo0_mtree_mult1_0_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_cma_y : u0_m0_wo0_mtree_mult1_0_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_cma_s : u0_m0_wo0_mtree_mult1_0_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_cma_qq : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_cma_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_cma_ena0 : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_cma_ena1 : std_logic;
    signal d_bank_u0_m0_wi0_wo0_merged_bit_select_c_15_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_adelay_mem_reset0 : std_logic;
    signal u0_m0_wo0_adelay_mem_ia : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_adelay_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_adelay_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_adelay_mem_iq : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_adelay_mem_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_adelay_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_adelay_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of u0_m0_wo0_adelay_rdcnt_i : signal is true;
    signal u0_m0_wo0_adelay_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_adelay_rdcnt_eq : signal is true;
    signal u0_m0_wo0_adelay_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal d_xIn_0_13_mem_reset0 : std_logic;
    signal d_xIn_0_13_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal d_xIn_0_13_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal d_xIn_0_13_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal d_xIn_0_13_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of d_xIn_0_13_rdcnt_i : signal is true;
    signal d_xIn_0_13_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve_syn_only : boolean;
    attribute preserve_syn_only of d_xIn_0_13_sticky_ena_q : signal is true;
    signal u0_m0_wo0_inputframe_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count2_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_ca0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_adelay_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_adelay_rdmux_q : STD_LOGIC_VECTOR (2 downto 0);
    signal d_xIn_0_13_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xIn_bankIn_0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_a_in : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_a_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_b_in : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_b_b : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_resize_in : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_resize_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cab0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal out0_m0_wo0_lineup_select_delay_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bank_u0_m0_wi0_wo0_merged_bit_select_b : STD_LOGIC_VECTOR (2 downto 0);
    signal bank_u0_m0_wi0_wo0_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_join_q : STD_LOGIC_VECTOR (11 downto 0);
    signal out0_m0_wo0_assign_id3_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- d_in0_m0_wi0_wo0_assign_id1_q_11(DELAY,74)@10 + 1
    d_in0_m0_wi0_wo0_assign_id1_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_id1_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_inputframe_seq(SEQUENCE,17)@10 + 1
    u0_m0_wo0_inputframe_seq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_inputframe_seq_c : SIGNED(5 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_inputframe_seq_c := "000000";
            u0_m0_wo0_inputframe_seq_q <= "0";
            u0_m0_wo0_inputframe_seq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_inputframe_seq_c = "000000") THEN
                    u0_m0_wo0_inputframe_seq_eq <= '1';
                ELSE
                    u0_m0_wo0_inputframe_seq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_inputframe_seq_eq = '1') THEN
                    u0_m0_wo0_inputframe_seq_c := u0_m0_wo0_inputframe_seq_c + 7;
                ELSE
                    u0_m0_wo0_inputframe_seq_c := u0_m0_wo0_inputframe_seq_c - 1;
                END IF;
                u0_m0_wo0_inputframe_seq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_inputframe_seq_c(5 downto 5));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_inputframe(LOGICAL,18)@11
    u0_m0_wo0_inputframe_q <= u0_m0_wo0_inputframe_seq_q and d_in0_m0_wi0_wo0_assign_id1_q_11_q;

    -- u0_m0_wo0_run(ENABLEGENERATOR,19)@11 + 2
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & u0_m0_wo0_inputframe_q & u0_m0_wo0_run_enableQ;
    u0_m0_wo0_run_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : SIGNED(10 downto 0);
        variable u0_m0_wo0_run_inc : SIGNED(1 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(1022, 11);
            u0_m0_wo0_run_enableQ <= "0";
            u0_m0_wo0_run_count <= "00";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(10) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-1023);
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + (-1);
                END IF;
                u0_m0_wo0_run_enableQ <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(10 downto 10));
            ELSE
                u0_m0_wo0_run_enableQ <= "0";
            END IF;
            CASE (u0_m0_wo0_run_ctrl) IS
                WHEN "000" | "001" => u0_m0_wo0_run_inc := "00";
                WHEN "010" | "011" => u0_m0_wo0_run_inc := "11";
                WHEN "100" => u0_m0_wo0_run_inc := "00";
                WHEN "101" => u0_m0_wo0_run_inc := "01";
                WHEN "110" => u0_m0_wo0_run_inc := "11";
                WHEN "111" => u0_m0_wo0_run_inc := "00";
                WHEN OTHERS => 
            END CASE;
            u0_m0_wo0_run_count <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_run_count) + SIGNED(u0_m0_wo0_run_inc));
            u0_m0_wo0_run_q <= u0_m0_wo0_run_out;
        END IF;
    END PROCESS;
    u0_m0_wo0_run_preEnaQ <= u0_m0_wo0_run_count(1 downto 1);
    u0_m0_wo0_run_out <= u0_m0_wo0_run_preEnaQ and VCC_q;

    -- u0_m0_wo0_memread(DELAY,20)@13
    u0_m0_wo0_memread : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_run_q, xout => u0_m0_wo0_memread_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,22)@13
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_15(DELAY,79)@13 + 2
    d_u0_m0_wo0_compute_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_15_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_16(DELAY,80)@15 + 1
    d_u0_m0_wo0_compute_q_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_15_q, xout => d_u0_m0_wo0_compute_q_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_aseq(SEQUENCE,52)@16 + 1
    u0_m0_wo0_aseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : SIGNED(12 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "0000000000000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_16_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "1111111111001") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 1023;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_aseq_c(12 downto 12));
            END IF;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_compute_q_17(DELAY,81)@16 + 1
    d_u0_m0_wo0_compute_q_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_16_q, xout => d_u0_m0_wo0_compute_q_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_adelay_rdcnt(COUNTER,85)@17 + 1
    -- low=0, high=5, step=1, init=0
    u0_m0_wo0_adelay_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_adelay_rdcnt_i <= TO_UNSIGNED(0, 3);
            u0_m0_wo0_adelay_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_17_q = "1") THEN
                IF (u0_m0_wo0_adelay_rdcnt_i = TO_UNSIGNED(4, 3)) THEN
                    u0_m0_wo0_adelay_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_adelay_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_adelay_rdcnt_eq = '1') THEN
                    u0_m0_wo0_adelay_rdcnt_i <= u0_m0_wo0_adelay_rdcnt_i + 3;
                ELSE
                    u0_m0_wo0_adelay_rdcnt_i <= u0_m0_wo0_adelay_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_adelay_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_adelay_rdcnt_i, 3)));

    -- u0_m0_wo0_adelay_rdmux(MUX,86)@17
    u0_m0_wo0_adelay_rdmux_s <= d_u0_m0_wo0_compute_q_17_q;
    u0_m0_wo0_adelay_rdmux_combproc: PROCESS (u0_m0_wo0_adelay_rdmux_s, u0_m0_wo0_adelay_wraddr_q, u0_m0_wo0_adelay_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_adelay_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_adelay_rdmux_q <= u0_m0_wo0_adelay_wraddr_q;
            WHEN "1" => u0_m0_wo0_adelay_rdmux_q <= u0_m0_wo0_adelay_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_adelay_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_adelay_wraddr(REG,87)@17 + 1
    u0_m0_wo0_adelay_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_adelay_wraddr_q <= "101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_adelay_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_adelay_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_adelay_mem(DUALMEM,84)@17 + 2
    u0_m0_wo0_adelay_mem_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_accum_q);
    u0_m0_wo0_adelay_mem_aa <= u0_m0_wo0_adelay_wraddr_q;
    u0_m0_wo0_adelay_mem_ab <= u0_m0_wo0_adelay_rdmux_q;
    u0_m0_wo0_adelay_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 39,
        widthad_a => 3,
        numwords_a => 6,
        width_b => 39,
        widthad_b => 3,
        numwords_b => 6,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "NONE",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => d_u0_m0_wo0_compute_q_17_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        clock1 => clk,
        address_a => u0_m0_wo0_adelay_mem_aa,
        data_a => u0_m0_wo0_adelay_mem_ia,
        wren_a => d_u0_m0_wo0_compute_q_17_q(0),
        address_b => u0_m0_wo0_adelay_mem_ab,
        q_b => u0_m0_wo0_adelay_mem_iq
    );
    u0_m0_wo0_adelay_mem_q <= u0_m0_wo0_adelay_mem_iq(38 downto 0);

    -- u0_m0_wo0_wi0_r0_ra0_count2_inner(COUNTER,29)@14
    -- low=-1, high=6, step=-1, init=6
    u0_m0_wo0_wi0_r0_ra0_count2_inner_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count2_inner_i <= TO_SIGNED(6, 4);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count2_inner_i(3 downto 3) = "1") THEN
                    u0_m0_wo0_wi0_r0_ra0_count2_inner_i <= u0_m0_wo0_wi0_r0_ra0_count2_inner_i - 9;
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count2_inner_i <= u0_m0_wo0_wi0_r0_ra0_count2_inner_i - 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count2_inner_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count2_inner_i, 4)));

    -- u0_m0_wo0_wi0_r0_ra0_count2_run(LOGICAL,30)@14
    u0_m0_wo0_wi0_r0_ra0_count2_run_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count2_inner_q(3 downto 3));

    -- d_u0_m0_wo0_memread_q_14(DELAY,77)@13 + 1
    d_u0_m0_wo0_memread_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => d_u0_m0_wo0_memread_q_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_ra0_count2(COUNTER,31)@14
    -- low=0, high=1023, step=8, init=0
    u0_m0_wo0_wi0_r0_ra0_count2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count2_i <= TO_UNSIGNED(0, 10);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1" and u0_m0_wo0_wi0_r0_ra0_count2_run_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count2_i <= u0_m0_wo0_wi0_r0_ra0_count2_i + 8;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count2_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count2_i, 11)));

    -- u0_m0_wo0_wi0_r0_ra0_count0_inner(COUNTER,25)@14
    -- low=-1, high=1022, step=-1, init=1022
    u0_m0_wo0_wi0_r0_ra0_count0_inner_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= TO_SIGNED(1022, 11);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count0_inner_i(10 downto 10) = "1") THEN
                    u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= u0_m0_wo0_wi0_r0_ra0_count0_inner_i - 1025;
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= u0_m0_wo0_wi0_r0_ra0_count0_inner_i - 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_inner_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_inner_i, 11)));

    -- u0_m0_wo0_wi0_r0_ra0_count0_run(LOGICAL,26)@14
    u0_m0_wo0_wi0_r0_ra0_count0_run_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count0_inner_q(10 downto 10));

    -- u0_m0_wo0_wi0_r0_ra0_count0(COUNTER,27)@14
    -- low=0, high=1023, step=8, init=0
    u0_m0_wo0_wi0_r0_ra0_count0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_i <= TO_UNSIGNED(0, 10);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1" and u0_m0_wo0_wi0_r0_ra0_count0_run_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count0_i <= u0_m0_wo0_wi0_r0_ra0_count0_i + 8;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_i, 11)));

    -- u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_a(BITSELECT,65)@14
    u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_a_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_wi0_r0_ra0_count0_q(10)) & u0_m0_wo0_wi0_r0_ra0_count0_q));
    u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_a_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_a_in(9 downto 3));

    -- u0_m0_wo0_wi0_r0_ra0_count1(COUNTER,28)@14
    -- low=0, high=7, step=1, init=0
    u0_m0_wo0_wi0_r0_ra0_count1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count1_i <= TO_UNSIGNED(0, 3);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count1_i <= u0_m0_wo0_wi0_r0_ra0_count1_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count1_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count1_i, 4)));

    -- u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_b(BITSELECT,66)@14
    u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_b_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 4 => u0_m0_wo0_wi0_r0_ra0_count1_q(3)) & u0_m0_wo0_wi0_r0_ra0_count1_q));
    u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_b_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_b_in(2 downto 0));

    -- u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_join(BITJOIN,67)@14
    u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_join_q <= GND_q & GND_q & u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_a_b & u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_BitSelect_for_b_b;

    -- u0_m0_wo0_wi0_r0_ra0_add_1_0(ADD,33)@14 + 1
    u0_m0_wo0_wi0_r0_ra0_add_1_0_a <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra0_add_0_0_replace_or_join_q);
    u0_m0_wo0_wi0_r0_ra0_add_1_0_b <= STD_LOGIC_VECTOR("00" & u0_m0_wo0_wi0_r0_ra0_count2_q);
    u0_m0_wo0_wi0_r0_ra0_add_1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_add_1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_add_1_0_o <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_r0_ra0_add_1_0_a) + UNSIGNED(u0_m0_wo0_wi0_r0_ra0_add_1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_add_1_0_q <= u0_m0_wo0_wi0_r0_ra0_add_1_0_o(12 downto 0);

    -- u0_m0_wo0_wi0_r0_ra0_resize(BITSELECT,34)@15
    u0_m0_wo0_wi0_r0_ra0_resize_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_add_1_0_q(9 downto 0));
    u0_m0_wo0_wi0_r0_ra0_resize_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_resize_in(9 downto 0));

    -- d_xIn_bankIn_0_13(DELAY,71)@10 + 3
    d_xIn_bankIn_0_13 : dspba_delay
    GENERIC MAP ( width => 3, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => bankIn_0, xout => d_xIn_bankIn_0_13_q, clk => clk, aclr => areset );

    -- d_xIn_0_13_notEnable(LOGICAL,92)@10
    d_xIn_0_13_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- d_xIn_0_13_nor(LOGICAL,93)@10
    d_xIn_0_13_nor_q <= not (d_xIn_0_13_notEnable_q or d_xIn_0_13_sticky_ena_q);

    -- d_xIn_0_13_cmpReg(REG,91)@10 + 1
    d_xIn_0_13_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- d_xIn_0_13_sticky_ena(REG,94)@10 + 1
    d_xIn_0_13_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_xIn_0_13_nor_q = "1") THEN
                d_xIn_0_13_sticky_ena_q <= STD_LOGIC_VECTOR(d_xIn_0_13_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- d_xIn_0_13_enaAnd(LOGICAL,95)@10
    d_xIn_0_13_enaAnd_q <= d_xIn_0_13_sticky_ena_q and VCC_q;

    -- d_xIn_0_13_rdcnt(COUNTER,89)@10 + 1
    -- low=0, high=1, step=1, init=0
    d_xIn_0_13_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_rdcnt_i <= d_xIn_0_13_rdcnt_i + 1;
        END IF;
    END PROCESS;
    d_xIn_0_13_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(d_xIn_0_13_rdcnt_i, 1)));

    -- d_xIn_0_13_wraddr(REG,90)@10 + 1
    d_xIn_0_13_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_wraddr_q <= "1";
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_wraddr_q <= STD_LOGIC_VECTOR(d_xIn_0_13_rdcnt_q);
        END IF;
    END PROCESS;

    -- d_xIn_0_13_mem(DUALMEM,88)@10 + 2
    d_xIn_0_13_mem_ia <= STD_LOGIC_VECTOR(xIn_0);
    d_xIn_0_13_mem_aa <= d_xIn_0_13_wraddr_q;
    d_xIn_0_13_mem_ab <= d_xIn_0_13_rdcnt_q;
    d_xIn_0_13_mem_reset0 <= areset;
    d_xIn_0_13_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 16,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => d_xIn_0_13_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => d_xIn_0_13_mem_reset0,
        clock1 => clk,
        address_a => d_xIn_0_13_mem_aa,
        data_a => d_xIn_0_13_mem_ia,
        wren_a => VCC_q(0),
        address_b => d_xIn_0_13_mem_ab,
        q_b => d_xIn_0_13_mem_iq
    );
    d_xIn_0_13_mem_q <= d_xIn_0_13_mem_iq(15 downto 0);

    -- xIn_bankIn_0(BITJOIN,3)@13
    xIn_bankIn_0_q <= d_xIn_bankIn_0_13_q & d_xIn_0_13_mem_q;

    -- bank_u0_m0_wi0_wo0_merged_bit_select(BITSELECT,69)@13
    bank_u0_m0_wi0_wo0_merged_bit_select_b <= STD_LOGIC_VECTOR(xIn_bankIn_0_q(18 downto 16));
    bank_u0_m0_wi0_wo0_merged_bit_select_c <= STD_LOGIC_VECTOR(xIn_bankIn_0_q(15 downto 0));

    -- d_bank_u0_m0_wi0_wo0_merged_bit_select_c_15(DELAY,83)@13 + 2
    d_bank_u0_m0_wi0_wo0_merged_bit_select_c_15 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => bank_u0_m0_wi0_wo0_merged_bit_select_c, xout => d_bank_u0_m0_wi0_wo0_merged_bit_select_c_15_q, clk => clk, aclr => areset );

    -- d_in0_m0_wi0_wo0_assign_id1_q_13(DELAY,75)@11 + 2
    d_in0_m0_wi0_wo0_assign_id1_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_in0_m0_wi0_wo0_assign_id1_q_11_q, xout => d_in0_m0_wi0_wo0_assign_id1_q_13_q, clk => clk, aclr => areset );

    -- d_in0_m0_wi0_wo0_assign_id1_q_15(DELAY,76)@13 + 2
    d_in0_m0_wi0_wo0_assign_id1_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_in0_m0_wi0_wo0_assign_id1_q_13_q, xout => d_in0_m0_wi0_wo0_assign_id1_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_wa0(COUNTER,35)@15
    -- low=0, high=1023, step=1, init=1016
    u0_m0_wo0_wi0_r0_wa0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa0_i <= TO_UNSIGNED(1016, 10);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_15_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa0_i, 10)));

    -- u0_m0_wo0_wi0_r0_memr0(DUALMEM,36)@15
    u0_m0_wo0_wi0_r0_memr0_ia <= STD_LOGIC_VECTOR(d_bank_u0_m0_wi0_wo0_merged_bit_select_c_15_q);
    u0_m0_wo0_wi0_r0_memr0_aa <= u0_m0_wo0_wi0_r0_wa0_q;
    u0_m0_wo0_wi0_r0_memr0_ab <= u0_m0_wo0_wi0_r0_ra0_resize_b;
    u0_m0_wo0_wi0_r0_memr0_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 10,
        numwords_a => 1024,
        width_b => 16,
        widthad_b => 10,
        numwords_b => 1024,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "NONE",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_wi0_r0_memr0_aa,
        data_a => u0_m0_wo0_wi0_r0_memr0_ia,
        wren_a => d_in0_m0_wi0_wo0_assign_id1_q_15_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr0_ab,
        q_b => u0_m0_wo0_wi0_r0_memr0_iq
    );
    u0_m0_wo0_wi0_r0_memr0_q <= u0_m0_wo0_wi0_r0_memr0_iq(15 downto 0);

    -- u0_m0_wo0_bank_ra0_count0(COUNTER,37)@13
    -- low=0, high=7, step=1, init=0
    u0_m0_wo0_bank_ra0_count0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_bank_ra0_count0_i <= TO_UNSIGNED(0, 3);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                u0_m0_wo0_bank_ra0_count0_i <= u0_m0_wo0_bank_ra0_count0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_bank_ra0_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_bank_ra0_count0_i, 3)));

    -- u0_m0_wo0_bank_wa0(COUNTER,38)@13
    -- low=0, high=7, step=1, init=0
    u0_m0_wo0_bank_wa0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_bank_wa0_i <= TO_UNSIGNED(0, 3);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_13_q = "1") THEN
                u0_m0_wo0_bank_wa0_i <= u0_m0_wo0_bank_wa0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_bank_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_bank_wa0_i, 3)));

    -- u0_m0_wo0_bank_memr0(DUALMEM,39)@13
    u0_m0_wo0_bank_memr0_ia <= bank_u0_m0_wi0_wo0_merged_bit_select_b;
    u0_m0_wo0_bank_memr0_aa <= u0_m0_wo0_bank_wa0_q;
    u0_m0_wo0_bank_memr0_ab <= u0_m0_wo0_bank_ra0_count0_q;
    u0_m0_wo0_bank_memr0_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 3,
        widthad_a => 3,
        numwords_a => 8,
        width_b => 3,
        widthad_b => 3,
        numwords_b => 8,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "NONE",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_bank_memr0_aa,
        data_a => u0_m0_wo0_bank_memr0_ia,
        wren_a => d_in0_m0_wi0_wo0_assign_id1_q_13_q(0),
        address_b => u0_m0_wo0_bank_memr0_ab,
        q_b => u0_m0_wo0_bank_memr0_iq
    );
    u0_m0_wo0_bank_memr0_q <= u0_m0_wo0_bank_memr0_iq(2 downto 0);

    -- u0_m0_wo0_ca0_inner(COUNTER,40)@13
    -- low=-1, high=6, step=-1, init=6
    u0_m0_wo0_ca0_inner_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca0_inner_i <= TO_SIGNED(6, 4);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_ca0_inner_i(3 downto 3) = "1") THEN
                    u0_m0_wo0_ca0_inner_i <= u0_m0_wo0_ca0_inner_i - 9;
                ELSE
                    u0_m0_wo0_ca0_inner_i <= u0_m0_wo0_ca0_inner_i - 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca0_inner_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca0_inner_i, 4)));

    -- u0_m0_wo0_ca0_run(LOGICAL,41)@13
    u0_m0_wo0_ca0_run_q <= STD_LOGIC_VECTOR(u0_m0_wo0_ca0_inner_q(3 downto 3));

    -- u0_m0_wo0_ca0(COUNTER,42)@13
    -- low=0, high=127, step=1, init=0
    u0_m0_wo0_ca0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca0_i <= TO_UNSIGNED(0, 7);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1" and u0_m0_wo0_ca0_run_q = "1") THEN
                u0_m0_wo0_ca0_i <= u0_m0_wo0_ca0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca0_i, 7)));

    -- u0_m0_wo0_cab0(BITJOIN,43)@13
    u0_m0_wo0_cab0_q <= u0_m0_wo0_bank_memr0_q & u0_m0_wo0_ca0_q;

    -- d_busIn_writedata_12(DELAY,72)@10 + 2
    d_busIn_writedata_12 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => busIn_writedata, xout => d_busIn_writedata_12_q, clk => bus_clk, aclr => h_areset );

    -- d_busIn_write_12(DELAY,73)@10 + 2
    d_busIn_write_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => busIn_write, xout => d_busIn_write_12_q, clk => bus_clk, aclr => h_areset );

    -- u0_m0_wo0_dec0_lutmem(DUALMEM,64)@10 + 2
    u0_m0_wo0_dec0_lutmem_aa <= busIn_address;
    u0_m0_wo0_dec0_lutmem_reset0 <= h_areset;
    u0_m0_wo0_dec0_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 10,
        widthad_a => 10,
        numwords_a => 1024,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "fir_fir_compiler_ii_0_rtl_core_u0_m0_wo0_dec0_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_dec0_lutmem_reset0,
        clock0 => bus_clk,
        address_a => u0_m0_wo0_dec0_lutmem_aa,
        q_a => u0_m0_wo0_dec0_lutmem_ir
    );
    u0_m0_wo0_dec0_lutmem_r <= u0_m0_wo0_dec0_lutmem_ir(9 downto 0);

    -- u0_m0_wo0_cm0(DUALMEM,49)@13 + 2
    u0_m0_wo0_cm0_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_12_q);
    u0_m0_wo0_cm0_aa <= u0_m0_wo0_dec0_lutmem_r;
    u0_m0_wo0_cm0_ab <= u0_m0_wo0_cab0_q;
    u0_m0_wo0_cm0_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 10,
        numwords_a => 1024,
        width_b => 16,
        widthad_b => 10,
        numwords_b => 1024,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK1",
        indata_reg_b => "CLOCK1",
        rdcontrol_reg_b => "CLOCK1",
        byteena_reg_b => "CLOCK1",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "NONE",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "fir_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm0.hex",
        init_file_layout => "PORT_B",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => '1',
        clocken0 => '1',
        clock0 => bus_clk,
        clock1 => clk,
        address_a => u0_m0_wo0_cm0_aa,
        data_a => u0_m0_wo0_cm0_ia,
        wren_a => d_busIn_write_12_q(0),
        address_b => u0_m0_wo0_cm0_ab,
        q_b => u0_m0_wo0_cm0_iq
    );
    u0_m0_wo0_cm0_q <= u0_m0_wo0_cm0_iq(15 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_mtree_mult1_0_cma(CHAINMULTADD,68)@15 + 2
    u0_m0_wo0_mtree_mult1_0_cma_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_cma_ena0 <= '1';
    u0_m0_wo0_mtree_mult1_0_cma_ena1 <= u0_m0_wo0_mtree_mult1_0_cma_ena0;
    u0_m0_wo0_mtree_mult1_0_cma_p(0) <= u0_m0_wo0_mtree_mult1_0_cma_a0(0) * u0_m0_wo0_mtree_mult1_0_cma_c0(0);
    u0_m0_wo0_mtree_mult1_0_cma_u(0) <= RESIZE(u0_m0_wo0_mtree_mult1_0_cma_p(0),32);
    u0_m0_wo0_mtree_mult1_0_cma_w(0) <= u0_m0_wo0_mtree_mult1_0_cma_u(0);
    u0_m0_wo0_mtree_mult1_0_cma_x(0) <= u0_m0_wo0_mtree_mult1_0_cma_w(0);
    u0_m0_wo0_mtree_mult1_0_cma_y(0) <= u0_m0_wo0_mtree_mult1_0_cma_x(0);
    u0_m0_wo0_mtree_mult1_0_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_cma_a0 <= (others => (others => '0'));
            u0_m0_wo0_mtree_mult1_0_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_mtree_mult1_0_cma_ena0 = '1') THEN
                u0_m0_wo0_mtree_mult1_0_cma_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_cm0_q),16);
                u0_m0_wo0_mtree_mult1_0_cma_c0(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_memr0_q),16);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_mtree_mult1_0_cma_ena1 = '1') THEN
                u0_m0_wo0_mtree_mult1_0_cma_s(0) <= u0_m0_wo0_mtree_mult1_0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_cma_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_mult1_0_cma_qq, clk => clk, aclr => areset );
    u0_m0_wo0_mtree_mult1_0_cma_q <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_cma_qq(31 downto 0));

    -- u0_m0_wo0_accum(ADD,53)@17 + 1
    u0_m0_wo0_accum_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 32 => u0_m0_wo0_mtree_mult1_0_cma_q(31)) & u0_m0_wo0_mtree_mult1_0_cma_q));
    u0_m0_wo0_accum_b <= STD_LOGIC_VECTOR(u0_m0_wo0_adelay_mem_q);
    u0_m0_wo0_accum_i <= u0_m0_wo0_accum_a;
    u0_m0_wo0_accum_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_accum_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_17_q = "1") THEN
                IF (u0_m0_wo0_aseq_q = "1") THEN
                    u0_m0_wo0_accum_o <= u0_m0_wo0_accum_i;
                ELSE
                    u0_m0_wo0_accum_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_accum_a) + SIGNED(u0_m0_wo0_accum_b));
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_accum_q <= u0_m0_wo0_accum_o(38 downto 0);

    -- u0_m0_wo0_oseq(SEQUENCE,54)@15 + 1
    u0_m0_wo0_oseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(12 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "0001111111000";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_15_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "1111111111001") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 1023;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_c(12 downto 12));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_oseq_gated(LOGICAL,55)@16
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_q and d_u0_m0_wo0_compute_q_16_q;

    -- u0_m0_wo0_oseq_gated_reg(REG,56)@16 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- out0_m0_wo0_lineup_select_delay_0(DELAY,58)@17
    out0_m0_wo0_lineup_select_delay_0_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_reg_q);

    -- out0_m0_wo0_assign_id3(DELAY,60)@17
    out0_m0_wo0_assign_id3_q <= STD_LOGIC_VECTOR(out0_m0_wo0_lineup_select_delay_0_q);

    -- outchan(COUNTER,61)@17 + 1
    -- low=0, high=7, step=1, init=7
    outchan_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            outchan_i <= TO_UNSIGNED(7, 3);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (out0_m0_wo0_assign_id3_q = "1") THEN
                outchan_i <= outchan_i + 1;
            END IF;
        END IF;
    END PROCESS;
    outchan_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(outchan_i, 4)));

    -- d_out0_m0_wo0_assign_id3_q_18(DELAY,82)@17 + 1
    d_out0_m0_wo0_assign_id3_q_18 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => out0_m0_wo0_assign_id3_q, xout => d_out0_m0_wo0_assign_id3_q_18_q, clk => clk, aclr => areset );

    -- xOut(PORTOUT,62)@18 + 1
    xOut_v <= d_out0_m0_wo0_assign_id3_q_18_q;
    xOut_c <= STD_LOGIC_VECTOR("0000" & outchan_q);
    xOut_0 <= u0_m0_wo0_accum_q;

END normal;
