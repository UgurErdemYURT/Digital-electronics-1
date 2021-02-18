## Lab Assigments

**1. Vertification of De Morgan's laws of function f(c,b,a)**

    
   - **VHDL code original format of f(c,b,a)** 

https://www.edaplayground.com/x/kvka
   
![Screenshot1](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/01-gates/original.PNG)
 
   - **VHDL code with NAND gates**
   
https://www.edaplayground.com/x/UiQ_

![Screenshot2](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/01-gates/NAND.PNG)

   - **VHDL code with NOR gates**

https://www.edaplayground.com/x/8xaw
   
![Screenshot3](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/01-gates/NOR.PNG)


**2. Verification of Distributive Law**

![DistributiveLlaws](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/01-gates/distributive1.png)

   - **VHDL code (design.vhd) for Distributive Law** 
library ieee;               -- Standard library
use ieee.std_logic_1164.all;-- Package for data types and logic operations

------------------------------------------------------------------------
-- Entity declaration for basic gates
------------------------------------------------------------------------
entity gates is
    port(
        x_i      : in  std_logic;         -- Data input
        y_i      : in  std_logic;         -- Data input
        z_i      : in  std_logic;
		f1_left	 : out std_logic;
        f1_right : out std_logic;
        f2_left	 : out std_logic;
        f2_right : out std_logic

    );
end entity gates;

------------------------------------------------------------------------
-- Architecture body for basic gates
------------------------------------------------------------------------
architecture dataflow of gates is
begin
    f1_left  <= (x_i and y_i) or (x_i and z_i);
	f1_right <= x_i and (y_i or z_i);
    
    f2_left  <= (x_i or y_i) and (x_i or z_i);
	f2_right <= x_i or (y_i and z_i);
end architecture dataflow;


https://www.edaplayground.com/x/fRRw
   
![Screenshot4](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/01-gates/distri.PNG)



