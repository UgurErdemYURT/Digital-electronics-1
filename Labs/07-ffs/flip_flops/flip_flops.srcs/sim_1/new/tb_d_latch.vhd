----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2021 07:42:46 PM
-- Design Name: 
-- Module Name: tb_d_latch - Behavioral
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


entity tb_d_latch is
--  Port ( );
end tb_d_latch;

architecture Behavioral of tb_d_latch is

    signal s_en         : std_logic;
    signal s_d          : std_logic;
    signal s_arst       : std_logic;
    signal s_q          : std_logic;
    signal s_qbar       : std_logic;

begin

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


end Behavioral;
