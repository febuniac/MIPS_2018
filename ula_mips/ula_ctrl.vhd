library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ula_ctrl is
port( 
        ULAop : in std_logic_vector(1 downto 0); 
		  funct : in std_logic_vector(5 downto 0); 
		  imm : in std_logic_vector(2 downto 0);
        ula_ctrl : out std_logic_vector(3 downto 0) 
        );
end ula_ctrl;

architecture Behavioral of ula_ctrl is

begin
	
	ula_ctrl <= "0010" when (ULAop = "00" or (ULAop = "10" and funct = "100000") or imm = "000") else
					"0110" when (ULAop = "01" or (ULAop = "10" and funct = "100010") or imm = "001") else
					"0000" when ((ULAop = "10" and funct = "100100") or imm = "010") else
					"0001" when ((ULAop = "10" and funct = "100101") or imm = "011") else
					"0111" when ((ULAop = "10" and funct = "101010") or imm = "100") else
					"0000";
		  
end Behavioral;