/*****************************************************************************
	main.c(For application of SA-ADC with amplifier)

	Copyright (C) 2009 OKI SEMICONDUCTOR CO., LTD.
	All rights reserved.

	OKI SEMICONDUCTOR shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2009.12.25  ver.1.00
    2010.03.25  ver.1.10
******************************************************************************/
#include "mcu.h"
#include "irq.h"
#include "clock.h"
#include "tbc.h"
#include "timer.h"
#include "rtc.h"
#ifndef _ML610Q48X
#include "lcd.h"
#endif /* _ML610Q48X */
#include "key.h"
#include "uart.h"
#include "rcAdc.h"
#include "temp.h"
#include "adjustBaudrate.h"
#include "i2c.h"
#include "eeprom.h"
#include "main.h"
#include "eepromMap.h"
#include "saAdc.h"
#include "bld.h"
#include "baro.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*--- Peripheral setting. ---*/
#define HSCLK_KHZ			( 500u )
#define LSCLK_HZ			( 32768UL )
/*--- Flag. ---*/
#define FLG_SET				( 0x01u )
#define FLG_CLR				( 0x00u )
#define PROC_FIN			( 1 )
#define PROC_NOT_FIN		( 0 )
/*--- Timer setting. ---*/
#define TM_CHNO				( 0 )
#define TIMER_INTERVAL		( 10UL )		// [ms]
#define TIMER_CNT			( ( TIMER_INTERVAL * LSCLK_HZ ) / 1000UL ) -1	// Timer cnt setting value.
/*--- Counter. ---*/
#define MAX_CNT_TIMER			( 100u )
#define WAIT_CNT_TIMER		( 1u )
#define MAX_CNT_EEPROM_STORE	( EEPROM_SAADC_DATA_NUM )
/*--- Buffer. ---*/
#define EEPROM_BUF_SIZE		( EEPROM_SAADC_DATA_SIZE )
#define UART_BUF_SIZE		( 81 )

/*--- Num of key. ---*/
#define KEY_KIND_NUM		( 4 )
/*--- Version. ---*/
#define VER_MAJOR			( 1 )
#define VER_MINOR			( 0x10 )
/*--- UART Setting ---*/
#define UART_BAUDRATE		( UART_BR_9600BPS )
#define UART_DATA_LENGTH	( UART_LG_8BIT )
#define UART_PARITY_BIT		( UART_PT_NON )
#define UART_STOP_BIT		( UART_STP_1BIT )
#define UART_LOGIC			( UART_NEG_POS )
#define UART_DIRECTION		( UART_DIR_LSB )

/*--- RC-ADC Counter setting value. ---*/
#define RCADC_NA0			( 0x002EE0UL ) 				/* 360ms */
#define BaseCnt_Offset		(600000) 					/* To use with temp_calc Table */

/*--- SA-ADC Setting ---*/
#define SAADC_EXEC_CH		( SAADC_CHBIT_CH0_CH1 )
#define SAADC_RESULT_CH		( 0x00 )
#define SAADC_PARAM_LP		( SAADC_LP_ONESHOT )		/* oneshot */
#define SAADC_PARAM_CK		( SAADC_CK_LOW )			/* low */
#define SAADC_PARAM_EN		( SAADC_EN_DIFF )			/* differential amplification */
#define SAADC_PARAM_OFFSET	( SAADC_OFFSET__0_0 )		/* offset 0.0 */
//#define SAADC_PARAM_OFFSET	( SAADC_OFFSET_M0_5 )		/* offset -0.50 */

#define SAADC_PARAM_GAIN	( SAADC_GAIN_8_5 )			/* gain 8.5 */

/*--- Table size. ---*/
#define TEMP_MAX_TBL_NUM	( TEMP_MAX_TBL_NO + 1 )
/* [Note]Barometer-table size(=BARO_MAX_TBL_NUM) equals BARO_MAX_TBL_NO. */
#define BARO_MAX_TBL_NUM	( BARO_MAX_TBL_NO )
#define BARO_TEMP_CORRECTION_TBL_NUM	( 51 )

/*---	Barometer setting 	---*/
/* The range of temperature value (unit:0.1C) */
#define BARO_TEMP_MAX		( 400 )
#define BARO_TEMP_MIN		( -100 )
/* The range of temperature value (unit:C) */
#define BARO_TEMP_MAX_DIV10	( 40 )				/* =BARO_TEMP_MAX/10 */
#define BARO_TEMP_MIN_DIV10	( -10 )				/* =BARO_TEMP_MIN/10 */
/* The range of barometer value (unit:0.1hPa) */
#define BARO_PRESS_MAX		( 11000 )
#define BARO_PRESS_MIN		( 5000 )

/* A value of offset A/D value. */ 
/*   VADIN=1.5V and Vdiff=0 : A/D value =2671 */
/*   BARO_TABLE_AD_OFFSET = 2671 - 4095       */
#define BARO_TABLE_AD_OFFSET ( -1424 )
/* status */
#define MEASURE_ENABLE		( 0 )
#define MEASURE_DISABLE		( -1 )
/* EEPROM data */
#define BARO_ERR_CODE		( 0xFFFF )

/*--- Module state. ---*/
/*--------------------------------------------------------------------------------------*/
/*	[Notice]																			*/
/*	Module states 's left-4bit means state category. 									*/
/*		(for exsample UART trans, SA-ADC exec, ...)										*/
/*	And right-4bit means sub-state number.												*/
/*--------------------------------------------------------------------------------------*/
#define STATE_INIT					( 0x00u )
#define STATE_INIT_READ_SIGNATURE	( STATE_INIT | 0x00u )
#define STATE_INIT_WRITE_SIGNATURE	( STATE_INIT | 0x01u )
#define STATE_INIT_BARO_MODE		( 0x10u )
#define STATE_STOP_SAADC			( 0x20u )
#define STATE_EXEC_SAADC			( 0x30u )
#define STATE_WAIT_TIME_PASS		( STATE_EXEC_SAADC | 0x00u )
#define STATE_WAIT_BLD_FIN			( STATE_EXEC_SAADC | 0x01u )
#define STATE_WAIT_GET_NB0_FIN		( STATE_EXEC_SAADC | 0x02u )
#define STATE_WAIT_GET_NA1_FIN		( STATE_EXEC_SAADC | 0x03u )
#define STATE_WAIT_SAADC_FIN		( STATE_EXEC_SAADC | 0x04u )
#define STATE_WAIT_STORE_RESULT_FIN	( STATE_EXEC_SAADC | 0x05u )
#define STATE_WAIT_STORE_INFO_FIN	( STATE_EXEC_SAADC | 0x06u )
#define STATE_WAIT_SETTLE			( STATE_EXEC_SAADC | 0x07u )
#define STATE_TRANS_UART			( 0x40u )
#define STATE_TRANS_JUDGE			( STATE_TRANS_UART | 0x00u )
#define STATE_WAIT_READ_RESULT_FIN	( STATE_TRANS_UART | 0x01u )
#define STATE_WAIT_UART_FIN			( STATE_TRANS_UART | 0x02u )
#define STATE_WAIT_ADJUST_BRT_FIN	( STATE_TRANS_UART | 0x03u )
#define STATE_CLR_EEPROM			( 0x50u )
#define	STATE_CALIBRATE_SAADC		( 0x60u )


/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/
/*--- Timer counter. ---*/
int						gCntTimer;
/*--- Mode. ---*/
static unsigned char	_state;
/*--- Flag. ---*/
static unsigned char	_reqNotHalt;
/*--- buffer. ---*/
static unsigned char	_eepromBuf[EEPROM_BUF_SIZE];
static unsigned char	_uartBuf[UART_BUF_SIZE];
/*--- Counter. ---*/
static unsigned short	_cntEepromStore=0;
static unsigned short	_cntEepromRead;
/*--- RC-ADC counter. ---*/
static unsigned long	_tempRcAdcCnt;
/*--- Calclation value. ---*/
static signed short		_tempResult;

/*--- Flag. ---*/
static unsigned char	_flgSaAdcFin;
static unsigned char	_flgRcAdcFin;
static unsigned char	_flgEepromFin;
static unsigned char	_flgUartFin;
static unsigned char	_flgRtcRegular;
static unsigned char	_flgMemFull;
/*--- SA-ADC. ---*/
/* This sample program doesn't measure Voffset and SA-ADC offset. */
/* If you want to calc barometer value with Voffset and SA-ADC offset,*/
/* measure Voffset and SA-ADC offset at initializing and set A/D value _adcOffset.*/
static short			_adcOffset=0;
/*--- UART Setting. ---*/
static const tUartSetParam	_uartSetParam = { 
	UART_BAUDRATE,
	UART_DATA_LENGTH,
	UART_PARITY_BIT,
	UART_STOP_BIT,
	UART_LOGIC,
	UART_DIRECTION
};
/*--- EEPROM Signature. ---*/
static const unsigned char	_eepromInfo[EEPROM_INFO_SIZE] = {
	'U', '8', 'A', 'm', 'p', 'S', 'a', 'm', 'p', 'l', 'e',		/* Signature.("U8AmpSample") */
	0x00, 0x00,									/* Number of SA-ADC measurement results.  */
	0x00, 0x00									/* [Reserved]  */
};
/*--- Initial time. ---*/
static const tRtcTime		_initTimePrm = { 0x57, 0x59, 0x23, 0x1, 0x1, 0x1, 0x0 };
/*--- Time error. ---*/
static const tRtcTime		_errTimePrm = { 0x99, 0x99, 0x99, 0x1, 0x1, 0x1, 0x0 };

/*--- Temp Table List. ---*/
#ifndef _ML610Q41X
/* 2.0V<=Vdd<2.4V */
/* This table is as same as _sTempTableList3. Behavior under 2.9V isn't supported.*/
static const tTempTableList	_sTempTableList1[TEMP_MAX_TBL_NUM] = {
	{	222857	,	163	,	-504	},     /* 	-50.0C<=x<-40.0C */
	{	384000	,	297	,	-404	},     /*	-40.0C<=x<-30.0C */
	{	472228	,	527	,	-304	},     /*	-30.0C<=x<-20.0C */
	{	521977	,	907	,	-203	},     /*	-20.0C<=x<-10.0C */
	{	550891	,	1510	,	-103},     /*	-10.0C<=x<.0C  	*/
	{	568251	,	2461	,	-3	},     /*	    0C<=x<10.0C  */
	{	578902	,	3908	,	97	},     /*	10.0C<= x<20.0C  */
	{	585611	,	6073	,	197	},     /*	20.0C<= x<30.0C  */
	{	589928	,	9227	,	297	},     /*	30.0C<= x<40.0C  */
	{	592769	,	13760	,	398	},     /*	40.0C<= x<50.0C  */
	{	594674	,	20121	,	498	},     /*	50.0C<= x<60.0C  */
	{	595977	,	28962	,	598	},     /*	60.0C<= x<70.0C  */
	{	596882	,	40960	,	698	},     /*	70.0C<= x<80.0C  */
	{	597522	,	57059	,	798	},     /*	80.0C<= x<90.0C  */
	{	597981	,	78312	,	898	},     /*	90.0C<= x<100.0C */
	{	598316	,	106439	,	998	},     /*	100.0C<=x<105.0C */
	{	598562	,	0	,	0		}      /*			x<105.0C */
};

/* 2.4V<=Vdd<2.9V */
/* This table is as same as _sTempTableList3. Behavior under 2.9V isn't supported.*/
static const tTempTableList	_sTempTableList2[TEMP_MAX_TBL_NUM] = {
	{	222857	,	163	,	-504	},     /* 	-50.0C<=x<-40.0C */
	{	384000	,	297	,	-404	},     /*	-40.0C<=x<-30.0C */
	{	472228	,	527	,	-304	},     /*	-30.0C<=x<-20.0C */
	{	521977	,	907	,	-203	},     /*	-20.0C<=x<-10.0C */
	{	550891	,	1510	,	-103},     /*	-10.0C<=x<.0C  	*/
	{	568251	,	2461	,	-3	},     /*	    0C<=x<10.0C  */
	{	578902	,	3908	,	97	},     /*	10.0C<= x<20.0C  */
	{	585611	,	6073	,	197	},     /*	20.0C<= x<30.0C  */
	{	589928	,	9227	,	297	},     /*	30.0C<= x<40.0C  */
	{	592769	,	13760	,	398	},     /*	40.0C<= x<50.0C  */
	{	594674	,	20121	,	498	},     /*	50.0C<= x<60.0C  */
	{	595977	,	28962	,	598	},     /*	60.0C<= x<70.0C  */
	{	596882	,	40960	,	698	},     /*	70.0C<= x<80.0C  */
	{	597522	,	57059	,	798	},     /*	80.0C<= x<90.0C  */
	{	597981	,	78312	,	898	},     /*	90.0C<= x<100.0C */
	{	598316	,	106439	,	998	},     /*	100.0C<=x<105.0C */
	{	598562	,	0	,	0		}      /*			x<105.0C */
};
#endif /* _ML610Q41X */

/* 2.9V<=Vdd */
static const tTempTableList	_sTempTableList3[TEMP_MAX_TBL_NUM] = {
	{	222857	,	163	,	-504	},     /* 	-50.0C<=x<-40.0C */
	{	384000	,	297	,	-404	},     /*	-40.0C<=x<-30.0C */
	{	472228	,	527	,	-304	},     /*	-30.0C<=x<-20.0C */
	{	521977	,	907	,	-203	},     /*	-20.0C<=x<-10.0C */
	{	550891	,	1510	,	-103},     /*	-10.0C<=x<.0C  	*/
	{	568251	,	2461	,	-3	},     /*	    0C<=x<10.0C  */
	{	578902	,	3908	,	97	},     /*	10.0C<= x<20.0C  */
	{	585611	,	6073	,	197	},     /*	20.0C<= x<30.0C  */
	{	589928	,	9227	,	297	},     /*	30.0C<= x<40.0C  */
	{	592769	,	13760	,	398	},     /*	40.0C<= x<50.0C  */
	{	594674	,	20121	,	498	},     /*	50.0C<= x<60.0C  */
	{	595977	,	28962	,	598	},     /*	60.0C<= x<70.0C  */
	{	596882	,	40960	,	698	},     /*	70.0C<= x<80.0C  */
	{	597522	,	57059	,	798	},     /*	80.0C<= x<90.0C  */
	{	597981	,	78312	,	898	},     /*	90.0C<= x<100.0C */
	{	598316	,	106439	,	998	},     /*	100.0C<=x<105.0C */
	{	598562	,	0	,	0		}      /*			x<105.0C */
};

/*--- Barometer Table List. ---*/
static const tBarometerTableList	_sBaroTableList[BARO_MAX_TBL_NUM] = {
	{	2478326	,	1806	},		/*			x>= 968		*/
	{	2063868	,	2198	},		/*	968	   >x>= 806.1	*/
	{	1673727	,	2567	},		/*	806.1  >x>= 653.7	*/
	{	1279357	,	2940	} 		/*	653.7  >x>= 499.7	*/
};

/*--- Temperature Correcttion. ---*/
static const char	_sBaroTempCorrecttion[BARO_TEMP_CORRECTION_TBL_NUM] = {
	/* _sBaroTempCorrecttion's elements is descending order  by temperature value.  */
	/* pressure value */		/* temperature(C) */
		-4,							/*	40	*/
		-3,							/*	39	*/
		-2,							/*	38	*/
		-1,							/*	37	*/
		0,							/*	36	*/
		1,							/*	35	*/
		1,							/*	34	*/
		2,							/*	33	*/
		2,							/*	32	*/
		2,							/*	31	*/
		2,							/*	30	*/
		2,							/*	29	*/
		2,							/*	28	*/
		1,							/*	27	*/
		1,							/*	26	*/
		0,							/*	25	*/
		-1,							/*	24	*/
		-2,							/*	23	*/
		-3,							/*	22	*/
		-4,							/*	21	*/
		-5,							/*	20	*/
		-7,							/*	19	*/
		-8,							/*	18	*/
		-10,						/*	17	*/
		-12,						/*	16	*/
		-14,						/*	15	*/
		-16,						/*	14	*/
		-19,						/*	13	*/
		-21,						/*	12	*/
		-24,						/*	11	*/
		-26,						/*	10	*/
		-29,						/*	9	*/
		-32,						/*	8	*/
		-35,						/*	7	*/
		-39,						/*	6	*/
		-42,						/*	5	*/
		-45,						/*	4	*/
		-49,						/*	3	*/
		-53,						/*	2	*/
		-57,						/*	1	*/
		-61,						/*	0	*/
		-65,						/*	-1	*/
		-69,						/*	-2	*/
		-74,						/*	-3	*/
		-79,						/*	-4	*/
		-83,						/*	-5	*/
		-88,						/*	-6	*/
		-93,						/*	-7	*/
		-98,						/*	-8	*/
		-104,						/*	-9	*/
		-109						/*	-10	*/
};

unsigned short _baro;
unsigned short _baro_lcd;
signed short _baro_calb_offset;

/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/
static void _initPeri( void );

static void _initState( void );
static void _initMode_proc( unsigned char event );
static void _barometerMode_init( void );
static void _procInitBarometerModeState( unsigned char event );
static void _procStopSaAdcState( unsigned char event );
static void _procExecSaAdcState( unsigned char event );
static void _procTransUartState( unsigned char event );
static void _procClrEepromState( unsigned char event );
static void _procCalibrateSaAdcState( unsigned char event );
static void _startBarometerInitialization( void );
static void _startBarometerStopping( void );
static void _startSaAdc( void );
static void _startTransUart( void );
static void _startClearEeprom( void );
static void _startCalibrateSaAdc( void );
static int _procCheckEEP_Fin( void );
static void _procSaAdc( void );
static int _procTransUart( void );
static int _procClearEeprom( void );
static void _stopSaAdc( void );
static void _stopTransUart( void );
static void _makeUartFormat( unsigned char *uartBuf, unsigned char *eepromBuf );
static void _makeEepromFormat( unsigned char *eepromBuf, unsigned char chNo, unsigned long adcVal_temp, signed short temp, unsigned short adcVal, unsigned short baroVal,unsigned short brtVal, tRtcTime *timePrm, signed short clbVal );
static void _funcUartFin( unsigned int size, unsigned char errStat );

static void _startReadSignature( void );
static void _startWriteSignature( void );
static int _procReadSignature( void );
static int _procWriteSignature( void );

static void _powerOnMode_init( void );
static void _powerOnMode_proc( unsigned char event );

static void _funcEepromFin( unsigned int size, unsigned char errStat );

static void _intWdt( void );
static void _intTimer( void );
static void _intUart( void );
static void _intI2c( void );
static void _intSaAdc( void );
static void _intRcAdc( void );
static void _intRtcRegular( void );

extern int	_div10_and_mod( int *divvisor );

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
/*******************************************************************************
	Routine Name:	main
	Form:			int main( void )
	Parameters:		void
	Return value:	int
						but not return...
	Description:	main
******************************************************************************/
int main( void )
{
	int				ret;
	unsigned char	event;
	tRtcTime		timePrm;

	/*=== Main initialize. ===*/
	/*--- Variable. ---*/
	gCntTimer = 0;
	_state = (unsigned char)STATE_INIT;
	_reqNotHalt = (unsigned char)FLG_SET;
	/*--- Peripheral. ---*/
	_initPeri();
	/*--- Start. ---*/
	_initState();
	/*=== Main loop. ===*/
	for(;;) {
		/*=== HALT ===*/
		if( _reqNotHalt != (unsigned char)FLG_SET ){
			HLT = 1;
			__asm("nop\n");
			__asm("nop\n");
		}
		else {
			_reqNotHalt = (unsigned char)FLG_CLR;
		}
		/*=== Peripheral setting. ===*/
		main_clrWDT();
		/*=== Get event  ===*/
		event = key_getEvent();
		/*=== Module State. ===*/
		switch( (int)( _state & (unsigned char)0xF0u ) ) {
		/*=== [Barometer initializing state] ===*/
			case ( (int)STATE_INIT_BARO_MODE ):
				_procInitBarometerModeState( event );
				break;
		/*=== [SA-ADC stop state] ===*/
			case ( (int)STATE_STOP_SAADC ):
				_procStopSaAdcState( event );
				break;
		/*=== [SA-ADC exec state] ===*/
			case ( (int)STATE_EXEC_SAADC ):
				_procExecSaAdcState( event );
				break;
		/*=== [UART trans state] ===*/
			case ( (int)STATE_TRANS_UART ):
				_procTransUartState( event );
				break;
		/*=== [EEPROM clear state] ===*/
			case ( (int)STATE_CLR_EEPROM ):
				_procClrEepromState( event );
				break;
		/*=== [SAADC calibrate state] ===*/
			case ( (int)STATE_CALIBRATE_SAADC ):
				_procCalibrateSaAdcState( event );
				break;
		/*=== [Init state] ===*/
//>			case ( (int)STATE_MODE_INIT ):
			default:
				_initMode_proc( event );
				break;
		}
		/*=== Time updating. ===*/
		if( _flgRtcRegular == (unsigned char)FLG_SET ) {
			_flgRtcRegular = (unsigned char)FLG_CLR;
	#ifdef _RTC_TYPE
			ret = rtc_getTime( &timePrm );
	#else
			ret = RTC_R_ERR_GETTIME;
	#endif	/* _RTC_TYPE	*/

			if( ret != RTC_R_OK ) {
				timePrm = _errTimePrm;
			}
	#ifndef _ML610Q48X
			lcd_dispSec( timePrm.sec );
			lcd_dispMin( timePrm.min );
			lcd_dispHour( timePrm.hour );
	#endif /*  _ML610Q48X */
		}
	}
}

/*******************************************************************************
	Routine Name:	main_reqNotHalt
	Form:			void reqNotHalt( void )
	Parameters:		void
	Return value:	void
	Description:	request not halt.
******************************************************************************/
void main_reqNotHalt( void )
{
	_reqNotHalt = (unsigned char)FLG_SET;
}

/*******************************************************************************
	Routine Name:	main_clrWDT
	Form:			void main_clrWDT( void )
	Parameters:		void
	Return value:	void
	Description:	clear WDT.
******************************************************************************/
void main_clrWDT( void )
{
	do {
		WDTCON = 0x5Au;
	} while (WDP != 1);
	WDTCON = 0xA5u;
}


/*############################################################################*/
/*#                              Subroutine                                  #*/
/*############################################################################*/
/*******************************************************************************
	Routine Name:	_initPeri
	Form:			static void _initPeri( void )
	Parameters:		void
	Return value:	void
	Description:	initialize peripheral.
******************************************************************************/
static void _initPeri( void )
{
	/*--- BLKCON ---*/
	BLKCON0 = 0x00;
	BLKCON1 = 0x51;
	BLKCON2 = 0x01;
	BLKCON3 = 0x01;
	BLKCON4 = 0x10;

	/*--- Interrupt ---*/
	irq_di();
	irq_init();
	(void)irq_setHdr( (unsigned char)IRQ_NO_WDTINT, _intWdt );
	(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
	(void)irq_setHdr( (unsigned char)IRQ_NO_I2C0INT, _intI2c );
	(void)irq_setHdr( (unsigned char)IRQ_NO_TM1INT, _intTimer );
	(void)irq_setHdr( (unsigned char)IRQ_NO_SADINT, _intSaAdc );
	(void)irq_setHdr( (unsigned char)IRQ_NO_RADINT, _intRcAdc );
	QUA0 = 0;
	QI2C0 = 0;
	QTM0 = 0; 
	QTM1 = 0;
#ifndef _ML610Q48X
	QSAD = 0;
#endif /*  _ML610Q48X */
	QRAD = 0;
	EUA0 = 1;
	EI2C0 = 1;
	ETM1 = 1;
	ESAD = 1;
	ERAD = 1;
#ifdef _RTC_TYPE
	(void)irq_setHdr( (unsigned char)IRQ_NO_RTCINT, _intRtcRegular );
	QRTC = 0;
	ERTC = 1;
#endif	/* _RTC_TYPE	*/
	irq_ei();
	/*---- WDT ---*/
	main_clrWDT();
	/*--- Clock ---*/
	(void)clk_setSysclk( (unsigned char)CLK_SYSCLK_HSCLK,	/* SYSCLK select. */
	                     (unsigned char)CLK_SYSC_OSCLK,		/* Dividing frequency select. */
	                     (unsigned char)CLK_OSCM_RC,		/* HSCLK mode select. */
	                     (unsigned short)HSCLK_KHZ );		/* Input frequency[kHz]...(Only when you select EXCLK) */
	clk_enaLsclk2();
	/*--- TBC ---*/
	(void)tb_setHtbdiv( (unsigned char)TB_HTD_1_1 );
	/*--- LCD ---*/
#ifndef _ML610Q48X
	(void)lcd_init( (unsigned char)LCD_BSN_2KHZ,	/* bias clock */
	                (unsigned char)LCD_BSEL_DIV4,	/* bias select */
	                (unsigned char)LCD_DUTY_DIV4,	/* duty */
	                (unsigned char)LCD_FRM_73HZ );	/* frame frequency */
#ifndef _ML610Q41X
	(void)lcd_setContrast( (unsigned char)0x08u );
#else
	(void)lcd_setContrast( (unsigned char)0x14u );
#endif /* _ML610Q41X */
#endif /* _ML610Q48X */
	/*--- UART ---*/
	(void)uart_init( (unsigned char)UART_CS_HSCLK,		/* Generator */
	                 (unsigned short)HSCLK_KHZ,	/* HSCLK frequency */
	                 &_uartSetParam );					/* Param... */
	/*--- EEPROM(include I2C) ---*/
	eeprom_init();
	eeprom_writeProtect(0);

#ifdef _RTC_TYPE
	/*--- RTC ---*/
	rtc_stop();
	(void)rtc_setTime( &_initTimePrm );
	(void)rtc_setRegularInt( (unsigned char)RTC_RIN_1_0_SEC );
	rtc_start();
#endif	/* _RTC_TYPE	*/

	/*--- Timer ---*/
	(void)tm_init( (unsigned char)TM_CHNO,			/* Timer channel */
	               (unsigned char)TM_M16_16BIT,		/* 8bit or 16bit mode */
	               (unsigned char)TM_CS_LSCLK,		/* Operation clock */
	               (unsigned short)TIMER_CNT );		/* Timer count value */
	(void)tm_start( (unsigned char)TM_CHNO );

	/*--- SA-ADC ---*/
	(void)saAdc_init( (unsigned char)SAADC_PARAM_LP,			/* lp(=oneshot) */
	                  (unsigned char)SAADC_CK_HIGH,		    	/* ck(=low) */
	                  (unsigned char)SAADC_EN_CH0NML_CH1NML,	/* en(=direct input) */
	                  (unsigned char)SAADC_PARAM_OFFSET,		/* offset */
	                  (unsigned char)SAADC_GAIN_1_0  );			/* gain */

	/*--- Key ---*/
	key_init();
	key_start();
}

/*******************************************************************************
	Routine Name:	_initState
	Form:			static void _initState( void )
	Parameters:		void
	Return value:	void
	Description:	Initialization.
******************************************************************************/
static void _initState( void )
{
	_state = (unsigned char)STATE_INIT;
	_startReadSignature();
}

/*******************************************************************************
	Routine Name:	_initMode_proc
	Form:			static void _initMode_proc( void )
	Parameters:		unsigned char event : Event status
	Return value:	void
	Description:	Processing when initializing it.
******************************************************************************/
static void _initMode_proc( unsigned char event )
{
	int			ret;
	
	switch( (int)_state ) {
	/*=== [Write signature state] ===*/
		case ( (int)STATE_INIT_WRITE_SIGNATURE ):
			ret = _procWriteSignature();
			if( ret == PROC_FIN ) {
				_startBarometerInitialization();
			}
			break;
	/*=== [Read signature state] ===*/
//>		case ( (int)STATE_INIT_READ_SIGNATURE ):
		default:
			ret = _procReadSignature();
			if( ret == PROC_FIN ) {
				if( ( _eepromBuf[0] != (unsigned char)'U' ) ||
				    ( _eepromBuf[1] != (unsigned char)'8' ) ||
				    ( _eepromBuf[2] != (unsigned char)'A' ) ||
				    ( _eepromBuf[3] != (unsigned char)'m' ) ||
				    ( _eepromBuf[4] != (unsigned char)'p' ) ||
				    ( _eepromBuf[5] != (unsigned char)'S' ) ||
				    ( _eepromBuf[6] != (unsigned char)'a' ) ||
				    ( _eepromBuf[7] != (unsigned char)'m' ) ||
				    ( _eepromBuf[8] != (unsigned char)'p' ) ||
				    ( _eepromBuf[9] != (unsigned char)'l' ) ||
				    ( _eepromBuf[10] != (unsigned char)'e' ) ) {
					_startWriteSignature();
					_state = (unsigned char)STATE_INIT_WRITE_SIGNATURE;
				}
				else {
					_startBarometerInitialization();
				}
			}
			break;
	}
}

/*******************************************************************************
	Routine Name:	_barometerMode_init
	Form:			void _barometerMode_init( void )
	Parameters:		void
	Return value:	void
	Description:	barometer aplication initialization.
******************************************************************************/
static void _barometerMode_init( void )
{
	int			ret;
	tRtcTime	timePrm;

	/*=== Variable. ===*/
	gCntTimer = (unsigned int)0u;
	vol_level = 0x10;
	_cntEepromRead = (unsigned short)0u;
	_tempResult = (signed short)0u;
	_tempRcAdcCnt = (unsigned long)0u;
	_flgSaAdcFin = (unsigned char)FLG_CLR;
	_flgUartFin = (unsigned char)FLG_CLR;
	_flgRtcRegular = (unsigned char)FLG_CLR;
	_flgMemFull = (unsigned char)FLG_CLR;
	/*=== Display. ===*/
#ifndef _ML610Q48X
	(void)lcd_setLCDMode( (unsigned char)LCD_LMD_ALLOFF );
	lcd_clear();
	lcd_dispMode( "BARO", 4 );
#endif /*  _ML610Q48X */
#ifdef _RTC_TYPE
	ret = rtc_getTime( &timePrm );
#else
	ret = RTC_R_ERR_GETTIME;
#endif	/* _RTC_TYPE	*/

	if( ret != RTC_R_OK ) {
		timePrm = _errTimePrm;
	}
#ifndef _ML610Q48X
	lcd_dispHour( timePrm.hour );
	(void)lcd_dispMark( (unsigned char)LCD_MARK_COL1, (unsigned char)LCD_TURNON );
	lcd_dispMin( timePrm.min );
	(void)lcd_dispMark( (unsigned char)LCD_MARK_COL2, (unsigned char)LCD_TURNON );
	lcd_dispSec( timePrm.sec );
	(void)lcd_setLCDMode( (unsigned char)LCD_LMD_NORMAL );
#endif /*  _ML610Q48X */
}


/*******************************************************************************
	Routine Name:	_procInitBarometerModeState
	Form:			static void _procInitBarometerModeState( unsigned char event )
	Parameters:		unsigned char event : Event status
	Return value:	void
	Description:	Processing according to state.
******************************************************************************/
static void _procInitBarometerModeState( unsigned char event )
{
	int			ret;

	switch( (int)event ) {
//>		case ( (int)KEY1_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY1_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY1_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY2_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY2_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY2_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY3_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY3_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY3_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY4_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY4_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY4_LONG_EVENT ):
//>			break;
		default:
			/*--- Initialization processing. ---*/
			ret = _procCheckEEP_Fin();
			if( ret != PROC_NOT_FIN ) {
				_barometerMode_init();
				_startBarometerStopping();
			}
			break;
	}
}

/*******************************************************************************
	Routine Name:	_procStopSaAdcState
	Form:			static void _procStopSaAdcState( unsigned char event )
	Parameters:		unsigned char event : Event status
	Return value:	void
	Description:	Processing according to state.
******************************************************************************/
static void _procStopSaAdcState( unsigned char event )
{
	switch( (int)event ) {
//>		case ( (int)KEY1_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY1_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY1_LONG_EVENT ):
//>			break;
		case ( (int)KEY2_SHORT_PUSH_EVENT ):
			/*--- A regular measurement of SA-ADC begins. ---*/
			_startSaAdc();
			break;
//>		case ( (int)KEY2_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY2_LONG_EVENT ):
//>			break;

//>		case ( (int)KEY3_SHORT_PUSH_EVENT ):
//>			break;
		case ( (int)KEY3_SHORT_RELEASE_EVENT ):
			/*--- The transmission of the SA-ADC measurement result on EEPROM begins. ---*/
			if( _cntEepromStore > 0 ) {
				_startTransUart();
			}
			break;
		case ( (int)KEY3_LONG_EVENT ):
			/*--- The clearness of the SA-ADC measurement result on EEPROM is begun. ---*/
			_startClearEeprom();
			break;

//>		case ( (int)KEY4_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY4_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY4_LONG_EVENT ):
//>			break;
		default:
			break;
	}
}

/*******************************************************************************
	Routine Name:	_procExecSaAdcState
	Form:			static void _procExecSaAdcState( unsigned char event )
	Parameters:		unsigned char event : Event status
	Return value:	void
	Description:	Processing according to state.
******************************************************************************/
static void _procExecSaAdcState( unsigned char event )
{
	switch( (int)event ) {
//>		case ( (int)KEY1_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY1_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY1_LONG_EVENT ):
//>			break;
		case ( (int)KEY2_SHORT_PUSH_EVENT ):
			/*--- Are not accessing EEPROM? ---*/
			if( ( _state != (unsigned char)STATE_WAIT_STORE_RESULT_FIN ) &&
			    ( _state != (unsigned char)STATE_WAIT_STORE_INFO_FIN   ) ) {
				/*--- A regular measurement of SA-ADC stopped. ---*/
				_stopSaAdc();
				_startBarometerStopping();
			}
			break;
//>		case ( (int)KEY2_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY2_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY3_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY3_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY3_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY4_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY4_SHORT_RELEASE_EVENT ):
//>			break;
		case ( (int)KEY4_LONG_EVENT ):
			if( ( _state != (unsigned char)STATE_WAIT_STORE_RESULT_FIN ) &&
			    ( _state != (unsigned char)STATE_WAIT_STORE_INFO_FIN   ) ) {
				if( (_baro_lcd >= (BARO_PRESS_MIN/10)) && (_baro_lcd <= (BARO_PRESS_MAX/10)) ) {
					_stopSaAdc();
					_startCalibrateSaAdc();
				}
			}
			break;
		default:
			/*--- Regular measurement processing of SA-ADC. ---*/
			_procSaAdc();
			break;
	}
}

/*******************************************************************************
	Routine Name:	_procTransUartState
	Form:			static void _procTransUartState( unsigned char event )
	Parameters:		unsigned char event : Event status
	Return value:	void
	Description:	Processing according to state.
******************************************************************************/
static void _procTransUartState( unsigned char event )
{
	int			ret;

	switch( (int)event ) {
//>		case ( (int)KEY1_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY1_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY1_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY2_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY2_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY2_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY3_SHORT_PUSH_EVENT ):
//>			break;
		case ( (int)KEY3_SHORT_RELEASE_EVENT ):
			/*--- Are not accessing EEPROM? ---*/
			if( _state != (unsigned char)STATE_WAIT_READ_RESULT_FIN ) {
				/*--- The transmission of the SA-ADC measurement result on EEPROM is stopped. ---*/
				_stopTransUart();
				_startBarometerStopping();
			}
			break;
//>		case ( (int)KEY3_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY4_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY4_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY4_LONG_EVENT ):
//>			break;
		default:
			/*--- Transmission processing of SA-ADC measurement result on EEPROM. ---*/
			ret = _procTransUart();
			if( ret == PROC_FIN ) {
				_stopTransUart();
				_startBarometerStopping();
			}
			break;
	}
}

/*******************************************************************************
	Routine Name:	_procClrEepromState
	Form:			static void _procClrEepromState( unsigned char event )
	Parameters:		unsigned char event : Event status
	Return value:	void
	Description:	Processing according to state.
******************************************************************************/
static void _procClrEepromState( unsigned char event )
{
	int			ret;
	
	switch( (int)event ) {
//>		case ( (int)KEY1_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY1_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY1_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY2_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY2_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY2_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY3_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY3_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY3_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY4_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY4_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY4_LONG_EVENT ):
//>			break;
		default:
			/*--- Clear processing of SA-ADC measurement result on EEPROM. ---*/
			ret = _procClearEeprom();
			if( ret == PROC_FIN ) {
				_startBarometerStopping();
			}
			break;
	}
}

/*******************************************************************************
	Routine Name:	_procCalibrateSaAdcState
	Form:			static void _procCalibrateSaAdcState( unsigned char event )
	Parameters:		unsigned char event : Event status
	Return value:	void
	Description:	Processing according to state.
******************************************************************************/
static void _procCalibrateSaAdcState( unsigned char event )
{
	int			ret;
	unsigned short		work_Ret = 0;
	unsigned short		baro_lcd_Ret = 0;
	signed short		baro_calb_val_temp = 0;

	switch( (int)event ) {
//>		case ( (int)KEY1_SHORT_PUSH_EVENT ):
//>			break;
//>		case ( (int)KEY1_SHORT_RELEASE_EVENT ):
//>			break;
//>		case ( (int)KEY1_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY2_SHORT_PUSH_EVENT ):
//>			break;
		case ( (int)KEY2_SHORT_RELEASE_EVENT ):
			baro_calb_val_temp = (signed short)(_baro_lcd - _baro);
			/*--- Counting up Pressure ---*/
			if(_baro_lcd < (BARO_PRESS_MAX / 10)) {
				if( (baro_calb_val_temp >= -600) && (baro_calb_val_temp <= 600) ) {
					_baro_lcd++;
				}
			}

			work_Ret = _baro_lcd;
			baro_lcd_Ret = _div10_and_mod( &work_Ret );
			baro_lcd_Ret |= _div10_and_mod( &work_Ret ) << 4;
			baro_lcd_Ret |= _div10_and_mod( &work_Ret ) << 8;
			baro_lcd_Ret |= _div10_and_mod( &work_Ret ) << 12;

#if LCD_TYPE == 1
			(void)lcd_dispBaro( baro_lcd_Ret );
#endif

			break;
//>		case ( (int)KEY2_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY3_SHORT_PUSH_EVENT ):
//>			break;
		case ( (int)KEY3_SHORT_RELEASE_EVENT ):
			baro_calb_val_temp = (signed short)(_baro_lcd - _baro);
			/*--- Counting down Pressure ---*/
			if(_baro_lcd > (BARO_PRESS_MIN / 10)) {
				if( (baro_calb_val_temp >= -600) && (baro_calb_val_temp <= 600) ) {
					_baro_lcd--;
				}
			}

			work_Ret = _baro_lcd;
			baro_lcd_Ret = _div10_and_mod( &work_Ret );
			baro_lcd_Ret |= _div10_and_mod( &work_Ret ) << 4;
			baro_lcd_Ret |= _div10_and_mod( &work_Ret ) << 8;
			baro_lcd_Ret |= _div10_and_mod( &work_Ret ) << 12;
#if LCD_TYPE == 1
			(void)lcd_dispBaro( baro_lcd_Ret );
#endif
			break;
//>		case ( (int)KEY3_LONG_EVENT ):
//>			break;
//>		case ( (int)KEY4_SHORT_PUSH_EVENT ):
//>			break;
		case ( (int)KEY4_SHORT_RELEASE_EVENT ):
			_baro_calb_offset = (signed short)(_baro_lcd - _baro);
			_startSaAdc();
			break;
//>		case ( (int)KEY4_LONG_EVENT ):
//>			break;
		default:
			break;
	}
}

/*******************************************************************************
	Routine Name:	_startBarometerInitialization
	Form:			static void _startBarometerInitialization( void )
	Parameters:		void
	Return value:	void
	Description:	Initialization when starting.
******************************************************************************/
static void _startBarometerInitialization( void )
{
	/*--- Setting. ---*/
	(void)eeprom_read( (unsigned short)EEPROM_INFO_SAADC_CNT_ADRS,
	                   (unsigned char *)&_cntEepromStore,
	                   EEPROM_SAADC_CNT_SIZE );
	/*--- State. ---*/
	_state = (unsigned char)STATE_INIT_BARO_MODE;
}

/*******************************************************************************
	Routine Name:	_startBarometerStopping
	Form:			static void _startBarometerStopping( void )
	Parameters:		void
	Return value:	void
	Description:	Initialization when stopping.
******************************************************************************/
static void _startBarometerStopping( void )
{
	/*--- State. ---*/
	_state = (unsigned char)STATE_STOP_SAADC;
}

/*******************************************************************************
	Routine Name:	_startSaAdc
	Form:			static void _startSaAdc( void )
	Parameters:		void
	Return value:	void
	Description:	SA-ADC start processing.
******************************************************************************/
static void _startSaAdc( void )
{
#ifndef _ML610Q48X
	lcd_dispMode( "BARO", 4 );
#endif /*  _ML610Q48X */

	/*--- Setting. ---*/
	_flgSaAdcFin = (unsigned char)FLG_CLR;
	gCntTimer = 0;
	/*--- Display. ---*/
#ifndef _ML610Q48X
	(void)lcd_dispMark( (unsigned char)LCD_MARK_Y1, (unsigned char)LCD_TURNON );
#endif /*  _ML610Q48X */
	/*--- State. ---*/
	_state = (unsigned char)STATE_EXEC_SAADC;
}

/*******************************************************************************
	Routine Name:	_startTransUart
	Form:			static void _startTransUart( void )
	Parameters:		void
	Return value:	void
	Description:	UART transmission start processing.
******************************************************************************/
static void _startTransUart( void )
{
	/*--- Setting. ---*/
	_cntEepromRead = (unsigned short)0u;
	_flgUartFin = (unsigned char)FLG_CLR;
	/*--- Uart setting. ---*/
	uart_PortSet();
	/*--- Starting UART baud rate adjustment. ---*/
	adjustBaudrate_begin();
	/*--- State. ---*/
	_state = (unsigned char)STATE_WAIT_ADJUST_BRT_FIN;
}

/*******************************************************************************
	Routine Name:	_startClearEeprom
	Form:			static void _startClearEeprom( void )
	Parameters:		void
	Return value:	void
	Description:	EEPROM Clear start processing.
******************************************************************************/
static void _startClearEeprom( void )
{
	/*--- Setting. ---*/
	_cntEepromStore = (unsigned short)0u;
	_flgMemFull = (unsigned char)FLG_CLR;
	(void)eeprom_write( (unsigned short)EEPROM_INFO_SAADC_CNT_ADRS,
	                    (unsigned char *)&_cntEepromStore,
	                    EEPROM_SAADC_CNT_SIZE );
	/*--- State. ---*/
	_state = (unsigned char)STATE_CLR_EEPROM;
}

/*******************************************************************************
	Routine Name:	_startCalibrateSaAdc
	Form:			static void _startCalibrateSaAdc( void )
	Parameters:		void
	Return value:	void
	Description:	Calibration start processing.
******************************************************************************/
static void _startCalibrateSaAdc( void )
{
	unsigned short work_Ret = 0;
	unsigned short baro_lcd_Ret = 0;

	work_Ret = _baro_lcd;
	baro_lcd_Ret = _div10_and_mod( &work_Ret );
	baro_lcd_Ret |= _div10_and_mod( &work_Ret ) << 4;
	baro_lcd_Ret |= _div10_and_mod( &work_Ret ) << 8;
	baro_lcd_Ret |= _div10_and_mod( &work_Ret ) << 12;

#ifndef _ML610Q48X
	lcd_dispMode( "CALB", 4 );
#endif /*  _ML610Q48X */

#if LCD_TYPE == 1
	(void)lcd_dispBaro( baro_lcd_Ret );
#endif
	/*--- State. ---*/
	_state = (unsigned char)STATE_CALIBRATE_SAADC;
}

/*******************************************************************************
	Routine Name:	_procCheckEEP_Fin
	Form:			static int _procCheckEEP_Fin( void )
	Parameters:		void
	Return value:	int
					PROC_FIN(1)
					PROC_NOT_FIN(0)
	Description:	Checking EEPROM to read/write
******************************************************************************/
static int _procCheckEEP_Fin( void )
{
	int		ret;

	ret = eeprom_continue();
	if( ret != EEPROM_R_PROCESS ) {
		return ( PROC_FIN );
	}
	return ( PROC_NOT_FIN );
}

/*******************************************************************************
	Routine Name:	_procSaAdc
	Form:			static void _procSaAdc( void )
	Parameters:		void
	Return value:	void
	Description:	SA-ADC mode processing.
******************************************************************************/
static void _procSaAdc( void )
{
	int					ret;
	unsigned short		saAdcResult=0;
	unsigned short		baro_Result=0;
	unsigned short		work_Ret=0;
	unsigned short		baro_Ret=0;
	unsigned short		baro_calb_val_Ret = 0;
	signed short		temp_Ret=0;
	signed short		AD_offset=0;
	unsigned long		rcAdcResult;
	tRtcTime			timePrm;
	tBarometerTableList	*pBaroTbl;
	tTempTableList		*pTbl;

	switch( (int)_state ) {
	/*=== EEPROM storage completion waiting(Information) ===*/
		case ( (int)STATE_WAIT_STORE_INFO_FIN ):
			ret = _procCheckEEP_Fin();
			if( ret != PROC_NOT_FIN ) {
				_state = (unsigned char)STATE_WAIT_TIME_PASS;
			}
			break;
	/*=== EEPROM storage completion waiting(Conversion result) ===*/
		case ( (int)STATE_WAIT_STORE_RESULT_FIN ):
			ret = _procCheckEEP_Fin();
			if( ret != PROC_NOT_FIN ) {
				_cntEepromStore++;
				(void)eeprom_write( (unsigned short)EEPROM_INFO_SAADC_CNT_ADRS,
				                    (unsigned char *)&_cntEepromStore,
				                    EEPROM_SAADC_CNT_SIZE );
				_state = (unsigned char)STATE_WAIT_STORE_INFO_FIN;
			}
			break;
	/*=== SA-ADC completion waiting ===*/
		case ( (int)STATE_WAIT_SAADC_FIN ):
			/*--- Has the conversion of SA-ADC ended? ---*/
			if( _flgSaAdcFin == (unsigned char)FLG_SET ) {
				_flgSaAdcFin = (unsigned char)FLG_CLR;

				/*--- Get SA-ADC result. ---*/
				/*--------------------------------------------------------------------------------------------------*/
				/*	[Notice]																						*/
				/*	SA-ADC result with differential amplification inputing is always stored CH0(SADR0L and SADR0H).	*/
				/*	This module is setting "SAADC_RESULT_CH(=0)" saAdc_getResult's 1st parameter.					*/
				/*--------------------------------------------------------------------------------------------------*/
				(void)saAdc_getResult( SAADC_RESULT_CH, &saAdcResult );
				
				(void)saAdc_init( (unsigned char)SAADC_PARAM_LP,			/* lp(=oneshot) */
	        			          (unsigned char)SAADC_CK_HIGH,		    	/* ck(=low) */
	                 			  (unsigned char)SAADC_EN_CH0NML_CH1NML,	/* en(=direct input) */
	                 			  (unsigned char)SAADC_PARAM_OFFSET,		/* offset */
	                  			  (unsigned char)SAADC_GAIN_1_0  );			/* gain */

				/* Adjusting range of air pressure calclation */
				AD_offset = BARO_TABLE_AD_OFFSET + _adcOffset;

				ret = MEASURE_ENABLE;
				if( (_tempResult > (short)BARO_TEMP_MAX) || (_tempResult < (short)BARO_TEMP_MIN) ) {
					/* If temperature value is out of range, then this program dosen't calc air pressure and display "----". */
					ret = MEASURE_DISABLE;
				}
				else {
					/* Rounding temperature          */
					/*   for example. 25.5 -> 30.0   */
					/*                -5.4 -> -5.0   */
					/*                -5.5 -> -6.0   */
					if( _tempResult >= 0 ) {
						work_Ret = _tempResult + 5;		/* add 0.5C */
					}
					else {
						work_Ret = _tempResult - 5;		/* subtract 0.5C */
					}
					(void)_div10_and_mod( &work_Ret );	/* round */

					/*--- Calclation barometer(25C Typical).  ---*/
					pBaroTbl = (tBarometerTableList*)&_sBaroTableList;
					if( barometer_calc( saAdcResult, AD_offset, &baro_Result, pBaroTbl ) != BARO_R_OK ) {
						/* If result of barometer_calc function is error, then this program display "----". */
						ret = MEASURE_DISABLE;
					}
				}

				if( ret == MEASURE_ENABLE ) {
					/* temperature correction */
					work_Ret = BARO_TEMP_MAX_DIV10 - work_Ret;					/* if "ret" is stored MEASURE_ENABLE, then _tempResult <= BARO_TEMP_MAX_DIV10 */
					baro_Result += _sBaroTempCorrecttion[work_Ret];				/* add temperature correction value */

					_baro = (baro_Result / 10);
					baro_Result = baro_Result + _baro_calb_offset * 10;

					/* Checking result value of calclation range.  */
					if( baro_Result > BARO_PRESS_MAX ) {
						baro_Result = BARO_PRESS_MAX;
					}
					else if( baro_Result < BARO_PRESS_MIN ) {
						baro_Result = BARO_PRESS_MIN;
					}

					/* Conversion barometer unit "hPa". */
					work_Ret = baro_Result;
					(void)_div10_and_mod( &work_Ret );
					/* Conversion of displaying value on LCD [BCD value] */
					baro_Ret = _div10_and_mod( &work_Ret );
					baro_Ret |= _div10_and_mod( &work_Ret ) << 4;
					baro_Ret |= _div10_and_mod( &work_Ret ) << 8;
					baro_Ret |= _div10_and_mod( &work_Ret ) << 12;

#ifndef _ML610Q48X
#if LCD_TYPE == 1
					/*--- The conversion result is displayed in LCD. ---*/
					(void)lcd_dispBaro( baro_Ret );
#endif	/* LCD_TYPE	*/
#endif /* _ML610Q48X */
					_baro_lcd = ( baro_Result ) / 10;
				}
				else {
					baro_Ret = BARO_ERR_CODE;
#ifndef _ML610Q48X
#if LCD_TYPE == 1
					/*--- The conversion result is displayed in LCD. ---*/
					(void)lcd_dispBaroDisable();
#endif	/* LCD_TYPE	*/
#endif /* _ML610Q48X */
					_baro_lcd = 0;
				}

				/* Convert calibration value to BCD value. */
				work_Ret = _baro_calb_offset;
				baro_calb_val_Ret = _div10_and_mod( &work_Ret );
				baro_calb_val_Ret |= _div10_and_mod( &work_Ret ) << 4;
				baro_calb_val_Ret |= _div10_and_mod( &work_Ret ) << 8;
				baro_calb_val_Ret |= _div10_and_mod( &work_Ret ) << 12;
				if( _baro_calb_offset < 0 ) {
					baro_calb_val_Ret |= 0x0F000;
				}

				/* Convert hex value to BCD value. [temperature] */
				work_Ret = _tempResult;
				temp_Ret = _div10_and_mod( &work_Ret );
				temp_Ret |= _div10_and_mod( &work_Ret ) << 4;
				temp_Ret |= _div10_and_mod( &work_Ret ) << 8;
				temp_Ret |= _div10_and_mod( &work_Ret ) << 12;
				if( _tempResult < 0 ) {
					temp_Ret |= 0x0F000;
				}

#ifndef _ML610Q48X
#if LCD_TYPE == 1
				/*--- The value of temperature result is displayed in LCD. ---*/
				(void)lcd_dispTemp( (unsigned short)temp_Ret );
#endif	/* LCD_TYPE	*/
#endif /* _ML610Q48X */

				/*--- Timer restart. ---*/
				gCntTimer = 0;
				(void)tm_start( (unsigned char)TM_CHNO );

				/*--- The conversion result and time are stored in EEPROM. ---*/
				if( _cntEepromStore >= (unsigned short)MAX_CNT_EEPROM_STORE ) {
					_state = (unsigned char)STATE_WAIT_TIME_PASS;
					if( _flgMemFull != (unsigned char)FLG_SET ) {
						_flgMemFull = (unsigned char)FLG_SET;
					}
					_state = (unsigned char)STATE_WAIT_TIME_PASS;
				}
				else {

#ifdef _RTC_TYPE
					ret = rtc_getTime( &timePrm );
#else
					ret = RTC_R_ERR_GETTIME;
#endif	/* _RTC_TYPE	*/

					if( ret != RTC_R_OK ) {
						timePrm = _errTimePrm;
					}
					_makeEepromFormat( _eepromBuf, SAADC_RESULT_CH + 1, _tempRcAdcCnt, temp_Ret, saAdcResult, baro_Ret, (unsigned short)UA0BRT, &timePrm, baro_calb_val_Ret );
					(void)eeprom_write( (unsigned short)( EEPROM_DATA_SAADC_TOP_ADRS + ( EEPROM_SAADC_DATA_SIZE * _cntEepromStore ) ),
					                    (unsigned char *)_eepromBuf,
					                    EEPROM_SAADC_DATA_SIZE );
					_state = (unsigned char)STATE_WAIT_STORE_RESULT_FIN;
				}
			}
			break;
	/*=== Start conversion after the amplifier has settled.===*/
		case ( (int)STATE_WAIT_SETTLE ):
			/*--- Does specified time pass? ---*/
			if( gCntTimer >= WAIT_CNT_TIMER ) {
				(void)tm_stop( (unsigned char)TM_CHNO );
				/*--- The conversion of SA-ADC start.  ---*/
				(void)saAdc_execute( SAADC_EXEC_CH );
				/*--- It shifts in "SA-ADC completion waiting" state. ---*/
				_state = (unsigned char)STATE_WAIT_SAADC_FIN;
			}
			break;
	/*=== RC-ADC completion[Get nA1] waiting ===*/
		case ( (int)STATE_WAIT_GET_NA1_FIN ):
			/*--- Has the conversion of RC-ADC ended? ---*/
			if( _flgRcAdcFin == (unsigned char)FLG_SET ) {
				_flgRcAdcFin = (unsigned char)FLG_CLR;

				/*--- Get RC-ADC result. ---*/
				(void)rcAdc_getResult( (unsigned char)RCADC_A, &rcAdcResult );
				/*===	It selects it from three tables based on the result.	===*/
#ifndef _ML610Q41X
				if( vol_level <= 0x0B ) {
					/*---	Under 2.4V	---*/
					pTbl = _sTempTableList1;
				} else if( vol_level <= 0x0F ) {
					/*---	2.4V - 2.9V	---*/
					pTbl = _sTempTableList2;
				} else {
					/*---	Over 2.9V	---*/
					pTbl = _sTempTableList3;
				}
#endif /* _ML610Q41X */
#ifdef _ML610Q41X
				pTbl = _sTempTableList3;
#endif /* _ML610Q41X */

				/* V111 sta */
				if( rcAdcResult < ( pTbl + TEMP_MAX_TBL_NO )->baseCnt ) {
					_tempRcAdcCnt =  BaseCnt_Offset - rcAdcResult;
					/*--- Temperature conversion ---*/
					ret = temp_calc( _tempRcAdcCnt, &_tempResult , pTbl );
				}
				else {
					ret = TEMP_R_ERR_L ;
				}
				/* V111 end */
				
				if( ret == TEMP_R_ERR_L ) {
					_tempResult = (signed short)TEMP_MIN_DATA;
				}
				else if( ret == TEMP_R_ERR_H ) {
					_tempResult = (signed short)TEMP_MAX_DATA;
				}

				(void)saAdc_init( (unsigned char)SAADC_PARAM_LP,			/* lp(=oneshot) */
	                			  (unsigned char)SAADC_PARAM_CK,			/* ck(=low) */
	                			  (unsigned char)SAADC_PARAM_EN,			/* en(=differential amplification) */
	                  			  (unsigned char)SAADC_PARAM_OFFSET,		/* offset */
	              			      (unsigned char)SAADC_PARAM_GAIN  );		/* gain */
				gCntTimer = 0;
				(void)tm_start( (unsigned char)TM_CHNO );

				_state = (unsigned char)STATE_WAIT_SETTLE;
			}
			break;
	/*=== RC-ADC completion[Get nB0] waiting ===*/
		case ( (int)STATE_WAIT_GET_NB0_FIN ):
			/*--- Has the conversion of RC-ADC ended? ---*/
			if( _flgRcAdcFin == (unsigned char)FLG_SET ) {
				_flgRcAdcFin = (unsigned char)FLG_CLR;
				/*--- Get RC-ADC result[nB0]. ---*/
				(void)rcAdc_getResult( (unsigned char)RCADC_B, &rcAdcResult );
				/*--- Initialize RC-ADC[RT0-CS0 oscillation mode]. ---*/
				(void)rcAdc_init( RCADC_MODE2, (unsigned char)RCADC_CK_LOW );
				/*--- Set counter B. ---*/
				(void)rcAdc_setCounter( (unsigned char)RCADC_B, rcAdcResult );
				/*--- Interrupt other than RC-ADC are invalidated. ---*/
				main_clrWDT();
				/*--- The conversion of RC-ADC start.  ---*/
				(void)rcAdc_execute( (unsigned char)RCADC_RUN );
				/*--- It shifts in "RC-ADC completion[Get nA1] waiting" state. ---*/
				_state = (unsigned char)STATE_WAIT_GET_NA1_FIN;
			}
			break;
	/*=== BLD waiting ===*/
		case ( (int)STATE_WAIT_BLD_FIN ):
			if( bld_getLevel() == BLD_CHECK_STOP ) {
				/*--- Timer stop. ---*/
				(void)tm_stop( (unsigned char)TM_CHNO );
				/*--- Initialize RC-ADC[RS0-CS0 oscillation mode]. ---*/
				(void)rcAdc_init( RCADC_MODE1, (unsigned char)RCADC_CK_LOW );
				/*--- Set counter A. ---*/
				(void)rcAdc_setCounter( (unsigned char)RCADC_A, (unsigned long)RCADC_NA0 );
				/*--- Interrupt other than RC-ADC are invalidated. ---*/
				main_clrWDT();
				/*--- The conversion of RC-ADC start.  ---*/
				(void)rcAdc_execute( (unsigned char)RCADC_RUN );
				/*--- It shifts in "RC-ADC completion waiting" state. ---*/
				_state = (unsigned char)STATE_WAIT_GET_NB0_FIN;
			}
			break;
	/*=== Time of the conversion start waiting ===*/
		case ( (int)STATE_WAIT_TIME_PASS ):
			/*--- Does specified time pass? ---*/
			if( gCntTimer >= MAX_CNT_TIMER ) {
				gCntTimer = 0;
				/*--- BLD Start. ---*/
				bld_start_levelCheck();
				/*--- It shifts in "BLD waiting" state. ---*/
				_state = (unsigned char)STATE_WAIT_BLD_FIN;
			}
			break;

		default:
			break;
	}
}

/*******************************************************************************
	Routine Name:	_procTransUart
	Form:			static int _procTransUart( void )
	Parameters:		void
	Return value:	int
					PROC_FIN(1)
					PROC_NOT_FIN(0)
	Description:	UART transmission state processing.
******************************************************************************/
static int _procTransUart( void )
{
	unsigned long		cnt437c;
	int		ret;

	switch( (int)_state ) {
	/*=== UART forwarding completion waiting. ===*/
		case ( (int)STATE_WAIT_UART_FIN ):
			if( _flgUartFin == (unsigned char)FLG_SET ) {
				_flgUartFin = (unsigned char)FLG_CLR;
				_state = (unsigned char)STATE_TRANS_JUDGE;
			}
			break;
	/*=== Reading completion waiting. ===*/
		case ( (int)STATE_WAIT_READ_RESULT_FIN ):
			ret = _procCheckEEP_Fin();
			if( ret != PROC_NOT_FIN ) {
				_cntEepromRead++;
				_makeUartFormat( _uartBuf, _eepromBuf );
				uart_startSend( _uartBuf, UART_BUF_SIZE, _funcUartFin );
				_state = (unsigned char)STATE_WAIT_UART_FIN;
			}
			break;

	/*=== Waiting UART baud rate adjustment completion. ===*/
		case ( (int)STATE_WAIT_ADJUST_BRT_FIN ):
			ret = adjustBaudrate_checkCountFin();
			if( ret == ADJUSTBAUDRATE_R_FIN ) {
				/*--- UART baud rate adjustment. ---*/
				cnt437c = adjustBaudrate_getCount();
				(void)adjustBaudrate_setBRT( (unsigned char)ADJUSTBAUDRATE_9600BPS, cnt437c );
				/*--- Key setting. ---*/
				irq_di();
				(void)irq_setHdr( (unsigned char)IRQ_NO_T128HINT, (void *)0 );
				key_init();
				key_start();
				irq_ei();
				_state = (unsigned char)STATE_TRANS_UART;
			}
			break;

	/*=== Transmission judgment. ===*/
//>		case ( (int)STATE_TRANS_JUDGE ):
		default:
			if( _cntEepromRead < _cntEepromStore ) {
				(void)eeprom_read( (unsigned short)( EEPROM_DATA_SAADC_TOP_ADRS + ( EEPROM_SAADC_DATA_SIZE * _cntEepromRead ) ),
				                   (unsigned char *)_eepromBuf,
				                    EEPROM_SAADC_DATA_SIZE );
				_state = (unsigned char)STATE_WAIT_READ_RESULT_FIN;
			}
			else {
				_cntEepromRead = 0;
				return ( PROC_FIN );
			}
			break;
	}
	return ( PROC_NOT_FIN );
}

/*******************************************************************************
	Routine Name:	_procClearEeprom
	Form:			static int _procClearEeprom( void )
	Parameters:		void
	Return value:	int
					PROC_FIN(1)
					PROC_NOT_FIN(0)
	Description:	Clear processing waiting.
******************************************************************************/
static int _procClearEeprom( void )
{
	int		ret;

	ret = eeprom_continue();
	if( ret != EEPROM_R_PROCESS ) {
		return ( PROC_FIN );
	}
	return ( PROC_NOT_FIN );
}

/*******************************************************************************
	Routine Name:	_stopSaAdc
	Form:			static void _stopSaAdc( void )
	Parameters:		void
	Return value:	void
	Description:	SA-ADC termination processing.
******************************************************************************/
static void _stopSaAdc( void )
{
	/*--- Setting. ---*/
	(void)saAdc_execute( (unsigned char)SAADC_CHBIT_OFF );
	(void)rcAdc_execute( (unsigned char)RCADC_OFF );
	(void)saAdc_init( (unsigned char)SAADC_PARAM_LP,			/* lp(=oneshot) */
	                  (unsigned char)SAADC_CK_HIGH,				/* ck(=low) */
	                  (unsigned char)SAADC_EN_CH0NML_CH1NML,	/* en(=direct input) */
	                  (unsigned char)SAADC_PARAM_OFFSET,		/* offset */
	                  (unsigned char)SAADC_GAIN_1_0  );			/* gain */
	(void)tm_start( (unsigned char)TM_CHNO );
	eeprom_stop();
	_flgSaAdcFin = (unsigned char)FLG_CLR;
	_flgRcAdcFin = (unsigned char)FLG_CLR;
	/*--- Display. ---*/
#ifndef _ML610Q48X
	(void)lcd_dispMark( (unsigned char)LCD_MARK_Y1, (unsigned char)LCD_TURNOFF );
#endif /*  _ML610Q48X */
}

/*******************************************************************************
	Routine Name:	_stopTransUart
	Form:			static void _stopTransUart( void )
	Parameters:		void
	Return value:	void
	Description:	UART transmission termination processing.
******************************************************************************/
static void _stopTransUart( void )
{
	/*--- Setting. ---*/
	uart_stop();
	uart_PortClear();
	eeprom_stop();
	_cntEepromRead = 0;
	_flgUartFin = (unsigned char)FLG_CLR;
}

/*******************************************************************************
	Routine Name:	_makeUartFormat
	Form:			static void _makeUartFormat( unsigned char *uartBuf, unsigned char *eepromBuf )
	Parameters:		unsigned char *uartBuf	 : Address at UART data storage destination
					unsigned char *eepromBuf : Address at destination.
	Return value:	void
	Description:	UART transmission format making processing.
******************************************************************************/
static void _makeUartFormat( unsigned char *uartBuf, unsigned char *eepromBuf  )
{
	unsigned char Cnt;

	/* ADC Channel No. */
	uartBuf[ 2] = eepromBuf[1];
	/* UABRT Value. */
	uartBuf[77] = eepromBuf[17]  & 0x0F;
	uartBuf[78] = eepromBuf[16]  >> 4;
	uartBuf[79] = eepromBuf[16]  & 0x0F;

	/* Calibration Value */
	uartBuf[42] = eepromBuf[10]	>> 4;
	uartBuf[43] = eepromBuf[10]	& 0x0F;
	uartBuf[44] = eepromBuf[9]	>> 4;
	uartBuf[45] = eepromBuf[9]	& 0x0F;

	/* Hour. */
	uartBuf[ 4] = eepromBuf[2] >> 4;
	uartBuf[ 5] = eepromBuf[2] & 0x0F;
	/* Minute. */
	uartBuf[ 7] = eepromBuf[3] >> 4;
	uartBuf[ 8] = eepromBuf[3] & 0x0F;
	/* Second. */
	uartBuf[10] = eepromBuf[4] >> 4;
	uartBuf[11] = eepromBuf[4] & 0x0F;

	/* ADC Value. */
	uartBuf[18] = eepromBuf[6] & 0x0F;
	uartBuf[19] = eepromBuf[5] >> 4;
	uartBuf[20] = eepromBuf[5] & 0x0F;

	/* Barometer Value. */
	uartBuf[27] = eepromBuf[8] >> 4;
	uartBuf[28] = eepromBuf[8] & 0x0F;
	uartBuf[29] = eepromBuf[7] >> 4;
	uartBuf[30] = eepromBuf[7] & 0x0F;

	/* ADC Value [temperature]. */
	uartBuf[55] = eepromBuf[13] >> 4;
	uartBuf[56] = eepromBuf[13] & 0x0F;
	uartBuf[57] = eepromBuf[12] >> 4;
	uartBuf[58] = eepromBuf[12] & 0x0F;
	uartBuf[59] = eepromBuf[11] >> 4;
	uartBuf[60] = eepromBuf[11] & 0x0F;

	/* Temperature. */
	uartBuf[62] = eepromBuf[15]	>> 4;
	uartBuf[63] = eepromBuf[15]	& 0x0F;
	uartBuf[64] = eepromBuf[14]	>> 4;
	uartBuf[66] = eepromBuf[14]	& 0x0F;

	for( Cnt = 0 ; Cnt < UART_BUF_SIZE ; Cnt++ ) {
		if( uartBuf[ Cnt ] < 10 ) {
			uartBuf[ Cnt ] |= '0';
		} else {
			uartBuf[ Cnt ] += ( 'A' - 10 );
		}
	}

	uartBuf[ 0] = (unsigned char)'S';										/* ADC Type.  */
	uartBuf[ 1] = (unsigned char)'A';										/*  */
	uartBuf[ 3] = (unsigned char)' ';										/* [Space] */
	uartBuf[ 6] = (unsigned char)':';										/* [:] */
	uartBuf[ 9] = (unsigned char)':';										/* [:] */
	uartBuf[12] = (unsigned char)' ';										/* [Space] */
	uartBuf[13] = (unsigned char)'S';										/* [SADR=] */
	uartBuf[14] = (unsigned char)'A';
	uartBuf[15] = (unsigned char)'D';
	uartBuf[16] = (unsigned char)'R';
	uartBuf[17] = (unsigned char)'=';
	uartBuf[21] = (unsigned char)' ';										/* [Space] */
	uartBuf[22] = (unsigned char)'B';										/* [BARO=] */
	uartBuf[23] = (unsigned char)'A';
	uartBuf[24] = (unsigned char)'R';
	uartBuf[25] = (unsigned char)'O';
	uartBuf[26] = (unsigned char)'=';
	uartBuf[31] = (unsigned char)'[';										/* [hPa] */
	uartBuf[32] = (unsigned char)'h';
	uartBuf[33] = (unsigned char)'P';
	uartBuf[34] = (unsigned char)'a';
	uartBuf[35] = (unsigned char)']';
	uartBuf[36] = (unsigned char)' ';										/* [Space] */

	uartBuf[37] = (unsigned char)'C';
	uartBuf[38] = (unsigned char)'A';
	uartBuf[39] = (unsigned char)'L';
	uartBuf[40] = (unsigned char)'B';
	uartBuf[41] = (unsigned char)'=';

	uartBuf[46] = (unsigned char)' ';										/* [Space] */
	uartBuf[47] = (unsigned char)'R';										/* ADC Type.  */
	uartBuf[48] = (unsigned char)'C';
	uartBuf[49] = (unsigned char)'1';
	uartBuf[50] = (unsigned char)' ';										/* [Space] */
	uartBuf[51] = (unsigned char)'C';										/* [CNT=] */
	uartBuf[52] = (unsigned char)'N';
	uartBuf[53] = (unsigned char)'T';
	uartBuf[54] = (unsigned char)'=';
	uartBuf[61] = (unsigned char)' ';										/* [Space] */
	uartBuf[65] = (unsigned char)'.';										/* [Dot] */
	uartBuf[67] = (unsigned char)'[';										/* [[C]] */
	uartBuf[68] = (unsigned char)'C';
	uartBuf[69] = (unsigned char)']';
	uartBuf[70] = (unsigned char)' ';										/* [Space] */

	uartBuf[71] = (unsigned char)'U';										/* [UABRT=] */
	uartBuf[72] = (unsigned char)'A';
	uartBuf[73] = (unsigned char)'B';
	uartBuf[74] = (unsigned char)'R';
	uartBuf[75] = (unsigned char)'T';
	uartBuf[76] = (unsigned char)'=';

	uartBuf[80] = (unsigned char)'\r';										/* [New line] */

	if( uartBuf[27] == (unsigned char)'F' ) {
		uartBuf[27] = (unsigned char)'-';									/* [[-]] */
		uartBuf[28] = (unsigned char)'-';									/* [[-]] */
		uartBuf[29] = (unsigned char)'-';									/* [[-]] */
		uartBuf[30] = (unsigned char)'-';									/* [[-]] */
	}

	if( uartBuf[62] == (unsigned char)'F' ) {
		uartBuf[62] = (unsigned char)'-';									/* [[-]] */
	}

	if( uartBuf[42] == (unsigned char)'F' ) {
		uartBuf[42] = (unsigned char)'-';									/* [[-]] */
	}

}

/*******************************************************************************
	Routine Name:	_makeEepromFormat
	Form:			static void _makeEepromFormat( unsigned char *eepromBuf, unsigned char chNo, unsigned short adcVal, unsigned short baroVal, unsigned short brtVal, tRtcTime *timePrm )
	Parameters:		unsigned char *eepromBuf	 : 
					unsigned char chNo			 : 
					unsigned short adcVal		 : 
					unsigned short baroVal		 : 
					unsigned short brtVal		 : 
					tRtcTime *timePrm			 : 
	Return value:	void
	Description:	EEPROM Format making processing
******************************************************************************/
static void _makeEepromFormat( unsigned char *eepromBuf, unsigned char chNo, unsigned long adcVal_temp, signed short temp, 
          unsigned short adcVal, unsigned short baroVal,unsigned short brtVal, tRtcTime *timePrm,  signed short clbVal)
{
	eepromBuf[0] = (unsigned char)0x00u;				/* ADC Type. */
	eepromBuf[1] = chNo;								/* ADC Channel No. */
	eepromBuf[2] = timePrm->hour;						/* Hour. */
	eepromBuf[3] = timePrm->min;						/* Minute. */
	eepromBuf[4] = timePrm->sec;						/* Second. */
	eepromBuf[5] = (unsigned char)( adcVal & 0x00FF );	/* SADR Value. */
	eepromBuf[6] = (unsigned char)( adcVal >> 8 );		/*  */
	eepromBuf[7] = (unsigned char)( baroVal & 0x00FF );	/* Barometer Value. */
	eepromBuf[8] = (unsigned char)( baroVal >> 8 );		/*  */
	eepromBuf[9] = (unsigned char)( (unsigned short)clbVal >> 0 );		/* Calibration Value */
	eepromBuf[10] = (unsigned char)( (unsigned short)clbVal >> 8 );		/*  */
	eepromBuf[11] = (unsigned char)( adcVal_temp >>  0 );			/* RC-ADC Value. */
	eepromBuf[12] = (unsigned char)( adcVal_temp >>  8 );			/*  */
	eepromBuf[13] = (unsigned char)( adcVal_temp >> 16 );			/*  */
	eepromBuf[14] = (unsigned char)( (unsigned short)temp >> 0 );	/* Temperature */
	eepromBuf[15] = (unsigned char)( (unsigned short)temp >> 8 );	/*  */
	eepromBuf[16] = (unsigned char)( brtVal & 0x00FF );	/* UABRT Value. */
	eepromBuf[17] = (unsigned char)( brtVal >> 8 );		/*  */
}

/*******************************************************************************
	Routine Name:	_funcUartFin
	Form:			static void _funcUartFin( unsigned int size, unsigned char errStat )
	Parameters:		unsigned int size		 : 
					unsigned char errStat	 : 
	Return value:	void
	Description:	UART transmission completion callback function.
******************************************************************************/
static void _funcUartFin( unsigned int size, unsigned char errStat )
{
	_flgUartFin = (unsigned char)FLG_SET;
	main_reqNotHalt();
}



/*******************************************************************************
	Routine Name:	_startReadSignature
	Form:			static void _startReadSignature( void )
	Parameters:		void
	Return value:	void
	Description:	Signature reading.
******************************************************************************/
static void _startReadSignature( void )
{
	(void)eeprom_read( (unsigned short)EEPROM_INFO_SIGNATURE_ADRS,
	                   (unsigned char *)_eepromBuf,
	                   EEPROM_SIGNATURE_SIZE );
}

/*******************************************************************************
	Routine Name:	_startWriteSignature
	Form:			static void _startWriteSignature( void )
	Parameters:		void
	Return value:	void
	Description:	Signature writing.
******************************************************************************/
static void _startWriteSignature( void )
{
	(void)eeprom_write( (unsigned short)EEPROM_INFO_SIGNATURE_ADRS,
	                    (unsigned char *)_eepromInfo,
	                    EEPROM_INFO_SIZE );
}

/*******************************************************************************
	Routine Name:	_procReadSignature
	Form:			static int _procReadSignature( void )
	Parameters:		void
	Return value:	int
					PROC_FIN(1)
					PROC_NOT_FIN(0)
	Description:	Signature reading waiting.
******************************************************************************/
static int _procReadSignature( void )
{
	int		ret;
	
	ret = eeprom_continue();
	if( ret != EEPROM_R_PROCESS ) {
		return ( PROC_FIN );
	}
	return ( PROC_NOT_FIN );
}

/*******************************************************************************
	Routine Name:	_procWriteSignature
	Form:			static int _procWriteSignature( void )
	Parameters:		void
	Return value:	int
					PROC_FIN(1)
					PROC_NOT_FIN(0)
	Description:	Signature writing waiting.
******************************************************************************/
static int _procWriteSignature( void )
{
	int		ret;
	
	ret = eeprom_continue();
	if( ret != EEPROM_R_PROCESS ) {
		return ( PROC_FIN );
	}
	return ( PROC_NOT_FIN );
}

/*******************************************************************************
	Routine Name:	_intWdt
	Form:			static void _intWdt( void )
	Parameters:		void
	Return value:	void
	Description:	WDT handler.
******************************************************************************/
static void _intWdt( void )
{
	main_reqNotHalt();
}

/*******************************************************************************
	Routine Name:	_intTimer
	Form:			static void _intTimer( void )
	Parameters:		void
	Return value:	void
	Description:	Timer handler.
******************************************************************************/
static void _intTimer( void )
{
	gCntTimer++;
	main_reqNotHalt();
}

/*******************************************************************************
	Routine Name:	_intUart
	Form:			static void _intUart( void )
	Parameters:		void
	Return value:	void
	Description:	UART handler.
******************************************************************************/
static void _intUart( void )
{
	(void)uart_continue();
	main_reqNotHalt();
}

/*******************************************************************************
	Routine Name:	_intI2c
	Form:			static void _intI2c( void )
	Parameters:		void
	Return value:	void
	Description:	I2C handler.
******************************************************************************/
static void _intI2c( void )
{
	(void)i2c_continue();
	main_reqNotHalt();
}

/*******************************************************************************
	Routine Name:	_intSaAdc
	Form:			static void _intSaAdc( void )
	Parameters:		void
	Return value:	void
	Description:	SA-ADC interruption handling
******************************************************************************/
static void _intSaAdc( void )
{
	_flgSaAdcFin = (unsigned char)FLG_SET;
	main_reqNotHalt();
}

/*******************************************************************************
	Routine Name:	_intRcAdc
	Form:			static void _intRcAdc( void )
	Parameters:		void
	Return value:	void
	Description:	RC-ADC interruption handling
******************************************************************************/
static void _intRcAdc( void )
{
	_flgRcAdcFin = (unsigned char)FLG_SET;
	main_reqNotHalt();
}

/*******************************************************************************
	Routine Name:	_intRtcRegular
	Form:			static void _intRtcRegular( void )
	Parameters:		void
	Return value:	void
	Description:	RTC interruption handling
******************************************************************************/
static void _intRtcRegular( void )
{
	_flgRtcRegular = (unsigned char)FLG_SET;
	main_reqNotHalt();
}

