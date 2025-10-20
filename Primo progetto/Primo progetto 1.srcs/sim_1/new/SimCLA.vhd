entity SimCLA is
--  Port ( );
end SimCLA;

architecture MySimCLA of SimCLA is
    signal A, B, S : bit_vector(3 downto 0);
	signal cin, cout : bit;
	component CLA4bit is
	    Port ( A, B : in bit_vector (3 downto 0);
	           cin : in bit;
	           cout : out bit;
	           S : out bit_vector (3 downto 0));
	end component;
begin
    CUT : CLA4bit port map ( A, B, cin, cout, S );
	cin <= '0';
	process begin
	   -- No overflow
		A <= "0000";
		B <= "0000";
		wait for 10ns;
		A <= "1111";
		B <= "0000";
		wait for 10 ns;
		-- Tutti overflow
		A <= "1111";
		B <= "1111";
		wait for 10 ns;
		A <= "1111";
		B <= "0001";
		wait for 10 ns;
		-- overflow msb 
		A <= "1000";
		B <= "1000";
		wait for 10 ns;
		-- zeri ed uni alternati 
		A <= "1010";
		B <= "0101";
		wait for 10 ns;
	end process;
end MySimCLA;
