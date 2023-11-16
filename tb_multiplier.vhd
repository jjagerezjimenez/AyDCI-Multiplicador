library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;
use work.multiplier_pkg.ALL;

entity multiplier_tb is
end entity;

architecture testbench of multiplier_tb is

    signal clk, habilitacion : std_logic := '0';

    signal multiplicando, multiplicador : std_logic_vector(3 downto 0);
    signal fin_multipli : std_logic;
    signal vector_resultado : std_logic_vector(9 downto 0);

    constant N : natural := 3;  -- cambio segun lo deseado

    begin
        -- Instancia el componente
        COMPONENTE: multiplier

            generic map (
                N => N
            )
            
            port map (
                clk => clk,
                habilitacion => habilitacion,
                multiplicando => multiplicando,
                multiplicador => multiplicador,
                fin_multipli => fin_multipli,
                vector_resultado => vector_resultado
            );

        process

            begin
                --0 multiplicado por 1
                multiplicando <= "0000";
                multiplicador <= "0001";
                wait for 10 ns;

                --1111 multiplicado por 1111
                multiplicando <= "1111";
                multiplicador <= "1111";
                wait for 10 ns;

                --13 multiplicado por 11
                multiplicando <= "1101";
                multiplicador <= "1011";
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
