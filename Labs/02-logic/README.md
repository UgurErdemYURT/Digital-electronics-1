## Lab Assigments

[My GitHub repository link.](https://github.com/UgurErdemYURT/Digital-electronics-1/tree/main/Labs)

  **1. Completed 2-bit comparator truth table**

| **Dec. equivalent** | **B[1:0]** | **A[1:0]** | **B is greater than A** | **B equals A** | **B is less than A** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 0 | 0 0 | 0 | 1 | 0 |
| 1 | 0 0 | 0 1 | 0 | 0 | 1 |
| 2 | 0 0 | 1 0 | 0 | 0 | 1 |
| 3 | 0 0 | 1 1 | 0 | 0 | 1 |
| 4 | 0 1 | 0 0 | 1 | 0 | 0 |
| 5 | 0 1 | 0 1 | 0 | 1 | 0 |
| 6 | 0 1 | 1 0 | 0 | 0 | 1 |
| 7 | 0 1 | 1 1 | 0 | 0 | 1 |
| 8 | 1 0 | 0 0 | 1 | 0 | 0 |
| 9 | 1 0 | 0 1 | 1 | 0 | 0 |
| 10 | 1 0 | 1 0 | 0 | 1 | 0 |
| 11 | 1 0 | 1 1 | 0 | 0 | 1 |
| 12 | 1 1 | 0 0 | 1 | 0 | 0 |
| 13 | 1 1 | 0 1 | 1 | 0 | 0 |
| 14 | 1 1 | 1 0 | 1 | 0 | 0 |
| 15 | 1 1 | 1 1 | 0 | 1 | 0 |

  **2. A 2-bit comparator**

  - **Karnaugh maps for all three functions:**

**The K-map for the "equals" function is as follows:**

![kmap-equals](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/02-logic/Pictures/kmap_equals.png)

**The K-map for the "greaters" function is as follows:**

![kmap-greaters](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/02-logic/Pictures/kmap_greaters.png)

**The K-map for the "less" function is as follows:**

![kmap-less](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/02-logic/Pictures/kmap_less.png)

 - **Equations of simplified SoP form of the "greater than" function and simplified PoS form of the "less than" function:**

**Simplified SoP form of the "greater than" function**

Greater_SoP= (B1./A1)+(B0./A1./A0)+(B1.B0./A0)

**Simplified PoS form of the "less than" function**

Less_PoS = (A1+A0).(/B0+A1).(/B1+/B0).(/B1+A1).(/B1+A0)

[2-Bit Binary Comparator EDA Playground](https://www.edaplayground.com/x/8URr)


   **3. A 4-bit binary comparator.**

  - **VHDL architecture from design file:**

        architecture Behavioral of comparator_4bit is
        begin
            B_less_A_o      <= '1' when (b_i < a_i) else '0';
            B_greater_A_o   <= '1' when (b_i > a_i) else '0';
            B_equals_A_o    <= '1' when (b_i = a_i) else '0';

        end architecture Behavioral;

  - **VHDL stimulus process from testbench file:**
  
  ```
p_stimulus : process
begin
    -- Report a note at the beginning of stimulus process
    report "Stimulus process started" severity note;


    -- First test values
    s_b <= "0000"; s_a <= "0000"; wait for 100 ns;
    -- Expected output
    assert ((s_B_greater_A = '0') and (s_B_equals_A = '1') and (s_B_less_A = '0'))
    -- If false, then report an error
    report "Test failed for input combination: 0000, 0000" severity error;


    s_b <= "0001"; s_a <= "0000"; wait for 100 ns;
    -- Expected output
    assert ((s_B_greater_A = '1') and (s_B_equals_A = '0') and (s_B_less_A = '0'))
    -- If false, then report an error
    report "Test failed for input combination: 0001, 0000" severity error;

     s_b <= "1001"; s_a <= "1100"; wait for 100 ns;
    -- Expected output
    assert ((s_B_greater_A = '0') and (s_B_equals_A = '0') and (s_B_less_A = '1'))
    -- If false, then report an error
    report "Test failed for input combination: 1001, 1100" severity error;

     s_b <= "1101"; s_a <= "1101"; wait for 100 ns;
    -- Expected output
    assert ((s_B_greater_A = '1') and (s_B_equals_A = '0') and (s_B_less_A = '0'))
    -- If false, then report an error
    report "Test failed for input combination: 1101, 1101" severity error;

     s_b <= "0101"; s_a <= "1010"; wait for 100 ns;
    -- Expected output
    assert ((s_B_greater_A = '0') and (s_B_equals_A = '0') and (s_B_less_A = '1'))
    -- If false, then report an error
    report "Test failed for input combination: 0101, 1010" severity error;

     s_b <= "1111"; s_a <= "1110"; wait for 100 ns;
    -- Expected output
    assert ((s_B_greater_A = '1') and (s_B_equals_A = '0') and (s_B_less_A = '0'))
    -- If false, then report an error
    report "Test failed for input combination: 1111, 1110" severity error;

     s_b <= "1011"; s_a <= "1101"; wait for 100 ns;
    -- Expected output
    assert ((s_B_greater_A = '0') and (s_B_equals_A = '0') and (s_B_less_A = '1'))
    -- If false, then report an error
    report "Test failed for input combination: 1011, 1101" severity error;

     s_b <= "0101"; s_a <= "0101"; wait for 100 ns;
    -- Expected output
    assert ((s_B_greater_A = '0') and (s_B_equals_A = '1') and (s_B_less_A = '0'))
    -- If false, then report an error
    report "Test failed for input combination: 0101, 0101" severity error;

     s_b <= "1011"; s_a <= "0010"; wait for 100 ns;
    -- Expected output
    assert ((s_B_greater_A = '1') and (s_B_equals_A = '0') and (s_B_less_A = '0'))
    -- If false, then report an error
    report "Test failed for input combination: 1011, 0010" severity error;

     s_b <= "1001"; s_a <= "1011"; wait for 100 ns;
    -- Expected output
    assert ((s_B_greater_A = '0') and (s_B_equals_A = '0') and (s_B_less_A = '1'))
    -- If false, then report an error
    report "Test failed for input combination: 1001, 1011" severity error;


    -- Report a note at the end of stimulus process
    report "Stimulus process finished" severity note;
    wait;
end process p_stimulus;
		
```
**Simulator console output with one reported error:**

![4-bit-console-1](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/02-logic/Pictures/4-bit-console-1.PNG)

**Simulation:**

![4-bit-console](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/02-logic/Pictures/4-bit-console.PNG)

[4-bit Binary Comparator with one reported error EDA Playground](https://www.edaplayground.com/x/gi2f)







