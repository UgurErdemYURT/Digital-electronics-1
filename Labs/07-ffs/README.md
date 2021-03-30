## Lab Assigments

[My GitHub repository link.](https://github.com/UgurErdemYURT/Digital-electronics-1/tree/main/Labs)

  - **Characteristic equations and completed tables for D flip-flop:**
  
   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](Pictures/eq_uparrow.png) | 0 | 0 | 1 | d |
   | ![rising](Pictures/eq_uparrow.png) | 0 | 1 | 0 | d |
   | ![rising](Pictures/eq_uparrow.png) | 1 | 0 | 1 | d |
   | ![rising](Pictures/eq_uparrow.png) | 1 | 1 | 1 | Forbidden |
  
  - **Characteristic equations and completed tables for JK flip-flop:**
	
   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | ![rising](Pictures/eq_uparrow.png) | 0 | 0 | 0 | 0 | No change |
   | ![rising](Pictures/eq_uparrow.png) | 0 | 0 | 1 | 1 | No change |
   | ![rising](Pictures/eq_uparrow.png) | 0 | 1 | 0 | 0 | Reset |
   | ![rising](Pictures/eq_uparrow.png) | 0 | 1 | 1 | 0 | Reset |
   | ![rising](Pictures/eq_uparrow.png) | 1 | 0 | 0 | 1 | Set |
   | ![rising](Pictures/eq_uparrow.png) | 1 | 0 | 1 | 1 | Set |
   | ![rising](Pictures/eq_uparrow.png) | 1 | 1 | 0 | 1 | Toggles |
   | ![rising](Pictures/eq_uparrow.png) | 1 | 1 | 1 | 0 | Toggles |
	          
	
  - **Characteristic equations and completed tables for T flip-flop:**

   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](Pictures/eq_uparrow.png) | 0 | 0 | 0 | No change |
   | ![rising](Pictures/eq_uparrow.png) | 0 | 1 | 1 | No change |
   | ![rising](Pictures/eq_uparrow.png) | 1 | 0 | 1 | Toggles |
   | ![rising](Pictures/eq_uparrow.png) | 1 | 1 | 0 | Toggles |

  **2. D latch:**

  - **VHDL code listing of the process p_d_latch with syntax highlighting:**

```VHDL

	p_d_latch :process (en, d, arst)
    begin
        if(arst ='1') then
            q     <= '0';
            q_bar <= '1';
        
        else if(en = '1') then
            q     <= d;
            q_bar <= not d;
        end if;
        end if;
    end process p_d_latch;

```


  - **Listing of VHDL reset and stimulus processes from the testbench tb_d_latch.vhd file with syntax highlighting and asserts:**

```VHDL

	uut_d_latch : entity work.d_latch
			port map(
				en           => s_en,
				d            => s_d,
				arst         => s_arst,
				q            => s_q,
				q_bar        => s_qbar
			);
			
	 p_stimulus : process
		begin
			-- Report a note at the beginning of stimulus process
			report "Stimulus process started" severity note;
			
			s_en   <= '0';
			s_d    <= '0';
			s_arst <= '0';
			wait for 26 ns;
			
			s_d    <= '1';
			wait for 14 ns;
			
			s_d    <= '0';
			wait for 24 ns;
			
			s_d    <= '1';
			wait for 22 ns;
			
			s_d    <= '0';
			wait for 36 ns;
			
	 --------------------------------------------------Test enable        
			
			s_en   <= '1';
			wait for 14 ns;
			
			s_d    <= '1';
			wait for 14 ns;
			
			s_d    <= '0';
			wait for 24 ns;
			
			s_d    <= '1';
			wait for 22 ns;
			
			s_d    <= '0';
			wait for 36 ns;
			
	--------------------------------------------------Test enable        
			
			s_en   <= '1';
			wait for 14 ns;
			
			s_d    <= '1';
			wait for 14 ns;
			
			s_d    <= '0';
			wait for 24 ns;
			
			s_d    <= '1';
			wait for 22 ns;
			
			s_d    <= '0';
			wait for 36 ns;
			
			s_en   <= '0';
			wait for 56 ns;
	   
	--------------------------------------------------Test reset       
			
			s_en   <= '1';
			wait for 14 ns;
			
			s_d    <= '1';
			wait for 14 ns;
			
			s_arst    <= '1'; --reset activated
			wait for 24 ns;
			
			s_d    <= '1';
			wait for 22 ns;
			
			s_d    <= '0';
			wait for 36 ns;
			
			s_arst    <= '0';
			s_en   <= '0';
			wait for 56 ns;
			
			s_d    <= '1';
			wait for 14 ns;
			
			s_d    <= '0';
			wait for 24 ns;
			
			s_d    <= '1';
			wait for 22 ns;
			
			s_d    <= '0';
			wait for 36 ns;
			
	   
		end process p_stimulus;

```

  - **Screenshot with simulated time waveforms; always display all inputs and outputs. The full functionality of the entity must be verified.:**

	![ss1](https://github.com/UgurErdemYURT/Digital-electronics-1/blob/main/Labs/07-ffs/Pictures/ss1.PNG)
	
  **3. Flip-flops:**

  - **VHDL code listing of the processes p_d_ff_arst with syntax highlighting:**

```VHDL

    p_d_ff_arst : process (clk, arst)
    begin
        if(arst ='1') then
            q     <= '0';
            q_bar <= '1';
        
        elsif rising_edge(clk) then
            q     <= d;
            q_bar <= not d;
        end if;
      
    end process p_d_ff_arst;
```

  - **VHDL code listing of the processes p_d_ff_rst with syntax highlighting:**

```VHDL

    p_d_ff_rst : process (clk)
    begin
        if(rst ='1') then
            q     <= '0';
            q_bar <= '1';
        
        elsif rising_edge(clk) then
            q     <= d;
            q_bar <= not d;
        end if;
      
    end process p_d_ff_arst;
```

  - **VHDL code listing of the processes p_jk_ff_rst with syntax highlighting:**

```VHDL  
	    p_jk_ff_rst : process (clk)
    begin
        if rising_edge(clk) then
            q     <= '0';
            q_bar <= '1';
        
        else
            if( j= '0' and k= '0') then
                s_q     <= s_q;
                s_q_bar <= s_q_bar;  
        else
            if( j= '0' and k= '1') then
                s_q     <= '1';
                s_q_bar <= '1'; 
        else
            if( j= '1' and k= '0') then
                s_q     <= '1';
                s_q_bar <= '1';
        else
                s_q     <= not s_q;
                s_q_bar <= not s_q_bar; 
        end if; 
        end if;
        end if;         
        end if;

    
    q     <= s_q;
    q_bar <= s_q_bar;
      
    end process p_jk_ff_rst;
``` 
  - **VHDL code listing of the processes p_t_ff_rst with syntax highlighting:**

```VHDL
	process (clk) 
	   begin
		  if rising_edge(clk) then                 
			if rst='1' then   
				q <= '0';
				q_bar <= '0';
			elsif t='0' then
				   q <= q;
				   q_bar <= q_bar;
			elsif t='1' then
				   q<= not q;
				   q_bar <= not q_bar;
		end if;
		end if;
		end if;
	   end process;
```
  



