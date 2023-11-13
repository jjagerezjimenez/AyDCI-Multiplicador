library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Multiplicador_Binario is

    Port (
        A : in STD_LOGIC_VECTOR (n-1 downto 0);
        B : in STD_LOGIC_VECTOR (n-1 downto 0);
        P : out STD_LOGIC_VECTOR (2*n-1 downto 0)
    );
end Multiplicador_Binario;

architecture Behavioral of Multiplicador_Binario is

    -- Definición de la señal de resultado
    signal Resultado : STD_LOGIC_VECTOR (2*n-1 downto 0) := (others => '0');

begin

    -- Lógica de entrada
    process(A, B)
        variable temp : STD_LOGIC_VECTOR (2*n-1 downto 0) := (others => '0');

    begin
        -- Bucle que realiza la multiplicación y actualiza el resultado
        for i in 0 to n-1 loop
            if A(i) = '1' then
                temp := (others => '0');  -- Limpiar temp
                temp(n+i downto i) <= B;  -- Multiplicar B por el bit correspondiente de A
                Resultado <= Resultado + temp;  -- Sumar el resultado parcial a la acumulación total NOTA: latch?
            end if;
        end loop;
    end process;

    -- Lógica de salida
    P <= Resultado;  -- Asignar el resultado a la salida
end Behavioral;

