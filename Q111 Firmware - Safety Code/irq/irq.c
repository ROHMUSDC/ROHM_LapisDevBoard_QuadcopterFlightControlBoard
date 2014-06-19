/******************************************************************************
    irq.c

    Copyright (C) 2012 LAPIS Semiconductor Co., Ltd.
    All rights reserved.

    This software is provided "as is" and any expressed or implied
    warranties, including, but not limited to, the implied warranties of
    merchantability and fitness for a particular purpose are disclaimed.
    LAPIS Semiconductor shall not be liable for any direct, indirect,
    consequential or incidental damages arising from using or modifying
    this software.
    You (customer) can modify and use this software in whole or part on
    your own responsibility, only for the purpose of developing the software
    for use with microcontroller manufactured by LAPIS Semiconductor.

    History
    2012.10.12  ver.1.00
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
static void _intWDTINT( void );
static void _intNMIINT( void );
static void _intP00INT( void );
static void _intP01INT( void );
static void _intP02INT( void );
static void _intP03INT( void );
static void _intSIO0INT( void );
static void _intSADINT( void );
static void _intI2C0INT( void );
static void _intTM0INT( void );
static void _intTM1INT( void );
static void _intUA0INT( void );
static void _intMD0INT( void );
static void _intRADINT( void );
static void _intTM2INT( void );
static void _intTM3INT( void );
static void _intPW0INT( void );
static void _intT1KINT( void );
static void _intT128HINT( void );
static void _intT32HINT( void );
static void _intT16HINT( void );
static void _intT2HINT( void );
static void _intRTCINT( void );
static void _intAL0INT( void );
static void _intAL1INT( void );
static void _intTM8INT( void );
static void _intTM9INT( void );

/*=== set Interrupt Vector ===*/
#pragma INTERRUPT _intWDTINT		0x08	2	/*2009.3.18 2<---1 */
#pragma INTERRUPT _intNMIINT		0x0A	2	/*2009.3.18	2<---1 */
#pragma INTERRUPT _intUndefHdr	0x0C	1
#pragma INTERRUPT _intUndefHdr	0x0E	1

#pragma INTERRUPT _intP00INT		0x10	1
#pragma INTERRUPT _intP01INT		0x12	1
#pragma INTERRUPT _intP02INT		0x14	1
#pragma INTERRUPT _intP03INT		0x16	1
#pragma INTERRUPT _intUndefHdr	0x18	1
#pragma INTERRUPT _intUndefHdr	0x1A	1
#pragma INTERRUPT _intUndefHdr	0x1C	1
#pragma INTERRUPT _intUndefHdr	0x1E	1

#pragma INTERRUPT _intSIO0INT		0x20	1
#pragma INTERRUPT _intUndefHdr	0x22	1
#pragma INTERRUPT _intSADINT		0x24	1
#pragma INTERRUPT _intUndefHdr	0x26	1
#pragma INTERRUPT _intUndefHdr	0x28	1
#pragma INTERRUPT _intUndefHdr	0x2A	1
#pragma INTERRUPT _intUndefHdr	0x2C	1
#pragma INTERRUPT _intI2C0INT		0x2E	1

#pragma INTERRUPT _intTM0INT		0x30	1
#pragma INTERRUPT _intTM1INT		0x32	1
#pragma INTERRUPT _intTM8INT		0x34	1
#pragma INTERRUPT _intTM9INT		0x36	1
#pragma INTERRUPT _intUndefHdr	0x38	1
#pragma INTERRUPT _intUndefHdr	0x3A	1
#pragma INTERRUPT _intUndefHdr	0x3C	1
#pragma INTERRUPT _intUndefHdr	0x3E	1

#pragma INTERRUPT _intUA0INT		0x40	1
#pragma INTERRUPT _intUndefHdr	0x42	1
#pragma INTERRUPT _intMD0INT		0x44	1
#pragma INTERRUPT _intUndefHdr	0x46	1
#pragma INTERRUPT _intUndefHdr	0x48	1
#pragma INTERRUPT _intRADINT		0x4A	1
#pragma INTERRUPT _intUndefHdr	0x4C	1
#pragma INTERRUPT _intUndefHdr	0x4E	1

#pragma INTERRUPT _intUndefHdr	0x50	1
#pragma INTERRUPT _intUndefHdr	0x52	1
#pragma INTERRUPT _intUndefHdr	0x54	1
#pragma INTERRUPT _intUndefHdr	0x56	1
#pragma INTERRUPT _intTM2INT		0x58	1
#pragma INTERRUPT _intTM3INT		0x5A	1
#pragma INTERRUPT _intUndefHdr	0x5C	1
#pragma INTERRUPT _intUndefHdr	0x5E	1

#pragma INTERRUPT _intPW0INT		0x60	1
#pragma INTERRUPT _intUndefHdr	0x62	1
#pragma INTERRUPT _intUndefHdr	0x64	1
#pragma INTERRUPT _intUndefHdr	0x66	1
#pragma INTERRUPT _intT1KINT		0x68	1
#pragma INTERRUPT _intT128HINT	0x6A	1
#pragma INTERRUPT _intUndefHdr	0x6C	1
#pragma INTERRUPT _intT32HINT		0x6E	1

#pragma INTERRUPT _intT16HINT		0x70	1
#pragma INTERRUPT _intUndefHdr	0x72	1
#pragma INTERRUPT _intUndefHdr	0x74	1
#pragma INTERRUPT _intT2HINT		0x76	1
#pragma INTERRUPT _intUndefHdr	0x78	1
#pragma INTERRUPT _intRTCINT		0x7A	1
#pragma INTERRUPT _intAL0INT		0x7C	1
#pragma INTERRUPT _intAL1INT		0x7E	1

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
	IE1 =  (unsigned char)0x00u;
	IE2 =  (unsigned char)0x00u;
	IE3 =  (unsigned char)0x00u;
	IE4 =  (unsigned char)0x00u;
	IE5 =  (unsigned char)0x00u;
	IE6 =  (unsigned char)0x00u;
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
	Description:	EI.
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
	Description:	DI.
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
						IRQ_NO_AL1INT(=25)
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
						IRQ_NO_AL1INT(=25)
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

static void _intWDTINT(void)	{	_branchHdr(IRQ_NO_WDTINT);		}
static void _intNMIINT(void)	{	_branchHdr(IRQ_NO_NMINT);		}
static void _intP00INT(void)	{	_branchHdr(IRQ_NO_P00INT);		}
static void _intP01INT(void)	{	_branchHdr(IRQ_NO_P01INT);		}
static void _intP02INT(void)	{	_branchHdr(IRQ_NO_P02INT);		}
static void _intP03INT(void)	{	_branchHdr(IRQ_NO_P03INT);		}
static void _intSIO0INT(void)	{	_branchHdr(IRQ_NO_SIO0INT);		}
static void _intSADINT(void)	{	_branchHdr(IRQ_NO_SADINT);		}
static void _intI2C0INT(void)	{	_branchHdr(IRQ_NO_I2C0INT);		}
static void _intTM0INT(void)	{	_branchHdr(IRQ_NO_TM0INT);		}
static void _intTM1INT(void)	{	_branchHdr(IRQ_NO_TM1INT);		}
static void _intUA0INT(void)	{	_branchHdr(IRQ_NO_UA0INT);		}
static void _intMD0INT(void)	{	_branchHdr(IRQ_NO_MD0INT);		}
static void _intRADINT(void)	{	_branchHdr(IRQ_NO_RADINT);		}
static void _intTM2INT(void)	{	_branchHdr(IRQ_NO_TM2INT);		}
static void _intTM3INT(void)	{	_branchHdr(IRQ_NO_TM3INT);		}
static void _intPW0INT(void)	{	_branchHdr(IRQ_NO_PW0INT);		}
static void _intT1KINT(void)	{	_branchHdr(IRQ_NO_T1KINT);		}
static void _intT128HINT(void){	_branchHdr(IRQ_NO_T128HINT);		}
static void _intT32HINT(void)	{	_branchHdr(IRQ_NO_T32HINT);		}
static void _intT16HINT(void)	{	_branchHdr(IRQ_NO_T16HINT);		}
static void _intT2HINT(void)	{	_branchHdr(IRQ_NO_T2HINT);		}
static void _intRTCINT(void)	{	_branchHdr(IRQ_NO_RTCINT);		}
static void _intAL0INT(void)	{	_branchHdr(IRQ_NO_AL0INT);		}
static void _intAL1INT(void)	{	_branchHdr(IRQ_NO_AL1INT);		}
static void _intTM8INT(void)	{	_branchHdr(IRQ_NO_TM8INT);		}
static void _intTM9INT(void)	{	_branchHdr(IRQ_NO_TM9INT);		}
