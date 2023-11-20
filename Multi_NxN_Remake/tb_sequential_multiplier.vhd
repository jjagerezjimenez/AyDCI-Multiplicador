library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_sequential_multiplier is
end tb_sequential_multiplier;

architecture testbench of tb_sequential_multiplier is
    constant N: integer := 6;

    component sequential_multiplier
        generic (
            N: integer := 6
        );
        port (
            clk, st:            in std_logic;
            mplier, mcand:      in std_logic_vector(N - 1 downto 0);
            done:               out std_logic;
            product:            out std_logic_vector((2 * N) - 1 downto 0)
        );
    end component;

    type arr is array(1 to N) of std_logic_vector(N - 1 downto 0);
    constant MCANDARR: arr := ("011011", "010110", "000001", "000100", "001111", "011101");
    constant MPLIERARR: arr := ("001011", "001101", "000001", "001000", "001111", "000000");

    signal clk:             std_logic := '0';
    signal st, done1:       std_logic;
    signal mplier, mcand:   std_logic_vector(N - 1 downto 0);
    signal product1:        std_logic_vector((2 * N) - 1 downto 0);

begin
    DUT: sequential_multiplier
          generic map(N => N)
          port map(clk, st, mplier, mcand, done1, product1);

    clk <= not clk after 10 ns;

    process
    begin
        for i in 1 to N loop
            mcand <= MCANDARR(i);
            mplier <= MPLIERARR(i);
            st <= '1';

            wait until rising_edge(clk);

            st <= '0';

            wait until done1 = '1';
            wait until rising_edge(clk);

            -- Mensajes en la terminal
            report "Multiplicación " & integer'image(i) & ": " &
                   "MCAND = " & integer'image(to_integer(unsigned(mcand))) & ", " &
                   "MPLIER = " & integer'image(to_integer(unsigned(mplier))) & ", " &
                   "Resultado = " & integer'image(to_integer(unsigned(product1))) & ", " &
                   "Esperado = " & integer'image(to_integer(unsigned(mplier) * unsigned(mcand)));
        end loop;

        report "Simulación completa" severity note;

        wait;
    end process;
end testbench;
