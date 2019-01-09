-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Conv_forward is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    conv_layer1_2_2_2_1_2_2_2_input_data_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    conv_layer1_2_2_2_1_2_2_2_input_data_V_ce0 : OUT STD_LOGIC;
    conv_layer1_2_2_2_1_2_2_2_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer1_2_2_2_1_2_2_2_output_data_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    conv_layer1_2_2_2_1_2_2_2_output_data_V_ce0 : OUT STD_LOGIC;
    conv_layer1_2_2_2_1_2_2_2_output_data_V_we0 : OUT STD_LOGIC;
    conv_layer1_2_2_2_1_2_2_2_output_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    conv_layer1_2_2_2_1_2_2_2_output_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_ce0 : OUT STD_LOGIC;
    conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_we0 : OUT STD_LOGIC;
    conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of Conv_forward is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (10 downto 0) := "00000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (10 downto 0) := "00000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (10 downto 0) := "00000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (10 downto 0) := "00000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (10 downto 0) := "00000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (10 downto 0) := "00001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (10 downto 0) := "00010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (10 downto 0) := "00100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (10 downto 0) := "01000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal conv1_W_data_V_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal conv1_W_data_V_ce0 : STD_LOGIC;
    signal conv1_W_data_V_q0 : STD_LOGIC_VECTOR (9 downto 0);
    signal filter_N_fu_183_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal filter_N_reg_474 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_18_cast_fu_197_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_18_cast_reg_479 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_207_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reg_487 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal v_2_cast6_fu_223_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal v_2_cast6_reg_492 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond2_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal v_2_cast_fu_227_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal v_2_cast_reg_497 : STD_LOGIC_VECTOR (3 downto 0);
    signal vert_end_cast_fu_237_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal vert_end_cast_reg_502 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_fu_247_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal j_reg_510 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal horiz_start_cast_fu_263_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal horiz_start_cast_reg_515 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond1_fu_241_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_layer1_output_d_reg_520 : STD_LOGIC_VECTOR (2 downto 0);
    signal horiz_end_cast_fu_296_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal horiz_end_cast_reg_525 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_16_fu_300_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_16_reg_530 : STD_LOGIC_VECTOR (30 downto 0);
    signal ch_fu_310_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ch_reg_538 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_53_cast_fu_328_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_53_cast_reg_543 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond3_fu_304_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_x_assign_2_cast_fu_349_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_x_assign_2_cast_reg_548 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_24_fu_417_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_24_reg_559 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal tmp_20_fu_358_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ho_1_fu_422_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ho_1_reg_569 : STD_LOGIC_VECTOR (31 downto 0);
    signal v_fu_428_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal conv_layer1_a_slice_1_reg_584 : STD_LOGIC_VECTOR (15 downto 0);
    signal conv1_W_data_V_load_reg_589 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal grp_Padding_fu_169_ap_start : STD_LOGIC;
    signal grp_Padding_fu_169_ap_done : STD_LOGIC;
    signal grp_Padding_fu_169_ap_idle : STD_LOGIC;
    signal grp_Padding_fu_169_ap_ready : STD_LOGIC;
    signal grp_Padding_fu_169_conv_layer1_2_2_2_1_2_2_2_input_data_V_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_Padding_fu_169_conv_layer1_2_2_2_1_2_2_2_input_data_V_ce0 : STD_LOGIC;
    signal grp_Padding_fu_169_padd_out_data_V_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_Padding_fu_169_padd_out_data_V_ce0 : STD_LOGIC;
    signal grp_Padding_fu_169_padd_out_data_V_we0 : STD_LOGIC;
    signal grp_Padding_fu_169_padd_out_data_V_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_z_assign_reg_104 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal p_x_assign_reg_116 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_y_assign_reg_128 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_z_assign_2_reg_139 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal tmp_19_fu_353_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_x_assign_1_reg_150 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_y_assign_1_reg_160 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal grp_Padding_fu_169_ap_start_reg : STD_LOGIC := '0';
    signal tmp_15_fu_285_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_22_fu_380_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_24_cast_fu_434_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_189_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal v_2_fu_213_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal v_2_cast7_fu_219_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal vert_end_fu_231_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal horiz_start_fu_253_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_40_fu_273_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp1_fu_267_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_s_fu_277_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal horiz_start_cast5_fu_259_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal horiz_end_fu_290_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_41_fu_316_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_fu_320_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_18_fu_332_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_54_cast_fu_340_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_x_assign_2_fu_344_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_42_fu_363_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp2_fu_369_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_21_fu_375_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_43_fu_385_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal p_y_assign_s_fu_389_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_23_fu_394_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp3_fu_402_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_25_fu_407_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_44_fu_413_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_462_p3 : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_fu_462_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (10 downto 0);

    component Padding IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        conv_layer1_2_2_2_1_2_2_2_input_data_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
        conv_layer1_2_2_2_1_2_2_2_input_data_V_ce0 : OUT STD_LOGIC;
        conv_layer1_2_2_2_1_2_2_2_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        padd_out_data_V_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
        padd_out_data_V_ce0 : OUT STD_LOGIC;
        padd_out_data_V_we0 : OUT STD_LOGIC;
        padd_out_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component Lenet_mac_muladd_cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (9 downto 0);
        din2 : IN STD_LOGIC_VECTOR (23 downto 0);
        dout : OUT STD_LOGIC_VECTOR (23 downto 0) );
    end component;


    component Conv_forward_convbkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (9 downto 0) );
    end component;



begin
    conv1_W_data_V_U : component Conv_forward_convbkb
    generic map (
        DataWidth => 10,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => conv1_W_data_V_address0,
        ce0 => conv1_W_data_V_ce0,
        q0 => conv1_W_data_V_q0);

    grp_Padding_fu_169 : component Padding
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_Padding_fu_169_ap_start,
        ap_done => grp_Padding_fu_169_ap_done,
        ap_idle => grp_Padding_fu_169_ap_idle,
        ap_ready => grp_Padding_fu_169_ap_ready,
        conv_layer1_2_2_2_1_2_2_2_input_data_V_address0 => grp_Padding_fu_169_conv_layer1_2_2_2_1_2_2_2_input_data_V_address0,
        conv_layer1_2_2_2_1_2_2_2_input_data_V_ce0 => grp_Padding_fu_169_conv_layer1_2_2_2_1_2_2_2_input_data_V_ce0,
        conv_layer1_2_2_2_1_2_2_2_input_data_V_q0 => conv_layer1_2_2_2_1_2_2_2_input_data_V_q0,
        padd_out_data_V_address0 => grp_Padding_fu_169_padd_out_data_V_address0,
        padd_out_data_V_ce0 => grp_Padding_fu_169_padd_out_data_V_ce0,
        padd_out_data_V_we0 => grp_Padding_fu_169_padd_out_data_V_we0,
        padd_out_data_V_d0 => grp_Padding_fu_169_padd_out_data_V_d0);

    Lenet_mac_muladd_cud_U10 : component Lenet_mac_muladd_cud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 10,
        din2_WIDTH => 24,
        dout_WIDTH => 24)
    port map (
        din0 => conv_layer1_a_slice_1_reg_584,
        din1 => conv1_W_data_V_load_reg_589,
        din2 => grp_fu_462_p2,
        dout => grp_fu_462_p3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_Padding_fu_169_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_Padding_fu_169_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_Padding_fu_169_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_Padding_fu_169_ap_ready = ap_const_logic_1)) then 
                    grp_Padding_fu_169_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    p_x_assign_1_reg_150_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond3_fu_304_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                p_x_assign_1_reg_150 <= v_2_cast6_reg_492;
            elsif (((tmp_20_fu_358_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                p_x_assign_1_reg_150 <= v_fu_428_p2;
            end if; 
        end if;
    end process;

    p_x_assign_reg_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_241_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                p_x_assign_reg_116 <= i_reg_487;
            elsif (((exitcond_fu_177_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_x_assign_reg_116 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    p_y_assign_1_reg_160_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) and (tmp_19_fu_353_p2 = ap_const_lv1_1))) then 
                p_y_assign_1_reg_160 <= horiz_start_cast_reg_515;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                p_y_assign_1_reg_160 <= ho_1_reg_569;
            end if; 
        end if;
    end process;

    p_y_assign_reg_128_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (exitcond3_fu_304_p2 = ap_const_lv1_1))) then 
                p_y_assign_reg_128 <= j_reg_510;
            elsif (((exitcond2_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_y_assign_reg_128 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    p_z_assign_2_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_19_fu_353_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                p_z_assign_2_reg_139 <= ch_reg_538;
            elsif (((exitcond1_fu_241_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                p_z_assign_2_reg_139 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    p_z_assign_reg_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond2_fu_201_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_z_assign_reg_104 <= filter_N_reg_474;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_Padding_fu_169_ap_done = ap_const_logic_1))) then 
                p_z_assign_reg_104 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                ch_reg_538 <= ch_fu_310_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                conv1_W_data_V_load_reg_589 <= conv1_W_data_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                conv_layer1_a_slice_1_reg_584 <= conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_241_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                conv_layer1_output_d_reg_520 <= tmp_15_fu_285_p1(3 - 1 downto 0);
                    horiz_end_cast_reg_525(2 downto 1) <= horiz_end_cast_fu_296_p1(2 downto 1);
                    horiz_start_cast_reg_515(1) <= horiz_start_cast_fu_263_p1(1);
                    tmp_16_reg_530(1) <= tmp_16_fu_300_p1(1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                filter_N_reg_474 <= filter_N_fu_183_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state8) and (tmp_20_fu_358_p2 = ap_const_lv1_1))) then
                ho_1_reg_569 <= ho_1_fu_422_p2;
                tmp_24_reg_559 <= tmp_24_fu_417_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                i_reg_487 <= i_fu_207_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                j_reg_510 <= j_fu_247_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond3_fu_304_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    p_x_assign_2_cast_reg_548(31 downto 1) <= p_x_assign_2_cast_fu_349_p1(31 downto 1);
                    tmp_53_cast_reg_543(4) <= tmp_53_cast_fu_328_p1(4);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_177_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    tmp_18_cast_reg_479(4 downto 3) <= tmp_18_cast_fu_197_p1(4 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond2_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    v_2_cast6_reg_492(1) <= v_2_cast6_fu_223_p1(1);
                    v_2_cast_reg_497(1) <= v_2_cast_fu_227_p1(1);
                    vert_end_cast_reg_502(2 downto 1) <= vert_end_cast_fu_237_p1(2 downto 1);
            end if;
        end if;
    end process;
    tmp_18_cast_reg_479(2 downto 0) <= "000";
    tmp_18_cast_reg_479(5) <= '0';
    v_2_cast6_reg_492(0) <= '0';
    v_2_cast6_reg_492(31 downto 2) <= "000000000000000000000000000000";
    v_2_cast_reg_497(0) <= '0';
    v_2_cast_reg_497(3 downto 2) <= "00";
    vert_end_cast_reg_502(0) <= '0';
    vert_end_cast_reg_502(31 downto 3) <= "00000000000000000000000000000";
    horiz_start_cast_reg_515(0) <= '0';
    horiz_start_cast_reg_515(31 downto 2) <= "000000000000000000000000000000";
    horiz_end_cast_reg_525(0) <= '0';
    horiz_end_cast_reg_525(31 downto 3) <= "00000000000000000000000000000";
    tmp_16_reg_530(0) <= '0';
    tmp_16_reg_530(30 downto 2) <= "00000000000000000000000000000";
    tmp_53_cast_reg_543(3 downto 0) <= "0000";
    tmp_53_cast_reg_543(31 downto 5) <= "000000000000000000000000000";
    p_x_assign_2_cast_reg_548(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state3, exitcond_fu_177_p2, ap_CS_fsm_state4, exitcond2_fu_201_p2, ap_CS_fsm_state5, exitcond1_fu_241_p2, ap_CS_fsm_state6, exitcond3_fu_304_p2, ap_CS_fsm_state8, tmp_20_fu_358_p2, grp_Padding_fu_169_ap_done, ap_CS_fsm_state2, ap_CS_fsm_state7, tmp_19_fu_353_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_Padding_fu_169_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((exitcond_fu_177_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((exitcond2_fu_201_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((exitcond1_fu_241_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (exitcond3_fu_304_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                if (((tmp_19_fu_353_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                if (((tmp_20_fu_358_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3, exitcond_fu_177_p2)
    begin
        if ((((exitcond_fu_177_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state3, exitcond_fu_177_p2)
    begin
        if (((exitcond_fu_177_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ch_fu_310_p2 <= std_logic_vector(unsigned(p_z_assign_2_reg_139) + unsigned(ap_const_lv2_1));
    conv1_W_data_V_address0 <= tmp_24_cast_fu_434_p1(4 - 1 downto 0);

    conv1_W_data_V_ce0_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            conv1_W_data_V_ce0 <= ap_const_logic_1;
        else 
            conv1_W_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_address0_assign_proc : process(ap_CS_fsm_state8, grp_Padding_fu_169_padd_out_data_V_address0, ap_CS_fsm_state2, tmp_22_fu_380_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_address0 <= tmp_22_fu_380_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_address0 <= grp_Padding_fu_169_padd_out_data_V_address0;
        else 
            conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_address0 <= "XXXXX";
        end if; 
    end process;


    conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_ce0_assign_proc : process(ap_CS_fsm_state8, grp_Padding_fu_169_padd_out_data_V_ce0, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_ce0 <= grp_Padding_fu_169_padd_out_data_V_ce0;
        else 
            conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_d0 <= grp_Padding_fu_169_padd_out_data_V_d0;

    conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_we0_assign_proc : process(grp_Padding_fu_169_padd_out_data_V_we0, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_we0 <= grp_Padding_fu_169_padd_out_data_V_we0;
        else 
            conv_layer1_2_2_2_1_2_2_2_a_slice_pad_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_layer1_2_2_2_1_2_2_2_input_data_V_address0 <= grp_Padding_fu_169_conv_layer1_2_2_2_1_2_2_2_input_data_V_address0;
    conv_layer1_2_2_2_1_2_2_2_input_data_V_ce0 <= grp_Padding_fu_169_conv_layer1_2_2_2_1_2_2_2_input_data_V_ce0;

    conv_layer1_2_2_2_1_2_2_2_output_data_V_address0_assign_proc : process(ap_CS_fsm_state5, conv_layer1_output_d_reg_520, ap_CS_fsm_state10, ap_CS_fsm_state11, tmp_15_fu_285_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            conv_layer1_2_2_2_1_2_2_2_output_data_V_address0 <= conv_layer1_output_d_reg_520;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            conv_layer1_2_2_2_1_2_2_2_output_data_V_address0 <= tmp_15_fu_285_p1(3 - 1 downto 0);
        else 
            conv_layer1_2_2_2_1_2_2_2_output_data_V_address0 <= "XXX";
        end if; 
    end process;


    conv_layer1_2_2_2_1_2_2_2_output_data_V_ce0_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state10, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            conv_layer1_2_2_2_1_2_2_2_output_data_V_ce0 <= ap_const_logic_1;
        else 
            conv_layer1_2_2_2_1_2_2_2_output_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_layer1_2_2_2_1_2_2_2_output_data_V_d0_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state11, grp_fu_462_p3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            conv_layer1_2_2_2_1_2_2_2_output_data_V_d0 <= grp_fu_462_p3(23 downto 8);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            conv_layer1_2_2_2_1_2_2_2_output_data_V_d0 <= ap_const_lv16_0;
        else 
            conv_layer1_2_2_2_1_2_2_2_output_data_V_d0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    conv_layer1_2_2_2_1_2_2_2_output_data_V_we0_assign_proc : process(ap_CS_fsm_state5, exitcond1_fu_241_p2, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state11) or ((exitcond1_fu_241_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            conv_layer1_2_2_2_1_2_2_2_output_data_V_we0 <= ap_const_logic_1;
        else 
            conv_layer1_2_2_2_1_2_2_2_output_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_241_p2 <= "1" when (p_y_assign_reg_128 = ap_const_lv2_2) else "0";
    exitcond2_fu_201_p2 <= "1" when (p_x_assign_reg_116 = ap_const_lv2_2) else "0";
    exitcond3_fu_304_p2 <= "1" when (p_z_assign_2_reg_139 = ap_const_lv2_2) else "0";
    exitcond_fu_177_p2 <= "1" when (p_z_assign_reg_104 = ap_const_lv2_2) else "0";
    filter_N_fu_183_p2 <= std_logic_vector(unsigned(p_z_assign_reg_104) + unsigned(ap_const_lv2_1));
    grp_Padding_fu_169_ap_start <= grp_Padding_fu_169_ap_start_reg;
    grp_fu_462_p2 <= (conv_layer1_2_2_2_1_2_2_2_output_data_V_q0 & ap_const_lv8_0);
    ho_1_fu_422_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(p_y_assign_1_reg_160));
    horiz_end_cast_fu_296_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(horiz_end_fu_290_p2),32));
    horiz_end_fu_290_p2 <= std_logic_vector(unsigned(ap_const_lv3_2) + unsigned(horiz_start_cast5_fu_259_p1));
    horiz_start_cast5_fu_259_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(horiz_start_fu_253_p2),3));
    horiz_start_cast_fu_263_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(horiz_start_fu_253_p2),32));
    horiz_start_fu_253_p2 <= std_logic_vector(shift_left(unsigned(p_y_assign_reg_128),to_integer(unsigned('0' & ap_const_lv2_1(2-1 downto 0)))));
    i_fu_207_p2 <= std_logic_vector(unsigned(p_x_assign_reg_116) + unsigned(ap_const_lv2_1));
    j_fu_247_p2 <= std_logic_vector(unsigned(p_y_assign_reg_128) + unsigned(ap_const_lv2_1));
        p_x_assign_2_cast_fu_349_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_x_assign_2_fu_344_p2),32));

    p_x_assign_2_fu_344_p2 <= std_logic_vector(unsigned(tmp_54_cast_fu_340_p1) - unsigned(v_2_cast_reg_497));
    p_y_assign_s_fu_389_p2 <= std_logic_vector(unsigned(tmp_43_fu_385_p1) - unsigned(tmp_16_reg_530));
    tmp1_fu_267_p2 <= std_logic_vector(unsigned(horiz_start_fu_253_p2) + unsigned(p_x_assign_reg_116));
    tmp2_fu_369_p2 <= std_logic_vector(unsigned(p_x_assign_1_reg_150) + unsigned(tmp_42_fu_363_p2));
    tmp3_fu_402_p2 <= std_logic_vector(signed(p_x_assign_2_cast_reg_548) + signed(tmp_23_fu_394_p3));
    tmp_15_fu_285_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_277_p3),64));
    tmp_16_fu_300_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(horiz_start_fu_253_p2),31));
    tmp_17_fu_320_p3 <= (tmp_41_fu_316_p1 & ap_const_lv4_0);
    tmp_18_cast_fu_197_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_189_p3),6));
    tmp_18_fu_332_p3 <= (tmp_41_fu_316_p1 & ap_const_lv2_0);
    tmp_19_fu_353_p2 <= "1" when (signed(p_x_assign_1_reg_150) < signed(vert_end_cast_reg_502)) else "0";
    tmp_20_fu_358_p2 <= "1" when (signed(p_y_assign_1_reg_160) < signed(horiz_end_cast_reg_525)) else "0";
    tmp_21_fu_375_p2 <= std_logic_vector(unsigned(tmp2_fu_369_p2) + unsigned(tmp_53_cast_reg_543));
        tmp_22_fu_380_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_21_fu_375_p2),64));

    tmp_23_fu_394_p3 <= (p_y_assign_s_fu_389_p2 & ap_const_lv1_0);
        tmp_24_cast_fu_434_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_24_reg_559),64));

    tmp_24_fu_417_p2 <= std_logic_vector(unsigned(tmp_44_fu_413_p1) + unsigned(tmp_18_cast_reg_479));
    tmp_25_fu_407_p2 <= std_logic_vector(unsigned(tmp3_fu_402_p2) + unsigned(p_x_assign_1_reg_150));
    tmp_40_fu_273_p1 <= p_z_assign_reg_104(1 - 1 downto 0);
    tmp_41_fu_316_p1 <= p_z_assign_2_reg_139(1 - 1 downto 0);
    tmp_42_fu_363_p2 <= std_logic_vector(shift_left(unsigned(p_y_assign_1_reg_160),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    tmp_43_fu_385_p1 <= p_y_assign_1_reg_160(31 - 1 downto 0);
    tmp_44_fu_413_p1 <= tmp_25_fu_407_p2(6 - 1 downto 0);
    tmp_53_cast_fu_328_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_17_fu_320_p3),32));
    tmp_54_cast_fu_340_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_18_fu_332_p3),4));
    tmp_fu_189_p3 <= (p_z_assign_reg_104 & ap_const_lv3_0);
    tmp_s_fu_277_p3 <= (tmp_40_fu_273_p1 & tmp1_fu_267_p2);
    v_2_cast6_fu_223_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(v_2_fu_213_p2),32));
    v_2_cast7_fu_219_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(v_2_fu_213_p2),3));
    v_2_cast_fu_227_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(v_2_fu_213_p2),4));
    v_2_fu_213_p2 <= std_logic_vector(shift_left(unsigned(p_x_assign_reg_116),to_integer(unsigned('0' & ap_const_lv2_1(2-1 downto 0)))));
    v_fu_428_p2 <= std_logic_vector(unsigned(p_x_assign_1_reg_150) + unsigned(ap_const_lv32_1));
    vert_end_cast_fu_237_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(vert_end_fu_231_p2),32));
    vert_end_fu_231_p2 <= std_logic_vector(unsigned(ap_const_lv3_2) + unsigned(v_2_cast7_fu_219_p1));
end behav;