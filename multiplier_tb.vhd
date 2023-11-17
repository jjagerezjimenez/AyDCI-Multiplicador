library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.env.finish;

library work;

entity multiplier_tb is
end entity;

architecture testbench of multiplier_tb is
    component multiplier is
        generic(
            constant N : natural := 1);
        port(
            clk, st: in std_logic;
            mplier, mcand : in std_logic_vector(N-1 downto 0);
            done: out std_logic;
            product: out std_logic_vector (((2*N)-1) downto 0));
    end component;
    constant M : natural := 4;   
    signal clk, st              : std_logic := '0';
    signal done                 : std_logic;
    signal product              : std_logic_vector(2*M-1 downto 0);
    signal mplier, mcand        : std_logic_vector(M-1 downto 0);
    signal numeros              : std_logic_vector(2*M-1 downto 0);
    

    begin
        COMPONENTE: multiplier
            generic map (
                N => M
            )           
            port map (
                clk => clk,
                st => st,
                mplier => mplier,
                mcand => mcand,
                done => done,
                product => product
            );
clk <= not clk after 10 ns; 
mcand <= numeros(2*M-1 downto M);
mplier <= numeros(M-1 downto 0);

prueba: process
    variable pass : boolean := true;
    begin
    numeros <= (others => '0');
    st <= '1';
    wait until clk = '1' and clk'event;
    st <= '0';
    wait until (done = '1') ;
    wait until clk = '1' and clk'event;
    if (product /= std_logic_vector ((unsigned(mcand)) * 
                                     (unsigned(mplier)))
        ) then
        report  "ERROR en " & to_string(mcand)&" x " & to_string(mplier)&" Se obtuvo " & to_string(product) & " Se esperaba " & to_string(((unsigned(mcand)) * (unsigned(mplier))))
        severity error;
        pass:= false;
    end if;
    wait until clk = '1' and clk'event;
    while (unsigned(numeros) + 1) /= 0   loop
        numeros <= std_logic_vector(unsigned(numeros) + 1);
        st <= '1';
        wait until clk = '1' and clk'event;
        st <= '0';
        wait until (done = '1') ;
        wait until clk = '1' and clk'event;
        if (product /= std_logic_vector ((unsigned(mcand)) * 
                                         (unsigned(mplier)))
            ) then
            report  "ERROR en " & to_string(mcand)&" x " & to_string(mplier)&" Se obtuvo " & to_string(product) & " Se esperaba " & to_string(((unsigned(mcand)) * (unsigned(mplier))))
            severity error;
            pass:= false;
            exit;
        end if;
        wait until clk = '1' and clk'event;
    end loop;
    if pass then
        report "[PASS]";
    else
        report "[FAIL]" severity failure;
    end if;
    finish;
    end process prueba;

end architecture testbench;
