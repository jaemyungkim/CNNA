-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity p_sc_stream_router_eop_thread_sc_stream_router is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    din_0_dout : IN STD_LOGIC_VECTOR (383 downto 0);
    din_0_empty_n : IN STD_LOGIC;
    din_0_read : OUT STD_LOGIC;
    din_1_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    din_1_empty_n : IN STD_LOGIC;
    din_1_read : OUT STD_LOGIC;
    din_2_dout : IN STD_LOGIC_VECTOR (47 downto 0);
    din_2_empty_n : IN STD_LOGIC;
    din_2_read : OUT STD_LOGIC;
    ctrl_channel_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    ctrl_channel_empty_n : IN STD_LOGIC;
    ctrl_channel_read : OUT STD_LOGIC;
    dout_a_0_din : OUT STD_LOGIC_VECTOR (383 downto 0);
    dout_a_0_full_n : IN STD_LOGIC;
    dout_a_0_write : OUT STD_LOGIC;
    dout_a_1_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    dout_a_1_full_n : IN STD_LOGIC;
    dout_a_1_write : OUT STD_LOGIC;
    dout_a_2_din : OUT STD_LOGIC_VECTOR (47 downto 0);
    dout_a_2_full_n : IN STD_LOGIC;
    dout_a_2_write : OUT STD_LOGIC;
    dout_b_0_din : OUT STD_LOGIC_VECTOR (383 downto 0);
    dout_b_0_full_n : IN STD_LOGIC;
    dout_b_0_write : OUT STD_LOGIC;
    dout_b_1_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    dout_b_1_full_n : IN STD_LOGIC;
    dout_b_1_write : OUT STD_LOGIC;
    dout_b_2_din : OUT STD_LOGIC_VECTOR (47 downto 0);
    dout_b_2_full_n : IN STD_LOGIC;
    dout_b_2_write : OUT STD_LOGIC;
    s_packed_in : OUT STD_LOGIC_VECTOR (31 downto 0);
    s_packed_in_ap_vld : OUT STD_LOGIC;
    s_packed_out_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    s_packed_out_A_ap_vld : OUT STD_LOGIC;
    s_packed_out_B : OUT STD_LOGIC_VECTOR (31 downto 0);
    s_packed_out_B_ap_vld : OUT STD_LOGIC;
    s_state : OUT STD_LOGIC_VECTOR (31 downto 0);
    s_state_ap_vld : OUT STD_LOGIC );
end;


architecture behav of p_sc_stream_router_eop_thread_sc_stream_router is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";

    signal din_0_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal din_1_blk_n : STD_LOGIC;
    signal din_2_blk_n : STD_LOGIC;
    signal ctrl_channel_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal dout_a_0_blk_n : STD_LOGIC;
    signal val_V_reg_326 : STD_LOGIC_VECTOR (0 downto 0);
    signal dout_a_1_blk_n : STD_LOGIC;
    signal dout_a_2_blk_n : STD_LOGIC;
    signal dout_b_0_blk_n : STD_LOGIC;
    signal dout_b_1_blk_n : STD_LOGIC;
    signal dout_b_2_blk_n : STD_LOGIC;
    signal packed_in_fu_291_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal packed_in_reg_333 : STD_LOGIC_VECTOR (31 downto 0);
    signal io_acc_block_signal_op56 : STD_LOGIC;
    signal io_acc_block_signal_op63 : STD_LOGIC;
    signal io_acc_block_signal_op67 : STD_LOGIC;
    signal ap_block_state4 : BOOLEAN;
    signal p_076_0_reg_176 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal p_047_0_reg_188 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal p_047_2_reg_242 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_023_0_reg_200 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal p_023_2_reg_255 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_076_1_reg_212 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_fu_318_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln140_fu_314_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal val_tlast_V_fu_279_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_047_1_reg_222 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_p_047_2_phi_fu_247_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_023_1_reg_232 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_mux_p_023_2_phi_fu_260_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal packed_out_A_fu_298_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal packed_out_B_fu_306_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal v_fu_268_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_condition_110 : BOOLEAN;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state2;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    p_023_0_reg_200_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                p_023_0_reg_200 <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    p_023_0_reg_200 <= p_023_2_reg_255;
                elsif (not((ap_const_boolean_1 = ap_const_boolean_1))) then 
                    p_023_0_reg_200 <= ap_const_lv32_0;
                end if; 
            end if;
        end if;
    end process;


    p_047_0_reg_188_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                p_047_0_reg_188 <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    p_047_0_reg_188 <= p_047_2_reg_242;
                elsif (not((ap_const_boolean_1 = ap_const_boolean_1))) then 
                    p_047_0_reg_188 <= ap_const_lv32_0;
                end if; 
            end if;
        end if;
    end process;


    p_076_0_reg_176_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                p_076_0_reg_176 <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    p_076_0_reg_176 <= packed_in_reg_333;
                elsif (not((ap_const_boolean_1 = ap_const_boolean_1))) then 
                    p_076_0_reg_176 <= ap_const_lv32_0;
                end if; 
            end if;
        end if;
    end process;


    p_023_1_reg_232_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state4) and ((val_tlast_V_fu_279_p1 = ap_const_lv1_0) or ((trunc_ln140_fu_314_p1 = ap_const_lv1_1) or (tmp_6_fu_318_p3 = ap_const_lv1_1))))) then 
                p_023_1_reg_232 <= ap_phi_mux_p_023_2_phi_fu_260_p4;
            elsif (((ctrl_channel_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_023_1_reg_232 <= p_023_0_reg_200;
            end if; 
        end if;
    end process;

    p_023_2_reg_255_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_110)) then
                if ((val_V_reg_326 = ap_const_lv1_0)) then 
                    p_023_2_reg_255 <= p_023_1_reg_232;
                elsif ((val_V_reg_326 = ap_const_lv1_1)) then 
                    p_023_2_reg_255 <= packed_out_B_fu_306_p2;
                end if;
            end if; 
        end if;
    end process;

    p_047_1_reg_222_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state4) and ((val_tlast_V_fu_279_p1 = ap_const_lv1_0) or ((trunc_ln140_fu_314_p1 = ap_const_lv1_1) or (tmp_6_fu_318_p3 = ap_const_lv1_1))))) then 
                p_047_1_reg_222 <= ap_phi_mux_p_047_2_phi_fu_247_p4;
            elsif (((ctrl_channel_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_047_1_reg_222 <= p_047_0_reg_188;
            end if; 
        end if;
    end process;

    p_047_2_reg_242_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_110)) then
                if ((val_V_reg_326 = ap_const_lv1_0)) then 
                    p_047_2_reg_242 <= packed_out_A_fu_298_p2;
                elsif ((val_V_reg_326 = ap_const_lv1_1)) then 
                    p_047_2_reg_242 <= p_047_1_reg_222;
                end if;
            end if; 
        end if;
    end process;

    p_076_1_reg_212_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state4) and ((val_tlast_V_fu_279_p1 = ap_const_lv1_0) or ((trunc_ln140_fu_314_p1 = ap_const_lv1_1) or (tmp_6_fu_318_p3 = ap_const_lv1_1))))) then 
                p_076_1_reg_212 <= packed_in_fu_291_p2;
            elsif (((ctrl_channel_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_076_1_reg_212 <= p_076_0_reg_176;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                packed_in_reg_333 <= packed_in_fu_291_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ctrl_channel_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                val_V_reg_326 <= ctrl_channel_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ctrl_channel_empty_n, ap_CS_fsm, ap_CS_fsm_state4, ap_CS_fsm_state3, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67, tmp_6_fu_318_p3, trunc_ln140_fu_314_p1, val_tlast_V_fu_279_p1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((ctrl_channel_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state4) and ((val_tlast_V_fu_279_p1 = ap_const_lv1_0) or ((trunc_ln140_fu_314_p1 = ap_const_lv1_1) or (tmp_6_fu_318_p3 = ap_const_lv1_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                elsif ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (val_tlast_V_fu_279_p1 = ap_const_lv1_1) and (trunc_ln140_fu_314_p1 = ap_const_lv1_0) and (tmp_6_fu_318_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_block_state4_assign_proc : process(val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
                ap_block_state4 <= ((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)));
    end process;


    ap_condition_110_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
                ap_condition_110 <= (not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state4));
    end process;


    ap_phi_mux_p_023_2_phi_fu_260_p4_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, p_023_1_reg_232, packed_out_B_fu_306_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
            if ((val_V_reg_326 = ap_const_lv1_0)) then 
                ap_phi_mux_p_023_2_phi_fu_260_p4 <= p_023_1_reg_232;
            elsif ((val_V_reg_326 = ap_const_lv1_1)) then 
                ap_phi_mux_p_023_2_phi_fu_260_p4 <= packed_out_B_fu_306_p2;
            else 
                ap_phi_mux_p_023_2_phi_fu_260_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            ap_phi_mux_p_023_2_phi_fu_260_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    ap_phi_mux_p_047_2_phi_fu_247_p4_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, p_047_1_reg_222, packed_out_A_fu_298_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
            if ((val_V_reg_326 = ap_const_lv1_0)) then 
                ap_phi_mux_p_047_2_phi_fu_247_p4 <= packed_out_A_fu_298_p2;
            elsif ((val_V_reg_326 = ap_const_lv1_1)) then 
                ap_phi_mux_p_047_2_phi_fu_247_p4 <= p_047_1_reg_222;
            else 
                ap_phi_mux_p_047_2_phi_fu_247_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            ap_phi_mux_p_047_2_phi_fu_247_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    ctrl_channel_blk_n_assign_proc : process(ctrl_channel_empty_n, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ctrl_channel_blk_n <= ctrl_channel_empty_n;
        else 
            ctrl_channel_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    ctrl_channel_read_assign_proc : process(ctrl_channel_empty_n, ap_CS_fsm_state3)
    begin
        if (((ctrl_channel_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ctrl_channel_read <= ap_const_logic_1;
        else 
            ctrl_channel_read <= ap_const_logic_0;
        end if; 
    end process;


    din_0_blk_n_assign_proc : process(din_0_empty_n, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            din_0_blk_n <= din_0_empty_n;
        else 
            din_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    din_0_read_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
        if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            din_0_read <= ap_const_logic_1;
        else 
            din_0_read <= ap_const_logic_0;
        end if; 
    end process;


    din_1_blk_n_assign_proc : process(din_1_empty_n, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            din_1_blk_n <= din_1_empty_n;
        else 
            din_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    din_1_read_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
        if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            din_1_read <= ap_const_logic_1;
        else 
            din_1_read <= ap_const_logic_0;
        end if; 
    end process;


    din_2_blk_n_assign_proc : process(din_2_empty_n, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            din_2_blk_n <= din_2_empty_n;
        else 
            din_2_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    din_2_read_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
        if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            din_2_read <= ap_const_logic_1;
        else 
            din_2_read <= ap_const_logic_0;
        end if; 
    end process;


    dout_a_0_blk_n_assign_proc : process(dout_a_0_full_n, ap_CS_fsm_state4, val_V_reg_326)
    begin
        if (((val_V_reg_326 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dout_a_0_blk_n <= dout_a_0_full_n;
        else 
            dout_a_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dout_a_0_din <= din_0_dout;

    dout_a_0_write_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
        if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (val_V_reg_326 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dout_a_0_write <= ap_const_logic_1;
        else 
            dout_a_0_write <= ap_const_logic_0;
        end if; 
    end process;


    dout_a_1_blk_n_assign_proc : process(dout_a_1_full_n, ap_CS_fsm_state4, val_V_reg_326)
    begin
        if (((val_V_reg_326 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dout_a_1_blk_n <= dout_a_1_full_n;
        else 
            dout_a_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dout_a_1_din <= din_1_dout;

    dout_a_1_write_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
        if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (val_V_reg_326 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dout_a_1_write <= ap_const_logic_1;
        else 
            dout_a_1_write <= ap_const_logic_0;
        end if; 
    end process;


    dout_a_2_blk_n_assign_proc : process(dout_a_2_full_n, ap_CS_fsm_state4, val_V_reg_326)
    begin
        if (((val_V_reg_326 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dout_a_2_blk_n <= dout_a_2_full_n;
        else 
            dout_a_2_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dout_a_2_din <= din_2_dout;

    dout_a_2_write_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
        if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (val_V_reg_326 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dout_a_2_write <= ap_const_logic_1;
        else 
            dout_a_2_write <= ap_const_logic_0;
        end if; 
    end process;


    dout_b_0_blk_n_assign_proc : process(dout_b_0_full_n, ap_CS_fsm_state4, val_V_reg_326)
    begin
        if (((val_V_reg_326 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dout_b_0_blk_n <= dout_b_0_full_n;
        else 
            dout_b_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dout_b_0_din <= din_0_dout;

    dout_b_0_write_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
        if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (val_V_reg_326 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dout_b_0_write <= ap_const_logic_1;
        else 
            dout_b_0_write <= ap_const_logic_0;
        end if; 
    end process;


    dout_b_1_blk_n_assign_proc : process(dout_b_1_full_n, ap_CS_fsm_state4, val_V_reg_326)
    begin
        if (((val_V_reg_326 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dout_b_1_blk_n <= dout_b_1_full_n;
        else 
            dout_b_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dout_b_1_din <= din_1_dout;

    dout_b_1_write_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
        if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (val_V_reg_326 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dout_b_1_write <= ap_const_logic_1;
        else 
            dout_b_1_write <= ap_const_logic_0;
        end if; 
    end process;


    dout_b_2_blk_n_assign_proc : process(dout_b_2_full_n, ap_CS_fsm_state4, val_V_reg_326)
    begin
        if (((val_V_reg_326 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dout_b_2_blk_n <= dout_b_2_full_n;
        else 
            dout_b_2_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dout_b_2_din <= din_2_dout;

    dout_b_2_write_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
        if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (val_V_reg_326 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            dout_b_2_write <= ap_const_logic_1;
        else 
            dout_b_2_write <= ap_const_logic_0;
        end if; 
    end process;

    io_acc_block_signal_op56 <= (din_2_empty_n and din_1_empty_n and din_0_empty_n);
    io_acc_block_signal_op63 <= (dout_a_2_full_n and dout_a_1_full_n and dout_a_0_full_n);
    io_acc_block_signal_op67 <= (dout_b_2_full_n and dout_b_1_full_n and dout_b_0_full_n);
    packed_in_fu_291_p2 <= std_logic_vector(unsigned(p_076_1_reg_212) + unsigned(ap_const_lv32_1));
    packed_out_A_fu_298_p2 <= std_logic_vector(unsigned(p_047_1_reg_222) + unsigned(ap_const_lv32_1));
    packed_out_B_fu_306_p2 <= std_logic_vector(unsigned(p_023_1_reg_232) + unsigned(ap_const_lv32_1));
    s_packed_in <= std_logic_vector(unsigned(p_076_1_reg_212) + unsigned(ap_const_lv32_1));

    s_packed_in_ap_vld_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
        if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            s_packed_in_ap_vld <= ap_const_logic_1;
        else 
            s_packed_in_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    s_packed_out_A <= std_logic_vector(unsigned(p_047_1_reg_222) + unsigned(ap_const_lv32_1));

    s_packed_out_A_ap_vld_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
        if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (val_V_reg_326 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            s_packed_out_A_ap_vld <= ap_const_logic_1;
        else 
            s_packed_out_A_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    s_packed_out_B <= std_logic_vector(unsigned(p_023_1_reg_232) + unsigned(ap_const_lv32_1));

    s_packed_out_B_ap_vld_assign_proc : process(ap_CS_fsm_state4, val_V_reg_326, io_acc_block_signal_op56, io_acc_block_signal_op63, io_acc_block_signal_op67)
    begin
        if ((not(((io_acc_block_signal_op56 = ap_const_logic_0) or ((val_V_reg_326 = ap_const_lv1_1) and (io_acc_block_signal_op67 = ap_const_logic_0)) or ((val_V_reg_326 = ap_const_lv1_0) and (io_acc_block_signal_op63 = ap_const_logic_0)))) and (val_V_reg_326 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            s_packed_out_B_ap_vld <= ap_const_logic_1;
        else 
            s_packed_out_B_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    s_state_assign_proc : process(ctrl_channel_empty_n, ap_CS_fsm_state3, ap_CS_fsm_state2, v_fu_268_p1)
    begin
        if (((ctrl_channel_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            s_state <= v_fu_268_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            s_state <= ap_const_lv32_FFFFFFFF;
        else 
            s_state <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    s_state_ap_vld_assign_proc : process(ctrl_channel_empty_n, ap_CS_fsm_state3, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ctrl_channel_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            s_state_ap_vld <= ap_const_logic_1;
        else 
            s_state_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    tmp_6_fu_318_p3 <= din_2_dout(47 downto 47);
    trunc_ln140_fu_314_p1 <= din_2_dout(1 - 1 downto 0);
    v_fu_268_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ctrl_channel_dout),32));
    val_tlast_V_fu_279_p1 <= din_1_dout;
end behav;
