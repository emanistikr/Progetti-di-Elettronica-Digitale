----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Michienzi, Morabito
-- Technician: Nisticò 
--
-- Create Date: 15.12.2025 15:49:23
-- Design Name: 
-- Module Name: SummerRegister - Behavioral
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

entity AdderRegister is
    generic (n : integer := 8);
    Port ( A : in STD_LOGIC_VECTOR (n - 1 downto 0);
           B : in STD_LOGIC_VECTOR (n - 1 downto 0);
           clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(n downto 0));
end AdderRegister;

architecture Behavioral of AdderRegister is
       signal EA, EB: STD_LOGIC_VECTOR(n downto 0);
       signal p, g: STD_LOGIC_VECTOR(n downto 0);
       signal c: STD_LOGIC_VECTOR(n + 1 downto 0);
       signal S: STD_LOGIC_VECTOR(n downto 0);          -- uscita del sommatore
begin
    -- calcolo combinatorio
    -- estensione in segno
    EA <= A(n - 1) & A;
    EB <= B(n - 1) & B;
    
    p <= EA xor EB;
    g <= EA and EB;
    c(0) <= '0';
    c(n + 1 downto 1) <= g or (p and c(n downto 0));
    
    -- calcolo del risultato
    S <= p xor c(n downto 0); 
    
    -- memorizzazione del risultato
    -- registro a flip-flop sensibile al fronte di salita
    process (clk) begin
        if rising_edge(clk) then
            Q <= S;
        end if;
    end process;
end Behavioral;
