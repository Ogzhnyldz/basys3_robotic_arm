----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 21:23:27
-- Design Name: 
-- Module Name: simu - Behavioral
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
entity simu is
end simu;
architecture Behavioral of simu is
COMPONENT tek_servo_kaydetme
 PORT (clk : in std_logic;
         switch : in std_logic;
         kaydet:in std_logic;
         oynat : in std_logic;
         clear : in std_logic;
         servo_out : out std_logic);
 END COMPONENT;
 SIGNAL clk : STD_LOGIC;
 SIGNAL switch : STD_LOGIC;
 SIGNAL kaydet : STD_LOGIC;
 sIGNAL oynat : STD_LOGIC;
 SIGNAL clear : STD_LOGIC;
constant clk_period : time := 10 ns;

 SIGNAL servo_out : STD_LOGIC;
BEGIN
 UUT: tek_servo_kaydetme PORT MAP(
clk => clk, 
switch => switch, 
kaydet => kaydet,
oynat => oynat,
clear => clear,
servo_out => servo_out
 );
 clk_process  : PROCESS
 BEGIN
 clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;

simu: process
begin

 wait for 250 ms;
switch <= '0'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '1'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '1'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '1'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '1'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '1'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '1'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '1'; 
kaydet<= '1';
oynat <= '0';
clear <= '0'; 
wait for 250 ms;
 switch <= '0'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '1'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '1'; 
kaydet<= '1';
oynat <= '0';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '0';
oynat <= '1';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '0';
oynat <= '1';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '0';
oynat <= '1';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '0';
oynat <= '1';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '0';
oynat <= '1';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '0';
oynat <= '1';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '0';
oynat <= '1';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '0';
oynat <= '1';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '0';
oynat <= '1';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '0';
oynat <= '1';
clear <= '0';
 wait for 250 ms;
 switch <= '0'; 
kaydet<= '0';
oynat <= '1';
clear <= '0';





 END PROCESS;
end Behavioral;