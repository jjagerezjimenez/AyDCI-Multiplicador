
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
signal counter : std_logic_vector(integer( ceil( sqrt(real(N)) ) ) downto 0);   
begin
    process(all)
    begin
    sh <=  '1' when (not m) and not (done or load) else '0';
    end process;
    process(all)
    begin
    ad <= '1' when m and not (done or load) else '0';
    end process;
    process(all)
    begin
    done <= '1' when (counter = std_logic_vector(to_unsigned(N, counter'length))) else '0';
    end process;
    process(all)
    begin    
    load <= st;
    end process;

cntr: process (clk)
    begin      
    if rising_edge(clk) then 
        if sh = '1'  then
            counter <= std_logic_vector(unsigned(counter) + 1);
        elsif counter = std_logic_vector(to_unsigned(N, counter'length)) then
            counter <= (others => '0');
        end if;
    end if;
    end process cntr;

end solucion;
