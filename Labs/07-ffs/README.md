## Lab Assigments

[My GitHub repository link.](https://github.com/UgurErdemYURT/Digital-electronics-1/tree/main/Labs)

  **1. Timing diagram figure for displaying value 3.142:**

![figure1](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/06-display_driver/Pictures/figure1.PNG)


  **2. Display driver:**

  - **Listing of VHDL code of the process p_mux with syntax highlighting:**

```VHDL

p_mux : process(s_cnt, data0_i, data1_i, data2_i, data3_i, dp_i)
    begin
        case s_cnt is
            when "11" =>
                s_hex <= data3_i;
                dp_o  <= dp_i(3);
                dig_o <= "0111";

            when "10" =>
                s_hex <= data2_i;
                dp_o  <= dp_i(2);
                dig_o <= "1011";

            when "01" =>
                s_hex <= data1_i;
                dp_o  <= dp_i(1);
                dig_o <= "1101";

            when others =>
                s_hex <= data0_i;
                dp_o  <= dp_i(0);
                dig_o <= "1110";
        end case;
    end process p_mux;

end architecture Behavioral;

```


  - **Listing of VHDL testbench file tb_driver_7seg_4digits with syntax highlighting and asserts:**

```VHDL

library ieee;
use ieee.std_logic_1164.all;

entity tb_driver_7seg_4digits is
end entity tb_driver_7seg_4digits;

architecture testbench of tb_driver_7seg_4digits is

    -- Local constants
    constant c_CLK_100MHZ_PERIOD : time    := 10 ns;


    signal s_clk_100MHz : std_logic;
    signal s_reset      : std_logic;
 
    signal s_data0      : std_logic_vector(4 - 1 downto 0);
    signal s_data1      : std_logic_vector(4 - 1 downto 0);
    signal s_data2      : std_logic_vector(4 - 1 downto 0);
    signal s_data3      : std_logic_vector(4 - 1 downto 0);
    signal s_dpi        : std_logic_vector(4 - 1 downto 0);
    signal s_dpo        : std_logic;
    signal s_seg        : std_logic_vector(7 - 1 downto 0);
    signal s_dig        : std_logic_vector(4 - 1 downto 0);
    
begin

    uut_cnt : entity work.driver_7seg_4digits
        port map(
            clk       => s_clk_100MHz,
            reset     => s_reset,
            data0_i   => s_data0,
            data1_i   => s_data1,
            data2_i   => s_data2,
            data3_i   => s_data3,
            dp_i      => s_dpi,
            dp_o      => s_dpo,
            seg_o     => s_seg,
            dig_O     => s_dig  
        
        );

    p_clk_gen : process
    begin
        while now < 40 ms loop         
            s_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;
    end process p_clk_gen;

    p_reset_gen : process
    begin
        s_reset <= '0';
        wait for 17 ns;
        
        -- Reset activated
        s_reset <= '1';
        wait for 96 ns;

        s_reset <= '0';
        wait;
    end process p_reset_gen;

    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        
        wait for 100 ns;
        
        s_data3  <= "0011"; -- 3
        s_dpi    <= "0111"; -- .
        s_data2  <= "0001"; -- 1
        s_data1  <= "0100"; -- 4
        s_data0  <= "0010"; -- 2
        
        wait for 1 ms;
        
        assert ((s_dig = "0111") and (s_seg = "0000110") and (s_dpo = '0'))
        report "Test failed for input: 3" severity error;
        wait for 1 ms;
        
        assert ((s_dig = "1011") and (s_seg = "1001111") and (s_dpo = '1'))
        report "Test failed for input: 1" severity error;
        wait for 1 ms;
        
        assert ((s_dig = "1101") and (s_seg = "1001100") and (s_dpo = '1'))
        report "Test failed for input: 4" severity error;
        wait for 1 ms;
        
        assert ((s_dig = "1110") and (s_seg = "0010010") and (s_dpo = '1'))
        report "Test failed for input: 2" severity error;
        wait for 1 ms;     
             
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
   
end architecture testbench; 

```

	
  **3. Eight-digit driver:**
  
  
  - **Image of the driver schematic:**

![figure2](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/06-display_driver/Pictures/figure2.PNG)


