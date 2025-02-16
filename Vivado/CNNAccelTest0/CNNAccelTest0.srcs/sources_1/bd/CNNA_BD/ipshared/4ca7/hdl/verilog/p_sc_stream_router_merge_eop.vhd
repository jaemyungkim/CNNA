-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity p_sc_stream_router_merge_eop is
port (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    din_a_0_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    din_a_0_empty_n : IN STD_LOGIC;
    din_a_0_read : OUT STD_LOGIC;
    din_a_1_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    din_a_1_empty_n : IN STD_LOGIC;
    din_a_1_read : OUT STD_LOGIC;
    din_a_2_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    din_a_2_empty_n : IN STD_LOGIC;
    din_a_2_read : OUT STD_LOGIC;
    din_b_0_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    din_b_0_empty_n : IN STD_LOGIC;
    din_b_0_read : OUT STD_LOGIC;
    din_b_1_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    din_b_1_empty_n : IN STD_LOGIC;
    din_b_1_read : OUT STD_LOGIC;
    din_b_2_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    din_b_2_empty_n : IN STD_LOGIC;
    din_b_2_read : OUT STD_LOGIC;
    ctrl_channel_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    ctrl_channel_empty_n : IN STD_LOGIC;
    ctrl_channel_read : OUT STD_LOGIC;
    dout_0_din : OUT STD_LOGIC_VECTOR (127 downto 0);
    dout_0_full_n : IN STD_LOGIC;
    dout_0_write : OUT STD_LOGIC;
    dout_1_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    dout_1_full_n : IN STD_LOGIC;
    dout_1_write : OUT STD_LOGIC;
    dout_2_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    dout_2_full_n : IN STD_LOGIC;
    dout_2_write : OUT STD_LOGIC );
end;


architecture behav of p_sc_stream_router_merge_eop is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "p_sc_stream_router_merge_eop,hls_ip_2019_1,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.788000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=152,HLS_SYN_LUT=226,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_a_0_read : STD_LOGIC;
    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_a_1_read : STD_LOGIC;
    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_a_2_read : STD_LOGIC;
    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_b_0_read : STD_LOGIC;
    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_b_1_read : STD_LOGIC;
    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_b_2_read : STD_LOGIC;
    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_ctrl_channel_read : STD_LOGIC;
    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_0_din : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_0_write : STD_LOGIC;
    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_1_din : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_1_write : STD_LOGIC;
    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_2_din : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_2_write : STD_LOGIC;

    component p_sc_stream_router_merge_eop_thread_sc_stream_router IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        din_a_0_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        din_a_0_empty_n : IN STD_LOGIC;
        din_a_0_read : OUT STD_LOGIC;
        din_a_1_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        din_a_1_empty_n : IN STD_LOGIC;
        din_a_1_read : OUT STD_LOGIC;
        din_a_2_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        din_a_2_empty_n : IN STD_LOGIC;
        din_a_2_read : OUT STD_LOGIC;
        din_b_0_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        din_b_0_empty_n : IN STD_LOGIC;
        din_b_0_read : OUT STD_LOGIC;
        din_b_1_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        din_b_1_empty_n : IN STD_LOGIC;
        din_b_1_read : OUT STD_LOGIC;
        din_b_2_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        din_b_2_empty_n : IN STD_LOGIC;
        din_b_2_read : OUT STD_LOGIC;
        ctrl_channel_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        ctrl_channel_empty_n : IN STD_LOGIC;
        ctrl_channel_read : OUT STD_LOGIC;
        dout_0_din : OUT STD_LOGIC_VECTOR (127 downto 0);
        dout_0_full_n : IN STD_LOGIC;
        dout_0_write : OUT STD_LOGIC;
        dout_1_din : OUT STD_LOGIC_VECTOR (0 downto 0);
        dout_1_full_n : IN STD_LOGIC;
        dout_1_write : OUT STD_LOGIC;
        dout_2_din : OUT STD_LOGIC_VECTOR (15 downto 0);
        dout_2_full_n : IN STD_LOGIC;
        dout_2_write : OUT STD_LOGIC );
    end component;



begin
    grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78 : component p_sc_stream_router_merge_eop_thread_sc_stream_router
    port map (
        ap_clk => clk,
        ap_rst => reset,
        din_a_0_dout => din_a_0_dout,
        din_a_0_empty_n => din_a_0_empty_n,
        din_a_0_read => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_a_0_read,
        din_a_1_dout => din_a_1_dout,
        din_a_1_empty_n => din_a_1_empty_n,
        din_a_1_read => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_a_1_read,
        din_a_2_dout => din_a_2_dout,
        din_a_2_empty_n => din_a_2_empty_n,
        din_a_2_read => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_a_2_read,
        din_b_0_dout => din_b_0_dout,
        din_b_0_empty_n => din_b_0_empty_n,
        din_b_0_read => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_b_0_read,
        din_b_1_dout => din_b_1_dout,
        din_b_1_empty_n => din_b_1_empty_n,
        din_b_1_read => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_b_1_read,
        din_b_2_dout => din_b_2_dout,
        din_b_2_empty_n => din_b_2_empty_n,
        din_b_2_read => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_b_2_read,
        ctrl_channel_dout => ctrl_channel_dout,
        ctrl_channel_empty_n => ctrl_channel_empty_n,
        ctrl_channel_read => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_ctrl_channel_read,
        dout_0_din => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_0_din,
        dout_0_full_n => dout_0_full_n,
        dout_0_write => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_0_write,
        dout_1_din => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_1_din,
        dout_1_full_n => dout_1_full_n,
        dout_1_write => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_1_write,
        dout_2_din => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_2_din,
        dout_2_full_n => dout_2_full_n,
        dout_2_write => grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_2_write);




    ctrl_channel_read <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_ctrl_channel_read;
    din_a_0_read <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_a_0_read;
    din_a_1_read <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_a_1_read;
    din_a_2_read <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_a_2_read;
    din_b_0_read <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_b_0_read;
    din_b_1_read <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_b_1_read;
    din_b_2_read <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_din_b_2_read;
    dout_0_din <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_0_din;
    dout_0_write <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_0_write;
    dout_1_din <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_1_din;
    dout_1_write <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_1_write;
    dout_2_din <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_2_din;
    dout_2_write <= grp_p_sc_stream_router_merge_eop_thread_sc_stream_router_fu_78_dout_2_write;
end behav;
