LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY UART IS
	PORT (
		RxD, Load, GReset, GClock : IN STD_LOGIC;
		State_Information : IN STD_LOGIC_VECTOR(5 downto 0);
		TxD, CanProceedState : OUT STD_LOGIC
	);
END UART;

ARCHITECTURE basic of UART IS

	COMPONENT UARTTransmitter
		PORT (
			loadTDR, GReset, GClock, BaudRate, shiftLoad : IN STD_LOGIC;
			D_In : IN STD_LOGIC_VECTOR(6 downto 0);
			TxD, TDRE, countEqualTenOut : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT counter_4bit
		PORT (
			CLK   : in STD_LOGIC;
         i_enable   : in STD_LOGIC;
		   i_hold : IN STD_LOGIC;
		   i_reset : IN STD_LOGIC;
         COUNT : out STD_LOGIC_VECTOR (3 downto 0)
		);	
	END COMPONENT;
	
	COMPONENT equality_Comparator_4bit
		PORT (
			A, B : IN STD_LOGIC_VECTOR(3 downto 0);
			isEqual : OUT STD_LOGIC		
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
	 
	 COMPONENT mux_8to1_1bit
		PORT (
			d_in : IN STD_LOGIC_VECTOR(7 downto 0);  -- 8 inputs
			sel : IN STD_LOGIC_VECTOR(2 downto 0);   -- 3-bit selector
			d_out : OUT STD_LOGIC 
		);
	END COMPONENT;
	
	SIGNAL TransitorySCSROutLatched, TransitorySCCRLatched, DataBus, TransitoryRDROut, TransitorySCCROut, TransitorySCSROut, TransitoryRDRHeld : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL TransitoryMSTLState, TransitorySSTLState : STD_LOGIC_VECTOR(1 downto 0);
	SIGNAL selectBits, ByteToSelect : STD_LOGIC_VECTOR(2 downto 0);
	SIGNAL BytesSent : STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL TransitoryTxD, TransitoryCanProceedStateLatched, transitoryCountEqualTen, incrementByteCounter, ResetByteCounter, TransitoryCanProceedState, DoneSendingWord, BClk, BClkx8, transitoryRDRF, transitoryTDRE, transitoryTDRELatched : STD_LOGIC;
	SIGNAL ByteToSend, transitoryTDRByte, ByteCR, ByteM, ByteY, ByteR, ByteUnderscore, ByteS, ByteG : STD_LOGIC_VECTOR(6 downto 0);
	SIGNAL WordToSend, State1Word, State2Word, State3Word, State4Word : STD_LOGIC_VECTOR(41 downto 0);
begin
	
	ByteM <= "1001101";
	ByteY <= "1011001";
	ByteR <= "1010010";
	ByteUnderscore <= "1011111";
	ByteS <= "1010011";
	ByteG <= "1000111";
	ByteCR <= "0001101";
	
	State1Word <= ByteM & ByteG & ByteUnderscore & ByteS & ByteR & ByteCR; 
	State2Word <= ByteM & ByteY & ByteUnderscore & ByteS & ByteR & ByteCR; 
	State3Word <= ByteM & ByteR & ByteUnderscore & ByteS & ByteG & ByteCR; 
	State4Word <= ByteM & ByteR & ByteUnderscore & ByteS & ByteY & ByteCR; 

	WordToSend <= State1Word when (State_Information = "100001") else
              State2Word when (State_Information = "010001") else
              State3Word when (State_Information = "001100") else
              State4Word when (State_Information = "001010") else
				  State1Word when (State_Information = "001001") else
              (others => '0');
				  
	ByteToSend <= WordToSend(41 downto 35) when BytesSent = "0000" else
                  WordToSend(34 downto 28) when BytesSent = "0001" else
                  WordToSend(27 downto 21) when BytesSent = "0010" else
                  WordToSend(20 downto 14) when BytesSent = "0011" else
                  WordToSend(13 downto 7)  when BytesSent = "0100" else
                  WordToSend(6 downto 0)   when BytesSent = "0101" else
                  (others => '0');
	
	incrementByteCounter <= transitoryTDRELatched AND TransitoryCountEqualTen;
	d_FF_proceedStateLatched : d_FF
		PORT MAP (
			i_d => TransitoryCanProceedState,
			i_en => '1',
			i_reset => GReset,
			i_clock => GClock,
			o_q => TransitoryCanProceedStateLatched,
			o_qBar => open
		);
	CanProceedState <= TransitoryCanProceedStateLatched;
	ResetByteCounter <= GReset OR TransitoryCanProceedStateLatched;
	
	counter_4bit_BytesSent : counter_4bit
		PORT MAP (
			CLK => incrementByteCounter,
			i_enable => '1',
			i_hold => '0',
			i_reset => ResetByteCounter,
			COUNT => BytesSent
		);
		
	equality_Comparator_4bit_sent6Bytes : equality_Comparator_4bit
		PORT MAP (
			A => BytesSent,
			B => "0110",
			isEqual => TransitoryCanProceedState
		);
	
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
		
	selectBits <= "000";
	
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
			RxD => TransitoryTxD,
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
			D_In => ByteToSend,
			TxD => TransitoryTxD,
			TDRE => transitoryTDRE,
			countEqualTenOut => TransitoryCountEqualTen
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
	TxD <= TransitoryTxD;

end basic;