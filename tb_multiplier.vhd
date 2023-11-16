library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;
use work.multiplier_pkg.ALL;

entity multiplier_tb is
end entity;

architecture testbench of multiplier_tb is

    signal clk, st : std_logic := '0';

    signal mplier, mcand : std_logic_vector(3 downto 0);
    signal done : std_logic;
    signal product : std_logic_vector(9 downto 0);

    constant N : natural := 3;  -- cambio segun lo deseado

    begin
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
                --0 multiplicado por 1
                mplier <= "0000";
                mcand <= "0001";
                wait for 10 ns;

                --1111 multiplicado por 1111
                mplier <= "1111";
                mcand <= "1111";
                wait for 10 ns;

                --13 multiplicado por 11
                mplier <= "1101";
                mcand <= "1011";
                wait for 10 ns;

                --

                wait;   --fin casos

        end process;

        process
            begin
                while now < 100 ns loop  -- Cambia 100 ns según sea necesario
                    clk <= '0';
                    wait for 5 ns;
                    clk <= '1';
                    wait for 5 ns;
                end loop;
                wait;
        end process;
end architecture testbench;
