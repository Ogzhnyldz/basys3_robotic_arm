----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2022 19:43:01
-- Design Name: 
-- Module Name: tek_servo_kaydetme - Behavioral
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

entity tek_servo_kaydetme is
   Port (clk : in std_logic;
         switch : in std_logic;
         kaydet:in std_logic;
         oynat : in std_logic;
         clear : in std_logic;
        
         servo_out : out std_logic);
end tek_servo_kaydetme;

architecture Behavioral of tek_servo_kaydetme is

component oynat_bakalim is
     Port (clk : in std_logic;
            kaydet:in std_logic;
            
            clear : in std_logic;
            switch: in std_logic;
            out2 : inout std_logic_vector(119 downto 0);
            clk_out : inout std_logic);
end component;

component pwm_servo is 
    port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           pos : in STD_LOGIC;
           servo : out STD_LOGIC);
end component;

component frequency_divider is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           output_clk : out STD_LOGIC);
end component;

component servoyu_outputa is
  Port ( siralama : in std_logic_vector(119 downto 0);
            oynat : in std_logic;
           
            switch : in std_logic;
            clok : in std_logic;
            mutlu_son : inout std_logic
             );
end component;
signal arrayi : std_logic_vector(119 downto 0);
signal secondclk : std_logic ;
signal servo_clk : std_logic;
signal out1 : std_logic;
begin
   
     frequency_divider_map: frequency_divider   Port map(clk => clk , reset => clear , output_clk => servo_clk );
   
    oynat_bakalim_map: oynat_bakalim   Port map(clk => clk,kaydet=>kaydet,clear => clear,switch => switch,out2=>arrayi,clk_out => secondclk);
     
     servoyu_outputa_map: servoyu_outputa   Port map(siralama =>arrayi, oynat=>oynat, switch => switch, clok=>secondclk ,mutlu_son => out1 );
     
     pwm_servo_map: pwm_servo   Port map(clk => servo_clk, reset => clear ,pos => out1, servo => servo_out  );


end Behavioral;
