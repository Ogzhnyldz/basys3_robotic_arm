----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.12.2022 20:22:03
-- Design Name: 
-- Module Name: second_sim - Behavioral
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

entity second_sim is

end second_sim;

architecture Behavioral of second_sim is

component clock_divider
PORT(
clk : IN std_logic;
reset : IN std_logic;
clk_out : OUT std_logic
);
end component;
signal clk : std_logic := '0';
signal reset : std_logic := '0';
 
--Outputs
signal clk_out : std_logic;

constant clk_period : time := 20 ns;


begin
uut : clock_divider port map(
clk => clk,
reset => reset,
clk_out => clk_out
);

clk_process :process
begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;

stim_proc: process
begin
wait for 100 ns;
reset <= '0';
wait for 100 ns;
reset <= '0';
wait;
end process;



end Behavioral;
