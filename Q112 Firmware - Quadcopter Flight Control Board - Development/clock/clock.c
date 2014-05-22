/*****************************************************************************
	clock.c

	Copyright (C) 2013 LAPIS Semiconductor Co., Ltd.
	All rights reserved.

	LAPIS SEMICONDUCTOR shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.08.20  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
    2009.03.17  ver.1.50
    2010.03.16  ver.1.60	improvement of the register access method.
******************************************************************************/
#include "mcu.h"
#include "clock.h"
//#include "clock_sysFunc.h"


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
#define FCON1_SYSCLK		( 0x1u  )		/* FCON1 Register SYSCLK bit */
#define FCON1_ENOSC			( 0x2u  )		/* FCON1 Register ENOSC  bit */
#define FCON1_ENMLT			( 0x4u  )		/* FCON1 Register ENMLT  bit */
#define FCON1_LPLL			( 0x80u )		/* FCON1 Register LPLL   bit */


/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/
static unsigned short _gsHsclk = 4096;		/* A variable to maintain frequency	*/


/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/


/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
/*******************************************************************************
	Routine Name:	clk_setSysclk
	Form:			int clk_setSysclk( unsigned char sysclk,unsigned char sysc,unsigned char oscm,unsigned short kHz)
	Parameters:		unsigned char sysclk : A system clock choice low speed clock
						CLK_SYSCLK_LSCLK(=0) : A low speed clock
						CLK_SYSCLK_HSCLK(=1) : A high speed clock
					unsigned char sysc : It is lap choice for a thing of a high-speed clock
						[At the time of low speed clock choice]
							no reference
						[At the time of high-speed clock choice]
							CLK_SYSC_OSCLK(=0)  : OSCLK
							CLK_SYSC_OSCLK2(=1) : 1/2OSCLK
							CLK_SYSC_OSCLK4(=2) : 1/4OSCLK
							CLK_SYSC_OSCLK8(=3) : 1/8OSCLK
					unsigned char oscm : The mode choice of the high-speed clock outbreak circuit
						[At the time of low speed clock choice]
							no reference
						[At the time of high-speed clock choice]
							CLK_OSCM_RC(=0)      : An RC oscillation mode
							CLK_OSCM_CRYSTAL(=1) : A crystal / ceramic oscillation mode
							CLK_OSCM_PLL(=2)     : A built-in PLL oscillation mode
							CLK_OSCM_EXTCLK(=3)  : Outside clock input mode
					unsigned short kHz : Input frequency(kHz)
						[At the time of low speed clock choice]
							no reference
						[At the time of high-speed clock choice]
							I refer only at the time of a crystal / ceramic oscillation mode and outside clock input mode choice
	Return value:	int
						CLK_R_OK(=0)        : Initialization success
						CLK_R_ERR_SCLK(=-1) : System clock choice is out of a range
						CLK_R_ERR_SYSC(=-2) : Share lap choice is out of a range
						CLK_R_ERR_OSCM(=-3) : A high-speed setting mode is out of a range
	Description:	System clock setting.
******************************************************************************/
int clk_setSysclk( unsigned char sysclk, unsigned char sysc, unsigned char oscm, unsigned short kHz )
{
	unsigned char reg;
	unsigned char loop;
	unsigned char loopCnt;
	
	if( sysclk > (unsigned char)1 ){
		return ( CLK_R_ERR_SCLK );
	}
	
	/*=== System clock choice "a high speed clock?". ===*/
	if( sysclk == (unsigned char)CLK_SYSCLK_HSCLK ){
		if( sysc > (unsigned char)3 ){
			return ( CLK_R_ERR_SYSC );
		}
		if( oscm > (unsigned char)3 ){
			return ( CLK_R_ERR_OSCM );
		}
	}
	
	/*=== System clock choice "a low speed clock?". ===*/
	if( sysclk == (unsigned char)CLK_SYSCLK_LSCLK ){
		/*--- Register setting ---*/
		SYSCLK = 0;
	}else{
		/*--- Register setting ---*/
		SYSCLK = 0;
		ENOSC = 0;
		reg  = FCON0;
		reg &= (unsigned char)( ~( FCON0_OSCM1 | FCON0_OSCM0 | FCON0_SYSC1 | FCON0_SYSC0 ) );
		reg |= ( sysc | (unsigned char)( oscm << 2 ) ) ;
		FCON0 = reg;
		ENOSC = 1;
		/*=== It is diverged by "oscm". ===*/
		switch( (int)oscm ){
			/*--- Outside clock input mode ---*/
			case CLK_OSCM_EXTCLK:
				_gsHsclk = kHz;
				loopCnt = 2;
				break;
			/*--- A built-in PLL oscillation mode ---*/
			case CLK_OSCM_PLL:
				loopCnt = 20;
				break;
			/*--- A crystal / ceramic oscillation mode ---*/
			case CLK_OSCM_CRYSTAL:
				loopCnt = 40;
				break;
			/*--- An RC oscillation mode ---*/
//-			case CLK_OSCM_RC:
			default:
				loopCnt = 1;
				break;
		}
		for( loop=0; loop<loopCnt; loop++ ){
			clk_wait500us();
		}
		SYSCLK = 1;
	}
	
	return ( CLK_R_OK );
}

#ifndef _ML610Q41X
/*******************************************************************************
	Routine Name:	clk_getSysclk
	Form:			void clk_getSysclk(unsigned char *mode,unsigned short *kHz)
	Parameters:		unsigned char *mode : The domain that stores choice information of LSCLK/HSCLK
						CLK_SYSCLK_LSCLK(=0) : A low speed clock
						CLK_SYSCLK_HSCLK(=1) : A high speed clock
					unsigned short * kHz : The domain that stores frequency(It stores the value of the kHz unit)
						[Note] While I work with "a low speed clock", it is 32.768kHz, but stores "32" 
						       because I regard the setting of this argument as [kHz unit].
						       Therefore I recommend that I use a value of "32.768kHz" without using a value stored away 
						       by this argument when "a low speed clock" was repaid by argument mode.
	Return value:	void
	Description:	acquire system clock setting
******************************************************************************/
void clk_getSysclk(unsigned char *mode, unsigned short *kHz )
{
	unsigned char sysclk;
	unsigned char sysc;
	unsigned char oscm;
	
	sysclk = (unsigned char)( FCON1 & (unsigned char)FCON1_SYSCLK );
	*mode = sysclk;
	
	if( sysclk == (unsigned char)CLK_SYSCLK_LSCLK ){
		*mode = (unsigned char)CLK_SYSCLK_LSCLK;
		*kHz  = (unsigned short)32;
	}
	else{
		*mode = (unsigned char)CLK_SYSCLK_HSCLK;
		sysc  = (unsigned char)( FCON0 & (FCON0_SYSC0|FCON0_SYSC1) );
		oscm  = (unsigned char)( FCON0 & (FCON0_OSCM0|FCON0_OSCM1) );
		
		/*=== It is diverged by "oscm". ===*/
		switch( oscm >> 2 ){
			/*--- An RC oscillation mode ---*/
			case CLK_OSCM_RC:
				*kHz  = (unsigned short)500;
				break;
			/*--- A built-in PLL oscillation mode ---*/
			case CLK_OSCM_PLL:
				*kHz  = (unsigned short)8192;
				if( sysc == CLK_SYSC_OSCLK ){
					sysc = (unsigned char)CLK_SYSC_OSCLK_DIV2;
				}
				break;
			/*--- A crystal / ceramic oscillation mode ---*/
			case CLK_OSCM_CRYSTAL:
				*kHz = (unsigned short)4096;
				break;
			/*--- Outside clock input mode             ---*/
			case CLK_OSCM_EXTCLK:
				*kHz  = _gsHsclk;
				break;
			/*--- Others ---*/
			default:
				*kHz  = (unsigned short)0;
				break;
		}
		*kHz >>= sysc;
	}
}

/*******************************************************************************
	Routine Name:	clk_setHsclk
	Form:			int clk_setHsclk( unsigned char sysc,unsigned char oscm,unsigned short kHz )
	Parameters:		unsigned char sysc : It is lap choice for a thing of a high-speed clock
						CLK_SYSC_OSCLK(=0)  : OSCLK
						CLK_SYSC_OSCLK2(=1) : 1/2OSCLK
						CLK_SYSC_OSCLK4(=2) : 1/4OSCLK
						CLK_SYSC_OSCLK8(=3) : 1/8OSCLK
					unsigned char oscm : The mode choice of the high-speed clock outbreak circuit
						CLK_OSCM_RC(=0)      : An RC oscillation mode
						CLK_OSCM_CRYSTAL(=1) : A crystal / ceramic oscillation mode
						CLK_OSCM_PLL(=2)     : A built-in PLL oscillation mode
						CLK_OSCM_EXTCLK(=3)  : Outside clock input mode
					unsigned short kHz : Input frequency(kHz)
						refer only at the time of a crystal / ceramic oscillation mode and outside clock input mode choice.
	Return value:	int
						CLK_R_OK(=0)         : Setting success
						CLK_R_ERR_SYSC(=-2)  : Share lap choice is out of a range
						CLK_R_ERR_OSCM(=-3)  : A high-speed setting mode is out of a range
						CLK_R_ERR_ENOSC(=-4) : During high-speed oscillation movement
	Description:	High-speed clock setting
******************************************************************************/
int clk_setHsclk( unsigned char sysc, unsigned char oscm, unsigned short kHz )
{
	unsigned char enosc;
	unsigned char reg;
	
	/*--- Circuit movement state confirmation ---*/
	enosc = (unsigned char)( FCON1 & FCON1_ENOSC );
	if( enosc != (unsigned char)0 ){
		return ( CLK_R_ERR_ENOSC );
	}
	/*--- A parameter check ---*/
	if( sysc > (unsigned char)3 ){
		return ( CLK_R_ERR_SYSC );
	}
	if( oscm > (unsigned char)3 ){
		return ( CLK_R_ERR_OSCM );
	}
	/*--- Register setting ---*/
	reg  = FCON0;
	reg &= (unsigned char)( ~( FCON0_OSCM1 | FCON0_OSCM0 | FCON0_SYSC1 | FCON0_SYSC0 ) );
	reg |= ( sysc | (unsigned char)( oscm << 2 ) );
	FCON0 = reg;
	if( oscm == CLK_OSCM_EXTCLK ) {
		_gsHsclk = kHz;
	}
	
	return CLK_R_OK;
}
#endif	/* _ML610Q41X	*/

/*******************************************************************************
	Routine Name:	clk_enaHsclk
	Form:			void clk_enaHsclk( void )
	Parameters:		void
	Return value:	void
	Description:	The oscillation start of the high-speed clock oscillation circuit
******************************************************************************/
void clk_enaHsclk( void )
{
	ENOSC = 1;
}

/*******************************************************************************
	Routine Name:	clk_disHsclk
	Form:			void clk_disHsclk( void )
	Parameters:		void
	Return value:	void
	Description:	The oscillation stop of the high-speed clock oscillation circuit
******************************************************************************/
void clk_disHsclk( void )
{
	ENOSC = 0;
}

#ifndef _ML610Q41X
/*******************************************************************************
	Routine Name:	clk_getHsclk
	Form:			unsigned long clk_getHsclk( void )
	Parameters:		void
	Return value:	unsigned long
						Frequency of HSCLK(A kHz unit)
	Description:	The high-speed clock (HSCLK) frequency acquisition
******************************************************************************/
unsigned long clk_getHsclk( void )
{
	unsigned char sysc;
	unsigned char oscm;
	unsigned short kHz;
	
	if( ENOSC == 1 ){
		sysc = (unsigned char)( FCON0 & (unsigned char)(FCON0_SYSC0|FCON0_SYSC1) );
		oscm = (unsigned char)( FCON0 & (unsigned char)(FCON0_OSCM0|FCON0_OSCM1) );
		switch( oscm >> 2 ){
			/*--- An RC oscillation mode ---*/
			case CLK_OSCM_RC:
				kHz = (unsigned short)500;
				break;
			/*--- A built-in PLL oscillation mode ---*/
			case CLK_OSCM_PLL:
				kHz = (unsigned short)8192;
				if( sysc == (unsigned char)CLK_SYSC_OSCLK ){
					sysc = (unsigned char)CLK_SYSC_OSCLK_DIV2;
				}
				break;
			/*--- A crystal / ceramic oscillation mode ---*/
			case CLK_OSCM_CRYSTAL:
				kHz = (unsigned short)4096;
				break;
			/*--- Outside clock input mode             ---*/
			case CLK_OSCM_EXTCLK:
				kHz = _gsHsclk;
				break;
			/*--- Others ---*/
			default:
				kHz = (unsigned short)0;
				break;
		}
		kHz >>= sysc;
	}
	else{
		kHz = (unsigned short)0;
	}
	
	return kHz;
}
#endif	/* _ML610Q41X	*/


/*******************************************************************************
	Routine Name:	clk_enaLsclk2
	Form:			void clk_enaLsclk2( void )
	Parameters:		void
	Return value:	void
	Description:	The movement start of the low speed Double edge evaluation clock
******************************************************************************/
/*
void clk_enaLsclk2( void )
{
	ENMLT = 1;
}*/

/*******************************************************************************
	Routine Name:	clk_disLsclk2
	Form:			void clk_disLsclk2( void )
	Parameters:		void
	Return value:	void
	Description:	The movement stop of the low speed Double edge evaluation clock
******************************************************************************/
/*
void clk_disLsclk2( void )
{
	ENMLT = 0;
}*/

