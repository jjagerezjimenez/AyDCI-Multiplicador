library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity multiplier_tb is
end entity;

architecture testbench of multiplier_tb is
    component multiplier is
        generic (
            constant N : natural := 1
        );
        port (
            clk, st : in STD_LOGIC;
            mplier, mcand : in STD_LOGIC_VECTOR(N-1 downto 0);
            done : out STD_LOGIC;
            product : out STD_LOGIC_VECTOR(((2*N)-1) downto 0)
        );
    end component;

    constant M : natural := 4;   
    signal clk, st : STD_LOGIC := '0';
    signal done : STD_LOGIC;
    signal product : STD_LOGIC_VECTOR(2*M-1 downto 0);
    signal mplier, mcand : STD_LOGIC_VECTOR(M-1 downto 0);
    signal numeros : STD_LOGIC_VECTOR(2*M-1 downto 0);

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
    variable pass : BOOLEAN := TRUE;
begin
    numeros <= (others => '0');
    wait for 10 ns; -- Asegura que las señales se estabilicen antes de comenzar la prueba

    for i in 0 to 2*M-1 loop
        st <= '1';
        wait until rising_edge(clk);
        st <= '0';
        wait for 100 ns;
        wait until rising_edge(clk);
        report "DEBUG: i = " & to_string(i) & " numeros = " & to_string(numeros) & " product = " & to_string(product) & " done = " & to_string(done) severity note;

        if (product /= std_logic_vector(unsigned(mcand) * unsigned(mplier))) then
            report "ERROR en " & to_string(mcand) & " x " & to_string(mplier) &
                " Se obtuvo " & to_string(product) & " Se esperaba " &
                to_string(unsigned(mcand) * unsigned(mplier)) severity error;
            pass := FALSE;
        end if;

        exit when done = '1';
    end loop;

    if pass then
        report "[PASS]";
    else
        report "[FAIL]" severity failure;
    end if;

    wait;
end process prueba;



end architecture testbench;

