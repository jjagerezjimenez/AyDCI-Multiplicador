
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adder is
    generic(
        constant N : natural := 1);
    port(
        clk,load,sh in std_logic;
        mplier : in std_logic_vector(N downto 0);
        product: out std_logic_vector (((2*N) + 1) downto 0));
end  adder;

architecture solucion of adder is
    
    begin

    end solucion;
