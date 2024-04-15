library ieee;
use ieee.std_logic_1164.all;

entity design_vhdl_tb is 
end design_vhdl_tb;

architecture test of design_vhdl_tb is 

	component design_vhdl 
		port(a : in std_logic;
			 b : in std_logic;
			 c : in std_logic;
			 d : in std_logic; 
			 output : out std_logic
		);
	end component;
	
	signal a, b, c, d, output : std_logic; 
	
	begin 
	
	design_vhdl_instance : design_vhdl port map(a => a, b => b, c => c, d => d, output => output);
	
	process begin
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		wait for 1 ns; 
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '1';
		wait for 1 ns;
		a <= '1';
		b <= '0';
		c <= '0';
		d <= '0';
		wait for 1 ns;
		a <= '0';
		b <= '1';
		c <= '0';
		d <= '1';
		wait for 1 ns;
		wait; 
	end process;
	
end test;
