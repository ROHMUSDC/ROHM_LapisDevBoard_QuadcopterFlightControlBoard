//*****************************************************************************
// PROGRAM:	 LaPi Development Board Demo Code for LAPIS ML610Q112 micro
// PROJECT:	 QUAD COPTER CONTROL BOARD with Sensor Fusion for Accel. & Gyro.
//
// Key Code Features: 
//	PID Loops, Complementary Filters, I2C, UART, PWM, Interrupts, Arctan2, etc.
//
// AUTHORS:	 C. Schell & K. Bahar
//		 	 ROHM Semiconductor USA, LLC
//		 	 US Design Center
//
// STARTED:  DECEMBER 4th, 2013
// UPDATED:	 March 30th, 2014
//*****************************************************************************

//*****************************************************************************
// Microcontroller's connections on the LaPi Development Board
//
// Electronic Speed Controllers:
//		ESC#1 to PortC.0 => PWM Output...
//		ESC#2 to PortB.2 => PWM Output...
//		ESC#3 to PortA.0 => PWM Output...
//		ESC#4 to PortA.1 => PWM Output...
//
// Sensors:
//  	3-Axis Accelerometer & Gyro (MPU-6050) => I2C Pins SDA: B.6; SCL B.5
//  	Magnetometer (Honeywell HMC5883L)	   => I2C Pins SDA: B.6; SCL B.5 
//  	Ultrasonic Range Finder (MB1242) 	   => I2C Pins SDA: B.6; SCL B.5
//
// Bluetooth Low Energy Module:
//		LAPIS ML7105 (SPI) - Connected to Q111 mcu, and communicating to Q112 via UART
//
// USER LED's:
//		LED_1 to PortA.2
//		LED_2 to PortB.7 
//		LED_3 to PortC.1 
//		LED_4 to PortC.2 
//
// Receiver Inputs:
//		CH_1 (Roll) => D.2
//		CH_2 (Pitch) => D.3
//		CH_3 (Throttle) => D.4
//		CH_4 (Yaw) => D.5
//
// Communication Connections:
//		Communication Selector (BLE or RADIO) => C.5
//		UART - RX => B.0
//		UART - TX => B.1
//		I2C - SCL => B.5
//		I2C - SDA => B.6
//		SPI - MOSI => B.4
//		SPI - MISO => B.3
//		SPI - SCLK => B.5
//		SPI - CS1 => C.3	
//		SPI - CS2 => C.4
//		MCU to MCU => D.0 of Q112 to A.0 (Ext INT) of Q111
//
// MISC. Connections
//		Gyro INT => C.7
//  	Ultrasonic Status => C.6
//		Camera Trigger/ Spare => D.1

//*****************************************************************************


// ================================ QUADCOPTER Pinout ======================== 
// I/O PIN DATA ALIASES...
	//ESC CONTROLLER PINS (PWM)
		#define ESC_1		PC0D	// OUTPUT: ESC#1 => PortC.0 (PWMF0)
		#define ESC_2		PB2D	// OUTPUT: ESC#2 => PortB.2 (PWME)	
		#define ESC_3		PA0D	// OUTPUT: ESC#3 => PortA.0 (PWMC)
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
#define FLG_SET	    ( 0x01u ) 	

// SET DESIRED UART SETTINGS HERE! (Options in UART.h)
#define UART_BAUDRATE		( UART_BR_256000BPS) 	// Data Bits Per Second - Tested at rates from 2400bps to 512000bps!
#define UART_DATA_LENGTH	( UART_LG_8BIT )		// x-Bit Data
#define UART_PARITY_BIT		( UART_PT_NON )			// Parity
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
void ReturnAccelData(void);
void ReturnMagData(void);

void CalibrateMotors(void);
void SerialOutCoefficients(void);
void UARTTunePID(void);
void SoftStart(void);

void RampUpMotorTest(void);
void DistanceSensorControl(void);
void AccelSensorControl(void);
void MagSensorControl(void);
void MagSensorControlPID(void);
void AccelSensorControlPID(void);
void RangeSensorControlPID(void);

void CheckSafetyLimit(void);
void CheckSafetyLimitUnscaled(void);
void Shutdown(void);

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
float approx_arctan2(float y, float x);

void TBC_ISR( void );	//TBC Interrupt Service Routine...
void TMR89_ISR( void );

//*****************************************************************************

//GLOBALS...
unsigned char	_flgUartFin;
unsigned char 	_flgI2CFin;
unsigned char	_reqNotHalt;

//Variable for Obtaining Sensor Data
static unsigned char			MPU6050Address = 0x68;
static unsigned char			AccGyro_PWRMGMT1REG = 0x6B;
static unsigned char			AccGyro_PWRMGMT1REG_Contents = 0x00;
static unsigned char			AccGyro_AccelConfig = 0x1C;
static unsigned char			AccGyro_AccelConfig_Contents = 0x00; 	//  0x08 = +- 4g resolution; 0x18 = +-16g resolution; 0x00 = +-2g resolution
static float					AccGyro_AccelScaling = 16384;			//	4g = 8192, 2g = 16384, 16g = 2048
static unsigned char			AccGyro_GyroConfig = 0x1B;
static unsigned char			AccGyro_GyroConfig_Contents = 0x08; 	// 	0x00 = +-250deg/sec, 0x08 = +-500deg/sec, 0x16 = 1000deg/sec, 0x24 = +-2000deg/sec
static float					AccGyro_GyroScaling = 65.536;			//	0x00 = 131, 0x08 = 65.536, 0x16 = 32.8, 0x24 = 16.4
static unsigned char			AccGyro_GyroAccelLPF = 0x1A;			//	Address of Config for LPF for Gyro and Accel
static unsigned char			AccGyro_GyroAccelLPF_Contents = 0x4;	//	6=5Hz, 5=10Hz, 4=21Hz (Config Low-Pass Filter for Gyro and Accel)


static unsigned char			AccGyro_ReadData = 0x3B;
static unsigned char			AccGyro_Data[14];
static float					Accel_Xout = 0;
static float					Accel_Yout = 0;
static float					Accel_Zout = 0;
static float					Temp_out = 0;
static float					Gyro_Xout = 0;
static float					Gyro_Yout = 0;
static float					Gyro_Zout = 0;

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
static float					Mag_Xout = 0;
static float					Mag_Yout = 0;
static float					Mag_Zout = 0;
static float					Mag_Angle = 0;
static float					Mag_GainFactor = 1.52;
static float					Mag_DeclinationAngle = -0.128;	//Error Based on Location  
																//www.magnetic-declination.com
static unsigned int 			timer_us = 0;	//timer variable for NOPus
static unsigned int				Ping_timer = 0;
static float					Ping_out = 0;

static unsigned char			Range_Address = 0x70;
static unsigned char			Range_Output[2];
static unsigned char			Range_TakeRangeReading = 0x51;
static unsigned int				Range_out = 0;

//Variables for First Order Process Control Loops
static unsigned int				MotorStep = 10;
static unsigned int				Mag_MotorStep = 10;
static float					Range_ZHiThres = 70;
static float					Range_ZLoThres = 50;	
static float					Range_Ceiling = 240;

static float					Accel_XLoThres = -0.11;
static float					Accel_XHiThres = 0.11;
static float					Accel_YLoThres = -0.11;
static float					Accel_YHiThres = 0.11;
static float					Mag_CWThres = 1;
static float					Mag_CCWThres = 359;
//static float					Mag_FacingPole = 0;
static float					Mag_OpposingPole = 180;

//Variables for PID Control Loops
static float					Mag_PIDSetpoint = 0;		//Desired Heading
static float					Mag_PIDCorrectionFactor = 0;
static float					Mag_PIDAngleScaled = 0;
static float					Mag_PIDError = 0;			//Set point-input
static unsigned int				Mag_PIDCounter = 0;			//Timer Variable incremented in TBC; reset in PID loop
static float					Mag_PIDCurrentCount = 0;
static float					Mag_PIDErrSum = 0;			//Integral Error Portion of PID
static float					Mag_PIDdErr = 0;			//Derivative Error Portion of PID
static float					Mag_PIDErrPrev = 0;		//Derivative Error Portion of PID from last measurement
static float					Mag_PID_kp = .375;
static float					Mag_PID_ki = 0;
static float					Mag_PID_kd = .85;
static float					Mag_PIDOutput = 0;


//Accel-Gyro Complementary Filter
static float					CF_Gyro_Counter = 0;
static float					CF_YPitch = 0;
static float					CF_XRoll = 0;
static float					CF_HPF = 0.97; 					// = a = tau/(tau+dt) => Calibrated 3-28-2014 = 0.97 
static float					CF_LPF = 0.03;					// = 1-a
static unsigned char			CF_UseFlag = 0;
static unsigned char			CF_Counter = 0;

static float					CF_YPitch_avg = 0;
static float					CF_XRoll_avg = 0;
static unsigned char			CF_highlow_flag = 1;
static float					CF_YPitch_high = 0;
static float					CF_XRoll_high = 0;
static float					CF_YPitch_low = 0;
static float					CF_XRoll_low = 0;
static float					CF_avgCnt = 0;
static float					CF_StdDev_M_X = 0;
static float					CF_StdDev_M_Y = 0;
static float					CF_StdDev_Mtmp_X = 0;
static float					CF_StdDev_Mtmp_Y = 0;
static float					CF_StdDev_S_X = 0;
static float					CF_StdDev_S_Y = 0;
static float					CF_StdDev_K = 1;

//Accel-Gyro PID

static unsigned int				Accel_PID_XRollCounter = 0;
static float					Accel_PID_XRollErrSum = 0;		//Integral Error Portion of PID
static float					Accel_PID_XRollErrPrev = 0;		//Derivative Error Portion of PID from last measurement	
static unsigned int				Accel_PID_YPitchCounter = 0;
static float					Accel_PID_YPitchErrSum = 0;		//Integral Error Portion of PID
static float					Accel_PID_YPitchErrPrev = 0;	//Derivative Error Portion of PID from last measurement

static float					Accel_PID_XRoll_kp = 3.1;		//Calibrated 3-30-2014	//0.8
static float					Accel_PID_XRoll_ki = 0.0006;							//0.001
static float					Accel_PID_XRoll_kd = 3.0;								//0.5
static float					Accel_PID_YPitch_kp = 3.1;
static float					Accel_PID_YPitch_ki = 0.0006;
static float					Accel_PID_YPitch_kd = 3.0;

unsigned char					Accel_PID_XYChangeFlag = 0;
static unsigned int				Accel_PID_Counter = 0;

static unsigned int				Accel_PID_Motor1 = 16383;
static unsigned int				Accel_PID_Motor2 = 16383;
static unsigned int				Accel_PID_Motor3 = 16383;
static unsigned int				Accel_PID_Motor4 = 16383;

/*
static float					TuningVar = -0.5;
static unsigned char			TuningFlag = 0;
*/

static float					Range_PIDSetpoint = 70;
static float					Range_PIDError = 0;
static unsigned int				Range_PIDCounter = 0;
static float					Range_PIDCurrentCount = 0;
static float					Range_PIDErrSum = 0;			//Integral Error Portion of PID
static float					Range_PIDdErr = 0;				//Derivative Error Portion of PID
static float					Range_PIDErrPrev = 0;			//Derivative Error Portion of PID from last measurement
static float					Range_PIDOutput = 0;
static float					Range_PID_kp = 0;
static float					Range_PID_ki = 0;
static float					Range_PID_kd = 0;

//Misc
static unsigned char			SensorReturn[200];
static unsigned char			SensorReturnSM[50];
static unsigned int				TestingEndTimer = 0;
static unsigned int				Timer8Counter = 0;
//static unsigned int			Sensor_RefreshRate = 9;
static unsigned char			RecWorld[8];
static unsigned char			NewVar_Str[6];
static float					NewVar;	

//Motor Control
static unsigned char 			PWMflag = 0;
static unsigned int 			PWMUpperDutyLimitCalib = 15000;			//Value for Maximum Duty (WAS 16000)
static unsigned int 			PWMLowerDutyLimitCalib = 8000;			//Value for Minimum Duty
static unsigned int 			PWMSafeDuty = 8450;						//Value for Safe Duty = Off, right before starting to spin
static unsigned int				PWMPeriod = 17000; 						//Value for Period 
static unsigned char 			PWMCounter = 0;
static unsigned char 			PWMSensorResPerInc = 0;
//static unsigned int				PWM_AccelMinHoverRPM = 10500;			//Unused as of 3/30/2014...
static unsigned int				PWMUpperLowerDiff = 0;
static unsigned int 			PWMUpperDutyLimitRun = 11000;			//Value for Maximum Duty	//18min flight = 11500
static unsigned int 			PWMLowerDutyLimitRun = 9000;			//Value for Minimum Duty	//18min flight = 9500
																		//9000 duty 	=  	3040rpm
																		//10000 duty 	= 	4580rpm
																		//11000 duty	=	5820rpm
																		//12000 duty	=	6700rpm
																		//13000 duty	=	7780rpm

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
		Initialization(); 			//Ports, UART, Timers, Oscillator, Comparators, etc.
		main_clrWDT();				//kick the dog...1.34uS duration
		CalibrateMotors();			//Time-consuming ~6s
		
	
Main_Loop:
		SerialOutCoefficients();	//~23ms
		UARTTunePID();				//Allow PID & CF Constant changes over UART
		main_clrWDT();				//kick the dog...1.34uS duration.
		SoftStart();				//Smoothly bring up the Motor RPM
		
Fast_Loop:							//This loop takes 22.4ms for this loop as of 3/30/2014		
		LED_1 = 1;
		main_clrWDT();				//kick the dog...1.34uS duration
		ClearVariables();			//Fresh start each loop...
		
		if(Mag_PIDCounter>14){		//Counter++ @ 125us, need 14ms, thus 112*125us = 14ms //Counter Reset in Mag PID Loop and incremented in TMR89_ISR
		//Get_MagData();
			//ReturnMagData();
			//MagSensorControlPID();
		}
		
		Get_AccGyroData();	//This Function takes 14ms (as of 3/30/2013)
		
		if(Accel_PID_XRollCounter>100){		//Counter++ @ 125us, need 7ms, thus 7*125us = 14ms //Counter Reset in Accel/Gyro PID Loop and incremented in TMR89_ISR
			//Get_AccGyroData();	//Moved outside of loop			
			//ReturnAccelData();	//Dont run this normally, UART takes too much time...
			LED_3 = 1;
			AccelSensorControlPID(); // This Function takes 8.4ms loop (as of 3/30/2014)	
			LED_3 = 0;
			Accel_PID_Counter = 0;
		}			
		
		
		if(Range_PIDCounter>63){	//Counter++ @ 125us, need 63ms, thus 504*125us = 63ms ///Counter Reset in Range PID Loop and incremented in TMR89_ISR
		//Get_RangeData();
			// Make a "Return Range Data" Func
			//RangeSensorControlPID();
		}
		
		//----- Testing Variables/Functions -----
		//ReturnSensorData();
		//RampUpMotorTest();		//Needs PWMflag = to 0 before main loop to run properly.
		//DistanceSensorControl(); 	//First order control loop for working with the range sensor
		//AccelSensorControl();		//First order control loop for working with the Accelerometer sensor
		//MagSensorControl();		//First order control loop for working with the Mag sensor
		
		LED_1 = 0;
		//Motor Run Time...
		if(TestingEndTimer < 1750){		//50 == 3secs = 250 = 15 seconds
			TestingEndTimer++;			//Comment this out to always loop (i.e.: no shut-down...)
			goto Fast_Loop;
		}
		else{
			Shutdown();
			TestingEndTimer = 0;

			goto Main_Loop;
		}
//goto Main_Loop;
}//end main

//===========================================================================
//  	End of MAIN FUNCTION
//===========================================================================
//*****************************************************************************

//-----------------------------------------------------------------------------------------
//STANDARD DEVIATION CODE...
		/*
		CF_YPitch_avg = 0;
		CF_XRoll_avg = 0;
		CF_highlow_flag = 1;
		CF_avgCnt = 0;
		CF_StdDev_M_X = 0;
		CF_StdDev_M_Y = 0;
		CF_StdDev_S_X = 0;
		CF_StdDev_S_Y = 0;
		CF_StdDev_K = 1;
		*/ 

			/*
			//----- Return CF Averages, Min, Max Code Segment -----
			CF_YPitch_avg /= CF_avgCnt;
			CF_XRoll_avg /= CF_avgCnt;
			for(i = 0; i<50; i++)
			{
				SensorReturnSM[i] = 0x20;
			}
			sprintf(SensorReturnSM, "CF_Y=%f, CF_X=%f", CF_YPitch_avg, CF_XRoll_avg);
			SensorReturnSM[48] = 0x0D;
			SensorReturnSM[49] = 0x0A;
			//Send Returned Sensor Output to PC!
			_flgUartFin = 0;
			uart_stop();
			uart_startSend(SensorReturnSM, 50, _funcUartFin);
			while(_flgUartFin != 1){
				main_clrWDT();
			}
			CF_YPitch_avg = 0;
			CF_XRoll_avg = 0;
			CF_avgCnt = 0;
			
			for(i = 0; i<50; i++)
			{
				SensorReturnSM[i] = 0x20;
			}
			sprintf(SensorReturnSM, "CF_Ymin=%f, CF_Xmin=%f", CF_YPitch_low, CF_XRoll_low);
			SensorReturnSM[48] = 0x0D;
			SensorReturnSM[49] = 0x0A;
			//Send Returned Sensor Output to PC!
			_flgUartFin = 0;
			uart_stop();
			uart_startSend(SensorReturnSM, 50, _funcUartFin);
			while(_flgUartFin != 1){
				main_clrWDT();
			}
			CF_YPitch_low = 0;
			CF_XRoll_low = 0;
			
			for(i = 0; i<50; i++)
			{
				SensorReturnSM[i] = 0x20;
			}
			sprintf(SensorReturnSM, "CF_Ymax=%f, CF_Xmax=%f", CF_YPitch_high, CF_XRoll_high);
			SensorReturnSM[48] = 0x0D;
			SensorReturnSM[49] = 0x0A;
			//Send Returned Sensor Output to PC!
			_flgUartFin = 0;
			uart_stop();
			uart_startSend(SensorReturnSM, 50, _funcUartFin);
			while(_flgUartFin != 1){
				main_clrWDT();
			}
			CF_YPitch_low = 0;
			CF_XRoll_low = 0;
			CF_highlow_flag = 1;
			//----- END Return CF Averages Code Segment -----
			
			//----- Start Return CF Standard Deviation Code Segment -----
			CF_StdDev_S_X = sqrt(CF_StdDev_S_X / (CF_StdDev_K-1));
			CF_StdDev_S_Y = sqrt(CF_StdDev_S_Y / (CF_StdDev_K-1));
			for(i = 0; i<50; i++)
			{
				SensorReturnSM[i] = 0x20;
			}
			sprintf(SensorReturnSM, "CF_SDX=%f, CF_SDY=%f", CF_StdDev_S_X, CF_StdDev_S_Y);
			SensorReturnSM[48] = 0x0D;
			SensorReturnSM[49] = 0x0A;
			//Send Returned Sensor Output to PC!
			_flgUartFin = 0;
			uart_stop();
			uart_startSend(SensorReturnSM, 50, _funcUartFin);
			while(_flgUartFin != 1){
				main_clrWDT();
			}
			CF_StdDev_M_X = 0;
			CF_StdDev_M_Y = 0;
			CF_StdDev_S_X = 0;
			CF_StdDev_S_Y = 0;
			CF_StdDev_K = 1;
			//----- END Return CF Standard Deviation Code Segment -----
			*/
//END STANDARD DEVIATION CODE...


//Now this portion ion GetAccelData...
	/*
	//----- CF Characterization -----
	CF_YPitch_avg += CF_YPitch;
	CF_XRoll_avg += CF_XRoll;
	CF_avgCnt +=1;
	
	if(CF_YPitch < CF_YPitch_low){
		CF_YPitch_low = CF_YPitch;
	}
	if(CF_XRoll < CF_XRoll_low){
		CF_XRoll_low = CF_XRoll;
	}
	if(CF_YPitch > CF_YPitch_high){
		CF_YPitch_high = CF_YPitch;
	}
	if(CF_XRoll > CF_XRoll_high){
		CF_XRoll_high = CF_XRoll;
	}
	if(CF_highlow_flag == 1){
		CF_XRoll_high = CF_XRoll;
		CF_YPitch_high = CF_YPitch;
		CF_XRoll_low = CF_XRoll;
		CF_YPitch_low = CF_YPitch;
		CF_highlow_flag = 0;
	}
	
	CF_StdDev_Mtmp_X = CF_StdDev_M_X;
	CF_StdDev_Mtmp_Y = CF_StdDev_M_Y;
	
	CF_StdDev_M_X += (CF_XRoll - CF_StdDev_Mtmp_X)/CF_StdDev_K;
	CF_StdDev_M_Y += (CF_YPitch - CF_StdDev_Mtmp_Y)/CF_StdDev_K;
	
	CF_StdDev_S_X += (CF_XRoll - CF_StdDev_Mtmp_X) * (CF_XRoll - CF_StdDev_M_X);
	CF_StdDev_S_Y += (CF_YPitch - CF_StdDev_Mtmp_Y) * (CF_YPitch - CF_StdDev_M_Y); 
	
	CF_StdDev_K++;
	*/
	/* // ----- Algorithm for finding a running average and stdDev ----
	public static double StandardDeviation(List<double> valueList)
	{
		double M = 0.0;
		double S = 0.0;
		int k = 1;
		foreach (double value in valueList) 
		{
			double tmpM = M;
			M += (value - tmpM) / k;
			S += (value - tmpM) * (value - M);
			k++;
		}
		return Math.Sqrt(S / (k-1));
	}	
	*/
	//----- END CF Characterization -----
	
	
//-----------------------------------------------------------------------------------------

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
	LED_4 = 1;
	//How to clear the Watch Dog Timer:
	// => Write alternately 0x5A and 0xA5 into WDTCON register
	do {
		WDTCON = 0x5Au;
	} while (WDP != 1);
	WDTCON = 0xA5u;
	LED_4 = 0;
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
  	//clk_setSysclk( CLK_SYSCLK_HSCLK, CLK_SYSC_OSCLK, CLK_OSCM_PLL, 8 );
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
				
 	//-----------------------------------------------------------------------------------------------
	//Set up I2C Master Interrupt
	(void)irq_setHdr( (unsigned char)IRQ_NO_I2CMINT, _intI2c );
		EI2CM = 1;
		//QI2CM = 1;
 	//-----------------------------------------------------------------------------------------------
	//Set up UART Interrupt
	(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );		
		EUA0 = 1; // EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
		//QUA0 = 1;	
 	//-----------------------------------------------------------------------------------------------
	//Set up xHz TBC Interrupt (Options: 128Hz, 32Hz, 16Hz, 2Hz)
	/*
	(void)irq_setHdr( (unsigned char)IRQ_NO_T128HINT, TBC_ISR );  //Clear interrupt request flag
	// TBC...Set Ratio: : 1:1 => 1_1
	(void)tb_setHtbdiv( (unsigned char)TB_HTD_1_1 ); //Set the ratio of dividing frequency of the time base counter
		E128H = 0;	  // Enable x Hz TBC Interrupt (1=ENABLED)
		Q128H = 0;	  // Request flag for the time base counter x Hz interrupt	
	*/
 	//-----------------------------------------------------------------------------------------------
	//Set up TIMER 8/9 Interrupt to increment timers every ~1ms
	(void)irq_setHdr( (unsigned char)IRQ_NO_TM9INT, TMR89_ISR );  //Clear interrupt request flag
		ETM8 = 1;	  	// Enable timer 8 Interrupt (1=ENABLED
		ETM9 = 1;	  	// Enable timer 9 Interrupt (1=ENABLED)
		QTM8 = 1;		// timer 8 IRQ request flag
		QTM9 = 1;		// timer 9 IRQ request flag
		T8CS0 = 1;
		T8CS1 = 1;
		T8CS2 = 0;
		T9CS0 = 1;
		T9CS1 = 1;
		T9CS2 = 0;
		tm_init(TM_CH_NO_89);
		tm_set89Data(8192);				//A value of 1023 should yield 125us interrupts at 8.192 MHz
		tm_set89Source(TM_CS_HTBCLK);
		tm_start89();
		T89M16 = 1;
		
		HTD3 = 1;
		HTD2 = 1;
		HTD1 = 1;
		HTD0 = 1; 
	//-----------------------------------------------------------------------------------------------	
	

	// WDT Set up...
	WDTMOD = 0x03; 	// 0x03=overflow 8sec...
	main_clrWDT(); 	// Clear WDT
	

	//I2C Initialization...
	(void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_ON);
		//I20SYN = 1;		//Enable Clock Stretching
	
	//UART Initialization...
	(void)uart_init( (unsigned char)UART_CS_HSCLK,		/* Generator       */
			     (unsigned short)HSCLK_KHZ,		/* HSCLK frequency */
			     &_uartSetParam );				/* Param... 	 */
		uart_PortSet();
		_flgUartFin = 0;
		uart_stop();
	
	irq_ei(); // Enable Interrupts
	// IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII

	//PWM Set up...
		ESC1_PWM();
		ESC2_PWM();
		ESC3_PWM();
		ESC4_PWM();
		
		PD0DIR = 1;
		PD1DIR = 1;
		PD2DIR = 0;
	
		PWMUpperLowerDiff = PWMUpperDutyLimitRun-PWMLowerDutyLimitRun;
	
	//----- Gyro/Accel I2C Init TX Command ----- //Command for getting the Gyro out of sleep
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( MPU6050Address, &AccGyro_PWRMGMT1REG, 1, &AccGyro_PWRMGMT1REG_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	}
	//----- Gyro/Accel Config Accel
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( MPU6050Address, &AccGyro_AccelConfig, 1, &AccGyro_AccelConfig_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	}
	//----- Gyro/Accel Config Gyro
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( MPU6050Address, &AccGyro_GyroConfig, 1, &AccGyro_GyroConfig_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	}
	//----- Gyro/Accel Config Gyro
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( MPU6050Address, &AccGyro_GyroAccelLPF, 1, &AccGyro_GyroAccelLPF_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	}
	
	//----- Mag I2C Init TX Command ----- 
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( HMC5883Address, &Mag_ConfigA, 1, &Mag_ConfigA_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	}
	
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( HMC5883Address, &Mag_ConfigB, 1, &Mag_ConfigB_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	}
	
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( HMC5883Address, &Mag_ModeReg, 1, &Mag_ModeReg_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
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
		main_clrWDT();
	}
	while(RANGE_STAT==1);
	
	//----- Range Sensor - Read back range ----------
	_flgI2CFin = 0;																	//reset I2C completed Flag
	i2c_stop();																		//Make sure I2C is not currently running
	i2c_startReceive(Range_Address, &Range_TakeRangeReading, 0, &Range_Output, 2, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
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
	//CF Local Variables	
	static float			CF_Accel_XRoll = 0;
	static float			CF_Accel_YPitch = 0;
	static float			CF_Gyro_XRoll = 0;
	static float			CF_Gyro_YPitch = 0;
	static float			CF_Accel_ForceMagApprox = 0;
	static float			CF_Gyro_CurrentCount = 0;

LED_2 = 1;
//Begin data... => Takes 1.3ms to gather  Raw Accel/Gyro data
	//----- Accel/Gryo Start I2C Command ----- 
	_flgI2CFin = 0;																	//reset I2C completed Flag
	i2c_stop();																		//Make sure I2C is not currently running
	I20MD = 1;		//Switch to I2C Fast Operation (400kbps)
	i2c_startReceive(MPU6050Address, &AccGyro_ReadData, 1, &AccGyro_Data, 14, (cbfI2c)_funcI2CFin);	//Begin I2C Receive Command
	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
		main_clrWDT();	
	}
	//----- End Accel/Gyro I2C RX Command -----
	
	Accel_Xout = (AccGyro_Data[0]<<8)+(AccGyro_Data[1]);
	Accel_Yout = (AccGyro_Data[2]<<8)+(AccGyro_Data[3]);
	Accel_Zout = (AccGyro_Data[4]<<8)+(AccGyro_Data[5]);
	/*
	Accel_Xout /= AccGyro_AccelScaling;
	Accel_Yout /= AccGyro_AccelScaling;
	Accel_Zout /= AccGyro_AccelScaling;
	*/
	//Temp_out = (AccGyro_Data[6]<<8)+(AccGyro_Data[7]);
	//Eventually add this scaling and print!
	
	Gyro_Xout = (AccGyro_Data[8]<<8)+(AccGyro_Data[9]);
	Gyro_Yout = (AccGyro_Data[10]<<8)+(AccGyro_Data[11]);
	Gyro_Zout = (AccGyro_Data[12]<<8)+(AccGyro_Data[13]);
	/*
	Gyro_Xout /= AccGyro_GyroScaling;
	Gyro_Yout /= AccGyro_GyroScaling;
	Gyro_Zout /= AccGyro_GyroScaling;
	*/
//end Raw Data...
	LED_2 = 0;
	
//This section with FP math takes 12.7ms as of 3/30/2013
	//----- Start Complementary Filter for Sensor Fusion -----
	CF_Gyro_CurrentCount = CF_Gyro_Counter * .001;		//Timer in Seconds (.007 used to convert 128Hz TBC to seconds)
	CF_Gyro_Counter = 0;
	
	CF_Gyro_YPitch = CF_YPitch + ((Gyro_Xout/AccGyro_GyroScaling) * CF_Gyro_CurrentCount);
	CF_Gyro_XRoll = CF_XRoll - ((Gyro_Yout/AccGyro_GyroScaling) * CF_Gyro_CurrentCount);	
	
	CF_Accel_ForceMagApprox = abs(Accel_Xout) + abs(Accel_Yout) + abs(Accel_Zout);
	if (CF_Accel_ForceMagApprox > 16384 && CF_Accel_ForceMagApprox < 32768)
    {
	// Turning around the X axis results in a vector on the Y-axis
        CF_Accel_YPitch = atan2(Accel_Yout, Accel_Zout) * (57.29);	//57.29 = 180deg/pi
        CF_YPitch = (CF_Gyro_YPitch * CF_HPF) + (CF_Accel_YPitch * CF_LPF);
 
	// Turning around the Y axis results in a vector on the X-axis
        CF_Accel_XRoll = atan2(Accel_Xout, Accel_Zout) * (57.29);
        CF_XRoll = (CF_Gyro_XRoll * CF_HPF) + (CF_Accel_XRoll * CF_LPF);
    }
	else{
		CF_YPitch = CF_Gyro_YPitch;
		CF_XRoll = CF_Gyro_XRoll;
	}
//End FP Section............ 

}

void Get_MagData(void){
	//----- Magnetic I2C RX Command -----
	_flgI2CFin = 0;														//reset I2C completed flag
	i2c_stop();															//Make sure I2C is not currently running
	i2c_startSend( HMC5883Address, &Mag_ModeReg, 1, &Mag_ModeReg_Contents, 1, (cbfI2c)_funcI2CFin);		//Begin I2C Receive Command
	while(_flgI2CFin != 1){												//Wait for I2C commands to finish transfer
		main_clrWDT();
	}

	_flgI2CFin = 0;																	//reset I2C completed Flag
	i2c_stop();																		//Make sure I2C is not currently running
	i2c_startReceive(HMC5883Address, &Mag_ReadData, 1, &Mag_Data, 6, (cbfI2c)_funcI2CFin);	//Begin I2C Recieve Command
	while(_flgI2CFin != 1){															//Wait for I2C commands to finish transfer
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
	
	Mag_Angle -= 90;  //This will adjust and get the true 
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
	//sprintf(SensorReturn, "%f,%f,%f,%f,%f,%f,%f,%f,%f", Accel_Xout, Accel_Yout, Accel_Zout, Gyro_Xout, Gyro_Yout, Gyro_Zout, Mag_Angle,Range_out,Ping_out);
	sprintf(SensorReturn, "%f,%f,%f,%f,%f,%f,%f,%u", Accel_Xout, Accel_Yout, Accel_Zout, Gyro_Xout, Gyro_Yout, Gyro_Zout, Mag_Angle,Range_out);
	
	SensorReturn[148] = 0x0D;
	SensorReturn[149] = 0x0A;
	
	//Send Returned Sensor Output to PC!
	_flgUartFin = 0;
	uart_stop();
	uart_startSend(SensorReturn, 150, _funcUartFin);
	while(_flgUartFin != 1){
		main_clrWDT();
	}
}

void ReturnAccelData(void){
	int i;
	for(i = 0; i<150; i++)
	{
		SensorReturn[i] = 0x20;
	}
	
	//sprintf(SensorReturn, "X = %f, Y = %f, Z = %f", Accel_Xout, Accel_Yout, Accel_Zout);
	sprintf(SensorReturn, "%f,%f,%f", Accel_Xout, Accel_Yout, Accel_Zout);
	
	SensorReturn[148] = 0x0D;	//CR
	SensorReturn[149] = 0x0A;	//LF
	
	//Send Returned Sensor Output to PC!
	_flgUartFin = 0;
	uart_stop();
	uart_startSend(SensorReturn, 150, _funcUartFin);
	while(_flgUartFin != 1){
		main_clrWDT();
	}
}

void ReturnMagData(void){
	int i;
	for(i = 0; i<150; i++)
	{
		SensorReturn[i] = 0x20;
	}
	sprintf(SensorReturn, "%f", Mag_Angle);
	
	SensorReturn[148] = 0x0D;
	SensorReturn[149] = 0x0A;
	
	//Send Returned Sensor Output to PC!
	_flgUartFin = 0;
	uart_stop();
	uart_startSend(SensorReturn, 150, _funcUartFin);
	while(_flgUartFin != 1){
		main_clrWDT();
	}
}

/* ----- Calibrate ESCs ------------------
Set All PWM Signals to â??Maximum PWMâ?;
Delay (3 seconds)
Set All PWM Signals to â??Minimum PWMâ?;
Delay (500 ms)
------------------------------------------*/
void CalibrateMotors(void){
	
	//Set Max PWM for 3secs
	PWFP = PWMPeriod;
	PWEP = PWMPeriod;
	PWDP = PWMPeriod;
	PWCP = PWMPeriod;
	
	PWF0D = PWMUpperDutyLimitCalib; //Can't be running to change
	PWED = PWMUpperDutyLimitCalib;
	PWDD = PWMUpperDutyLimitCalib;
	PWCD = PWMUpperDutyLimitCalib;
	
	PFRUN = 1;
	PERUN = 1;
	PDRUN = 1;
	PCRUN = 1;
	//LED_4 = 1;
	NOP(3);
	//LED_4 = 0;
	main_clrWDT();
	
	
	//Set Min PWM for 3 secs
	PFRUN = 0;
	PERUN = 0;
	PDRUN = 0;
	PCRUN = 0;
		
	PWF0D = PWMLowerDutyLimitCalib; //Can't be running to change
	PWED = PWMLowerDutyLimitCalib;
	PWDD = PWMLowerDutyLimitCalib;
	PWCD = PWMLowerDutyLimitCalib;
	
	PFRUN = 1;
	PERUN = 1;
	PDRUN = 1;
	PCRUN = 1;
	
	NOP(3);
	
	//Adjust PWM to Safe Level just below the "motor on" point
	PFRUN = 0;
	PERUN = 0;
	PDRUN = 0;
	PCRUN = 0;
		
	PWF0D = PWMSafeDuty; //Can't be running to change
	PWED = PWMSafeDuty;
	PWDD = PWMSafeDuty;
	PWCD = PWMSafeDuty;
	
	PFRUN = 1;
	PERUN = 1;
	PDRUN = 1;
	PCRUN = 1;
	
	Mag_PIDCounter = 0;
	CF_Gyro_Counter = 0;
	Accel_PID_XRollCounter = 0;
	Accel_PID_YPitchCounter = 0;
	Range_PIDCounter = 0;
	//Sensor_RefreshRate = 0;
}

//Function used during code development to make tuning of ki, kp , kd, a1 & a2 easier...
void SerialOutCoefficients(void)
{
	int j;
		//Serial out Constants being used...kp, ki, kd, & CF coefficients 
		for(j = 0; j<150; j++)
		{
			SensorReturn[j] = 0x20;
		}
		//sprintf(SensorReturn, "%f,%f,%f,%f,%f,%f,%f,%f,%f", Accel_Xout, Accel_Yout, Accel_Zout, Gyro_Xout, Gyro_Yout, Gyro_Zout, Mag_Angle,Range_out,Ping_out);
		sprintf(SensorReturn, "kp=%f,ki=%f,kd=%f,a1=%f,a2=%f", Accel_PID_XRoll_kp, Accel_PID_XRoll_ki, Accel_PID_XRoll_kd, CF_HPF, CF_LPF);
		
		SensorReturn[148] = 0x0D;	//CR
		SensorReturn[149] = 0x0A;	//LF
		
		//Send Returned Sensor Output to PC!
		_flgUartFin = 0;
		uart_stop();
		uart_startSend(SensorReturn, 150, _funcUartFin);
		while(_flgUartFin != 1){
			main_clrWDT();
		}
}


void UARTTunePID (void)
{
int k;
		//Reset RecWorld for UART Receive
		for (k=0;k<7;k++)
		{
			RecWorld[k] = 0;	//ie: to set ki to 1.5 =>send ki1.50000
		}
		
		ETM8 = 0; //Turn OFF TIMER8/9 ISR for this function...
		ETM9 = 0; //Turn OFF TIMER8/9 ISR for this function...
		
		//Begin UART Receive
		_flgUartFin = 0;
		uart_stop();
		uart_startReceive(RecWorld, 8, _funcUartFin);
		while(_flgUartFin != 1){
			main_clrWDT();
		}
		
		//Check UART Receive String for "ACK"
		//if ACK Sent, Return "UART Connected"
		//--This loop triggers when COM port is open3ed on PC
		if(RecWorld[0] == 0x6B){			//if RECWORLD == "kp"
			if(RecWorld[1] == 0x70){
				NewVar_Str[0] = RecWorld[2];
				NewVar_Str[1] = RecWorld[3];
				NewVar_Str[2] = RecWorld[4];
				NewVar_Str[3] = RecWorld[5];
				NewVar_Str[4] = RecWorld[6];
				NewVar_Str[5] = RecWorld[7];
				sscanf(NewVar_Str, "%f", &NewVar);
				Accel_PID_XRoll_kp = NewVar;
				Accel_PID_YPitch_kp = NewVar;
			}
		}
		
		if(RecWorld[0] == 0x6B){			//if RECWORLD == "ki"
			if(RecWorld[1] == 0x69){
				NewVar_Str[0] = RecWorld[2];
				NewVar_Str[1] = RecWorld[3];
				NewVar_Str[2] = RecWorld[4];
				NewVar_Str[3] = RecWorld[5];
				NewVar_Str[4] = RecWorld[6];
				NewVar_Str[5] = RecWorld[7];
				sscanf(NewVar_Str, "%f", &NewVar);
				Accel_PID_XRoll_ki = NewVar;
				Accel_PID_YPitch_ki = NewVar;
			}
		}
		
		if(RecWorld[0] == 0x6B){			//if RECWORLD == "kd"
			if(RecWorld[1] == 0x64){
				NewVar_Str[0] = RecWorld[2];
				NewVar_Str[1] = RecWorld[3];
				NewVar_Str[2] = RecWorld[4];
				NewVar_Str[3] = RecWorld[5];
				NewVar_Str[4] = RecWorld[6];
				NewVar_Str[5] = RecWorld[7];
				sscanf(NewVar_Str, "%f", &NewVar);
				Accel_PID_XRoll_kd = NewVar;
				Accel_PID_YPitch_kd = NewVar;
			}
		}
		
		if(RecWorld[0] == 0x61){			//if RECWORLD == "a1"
			if(RecWorld[1] == 0x31){
				NewVar_Str[0] = RecWorld[2];
				NewVar_Str[1] = RecWorld[3];
				NewVar_Str[2] = RecWorld[4];
				NewVar_Str[3] = RecWorld[5];
				NewVar_Str[4] = RecWorld[6];
				NewVar_Str[5] = RecWorld[7];
				sscanf(NewVar_Str, "%f", &NewVar);
				CF_HPF = NewVar;
				CF_LPF = 1-NewVar;
			}
		}
		
		if(RecWorld[0] == 0x61){			//if RECWORLD == "a2"
			if(RecWorld[1] == 0x32){
				NewVar_Str[0] = RecWorld[2];
				NewVar_Str[1] = RecWorld[3];
				NewVar_Str[2] = RecWorld[4];
				NewVar_Str[3] = RecWorld[5];
				NewVar_Str[4] = RecWorld[6];
				NewVar_Str[5] = RecWorld[7];
				sscanf(NewVar_Str, "%f", &NewVar);
				CF_HPF = 1-NewVar;
				CF_LPF = NewVar;
			}
		}		
		
		for(k = 0; k<150; k++)
		{
			SensorReturn[k] = 0x20;
		}
		//sprintf(SensorReturn, "%f,%f,%f,%f,%f,%f,%f,%f,%f", Accel_Xout, Accel_Yout, Accel_Zout, Gyro_Xout, Gyro_Yout, Gyro_Zout, Mag_Angle,Range_out,Ping_out);
		sprintf(SensorReturn, "%f,%f,%f,%f,%f", Accel_PID_XRoll_kp, Accel_PID_XRoll_ki, Accel_PID_XRoll_kd, CF_HPF, CF_LPF);
		
		SensorReturn[148] = 0x0D;	//CR
		SensorReturn[149] = 0x0A;	//LF
		
		//Send Returned Sensor Output to PC!
		_flgUartFin = 0;
		uart_stop();
		uart_startSend(SensorReturn, 150, _funcUartFin);
		while(_flgUartFin != 1){
			main_clrWDT();
		}
		
		ETM8 = 1;	//Turn ON TIMER8/9 ISR Back ON
		ETM9 = 1;	//Turn ON TIMER8/9 ISR Back ON		
}

//A Simple SOFT Start for the Motors...
void SoftStart(void)
{
		//Build a Soft Start Here...
		//9500; 8450
		while(PWED < PWMLowerDutyLimitRun){
			NOPms(50);
			PFRUN = 0;	//Turn OFF PWM
			PERUN = 0;
			PDRUN = 0;
			PCRUN = 0;
			PWF0D += 1; 		//Can't be running to change (Only this variable)
			PWED += 1;	
			PWDD += 1;	
			PWCD += 1;
			//CheckSafetyLimit();
			PFRUN = 1;	//Turn ON PWM
			PERUN = 1;
			PDRUN = 1;
			PCRUN = 1;
		}
}

//PWM Increment-er... 
//This Code snippet will increment the PWM Duty Length by...
// 1/1050 every 10ms
void RampUpMotorTest(void){
	if(PWMCounter < PWMSensorResPerInc){
		PWMCounter++;
	}
	else{
		if(PWED < PWMUpperDutyLimitCalib){
			if(PWMflag == 0){
				PFRUN = 0;	//Turn OFF PWM
				PERUN = 0;
				PDRUN = 0;
				PCRUN = 0;
				PWF0D += MotorStep; //Can't be running to change (Only this variable)
				PWED += MotorStep;
				PWDD += MotorStep;
				PWCD += MotorStep;
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
				PWF0D -= MotorStep; //Can't be running to change (Only this variable)
				PWED -= MotorStep;
				PWDD -= MotorStep;
				PWCD -= MotorStep;
				PFRUN = 1;	//Turn ON PWM
				PERUN = 1;
				PDRUN = 1;
				PCRUN = 1;
				if(PWED <= PWMSafeDuty){
					PWMflag = 2;
				}
			}
		}
		if(PWED >= PWMUpperDutyLimitCalib){
			PFRUN = 0;	//Turn OFF PWM
			PERUN = 0;
			PDRUN = 0;
			PCRUN = 0;
			PWF0D -= MotorStep; //Can't be running to change (Only this variable)
			PWED -= MotorStep;
			PWDD -= MotorStep;
			PWCD -= MotorStep;
			PWMflag = 1;
			PFRUN = 1;	//Turn ON PWM
			PERUN = 1;
			PDRUN = 1;
			PCRUN = 1;
		}
		PWMCounter = 0;
	}
}
void DistanceSensorControl(void){
	if((Range_out < Range_ZHiThres)||(Range_out > Range_Ceiling)){	//65 = 4Ft Level, 240 accounts for sensor error when too close to ground.
		PFRUN = 0;	//Turn OFF PWM
		PERUN = 0;
		PDRUN = 0;
		PCRUN = 0;
		PWF0D += MotorStep; //Can't be running to change (Only this variable)
		PWED += MotorStep;
		PWDD += MotorStep;
		PWCD += MotorStep;
		PFRUN = 1;	//Turn ON PWM
		PERUN = 1;
		PDRUN = 1;
		PCRUN = 1;
	}			
	if(Range_out > 75){	//4Ft Level
		PFRUN = 0;	//Turn OFF PWM
		PERUN = 0;
		PDRUN = 0;
		PCRUN = 0;
		PWF0D -= MotorStep; //Can't be running to change (Only this variable)
		PWED -= MotorStep;
		PWDD -= MotorStep;
		PWCD -= MotorStep;
		PFRUN = 1;	//Turn ON PWM
		PERUN = 1;
		PDRUN = 1;
		PCRUN = 1;
	}
	/*
	//Motor Safety Limit
	if(PWED >= 14000){
		PWED = 14000;
		PWF0D = 14000; 
		PWDD = 14000;
		PWCD = 14000;
	}
	if(PWED <= 8450){
		PWED = 8450;
		PWF0D = 8450; 
		PWDD = 8450;
		PWCD = 8450;
	}
	
	if(TestingEndTimer < 1000){
		TestingEndTimer++;
		//goto Main_Loop;
	}
	else{
		if(PWED > 8450){
			do{
				main_clrWDT();					
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
				NOPms(100);
			}while(PWED > 8450);
		}
		while(1){
			main_clrWDT();	
		}
	}
	*/
}

void AccelSensorControl(void){
	if(Accel_Xout < Accel_XLoThres){
		PFRUN = 0;	//Turn OFF PWM
		PERUN = 0;
		PDRUN = 0;
		PCRUN = 0;
		PWF0D -= MotorStep; //Can't be running to change (Only this variable)
		PWED += MotorStep;
		PWDD -= MotorStep;
		PWCD += MotorStep;
		PFRUN = 1;	//Turn ON PWM
		PERUN = 1;
		PDRUN = 1;
		PCRUN = 1;
	}
	if(Accel_Xout > Accel_XHiThres){
		PFRUN = 0;	//Turn OFF PWM
		PERUN = 0;
		PDRUN = 0;
		PCRUN = 0;
		PWF0D += MotorStep; //Can't be running to change (Only this variable)
		PWED -= MotorStep;
		PWDD += MotorStep;
		PWCD -= MotorStep;
		PFRUN = 1;	//Turn ON PWM
		PERUN = 1;
		PDRUN = 1;
		PCRUN = 1;
	}
	if(Accel_Yout < Accel_YLoThres){
		PFRUN = 0;	//Turn OFF PWM
		PERUN = 0;
		PDRUN = 0;
		PCRUN = 0;
		PWF0D += MotorStep; //Can't be running to change (Only this variable)
		PWED += MotorStep;
		PWDD -= MotorStep;
		PWCD -= MotorStep;
		PFRUN = 1;	//Turn ON PWM
		PERUN = 1;
		PDRUN = 1;
		PCRUN = 1;
	}
	if(Accel_Yout > Accel_YHiThres){
		PFRUN = 0;	//Turn OFF PWM
		PERUN = 0;
		PDRUN = 0;
		PCRUN = 0;
		PWF0D -= MotorStep; //Can't be running to change (Only this variable)
		PWED -= MotorStep;
		PWDD += MotorStep;
		PWCD += MotorStep;
		PFRUN = 1;	//Turn ON PWM
		PERUN = 1;
		PDRUN = 1;
		PCRUN = 1;
	}
}

void MagSensorControl(void){
	if((Mag_Angle > Mag_CWThres)&&(Mag_Angle < Mag_OpposingPole)){
		PFRUN = 0;	//Turn OFF PWM
		PERUN = 0;
		PDRUN = 0;
		PCRUN = 0;
		PWF0D += Mag_MotorStep; //Can't be running to change (Only this variable)
		PWED -= Mag_MotorStep;
		PWDD -= Mag_MotorStep;
		PWCD += Mag_MotorStep;
		PFRUN = 1;	//Turn ON PWM
		PERUN = 1;
		PDRUN = 1;
		PCRUN = 1;
	}
	if((Mag_Angle < Mag_CCWThres)&&(Mag_Angle > Mag_OpposingPole)){
		PFRUN = 0;	//Turn OFF PWM
		PERUN = 0;
		PDRUN = 0;
		PCRUN = 0;
		PWF0D -= Mag_MotorStep; //Can't be running to change (Only this variable)
		PWED += Mag_MotorStep;
		PWDD += Mag_MotorStep;
		PWCD -= Mag_MotorStep;
		PFRUN = 1;	//Turn ON PWM
		PERUN = 1;
		PDRUN = 1;
		PCRUN = 1;
	}
}

void MagSensorControlPID(void){
	//-----Mag PID Loop -----
	int i;

	//Converting so SP = 0 to find the "P" portion of PID
	if(Mag_PIDSetpoint > 180){
		Mag_PIDCorrectionFactor = 360-Mag_PIDSetpoint;
		Mag_PIDAngleScaled = Mag_Angle + Mag_PIDCorrectionFactor;
		if(Mag_PIDAngleScaled > 180){
			Mag_PIDError = Mag_PIDAngleScaled - 360;
			//Mag_PIDError *= -1;
		}
		else{
			Mag_PIDError= Mag_PIDAngleScaled;
		}
	}
	else{
		Mag_PIDCorrectionFactor = Mag_PIDSetpoint;					
		//ScaledSetpoint = Mag_PIDSetpoint + Mag_PIDCorrectionFactor
		Mag_PIDAngleScaled = Mag_Angle - Mag_PIDCorrectionFactor;
		if(Mag_PIDAngleScaled > 180){
			Mag_PIDError = Mag_PIDAngleScaled - 360;
			//Mag_PIDError *= -1;
		}
		else{
			Mag_PIDError = Mag_PIDAngleScaled;
		}
	}
	Mag_PIDError *= -1;
	
	//After this loop, If Mag_PIDError returned is negative, rotate CCW (Increase CW motors)
	//After this loop, If Mag_PIDError returned is positive, rotate CW (Increase CCW motors)
	
	//Get current counter and reset variable...
	Mag_PIDCurrentCount = Mag_PIDCounter * .001;		//Timer in Seconds (.007 used to convert 128Hz TBC to seconds)
	Mag_PIDCounter = 0;
	
	//Calculating the "I" portion of PID
	Mag_PIDErrSum += (Mag_PIDError * Mag_PIDCurrentCount);
	
	//Calculating the "D" portion of PID
	Mag_PIDdErr = (Mag_PIDError -  Mag_PIDErrPrev);
	Mag_PIDdErr	/= Mag_PIDCurrentCount;
	Mag_PIDErrPrev = Mag_PIDError;
	
	//Calculating PID Output
	Mag_PIDOutput = (Mag_PID_kp*Mag_PIDError) + (Mag_PID_ki*Mag_PIDErrSum) + (Mag_PID_kd*Mag_PIDdErr);
	
	//if output is positive, we want to spin CW
	//if output is negative, we want to spin CCW
	PFRUN = 0;	//Turn OFF PWM
	PERUN = 0;
	PDRUN = 0;
	PCRUN = 0;
	//NOPms(5);
	PWF0D -= Mag_PIDOutput; 		//Can't be running to change (Only this variable)
	PWED += Mag_PIDOutput;	//CCW motor, spin to move CW
	PWDD += Mag_PIDOutput;	//CCW motor, spin to move CW
	PWCD -= Mag_PIDOutput;
	CheckSafetyLimit();
	PFRUN = 1;	//Turn ON PWM
	PERUN = 1;
	PDRUN = 1;
	PCRUN = 1;

	//UART Return for Debugging
	
	for(i = 0; i<150; i++)
	{
		SensorReturn[i] = 0x20;
	}
	//sprintf(SensorReturn, "%f,%f,%f,%f,%f,%f,%f", Mag_Angle, Mag_PIDSetpoint, Mag_PIDCurrentCount, Mag_PIDError, Mag_PIDErrSum, Mag_PIDdErr, Mag_PIDOutput);
	//sprintf(SensorReturn, "%f,%f,%f,%e,%e,%e,%f", Mag_Angle, Mag_PIDSetpoint, Mag_PIDCurrentCount, Mag_PIDError, Mag_PIDErrSum, Mag_PIDdErr, Mag_PIDOutput);										`			
	sprintf(SensorReturn, "%f,%f,%f,%f", Mag_Angle, Mag_PIDOutput, Mag_PID_kd, Mag_PID_kp);
	
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

void AccelSensorControlPID(void){
	int i;

	//PID Local Variables
	static float			Accel_PID_XRollSetpoint = 0;
	static float			Accel_PID_XRollSetpointPrime = 0;
	static float			Accel_PID_XRollError = 0;
	static float			Accel_PID_XRollCurrentCount = 0;
	static float			Accel_PID_XRolldErr = 0;			//Derivative Error Portion of PID
	static float			Accel_PID_XRollOutput = 0;
	
	static float			Accel_PID_YPitchSetpoint = 0;
	static float			Accel_PID_YPitchSetpointPrime = 0;
	static float			Accel_PID_YPitchError = 0;
	static float			Accel_PID_YPitchCurrentCount = 0;
	static float			Accel_PID_YPitchdErr = 0;			//Derivative Error Portion of PID
	static float			Accel_PID_YPitchOutput = 0;	

	static float				Accel_PID_Motor1_temp = 0;
	static float				Accel_PID_Motor2_temp = 0;
	static float				Accel_PID_Motor3_temp = 0;
	static float				Accel_PID_Motor4_temp = 0;
	
	
	//if(Accel_PID_XYChangeFlag == 0){
		//----- Start Accelerometer X Axis PID Loop -----
		/*
		if(CF_XRoll > (Accel_PID_XRollSetpoint+10)){
			Accel_PID_XRollSetpointPrime = CF_XRoll - 10;
		}
		else if(CF_XRoll < (Accel_PID_XRollSetpoint-10)){
			Accel_PID_XRollSetpointPrime = CF_XRoll + 10;
		}
		else{
			Accel_PID_XRollSetpointPrime = Accel_PID_XRollSetpoint;
		}
		*/
	
		//Converting so SP = 0 to find the "P" portion of PID
		//Accel_PID_XRollError = Accel_PID_XRollSetpointPrime-CF_XRoll;	//Setpoint - Error (in this case setpoint is 0)
		Accel_PID_XRollError = -CF_XRoll;	//Setpoint - Error (in this case setpoint is 0)
		
		//Get current counter and reset variable...
		Accel_PID_XRollCurrentCount = Accel_PID_XRollCounter * .001;	//Timer in Seconds
		Accel_PID_XRollCounter = 0;
		
		//Calculating the "I" portion of PID
		Accel_PID_XRollErrSum += (Accel_PID_XRollError * Accel_PID_XRollCurrentCount);
		
		//Calculating the "D" portion of PID
		Accel_PID_XRolldErr = (Accel_PID_XRollError -  Accel_PID_XRollErrPrev);
		Accel_PID_XRolldErr	/= Accel_PID_XRollCurrentCount;
		Accel_PID_XRollErrPrev = Accel_PID_XRollError;
		
		//Calculating PID Output
		Accel_PID_XRollOutput = (Accel_PID_XRoll_kp*Accel_PID_XRollError);
		Accel_PID_XRollOutput += (Accel_PID_XRoll_ki*Accel_PID_XRollErrSum);
		Accel_PID_XRollOutput += (Accel_PID_XRoll_kd*Accel_PID_XRolldErr);
		/*
		//OverDampening Limiter
		if(Accel_PID_XRollOutput > 50){
			Accel_PID_XRollOutput = 50;
		}
		if(Accel_PID_XRollOutput < -50){
			Accel_PID_XRollOutput = -50;
		}
		*/
		
		//PWF0D, PWED, PWCD, PWDD
		Accel_PID_Motor1 -= Accel_PID_XRollOutput;
		Accel_PID_Motor2 += Accel_PID_XRollOutput;
		Accel_PID_Motor3 += Accel_PID_XRollOutput;
		Accel_PID_Motor4 -= Accel_PID_XRollOutput;
		CheckSafetyLimitUnscaled();
		Accel_PID_Motor1_temp = (Accel_PID_Motor1-16382);
		Accel_PID_Motor1_temp = Accel_PID_Motor1_temp/32767;
		Accel_PID_Motor1_temp = Accel_PID_Motor1_temp * PWMUpperLowerDiff;
		Accel_PID_Motor1_temp = Accel_PID_Motor1_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
		Accel_PID_Motor2_temp = (Accel_PID_Motor2-16382);
		Accel_PID_Motor2_temp = Accel_PID_Motor2_temp/32767;
		Accel_PID_Motor2_temp = Accel_PID_Motor2_temp * PWMUpperLowerDiff;
		Accel_PID_Motor2_temp = Accel_PID_Motor2_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
		Accel_PID_Motor3_temp = (Accel_PID_Motor3-16382);
		Accel_PID_Motor3_temp = Accel_PID_Motor3_temp/32767;
		Accel_PID_Motor3_temp = Accel_PID_Motor3_temp * PWMUpperLowerDiff;
		Accel_PID_Motor3_temp = Accel_PID_Motor3_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
		Accel_PID_Motor4_temp = (Accel_PID_Motor4-16382);
		Accel_PID_Motor4_temp = Accel_PID_Motor4_temp/32767;
		Accel_PID_Motor4_temp = Accel_PID_Motor4_temp * PWMUpperLowerDiff;
		Accel_PID_Motor4_temp = Accel_PID_Motor4_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
		
		//if PID output is negative, we want to Roll Right - Increase Motors 1+4 (F0,D) (Roll Right)
		//if PID output is positive, we want to Roll Left - Increase Motors 2+3 (E,C) (Roll Left)
		PFRUN = 0;	//Turn OFF PWM
		PERUN = 0;
		PDRUN = 0;
		PCRUN = 0;
		PWF0D = Accel_PID_Motor1_temp; 		//Can't be running to change (Only this variable)
		PWED = Accel_PID_Motor2_temp;	
		PWCD = Accel_PID_Motor3_temp;	
		PWDD = Accel_PID_Motor4_temp;
		CheckSafetyLimit();
		PFRUN = 1;	//Turn ON PWM
		PERUN = 1;
		PDRUN = 1;
		PCRUN = 1;
		
		Accel_PID_XYChangeFlag = 1;
	//}
	Get_AccGyroData();	//This Function takes 14ms (as of 3/30/2013)
	//else{
		/*
		//----- Start Accelerometer Y Axis PID Loop -----
		if(CF_YPitch > (Accel_PID_YPitchSetpoint+10)){
			Accel_PID_YPitchSetpointPrime = CF_XRoll - 10;
		}
		else if(CF_YPitch < (Accel_PID_YPitchSetpoint-10)){
			Accel_PID_YPitchSetpointPrime = CF_XRoll + 10;
		}
		else{
			Accel_PID_YPitchSetpointPrime = Accel_PID_YPitchSetpoint;
		}
		*/

		//Converting so SP = 0 to find the "P" portion of PID
		//Accel_PID_YPitchError = Accel_PID_YPitchSetpointPrime-CF_YPitch;		//Setpoint - Error (in this case setpoint is 0)
		Accel_PID_YPitchError = -CF_YPitch;		//Setpoint - Error (in this case setpoint is 0)
		
		//Get current counter and reset variable...
		Accel_PID_YPitchCurrentCount = Accel_PID_YPitchCounter * .001;		//Timer in Seconds
		Accel_PID_YPitchCounter = 0;
		//CF_Gyro_Counter = 0;
		
		//Calculating the "I" portion of PID
		Accel_PID_YPitchErrSum += (Accel_PID_YPitchError * Accel_PID_YPitchCurrentCount);
		
		//Calculating the "D" portion of PID
		Accel_PID_YPitchdErr = (Accel_PID_YPitchError -  Accel_PID_YPitchErrPrev);
		Accel_PID_YPitchdErr /= Accel_PID_YPitchCurrentCount;
		Accel_PID_YPitchErrPrev = Accel_PID_YPitchError;
		
		//Calculating PID Output
		Accel_PID_YPitchOutput = (Accel_PID_YPitch_kp*Accel_PID_YPitchError) + (Accel_PID_YPitch_ki*Accel_PID_YPitchErrSum) + (Accel_PID_YPitch_kd*Accel_PID_YPitchdErr);
		
		/*
		//Overdampening Limiter
		if(Accel_PID_YPitchOutput > 50){
			Accel_PID_YPitchOutput = 50;
		}
		if(Accel_PID_YPitchOutput < -50){
			Accel_PID_YPitchOutput = -50;
		}
		*/
		
		//PWF0D, PWED, PWCD, PWDD
		Accel_PID_Motor1 += Accel_PID_YPitchOutput;
		Accel_PID_Motor2 += Accel_PID_YPitchOutput;
		Accel_PID_Motor3 -= Accel_PID_YPitchOutput;
		Accel_PID_Motor4 -= Accel_PID_YPitchOutput;
		CheckSafetyLimitUnscaled();
		Accel_PID_Motor1_temp = (Accel_PID_Motor1-16382);
		Accel_PID_Motor1_temp = Accel_PID_Motor1_temp/32767;
		Accel_PID_Motor1_temp = Accel_PID_Motor1_temp * PWMUpperLowerDiff;
		Accel_PID_Motor1_temp = Accel_PID_Motor1_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
		Accel_PID_Motor2_temp = (Accel_PID_Motor2-16382);
		Accel_PID_Motor2_temp = Accel_PID_Motor2_temp/32767;
		Accel_PID_Motor2_temp = Accel_PID_Motor2_temp * PWMUpperLowerDiff;
		Accel_PID_Motor2_temp = Accel_PID_Motor2_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
		Accel_PID_Motor3_temp = (Accel_PID_Motor3-16382);
		Accel_PID_Motor3_temp = Accel_PID_Motor3_temp/32767;
		Accel_PID_Motor3_temp = Accel_PID_Motor3_temp * PWMUpperLowerDiff;
		Accel_PID_Motor3_temp = Accel_PID_Motor3_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
		Accel_PID_Motor4_temp = (Accel_PID_Motor4-16382);
		Accel_PID_Motor4_temp = Accel_PID_Motor4_temp/32767;
		Accel_PID_Motor4_temp = Accel_PID_Motor4_temp * PWMUpperLowerDiff;
		Accel_PID_Motor4_temp = Accel_PID_Motor4_temp + PWMLowerDutyLimitRun;	//Conversion from 65535 Scaling to PWM Period of 17000
		
		//if PID output is negative, we want to Pitch Backwards (Increase Motors 1,2) (F0,E)
		//if PID output is positive, we want to Pitch Forwards (Increase Motors 3,4) (C,D)
		PFRUN = 0;	//Turn OFF PWM
		PERUN = 0;
		PDRUN = 0;
		PCRUN = 0;
		PWF0D = Accel_PID_Motor1_temp; 		//Can't be running to change (Only this variable)
		PWED = Accel_PID_Motor2_temp;	
		PWCD = Accel_PID_Motor3_temp;	
		PWDD = Accel_PID_Motor4_temp;
		CheckSafetyLimit();
		PFRUN = 1;	//Turn ON PWM
		PERUN = 1;
		PDRUN = 1;
		PCRUN = 1;
		Accel_PID_XYChangeFlag = 0;
	//}
	
	//SensorReturnSM
	
	for(i = 0; i<30; i++)
	{
		SensorReturnSM[i] = 0x20;
	}
	
	//sprintf(SensorReturn, "%f,%f,%f,%f,%f,%f,", Accel_Xout, Accel_Yout, Accel_PID_XRollCurrentCount, Accel_PID_YPitchCurrentCount, Accel_PID_XRollOutput, Accel_PID_YPitchOutput);
	//sprintf(SensorReturn, "Use=%X, XRoll=%f, YPitch=%f", CF_UseFlag, CF_XRoll, CF_YPitch);
	
	//sprintf(SensorReturn, "%f,%f,%f,%f,%f,%f,%f,%f,%f,%f", Gyro_Xout, Gyro_Yout, CF_Gyro_CurrentCount, Accel_Xout, Accel_Yout, Accel_Zout, CF_HPF, CF_LPF, CF_YPitch, CF_XRoll);
	
	
	//sprintf(SensorReturnSM, "%f,%f,%f", CF_Gyro_CurrentCount, CF_YPitch, CF_XRoll);
	//sprintf(SensorReturnSM, "%f,%f", CF_YPitch, CF_XRoll);
	
	
	//sprintf(SensorReturnSM, "%u,%u,%u,%u", Accel_PID_Motor1, Accel_PID_Motor2, Accel_PID_Motor3, Accel_PID_Motor4);
	sprintf(SensorReturnSM, "%u,%u,%u,%u", PWF0D, PWED, PWCD, PWDD);
	
	//sprintf(SensorReturnSM, "%f,%f", Accel_PID_YPitchOutput, Accel_PID_XRollOutput);
	//sprintf(SensorReturnSM, "%u,%u,%f,%f", Accel_PID_XRoll_kp, Accel_PID_YPitch_kp, Accel_PID_YPitchOutput, Accel_PID_XRollOutput);
	
	//sprintf(SensorReturnSM, "%f,%f", Accel_PID_XRoll_kp, Accel_PID_XRoll_kd);
	//sprintf(SensorReturnSM, "%f,%f", Accel_PID_XRoll_ki, Accel_PID_YPitch_ki);
	//sprintf(SensorReturnSM, "%f,%f", Accel_PID_XRoll_kd, Accel_PID_YPitch_kd);
	
	SensorReturnSM[28] = 0x0D;
	SensorReturnSM[29] = 0x0A;
	
	//Send Returned Sensor Output to PC!
	_flgUartFin = 0;
	uart_stop();
	uart_startSend(SensorReturnSM, 30, _funcUartFin);
	while(_flgUartFin != 1){
		main_clrWDT();
	}
	
	
	/*
	//Sensor Return Long! --------------------
	for(i = 0; i<200; i++)
	{
		SensorReturn[i] = 0x20;
	}
	
	//sprintf(SensorReturn, "%f,%f,%f,%f,%f,%f,", Accel_Xout, Accel_Yout, Accel_PID_XRollCurrentCount, Accel_PID_YPitchCurrentCount, Accel_PID_XRollOutput, Accel_PID_YPitchOutput);
	//sprintf(SensorReturn, "Use=%X, XRoll=%f, YPitch=%f", CF_UseFlag, CF_XRoll, CF_YPitch);
	
	sprintf(SensorReturn, "%f,%f,%f,%f,%f,%f,%f,%f,%f,%f", Accel_Xout, Accel_Yout, Accel_Zout, CF_Gyro_Counter, CF_Gyro_YPitch, CF_Gyro_XRoll, CF_Accel_YPitch, CF_Accel_XRoll, CF_YPitch, CF_XRoll);
	
	
	//sprintf(SensorReturnSM, "%f,%f,%f", CF_Gyro_CurrentCount, CF_YPitch, CF_XRoll);
	//sprintf(SensorReturnSM, "%f,%f", CF_YPitch, CF_XRoll);
	//sprintf(SensorReturnSM, "%f,%f", Accel_PID_YPitchOutput, Accel_PID_XRollOutput);
	//sprintf(SensorReturnSM, "%u,%u,%f,%f", Accel_PID_XRoll_kp, Accel_PID_YPitch_kp, Accel_PID_YPitchOutput, Accel_PID_XRollOutput);
	
	//sprintf(SensorReturnSM, "%f,%f", Accel_PID_XRoll_kp, Accel_PID_XRoll_kd);
	//sprintf(SensorReturnSM, "%f,%f", Accel_PID_XRoll_ki, Accel_PID_YPitch_ki);
	//sprintf(SensorReturnSM, "%f,%f", Accel_PID_XRoll_kd, Accel_PID_YPitch_kd);
	
	SensorReturn[198] = 0x0D;
	SensorReturn[199] = 0x0A;
	
	//Send Returned Sensor Output to PC!
	_flgUartFin = 0;
	uart_stop();
	uart_startSend(SensorReturn, 200, _funcUartFin);
	while(_flgUartFin != 1){
		main_clrWDT();
	}
	*/
	//----- End Accelerometer PID Loop ----- 
}

void RangeSensorControlPID(void){
	int i;

	//----- Start Range Sensor (Z Axis) PID Loop -----
	//Converting so SP = 0 to find the "P" portion of PID
	Range_PIDError = Range_PIDSetpoint - Range_out;
	
	//Get current counter and reset variable...
	Range_PIDCurrentCount = Range_PIDCounter * .007;		//Timer in Seconds (.007 used to convert 128Hz TBC to seconds)
	Range_PIDCounter = 0;
	
	//Calculating the "I" portion of PID
	Range_PIDErrSum += (Range_PIDError * Range_PIDCurrentCount);
	
	//Calculating the "D" portion of PID
	Range_PIDdErr = (Range_PIDError -  Range_PIDErrPrev);
	Range_PIDdErr	/= Range_PIDCurrentCount;
	Range_PIDErrPrev = Range_PIDError;
	
	//Calculating PID Output
	Range_PIDOutput = (Range_PID_kp*Range_PIDError) + (Range_PID_ki*Range_PIDErrSum) + (Range_PID_kd*Range_PIDdErr);
	
	//if PID output is positive, we want to Lift Up - Increase All Motors
	//if PID output is negative, we want to Decelerate Down - Decrease All Motors
	PFRUN = 0;	//Turn OFF PWM
	PERUN = 0;
	PDRUN = 0;
	PCRUN = 0;
	PWF0D += Range_PIDOutput; 		//Can't be running to change (Only this variable)
	PWED += Range_PIDOutput;	
	PWDD += Range_PIDOutput;	
	PWCD += Range_PIDOutput;
	CheckSafetyLimit();
	PFRUN = 1;	//Turn ON PWM
	PERUN = 1;
	PDRUN = 1;
	PCRUN = 1;
	
	for(i = 0; i<150; i++)
	{
		SensorReturn[i] = 0x20;
	}
	//sprintf(SensorReturn, "%f,%f,%f,%f,%f,%f,%f", Mag_Angle, Mag_PIDSetpoint, Mag_PIDCurrentCount, Mag_PIDError, Mag_PIDErrSum, Mag_PIDdErr, Mag_PIDOutput);
	//sprintf(SensorReturn, "%f,%f,%f,%e,%e,%e,%f", Mag_Angle, Mag_PIDSetpoint, Mag_PIDCurrentCount, Mag_PIDError, Mag_PIDErrSum, Mag_PIDdErr, Mag_PIDOutput);
	sprintf(SensorReturn, "%f,%f,%f", Range_out, Range_PIDCurrentCount,Range_PIDOutput);
	
	SensorReturn[148] = 0x0D;
	SensorReturn[149] = 0x0A;
	
	//Send Returned Sensor Output to PC!
	_flgUartFin = 0;
	uart_stop();
	uart_startSend(SensorReturn, 150, _funcUartFin);
	while(_flgUartFin != 1){
		main_clrWDT();
	}
	//----- End Range Sensor (Z Axis) PID Loop ----- 
}

void CheckSafetyLimit(void){	
	//Motor Safety Limit
	if(PWED > PWMUpperDutyLimitRun){
		PWED = PWMUpperDutyLimitRun;
	}
	if(PWED < PWMLowerDutyLimitRun){
		PWED = PWMLowerDutyLimitRun;
	}
	if(PWF0D > PWMUpperDutyLimitRun){
		PWF0D = PWMUpperDutyLimitRun;
	}
	if(PWF0D < PWMLowerDutyLimitRun){
		PWF0D = PWMLowerDutyLimitRun;
	}
	if(PWDD > PWMUpperDutyLimitRun){
		PWDD = PWMUpperDutyLimitRun;
	}
	if(PWDD < PWMLowerDutyLimitRun){
		PWDD = PWMLowerDutyLimitRun;
	}
	if(PWCD > PWMUpperDutyLimitRun){
		PWCD = PWMUpperDutyLimitRun;
	}
	if(PWCD < PWMLowerDutyLimitRun){
		PWCD = PWMLowerDutyLimitRun;
	}
}

void CheckSafetyLimitUnscaled(void){	
	//Motor Safety Limit
	if(Accel_PID_Motor1 > (49151)){
		Accel_PID_Motor1 = 49151;
	}
	if(Accel_PID_Motor1 < 16383){
		Accel_PID_Motor1 = 16383;
	}
	if(Accel_PID_Motor2 > (49151)){
		Accel_PID_Motor2 = 49151;
	}
	if(Accel_PID_Motor2 < (16383)){
		Accel_PID_Motor2 = 16383;
	}
	if(Accel_PID_Motor3 > (49151)){
		Accel_PID_Motor3 = 49151;
	}
	if(Accel_PID_Motor3 < (16383)){
		Accel_PID_Motor3 = 16383;
	}
	if(Accel_PID_Motor4 > (49151)){
		Accel_PID_Motor4 = 49151;
	}
	if(Accel_PID_Motor4 < (16383)){
		Accel_PID_Motor4 = 16383;
	}
}

void Shutdown(void){
	if((PWED > PWMSafeDuty)||(PWF0D > PWMSafeDuty)||(PWDD > PWMSafeDuty)||(PWCD > PWMSafeDuty)){
		do{
			main_clrWDT();					
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
			NOPms(100);

			if(PWED <= PWMSafeDuty){
				PWED = PWMSafeDuty;
			}
			if(PWF0D <= PWMSafeDuty){
				PWF0D = PWMSafeDuty;
			}
			if(PWDD <= PWMSafeDuty){
				PWDD = PWMSafeDuty;
			}
			if(PWCD <= PWMSafeDuty){
				PWCD = PWMSafeDuty;
			}
			
			LED_4 ^= 1;
		}while((PWED > PWMSafeDuty)||(PWF0D > PWMSafeDuty)||(PWDD > PWMSafeDuty)||(PWCD > PWMSafeDuty));
	}
	Accel_PID_Motor1 = 16383;
	Accel_PID_Motor2 = 16383;
	Accel_PID_Motor3 = 16383;
	Accel_PID_Motor4 = 16383;

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
      PWFP = PWMPeriod;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)

      //SET THE DUTY CYCLE...(Added June 15th, 2013)

      //PWCD =    10;         //10    ~  0.2  % duty cycle @ 120Hz
      //PWCD =   100;         //100   ~  2.4  % duty cycle @ 120Hz
      //PWCD =  1000;         //1000  ~ 23.5  % duty cycle @ 120Hz
      //PWCD =  4000;         //4000  ~ 94.0  % duty cycle @ 120Hz
      //PWCD =  4150;         //4150  ~ 99.0  % duty cycle @ 120Hz
      //PWCD =    20;         //20    ~  0.4  % duty cycle @ 120Hz      
      PWF0D =    PWMSafeDuty;           //12    ~  0.25 % duty cycle @ 160Hz

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
      PWEP = PWMPeriod;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)

      //SET THE DUTY CYCLE...(Added June 15th, 2013)

      //PWCD =    10;         //10    ~  0.2  % duty cycle @ 120Hz
      //PWCD =   100;         //100   ~  2.4  % duty cycle @ 120Hz
      //PWCD =  1000;         //1000  ~ 23.5  % duty cycle @ 120Hz
      //PWCD =  4000;         //4000  ~ 94.0  % duty cycle @ 120Hz
      //PWCD =  4150;         //4150  ~ 99.0  % duty cycle @ 120Hz
      //PWCD =    20;         //20    ~  0.4  % duty cycle @ 120Hz      
      PWED =    PWMSafeDuty;           //12    ~  0.25 % duty cycle @ 160Hz

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
      PWDP = PWMPeriod;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)

      //SET THE DUTY CYCLE...(Added June 15th, 2013)

      //PWCD =    10;         //10    ~  0.2  % duty cycle @ 120Hz
      //PWCD =   100;         //100   ~  2.4  % duty cycle @ 120Hz
      //PWCD =  1000;         //1000  ~ 23.5  % duty cycle @ 120Hz
      //PWCD =  4000;         //4000  ~ 94.0  % duty cycle @ 120Hz
      //PWCD =  4150;         //4150  ~ 99.0  % duty cycle @ 120Hz
      //PWCD =    20;         //20    ~  0.4  % duty cycle @ 120Hz      
      PWDD =    PWMSafeDuty;           //12    ~  0.25 % duty cycle @ 160Hz

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
      PWCP = PWMPeriod;            // Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
								//2.5ms = (x+1)/8MHz //Pg. 190

      //SET THE DUTY CYCLE...(Added June 15th, 2013)

      //PWCD =    10;         //10    ~  0.2  % duty cycle @ 120Hz
      //PWCD =   100;         //100   ~  2.4  % duty cycle @ 120Hz
      //PWCD =  1000;         //1000  ~ 23.5  % duty cycle @ 120Hz
      //PWCD =  4000;         //4000  ~ 94.0  % duty cycle @ 120Hz
      //PWCD =  4150;         //4150  ~ 99.0  % duty cycle @ 120Hz
      //PWCD =    20;         //20    ~  0.4  % duty cycle @ 120Hz      
      PWCD =    PWMSafeDuty;           //12    ~  0.25 % duty cycle @ 160Hz

	  //2.0 = (x +1)/8MHz
	  
      PCRUN = 0;        // OFF to start
}
//===========================================================================

//INTERRUPT SERVICE ROUTINE FOR TBC
static void TBC_ISR( void ) 
{
	E128H = 0;	//Turn OFF TBC Interrupt
	/*
	Sensor_RefreshRate++;
	if(Sensor_RefreshRate >= 65535){
		Sensor_RefreshRate = 0;
	}
	*/
	E128H = 1;	//Turn ON TBC Interrupt
}
//===========================================================================

//INTERRUPT SERVICE ROUTINE FOR Timer8
static void TMR89_ISR( void ) 
{
	Mag_PIDCounter++;
	if(Mag_PIDCounter >= 65535){
		Mag_PIDCounter = 0;
	}
	Accel_PID_Counter++;
	if(Accel_PID_Counter >= 65535){
		Accel_PID_Counter = 0;
	}
	Accel_PID_XRollCounter++;
	if(Accel_PID_XRollCounter >= 65535){
		Accel_PID_XRollCounter = 0;
	}
	Accel_PID_YPitchCounter++;
	if(Accel_PID_YPitchCounter >= 65535){
		Accel_PID_YPitchCounter = 0;
	}
	Range_PIDCounter++;
	if(Range_PIDCounter >= 65535){
		Range_PIDCounter = 0;
	}
	CF_Gyro_Counter++;
	if(CF_Gyro_Counter >= 65535){
		CF_Gyro_Counter = 0;
	}

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

	tm_init(TM_CH_NO_AB);
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
	timer_us = 0;
	TM8C = 0x00;
	ETM8 = 1;
	while(timer_us == 0);
}

void NOP1000( void )
{
unsigned int ONCNT = 0;
	while(ONCNT < 10000) {	// NOP for 1000 Cycles
		ONCNT++;
	}
	ONCNT = 0;			// Reset Counter 
}

float approx_arctan2(float y, float x)
{
	float YoverX = y/x;
	float result = 0;
	
	if(x>0){
		result = (0.97239*YoverX)-(0.19195*pow(YoverX,3));
	}
	if((x<0)&&(y>=0)){
		result = (0.97239*YoverX)-(0.19195*pow(YoverX,3))+3.14;
	}	
	if((y<0)&&(x<0)){
		result = (0.97239*YoverX)-(0.19195*pow(YoverX,3))-3.14;
	}
	if((y>0)&&(x==0)){
		result = 1.57;
	}
	if((y<0)&&(x==0)){
		result = -1.57;
	}
	if((x==0)&&(y==0)){			//we made this up....
		x=0.00001;
		y=0.00001;
		YoverX = y/x;
		result = (0.97239*YoverX)-(0.19195*pow(YoverX,3));
	}
	result *= 57.29;
	
	if(result > 45){
		result = 45;
	}
	if(result < -45){
		result = -45;
	}
	
	return(result);
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
		
