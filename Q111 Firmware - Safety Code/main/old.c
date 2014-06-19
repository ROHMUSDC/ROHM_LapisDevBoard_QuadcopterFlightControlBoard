//*****************************************************************************
// Program:	 LAPIS LAB TOOL based on design from mStepper Motor Eval Board #1
// Author:	 C. Schell 
//		 ROHM Semiconductor USA, LLC
//		 US Design Center
// Started:  October 15th, 2012
// Purpose:	 Stepper Motor Driver (BD6387xEFV) Board with ML610Q102 micro
//		  controlling the application. 
// Updated:	 FEBRUARY 14th, 2013
//*****************************************************************************


//***** PREPROCESSOR DIRECTIVES ***********************************************
 // INCLUDED FILES...


	#include	<ML610102.H>	// LAPIS ML610Q102 5v micro

	#include	<ctype.h>		// Character classification and conversion 
	#include	<errno.h>		// Error identifiers Library
	#include	<float.h>		// Numerical limits for floating-point numbers
	#include	<limits.h>		// Numerical limits for integers
	#include	<math.h>		// Mathematical functions
	#include	<muldivu8.h>	// Multiplication and Division accelerator
	#include	<setjmp.h>		// Global jump (longjmp)
	#include	<signal.h>		// Signal handling functions
	#include	<stdarg.h>		// Variable numbers of arguments
	#include	<stddef.h>		// Standard types and macros 
	#include	<stdio.h>		// I/O-related processing
	#include	<stdlib.h>		// General-purpose utilities

	#include	<string.h>		// Character string manipulation routines
	#include	<yfuns.h>		// 
	#include	<yvals.h>		// Called for by most Header Files

	//#include 	<common.h>		// Common Definitions
	//#include 	<mcu.h>		// MCU Definition
	//#include 	<irq.h>		// IRQ Definitions
	//#include 	<clock.h>		// Set System Clock API
	//#include 	<tbc.h>		// Set TBC (Timer Based Clock) API
	//#include 	<timer.h>		// Timer Macros & APIs
	//#include 	<main.h>		// Clear WDT API
	//#include 	<uart.h>		// UART Function Prototypes
	//#include 	<volume.h>		// Function Prototypes
	//#include 	<led.h>		// Macro, Variable Defs, Structure Def & API

 // I/O PIN DATA ALIASES...
	#define Encoder_Input_CH_A PA0D 
	#define Encoder_Input_CH_B PA1D 
	#define Encoder_BUTTON	   PA2D 
	#define ClkIn_Servo_CLK    PB0D	// (pwm_output)
	#define ClkIn_Servo_CW_CCW PB1D 
	#define ClkIn_Servo_MODE_0 PB2D 
	#define ClkIn_Servo_MODE_1 PB3D 
	#define ClkIn_Servo_ENABLE PB4D
	#define LED_Driver_SERIN   PB5D 
	#define LED_Driver_LATCH   PB6D
	#define LED_Driver_CLK 	   PB7D
//*****************************************************************************
	

//*****************************************************************************
//===========================================================================
//   MACROS: 
//===========================================================================
	

//*****************************************************************************

//*****************************************************************************
//===========================================================================
//   STRUCTURES: 
//===========================================================================
//Example Structure Declaration
typedef struct {
	unsigned char state     : 1;
	unsigned char state_sub : 2;
	unsigned char reserve   : 5;
} STRUCT_STATE;	

//*****************************************************************************


//*****************************************************************************
//===========================================================================
//   FUNCTION PROTOTYPES: 
//	Establishes the name and return type of a function and may specify the 
// 	types, formal parameter names and number of arguments to the function                                 
//===========================================================================
void main_clrWDT( void );		// no return value and no arguments
void Initialization( void );		// no return value and no arguments
void SetOSC( void );			// no return value and no arguments
void analog_comparator( void );	// no return value and no arguments
void PortA_Low( void );			// no return value and no arguments
void PortB_Low( void );			// no return value and no arguments
void PortA_Digital_Inputs( void );	// no return value and no arguments
void PinB0_PWM( void ); 		// no return value and no arguments
void Control_LEDs( void ); 		// no return value and no arguments
//*****************************************************************************

//GLOBALS...
enum Status {CONTINUE, WON, LOST};	//Enumeration Constants for Dice Game Status...



/*############################################################################*/
/*#                                  APIs                                    #*/
/*############################################################################*/
//*****************************************************************************
//===========================================================================
//  	Start of MAIN FUNCTION
//===========================================================================
int main(void) {

char char_a;		// -128 to 127
unsigned char uchar;	// 0-255
int inta, table [100];	// -32,768 to 32767
unsigned int uint;	// 0 to 65,535
long long_a;		// -2,147,483,648 to 2,147,483,647
float float_a;		// 1.17549435e-38 to 3.40282347e+38
double double_a;		// 2.2250738585072014e-308 to 1.7976931348623157e+308 


unsigned char encoder_position, previous_encoder_position;  // 0-255
unsigned char button_flag;  						// 0-255
int i,j,k			;						// -32,768 to 32767

	
Init:
	Initialization();


//goto Start; //Jump over Test Routine...

// xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
// COMMENT OUT OR DELETE WHEN DONE...
TEST_ONLY:


	PWCDH = 1;


	PCRUN = 1;
	

	//Timer8 Delay...
	T8RUN = 1;	//0=STOP; 1=START...


	//PWCDH = 1;
	//PCRUN = 0;

	//// dumb delay...
	//for (j=0; j<218; j++) // 2184 = ~1 second with 8MHz osc...
	//;


goto TEST_ONLY;
// xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


Start:

	//Reset Duty Cycle if > 250/255...
	if (PWCDH > 255) 
	{
		PWCDH = 0;	
	}


	//------------------------------------------------------------------------
	//Decode Quadrature Encoder Inputs A&B...
	
	
	//--------------------------
	//First store prior state...
	previous_encoder_position = encoder_position;

	//--------------------------
	// Now Check Check Quadrature Encoder Button State...
	//  Default state is High...
	//  If Low, Button is Pressed...
	if (Encoder_BUTTON == 0) 			//Encoder Button Pressed...			
	{
		encoder_position = 5;
		button_flag = button_flag + 1; 	//Toggle Flag...

		if(button_flag > 1)
		{
			button_flag = 0;
		}


		//delay at least 50ms...and more if needed - short button debounce...
		do 
		{
			PCRUN = 0;  	      //Switch state of output to OFF...
			// dumb delay...for simple de-bounce
			for (j=0; j<109; j++) 	// 2184 = ~1 second with 8MHz osc...
			;

		}while (Encoder_BUTTON == 0);
			PCRUN = 1;  	   	 // Switch state of output back to ON...


		goto Action;		       // Jump directly to control...
	}
	//--------------------------

	//--------------------------
	// Finally, Decode position via the encoder inputs...
	if (Encoder_Input_CH_A = 0) 			//Encoder Input "CH-A" on A0; "CH-B" on A1			
	{
		if (Encoder_Input_CH_B = 0)		// STEP #1 => If Ch.A=0 & Ch.B=0...
		{
			encoder_position = 1;
		}
		else						// STEP #2 => If Ch.A=0 & Ch.B=1...
		{
			encoder_position = 2;
		}	

	}
	else					
	{
		if (Encoder_Input_CH_B = 1)		// STEP #4 => Ch.A=1 & Ch.B=0...
		{
			encoder_position = 4;
		}
		else						// STEP #3 => Ch.A=1 & Ch.B=1...
		{
			encoder_position = 3;
		}	

	}
	//--------------------------
	//------------------------------------------------------------------------


	//------------------------------------------------------------------------

Action:
	//Take Action based on Quadrature Encoder Input...
	
	//--------------------------
	//Output toggles ON/OFF based on button press...
	if (button_flag == 1)
	{
		//goto SkipAction;
		encoder_position = 5;	//Reset to five...
	}
	//--------------------------


	//--------------------------
	switch(encoder_position) 
	{
	case 1:
		if (previous_encoder_position == 4)	// CW = Increment Duty Cycle...
			PWCDH = PWCDH + 10;
		if (previous_encoder_position == 2)	// CCW = Decrement Duty Cycle...
			PWCDH = PWCDH - 1;
		
		PCRUN = 1;
		break;	//Then quit the switch

	case 2:
		if (previous_encoder_position == 1)	// CW = Increment Duty Cycle...
			PWCDH = PWCDH + 10;
		if (previous_encoder_position == 3)	// CCW = Decrement Duty Cycle...
			PWCDH = PWCDH - 1;
			
		PCRUN = 1;
		break;	//Then quit the switch

	case 3:
		if (previous_encoder_position == 2)	// CW = Increment Duty Cycle...
			PWCDH = PWCDH + 10; 
		if (previous_encoder_position == 4)	// CCW = Decrement Duty Cycle...
			PWCDH = PWCDH - 1;
			
		PCRUN = 1;
		break;	//Then quit the switch

	case 4:
		if (previous_encoder_position == 3)	// CW = Increment Duty Cycle...
			PWCDH = PWCDH + 10;
		if (previous_encoder_position == 1)	// CCW = Decrement Duty Cycle...
			PWCDH = PWCDH - 1;
			
		PCRUN = 1;
		break;	// Then quit the switch

	case 5:
		
		//Set the Period...(Added Feb 4th, 2013)
		//PWCPH = 0x00;		// Init Period to x - PWM period registers H & L
		//PWCPL = 0x00;		// ...{0x00 & 0x32 = 50 = 10khz}
		//PWCP = 0;		// Init Period to 0 (0kHz)
		
		PCRUN = 0;  		//Switch state of output to OFF...
		break;	// Then quit the switch

	default:	
		PCRUN = 0;			
		break;	// Then quit the switch
	}
	//--------------------------

	//End Take Action based on Quadrature Encoder Input...
	//------------------------------------------------------------------------	
	
SkipAction:

	Control_LEDs();	// Toggle LED's...
	main_clrWDT(); 	// Clear WDT
	

goto Start;		// Loop back to START...

}


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
__DI(); // Disable multi-interrupts
	do {
		WDTCON = 0x5Au;
	} while (WDP != 1);
	WDTCON = 0xA5u;

	//PWCDH = (PWCDH+16); //Change PWM here...

__EI(); // Re-Enable multi-interrupts
}





//===========================================================================
//	Initialize Micro to Desired State...
//===========================================================================
static void Initialization(void){

	//Initialize Peripherals	
		//If set to "1", all relevant registers are initialized.
		//BLKCON0 = 0x00; // 
	BLKCON2 = 0xFF; // (1=disables; 0=enables) operation of UART.
	BLKCON4 = 0x00; // (1=disables; 0=enables) operation of SA type A/D converter
	BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timer.
	BLKCON7 = 0x00; // (1=disables; 0=enables) the operation of PWM.

	// Port Initialize
	//PortA_Low();		// Clear all 3 pins of Port A...
	PortA_Digital_Inputs();	// Set all 3 pins of Port A as Digital Inputs...
	PortB_Low();		// Clear all 8 pins of Port B...


	// PWM...	
	PinB0_PWM();	// Set up PWM Pin on B.0...


	// Comparator...	
	//analog_comparator();


	//UART Initialization
	//uartInit();


	// Set Oscillator Rate...
     	SetOSC();



    
	// TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
	// TIMER SETUP...

	Setup_Timer_8:
	// Reset TIMER DATA REGISTER...
		TM8D    = 0;	//Timer 8 DATA Register

	// Reset TIMER CLOCK REGISTER...
		TM8C    = 0;	//Timer 8 CLOCK Register

	// TIMER-8 Control...
	//   CONTROL-0 Register:
		// Operation Clock for Timer...
		T8C1 = 0;	// 01 = HTBCLK  
		T8C0 = 1;
		// Count Mode...
		T89M16 = 0;	// 0=8-Bit Mode; 1=16bit Mode...
		//One-Shot or Normal Mode...
		T8OST = 0;	// 0=Normal; 1=One-Shot...
	//   CONTROL-1 Register:
		// RUN Mode...
		T8RUN = 0;	//0=STOP; 1=START...

	// TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT


	// IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
	// INTERRUPT SETUP...
		//irq_di();
		//irq_init();
		// INTERRUPT ENABLE REGISTERS...
		//  IE0 = VOLTAGE LEVEL SUPERVISOR Int.
		//  IE1 = EXTERNAL Ints on B1, B0, A2, A1, & A0
		//  IE2 = SUCCESSIVE APPROXIMATION Int.
		//  IE3 = TIMERS 8 & 9 Ints.
		//  IE4 = UART & COMPARATOR Ints.
		//  IE5 = TIMERS A, B, E & F Ints.
		//  IE6 = PWMC &  128Hz & 32Hz TBC Ints.
		//  IE7 = 16Hz & 2Hz TBC Ints.
		IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0;

		// INTERRUPT REQUEST REGISTERS...
		//  IRQ0 = WDT & VLS Int Requests
		//  IRQ1 = EXTERNAL Int Requests
		//  IRQ2 = SUCCESSIVE APPROXIMATION Int Requests
		//  IRQ3 = TIMERS 8 & 9 Int Requests 
		//  IRQ4 = UART & COMPARATOR Int Requests 
		//  IRQ5 = TIMERS A, B, E & F Int Requests 
		//  IRQ6 = PWMC &  128Hz & 32Hz TBC Int Requests 
		//  IRQ7 = 16Hz & 2Hz TBC Int Requests 
		IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;

		E2H = 0; //Enable flag for 2Hz TBC Interrupt
		//irq_ei();
	// IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII


	// WDT...
	WDTMOD = 0x03; 	// 0x03=overflow 8sec...
	main_clrWDT(); 	// Clear WDT

}
//===========================================================================

//===========================================================================
//	OSC set
//===========================================================================
static void SetOSC(void){

	FCON0 = 0x00;		//xMHz PLL (3=1MHz; 2=2MHz; 1=4MHz; 0=8MHz)...
 
      ENOSC = 1;			//1=Enable High Speed Oscillator...

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

//Step 5: Disable the Comparator			=> CMPxEN = 0;	



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

	PCRUN = 0;		// OFF to start

	//Select the Clock Mode...
	PCCS1 = 0;	//00= LS; 01=HS; 10=PLL
	PCCS0 = 1;


	//Set the Period...(Added Feb 4th, 2013)
	//PWCPH = 0x00;		// Init Period to x - PWM period registers H & L
	//PWCPL = 0x32;		// ...{0x00 & 0x32 = 50 = 10khz}
	PWCP = 50;		// Init Period to 50 (10kHz)


	//Set the Duty Cycle...	
	//PWCDH =   1;		//   1 =  0.4% duty cycle...
	//PWCDH =  32;		//  32 = 12.5% duty cycle...
	//PWCDH =  64;		//  64 = 25.0% duty cycle...
	//PWCDH =  96;		//  96 = 37.6% duty cycle...
	PWCDH = 128;		// 128 = 50.0% duty cycle...
	//PWCDH = 160;		// 160 = 62.5% duty cycle...
	//PWCDH = 192;		// 192 = 75.0% duty cycle...
	//PWCDH = 224;		// 224 = 87.5% duty cycle...
	//PWCDH = 255;		// 255 = 99.6% duty cycle...

	//Start the PWM counter...
	PCRUN = 1;


//StuckHere:
	main_clrWDT(); 	// Clear WDT
//goto StuckHere

}
//===========================================================================



//===========================================================================
//	CONTROL LED's via ROHM BD63877 Driver...
//===========================================================================
void Control_LEDs(void){

//Carl's Notes...

	//PB5 LED_Driver_SERIN
	//PB6 LED_Driver_LATCH
	//PB7 LED_Driver_CLK 

int x,y,led_flag,LED_Code;

	
	PB5D = 1;
	//PB5D = 0;
	
	PB6D = 0;	// Set LATCH LOW...

	for (x=0; x<13; x++)
	{
		PB7D = 0;		//Set CLK Low to Start...
			// dumb delay...
			for (y=0; y<2; y++) // 2184 = ~1 second with 8MHz osc...
			;
		PB7D = 1;		//Cycle Clk HIGH...
			// dumb delay...
			for (y=0; y<2; y++) // 2184 = ~1 second with 8MHz osc...
			;

		PB5D = 1;	//Set Data 1 or 0 (ON/OFF)...	
			// dumb delay...
			for (y=0; y<2; y++) // 2184 = ~1 second with 8MHz osc...
			;
	}



	PB6D = 1;	// Set LATCH High to end transmission...
			// dumb delay...
			for (y=0; y<2; y++) // 2184 = ~1 second with 8MHz osc...
			;

}
//===========================================================================



/*
	//--------------------------
	switch(LED_Code) 
	{
	case 1:

		break;	//Then quit the switch

	case 2:

		break;	//Then quit the switch

	case 3:

		break;	//Then quit the switch

	case 4:

		break;	// Then quit the switch

	case 5:
	

		break;	// Then quit the switch

	default:	
		
		break;	// Then quit the switch
	}
	//--------------------------

*/
