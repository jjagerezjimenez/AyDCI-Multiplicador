library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.multiplier_pkg.all;

package multiplier_pkg is
    component multiplier is
        generic(
            constant N : natural := 1);
        port(
            clk, st: in std_logic;
            mplier, mcand : in std_logic_vector(N downto 0);
            done: out std_logic;
            product: out std_logic_vector (((2*N)-1) downto 0));
    end component;
end package;

library IEEE;
use IEEE.std_logic_1164.all;

entity multiplier is
    generic(
        constant N : natural := 1);
    port(
        clk, st: in std_logic;
        mplier, mcand : in std_logic_vector(N downto 0);
        done: out std_logic;
        product: out std_logic_vector (((2*N)-1) downto 0));
end multiplier;

architecture solucion of multiplier is

begin




end solucion;