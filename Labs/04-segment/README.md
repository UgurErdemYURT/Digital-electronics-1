## Lab Assigments

[My GitHub repository link.](https://github.com/UgurErdemYURT/Digital-electronics-1/tree/main/Labs)

  **1. Figure or table with connection of 16 slide switches and 16 LEDs on Nexys A7 board.**

![7-segment](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/04-segment/Pictures/7-segment.PNG)

  - **Decoder truth table for common anode 7-segment display:**

| **Hex** | **Inputs** | **A** | **B** | **C** | **D** | **E** | **F** | **G** |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0000 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
| 1 | 0001 | 1 | 0 | 0 | 1 | 1 | 1 | 1 |
| 2 | 0010 | 0 | 0 | 1 | 0 | 0 | 1 | 0 |
| 3 | 0011 | 0 | 0 | 0 | 0 | 1 | 1 | 0 |
| 4 | 0100 | 1 | 0 | 0 | 1 | 1 | 0 | 0 |
| 5 | 0101 | 0 | 1 | 0 | 0 | 1 | 0 | 0 |
| 6 | 0110 | 0 | 1 | 0 | 0 | 0 | 0 | 0 |
| 7 | 0111 | 0 | 0 | 0 | 1 | 1 | 1 | 1 |
| 8 | 1000 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 9 | 1001 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| A | 1010 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| b | 1011 | 1 | 1 | 0 | 0 | 0 | 0 | 0 |
| C | 1100 | 0 | 1 | 1 | 0 | 0 | 0 | 1 |
| d | 1101 | 1 | 0 | 0 | 0 | 0 | 1 | 0 |
| E | 1110 | 0 | 1 | 1 | 0 | 0 | 0 | 0 |
| F | 1111 | 0 | 1 | 1 | 1 | 0 | 0 | 0 |


  **2. Seven-segment display decoder:**

  - **Listing of VHDL architecture**


  - **Listing of VHDL stimulus process from testbench file:**
   

  - **Screenshot with simulated time waveforms:**
 
![simulation_screenshot]()

  - **Listing of VHDL code from source file top.vhd with 7-segment module instantiation:**
  
  **3. LED(7:4) indicators:**
  
  - **Truth table:**

| **Hex** | **Inputs** | **LED4** | **LED5** | **LED6** | **LED7** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0000 |  |  |  |  |
| 1 | 0001 |  |  |  |  |
| 2 | 0010 |  |  |  |  |
| 3 | 0011 |  |  |  |  |
| 4 | 0100 |  |  |  |  |
| 5 | 0101 |  |  |  |  |
| 6 | 0110 |  |  |  |  |
| 7 | 0111 |  |  |  |  |
| 8 | 1000 |  |  |  |  |
| 9 | 1001 |  |  |  |  |
| A | 1010 |  |  |  |  |
| b | 1011 |  |  |  |  |
| C | 1100 |  |  |  |  |
| d | 1101 |  |  |  |  |
| E | 1110 |  |  |  |  |
| F | 1111 |  |  |  |  |
  
  - **Listing of VHDL code for LEDs(7:4):**


  - **Screenshot with simulated time waveforms:**

![simulation_screenshot_1]()
