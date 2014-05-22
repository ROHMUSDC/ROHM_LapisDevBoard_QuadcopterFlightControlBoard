/******************************************************************************
	timer.h

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

ML610Q102 Timer Information (C. Schell)

Timers:
	Timer 8 - 8 bit (or 16-bit if grouped with Timer 9)
	Timer 9 - 8 bit
	Timer A - 8 bit (or 16-bit if grouped with Timer B)
	Timer B - 8 bit
	Timer E - 8 bit (or 16-bit if grouped with Timer F)
	Timer F - 8 bit

******************************************************************************/
#ifndef _TIMER_H_
#define _TIMER_H_

#include "mcu.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*=== Return value. ===*/
/*--- tm_checkOvf() ---*/
#define TM_R_OVF		(  1 )
#define TM_R_NOT_OVF	(  0 )

/*=== Parameter value. ===*/
/*--- tm_init() ---*/
/* ch */
#define TM_CH_NO_89	(0)
#define TM_CH_NO_AB	(1)
#define TM_CH_NO_EF	(2)

/* cs */
#define TM_CS_LSCLK		( 0x00u )
#define TM_CS_HTBCLK		( 0x01u )
#define TM_CS_EXTCLK		( 0x03u )

#define TM_CS_MASK		( 0x03u )

#define TM_16BIT_MAX_DATA	(0xFFFF)

#define TM_STRING(str) #str
#define TM_MAKE_LABEL(name, line) "label_" name "_" TM_STRING(line)

/* ost */
#define TM_OST_DIS		( 0x00u )
#define TM_OST_ENA		( 0x01u )

/*############################################################################*/
/*#                           API (by defined)                               #*/
/*############################################################################*/

/*******************************************************************************
	Routine Name:	tm_get89CounterTwice
	Form:			#define tm_get01CounterTwice(value)
	Parameters:		unsigned shart value
	Return value:	void
	Description:	Get timer89 counter twice
*******************************************************************************/
//Modified to suit Timers 8, 9, A, B, E & F - C. Schell 12-20-2012
#define tm_get89CounterTwice(value)						\
	/* Get Timer8 counter twice */					\
	__asm(TM_MAKE_LABEL("TM8GET", __LINE__) ":");			\
	__asm("	l	r0,	TM8C");					\
	__asm("	l	r1,	TM8C");					\
	__asm("	cmp	r0,	r1");						\
	__asm("	bne	" TM_MAKE_LABEL("TM8GET", __LINE__));	\
	__asm("	st	r0,	NEAR _" #value);				\
	/* Get Timer9 counter twice */					\
	__asm(TM_MAKE_LABEL("TM9GET", __LINE__) ":");			\
	__asm("	l	r0,	TM9C");					\
	__asm("	l	r1,	TM9C");					\
	__asm("	cmp	r0,	r1");						\
	__asm("	bne	" TM_MAKE_LABEL("TM9GET", __LINE__));	\
	__asm("	st	r0,	NEAR _" #value "+01h");

#define tm_getABCounterTwice(value)						\
	/* Get TimerA counter twice */					\
	__asm(TM_MAKE_LABEL("TMAGET", __LINE__) ":");			\
	__asm("	l	r0,	TMAC");					\
	__asm("	l	r1,	TMAC");					\
	__asm("	cmp	r0,	r1");						\
	__asm("	bne	" TM_MAKE_LABEL("TMAGET", __LINE__));	\
	__asm("	st	r0,	NEAR _" #value);				\
	/* Get TimerB counter twice */					\
	__asm(TM_MAKE_LABEL("TMBGET", __LINE__) ":");			\
	__asm("	l	r0,	TMBC");					\
	__asm("	l	r1,	TMBC");					\
	__asm("	cmp	r0,	r1");						\
	__asm("	bne	" TM_MAKE_LABEL("TMBGET", __LINE__));	\
	__asm("	st	r0,	NEAR _" #value "+01h");

#define tm_getEFCounterTwice(value)						\
	/* Get TimerE counter twice */					\
	__asm(TM_MAKE_LABEL("TMEGET", __LINE__) ":");			\
	__asm("	l	r0,	TMEC");					\
	__asm("	l	r1,	TMEC");					\
	__asm("	cmp	r0,	r1");						\
	__asm("	bne	" TM_MAKE_LABEL("TMEGET", __LINE__));	\
	__asm("	st	r0,	NEAR _" #value);				\
	/* Get TimerF counter twice */					\
	__asm(TM_MAKE_LABEL("TMFGET", __LINE__) ":");			\
	__asm("	l	r0,	TMFC");					\
	__asm("	l	r1,	TMFC");					\
	__asm("	cmp	r0,	r1");						\
	__asm("	bne	" TM_MAKE_LABEL("TMFGET", __LINE__));	\
	__asm("	st	r0,	NEAR _" #value "+01h");

/*******************************************************************************
	Routine Name:	tm_waitUntilStop89
	Form:			#define tm_waitUntilStop89()
	Parameters:		void
	Return value:	void
	Description:	Wait until timer89 stop. 
*******************************************************************************/
#define tm_waitUntilStop89()	while(T8STAT == 1);
#define tm_waitUntilStopAB()	while(TASTAT == 1);
#define tm_waitUntilStopEF()	while(TESTAT == 1);

/*******************************************************************************
	Routine Name:	tm_checkOvf89
	Form:			#define tm_checkOvf89()
	Parameters:		void
	Return value:	unsigned short
						QTM9
	Description:	Get interrupt demand flag.
*******************************************************************************/
#define tm_checkOvf89()			(QTM9)
#define tm_checkOvfAB()			(QTMB)
#define tm_checkOvfEF()			(QTMF)

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
void			tm_init( unsigned char chNo );

void			tm_start89( void );
void			tm_startAB( void );
void			tm_startEF( void );

void			tm_restart89( void );
void			tm_restartAB( void );
void			tm_restartEF( void );

void			tm_stop89( void );
void			tm_stopAB( void );
void			tm_stopEF( void );

unsigned short	tm_get89Counter( void );
unsigned short	tm_getABCounter( void );
unsigned short	tm_getEFCounter( void );

void			tm_clr89Counter( void );
void			tm_clrABCounter( void );
void			tm_clrEFCounter( void );

void			tm_set89Data(unsigned short data);
void			tm_setABData(unsigned short data);
void			tm_setEFData(unsigned short data);

void			tm_set89Source(unsigned char cs);
void			tm_setABSource(unsigned char cs);
void			tm_setEFSource(unsigned char cs);

unsigned char	tm_get89Source( void );
unsigned char	tm_getABSource( void );
unsigned char	tm_getEFSource( void );

/*############################################################################*/
/*#                        Implements of inline API                          #*/
/*############################################################################*/

/*******************************************************************************
	Routine Name:	tm_start89
	Form:			void tm_start89( void )
	Parameters:		void
	Return value:	void
	Description:	Start timer 89.
*******************************************************************************/
#pragma inline tm_start89
void tm_start89( void )
{
	TM8C = 0;
	T8RUN = 1;
}

#pragma inline tm_startAB
void tm_startAB( void )
{
	TMAC = 0;
	TARUN = 1;
}

#pragma inline tm_startEF
void tm_startEF( void )
{
	TMEC = 0;
	TERUN = 1;
}

/*******************************************************************************
	Routine Name:	tm_restart89
	Form:			void tm_restart89( void )
	Parameters:		void
	Return value:	void
	Description:	Restart timer89
*******************************************************************************/
#pragma inline tm_restart89
void tm_restart89( void )
{
	T8RUN = 1;
}

#pragma inline tm_restartAB
void tm_restartAB( void )
{
	TARUN = 1;
}

#pragma inline tm_restartEF
void tm_restartEF( void )
{
	TERUN = 1;
}

/*******************************************************************************
	Routine Name:	tm_stop89
	Form:			void tm_stop89( void )
	Parameters:		void
	Return value:	void
	Description:	Stop timer89.
*******************************************************************************/
#pragma inline tm_stop89
void tm_stop89( void )
{
	T8RUN = 0;
}

#pragma inline tm_stopAB
void tm_stopAB( void )
{
	TARUN = 0;
}

#pragma inline tm_stopEF
void tm_stopEF( void )
{
	TERUN = 0;
}

/*******************************************************************************
	Routine Name:	tm_get89Counter
	Form:			unsigned short tm_get89Counter( void )
	Parameters:		void
	Return value:	void
	Description:	Stop timer89.
*******************************************************************************/
#pragma inline tm_get89Counter
unsigned short tm_get89Counter( void )
{
	unsigned short ret = TM8C;
	ret |= (TM9C << 8);
	return ret;
}

#pragma inline tm_getABCounter
unsigned short tm_getABCounter( void )
{
	unsigned short ret = TMAC;
	ret |= (TMBC << 8);
	return ret;
}

#pragma inline tm_getEFCounter
unsigned short tm_getEFCounter( void )
{
	unsigned short ret = TMEC;
	ret |= (TMFC << 8);
	return ret;
}

/*******************************************************************************
	Routine Name:	tm_clr89Counter
	Form:			void tm_clr89Counter( void )
	Parameters:		void
	Return value:	void
	Description:	Claer timer89 counter
*******************************************************************************/
#pragma inline tm_clr89Counter
void tm_clr89Counter( void )
{
	TM8C = 0x00;
}

#pragma inline tm_clrABCounter
void tm_clrABCounter( void )
{
	TMAC = 0x00;
}

#pragma inline tm_clrEFCounter
void tm_clrEFCounter( void )
{
	TMEC = 0x00;
}

/*******************************************************************************
	Routine Name:	tm_set89Data
	Form:			void tm_set89Data(unsigned short data)
	Parameters:		void
	Return value:	void
	Description:	Set timer89 data register
*******************************************************************************/
#pragma inline tm_set89Data
void tm_set89Data(unsigned short data)
{
	TM8D = (unsigned char)(data & 0xFF);
	TM9D = (unsigned char)(data >> 8);
}

#pragma inline tm_setABData
void tm_setABData(unsigned short data)
{
	TMAD = (unsigned char)(data & 0xFF);
	TMBD = (unsigned char)(data >> 8);
}

#pragma inline tm_setEFData
void tm_setEFData(unsigned short data)
{
	TMED = (unsigned char)(data & 0xFF);
	TMFD = (unsigned char)(data >> 8);
}

/*******************************************************************************
	Routine Name:	tm_get89Source
	Form:			unsigned char tm_get89Source( void )
	Parameters:		void
	Return value:	unsigned char
					timer89 clock source 
	Description:	Get timer89 clock source 
*******************************************************************************/
#pragma inline tm_get89Source
unsigned char tm_get89Source( void )
{
	return (unsigned char)(TM8CON0 & TM_CS_MASK);
}

#pragma inline tm_getABSource
unsigned char tm_getABSource( void )
{
	return (unsigned char)(TMACON0 & TM_CS_MASK);
}

#pragma inline tm_getEFSource
unsigned char tm_getEFSource( void )
{
	return (unsigned char)(TMECON0 & TM_CS_MASK);
}

/*******************************************************************************
	Routine Name:	tm_set89Source
	Form:			void tm_set89Source(unsigned char cs)
	Parameters:		unsigned char cs
	Return value:	void
	Description:	Set timer89 clock source 
*******************************************************************************/
#pragma inline tm_set89Source
void tm_set89Source(unsigned char cs)
{
	T8CS0 = (cs & 0x01);
	T8CS1 = (cs & 0x02) >> 1;
}

#pragma inline tm_setABSource
void tm_setABSource(unsigned char cs)
{
	TACS0 = (cs & 0x01);
	TACS1 = (cs & 0x02) >> 1;
}

#pragma inline tm_setEFSource
void tm_setEFSource(unsigned char cs)
{
	TECS0 = (cs & 0x01);
	TECS1 = (cs & 0x02) >> 1;
}

/*******************************************************************************
	Routine Name:	tm_set8Oneshot
	Form:			void tm_set8Oneshot(unsigned char ost)
	Parameters:		unsigned char ost
	Return value:	void
	Description:	Set timer8 oneshot mode
*******************************************************************************/
#pragma inline tm_set8Oneshot
void tm_set8Oneshot(unsigned char ost)
{
	T8OST = ost;
}

#pragma inline tm_set9Oneshot
void tm_set9Oneshot(unsigned char ost)
{
	T9OST = ost;
}

#pragma inline tm_setAOneshot
void tm_setAOneshot(unsigned char ost)
{
	TAOST = ost;
}

#pragma inline tm_setBOneshot
void tm_setBOneshot(unsigned char ost)
{
	TBOST = ost;
}

#endif /*_TIMER_H_*/
