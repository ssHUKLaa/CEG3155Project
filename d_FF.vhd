LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY d_FF IS
	PORT(
		i_d, i_en, i_reset			: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		o_q, o_qBar		: OUT	STD_LOGIC);
END d_FF;

ARCHITECTURE rtl OF d_FF IS
	SIGNAL int_q : STD_LOGIC;
BEGIN
	oneBitRegister:
PROCESS(i_reset, i_clock)
BEGIN
	IF (i_reset = '1') THEN
		int_q	<= '0';
	ELSIF (i_clock'EVENT and i_clock = '1') THEN
		IF (i_en = '1') THEN
			int_q	<=	i_d;
		END IF;
	END IF;
END PROCESS oneBitRegister;

	--  Output Driver

	o_q		<=	int_q;
	o_qBar		<=	not(int_q);

END rtl;
