/******************************************************************************
	tbc.h

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
#ifndef _TBC_H_
#define _TBC_H_

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*=== Parameter value. ===*/
/*--- tb_setHtbdiv() ---*/
/* htd */
#define TB_HTD_1_16			(  0 )			/* The ratio of dividing frequency = 1/16 */
#define TB_HTD_1_15			(  1 )			/* The ratio of dividing frequency = 1/15 */
#define TB_HTD_1_14			(  2 )			/* The ratio of dividing frequency = 1/14 */
#define TB_HTD_1_13			(  3 )			/* The ratio of dividing frequency = 1/13 */
#define TB_HTD_1_12			(  4 )			/* The ratio of dividing frequency = 1/12 */
#define TB_HTD_1_11			(  5 )			/* The ratio of dividing frequency = 1/11 */
#define TB_HTD_1_10			(  6 )			/* The ratio of dividing frequency = 1/10 */
#define TB_HTD_1_9			(  7 )			/* The ratio of dividing frequency = 1/ 9 */
#define TB_HTD_1_8			(  8 )			/* The ratio of dividing frequency = 1/ 8 */
#define TB_HTD_1_7			(  9 )			/* The ratio of dividing frequency = 1/ 7 */
#define TB_HTD_1_6			( 10 )			/* The ratio of dividing frequency = 1/ 6 */
#define TB_HTD_1_5			( 11 )			/* The ratio of dividing frequency = 1/ 5 */
#define TB_HTD_1_4			( 12 )			/* The ratio of dividing frequency = 1/ 4 */
#define TB_HTD_1_3			( 13 )			/* The ratio of dividing frequency = 1/ 3 */
#define TB_HTD_1_2			( 14 )			/* The ratio of dividing frequency = 1/ 2 */
#define TB_HTD_1_1			( 15 )			/* The ratio of dividing frequency = 1/ 1 */

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
void			tb_setHtbdiv	( unsigned char htd );

/*******************************************************************************
	Routine Name:	tb_setHtbdiv
	Form:			void tb_setHtbdiv( unsigned char htd )
	Parameters:		unsigned char htd : 
						TB_HTD_1_16(=0) : The ratio of dividing frequency = 1/16
						...
						TB_HTD_1_1(=15) : The ratio of dividing frequency = 1/ 1
	Return value:	void
	Description:	The ratio of dividing frequency of the base counter of time is set.
******************************************************************************/
#pragma inline tb_setHtbdiv
void tb_setHtbdiv( unsigned char htd )
{
	/*=== register setting. ===*/
	HTBDR = htd;
}

#endif /*_TBC_H_*/

