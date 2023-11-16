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
    signal clk, st              : std_logic := '0';
    signal done                 : std_logic;
    signal product              : std_logic_vector(3 downto 0);
    signal mplier, mcand, zero  : std_logic_vector(1 downto 0);
    constant M : natural := 2;   
    

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
    while unsigned(mplier) < 3 loop
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
            report  "ERROR en " & to_string(mcand)&" x " & to_string(mplier)&" Se obtuvo " & to_string(product)
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
    end process prueba;

end architecture testbench;
