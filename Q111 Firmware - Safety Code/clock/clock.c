/******************************************************************************
    clock.c

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
#include "clock.h"
#include "irq.h"
#include "timer.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*--- Register bit. ---*/
/* FCON0 */
#define FCON0_SYSC0			( 0x1u  )		/* FCON0 Register SYSC0 bit */
#define FCON0_SYSC1			( 0x2u  )		/* FCON0 Register SYSC1 bit */
#define FCON0_OSCM0			( 0x4u  )		/* FCON0 Register OSCM0 bit */
#define FCON0_OSCM1			( 0x8u  )		/* FCON0 Register OSCM1 bit */
#define FCON0_OUTC0			( 0x10u )		/* FCON0 Register OUTC0 bit */
#define FCON0_OUTC1			( 0x20u )		/* FCON0 Register OUTC1 bit */
/* FCON1 */
#define FCON1_SYSCLK			( 0x1u  )		/* FCON1 Register SYSCLK bit */
#define FCON1_ENOSC			( 0x2u  )		/* FCON1 Register ENOSC  bit */
#define FCON1_LPLL			( 0x80u )		/* FCON1 Register LPLL   bit */


/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
#define CLKSYS_LSCLK_HZ				( LSCLK_HZ )
#define CLKSYS_TIMER_INTERVAL			( 3000UL )		// [us]
#define CLKSYS_TIMER_CNT			( ( CLKSYS_TIMER_INTERVAL * CLKSYS_LSCLK_HZ ) / 1000000UL )	// Timer cnt setting value.
#define CLKSYS_TM_CHNO				( 0 )
#define CLKSYS_TM_IRQNO				( IRQ_NO_TM0INT )
#define CLKSYS_TM_IRQ				( QTM0 )
#define CLKSYS_TM_IRQ_EN			( ETM0 )

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
	Routine Name:	clk_setSysclk
	Form:			void clk_setSysclk( void )
	Parameters:		void
	Return value:	void
	Description:	System clock setting.
******************************************************************************/
void clk_setSysclk( void )
{
	/*--- Register setting ---*/
#if 0			// è
	SYSCLK = 0;	// LSCLK
	ENOSC  = 0;	// ç
	OSCM   = 2;	// PLL
#endif
	SYSC0  = 0;
	SYSC1  = 0;	// 8MHz OSCLK(==OSCLK/2)
#if 0			// è
	ENOSC  = 1;	// ç

	/* wait 3ms */
	CLKSYS_TM_IRQ_EN = 0;
	tm_init( TM_CH_NO_01 );						/* Timer channel */
	CLKSYS_TM_IRQ = 0;
	tm_set01Source(TM_CS_LSCLK);					/* Operation clock */
	tm_set01Data( (unsigned short)(CLKSYS_TIMER_CNT) );	/* Timer count value */
	tm_start01();
	while( tm_checkOvf01() == TM_R_NOT_OVF );
	tm_stop01();
	CLKSYS_TM_IRQ = 0;

	SYSCLK = 1;	// HSCLK
#endif
}
