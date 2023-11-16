library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.env.finish;

library work;
use work.multiplier_pkg.ALL;

entity multiplier_tb is
end entity;

architecture testbench of multiplier_tb is

    signal clk, st : std_logic := '0';
    signal mplier, mcand : std_logic_vector(3 downto 0);
    signal done : std_logic;
    signal product : std_logic_vector(8 downto 0);
    signal zero : std_logic_vector(3 downto 0);
    constant N : natural := 3;  -- cambio segun lo deseado
    

    begin
        zero <= (others => '0');
        -- Instancia el componente
        COMPONENTE: multiplier
            generic map (
                N => N
            )           
            port map (
                clk => clk,
                st => st,
                mplier => mplier,
                mcand => mcand,
                done => done,
                product => product
            );
        process
begin
    clk <= not clk after 10 ns; --Reloj de 20ns 
    process
    variable pass : boolean := true;
    begin
    mplier <= "0000";
    mcand  <= "0000";
    st <= '1';
    wait until clk = '1' and clk'event;
    st <= '0';
    wait until (done = '1') ;
    if (product /= std_logic_vector(unsigned(mcand) * unsigned(mplier))) then
        report  "ERROR en 0x0"
        severity error;
        pass:= false;
        exit;
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
        if (product /= std_logic_vector((unsigned(zero)&unsigned(mcand) ) * 
                                        (unsigned(zero)&unsigned(mplier)))
            ) then
            report  "ERROR en " & to_string(mcand)&" x " & to_string(mplier)
            severity error;
            pass:= false;
            exit;
        end if;
        wait until clk = '1' and clk'event;
    end loop;    
    end loop;
    if pass then
        report "[PASS]";
    else
        report "[FAIL]" severity failure;
    end if;
    finish;
    std.env.stop;
    end process;

end architecture testbench;
