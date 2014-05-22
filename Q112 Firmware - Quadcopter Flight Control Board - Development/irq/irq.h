/*****************************************************************************
	irq.h

	Copyright (C) 2013 LAPIS Semiconductor Co., Ltd.
	All rights reserved.

	LAPIS SEMICONDUCTOR shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.08.20  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
    2009.12.21  ver.1.40
    2010.03.24  ver.1.50
    2013.05.07  ver.1.60      Re-Written for Q100 Series Micros...C. Schell 
******************************************************************************/
#ifndef _IRQ_H_
#define _IRQ_H_

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*=== Return value. ===*/
/*--- General ---*/
#define IRQ_R_OK				(  0 )
#define IRQ_R_ERR_INTNO			( -1 )

/*=== Parameter value. ===*/
/*--- Interrupt number. ---*/
#define IRQ_NO_WDTINT			(  0 )
#define IRQ_NO_VLSINT			(  1 )

#define IRQ_NO_PA0INT			(  2 )
#define IRQ_NO_PA1INT			(  3 )
#define IRQ_NO_PA2INT			(  4 )

#define IRQ_NO_PB0INT			(  5 )
#define IRQ_NO_PB1INT			(  6 )
#define IRQ_NO_PB2INT			(  7 )
#define IRQ_NO_PB3INT			(  8 )

#define IRQ_NO_SIO0INT			(  9 )

#define IRQ_NO_SADINT			( 10 )

#define IRQ_NO_I2CSINT			( 11 )
#define IRQ_NO_I2CMINT			( 12 )

#define IRQ_NO_TM8INT			( 13 )
#define IRQ_NO_TM9INT			( 14 )

#define IRQ_NO_UA0INT			( 15 )
#define IRQ_NO_UA1INT			( 16 )

#define IRQ_NO_CMP0INT			( 17 )
#define IRQ_NO_CMP1INT			( 18 )

#define IRQ_NO_TMEINT			( 19 )
#define IRQ_NO_TMFINT			( 20 )
#define IRQ_NO_TMAINT			( 21 )
#define IRQ_NO_TMBINT			( 22 )

#define IRQ_NO_PWCINT			( 23 )
#define IRQ_NO_PWDINT			( 24 )
#define IRQ_NO_PWEINT			( 25 )
#define IRQ_NO_PWFINT			( 26 )

#define IRQ_NO_T128HINT			( 27 )
#define IRQ_NO_T32HINT			( 28 )
#define IRQ_NO_T16HINT			( 29 )
#define IRQ_NO_T2HINT			( 30 )

#define IRQ_SIZE				( 31 )

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
void	irq_init	( void );
void	irq_ei	( void );
void	irq_di	( void );
int	irq_setHdr	( unsigned char intNo, void (*func)( void ) );

#endif /*_IRQ_H_*/

