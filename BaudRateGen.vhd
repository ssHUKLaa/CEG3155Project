library ieee;
use ieee.std_logic_1164.all;

ENTITY BaudRateGen IS
	PORT (
		GClock, GReset : IN STD_LOGIC;
		SEL : IN STD_LOGIC_VECTOR(2 downto 0);
		BClk, BClkx8 : OUT STD_LOGIC
	);
END BaudRateGen;

ARCHITECTURE basic of BaudRateGen IS
	
	COMPONENT counter_6bit
		PORT (
			CLK   : in STD_LOGIC;
			i_enable   : in STD_LOGIC;
			i_hold : IN STD_LOGIC;
			i_reset : IN STD_LOGIC;
			COUNT : out STD_LOGIC_VECTOR (5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT counter_8bit
		PORT (
			CLK   : in STD_LOGIC;
			i_enable   : in STD_LOGIC;
			i_hold : IN STD_LOGIC;
			i_reset : IN STD_LOGIC;
			COUNT : out STD_LOGIC_VECTOR (7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT equality_Comparator_6bit
		PORT (
			A, B : IN STD_LOGIC_VECTOR(5 downto 0);
			isEqual : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT mux_2to1_1bit
		PORT (
			d0 : IN STD_LOGIC;
			d1 : IN STD_LOGIC;
			sel : IN STD_LOGIC;
			d_out : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT mux_8to1_1bit
		PORT (
			d_in : IN STD_LOGIC_VECTOR(7 downto 0);  -- 8 inputs
			sel : IN STD_LOGIC_VECTOR(2 downto 0);   -- 3-bit selector
			d_out : OUT STD_LOGIC                    -- Output
		);
	END COMPONENT;
	
	component d_FF
       Port (
				i_d, i_en, i_reset			: IN	STD_LOGIC;
				i_clock			: IN	STD_LOGIC;
				o_q, o_qBar		: OUT	STD_LOGIC
       );
    end component;
	
	SIGNAL fourty, clockVal : STD_LOGIC_VECTOR(5 downto 0);
	SIGNAL newclk : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL STDDiv41Clock, div41IsEqual, div41IsEqualGated, resetCheck : STD_LOGIC;
	SIGNAL STDDiv41ClockValue : STD_LOGIC := '1';
begin
	fourty <= "101000";
	resetCheck <= GReset OR div41IsEqualGated;
	
	counter_6bit_div41 : counter_6bit
		PORT MAP (
			CLK => GClock,
			i_enable => '1',
			i_hold => '0',
			i_reset => resetCheck,
			COUNT => clockVal
		);
	
	equality_Comparator_6bit_check41 : equality_Comparator_6bit
		PORT MAP (
			A => clockVal,
			B => fourty,
			isEqual => div41IsEqual
		);
		
	d_FF_Gate_isEqual : d_FF
		PORT MAP (
			i_d => div41IsEqual,
			i_en => '1',
			i_reset => GReset,
			i_clock => GClock,
			o_q => div41IsEqualGated,
			o_qBar => open
		);
	
	STDDiv41ClockValue <= ((STDDiv41Clock XOR div41IsEqualGated) AND NOT GReset) OR GReset;
	
	d_FF_Gate_clk : d_FF
		PORT MAP (
			i_d => STDDiv41ClockValue,
			i_en => '1',
			i_reset => '0',
			i_clock => GClock,
			o_q => STDDiv41Clock,
			o_qBar => open
		);
	
	counter_8bit_inst : counter_8bit
		PORT MAP (
			CLK => STDDiv41Clock,
			i_enable => '1',
			i_hold => '0',
			i_reset => GReset,
			COUNT => newclk
		);
		
	mux_8to1_1bit_inst : mux_8to1_1bit
		PORT MAP (
			d_in => newclk,
			sel => SEL,
			d_out => BClk
		);
	
	BClkx8 <= newclk(0);
		
end basic;