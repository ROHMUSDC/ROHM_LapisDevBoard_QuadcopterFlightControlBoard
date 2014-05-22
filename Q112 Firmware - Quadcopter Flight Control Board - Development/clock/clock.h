/*****************************************************************************
	clock.h

	Copyright (C) 2013 LAPIS Semiconductor Co., Ltd.
	All rights reserved.

	LAPIS SEMICONDUCTOR shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.08.20  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
******************************************************************************/
#ifndef _CLOCK_H_
#define _CLOCK_H_

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*=== Parameter value. ===*/
#define CLK_SYSCLK_LSCLK		( 0 )
#define CLK_SYSCLK_HSCLK		( 1 )
#define CLK_SYSC_OSCLK			( 0 )
#define CLK_SYSC_OSCLK_DIV2		( 1 )
#define CLK_SYSC_OSCLK_DIV4		( 2 )
#define CLK_SYSC_OSCLK_DIV8		( 3 )
#define CLK_OSCM_RC				( 0 )
#define CLK_OSCM_CRYSTAL		( 1 )
#define CLK_OSCM_PLL			( 2 )
#define CLK_OSCM_EXTCLK			( 3 )
/*=== Return value. ===*/
#define CLK_R_OK				(  0 )
#define CLK_R_ERR_SCLK			( -1 )
#define CLK_R_ERR_SYSC			( -2 )
#define CLK_R_ERR_OSCM			( -3 )
#define CLK_R_ERR_ENOSC			( -4 )


/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
int				clk_setSysclk( unsigned char sysclk, unsigned char sysc, unsigned char oscm, unsigned short kHz );

#ifndef _ML610Q41X
void			clk_getSysclk(unsigned char *mode, unsigned short *kHz );
int				clk_setHsclk( unsigned char sysc, unsigned char oscm, unsigned short kHz );
#endif	/* _ML610Q41X	*/

void			clk_enaHsclk( void );
void			clk_disHsclk( void );

#ifndef _ML610Q41X
unsigned long	clk_getHsclk( void );
#endif	/* _ML610Q41X	*/

/*
void			clk_enaLsclk2( void );
void			clk_disLsclk2( void );
*/
void			clk_wait500us( void );


#endif /*_CLOCK_H_*/

