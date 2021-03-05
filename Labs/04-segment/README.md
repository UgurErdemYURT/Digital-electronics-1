## Lab Assigments

[My GitHub repository link.](https://github.com/UgurErdemYURT/Digital-electronics-1/tree/main/Labs)

  **1. Figure or table with connection of 16 slide switches and 16 LEDs on Nexys A7 board.**

![figure_of_connection](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/figure_1.PNG)


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

  - **Simulation Screenshot**
 
![simulation_screenshot](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/simulation_screenshot.PNG)

  **3. A Vivado tutorials:**
  
  - **Project Creation**
  
![creating_project](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/creating_project.PNG)

![creating_project_1](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/creating_project_1.PNG)

![creating_project_2](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/creating_project_2.PNG)

  - **Adding Source File**

![adding_source_file](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_source_file.PNG)

![adding_source_file_1](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_source_file_1.PNG)

![adding_source_file_2](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_source_file_2.PNG)

![adding_source_file_3](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_source_file_3.PNG)

![adding_source_file_4](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_source_file_4.PNG)

![adding_source_file_5](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_source_file_5.PNG)

  - **Adding Testbench File**

![adding_testbench](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_testbench.PNG)

![adding_testbench_1](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_testbench_1.PNG)

![adding_testbench_2](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_testbench_2.PNG)

![adding_testbench_3](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_testbench_3.PNG)

![adding_testbench_4](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_testbench_4.PNG)

  - **Running Simulation**

![running_simulation](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/running_simulation.PNG)

  - **Adding XDC Constraints File**

![adding_constraints_1](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_constraints_1.PNG)

![adding_constraints_2](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_constraints_2.PNG)

![adding_constraints_3](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_constraints_3.PNG)

![adding_constraints_4](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/03-vivado/pictures/adding_constraints_4.PNG)