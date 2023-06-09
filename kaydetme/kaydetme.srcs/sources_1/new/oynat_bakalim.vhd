----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.12.2022 20:30:32
-- Design Name: 
-- Module Name: oynat_bakalim - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity oynat_bakalim is
  Port (clk : in std_logic;
            kaydet:in std_logic;
           
            clear : in std_logic;
            switch: in std_logic;
            out2 : inout std_logic_vector(119 downto 0);
            clk_out : inout std_logic);
end oynat_bakalim;

architecture Behavioral of oynat_bakalim is
component clock_divider is
      Port (clk    : in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end component;


component kaydetme1 is
    Port (  clk : in std_logic;
            kaydet:in std_logic;
            
            clear : in std_logic;
            switch: in std_logic;
            out1 : out std_logic_vector(119 downto 0));
end component;
       
begin
    clock_divider_map: clock_divider   Port map(clk => clk, reset => clear, clk_out => clk_out  );

     kaydetme1_map: kaydetme1   Port map(clk =>clk_out,kaydet =>kaydet ,clear => clear,switch => switch,out1 => out2  );



end Behavioral;
