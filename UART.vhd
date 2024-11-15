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
			D_In : IN STD_LOGIC_VECTOR(6 downto 0);
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
	
	COMPONENT UARTaddressDecode
		PORT (
			Address : in STD_LOGIC_VECTOR(1 downto 0);
			RWbar   : in STD_LOGIC;
			DecodeOut   : out STD_LOGIC_VECTOR(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT d_FF
        PORT(
            i_d, i_en, i_reset       : IN  STD_LOGIC;
            i_clock   : IN  STD_LOGIC;
            o_q       : OUT STD_LOGIC;
            o_qBar    : OUT STD_LOGIC
        );
    END COMPONENT;
	
	SIGNAL TransitorySCSROutLatched, TransitorySCCRLatched, DataBus, TransitoryRDROut, TransitorySCCROut, TransitorySCSROut, TransitoryRDRHeld : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL selectBits : STD_LOGIC_VECTOR(2 downto 0);
	SIGNAL BClk, BClkx8, transitoryRDRF, transitoryTDRE, transitoryTDRELatched : STD_LOGIC;
	SIGNAL transitoryTDRByte : STD_LOGIC_VECTOR(6 downto 0);
begin
	
	dFF_8bit_SCCR : dFF_8bit
		PORT MAP (
			i_d => TransitorySCCROut,
			i_en => '1',
			i_reset => GReset,
			i_clock => GClock,
			o_q => TransitorySCCRLatched,
			o_qBar => open
		);
	TransitorySCSROut(6) <= transitoryRDRF;
	
	dFF_8bit_SCSR : dFF_8bit
		PORT MAP (
			i_d => TransitorySCSROut,
			i_en => '1',
			i_reset => GReset,
			i_clock => GClock,
			o_q => TransitorySCSROutLatched,
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
			RecieveOut => TransitoryRDROut,
			RDRF => transitoryRDRF
		);
	
	
	dFF_8bit_HoldRecieverOut : dFF_8bit
		PORT MAP (
			i_d => TransitoryRDROut,
			i_en => '1',
			i_reset => GReset,
			i_clock => transitoryRDRF,
			o_q => TransitoryRDRHeld,
			o_qBar => open
		);
	
	UARTTransmitter_inst : UARTTransmitter
		PORT MAP (
			loadTDR => '1',
			GReset => GReset,
			GClock => GClock,
			BaudRate => BClk,
			shiftLoad => transitoryTDRELatched,
			D_In => D_In(6 downto 0),
			TxD => TxD,
			TDRE => transitoryTDRE
		);
		
	d_FF_latchTDRE : d_FF
		PORT MAP (
			i_d => transitoryTDRE,
			i_en => '1',
			i_reset => GReset,
			i_clock => GClock,
			o_q => transitoryTDRELatched,
			o_qBar => open
		);

end basic;