LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY UART IS
	PORT (
		RxD, Load, GReset, GClock : IN STD_LOGIC;
		D_In, SCCR_In : IN STD_LOGIC_VECTOR(7 downto 0);
		TxD : OUT STD_LOGIC;
		D_Out, SCCR_Out, SCSR_Out : OUT STD_LOGIC_VECTOR(7 downto 0)
	);
END UART;

ARCHITECTURE basic of UART IS
	COMPONENT UARTTransmitter
		PORT (
			loadTDR, GReset, GClock, BaudRate, shiftLoad : IN STD_LOGIC;
			D_In : IN STD_LOGIC_VECTOR(7 downto 0);
			TxD, TDRE : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT UARTReciever
		PORT (
			RxD, GReset, BClkx8, GClock : IN STD_LOGIC;
			RecieveOut : OUT STD_LOGIC_VECTOR(7 downto 0);
			RDRF : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT dFF_8bit
		PORT (
			i_d         : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit input data
			i_en		  : IN STD_LOGIC;
			i_reset	  : IN STD_LOGIC;
			i_clock     : IN  STD_LOGIC;                      -- Clock input
			o_q         : OUT STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit output data
			o_qBar      : OUT STD_LOGIC_VECTOR(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT BaudRateGen
		PORT (
			GClock, GReset : IN STD_LOGIC;
			SEL : IN STD_LOGIC_VECTOR(2 downto 0);
			BClk, BClkx8 : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT InterruptGenerator
		PORT (
			TIE, RIE, RDRF, OE, TDRE: in std_logic;
			IRQ : out std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
	SIGNAL DataBus, TransitorySCCROut, TransitorySCSROut : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL selectBits : STD_LOGIC_VECTOR(2 downto 0);
	SIGNAL BClk, BClkx8 : STD_LOGIC;
begin

	dFF_8bit_SCCR : dFF_8bit
		PORT MAP (
			i_d => ,
			i_en => ,
			i_reset => GReset,
			i_clock => GClock,
			o_q => TransitorySCCROut,
			o_qBar => open
		);
		
	dFF_8bit_SCSR : dFF_8bit
		PORT MAP (
			i_d => ,
			i_en => ,
			i_reset => GReset,
			i_clock => GClock,
			o_q => TransitorySCSROut,
			o_qBar => open
		);
		
	selectBits <= TransitorySCCROut(2 downto 0);
	
	BaudRateGen_inst : BaudRateGen
		PORT MAP (
			GClock => GClock,
			GReset => GReset,
			SEL => selectBits,
			BClk => BClk,
			BClkx8 => BClkx8
		);
		
	UARTReciever_inst : UARTReciever
		PORT MAP (
			RxD => RxD,
			GClock => GClock,
			BClkx8 => BClkx8,
			GReset => GReset,
			RecieveOut => ,
			RDRF => 
		);
	
	

end basic;