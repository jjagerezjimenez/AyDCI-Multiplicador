
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity control is
    generic(
        constant N : natural := 1);
    port(
        clk,st,m in std_logic;
        sh,ad,done,load out std_logic);
end  control;

architecture solucion of control is
signal counter : std_logic_vector( unsigned(sqrt(real(N))) downto 0);    
begin
    sh <=  (not m) and (not (counter =  unsigned(N))) and (not load);
    add <= m and (not (counter =  unsigned(N))) and (not load);
    done <= (counter = unsigned(N));
    load <= st;

cntr: process (clk)
    begin      
    if 'rising_edge(clk) then 
        if sh = '1'  then
            counter = std_logic_vector(unsigned(counter) + 1);
        elsif counter = std_logic_vector(unsigned(N)) then
            counter = (others => '0');
        end if;
    end if;
    end process cntr;

end solucion;
