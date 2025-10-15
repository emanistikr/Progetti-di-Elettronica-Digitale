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
		A <= ( others => '0' );
		B <= ( others => '0' );
		wait for 10ns;
		A <= ( others => '1' );
		wait for 10ns;
		B(0) <= '1';
		wait for 10ns;
	end process;
end MySimRC_CLA_16bit;