library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity control_mplier is
    generic (
        constant N : natural := 4
    );
    port (
        clk, st, m : in std_logic;
        sh, ad, done, load : out std_logic
    );
end control_mplier;

architecture solucion of control_mplier is
    signal full : std_logic;

begin
    -- Lógica de entrada
    process(clk)
    begin
        if rising_edge(clk) then
            if st = '1' then
                full <= not load;
            else
                full <= '0';
            end if;
        end if;
    end process;

    -- Lógica de salida
    done <= full;
    load <= not full;
    sh <= full;
    ad <= full;

end solucion;
