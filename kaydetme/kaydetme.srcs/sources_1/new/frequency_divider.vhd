library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity frequency_divider is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           output_clk : out STD_LOGIC);
end frequency_divider;

architecture Behavioral of frequency_divider is
signal temp : std_logic;
signal int: integer range 0 to 1560 := 0;


begin
process(reset, clk)
begin 
    if reset = '1' then 
        temp <= '0';
        int <= 0;
    elsif rising_edge(clk) then 
        if int = 1560 then 
            temp <= not(temp);
            int <= 0;
        else
            int <= int + 1;
       end if;
    end if;
end Process;

output_clk <= temp;

end Behavioral;