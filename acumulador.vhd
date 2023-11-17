library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--TODO: testbench

entity acumulador_mplier is
    generic(
        constant N : natural := 1);
    port(
        clk,load,sh,ad : in std_logic;
        m           : out std_logic;
        mplier : in std_logic_vector(N-1 downto 0);
        mcand : in std_logic_vector(N-1 downto 0);
        product: out std_logic_vector (2*N-1 downto 0));
end  acumulador_mplier;

architecture solucion of acumulador_mplier is
signal  resultado, resultado_n:  std_logic_vector (2*N downto 0);
signal done : std_logic := '0';

begin
    acc_process: process(clk)
    begin
        if rising_edge(clk) then
            resultado <= resultado_n;
        end if;
    end process acc_process;

    resultado_n_process: process(all)
        begin
            resultado_n <= resultado;
            if load then
                resultado_n(2*N downto N) <= (others => '0');
                resultado_n(N-1 downto 0) <=  mplier;
            elsif ad then 
                resultado_n(2*N downto N) <= std_logic_vector(  unsigned('0' & mcand)  
                                                            + unsigned('0' & resultado((2*N)-1 downto N+1)));
            elsif sh then
                resultado_n(2*N-1 downto 0) <= resultado(2*N downto 1);
                resultado_n(2*N) <= '0';
            end if;
        end process resultado_n_process;

    m <= resultado (0);
    product <= resultado(2*N downto 1);
--    process(clk)
--    begin
--        if rising_edge(clk) then 
--            if done = '0' then
--                if ad or load or sh then
--                    done <= '1'; 
--                end if;
--            else
--                done <= '0';
--                product <= resultado(2*N downto 1);
--            end if;
--            --report "done = " & to_string(done) severity note;--test poara done, quitar despoues
--        end if;
--    end process;

   --m <= resultado (0);

end solucion;
