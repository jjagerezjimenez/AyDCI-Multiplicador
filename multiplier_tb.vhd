library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.env.finish;

library work;
use work.multiplier_pkg.ALL;

entity multiplier_tb is
end entity;

architecture testbench of multiplier_tb is

    signal clk, st              : std_logic := '0';
    signal done                 : std_logic;
    signal product              : std_logic_vector(7 downto 0);
    signal mplier, mcand, zero  : std_logic_vector(3 downto 0);
    constant M : natural := 4;   
    

    begin
        zero <= (others => '0');
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
prueba: process
    variable pass : boolean := true;
    begin
    mplier <= (others=>'0');
    mcand  <= (others=>'0');
    st <= '1';
    wait until clk = '1' and clk'event;
    st <= '0';
    wait until (done = '1') ;
    if (product /= std_logic_vector ((unsigned(zero & mcand)) * 
                                     (unsigned(zero & mplier)))
        ) then
        report  "ERROR en 0x0"
        severity error;
        pass:= false;
    end if;
    wait until clk = '1' and clk'event;
    while true loop
        mplier <= std_logic_vector(unsigned(mplier) + 1);        
    while true loop
        mcand <= std_logic_vector(unsigned(mcand) + 1);
        st <= '1';
        wait until clk = '1' and clk'event;
        st <= '0';
        wait until (done = '1') ;
        if (product /= std_logic_vector ((unsigned(zero & mcand)) * 
                                         (unsigned(zero & mplier)))
            ) then
            report  "ERROR en " & to_string(mcand)&" x " & to_string(mplier)
            severity error;
            pass:= false;
            exit;
        end if;
        wait until clk = '1' and clk'event;
        if unsigned(mcand) = 0 then
            exit;
        end if;
        end loop;    
        if unsigned(mplier) = 0  then
            exit;
        end if;
    end loop;
    if pass then
        report "[PASS]";
    else
        report "[FAIL]" severity failure;
    end if;
    finish;
    std.env.stop;
    end process prueba;

end architecture testbench;
