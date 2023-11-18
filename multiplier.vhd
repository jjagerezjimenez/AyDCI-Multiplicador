library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity multiplier is
    generic (
        constant N : natural := 4
    );
    port (
        clk, st : in std_logic;
        mplier, mcand : in std_logic_vector(N-1 downto 0);
        done : out std_logic;
        product : out std_logic_vector((2*N)-1 downto 0)
    );
end multiplier;

architecture solucion of multiplier is
    component control_mplier is
        generic (
            constant N : natural := 4
        );
        port (
            clk, st, m : in std_logic;
            sh, ad, done, load : out std_logic
        );
    end component;
    
    component acumulador_mplier is
        generic (
            constant N : natural := 4
        );
        port (
            clk, load, sh, ad : in std_logic;
            m : out std_logic;        
            mplier : in std_logic_vector(N-1 downto 0);
            mcand : in std_logic_vector(N-1 downto 0);
            product : out std_logic_vector((2*N)-1 downto 0)
        );
    end component;

    signal ad, sh, load, m : std_logic;
    signal done_internal : std_logic;
    
begin
    -- Instancias
    acc : acumulador_mplier
        generic map (N => N)
        port map (
            mplier => mplier,
            mcand => mcand,
            product => product,
            clk => clk,
            ad => ad,
            sh => sh,
            load => load,
            m => m
        );

    ctrl : control_mplier
        generic map (N => N)
        port map (
            clk => clk,
            st => st,
            ad => ad,
            done => done_internal,
            load => load,
            sh => sh,
            m => m
        );

    -- Lógica de salida
    done <= done_internal;

end solucion;
