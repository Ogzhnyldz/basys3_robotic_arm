----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2022 19:49:10
-- Design Name: 
-- Module Name: servoyu_outputa - Behavioral
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
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity servoyu_outputa is
  Port ( siralama : in std_logic_vector(119 downto 0);
            oynat : in std_logic;
           
            switch : in std_logic;
            clok : in std_logic;
            mutlu_son : inout std_logic
             );
end servoyu_outputa;

architecture Behavioral of servoyu_outputa is
signal index2 : integer range 0 to 119 := 0;
begin
realoynatma_part: process(clok,oynat,switch,index2) begin
             if oynat = '0' then   
                 mutlu_son <=  switch;
                        index2 <=0;
              elsif oynat = '1' then
                    if  index2 = 119 then
                       index2 <=0;
                    elsif rising_edge(clok) then
                      
                        mutlu_son <= siralama(index2) or switch;
                        index2<= index2 + 1;
                    
         
                    
     
            end if;
          end if;
       
  
 end process;

end Behavioral;
