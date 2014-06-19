/******************************************************************************
	led.c

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
#include "common.h"
#include "mcu.h"
#include "led.h"
#include "timer.h"
#include "pwm45.h"


/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/

#ifdef HTBC_HZ
// ��define���g���Čv�Z�i�������_�ȉ� �؂�̂āj

#define	SINGLE_COLOR_HZ			( 120UL )
#define	SINGLE_COLOR_PERIOD		( HTBC_HZ / SINGLE_COLOR_HZ - 1 ) // PWM��-1���K�v
#define	SINGLE_COLOR_DUTY(par)	( (unsigned short)(SINGLE_COLOR_PERIOD * (par) / 100) )

#define	NIGHT_LIGHT_HZ			( 1000UL )
#define	NIGHT_LIGHT_ADJUST		( 75UL ) // ���荞�݂Ńg�O�������镪�A�R���y�A�l�𒲐�����B
#define	NIGHT_LIGHT_PERIOD		( ( HTBC_HZ / NIGHT_LIGHT_HZ ) - ( NIGHT_LIGHT_ADJUST * 2 ) )  // �^�C�}�ݒ�l�Ȃ̂�-1���K�v�����A�����l�Ɋ܂߂���̂Ƃ���B
#define	NIGHT_LIGHT_DUTY(par)	( (unsigned short)( ( (par)==100 )?( NIGHT_LIGHT_PERIOD ):( (HTBC_HZ / NIGHT_LIGHT_HZ * (par) / 100) - NIGHT_LIGHT_ADJUST ) ) )

// �������W�X�^�ɐݒ肷��l
static const unsigned short _valSingleColorPeriod = (unsigned short)(SINGLE_COLOR_PERIOD);
// �f���[�e�B���W�X�^�ɐݒ肷��l
static const unsigned short _tblSingleColorDuty[STEP_SINGLE_NUM] = {
	SINGLE_COLOR_DUTY(  5),
	SINGLE_COLOR_DUTY( 10),
	SINGLE_COLOR_DUTY( 15),
	SINGLE_COLOR_DUTY( 20),
	SINGLE_COLOR_DUTY( 25),
	SINGLE_COLOR_DUTY( 30),
	SINGLE_COLOR_DUTY( 35),
	SINGLE_COLOR_DUTY( 40),
	SINGLE_COLOR_DUTY( 45),
	SINGLE_COLOR_DUTY( 50),
	SINGLE_COLOR_DUTY( 55),
	SINGLE_COLOR_DUTY( 60),
	SINGLE_COLOR_DUTY( 65),
	SINGLE_COLOR_DUTY( 70),
	SINGLE_COLOR_DUTY( 75),
	SINGLE_COLOR_DUTY( 80),
	SINGLE_COLOR_DUTY( 85),
	SINGLE_COLOR_DUTY( 90),
	SINGLE_COLOR_DUTY( 95),
	SINGLE_COLOR_DUTY(100)
};

// AD�l�͈̔͂ƃf�B�[�e�B���W�X�^�ɐݒ肷��l
// note : VDD*90.9%[V]��930[AD�l]�ƂȂ�z��B�A���A�����́u870�`930�v�ł͂Ȃ��u870�`�v�Ƃ���
// note : 0�`100%��20�i�K�i�����j�ŕ�����ƁA�{�����[��50%�i�����l�j�ɑ���������̂�
//        ���܂��m�ۂł��Ȃ��B10�i�K�̕������{�����[��50%�i�����l�j�ɂȂ�悤��������B
static const STRUCT_STEP_MIXED_DUTY _tblMixedColorDuty[STEP_MIXED_NUM] = {
	//ad_min,  ad_max,  led_natural,            led_bulb
	{ 0x0000U, 0x0014U, SINGLE_COLOR_DUTY(100), SINGLE_COLOR_DUTY(  0) },
	{ 0x0015U, 0x003DU, SINGLE_COLOR_DUTY( 90), SINGLE_COLOR_DUTY( 10) },
	{ 0x003EU, 0x0066U, SINGLE_COLOR_DUTY( 85), SINGLE_COLOR_DUTY( 15) },
	{ 0x0067U, 0x0099U, SINGLE_COLOR_DUTY( 80), SINGLE_COLOR_DUTY( 20) },
	{ 0x009AU, 0x00CDU, SINGLE_COLOR_DUTY( 75), SINGLE_COLOR_DUTY( 25) },
	{ 0x00CEU, 0x0100U, SINGLE_COLOR_DUTY( 70), SINGLE_COLOR_DUTY( 30) },
	{ 0x0101U, 0x0133U, SINGLE_COLOR_DUTY( 65), SINGLE_COLOR_DUTY( 35) },
	{ 0x0134U, 0x0170U, SINGLE_COLOR_DUTY( 60), SINGLE_COLOR_DUTY( 40) },
	{ 0x0171U, 0x01AEU, SINGLE_COLOR_DUTY( 55), SINGLE_COLOR_DUTY( 45) },
	{ 0x01AFU, 0x0200U, SINGLE_COLOR_DUTY( 50), SINGLE_COLOR_DUTY( 50) },
	{ 0x0201U, 0x023DU, SINGLE_COLOR_DUTY( 46), SINGLE_COLOR_DUTY( 54) },
	{ 0x023EU, 0x0270U, SINGLE_COLOR_DUTY( 42), SINGLE_COLOR_DUTY( 58) },
	{ 0x0271U, 0x02A3U, SINGLE_COLOR_DUTY( 38), SINGLE_COLOR_DUTY( 62) },
	{ 0x02A4U, 0x02CCU, SINGLE_COLOR_DUTY( 34), SINGLE_COLOR_DUTY( 66) },
	{ 0x02CDU, 0x02F5U, SINGLE_COLOR_DUTY( 30), SINGLE_COLOR_DUTY( 70) },
	{ 0x02F6U, 0x031EU, SINGLE_COLOR_DUTY( 26), SINGLE_COLOR_DUTY( 74) },
	{ 0x031FU, 0x0347U, SINGLE_COLOR_DUTY( 21), SINGLE_COLOR_DUTY( 79) },
	{ 0x0348U, 0x0366U, SINGLE_COLOR_DUTY( 16), SINGLE_COLOR_DUTY( 84) },
	{ 0x0367U, 0x0384U, SINGLE_COLOR_DUTY( 10), SINGLE_COLOR_DUTY( 90) },
	{ 0x0385U, 0x03A3U, SINGLE_COLOR_DUTY(  0), SINGLE_COLOR_DUTY(100) }
};

// �^�C�}�ɐݒ肷��l
// note : 5�`100%���ϓ��ɕ������19���݂����A�f�t�H���g��50%�ƋK�肳��Ă���̂ŁA�ϓ��ɂ͂��Ȃ��B
static const STRUCT_STEP_NIGHT_DUTY _tblNightLightDuty[STEP_NIGHT_NUM] = {
	{ NIGHT_LIGHT_DUTY(  5), (unsigned short)(NIGHT_LIGHT_PERIOD-NIGHT_LIGHT_DUTY(  5)) },
	{ NIGHT_LIGHT_DUTY( 25), (unsigned short)(NIGHT_LIGHT_PERIOD-NIGHT_LIGHT_DUTY( 25)) },
	{ NIGHT_LIGHT_DUTY( 50), (unsigned short)(NIGHT_LIGHT_PERIOD-NIGHT_LIGHT_DUTY( 50)) },
	{ NIGHT_LIGHT_DUTY( 75), (unsigned short)(NIGHT_LIGHT_PERIOD-NIGHT_LIGHT_DUTY( 75)) },
	{ NIGHT_LIGHT_DUTY( 90), (unsigned short)(NIGHT_LIGHT_PERIOD-NIGHT_LIGHT_DUTY( 90)) },
	{ NIGHT_LIGHT_DUTY(100), (unsigned short)(NIGHT_LIGHT_PERIOD-NIGHT_LIGHT_DUTY(100)) }
};

#else // ifndef HTBC_HZ
 #error 'HTBC_HZ' is not defined.
#endif // HTBC_HZ

unsigned char stepNatural = STEP_SINGLE_DEFAULT;
unsigned char stepBulb    = STEP_SINGLE_DEFAULT;
unsigned char stepMixed   = STEP_MIXED_DEFAULT;
unsigned char stepNight   = STEP_NIGHT_DEFAULT;

static unsigned char _portNightNext = PORT_L;

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/

void ledNaturalInit( void )
{
	P34DIR = 0;	// output
	P34C0 = 1;
	P34C1 = 1;	// cmos
	
	pwm4_setPeriod( _valSingleColorPeriod );
	pwm4_selectClock( PWM45_CS_HTBCLK );
	pwm4_selectOutputPolarity( PWM45_NEG_POS );
	pwm4_selectInitializeLevel( PWM45_INI_HIGH );
	pwm4_selectOutputAtStop( PWM45_STPSEL_INIT );
	pwm4_setOneShotMode( PWM45_OS_DIS );
	
	pwm45_setCouplingMode( PWM45_CPL_DIS );
	
	stepNatural = STEP_SINGLE_DEFAULT;
	ledNaturalOn();

	ledNaturalOff();

}

void ledNaturalOff( void )
{
	pwm4_stop();
	
	P34MD0 = 0;
	P34MD1 = 0;	// port
	P34D = PORT_L;
}

void ledNaturalOn( void )
{
	P34MD0 = 0;
	P34MD1 = 1;	// pwm

	ledNaturalDutySet( _tblSingleColorDuty[stepNatural] );
}
void ledNaturalDutySet( unsigned short duty )
{
	P34MD0 = 0;
	P34MD1 = 1;	// pwm

	pwm4_stop();
	pwm4_clearCount();

	// MAX(Duty100%)��pwm��~�Ƃ��邽�߁A�ȍ~�̏����͕s�v
	// note : �{�֐��͒����F�A���F�̂ǂ��炩������p���邽�߁AstepXXX�ł͂Ȃ������Ŕ�r����B
	if( duty < _valSingleColorPeriod )
	{
		pwm4_setDuty( duty );
		pwm4_start();
	}
}

unsigned char ledNaturalStepUpDn( unsigned char updn )
{
	unsigned char ret;
	if( updn == STEP_UP )
	{
		if( stepNatural == STEP_SINGLE_MAX )
		{
			ret = FAIL;
		}
		else
		{
			stepNatural++;
			ledNaturalOn();
			ret = PASS;
		}
	}
	else // STEP_DOWN
	{
		if( stepNatural == STEP_SINGLE_MIN )
		{
			ret = FAIL;
		}
		else
		{
			stepNatural--;
			ledNaturalOn();
			ret = PASS;
		}
	}
	
	return ret;
}



void ledBulbInit( void )
{
	P35DIR = 0;	// output
	P35C0 = 1;
	P35C1 = 1;	// cmos
	
	pwm5_setPeriod( _valSingleColorPeriod );
	pwm5_selectClock( PWM45_CS_HTBCLK );
	pwm5_selectOutputPolarity( PWM45_NEG_POS );
	pwm5_selectInitializeLevel( PWM45_INI_HIGH );
	pwm5_selectOutputAtStop( PWM45_STPSEL_INIT );
	pwm5_setOneShotMode( PWM45_OS_DIS );
	
	pwm45_setCouplingMode( PWM45_CPL_DIS );
	
	stepBulb = STEP_SINGLE_DEFAULT;
	ledBulbOn();
	
	ledBulbOff();
}

void ledBulbOff( void )
{
	pwm5_stop();
	
	P35MD0 = 0;
	P35MD1 = 0;	// port
	P35D = PORT_L;
}

void ledBulbOn( void )
{
	P35MD0 = 0;
	P35MD1 = 1;	// pwm
	
	ledBulbDutySet( _tblSingleColorDuty[stepBulb] );
}

void ledBulbDutySet( unsigned short duty )
{
	P35MD0 = 0;
	P35MD1 = 1;	// pwm

	pwm5_stop();
	pwm5_clearCount();

	// MAX(Duty100%)��pwm��~�Ƃ��邽�߁A�ȍ~�̏����͕s�v
	// note : �{�֐��͓d���F�A���F�̂ǂ��炩������p���邽�߁AstepXXX�ł͂Ȃ������Ŕ�r����B
	if( duty < _valSingleColorPeriod )
	{
		pwm5_setDuty( duty );
		pwm5_start();
	}
}

unsigned char ledBulbStepUpDn( unsigned char updn )
{
	unsigned char ret;
	if( updn == STEP_UP )
	{
		if( stepBulb == STEP_SINGLE_MAX )
		{
			ret = FAIL;
		}
		else
		{
			stepBulb++;
			ledBulbOn();
			ret = PASS;
		}
	}
	else // STEP_DOWN
	{
		if( stepBulb == STEP_SINGLE_MIN )
		{
			ret = FAIL;
		}
		else
		{
			stepBulb--;
			ledBulbOn();
			ret = PASS;
		}
	}
	
	return ret;
}



void ledMixedInit( void )
{
	// ��{�I�Ȑݒ�́A�����FLED�E�d���FLED�̏������Ŏ��{��
	stepMixed = STEP_MIXED_DEFAULT;
}

void ledMixedOff( void )
{
	ledNaturalOff();
	ledBulbOff();
	pwm45_setCouplingMode( PWM45_CPL_DIS );
}

void ledMixedOn( void )
{
	ledMixedDutySet( _tblMixedColorDuty[stepMixed] );
}

void ledMixedDutySet( STRUCT_STEP_MIXED_DUTY duty )
{
	unsigned short duty_n = duty.dutyNatural;
	unsigned short duty_b = duty.dutyBulb;
	
	pwm5_stop();
	pwm4_stop();
	
	pwm45_setCouplingMode( PWM45_CPL_ENA_DT_DIS );

	// �d���FLED����
	if( duty_b == 0 )
	{
		ledBulbOff();
	}
	else
	{
		ledBulbDutySet( duty_b );
	}
	// �����FLED����
	if( duty_n == 0 )
	{
		ledNaturalOff();
	}
	else
	{
		ledNaturalDutySet( duty_n );
	}

}

void ledMixedStepUpDn( unsigned char newstep )
{
	if( stepMixed != newstep )
	{
		stepMixed = newstep;
		ledMixedOn();
	}
}

unsigned char adValueToStep( unsigned short ad )
{
	unsigned char step;
	unsigned char i;
	for( i=STEP_MIXED_MIN; i<STEP_MIXED_NUM; i++ )
	{
		if( ( _tblMixedColorDuty[i].adMin <= ad ) &&
		    ( ad <= _tblMixedColorDuty[i].adMax ) )
		{
			break;
		}
	}
	step = ( i<STEP_MIXED_MAX )? i : STEP_MIXED_MAX;
	return step;
}

void ledNightInit( void )
{
	P22C0 = 1;
	P22C1 = 1;	// cmos
	P22MD  = 0;
	P22MD1 = 0;	// port
	
	tm_init( TM_CH_NO_89 ); // count stop, 16bit mode
	tm_set89Source( TM_CS_HTBCLK );
	tm_set8Oneshot( TM_OST_ENA );
	
	stepNight = STEP_NIGHT_DEFAULT;
	ledNightOff();
}

void ledNightOff( void )
{
	tm_stop89();
	P22D = PORT_L;
}

void ledNightOn( void )
{
	_portNightNext = PORT_H;

	ledNightDutySet( _tblNightLightDuty[stepNight] );
}

void ledNightDutySet( STRUCT_STEP_NIGHT_DUTY duty )
{
	unsigned char  port;
	unsigned short val;

	tm_stop89();
	if( duty.dutyLow == 0 ) // MAX(Duty100%)�̓^�C�}��~����H�o��
	{
		P22D = PORT_H;
	}
	else // MAX(Duty100%)�ȊO�̓^�C�}���삵��H/L�g�O��
	{
		if( _portNightNext == PORT_H )
		{
			port = PORT_H;
			val = duty.dutyHigh;
			_portNightNext = PORT_L;
		}
		else
		{
			port = PORT_L;
			val = duty.dutyLow;
			_portNightNext = PORT_H;
		}
		
		P22D = port;
		tm_set89Data( val );
		tm_start89();
	}
}

unsigned char ledNightStepUpDn( unsigned char updn )
{
	unsigned char ret;
	if( updn == STEP_UP )
	{
		if( stepNight == STEP_NIGHT_MAX )
		{
			ret = FAIL;
		}
		else
		{
			stepNight++;
			ledNightOn();
			ret = PASS;
		}
	}
	else // STEP_DOWN
	{
		if( stepNight == STEP_SINGLE_MIN )
		{
			ret = FAIL;
		}
		else
		{
			stepNight--;
			ledNightOn();
			ret = PASS;
		}
	}
	
	return ret;
}

void ledNightToggle( void )
{
	ledNightDutySet( _tblNightLightDuty[stepNight] );
}

