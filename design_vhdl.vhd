library ieee;
use ieee.std_logic_1164.all;

entity design_vhdl is 

	port(a : in std_logic;
		 b : in std_logic;
		 c : in std_logic;
		 d : in std_logic;
		 output : out std_logic
		);
end design_vhdl;

architecture deign_vhdl_Logic of design_vhdl is 
	component andgate
		port(input1 : in std_logic;
			 input2 : in std_logic;
			 and_result: out std_logic
			);
	end component;
	component orgate
		port(input1 : in std_logic;
			 input2 : in std_logic;
			 or_result: out std_logic
			);
	end component;
	
	component xorgate
		port(input1 : in std_logic;
			 input2 : in std_logic;
			 xor_result: out std_logic
			);
	end component;
	
	component notgate
		port(input1 : in std_logic;
			 not_result: out std_logic
			);
	end component;
	
	signal wire_1 : std_logic;
	signal wire_2 : std_logic;
	signal wire_3 : std_logic;
	signal wire_4 : std_logic;
	
begin
	notinstance : notgate port map(input1 => c, not_result => wire_1);
	andinstance : andgate port map(input1 => a, input2 => b, and_result => wire_2);
	orinstance : orgate port map(input1 => wire_1, input2 => wire_2, or_result => wire_3);
	xorinstance : xorgate port map(input1 => wire_3, input2 => d, xor_result => wire_4); 
	
	output <= wire_4;
	
end deign_vhdl_Logic;