/******************************************************************************
    irq.h

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
#define IRQ_NO_NMINT			(  1 )
#define IRQ_NO_P00INT			(  2 )
#define IRQ_NO_P01INT			(  3 )
#define IRQ_NO_P02INT			(  4 )
#define IRQ_NO_P03INT			(  5 )
#define IRQ_NO_SIO0INT			(  6 )
#define IRQ_NO_SADINT			(  7 )
#define IRQ_NO_I2C0INT			(  8 )
#define IRQ_NO_TM0INT			(  9 )
#define IRQ_NO_TM1INT			( 10 )
#define IRQ_NO_UA0INT			( 11 )
#define IRQ_NO_MD0INT			( 12 )
#define IRQ_NO_RADINT			( 13 )
#define IRQ_NO_TM2INT			( 14 )
#define IRQ_NO_TM3INT			( 15 )
#define IRQ_NO_PW0INT			( 16 )
#define IRQ_NO_T1KINT			( 17 )
#define IRQ_NO_T128HINT			( 18 )
#define IRQ_NO_T32HINT			( 19 )
#define IRQ_NO_T16HINT			( 20 )
#define IRQ_NO_T2HINT			( 21 )
#define IRQ_NO_RTCINT			( 22 )
#define IRQ_NO_AL0INT			( 23 )
#define IRQ_NO_AL1INT			( 24 )
#define	IRQ_NO_TM8INT			( 25 )
#define	IRQ_NO_TM9INT			( 26 )
#define IRQ_SIZE				( 27 )

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
void	irq_init	( void );
void	irq_ei		( void );
void	irq_di		( void );
int		irq_setHdr	( unsigned char intNo, void (*func)( void ) );

#endif /*_IRQ_H_*/

