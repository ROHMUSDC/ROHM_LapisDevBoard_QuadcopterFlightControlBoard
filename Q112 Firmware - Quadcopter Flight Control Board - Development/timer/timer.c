/******************************************************************************
	timer.c

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
    2013.05.07  ver 1.10 	- Modifed to work with Q100 Series micros	
******************************************************************************/
#include "common.h"
#include "mcu.h"
#include "timer.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*--- Clock ---*/
#define TM_LSCLK_HZ			( LSCLK_HZ )

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
	Routine Name:	tm_init
	Form:			void tm_init( unsigned char chNo )
	Parameters:		unsigned char chNo : Select a channel number.
						TM_CH_NO_89 : timer89
						TM_CH_NO_AB : timerAB
						TM_CH_NO_EF : timerEF
	Return value:	void
	Description:	Initialize timer.
******************************************************************************/
void tm_init( unsigned char chNo )
{
	switch( chNo ) {
	case TM_CH_NO_89 :
		T8RUN = 0;		/* T8RUN   = 0    ...count stop. */
		T9RUN = 0;		/* T9RUN   = 0    ...count stop. */
		T89M16 = 1;
		break;
	case TM_CH_NO_AB :
		TARUN = 0;		/* TARUN   = 0    ...count stop. */
		TBRUN = 0;		/* TBRUN   = 0    ...count stop. */
		TABM16 = 1;
		break;
	case TM_CH_NO_EF :
		TERUN = 0;		/* TERUN   = 0    ...count stop. */
		TFRUN = 0;		/* TFRUN   = 0    ...count stop. */
		TEFM16 = 1;
		break;
	default:
		break;
	}
}
