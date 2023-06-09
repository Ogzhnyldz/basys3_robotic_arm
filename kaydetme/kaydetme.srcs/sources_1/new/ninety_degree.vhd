library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ninety_degree is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           pos : in STD_LOGIC;
           servo : out STD_LOGIC);
end ninety_degree;

architecture Behavioral of ninety_degree is

signal counter : unsigned(10 downto 0);
signal pwm_s: unsigned(7 downto 0);
signal pos1 : unsigned(6 downto 0):= (others=>'0') ;
begin

    pos1(5) <= pos;
 
    -- Minimum value should be 0.5ms.
    pwm_s <= unsigned('0' & pos1) + 32;
    -- Counter process, from 0 to 1279
    process(clk,reset) 
    begin
    if reset = '1' then 
        counter <= (others => '0');
    elsif rising_edge(clk) then
        if (counter = 1279) then 
            counter <= (others => '0');
        else
           counter <= counter + 1; 
        end if;
     end if;
    end process;    
servo <= '1' when (counter < pwm_s) else '0';
end Behavioral;
