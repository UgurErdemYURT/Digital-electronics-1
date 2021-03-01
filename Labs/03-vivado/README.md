## Lab Assigments

[My GitHub repository link.](https://github.com/UgurErdemYURT/Digital-electronics-1/tree/main/Labs)

  **1. Figure or table with connection of 16 slide switches and 16 LEDs on Nexys A7 board.
**


  **2. Two-bit wide 4-to-1 multiplexer.**

  - **Listing of VHDL architecture**

```VHDL
architecture Behavioral of mux_2bit_4to1 is

begin

    f_o <= a_i when (sel_i ="00") else
           b_i when (sel_i ="01") else
           c_i when (sel_i ="10") else
           d_i;
           

end architecture Behavioral;
```

  - **Listing of VHDL stimulus process from testbench file:**

```VHDL
p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;


        -- First test values
        s_d <= "11"; s_c <= "10"; s_b <= "01"; s_a <= "00";
        s_sel <= "00"; wait for 100 ns;
        s_sel <= "01"; wait for 100 ns;
        s_sel <= "10"; wait for 100 ns;
        s_sel <= "11"; wait for 100 ns;
        
        report "Stimulus process finished" severity note;
        wait;
        
    end process p_stimulus;     

```
  








