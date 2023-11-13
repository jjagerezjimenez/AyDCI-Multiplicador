library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Multiplicador_Binario_TB is
end Multiplicador_Binario_TB;

architecture TB_ARCH of Multiplicador_Binario_TB is
    constant n : integer := 4;  -- Puedes ajustar este valor según sea necesario
    signal A, B : STD_LOGIC_VECTOR(n-1 downto 0) := (others => '0');
    signal P_expected : STD_LOGIC_VECTOR(2*n-1 downto 0) := (others => '0');
    signal P_actual : STD_LOGIC_VECTOR(2*n-1 downto 0);

    component Multiplicador_Binario
        Port ( A : in STD_LOGIC_VECTOR (n-1 downto 0);
               B : in STD_LOGIC_VECTOR (n-1 downto 0);
               P : out STD_LOGIC_VECTOR (2*n-1 downto 0)
             );
    end component;
begin
    -- Instanciar el multiplicador binario
    UUT: Multiplicador_Binario port map (A, B, P_actual);

    -- Proceso de estímulo
    stimulus: process
    begin
        -- Establecer los valores de entrada A y B
        A <= "1101";  --13
        B <= "1011";  --11

        -- Calcular el resultado esperado para la simulación
        P_expected <= (others => '0');
        for i in 0 to n-1 loop
            if A(i) = '1' then
                P_expected(n+i downto i) <= B;
            end if;
        end loop;

        -- Esperar un poco antes de verificar el resultado
        wait for 10 ns;

        -- Verificar si el resultado esperado coincide con el resultado real
        assert P_actual = P_expected
            report "Test failed!"
            severity error;

        wait;
    end process;
end TB_ARCH;
