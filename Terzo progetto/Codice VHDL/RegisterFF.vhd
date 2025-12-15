----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Michienzi, Morabito
-- Technician: Nisticò 
--
-- Create Date: 15.12.2025 16:17:21
-- Design Name: 
-- Module Name: RegisterFF - Behavioral
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

entity RegisterFF is
    generic(n : integer := 8);
    Port ( D : in STD_LOGIC_VECTOR (n - 1 downto 0);
           clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (n - 1 downto 0));
end RegisterFF;

architecture Behavioral of RegisterFF is

begin
    process (clk) begin
        if rising_edge(clk) then
            Q <= D;
        end if;
    end process;
end Behavioral;
