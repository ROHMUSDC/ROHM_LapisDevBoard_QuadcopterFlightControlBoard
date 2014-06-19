/******************************************************************************
	led.h

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
#ifndef _LED_H_
#define _LED_H_

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/

/*--- SINGLE : 昼白色、電球色 ---*/
#define	STEP_SINGLE_NUM		( 20u )
#define	STEP_SINGLE_MIN		( 0u )
#define	STEP_SINGLE_MAX		( STEP_SINGLE_NUM - 1u )
#define	STEP_SINGLE_DEFAULT	( STEP_SINGLE_MAX / 2u )

/*--- MIXED : 混色 ---*/
#define	STEP_MIXED_NUM		( 20u )
#define	STEP_MIXED_MIN		( 0u )
#define	STEP_MIXED_MAX		( STEP_MIXED_NUM - 1u )
#define	STEP_MIXED_DEFAULT	( STEP_MIXED_MAX / 2u )

/*--- NIGHT : 常夜灯 ---*/
#define	STEP_NIGHT_NUM		( 6u )
#define	STEP_NIGHT_MIN		( 0u )
#define	STEP_NIGHT_MAX		( STEP_NIGHT_NUM - 1u )
#define	STEP_NIGHT_DEFAULT	( STEP_NIGHT_MAX / 2u )

/*--- 段階↑↓ ---*/
#define	STEP_UP				( 0u )
#define	STEP_DOWN			( 1u )


/*############################################################################*/
/*#                               Structure                                  #*/
/*############################################################################*/

/*--- MIXED : 段階情報 構造体 ---*/
typedef struct {
	unsigned short adMin;
	unsigned short adMax;
	unsigned short dutyNatural;
	unsigned short dutyBulb;
} STRUCT_STEP_MIXED_DUTY;

/*--- NIGHT : 段階情報 構造体 ---*/
typedef struct {
	unsigned short dutyHigh;
	unsigned short dutyLow;
} STRUCT_STEP_NIGHT_DUTY;


/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/

extern unsigned char stepNatural;
extern unsigned char stepBulb;
extern unsigned char stepMixed;
extern unsigned char stepNight;


/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/

void ledNaturalInit( void );
void ledNaturalOff( void );
void ledNaturalOn( void );
void ledNaturalDutySet( unsigned short duty );
unsigned char ledNaturalStepUpDn( unsigned char updn );

void ledBulbInit( void );
void ledBulbOff( void );
void ledBulbOn( void );
void ledBulbDutySet( unsigned short duty );
unsigned char ledBulbStepUpDn( unsigned char updn );

void ledMixedInit( void );
void ledMixedOff( void );
void ledMixedOn( void );
void ledMixedDutySet( STRUCT_STEP_MIXED_DUTY duty );
void ledMixedStepUpDn( unsigned char newstep );
unsigned char adValueToStep( unsigned short ad );

void ledNightInit( void );
void ledNightOff( void );
void ledNightOn( void );
void ledNightDutySet( STRUCT_STEP_NIGHT_DUTY duty );
unsigned char ledNightStepUpDn( unsigned char updn );
void ledNightToggle( void );

#endif /*_LED_H_*/
