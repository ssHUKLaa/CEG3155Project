LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_8to1_1bit IS
	PORT(
		d_in : IN STD_LOGIC_VECTOR(7 downto 0);  -- 8 inputs
		sel : IN STD_LOGIC_VECTOR(2 downto 0);   -- 3-bit selector
		d_out : OUT STD_LOGIC                    -- Output
	);
END mux_8to1_1bit;

ARCHITECTURE structural OF mux_8to1_1bit IS
	SIGNAL sel_not : STD_LOGIC_VECTOR(2 downto 0);
	SIGNAL and_terms : STD_LOGIC_VECTOR(7 downto 0);
BEGIN
	sel_not(0) <= NOT sel(0);
	sel_not(1) <= NOT sel(1);
	sel_not(2) <= NOT sel(2);

	and_terms(0) <= d_in(0) AND sel_not(2) AND sel_not(1) AND sel_not(0);
	and_terms(1) <= d_in(1) AND sel_not(2) AND sel_not(1) AND sel(0);
	and_terms(2) <= d_in(2) AND sel_not(2) AND sel(1) AND sel_not(0);
	and_terms(3) <= d_in(3) AND sel_not(2) AND sel(1) AND sel(0);
	and_terms(4) <= d_in(4) AND sel(2) AND sel_not(1) AND sel_not(0);
	and_terms(5) <= d_in(5) AND sel(2) AND sel_not(1) AND sel(0);
	and_terms(6) <= d_in(6) AND sel(2) AND sel(1) AND sel_not(0);
	and_terms(7) <= d_in(7) AND sel(2) AND sel(1) AND sel(0);

	d_out <= and_terms(0) OR and_terms(1) OR and_terms(2) OR and_terms(3) OR
	         and_terms(4) OR and_terms(5) OR and_terms(6) OR and_terms(7);
END structural;
