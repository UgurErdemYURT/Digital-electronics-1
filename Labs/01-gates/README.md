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

   - **VHDL code for Distributive Law** 

####VHDL Architecture

    f1_left  <= (x_i and y_i) or (x_i and z_i);
	f1_right <= x_i and (y_i or z_i);
    
    f2_left  <= (x_i or y_i) and (x_i or z_i);
	f2_right <= x_i or (y_i and z_i);


https://www.edaplayground.com/x/fRRw
   
![Screenshot4](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/01-gates/distri.PNG)



