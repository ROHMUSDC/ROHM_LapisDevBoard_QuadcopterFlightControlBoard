/*****************************************************************************
	irq.c

	Copyright (C) 2013 LAPIS Semiconductor Co., Ltd.
	All rights reserved.

	LAPIS SEMICONDUCTOR shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.08.20  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
    2009.03.18  ver.1.33
    2009.12.21  ver.1.40
    2010.03.18  ver.1.50	improvement of the register access method.
    2013.05.07  ver.1.60      Re-Written for Q100 Series Micros...C. Schell  
******************************************************************************/
#include "mcu.h"
#include "irq.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/

/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/
/*--- Handler table. ---*/
static void ( *_sIrqHdr[IRQ_SIZE] )( void );

/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/
static void _intUndefHdr( void );
static void _intNullHdr( void );
static void _intWDTINT( void );	//Watch Dog Timer Interrupt
static void _intVLSINT( void );	//Voltage Level Supervisor Interrupt


static void _intPA0INT( void );	//PA0 External Interrupt
static void _intPA1INT( void );	//PA1 External Interrupt
static void _intPA2INT( void );	//PA2 External Interrupt

static void _intPB0INT( void );	//PB0 External Interrupt
static void _intPB1INT( void );	//PB1 External Interrupt
static void _intPB2INT( void );	//PB2 External Interrupt
static void _intPB3INT( void );	//PB3 External Interrupt

static void _intSIO0INT( void );	//Synchronous Serial Port0 Interrupt

static void _intSADINT( void );	//Successive approximation type A/D converter Interrupt

static void _intI2CSINT( void ); 	//I2C Bus Interface (Slave)  Interrupt
static void _intI2CMINT( void ); 	//I2C Bus Interface (Master) Interrupt

static void _intTM8INT( void );	//Timer 8 Interrupt
static void _intTM9INT( void );	//Timer 9 Interrupt	

static void _intUA0INT( void );	//UART 0 Interrupt
static void _intUA1INT( void );	//UART 1 Interrupt

static void _intCMP0INT( void );	//Comparator 0 Interrupt
static void _intCMP1INT( void );	//Comparator 1 Interrupt

static void _intTMEINT( void );	//Timer E Interrupt
static void _intTMFINT( void );	//Timer F Interrupt
static void _intTMAINT( void );	//Timer A Interrupt
static void _intTMBINT( void );	//Timer B Interrupt

static void _intPWCINT( void );	//PWMC Interrupt
static void _intPWDINT( void );	//PWMD Interrupt
static void _intPWEINT( void );	//PWME Interrupt
static void _intPWFINT( void );	//PWMF Interrupt

static void _intT128HINT( void );	//TBC128Hz Interrupt
static void _intT32HINT( void );	//TBC32Hz  Interrupt
static void _intT16HINT( void );	//TBC16Hz  Interrupt
static void _intT2HINT( void );	//TBC2Hz   Interrupt

/*=== set Interrupt Vector ===*/
//Note: The vector table, has 16-bit long data
#pragma INTERRUPT _intWDTINT		0x08	2	//Watch Dog Timer Interrupt
#pragma INTERRUPT _intVLSINT		0x0C	1	//Voltage Level Supervisor Interrupt
#pragma INTERRUPT _intUndefHdr	0x0E	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intPA0INT		0x10	1	//PA0 External Interrupt
#pragma INTERRUPT _intPA1INT		0x12	1	//PA1 External Interrupt
#pragma INTERRUPT _intPA2INT		0x14	1	//PA2 External Interrupt
#pragma INTERRUPT _intUndefHdr	0x16	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intPB0INT		0x18	1	//PB0 External Interrupt
#pragma INTERRUPT _intPB1INT		0x1A	1	//PB1 External Interrupt
#pragma INTERRUPT _intPB2INT		0x1C	1	//PB2 External Interrupt
#pragma INTERRUPT _intPB3INT		0x1E	1	//PB3 External Interrupt
#pragma INTERRUPT _intSIO0INT		0x20	1	//Synchronous Serial Port0 Interrupt
#pragma INTERRUPT _intUndefHdr	0x22	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intSADINT		0x24	1	//Successive approximation type A/D converter Interrupt
#pragma INTERRUPT _intUndefHdr	0x26	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x28	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x2A	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intI2CSINT		0x2C	1	//I2C Bus Interface (Slave)  Interrupt
#pragma INTERRUPT _intI2CMINT		0x2E	1	//I2C Bus Interface (Master) Interrupt
#pragma INTERRUPT _intUndefHdr	0x30	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x32	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intTM8INT		0x34	1	//Timer 8 Interrupt
#pragma INTERRUPT _intTM9INT		0x36	1	//Timer 9 Interrupt
#pragma INTERRUPT _intUndefHdr	0x38	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x3A	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x3C	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x3E	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUA0INT		0x40	1	//UART 0 Interrupt
#pragma INTERRUPT _intUA1INT		0x42	1	//UART 1 Interrupt
#pragma INTERRUPT _intUndefHdr	0x44	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x46	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x48	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x4A	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intCMP0INT		0x4C	1	//Comparator 0 Interrupt
#pragma INTERRUPT _intCMP1INT		0x4E	1	//Comparator 1 Interrupt
#pragma INTERRUPT _intUndefHdr	0x50	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x52	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x54	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x56	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intTMEINT		0x58	1	//Timer E Interrupt
#pragma INTERRUPT _intTMFINT		0x5A	1	//Timer F Interrupt
#pragma INTERRUPT _intTMAINT		0x5C	1	//Timer A Interrupt
#pragma INTERRUPT _intTMBINT		0x5E	1	//Timer B Interrupt
#pragma INTERRUPT _intPWCINT		0x60	1	//PWMC Interrupt
#pragma INTERRUPT _intPWDINT		0x62	1	//PWMD Interrupt
#pragma INTERRUPT _intPWEINT		0x64	1	//PWME Interrupt
#pragma INTERRUPT _intPWFINT		0x66	1	//PWMF Interrupt
#pragma INTERRUPT _intUndefHdr	0x68	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intT128HINT	0x6A	1	//TBC128Hz Interrupt
#pragma INTERRUPT _intUndefHdr	0x6C	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intT32HINT		0x6E	1	//TBC32HZ  Interrupt
#pragma INTERRUPT _intT16HINT		0x70	1	//TBC16Hz  Interrupt
#pragma INTERRUPT _intUndefHdr	0x72	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intUndefHdr	0x74	1	//...define vector tables for all unused interrupts for fail safe.
#pragma INTERRUPT _intT2HINT		0x76	1	//TBC2Hz   Interrupt

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
/*******************************************************************************
	Routine Name:	irq_init
	Form:			void irq_init( void )
	Parameters:		void
	Return value:	void
	Description:	irq module initialize.
******************************************************************************/
void irq_init( void )
{
	int		irqNo;
	
	/*=== register setting. ===*/
	IE1 = (unsigned char)0x00u;
	IE2 = (unsigned char)0x00u;
	IE3 = (unsigned char)0x00u;
	IE4 = (unsigned char)0x00u;
	IE5 = (unsigned char)0x00u;
	IE6 = (unsigned char)0x00u;
	IE7 =  (unsigned char)0x00u;

	IRQ0 = (unsigned char)0x00u;
	IRQ1 = (unsigned char)0x00u;
	IRQ2 = (unsigned char)0x00u;
	IRQ3 = (unsigned char)0x00u;
	IRQ4 = (unsigned char)0x00u;
	IRQ5 = (unsigned char)0x00u;
	IRQ6 = (unsigned char)0x00u;
	IRQ7 = (unsigned char)0x00u;

	/*=== handler setting. ===*/
	for( irqNo = 0; irqNo < IRQ_SIZE; irqNo++ ) {
		_sIrqHdr[irqNo] = _intNullHdr;
	}
}

/*******************************************************************************
	Routine Name:	irq_ei
	Form:			void irq_ei( void )
	Parameters:		void
	Return value:	void
	Description:	Enable Interrupts
******************************************************************************/
void irq_ei( void )
{
	__EI();
}

/*******************************************************************************
	Routine Name:	irq_di
	Form:			void irq_di( void )
	Parameters:		void
	Return value:	void
	Description:	Disable Interrupts
******************************************************************************/
void irq_di( void )
{
	__DI();
}

/*******************************************************************************
	Routine Name:	irq_setHdr
	Form:			int irq_setHdr( unsigned char intNo, void (*func)( void ) )
	Parameters:		unsigned char intNo : Interrupt number.
						IRQ_NO_WDTINT(= 0)
						...
						IRQ_NO_T2HINT(=56)
				void (*func)( void ) : Handler.
	Return value:	int
					IRQ_R_OK(=0)
					IRQ_R_ERR_INTNO(=-1)
	Description:	Clear interrupt request flag.
******************************************************************************/
int irq_setHdr( unsigned char intNo, void (*func)( void ) )
{
	/*=== parameter check. ===*/
	/*--- check [intNo]. ---*/
	if( intNo >= (unsigned char)IRQ_SIZE ) {
		return ( IRQ_R_ERR_INTNO );
	}
	/*=== Handler setting.  ===*/
	if( func != (void *)0 ) {
		_sIrqHdr[intNo] = func;
	}
	else {
		_sIrqHdr[intNo] = _intNullHdr;
	}
	return ( IRQ_R_OK );
}


/*############################################################################*/
/*#                              Subroutine                                  #*/
/*############################################################################*/
/*******************************************************************************
	Routine Name:	_intUndefHdr
	Form:			static void _intUndefHdr( void )
	Parameters:		void
	Return value:	void
	Description:	NULL Handler.
******************************************************************************/
static void _intUndefHdr( void )
{
	return;
}

/*******************************************************************************
	Routine Name:	_intNullHdr
	Form:			static void _intNullHdr( void )
	Parameters:		void
	Return value:	void
	Description:	NULL Handler.
******************************************************************************/
static void _intNullHdr( void )
{
	return;
}

/*******************************************************************************
	Routine Name:	_intbranchHdr
	Form:			static void _branchHdr( void )
	Parameters:		unsigned char intNo : Interrupt number.
						IRQ_NO_WDTINT(= 0)
						...
						IRQ_NO_T2HINT(=56)
	Return value:	void
	Description:	Branch to Handler.
******************************************************************************/
static void _branchHdr( unsigned char intNo )
{
	_sIrqHdr[intNo]();
}

/*############################################################################*/
/*#                               Handler                                    #*/
/*############################################################################*/

static void _intWDTINT(void)	{	_branchHdr(IRQ_NO_WDTINT);	}
static void _intVLSINT(void)	{	_branchHdr(IRQ_NO_VLSINT);	}

static void _intPA0INT(void)	{	_branchHdr(IRQ_NO_PA0INT);	}
static void _intPA1INT(void)	{	_branchHdr(IRQ_NO_PA1INT);	}
static void _intPA2INT(void)	{	_branchHdr(IRQ_NO_PA2INT);	}

static void _intPB0INT(void)	{	_branchHdr(IRQ_NO_PB0INT);	}
static void _intPB1INT(void)	{	_branchHdr(IRQ_NO_PB1INT);	}
static void _intPB2INT(void)	{	_branchHdr(IRQ_NO_PB2INT);	}
static void _intPB3INT(void)	{	_branchHdr(IRQ_NO_PB3INT);	}

static void _intSIO0INT(void)	{	_branchHdr(IRQ_NO_SIO0INT);	}

static void _intSADINT(void)	{	_branchHdr(IRQ_NO_SADINT);	}

static void _intI2CSINT(void)	{	_branchHdr(IRQ_NO_I2CSINT);	}
static void _intI2CMINT(void)	{	_branchHdr(IRQ_NO_I2CMINT);	}

static void _intTM8INT(void)	{	_branchHdr(IRQ_NO_TM8INT);	}
static void _intTM9INT(void)	{	_branchHdr(IRQ_NO_TM9INT);	}

static void _intUA0INT(void)	{	_branchHdr(IRQ_NO_UA0INT);	}
static void _intUA1INT(void)	{	_branchHdr(IRQ_NO_UA1INT);	}

static void _intCMP0INT(void)	{	_branchHdr(IRQ_NO_CMP0INT);	}
static void _intCMP1INT(void)	{	_branchHdr(IRQ_NO_CMP1INT);	}

static void _intTMEINT(void)	{	_branchHdr(IRQ_NO_TMEINT);	}
static void _intTMFINT(void)	{	_branchHdr(IRQ_NO_TMFINT);	}
static void _intTMAINT(void)	{	_branchHdr(IRQ_NO_TMAINT);	}
static void _intTMBINT(void)	{	_branchHdr(IRQ_NO_TMBINT);	}

static void _intPWCINT(void)	{	_branchHdr(IRQ_NO_PWCINT);	}
static void _intPWDINT(void)	{	_branchHdr(IRQ_NO_PWDINT);	}
static void _intPWEINT(void)	{	_branchHdr(IRQ_NO_PWEINT);	}
static void _intPWFINT(void)	{	_branchHdr(IRQ_NO_PWFINT);	}

static void _intT128HINT(void){	_branchHdr(IRQ_NO_T128HINT);	}
static void _intT32HINT(void)	{	_branchHdr(IRQ_NO_T32HINT);	}
static void _intT16HINT(void)	{	_branchHdr(IRQ_NO_T16HINT);	}
static void _intT2HINT(void)	{	_branchHdr(IRQ_NO_T2HINT);	}
