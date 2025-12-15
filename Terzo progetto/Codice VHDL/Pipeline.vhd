----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Michienzi, Morabito
-- Technician: Nisticò 
-- 
-- Create Date: 15.12.2025 17:52:51
-- Design Name: 
-- Module Name: Pipeline - Behavioral
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

entity Pipeline is 
    Port (
        A : in STD_LOGIC_VECTOR(7 downto 0);
        B : in STD_LOGIC_VECTOR(7 downto 0);
        C : in STD_LOGIC_VECTOR(7 downto 0);
        O : out STD_LOGIC_VECTOR(9 downto 0);
        clk : in STD_LOGIC
    );
end Pipeline;

architecture Behavioral of Pipeline is
    component AdderRegister 
        generic (n : integer := 8);
        Port( A : in STD_LOGIC_VECTOR (n - 1 downto 0);
              B : in STD_LOGIC_VECTOR (n - 1 downto 0);
              clk : in STD_LOGIC;
              Q : out STD_LOGIC_VECTOR(n downto 0)
        );
    end component;
    component RegisterFF
        generic(n : integer := 8);
        Port ( D : in STD_LOGIC_VECTOR (n - 1 downto 0);
               clk : in STD_LOGIC;
               Q : out STD_LOGIC_VECTOR (n - 1 downto 0)
        );
    end component;
    signal S1, S2, S3 : STD_LOGIC_VECTOR(7 downto 0);
    signal S3_1, S_A: STD_LOGIC_VECTOR(8 downto 0);
    signal ES3 : STD_LOGIC_VECTOR(8 downto 0);
begin
    R1 : RegisterFF generic map(8) port map (A, clk, S1);
    R2 : RegisterFF generic map(8) port map (B, clk, S2);
    R3 : RegisterFF generic map(8) port map (C, clk, S3);
    
    Add1 : AdderRegister generic map (8) port map (S1, S2, clk, S_A);
    ES3 <= S3(7) & S3;
    R3_1 : RegisterFF generic map (9) port map (ES3, clk, S3_1);
    
    Add2: AdderRegister generic map (9) port map (S_A, S3_1, clk, O);

end Behavioral;
