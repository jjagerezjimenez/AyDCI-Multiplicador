library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity combinational_multiplier is

    generic (
        N: integer := 6  -- Establece el valor predeterminado según tus necesidades
    );

    port (
        --clk, st:          in std_logic;
        mplier, mcand:    in std_logic_vector(N - 1 downto 0);
        --done:             out std_logic;
        product:          out std_logic_vector((2 * N) - 1 downto 0)
    );
end combinational_multiplier;

architecture arch_comb_mult of combinational_multiplier is

    begin

        product <= std_logic_vector (unsigned(mplier)*unsigned(mcand));

end arch_comb_mult;