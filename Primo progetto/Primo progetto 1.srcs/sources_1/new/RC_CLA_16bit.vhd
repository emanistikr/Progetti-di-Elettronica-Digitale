entity RC_CLA_16bit is
    Port ( A, B : in bit_vector (15 downto 0);
           S : out bit_vector (15 downto 0);
           cout : out bit);
end RC_CLA_16bit;

architecture MyRC_CLA_16bit of RC_CLA_16bit is
	signal c : bit_vector (4 downto 0);
	component CLA4bit is
	    Port ( A, B : in bit_vector (3 downto 0);
		   cin : in bit;
		   cout : out bit;
		   S : out bit_vector (3 downto 0));
	end component;
begin
	c(0) <= '0';
	CLA0 : CLA4bit port map ( A(3 downto 0), B(3 downto 0), c(0), c(1), S(3 downto 0) );
	CLA1 : CLA4bit port map ( A(7 downto 4), B(7 downto 4), c(1), c(2), S(7 downto 4) );
	CLA2 : CLA4bit port map ( A(11 downto 8), B(11 downto 8), c(2), c(3), S(11 downto 8) );
	CLA3 : CLA4bit port map ( A(15 downto 12), B(15 downto 12), c(3), c(4), S(15 downto 12) );
	cout <= c(4);

end MyRC_CLA_16bit;

