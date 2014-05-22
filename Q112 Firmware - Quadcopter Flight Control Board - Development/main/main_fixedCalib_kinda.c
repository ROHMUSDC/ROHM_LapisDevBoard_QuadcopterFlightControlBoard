//*****************************************************************************
// PROGRAM:	 LaPi Development Board Demo Code for LAPIS ML610Q112 micro
// PROJECT:	 QUAD COPTER CONTROL BOARD
//
// AUTHORS:	 C. Schell & K. Bahar
//		 	 ROHM Semiconductor USA, LLC
//		 	 US Design Center
//
// STARTED:  DECEMBER 4th, 2013
// UPDATED:	 FEBRUARY 18th, 2014
//*****************************************************************************

//*****************************************************************************
// Microcontroller's connections on the LaPi Development Board to the 
//  Plug 'n Play, Raspberry Pi Compatible, Universal Connectors:
//
// HARDWARE:
//	ESC#1 to PortC.0 => PWM Output...
//	ESC#2 to PortB.2 => PWM Output...
//	ESC#3 to PortA.0 => PWM Output...
//	ESC#4 to PortA.1 => PWM Output...
//
// 3-Axis Accelerometer & Gyro (SEN-11028) to => I2C Pins SDA: B.6; SCL B.5
// Ultrasonic Range Finder (MB1242) to => I2C Pins SDA: B.6; SCL B.5

//-----------------------------------------------------...Need to fill the rest of this out...

// ================================ QUADCOPTER Pinout ======================== 
// I/O PIN DATA ALIASES...
	//ESC CONTROLLER PINS (PWM)
		#define ESC_1		PC0D	// OUTPUT: ESC#1 => PortC.0 (PWMF0)
		#define ESC_2		PB2D	// OUTPUT: ESC#2 => PortB.2 (PWME)	
		#define ESC_3		PA0D	// OUTPUT: ESC#3 => PortA.0 (PWMC
		#define ESC_4		PA1D	// OUTPUT: ESC#4 => PortA.1 (PWMD)

	//USER DEFINED LED's	
		#define LED_1		PA2D	// USER LED #1 => PortA.2
		#define LED_2		PB7D	// USER LED #2 => PortB.7	
		#define LED_3		PC1D	// USER LED #3 => PortC.0	
		#define LED_4		PC2D	// USER LED #4 => PortC.1

	//COMMUNICATION PINS	
		#define MCU_to_MCU	P0DD	// Pin to connectD0 of Q112 to A) of Q111 to wake it up, etc

		#define I2C_SDA 	PB6D	// SDA => PortB.6 
		#define I2C_SCL 	PB5D	// SCL => PortB.5 (SHARED WITH SPI CLK!) 
		
		#define RX 			PB0D 	// UART RX => PortB.0
		#define TX 			PB1D 	// UART TX => PortB.1 

		#define SPI_SCL 	PB5D 	// SPI CLK => PortB.5 (SHARED WITH I2C CLK!)
		#define SPI_MOSI	PB4D 	// SPI MOSI => PortB.4
		#define SPI_MISO	PB3D 	// SPI MISO => PortB.3
		#define SPI_CS0		PD4D 	// SPI CS0 => PortD.4
		#define SPI_CS1 	PD5D 	// SPI CS1 => PortD.5

	//Receiver Inputs
		#define THROTTLE	PD2D	//	INPUT (NOT USED - JUST temporarily reserved for Receiver Inputs)
		#define YAW			PD3D	//	INPUT (NOT USED - JUST temporarily reserved for Receiver Inputs)
		#define PITCH		PD4D	//	INPUT (NOT USED - JUST temporarily reserved for Receiver Inputs)
		#define ROLL		PD5D	//	INPUT (NOT USED - JUST temporarily reserved for Receiver Inputs)	

	//MISC I/O Pins
		#define COM_Select	PC5D	//	INPUT to Select BLE or RADIO as COMM MASTER
		#define RANGE_STAT	PC6D	//	INPUT to READ Ultrasonic STATUS Pin
		#define AccGyr_STAT	PC7D	//	I/O Gyro Interrupt Pin
		#define PingSensor  PD1D	//  Pin to trigger Hack/HD - 1080p Camera
		
//=============================================================================

//=============================================================================
//Pin Direction Aliases:
	#define I2C_SDA_DIR PB6DIR
	#define I2C_SCL_DIR PB5DIR	
//=============================================================================


//*****************************************************************************
// Microcontroller's connections on the LaPi Development Board to the 
//  Plug 'n Play, Raspberry Pi Compatible, Universal Connectors:
//
// ================================ ML610Q112 ================================= 
//
// Pin-01 => 3.3V Power					Pin-02 => 5.0V Power (VBUS)
// Pin-03 => I2C-SDA  (Q112 I/O B.6)	Pin-04 => no connection
// Pin-05 => I2C-SCL  (Q112 I/O B.5)*	Pin-06 => GROUND
// Pin-07 => GPIO #04 (Q112 I/O B.2)	Pin-08 => UART-TX  (Q112 I/O B.1)
// Pin-09 => no connection				Pin-10 => UART-RX  (Q112 I/O B.0) 
// Pin-11 => GPIO #17 (Q112 I/O C.0)	Pin-12 => GPIO #18 (Q112 I/O B.7)
// Pin-13 => GPIO #21 (Q112 I/O C.1)	Pin-14 => no connection
// Pin-15 => GPIO #22 (Q112 I/O C.2)	Pin-16 => GPIO #23 (Q112 I/O D.1)
// Pin-17 => no connection				Pin-18 => GPIO #24 (Q112 I/O D.2)
// Pin-19 => SPI-MOSI (Q112 I/O B.4)	Pin-20 => no connection
// Pin-21 => SPI-MISO (Q112 I/O B.3)	Pin-22 => GPIO #25 (Q112 I/O D.3)
// Pin-23 => SPI-SCLK (Q112 I/O B.5)*	Pin-24 => SPI-CS0  (Q112 I/O D.4)
// Pin-25 => no connection				Pin-26 => SPI-CS1  (Q112 I/O D.5)
//
//=============================================================================
//*****************************************************************************

//*****************************************************************************
// Q112 Microcontroller's I/O Pins at J4 on the LaPi Development Board to the
// LaPi Development Board 
//
// ================================ ML610Q112 ================================= 
//
// Pin-01 => A.0				Pin-02 => A.1
// Pin-03 => A.2				Pin-04 => B.0
// Pin-05 => B.1				Pin-06 => B.2
// Pin-07 => B.3				Pin-08 => B.4
// Pin-09 => B.5				Pin-10 => B.6 
// Pin-11 => B.7				Pin-12 => C.0
// Pin-13 => C.1				Pin-14 => C.2
// Pin-15 => C.3				Pin-16 => C.4
// Pin-17 => C.5				Pin-18 => C.6
// Pin-19 => C.7				Pin-20 => D.0
// Pin-21 => D.1				Pin-22 => D.2
// Pin-23 => D.3				Pin-24 => D.4
// Pin-25 => D.5				Pin-26 => GROUND
//
//=============================================================================
//*****************************************************************************


//***** PREPROCESSOR DIRECTIVES ***********************************************
// INCLUDED FILES...
// Include Path: common;main;irq;timer;clock;tbc;pwm;uart;

	#include	<ML610112.H>	// Lapis Micro ML610Q112 on LaPi Development Board
	#include	<stdlib.h>		// General-purpose utilities
	#include 	<uart.h>		// UART Function Prototypes
	#include 	<common.h>		// Common Definitions
	#include 	<irq.h>			// IRQ Definitions
	#include 	<mcu.h>			// MCU Definition
	#include	<i2c.h>			// I2C Definition.
	#include	<stdio.h>		// I/O-related processing
	#include 	<tbc.h>			// Set TBC (Timer Based Clock) API
	#include 	<timer.h>		// Timer Macros & APIs
	#include	<math.h>		// Mathematical functions
	
	//#include 	<main.h>		// Clear WDT API
	//#include 	<clock.h>		// Set System Clock API
	//#include	<ctype.h>		// Character classification and conversion 
	//#include	<errno.h>		// Error identifiers Library
	//#include	<float.h>		// Numerical limits for floating-point numbers
	//#include	<limits.h>		// Numerical limits for integers
	//#include	<muldivu8.h>	// Multiplication and Division accelerator
	//#include	<setjmp.h>		// Global jump (longjmp)
	//#include	<signal.h>		// Signal handling functions
	//#include	<stdarg.h>		// Variable numbers of arguments
	//#include	<stddef.h>		// Standard types and macros 
	//#include	<string.h>		// Character string manipulation routines
	//#include	<yfuns.h>		// 
	//#include	<yvals.h>		// Called for by most Header Files

//===========================================================================
//   MACROS: 
//===========================================================================

// ===== Peripheral setting.=====
#define HSCLK_KHZ	( 8000u )	// 8MHz = 8000kHz (will be multiplied by 1024 to give 8,192,000Hz)
#define FLG_SET	( 0x01u ) 

// SET DESIRED UART SETTINGS HERE! (Options in UART.h)
#define UART_BAUDRATE		( UART_BR_9600BPS) 	// Data Bits Per Second - Tested at rates from 2400bps to 512000bps!
#define UART_DATA_LENGTH	( UART_LG_8BIT )		// x-Bit Data
#define UART_PARITY_BIT		( UART_PT_NON )		// Parity
#define UART_STOP_BIT		( UART_STP_1BIT )		// x Stop-Bits
#define UART_LOGIC			( UART_NEG_POS )		// Desired Logic
#define UART_DIRECTION		( UART_DIR_LSB )		// LSB or MSB First

//*****************************************************************************

//*****************************************************************************
//===========================================================================
//   STRUCTURES: 
//===========================================================================
static const tUartSetParam  _uartSetParam = {	
	UART_BAUDRATE,					
	UART_DATA_LENGTH,			
	UART_PARITY_BIT,					
	UART_STOP_BIT,						
	UART_LOGIC,						
	UART_DIRECTION						
};
//*****************************************************************************


//*****************************************************************************
//===========================================================================
//   FUNCTION PROTOTYPES: 
//	Establishes the name and return type of a function and may specify the 
// 	types, formal parameter names and number of arguments to the function                                 
//===========================================================================
void main_clrWDT( void );			// no return value and no arguments
void Initialization( void );		// no return value and no arguments
void SetOSC( void );				// no return value and no arguments
void analog_comparator( void );		// no return value and no arguments
void PortA_Low( void );				// no return value and no arguments
void PortB_Low( void );				// no return value and no arguments
void PortC_Low( void );				// no return value and no arguments
void PortD_Low( void );				// no return value and no arguments
void PortA_Digital_Inputs( void );	// no return value and no arguments

void ESC1_PWM( void );
void ESC2_PWM( void );
void ESC3_PWM( void );
void ESC4_PWM( void );

void Get_RangeData(void);
void Get_PingData(void);
void Get_AccGyroData(void);
void Get_MagData(void);

void ClearVariables(void);
void ReturnSensorData(void);

void CalibrateMotorsAll(void);
void CalibrateMotor1(void);
void CalibrateMotor2(void);
void CalibrateMotor3(void);
void CalibrateMotor4(void);

void _funcUartFin( unsigned int size, unsigned char errStat );
void _funcI2CFin( unsigned int size, unsigned char errStat );
void checkI2C( void );
void main_reqNotHalt( void );
void _intUart( void );
void _intI2c( void );
void NOP( unsigned char sec );
void NOPms( unsigned int ms );
void NOPus( void );
void NOP1000( void );

void TBC_ISR( void );	//TBC Interrupt Service Routine...
void TMR8_ISR( void );

//*****************************************************************************

//GLOBALS...
unsigned char	_flgUartFin;
unsigned char 	_flgI2CFin;
unsigned char	_reqNotHalt;

static unsigned char			MPU6050Address = 0x68;
static unsigned char			AccGyro_PWRMGMT1REG = 0x6B;
static unsigned char			AccGyro_PWRMGMT1REG_Contents = 0x00;
static unsigned char			AccGyro_AccelConfig = 0x1C;
static unsigned char			AccGyro_AccelConfig_Contents = 0x18; // +-16g
static double					AccGyro_AccelScaling = 2048;
static unsigned char			AccGyro_GyroConfig = 0x1B;
static unsigned char			AccGyro_GyroConfig_Contents = 0x18; // +-2000deg/sec
static double					AccGyro_GyroScaling = 16.4;
static unsigned char			AccGyro_ReadData = 0x3B;
static unsigned char			AccGyro_Data[14];
static double					Accel_Xout = 0;
static double					Accel_Yout = 0;
static double					Accel_Zout = 0;
static double					Temp_out = 0;
static double					Gyro_Xout = 0;
static double					Gyro_Yout = 0;
static double					Gyro_Zout = 0;

static unsigned char			HMC5883Address = 0x1E;
static unsigned char			Mag_ConfigA = 0x00;
static unsigned char			Mag_ConfigA_Contents = 0x78; //8 Sample Average, 75Hz, Normal Mode
static unsigned char			Mag_ConfigB = 0x01;
static unsigned char			Mag_ConfigB_Contents = 0x60; //Default Gain
static unsigned char			Mag_ModeReg = 0x02;
static unsigned char			Mag_ModeReg_Contents = 0x01;
static unsigned char			Mag_ReadData = 0x03;
static unsigned char			Mag_Data[6];	//X,Z,Y (MSB,LSB for each)
static unsigned char			Mag_Status = 0x09;
static double					Mag_Xout = 0;
static double					Mag_Yout = 0;
static double					Mag_Zout = 0;
static double					Mag_Angle = 0;
static double					Mag_GainFactor = 1.52;
static double					Mag_DeclinationAngle = -0.128;	//Error Based on Location  //www.magnetic-declination.com

unsigned int 					timer = 0;	//timer variable for NOP
static unsigned int				Ping_timer = 0;
static double					Ping_out = 0;

static unsigned char			Range_Address = 0x70;
static unsigned char			Range_Output[2];
static unsigned char			Range_TakeRangeReading = 0x51;
static unsigned int				Range_out = 0;

static unsigned char			SensorReturn[150];

static unsigned char 			PWMflag;
static unsigned int 			PWMUpperDutyLimit = 19000;			//Value for Maximum Duty
static unsigned int 			PWMLowerDutyLimit = 10000;			//Value for Minimum Duty
static unsigned int				PWMMaxUpperPeriodLimit = 20000; 		//Value for Maximum Period
static unsigned char 			PWMCounter = 0;
static unsigned char 			PWMSensorResPerInc = 0;

/*GLOBAL PID LOOP Variables*/
static unsigned long lastTime;				// Time Elapsed Var	: 0 to 4,294,836,225
static double Input, Output, Setpoint;		// I/O & SP Vars	: 2.2250738585072014e-308 to 1.7976931348623157e+308
static double errSum, lastErr;				// ERROR vars		: 2.2250738585072014e-308 to 1.7976931348623157e+308
static double kp, ki, kd;					// P,I & D Constants: 2.2250738585072014e-308 to 1.7976931348623157e+308

/*############################################################################*/
/*#                                  APIs                                    #*/
/*############################################################################*/
//*****************************************************************************
//===========================================================================
//  	Start of MAIN FUNCTION
//===========================================================================
int main(void) 
{
int i;
unsigned char flag;

Init:
	Initialization(); //Ports, UART, Timers, Oscillator, Comparators, etc.
	CalibrateMotorsAll();
	/*
	CalibrateMotor1();
	NOP(1);
	CalibrateMotor2();	
	NOP(1);
	CalibrateMotor3();
	NOP(1);
	CalibrateMotor4();
	*/
	//PWM Increment-er Initialization Steps
	/*
	PWFP = 1050;
	PWEP = 1050;
	PWDP = 1050;
	PWCP = 1050;
	
	PWF0D = 525; //Can't be running to change
	PWED = 525;
	PWDD = 525;
	PWCD = 525;
	
	PFRUN = 1;
	PERUN = 1;
	PDRUN = 1;
	PCRUN = 1;
		
	PWMflag = 0;
	PWMUpperDutyLimit = 1000;
	PWMLowerDutyLimit = 525;
	*/
	
	PWMflag = 0;
	
	//while(1);
	
	
Main_Loop:	
		main_clrWDT();
		
	
		ClearVariables();
		Get_RangeData();
		//Get_PingData();
		Get_AccGyroData();
		Get_MagData();

		ReturnSensorData();
		
		
		//PWM Increment-er... 
		//This Code snippet will increment the PWM Duty Length by...
		// 1/1050 every 10ms
		if(PWMCounter < PWMSensorResPerInc){
			PWMCounter++;
		}
		else{
			if(PWED < PWMUpperDutyLimit){
				if(PWMflag == 0){
					PFRUN = 0;	//Turn OFF PWM
					PERUN = 0;
					PDRUN = 0;
					PCRUN = 0;
					PWF0D += 10; //Can't be running to change (Only this variable)
					PWED += 10;
					PWDD += 10;
					PWCD += 10;
					PFRUN = 1;	//Turn ON PWM
					PERUN = 1;
					PDRUN = 1;
					PCRUN = 1;
				}
				if(PWMflag == 1){
					PFRUN = 0;	//Turn OFF PWM
					PERUN = 0;
					PDRUN = 0;
					PCRUN = 0;
					PWF0D -= 10; //Can't be running to change (Only this variable)
					PWED -= 10;
					PWDD -= 10;
					PWCD -= 10;
					PFRUN = 1;	//Turn ON PWM
					PERUN = 1;
					PDRUN = 1;
					PCRUN = 1;
					if(PWED <= PWMLowerDutyLimit){
						PWMflag = 2;
					}
				}
			}
			if(PWED >= PWMUpperDutyLimit){
				PFRUN = 0;	//Turn OFF PWM
				PERUN = 0;
				PDRUN = 0;
				PCRUN = 0;
				PWF0D -= 10; //Can't be running to change (Only this variable)
				PWED -= 10;
				PWDD -= 10;
				PWCD -= 10;
				PWMflag = 1;
				PFRUN = 1;	//Turn ON PWM
				PERUN = 1;
				PDRUN = 1;
				PCRUN = 1;
			}
			PWMCounter = 0;
		}
		
		goto Main_Loop;
		
}//end main

//===========================================================================
//  	End of MAIN FUNCTION
//===========================================================================
//*****************************************************************************




//*****************************************************************************
//===========================================================================
//  	Start of Other Functions...
//===========================================================================
//*****************************************************************************


/*******************************************************************************
	Routine Name:	main_clrWDT
	Form:			void main_clrWDT( void )
	Parameters:		void
	Return value:	void
	Description:	clear WDT.
******************************************************************************/

void main_clrWDT( void )
{
	//How to clear the Watch Dog Timer:
	// => Write alternately 0x5A and 0xA5 into WDTCON register
	do {
		WDTCON = 0x5Au;
	} while (WDP != 1);
	WDTCON = 0xA5u;
}



//===========================================================================
//	Initialize Micro to Desired State...
//===========================================================================
static void Initialization(void){

	//Initialize Peripherals	
	//BLKCON2 Control Bits...Manually Set 4/12/2013
	DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
	DUA0  = 0; // 0=> Enables the operation of UART0 (initial value).
	DUA1  = 1; // 0=> Enables Uart1 (initial value). 
	DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
	DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).	
	
	BLKCON4 = 0x00; // 0=> Enables SA-ADC
	BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
	BLKCON7 = 0x00; // (1=disables; 0=enables) the operation of PWM (PWMC, PWMD, PWME, PWMF

	// Port Initialize
	PortA_Low();	//Initialize all 3 Ports of Port A to GPIO-Low
	PortB_Low();	//Initialize all 8 Ports of Port B to GPIO-Low
	PortC_Low();	//Initialize all 8 Ports of Port C to GPIO-Low
	PortD_Low();	//Initialize all 6 Ports of Port D to GPIO-Low

	// Set Oscillator Rate
    SetOSC();

  	
	// IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
	// INTERRUPT SETUP...
	irq_di();	// Disable Interrupts
	irq_init();	// Initialize Interrupts (All Off and NO Requests)

	//====================================================================
	//FOR NOTES ONLY...This is all taken care of in "irq_init()"
		// INTERRUPT ENABLE REGISTERS...
		//  IE0 = VOLTAGE LEVEL SUPERVISOR Int.
		//  IE1 = EXTERNAL Ints on B3, B2, B1, B0, A2, A1, & A0
		//  IE2 = SPI, A/D, I2C Slave & I2C Master Int.
		//  IE3 = TIMERS 8 & 9 Ints.
		//  IE4 = UART & COMPARATOR Ints.
		//  IE5 = TIMERS A, B, E & F Ints.
		//  IE6 = PWMC, PWMD, PWME, PWMF & 128Hz & 32Hz TBC Ints.
		//  IE7 = 16Hz & 2Hz TBC Ints.
		//IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;
		//--------------------------------------------------------------
		// INTERRUPT REQUEST FLAG REGISTERS...
		//  IRQ0 = WDT & VLS Int Requests
		//  IRQ1 = EXTERNAL Int Requests
		//  IRQ2 = SPI, A/D, I2C Slave & I2C Master Int Requests
		//  IRQ3 = TIMERS 8 & 9 Int Requests 
		//  IRQ4 = UART & COMPARATOR Int Requests 
		//  IRQ5 = TIMERS A, B, E & F Int Requests 
		//  IRQ6 = PWMC &  128Hz & 32Hz TBC Int Requests 
		//  IRQ7 = 16Hz & 2Hz TBC Int Requests 
		//IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;
	//====================================================================

				
	(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
	(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
	

	EI2CM = 1;
	QI2CM = 1;
	EUA0 = 1; // EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
	
 	//-----------------------------------------------------------------------------------------------
	//Set up 32Hz TBC Interrupt (Options: 128Hz, 32Hz, 16Hz, 2Hz)
	E32H = 0;	  // Enable 32 Hz TBC Interrupt (1=ENABLED)
	Q32H = 0;	  // Request flag for the time base counter 32 Hz interrupt (T2HINT)
	(void)irq_setHdr( (unsigned char)IRQ_NO_T32HINT, TBC_ISR );  //Clear interrupt request flag
	// TBC...Set Ratio: : 1:1 => 1_1
	(void)tb_setHtbdiv( (unsigned char)TB_HTD_1_1 ); //Set the ratio of dividing frequency of the time base counter
	
	//NOP Initialize
	TM8D = 5;	//Target
	TM8C = 0;	//Counter
	HTD3 = 1;	//Setting the Counter Freq = 8MHz //FYI, we think this is related to TBC, not timer 8 specifically
	HTD2 = 1;
	HTD1 = 1;
	HTD0 = 1;
	T8CS0 = 1;
	T8CS1 = 0;
	ETM8 = 0;	  // Enable timer 8 TBC Interrupt (1=ENABLED)
	QTM8 = 0;	  // Request flag for the time base counter timer 8 interrupt (T2HINT)
	(void)irq_setHdr( (unsigned char)IRQ_NO_TM8INT, TMR8_ISR );  //Clear interrupt request flag
	T8RUN = 1;
	//-----------------------------------------------------------------------------------------------	
	
	irq_ei(); // Enable Interrupts
	// IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII

	// WDT...
	WDTMOD = 0x03; 	// 0x03=overflow 8sec...
	main_clrWDT(); 	// Clear WDT
	

	//I2C Initialization...
	//P20C0 = 1;	/* CMOS output */
	//P20C1 = 1;	
	//P20D = 1;	/* write protect enable */
	(void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_ON);
	//I20SYN = 1;		//Enable Clock Stretching
	
	//UART Initialization...
	(void)uart_init( (unsigned char)UART_CS_HSCLK,		/* Generator       */
			     (unsigned short)HSCLK_KHZ,		/* HSCLK frequency */
			     &_uartSetParam );				/* Param... 	 */
	uart_PortSet();
	_flgUartFin = 0;
	uart_stop();
	
	ESC1_PWM();
	ESC2_PWM();
	ESC3_PWM();
	ESC4_PWM();
	
	PD0DIR = 1;
	PD1DIR = 1;
	PD2DIR = 0;
	
	//----- Gyro/Accel I2C Init TX Command ----- //Command for getting the Gyro out of sleep
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( MPU6050Address, &AccGyro_PWRMGMT1REG, 1, &AccGyro_PWRMGMT1REG_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		NOP1000();
		main_clrWDT();
	}
	//----- Gyro/Accel Config Accel
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( MPU6050Address, &AccGyro_AccelConfig, 1, &AccGyro_AccelConfig_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		NOP1000();
		main_clrWDT();
	}
	//----- Gyro/Accel Config Gyro
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( MPU6050Address, &AccGyro_GyroConfig, 1, &AccGyro_GyroConfig_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		NOP1000();
		main_clrWDT();
	}
	
	//----- Mag I2C Init TX Command ----- 
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( HMC5883Address, &Mag_ConfigA, 1, &Mag_ConfigA_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		NOP1000();
		main_clrWDT();
	}
	
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( HMC5883Address, &Mag_ConfigB, 1, &Mag_ConfigB_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		NOP1000();
		main_clrWDT();
	}
	
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( HMC5883Address, &Mag_ModeReg, 1, &Mag_ModeReg_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		NOP1000();
		main_clrWDT();
	}
	//----- End Mag I2C Init TX Command -----
	
	//Setup Ping Sensor
	PD1C1 = 1;
	PD1C0 = 1;
	
	//Setup Ultrasonic Interrupt
	PC6DIR = 1;
	PC6C0 = 1;
	PC6C1 = 1;
	PC6MD0 = 0;
	PC6MD1 = 0;
	
}//End Initialization
//===========================================================================

//===========================================================================
//    Get Range Sensor Data
//===========================================================================
void Get_RangeData(void){
	//----- Range Sensor - Start I2C Command -----
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	I20MD = 0;		//Switch to I2C Standard Operation (100kbps)
	i2c_startSend( Range_Address, &Range_TakeRangeReading, 1, &AccGyro_PWRMGMT1REG_Contents, 0, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		NOP1000();
		main_clrWDT();
	}
	while(RANGE_STAT==1);
	
	//----- Range Sensor - Read back range ----------
	_flgI2CFin = 0;																	//reset I2C completed Flag
	i2c_stop();																		//Make sure I2C is not currently running
	i2c_startReceive(Range_Address, &Range_TakeRangeReading, 0, &Range_Output, 2, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
		NOP1000();
		main_clrWDT();
	}		
	//----- Range Sensor - End Range Sensor Data Gather ----------
	Range_out = (Range_Output[0]<<8)+(Range_Output[1]);
	I20MD = 1;		//Switch Back to I2C Fast Operation (400kbps)
}

void Get_PingData(void){
	//----- Start Ping Sensor Gather ----------
	//Output Direction - Send Pulse to Start Ping Sensor
	PD1DIR = 0;		// PortD Bit0 set to Output Mode...
	PingSensor = 1;
	NOPus();
	PingSensor = 0;

	//Input Direction - Measure Pulse Width returning to MCU from Ping
	PD1DIR = 1;		// PortD Bit0 set to Input Mode...
	while(PingSensor == 0){
		NOPus();
	}
	while(PingSensor ==1){
		NOPus();
		Ping_timer++;
	}
	Ping_timer *= 11;	//Convert the ping timer response to us
	Ping_out = (0.0162*Ping_timer) + 0.1359; //Convert us to distance based on Datasheet
	//----- End Ping Sensor Gather ----------
}

void Get_AccGyroData(void){
	//----- Accel/Gryo Start I2C Command -----
	_flgI2CFin = 0;																	//reset I2C completed Flag
	i2c_stop();																		//Make sure I2C is not currently running
	I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
	i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
		NOP1000();
		main_clrWDT();
	}
	//----- End Accel/Gyro I2C RX Command -----
	
	Accel_Xout = (AccGyro_Data[0]<<8)+(AccGyro_Data[1]);
	Accel_Yout = (AccGyro_Data[2]<<8)+(AccGyro_Data[3]);
	Accel_Zout = (AccGyro_Data[4]<<8)+(AccGyro_Data[5]);
	Accel_Xout /= AccGyro_AccelScaling;
	Accel_Yout /= AccGyro_AccelScaling;
	Accel_Zout /= AccGyro_AccelScaling;
	
	Temp_out = (AccGyro_Data[6]<<8)+(AccGyro_Data[7]);
	//Eventually add this scaling and print!
	
	Gyro_Xout = (AccGyro_Data[8]<<8)+(AccGyro_Data[9]);
	Gyro_Yout = (AccGyro_Data[10]<<8)+(AccGyro_Data[11]);
	Gyro_Zout = (AccGyro_Data[12]<<8)+(AccGyro_Data[13]);
	Gyro_Xout /= AccGyro_GyroScaling;
	Gyro_Yout /= AccGyro_GyroScaling;
	Gyro_Zout /= AccGyro_GyroScaling;

}

void Get_MagData(void){
	//----- Magnetic I2C RX Command -----
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( HMC5883Address, &Mag_ModeReg, 1, &Mag_ModeReg_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		NOP1000();
		main_clrWDT();
	}

	_flgI2CFin = 0;																	//reset I2C completed Flag
	i2c_stop();																		//Make sure I2C is not currently running
	i2c_startReceive(HMC5883Address, &Mag_ReadData, 1, &Mag_Data, 6, (cbfI2c)_funcI2CFin);	//Begin I2C Recieve Command
	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
		NOP1000();
		main_clrWDT();
	}
	//----- End Magnetic I2C RX Command -----
	
	Mag_Xout = (Mag_Data[0]<<8)+(Mag_Data[1]);
	Mag_Zout = (Mag_Data[2]<<8)+(Mag_Data[3]);
	Mag_Yout = (Mag_Data[4]<<8)+(Mag_Data[5]);
	Mag_Xout *= Mag_GainFactor;
	Mag_Yout *= Mag_GainFactor;
	
	if(Mag_Yout >= 0){
		Mag_Angle = 90 - (atan(Mag_Xout/Mag_Yout)) * (180/3.1415927);
	}
	if(Mag_Yout < 0){
		Mag_Angle = 270 - (atan(Mag_Xout/Mag_Yout)) * (180/3.1415927);
	}
	
	Mag_Angle -= 90;
	if(Mag_Angle >=360){
		Mag_Angle -= 360;
	}
	if(Mag_Angle < 0){
		Mag_Angle += 360;
	}
}

void ClearVariables(void){
	Accel_Xout = 0;
	Accel_Yout = 0;
	Accel_Zout = 0;
	Temp_out = 0;
	Gyro_Xout = 0;
	Gyro_Yout = 0;
	Gyro_Zout = 0;
	Mag_Xout = 0;
	Mag_Yout = 0;
	Mag_Zout = 0;
	Mag_Angle = 0;
	Ping_timer = 0;
	Ping_out = 0;
	Range_out = 0;
}

void ReturnSensorData(void){
	int i;
	for(i = 0; i<150; i++)
	{
		SensorReturn[i] = 0x20;
	}
	//sprintf(SensorReturn, "%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf,%lf", Accel_Xout, Accel_Yout, Accel_Zout, Gyro_Xout, Gyro_Yout, Gyro_Zout, Mag_Angle,Range_out,Ping_out);
	sprintf(SensorReturn, "%lf,%lf,%lf,%lf,%lf,%lf,%lf,%u", Accel_Xout, Accel_Yout, Accel_Zout, Gyro_Xout, Gyro_Yout, Gyro_Zout, Mag_Angle,Range_out);
	
	SensorReturn[148] = 0x0D;
	SensorReturn[149] = 0x0A;
	
	//Send Returned Sensor Output to PC!
	_flgUartFin = 0;
	uart_stop();
	uart_startSend(SensorReturn, 150, _funcUartFin);
	while(_flgUartFin != 1){
		NOP1000();
		main_clrWDT();
	}
}

/* ----- Calibrate ESCs ------------------
Set All PWM Signals to â??Maximum PWMâ?;
Delay (3 seconds)
Set All PWM Signals to â??Minimum PWMâ?;
Delay (500 ms)
------------------------------------------*/
void CalibrateMotorsAll(void){
	main_clrWDT();

	PFRUN = 0;
	PERUN = 0;
	PDRUN = 0;
	PCRUN = 0;

	PWFP = PWMMaxUpperPeriodLimit;
	PWEP = PWMMaxUpperPeriodLimit;
	PWDP = PWMMaxUpperPeriodLimit;
	PWCP = PWMMaxUpperPeriodLimit;
	
	PWF0D = PWMUpperDutyLimit; //Can't be running to change
	PWED = PWMUpperDutyLimit;
	PWDD = PWMUpperDutyLimit;
	PWCD = PWMUpperDutyLimit;
	
	PFRUN = 1;
	PERUN = 1;
	PDRUN = 1;
	PCRUN = 1;
	
	NOP(3);
	
	PFRUN = 0;
	PERUN = 0;
	PDRUN = 0;
	PCRUN = 0;
		
	PWF0D = PWMLowerDutyLimit; //Can't be running to change
	PWED = PWMLowerDutyLimit;
	PWDD = PWMLowerDutyLimit;
	PWCD = PWMLowerDutyLimit;
	
	PFRUN = 1;
	PERUN = 1;
	PDRUN = 1;
	PCRUN = 1;
	
	NOP(3);
}

void CalibrateMotor1(void){
	main_clrWDT();
	PFRUN = 0;
	PWFP = PWMMaxUpperPeriodLimit;
	PWF0D = PWMUpperDutyLimit; //Can't be running to change
	PFRUN = 1;
	NOP(3);
	PFRUN = 0;
	PWF0D = PWMLowerDutyLimit; //Can't be running to change
	PFRUN = 1;
	NOP(3);
}
void CalibrateMotor2(void){
	main_clrWDT();
	PERUN = 0;
	PWEP = PWMMaxUpperPeriodLimit;
	PWED = PWMUpperDutyLimit; //Can't be running to change
	PERUN = 1;
	NOP(3);
	PERUN = 0;
	PWED = PWMLowerDutyLimit; //Can't be running to change
	PERUN = 1;
	NOP(3);
}

void CalibrateMotor3(void){
	main_clrWDT();
	PCRUN = 0;
	PWCP = PWMMaxUpperPeriodLimit;
	PWCD = PWMUpperDutyLimit; //Can't be running to change
	PCRUN = 1;
	NOP(3);
	PCRUN = 0;
	PWCD = PWMLowerDutyLimit; //Can't be running to change
	PCRUN = 1;
	NOP(3);
}
void CalibrateMotor4(void){
	main_clrWDT();
	PDRUN = 0;
	PWDP = PWMMaxUpperPeriodLimit;
	PWDD = PWMUpperDutyLimit; //Can't be running to change
	PDRUN = 1;
	NOP(3);
	PDRUN = 0;
	PWDD = PWMLowerDutyLimit; //Can't be running to change
	PDRUN = 1;
	NOP(3);
}


//===========================================================================
//    PWM Output on Port C0 (PWMF0)
//===========================================================================
void ESC1_PWM(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Select the Clock Mode...
//Step 5: Set the Duty Cycle...
//Step 5: Start the PWM Counter...

//The PWM signals with the periods of approximately 122 ns (@PLLCLK=16.384MHz) to 2s (@LSCLK=32.768kHz)
//  can be generated and output outside of this micro!

      //Direction...    
      PC0DIR = 0;       // PortB Bit0 set to Output Mode...

      //I/O Type...
      PC0C1  = 1;       // PortB Bit0 set to CMOS Output...
      PC0C0  = 1;       

      //Purpose...
      PC0MD1  = 1;            // PortC Bit0 set to PWM Output (1,0)...
      PC0MD0  = 0;      


      //Select the Clock Mode...
      PFCS1 = 0;        //00= LS; 01=HS; 10=PLL
      PFCS0 = 1;

      //SET THE PERIOD...(Added June 4th, 2013)
      PWFP = 1000;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)

      //SET THE DUTY CYCLE...(Added June 15th, 2013)

      //PWCD =    10;         //10    ~  0.2  % duty cycle @ 120Hz
      //PWCD =   100;         //100   ~  2.4  % duty cycle @ 120Hz
      //PWCD =  1000;         //1000  ~ 23.5  % duty cycle @ 120Hz
      //PWCD =  4000;         //4000  ~ 94.0  % duty cycle @ 120Hz
      //PWCD =  4150;         //4150  ~ 99.0  % duty cycle @ 120Hz
      //PWCD =    20;         //20    ~  0.4  % duty cycle @ 120Hz      
      PWF0D =    700;           //12    ~  0.25 % duty cycle @ 160Hz

      PFRUN = 0;        // OFF to start
}

//===========================================================================
//    PWM Output on Port B2 (PWME)
//===========================================================================
void ESC2_PWM(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Select the Clock Mode...
//Step 5: Set the Duty Cycle...
//Step 5: Start the PWM Counter...

//The PWM signals with the periods of approximately 122 ns (@PLLCLK=16.384MHz) to 2s (@LSCLK=32.768kHz)
//  can be generated and output outside of this micro!

      //Direction...    
      PB2DIR = 0;       // PortB Bit0 set to Output Mode...

      //I/O Type...
      PB2C1  = 1;       // PortB Bit0 set to CMOS Output...
      PB2C0  = 1;       

      //Purpose...
      PB2MD1  = 0;            // PortB Bit0 set to PWM Output (0,1)...
      PB2MD0  = 1;      


      //Select the Clock Mode...
      PECS1 = 0;        //00= LS; 01=HS; 10=PLL
      PECS0 = 1;

      //SET THE PERIOD...(Added June 4th, 2013)
      PWEP = 1000;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)

      //SET THE DUTY CYCLE...(Added June 15th, 2013)

      //PWCD =    10;         //10    ~  0.2  % duty cycle @ 120Hz
      //PWCD =   100;         //100   ~  2.4  % duty cycle @ 120Hz
      //PWCD =  1000;         //1000  ~ 23.5  % duty cycle @ 120Hz
      //PWCD =  4000;         //4000  ~ 94.0  % duty cycle @ 120Hz
      //PWCD =  4150;         //4150  ~ 99.0  % duty cycle @ 120Hz
      //PWCD =    20;         //20    ~  0.4  % duty cycle @ 120Hz      
      PWED =    700;           //12    ~  0.25 % duty cycle @ 160Hz

      PERUN = 0;        // OFF to start
}
//===========================================================================

//===========================================================================
//    PWM Output on Port B1 (PWMD)
//===========================================================================
void ESC3_PWM(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Select the Clock Mode...
//Step 5: Set the Duty Cycle...
//Step 5: Start the PWM Counter...

//The PWM signals with the periods of approximately 122 ns (@PLLCLK=16.384MHz) to 2s (@LSCLK=32.768kHz)
//  can be generated and output outside of this micro!

      //Direction...    
      PA1DIR = 0;       // PortB Bit0 set to Output Mode...

      //I/O Type...
      PA1C1  = 1;       // PortB Bit0 set to CMOS Output...
      PA1C0  = 1;       

      //Purpose...
      PA1MD1  = 0;            // PortB Bit0 set to PWM Output (0,1)...
      PA1MD0  = 1;      


      //Select the Clock Mode...
      PDCS1 = 0;        //00= LS; 01=HS; 10=PLL
      PDCS0 = 1;

      //SET THE PERIOD...(Added June 4th, 2013)
      PWDP = 1000;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)

      //SET THE DUTY CYCLE...(Added June 15th, 2013)

      //PWCD =    10;         //10    ~  0.2  % duty cycle @ 120Hz
      //PWCD =   100;         //100   ~  2.4  % duty cycle @ 120Hz
      //PWCD =  1000;         //1000  ~ 23.5  % duty cycle @ 120Hz
      //PWCD =  4000;         //4000  ~ 94.0  % duty cycle @ 120Hz
      //PWCD =  4150;         //4150  ~ 99.0  % duty cycle @ 120Hz
      //PWCD =    20;         //20    ~  0.4  % duty cycle @ 120Hz      
      PWDD =    700;           //12    ~  0.25 % duty cycle @ 160Hz

      PDRUN = 0;        // OFF to start
}
//===========================================================================


//===========================================================================
//    PWM Output on Port B0 (PWMC)
//===========================================================================
void ESC4_PWM(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Select the Clock Mode...
//Step 5: Set the Duty Cycle...
//Step 5: Start the PWM Counter...

//The PWM signals with the periods of approximately 122 ns (@PLLCLK=16.384MHz) to 2s (@LSCLK=32.768kHz)
//  can be generated and output outside of this micro!

      //Direction...    
      PA0DIR = 0;       // PortB Bit0 set to Output Mode...

      //I/O Type...
      PA0C1  = 1;       // PortB Bit0 set to CMOS Output...
      PA0C0  = 1;       

      //Purpose...
      PA0MD1  = 0;            // PortB Bit0 set to PWM Output (0,1)...
      PA0MD0  = 1;      


      //Select the Clock Mode...
      PCCS1 = 0;        //00= LS; 01=HS; 10=PLL
      PCCS0 = 1;

      //SET THE PERIOD...(Added June 4th, 2013)
      PWCP = 1000;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
								//2.5ms = (x+1)/8MHz //Pg. 190

      //SET THE DUTY CYCLE...(Added June 15th, 2013)

      //PWCD =    10;         //10    ~  0.2  % duty cycle @ 120Hz
      //PWCD =   100;         //100   ~  2.4  % duty cycle @ 120Hz
      //PWCD =  1000;         //1000  ~ 23.5  % duty cycle @ 120Hz
      //PWCD =  4000;         //4000  ~ 94.0  % duty cycle @ 120Hz
      //PWCD =  4150;         //4150  ~ 99.0  % duty cycle @ 120Hz
      //PWCD =    20;         //20    ~  0.4  % duty cycle @ 120Hz      
      PWCD =    700;           //12    ~  0.25 % duty cycle @ 160Hz

	  //2.0 = (x +1)/8MHz
	  
      PCRUN = 0;        // OFF to start
}
//===========================================================================

//INTERRUPT SERVICE ROUTINE FOR TBC
static void TBC_ISR( void ) 
{
LED_1 = 0 ; LED_2 = 0 ; LED_3 = 0 ; LED_4 = 0;

	E32H = 0;	//Turn OFF TBC Interrupt
	E32H = 1;	//Turn ON TBC Interrupt
	
LED_1 = 1 ; LED_2 = 1 ; LED_3 = 1 ; LED_4 = 1;	
/* 	LED_1 = 1 ; LED_2 = 0 ; LED_3 = 0 ; LED_4 = 0; //NOPms(50);
	LED_1 = 0 ; LED_2 = 1 ; LED_3 = 0 ; LED_4 = 0; //NOPms(50);
	LED_1 = 0 ; LED_2 = 0 ; LED_3 = 1 ; LED_4 = 0; //NOPms(50);
	LED_1 = 0 ; LED_2 = 0 ; LED_3 = 0 ; LED_4 = 1; //NOPms(50);
	LED_1 = 0 ; LED_2 = 0 ; LED_3 = 1 ; LED_4 = 0; //NOPms(50);
	LED_1 = 0 ; LED_2 = 1 ; LED_3 = 0 ; LED_4 = 0; //NOPms(50);
	LED_1 = 1 ; LED_2 = 0 ; LED_3 = 0 ; LED_4 = 0; //NOPms(50); */
}
//===========================================================================

//INTERRUPT SERVICE ROUTINE FOR Timer8
static void TMR8_ISR( void ) 
{
LED_1 = 0 ; LED_2 = 0 ; LED_3 = 0 ; LED_4 = 0;

	//ETM8 = 0;	//Turn OFF TBC Interrupt
	////NOPms(10);	//Delay xms
	TM8C = 0x00;
	//ETM8 = 1;	//Turn ON TBC Interrupt
	timer = 1;
	ETM8 = 0;
	
LED_1 = 1 ; LED_2 = 1 ; LED_3 = 1 ; LED_4 = 1;	
/* 	LED_1 = 1 ; LED_2 = 0 ; LED_3 = 0 ; LED_4 = 0; //NOPms(50);
	LED_1 = 0 ; LED_2 = 1 ; LED_3 = 0 ; LED_4 = 0; //NOPms(50);
	LED_1 = 0 ; LED_2 = 0 ; LED_3 = 1 ; LED_4 = 0; //NOPms(50);
	LED_1 = 0 ; LED_2 = 0 ; LED_3 = 0 ; LED_4 = 1; //NOPms(50);
	LED_1 = 0 ; LED_2 = 0 ; LED_3 = 1 ; LED_4 = 0; //NOPms(50);
	LED_1 = 0 ; LED_2 = 1 ; LED_3 = 0 ; LED_4 = 0; //NOPms(50);
	LED_1 = 1 ; LED_2 = 0 ; LED_3 = 0 ; LED_4 = 0; //NOPms(50); */
}
//===========================================================================



/*******************************************************************************
	Routine Name:	_funcUartFin
	Form:			static void _funcUartFin( unsigned int size, unsigned char errStat )
	Parameters:		unsigned int size		 : 
				unsigned char errStat	 : 
	Return value:	void
	Description:	UART transmission completion callback function.
******************************************************************************/
static void _funcUartFin( unsigned int size, unsigned char errStat )
{
	uart_continue();					// Function in UART.c: process to continue send and receive...
	_flgUartFin = (unsigned char)FLG_SET;
	main_reqNotHalt();				// uncommented 5/2/2013
}

/*******************************************************************************
	Routine Name:	_funcI2CFin
	Form:			static void _funcUartFin( unsigned int size, unsigned char errStat )
	Parameters:		unsigned int size		 : 
				unsigned char errStat	 : 
	Return value:	void
	Description:	UART transmission completion callback function.
******************************************************************************/
static void _funcI2CFin( unsigned int size, unsigned char errStat )
{
	i2c_continue();					// Function in UART.c: process to continue send and receive...
	_flgI2CFin = (unsigned char)FLG_SET;
	main_reqNotHalt();				// uncommented 5/2/2013
}

/*******************************************************************************
	Routine Name:	_intI2c
	Form:			static void _intI2c( void )
	Parameters:		void
	Return value:	void
	Description:	I2C handler.
******************************************************************************/
static void _intI2c( void )
{
	(void)i2c_continue();
	main_reqNotHalt();
}

/*******************************************************************************
	Routine Name:	checkI2C
	Form:			void checkI2C( void )
	Parameters:		void
	Return value:	void
	Description:	Reading or writing processing of I2C Bus.
******************************************************************************/
void checkI2C( void )
{
int		ret;
	
	ret = 0;
	//P21C1 = 1;
	while (ret != 1) {
		ret = i2c_continue();
		if( ret == 1 ) {
			//P21C1 = 0;
		}
	}
}

/*******************************************************************************
	Routine Name:	main_reqNotHalt
	Form:			void reqNotHalt( void )
	Parameters:		void
	Return value:	void
	Description:	request not halt.
******************************************************************************/
void main_reqNotHalt( void )
{
	_reqNotHalt = (unsigned char)FLG_SET;
}

/*******************************************************************************
	Routine Name:	_intUart
	Form:			static void _intUart( void )
	Parameters:		void
	Return value:	void
	Description:	UART handler.
******************************************************************************/
static void _intUart( void )
{
		uart_continue(); //in UART.c: process to continue send and receive...
}

//===========================================================================
//	OSC set
//===========================================================================
static void SetOSC(void){

	//FCON0: 			// xMHz PLL (3=1MHz; 2=2MHz; 1=4MHz; 0=8MHz)...
	SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
	SYSC1 = 0;

	OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
	OSCM0 = 0;
   	
	ENOSC = 1;			//1=Enable High Speed Oscillator...
	SYSCLK = 1;			//1=HSCLK; 0=LSCLK 

	LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013

	__EI();			//INT enable
}
//===========================================================================


//===========================================================================
//	Analog Comparator setup
//===========================================================================
void analog_comparator(void){

//Carl's Notes...

//Step 1: Select the Interrupt Mode
// 	a.) Interrupt Disabled      => CMPxE1 = 0; CMPxE0 = 0;	  
// 	b.) Falling-Edge Int. Mode  => CMPxE1 = 0; CMPxE0 = 1;
// 	c.) Rising-Edge Int. Mode   => CMPxE1 = 1; CMPxE0 = 0;
// 	d.) Both-Edge Int. Mode     => CMPxE1 = 1; CMPxE0 = 1;


//Step 2: Enable the Comparator                       => CMPxEN = 1;	

//Step 3: Wait 3ms to allow Comparator to stabilize

//Step 4: Read the comparison result			=> CMPxD: 0= +<-; 1= +>-

//Step 5: Disable the Comparator				=> CMPxEN = 0;	



   //Comparator 0...
	CMP0EN  = 0x01; 	// Comparator ON...
	CMP0E1  = 0x00; 	// No Interupt...
	CMP0E0  = 0x00;
	CMP0SM1 = 0x00; 	// Detect without Sampling... 
	CMP0RFS = 0x01; 	// Differential Input on B5

   //Comparator 0 OFF
	CMP0EN  = 0x00;


}
//===========================================================================



//===========================================================================
//	Clear All 3 Bits of Port A
//===========================================================================
void PortA_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
	PA2DIR = 0;		// PortA Bit2 set to Output Mode...

	//I/O Type...
	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
	PA0C0  = 1;		
	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
	PA1C0  = 1;	
	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
	PA2C0  = 1;	

	//Purpose...
	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
	PA0MD0  = 0;	
	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
	PA1MD0  = 0;	
	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
	PA2MD0  = 0;	

	//Data...
	PA0D = 0;		// A.0 Output OFF....
	PA1D = 0;		// A.1 Output OFF....
	PA2D = 0;		// A.2 Output OFF....

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	Clear All 8 Bits of Port B
//===========================================================================
void PortB_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
	PB7DIR = 0;		// PortB Bit7 set to Output Mode...

	//I/O Type...
	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
	PB0C0  = 1;		
	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
	PB1C0  = 1;	
	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
	PB2C0  = 1;	
	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
	PB3C0  = 1;		
	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
	PB4C0  = 1;	
	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
	PB5C0  = 1;	
	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
	PB6C0  = 1;	
	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
	PB7C0  = 1;	

	//Purpose...
	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
	PB0MD0  = 0;	
	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
	PB1MD0  = 0;	
	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
	PB2MD0  = 0;	
	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
	PB3MD0  = 0;	
	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
	PB4MD0  = 0;	
	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
	PB5MD0  = 0;
	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
	PB6MD0  = 0;	
	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
	PB7MD0  = 0;

	//Data...
	PB0D = 0;		// B.0 Output OFF....
	PB1D = 0;		// B.1 Output OFF....
	PB2D = 0;		// B.2 Output OFF....
	PB3D = 0;		// B.3 Output OFF....
	PB4D = 0;		// B.4 Output OFF....
	PB5D = 0;		// B.5 Output OFF....
	PB6D = 0;		// B.6 Output OFF....
	PB7D = 0;		// B.7 Output OFF....

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	Clear All 8 Bits of Port C
//===========================================================================
void PortC_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
	PC4DIR = 0;		// PortC Bit4 set to Output Mode...
	PC5DIR = 0;		// PortC Bit5 set to Output Mode...
	PC6DIR = 0;		// PortC Bit6 set to Output Mode...
	PC7DIR = 0;		// PortC Bit7 set to Output Mode...

	//I/O Type...
	PC0C1  = 1;		// PortC Bit0 set to High-Impedance Output...
	PC0C0  = 1;		
	PC1C1  = 1;		// PortC Bit1 set to High-Impedance Output...
	PC1C0  = 1;	
	PC2C1  = 1;		// PortC Bit2 set to High-Impedance Output...
	PC2C0  = 1;	
	PC3C1  = 1;		// PortC Bit3 set to High-Impedance Output...
	PC3C0  = 1;		
	PC4C1  = 1;		// PortC Bit4 set to High-Impedance Output...
	PC4C0  = 1;	
	PC5C1  = 1;		// PortC Bit5 set to High-Impedance Output...
	PC5C0  = 1;	
	PC6C1  = 1;		// PortC Bit6 set to High-Impedance Output...
	PC6C0  = 1;	
	PC7C1  = 1;		// PortC Bit7 set to High-Impedance Output...
	PC7C0  = 1;	

	//Purpose...
	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
	PC0MD0  = 0;	
	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
	PC1MD0  = 0;	
	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
	PC2MD0  = 0;	
	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
	PC3MD0  = 0;	
	PC4MD1  = 0;	// PortC Bit4 set to General Purpose Output...
	PC4MD0  = 0;	
	PC5MD1  = 0;	// PortC Bit5 set to General Purpose Output...
	PC5MD0  = 0;
	PC6MD1  = 0;	// PortC Bit6 set to General Purpose Output...
	PC6MD0  = 0;	
	PC7MD1  = 0;	// PortC Bit7 set to General Purpose Output...
	PC7MD0  = 0;

	//Data...
	PC0D = 0;		// C.0 Output OFF....
	PC1D = 0;		// C.1 Output OFF....
	PC2D = 0;		// C.2 Output OFF....
	PC3D = 0;		// C.3 Output OFF....
	PC4D = 0;		// C.4 Output OFF....
	PC5D = 0;		// C.5 Output OFF....
	PC6D = 0;		// C.6 Output OFF....
	PC7D = 0;		// C.7 Output OFF....

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	Clear All 6 Bits of Port D
//===========================================================================
void PortD_Low(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Data...

	//Direction...	
	PD0DIR = 0;		// PortD Bit0 set to Output Mode...
	PD1DIR = 0;		// PortD Bit1 set to Output Mode...
	PD2DIR = 0;		// PortD Bit2 set to Output Mode...
	PD3DIR = 0;		// PortD Bit3 set to Output Mode...
	PD4DIR = 0;		// PortD Bit4 set to Output Mode...
	PD5DIR = 0;		// PortD Bit5 set to Output Mode...

	//I/O Type...
	PD0C1= 1;		// PortD Bit0 set to CMOS Output...
	PD0C0= 1;		
	PD1C1= 1;		// PortD Bit1 set to CMOS Output...
	PD1C0= 1;	
	PD2C1= 1;		// PortD Bit2 set to CMOS Output...
	PD2C0= 1;	
	PD3C1= 1;		// PortD Bit3 set to CMOS Output...
	PD3C0= 1;		
	PD4C1= 1;		// PortD Bit4 set to CMOS Output...
	PD4C0= 1;	
	PD5C1= 1;		// PortD Bit5 set to CMOS Output...
	PD5C0= 1;	

	//Data...
	PD0D = 0;		// D.0 Output OFF....
	PD1D = 0;		// D.1 Output OFF....
	PD2D = 0;		// D.2 Output OFF....
	PD3D = 0;		// D.3 Output OFF....
	PD4D = 0;		// D.4 Output OFF....
	PD5D = 0;		// D.5 Output OFF....


	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	Set All 3 Bits of Port A as Digital Input Pins
//===========================================================================
void PortA_Digital_Inputs(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Set Pin Data...

	//Direction...	
	PA0DIR = 1;		// PortA Bit0 set to Input Mode...
	PA1DIR = 1;		// PortA Bit1 set to Input Mode...
	PA2DIR = 1;		// PortA Bit2 set to Input Mode...


	//I/O Type...
	PA0C1  = 1;		// PortA Bit0 set to Input with Pull-Up Resistor...
	PA0C0  = 0;		
	PA1C1  = 1;		// PortA Bit1 set to Input with Pull-Up Resistor...
	PA1C0  = 0;	
	PA2C1  = 1;		// PortA Bit2 set to Input with Pull-Up Resistor...
	PA2C0  = 0;	

	//Purpose...
	PA0MD1  = 0;	// PortA Bit0 set to General Purpose I/O...
	PA0MD0  = 0;	
	PA1MD1  = 0;	// PortA Bit1 set to General Purpose I/O...
	PA1MD0  = 0;	
	PA2MD1  = 0;	// PortA Bit2 set to General Purpose I/O...
	PA2MD0  = 0;	

	main_clrWDT(); 	// Clear WDT

}
//===========================================================================


/*
//===========================================================================
//	PWM Output on Port B - Pin 0
//===========================================================================
void PinB0_PWM(void){

//Carl's Notes...

//Step 1: Set Pin Direction...
//Step 2: Set Pin I/O Type...
//Step 3: Set Pin Purpose...
//Step 4: Select the Clock Mode...
//Step 5: Set the Duty Cycle...
//Step 5: Start the PWM Counter...

	//Direction...	
	PB0DIR = 0;		// PortB Bit0 set to Output Mode...

	//I/O Type...
	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
	PB0C0  = 1;		

	//Purpose...
	PB0MD1  = 0;	// PortB Bit0 set to PWM Output (0,1)...
	PB0MD0  = 1;	


	//Select the Clock Mode...
	PCCS1 = 0;	//00= LS; 01=HS; 10=PLL
	PCCS0 = 1;

	//SET THE PERIOD...(Added Feb 4th, 2013)
	PWCP = 4250;		// Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)

	//SET THE DUTY CYCLE...(Added Feb 15th, 2013)

	//PWCD =    10;		//10    ~  0.2  % duty cycle @ 120Hz
	//PWCD =   100;		//100   ~  2.4  % duty cycle @ 120Hz
	//PWCD =  1000;		//1000  ~ 23.5  % duty cycle @ 120Hz
	//PWCD =  4000;		//4000  ~ 94.0  % duty cycle @ 120Hz
	//PWCD =  4150;		//4150  ~ 99.0  % duty cycle @ 120Hz
	//PWCD =    20;		//20    ~  0.4  % duty cycle @ 120Hz	
	PWCD =    12;		//12    ~  0.25 % duty cycle @ 160Hz

	PCRUN = 0;		// OFF to start

}
//===========================================================================
*/

/*******************************************************************************
	Routine Name:	NOP
	Form:			void NOP( unsigned char sec )
	Parameters:		unsigned char sec = "Number of seconds where the device is not doing anything"
	Return value:	void
	Description:	NOP for x seconds. Uses low speed clock (32.768kHz) and timer 8+9 (max 0xFFFF)
					(1/32768Hz)*0xFFFF = ~2 seconds
******************************************************************************/
void NOP( unsigned char sec )
{
unsigned int timerThres;
unsigned char TimeFlag;
unsigned char TempSec;
unsigned int timer;
unsigned int timertest;

HTD3 = 1;
HTD2 = 1;
HTD1 = 1;
HTD0 = 1;

tm_init(1);
TempSec = sec;
TimeFlag = 0;

tm_setABSource(TM_CS_LSCLK);
tm_setABData(0xffff);

if(sec == 1){
	timerThres = 0x7FFF;
	TimeFlag = 0;
}
if(sec == 2){
	timerThres = 0xFFFF;
	TimeFlag = 0;
}
if(sec > 2){
	while(TempSec > 1){
		TempSec -= 2;
		TimeFlag++;
	}
	if(TempSec == 1){
		timerThres = 0x7FFF;
	}
	else{
		timerThres = 0xFFFF;
		TimeFlag--;
	}
}

TimerRestart:
	main_clrWDT();	
	//tm_restart89();	//using LSCLK, the maximum delay time we have is ~2 secs
	tm_startAB();
	timer = tm_getABCounter();
	while(timer < timerThres){
		timer = tm_getABCounter();
		timertest = timer;
	}
	if(TimeFlag !=0){
		tm_stopAB();
		TimeFlag--;
		timerThres = 0xFFFF;
		goto TimerRestart;
	}
	HTD3 = 1;
	HTD2 = 1;
	HTD1 = 1;
	HTD0 = 1;
}

/*******************************************************************************
	Routine Name:	NOPms
	Form:			void NOP1000( unsigned int ms )
	Parameters:		unsigned int sec = "Number of seconds where the device is not doing anything"
	Return value:	void
	Description:	NOP for x seconds. Uses HTB* clock (512kHz) and timer 8+9 (max 0xFFFF)
					*(HTBCLK = 1/16 * HSCLK = (1/16)*8192kHz = 512kHz, see HTBDR to change if we need an even smaller increment timer...)
					1/(512kHz) * 0xFFFF = 127ms
					
******************************************************************************/
void NOPms( unsigned int ms )
{
unsigned int timerThres;
unsigned char TimeFlag;
unsigned int TempSec;
unsigned int timer;
unsigned int timertest;

HTD3 = 1;
HTD2 = 1;
HTD1 = 1;
HTD0 = 1;

TempSec = ms;
TimeFlag = 0;

tm_init(TM_CH_NO_AB);
tm_setABSource(TM_CS_HTBCLK);
tm_setABData(0xffff);

if(ms < 128){
	timerThres = 0x1FF * ms;
	TimeFlag = 0;
}
if(ms == 128){
	timerThres = 0xFFFF;
	TimeFlag = 0;
}
if(ms > 128){
	while(TempSec > 128){
		TempSec -= 128;
		TimeFlag++;
	}
	if(TempSec != 0){
		timerThres = 0x1FF * TempSec;
	}
	else{
		timerThres = 0xFFFF;
		TimeFlag--;
	}
}

TimerRestart:
	main_clrWDT();	
	//tm_restart89();	//using LSCLK, the maximum delay time we have is ~2 secs
	tm_startAB();
	timer = tm_getABCounter();
	while(timer < timerThres){
		timer = tm_getABCounter();
		timertest = timer;
	}
	if(TimeFlag !=0){
		tm_stopAB();
		TimeFlag--;
		timerThres = 0xFFFF;
		goto TimerRestart;
	}
	HTD3 = 1;
	HTD2 = 1;
	HTD1 = 1;
	HTD0 = 1;
}

/*******************************************************************************
	Routine Name:	NOPus
	Form:			void NOP( void )
	Parameters:		void
	Return value:	void
	Description:	calling this will delay 11us
******************************************************************************/
void NOPus( void )
{
	timer = 0;
	TM8C = 0x00;
	ETM8 = 1;
	while(timer == 0);
}

void NOP1000( void )
{
unsigned int ONCNT = 0;
	while(ONCNT < 10000) {	// NOP for 1000 Cycles
		ONCNT++;
	}
	ONCNT = 0;			// Reset Counter 
}


//Notes/Unused Code ----------------------------------------------------------------------------------
/*
//Initial Running Sequence... this code will apply difference PWM signal outputs depending on the switch settings connected to D0/D1
		if(PD0D == 0){
			if(PD1D == 0){	//Both SW Left Setting
				if(flag != 1){
					PFRUN = 0;	//Only PWMF would not run properly when changing variables on the fly...
					PERUN = 0;	//Technically, the rest are not necessary, but good to have here anyway...
					PDRUN = 0;
					PCRUN = 0;
					flag = 1;
				}
				
				PWFP = 1050;
				PWEP = 1050;
				PWDP = 1050;
				PWCP = 1050;
				
				PWF0D = 525; //Can't be running
				PWED = 525;
				PWDD = 525;
				PWCD = 525;
				
				PFRUN = 1;
				PERUN = 1;
				PDRUN = 1;
				PCRUN = 1;
			}
			else{	//LEFTSW = Right Setting, RIGHTSW = Left Setting
				if(flag != 2){
					PFRUN = 0;
					PERUN = 0;
					PDRUN = 0;
					PCRUN = 0;
					flag = 2;
				}
				//PWM Incrementer... 
				//This Code snippet will increment the PWM Duty Length by...
				// 1/1050 every 10ms
				//
				PWFP = 1050;
				PWEP = 1050;
				PWDP = 1050;
				PWCP = 1050;
				
				PWF0D = 525; //Can't be running
				PWED = 525;
				PWDD = 525;
				PWCD = 525;
				
				PFRUN = 1;
				PERUN = 1;
				PDRUN = 1;
				PCRUN = 1;
				
				while(PWED < 1000){
					NOP1000();
					PFRUN = 0;
					PERUN = 0;
					PDRUN = 0;
					PCRUN = 0;
					PWF0D += 1; //Can't be running
					PWED += 1;
					PWDD += 1;
					PWCD += 1;
					PFRUN = 1;
					PERUN = 1;
					PDRUN = 1;
					PCRUN = 1;
				}
				*/
				/*
				if(flag != 2){
					PFRUN = 0;
					PERUN = 0;
					PDRUN = 0;
					PCRUN = 0;
					flag = 2;
				}
				
				PWFP = 1050;
				PWEP = 1050;
				PWDP = 1050;
				PWCP = 1050;
				
				PWF0D = 578;
				PWED = 578;
				PWDD = 578;
				PWCD = 578;
				
				PFRUN = 1;
				PERUN = 1;
				PDRUN = 1;
				PCRUN = 1;
				*/
				/*
			}
		}
		else{
			if(PD1D == 0){	//LEFTSW = Left Setting, RIGHTSW = Right Setting
				PFRUN = 0;
				PERUN = 0;
				PDRUN = 0;
				PCRUN = 0;
			}
			else{	//Both SW Right Setting
				if(flag != 3){
					PFRUN = 0;
					PERUN = 0;
					PDRUN = 0;
					PCRUN = 0;
					flag = 3;
				}
				
				PWFP = 1050;
				PWEP = 1050;
				PWDP = 1050;
				PWCP = 1050;
				
				PWF0D = 867;
				PWED = 867;
				PWDD = 867;
				PWCD = 867;
				
				PFRUN = 1;
				PERUN = 1;
				PDRUN = 1;
				PCRUN = 1;
			}
		}
*/
		
