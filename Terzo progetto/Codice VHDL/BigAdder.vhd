----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Michienzi, Morabito
-- Technician: Nisticò 
-- 
-- Create Date: 15.12.2025 16:13:28
-- Design Name: 
-- Module Name: BigAdder - Behavioral
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

entity BigAdder is
    generic (n : integer := 8);
    Port ( 
           A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           C : in STD_LOGIC_VECTOR (7 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           E : in STD_LOGIC_VECTOR (7 downto 0);
           F : in STD_LOGIC_VECTOR (7 downto 0);
           O : out STD_LOGIC_VECTOR (10 downto 0);
           clk : in STD_LOGIC
     );
end BigAdder;

architecture Behavioral of BigAdder is
    component AdderRegister 
        generic (n : integer := 8);
        Port (
            A : in STD_LOGIC_VECTOR(n - 1 downto 0);
            B : in STD_LOGIC_VECTOR(n - 1 downto 0);
            clk : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(n downto 0)
        );
    end component;
    component Pipeline 
        Port (
            A : in STD_LOGIC_VECTOR(7 downto 0);
            B : in STD_LOGIC_VECTOR(7 downto 0);
            C : in STD_LOGIC_VECTOR(7 downto 0);
            O : out STD_LOGIC_VECTOR(9 downto 0);
            clk : in STD_LOGIC
        );
    end component;
    signal S1, S2 : STD_LOGIC_VECTOR(9 downto 0);
begin    
    P1 : Pipeline port map (A, B, C, S1, clk);
    P2 : Pipeline port map (D, E, F, S2, clk);
    
    Add : AdderRegister generic map (10) port map (S1, S2, clk, O);
end Behavioral;
    