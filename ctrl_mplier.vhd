
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;
library STD, WORK; use STD.STANDARD.all;

entity control_mplier is
    generic(
        constant N : natural := 1);
    port(
        clk,st,m : in std_logic;
        sh,ad,done,load : out std_logic);
end  control_mplier;

architecture solucion of control_mplier is
    signal full : std_logic;
    signal counter : std_logic_vector(integer( ceil( sqrt(real(N)) ) ) downto 0);   
begin
    process(all)
    begin
        sh <=  '1' when not (full or load or ad) else '0';
    end process;

    process (clk)
    begin
        if rising_edge(clk) then
            ad <= not ad when m and not (full or load);
        else
            ad <= '0';
        end if;
    end process;

    process(all)
    begin
        done <= '1' when not (sh or ad or load)  else '0';
    end process;

    process(all)
    begin    
        load <= st;
    end process;

cntr: process (all)
    begin      
    if rising_edge(clk) then 
        if counter = std_logic_vector(to_unsigned(N, counter'length)) or load = '1' then
            counter <= (others => '0');
            full <= not load;
        elsif sh = '1'  then
            counter <= std_logic_vector(unsigned(counter) + 1);
            full <= '0';
        end if;
    end if;
    end process cntr;

end solucion;
