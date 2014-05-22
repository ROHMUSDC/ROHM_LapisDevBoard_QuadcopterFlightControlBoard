/*****************************************************************************
	clock_sysFunc.c

	Copyright (C) 2008 OKI SEMICONDUCTOR CO., LTD.
	All rights reserved.

	OKI SEMICONDUCTOR shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.08.20  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
    2009.12.22  ver.1.40
    2010.03.24  ver.1.50
******************************************************************************/
#include "mcu.h"
#include "irq.h"
#include "timer.h"
#include "clock_sysFunc.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
#define CLKSYS_TM_CHNO				( 2 )
#define CLKSYS_TM_IRQNO				( IRQ_NO_TM2INT )
#define CLKSYS_LSCLK_HZ				( 32768UL )
#define CLKSYS_TIMER_INTERVAL			( 500UL )		// [us]
#define CLKSYS_TIMER_CNT			( ( CLKSYS_TIMER_INTERVAL * CLKSYS_LSCLK_HZ ) / 1000000UL )	// Timer cnt setting value.
#define CLKSYS_TM_IRQ				( QTM2 )

/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/

/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
/*******************************************************************************
	Routine Name:	clk_wait500us
	Form:			void clk_wait500us( void )
	Parameters:		void
	Return value:	void
	Description:	wait during 500us in a function
******************************************************************************/

void clk_wait500us( void )
{
	int		ret;
	
	ETM2 = 0;
	(void)tm_init( (unsigned char)CLKSYS_TM_CHNO,		/* Timer channel */
	               (unsigned char)TM_M16_8BIT,			/* 8bit or 16bit mode */
	               (unsigned char)TM_CS_LSCLK,			/* Operation clock */
	               (unsigned short)CLKSYS_TIMER_CNT );	/* Timer count value */
	CLKSYS_TM_IRQ = 0;
	(void)tm_start( (unsigned char)CLKSYS_TM_CHNO );
	do {
		ret = tm_checkOvf( (unsigned char)CLKSYS_TM_CHNO );
	} while( ret == TM_R_NOT_OVF );
	(void)tm_stop( (unsigned char)CLKSYS_TM_CHNO );
	CLKSYS_TM_IRQ = 0;
}

