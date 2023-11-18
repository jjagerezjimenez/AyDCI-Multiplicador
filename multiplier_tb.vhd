library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity multiplier_tb is
end entity;

architecture testbench of multiplier_tb is
    component multiplier is
        generic (
            constant N : natural := 4
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

    prueba: process
        variable pass : BOOLEAN := TRUE;
    begin
        wait for 10 ns; 
        
        mplier <= "1111";  -- 1111 x 0000
        mcand <= "0000";
        st <= '1';
        wait until rising_edge(clk);
        st <= '0';
        wait for 100 ns;
        wait until rising_edge(clk);
        report "DEBUG: i = 0 numeros = " & to_string(numeros) & " product = " & to_string(product) & " done = " & to_string(done) severity note;

        mplier <= "1111";  -- 1111 x 1111
        mcand <= "1111";
        st <= '1';
        wait until rising_edge(clk);
        st <= '0';
        wait for 100 ns;
        wait until rising_edge(clk);
        report "DEBUG: i = 1 numeros = " & to_string(numeros) & " product = " & to_string(product) & " done = " & to_string(done) severity note;

        mplier <= "1101";  -- 13 x 11
        mcand <= "1011";
        st <= '1';
        wait until rising_edge(clk);
        st <= '0';
        wait for 100 ns;
        wait until rising_edge(clk);
        report "DEBUG: i = 2 numeros = " & to_string(numeros) & " product = " & to_string(product) & " done = " & to_string(done) severity note;

        mplier <= "1100";  -- 1100 x 0011
        mcand <= "0011";
        st <= '1';
        wait until rising_edge(clk);
        st <= '0';
        wait for 100 ns;
        wait until rising_edge(clk);
        report "DEBUG: i = 3 numeros = " & to_string(numeros) & " product = " & to_string(product) & " done = " & to_string(done) severity note;

        mplier <= "0001";  -- 0001 x 0001
        mcand <= "0001";
        st <= '1';
        wait until rising_edge(clk);
        st <= '0';
        wait for 100 ns;
        wait until rising_edge(clk);
        report "DEBUG: i = 4 numeros = " & to_string(numeros) & " product = " & to_string(product) & " done = " & to_string(done) severity note;

        mplier <= "0010";  -- 0010 x 0001
        mcand <= "0001";
        st <= '1';
        wait until rising_edge(clk);
        st <= '0';
        wait for 100 ns;
        wait until rising_edge(clk);
        report "DEBUG: i = 5 numeros = " & to_string(numeros) & " product = " & to_string(product) & " done = " & to_string(done) severity note;

        mplier <= "0010";  -- 0010 x 0010
        mcand <= "0010";
        st <= '1';
        wait until rising_edge(clk);
        st <= '0';
        wait for 100 ns;
        wait until rising_edge(clk);
        report "DEBUG: i = 6 numeros = " & to_string(numeros) & " product = " & to_string(product) & " done = " & to_string(done) severity note;

        wait until done = '1';

        report "DEBUG: Testbench completed." severity note;

        wait;
    end process prueba;

end architecture testbench;
