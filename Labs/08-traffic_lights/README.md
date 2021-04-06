## Lab Assigments

[My GitHub repository link.](https://github.com/UgurErdemYURT/Digital-electronics-1/tree/main/Labs)

  - **Completed state table:**
  
	| **Input P** | `0` | `0` | `1` | `1` | `0` | `1` | `0` | `1` | `1` | `1` | `1` | `0` | `0` | `1` | `1` | `1` |
	| :-- | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
	| **Clock** | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) | ![rising](Images/eq_uparrow.png) |
	| **State** | A | A | B | C | C | D | A | B | C | D | B | B | B | C | D | B |
	| **Output R** | `0` | `0` | `0` | `0` | `0` | `1` | `0` | `0` | `0` | `1` | `0` | `0` | `0` | `0` | `1` | `0` |
   
  
  - **Figure with connection of RGB LEDs on Nexys A7 board and completed table with color settings:**
	
	![capture_1](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/08-traffic_lights/Images/capture_1.PNG)

	![capture_2](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/08-traffic_lights/Images/capture_2.PNG)


	| **RGB LED** | **Artix-7 pin names** | **Red** | **Yellow** | **Green** |
	| :-: | :-: | :-: | :-: | :-: |
	| LD16 | N15, M16, R12 | `1,0,0` | `1,1,0` | `0,1,0` |
	| LD17 | N16, R11, G14 | `1,0,0` | `1,1,0` | `0,1,0` |

  **2. Traffic light controller:**

  - **State diagram:**

	![capture_3](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/08-traffic_lights/Images/capture_3.jpg)

	
  **3. Smart controller:**

  - **State table:**

	| **Input** | **No Pedest** | **West_i** | **West_i** | **No Pedest** | **South_i** | **South_i** | **South_i AND West_i** | **South_i AND West_i** | **South_i AND West_i** | 
	| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
	| **Delay** | 4 seconds | 1 second | 4 seconds | 4 second | 4 seconds | 1 second | 4 seconds | 1 second | 4 seconds | 1 second |
	| **Date** | South_go | South_wait | West_go | West_go | West_go | West_wait | South_go | South_wait | West_go | West_wait |
	| **Output** | S: Green; W: Red | S: Yellow; W: Red | S: Red; W: Green | S: Red; W: Green | S: Red; W: Green | S: Red; W: Yellow | S: Green; W: Red | S: Yellow; W: Red | S: Red; W: Green | S: Red; W: Yellow |
 
  - **State diagram:**

 	![capture_4](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/08-traffic_lights/Images/capture_4.jpg)






