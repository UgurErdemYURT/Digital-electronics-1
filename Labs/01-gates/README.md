## Lab Assigments

**1. Vertification of De Morgan's laws of function f(c,b,a)**

![equations](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/01-gates/equations.png)

| **c** | **b** |**a** | **f(c,b,a)** | **f_NAND(c,b,a)** | **f_NOR(c,b,a)** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 | 1 | 1 |
| 0 | 0 | 1 | 1 | 1 | 1 |
| 0 | 1 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 | 0 | 0 |
| 1 | 0 | 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 | 1 | 1 |
| 1 | 1 | 0 | 0 | 0 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 |
    
   - **VHDL code original format of f(c,b,a)** 

##### VHDL Architecture:
```VHDL
    f_o <= ((not b_i) and a_i) or ((not c_i) and (not b_i));
```   
https://www.edaplayground.com/x/kvka
   
![Screenshot1](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/01-gates/original.PNG)
 
   - **VHDL code with NAND gates**

##### VHDL Architecture:
```VHDL
    f_o <= ((not b_i) nand a_i) nand ((not c_i) nand (not b_i));
```

https://www.edaplayground.com/x/w_TM

![Screenshot2](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/01-gates/NAND.PNG)

   - **VHDL code with NOR gates**

##### VHDL Architecture:

```VHDL
    f_o <= (b_i nor (not a_i)) or (c_i nor b_i);
```

https://www.edaplayground.com/x/8xaw
   
![Screenshot3](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/01-gates/NOR.PNG)


**2. Verification of Distributive Law**

![DistributiveLlaws](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/01-gates/distributive1.png)

   - **VHDL code for Distributive Law** 

##### VHDL Architecture:
```VHDL
    f1_left  <= (x_i and y_i) or (x_i and z_i);
	f1_right <= x_i and (y_i or z_i);
    
    f2_left  <= (x_i or y_i) and (x_i or z_i);
	f2_right <= x_i or (y_i and z_i);
```

https://www.edaplayground.com/x/fRRw
   
![Screenshot4](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/01-gates/distri.PNG)



