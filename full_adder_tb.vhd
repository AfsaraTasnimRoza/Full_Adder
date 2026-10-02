library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_tb is
end full_adder_tb;

architecture behavior of full_adder_tb is

    component full_adder
    port(
        A    : in std_logic;
        B    : in std_logic;
        Cin  : in std_logic;
        Sum  : out std_logic;
        Cout : out std_logic
    );
    end component;

    signal A    : std_logic := '0';
    signal B    : std_logic := '0';
    signal Cin  : std_logic := '0';
    signal Sum  : std_logic;
    signal Cout : std_logic;

begin

    uut: full_adder
    port map (
        A => A,
        B => B,
        Cin => Cin,
        Sum => Sum,
        Cout => Cout
    );

    stim_proc: process
    begin

        A <= '0';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;

        A <= '0';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;

        A <= '0';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;

        A <= '0';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        A <= '1';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;

        A <= '1';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;

        A <= '1';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;

        A <= '1';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        wait;

    end process;

end behavior;
