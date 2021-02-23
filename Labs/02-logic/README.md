## Lab Assigments

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

![2-Bit Binary Comparator](https://www.edaplayground.com/x/8URr)






