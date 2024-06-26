# VHDL-Project

This VHDL project is the inspiration from Credit: https://www.youtube.com/watch?v=gc2q3Id4_mc
-> On different design/ circuit 


#Practical Step

1) Propositional formula

2) Truth table

3) Draw IC using IEC 60617-12 Norm. 

4) Implementation of the VHDL code (design)

5) Test bench for design (DUT)

6) Generate wave form from DUT and perform analysis using GHDL (Open Source Simulator) & GTKWave (for waveform)

---------------------------------------------------------------------------------------------------------
1) Propositional Formula: 
              (((A and B) or (not C)) xor D)
-> Four variables and 3 logic gate in the given propositional formula 
-> VHDL is a case insensitive language

2) Truth Table solution along with output/ out variable 
   
                        
               A  B  C  D  A and B	not C	(A and B) or (not C)	out = (A and B) or (not C) xor D
                                    0	0	0	0	0	1	1	1
                                    1	0	0	0	0	1	1	1
                                    0	1	0	0	0	1	1	1
                                    1	1	0	0	1	1	1	1
                                    0	0	1	0	0	0	0	0
                                    1	0	1	0	0	0	0	0
                                    0	1	1	0	0	0	0	0
                                    1	1	1	0	1	0	1	1
                                    0	0	0	1	0	1	1	0
                                    1	0	0	1	0	1	1	0
                                    0	1	0	1	0	1	1	0
                                    1	1	0	1	1	1	1	0
                                    0	0	1	1	0	0	0	1
                                    1	0	1	1	0	0	0	1
                                    0	1	1	1	0	0	0	1
                                    1	1	1	1	1	0	1	0

(((A and B) or (not C)) xor D)


3) Draw IC using IEC 60617-12 Norm. 

![IEC-Norm-VhDL drawio](https://github.com/HafizAQ/VHDL-Project/assets/49461826/b6136c48-1622-44b7-88e3-fe75e240ebe3)


4) Impelementation of VHDL code
Design File => deign_vhdl.vhd
connecting components files => andgate.vhd, orgate.vhd, notgate.vhd, xorgate.vhd

6) Testbench VHDL code
File => design_vhdl_tb.vhd 

7) Generate Wave form commands 
File => CMD_Commands.txt
**Note: make sure you already have installed: GHDL(open source simulator) & GTKWAVE (for showing wave form results)**

8) Results

![image](https://github.com/HafizAQ/VHDL-Project/assets/49461826/e8417654-90f7-4bbf-84d1-7ad32b536f79)




