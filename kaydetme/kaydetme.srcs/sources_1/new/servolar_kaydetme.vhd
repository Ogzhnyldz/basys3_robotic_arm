----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.12.2022 00:00:09
-- Design Name: 
-- Module Name: servolar_kaydetme - Behavioral
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

entity servolar_kaydetme is
Port (clk : in std_logic;
         switch : in std_logic_vector(7 downto 0);
         kaydet:in std_logic;
         oynat : in std_logic;
         clear : in std_logic;
        
         servo_out : out std_logic_vector(7 downto 0));
end servolar_kaydetme;

architecture Behavioral of servolar_kaydetme is
component ninety_register is
   Port (clk : in std_logic;
         switch : in std_logic;
         kaydet:in std_logic;
         oynat : in std_logic;
         clear : in std_logic;
        
         servo_out : out std_logic);
end component;
component tek_servo_kaydetme is
   Port (clk : in std_logic;
         switch : in std_logic;
         kaydet:in std_logic;
         oynat : in std_logic;
         clear : in std_logic;
        
         servo_out : out std_logic);
end component;
begin
first: ninety_register  Port map(clk => clk,switch => switch(0),kaydet=>kaydet,oynat=>oynat,clear => clear,servo_out => servo_out(0));

second: ninety_register  Port map(clk => clk,switch => switch(1),kaydet=>kaydet,oynat=>oynat,clear => clear,servo_out => servo_out(1));

third: ninety_register  Port map(clk => clk,switch => switch(2),kaydet=>kaydet,oynat=>oynat,clear => clear,servo_out => servo_out(2));

forth: ninety_register  Port map(clk => clk,switch => switch(3),kaydet=>kaydet,oynat=>oynat,clear => clear,servo_out => servo_out(3));

five: ninety_register  Port map(clk => clk,switch => switch(4),kaydet=>kaydet,oynat=>oynat,clear => clear,servo_out => servo_out(4));

parmak1: tek_servo_kaydetme Port map(clk => clk,switch => switch(5),kaydet=>kaydet,oynat=>oynat,clear => clear,servo_out => servo_out(5));

parmak2: tek_servo_kaydetme Port map(clk => clk,switch => switch(6),kaydet=>kaydet,oynat=>oynat,clear => clear,servo_out => servo_out(6));

parmak3: tek_servo_kaydetme Port map(clk => clk,switch => switch(7),kaydet=>kaydet,oynat=>oynat,clear => clear,servo_out => servo_out(7));

end Behavioral;
