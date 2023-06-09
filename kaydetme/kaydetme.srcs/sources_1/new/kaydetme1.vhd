----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.12.2022 19:53:04
-- Design Name: 
-- Module Name: kaydetme1 - Behavioral
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

entity kaydetme1 is
    Port (  clk : in std_logic;
            kaydet:in std_logic;
            
            clear : in std_logic;
            switch: in std_logic;
            out1 : out std_logic_vector(119 downto 0));
end kaydetme1;



architecture Behavioral of kaydetme1 is

signal kabul_olur: std_logic_vector(119 downto 0);
signal index : integer range 0 to 119 := 0;


begin

--kaydetme_part: process(clear,kaydet,clk) begin
--    if (clear =  '1' ) then
--           kabul_olur <= (others => '0');
--    elsif rising_edge(clk) then
--      if kaydet = '1' then
--        for index in 0 to 3 loop
--            kabul_olur(index) <= switch;
--        end loop;  -- ii
--      end if;
--    end if;
    
--  end process;
  
 kaydetme_part: process(clk,clear,switch,index) begin
     if (clear =  '1' ) then
           kabul_olur <= (others => '0');
           index <=0;
    elsif rising_edge(clk) then
       if kaydet = '1' then  
          if index < 119  then
            kabul_olur(index) <= switch;
            index<= index + 1;
          end if;
       end if;
     end if;
 
 end process;
 
 out1 <= kabul_olur;
end Behavioral;
