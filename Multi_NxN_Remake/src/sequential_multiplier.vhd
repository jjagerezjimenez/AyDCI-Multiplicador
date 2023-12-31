library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sequential_multiplier is

    generic (
        N: integer := 6  -- Establece el valor predeterminado según tus necesidades
    );

    port (
        clk, st:          in std_logic;
        mplier, mcand:    in std_logic_vector(N - 1 downto 0);
        done:             out std_logic;
        product:          out std_logic_vector((2 * N) - 1 downto 0)
    );
end sequential_multiplier;

architecture arch_seq_mult of sequential_multiplier is
  
    signal estado_act, estado_sig:  integer range 0 to N - 1;
    signal cnt_act, cnt_sig:        integer range 0 to N;
    signal K, M:                    std_logic;
    signal acu_act, acu_sig:        std_logic_vector((2 * N)  downto 0);
    signal Load, Ad, Sh:            std_logic;
    signal suma:                    std_logic_vector(N downto 0); -- Ajuste de longitud
    signal acu_suma:                std_logic_vector(N - 1 downto 0);

begin

    M         <= acu_act(0);
    acu_suma  <= acu_act((2 * N) - 1 downto N);
    product   <= acu_act((2 * N) - 1 downto 0);

    -- sumador
    suma      <= std_logic_vector(unsigned('0' & mcand) + unsigned('0' & acu_suma));

    -- memoria de estado y acumulador
    process (clk)
      begin
          if  rising_edge(clk) then
              estado_act <= estado_sig;
              cnt_act <= cnt_sig;
              acu_act <= acu_sig;
          end if;
    end process;

    -- controlador
    process (estado_act, st, M,K)
    begin
        Load            <= '0';
        Sh              <= '0';
        Ad              <= '0';
        done            <= '0';
        estado_sig      <= estado_act;

        case estado_act is
            when 0 => --estado inicial
                if  st = '1' then
                                  Load        <= '1';
                                  estado_sig  <= 1;
                end if;
--modificacion incorporando el contador, ex-estado "add/shift"

            when 1 =>       if K = '0' and M = '0' then
                                    Sh          <= '1';
                                    estado_sig  <=  1;
                            elsif M = '1' then
                                    Ad          <= '1';
                                    estado_sig  <=  2;
                            elsif K = '1' and M =  '0' then
                                    Sh          <= '1';
                                    estado_sig  <=  3;
                            end if;

            when 2 =>   Sh <= '1';
                            if K = '0' then
                                estado_sig      <= 1;
                            else
                                estado_sig      <= 3;
                            end if;

            when 3 => -- fin del ciclo
                                done            <= '1';
                                estado_sig      <=  0;
          end case;
    end process;

    --logica contador
    cnt_sig     <=  0 when (st = '1') else (cnt_act + 1) when (Sh = '1' and K = '0') else cnt_act;
    K           <= '1' when (cnt_act = (N-1)) else '0';     --o menor e igual? ver

    -- acumulador
    process (Load, Sh, Ad, mplier, acu_act, suma)
    begin
        acu_sig <= (others => '0');
        if Load = '1' then 
            -- carga multiplicador en bits menos significativos
            acu_sig (N-1 downto 0) <=  mplier;
        elsif Ad = '1' then
            -- carga la suma en los bits más significativos del acumulador
            acu_sig <= suma & acu_act((N-1) downto 0);
        elsif Sh = '1' then
            -- desplaza a derecha, completa MSB con cero
            acu_sig <= '0' & acu_act((2 * N) downto 1);
        else 
            -- Si ninguna de las señales está activa, mantiene el contenido
            acu_sig <= acu_act;
        end if;
    end process;

end arch_seq_mult;
