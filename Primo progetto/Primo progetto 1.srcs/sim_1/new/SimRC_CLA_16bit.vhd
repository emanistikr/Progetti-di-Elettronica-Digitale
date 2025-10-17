entity SimRC_CLA_16bit is
--  Port ( );
end SimRC_CLA_16bit;

architecture MySimRC_CLA_16bit of SimRC_CLA_16bit is
	signal A, B, S : bit_vector (15 downto 0);
	signal cout : bit;
	component RC_CLA_16bit
		Port ( A, B : in bit_vector (15 downto 0);
		S : out bit_vector (15 downto 0);
           	cout : out bit);
        end component;   	
begin
	RC_CLA : RC_CLA_16bit port map (A, B, S, cout);
	process begin
	   -- No overflow
		A <= ( others => '0' );
		B <= ( others => '0' );
		wait for 10ns;
		-- Tutti overflow
		A <= ( others => '1' );
		B <= ( others => '1' );
		wait for 10ns;
	    B <= ( others => '0' );
	    B(0)<= '1';
		wait for 10ns;
		-- overflow msb
		A <= "1000000000000000";  
		B <= "1000000000000000";  
		wait for 10 ns;
		-- zeri ed uni alternati 
		A <= "1010101010101010";
        B <= "0101010101010101";
        wait for 10ns;
        -- valori casuali 
		A <= "0001001000110100";  
		B <= "0100001100100001";  
		wait for 10 ns;
        A <= "0000000000011101";  
        B <= "0000000000010010";  
        wait for 10 ns;
	end process;
end MySimRC_CLA_16bit;
