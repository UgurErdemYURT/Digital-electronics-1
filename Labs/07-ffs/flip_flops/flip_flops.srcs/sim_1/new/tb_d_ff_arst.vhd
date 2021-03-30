----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2021 08:34:31 PM
-- Design Name: 
-- Module Name: tb_d_ff_arst - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_d_ff_arst is
--  Port ( );
end tb_d_ff_arst;

architecture Behavioral of tb_d_ff_arst is

    constant c_CLK_100MHZ_PERIOD : time    := 10 ns;
    
    signal s_clk          : std_logic;
    signal s_d          : std_logic;
    signal s_arst       : std_logic;
    signal s_q          : std_logic;
    signal s_qbar       : std_logic;

begin

 uut_d_latch : entity work.d_ff_arst
        port map(
            clk          => s_clk;
            d            => s_d,
            arst         => s_arst,
            q            => s_q,
            q_bar        => s_qbar
        );


p_clk_gen : process
    begin
        while now < 750 ns loop         -- 75 periods of 100MHz clock
            s_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;                           -- Process is suspended forever
    end process p_clk_gen;
    
p_reset_gen: process
begin

    s_arst <= '0';
    wait for 326 ns; 

    s_arst <= '1';
    wait for 144 ns; 

    s_arst <= '0';

    wait;
 end process p_reset_gen;
        
p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;
        
        s_d    <= '0';
        s_arst <= '0';
        wait for 50 ns;
        
        s_d    <= '1';
        wait for 14 ns;
        
        s_d    <= '0';
        wait for 24 ns;
        
        s_d    <= '1';
        wait for 22 ns;
        
        s_d    <= '0';
        wait for 36 ns;
        
 --------------------------------------------------Test enable        
        
        
        s_d    <= '1';
        wait for 14 ns;
        
        s_d    <= '0';
        wait for 24 ns;
        
        s_d    <= '1';
        wait for 22 ns;
        
        s_d    <= '0';
        wait for 36 ns;
        
--------------------------------------------------Test enable        

        
        s_d    <= '1';
        wait for 14 ns;
        
        s_d    <= '0';
        wait for 24 ns;
        
        s_d    <= '1';
        wait for 22 ns;
        
        s_d    <= '0';

   
--------------------------------------------------Test reset       
        
        
        s_d    <= '1';
        wait for 14 ns;
        
        s_arst    <= '1'; --reset activated
        wait for 24 ns;
        
        s_d    <= '1';
        wait for 22 ns;
        
        s_d    <= '0';
        wait for 36 ns;
        
        s_arst    <= '0';
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


end Behavioral;


