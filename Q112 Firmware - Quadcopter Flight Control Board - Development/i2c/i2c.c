/*****************************************************************************
	i2c.c

	Copyright (C) 2008 LAPIS Semiconductor Co., Ltd.
	All rights reserved.

	LAPIS Semiconductor shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.09.26  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
    2008.12.22  ver.1.40
    2010.03.16  ver.1.50	improvement of the register access method.
    2012.11.09	ver.1.60	added preprocessor for MCU that does not support I2C Control module
******************************************************************************/
#include "mcu.h"
#ifndef _NO_I2C_MODE
#include "i2c.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*--- Register bit. ---*/
/* IRQ2 */
#define IRQ2_QSIO0			( 0x1u	)		/* IRQ2 Register QSIO0 bit */
#define IRQ2_QSAD			( 0x4u	)		/* IRQ2 Register QSAD bit */
#define IRQ2_QI2C0			( 0x80u )		/* IRQ2 Register QI2C0 bit */
/* I2C0RD */
#define I2C0RD_I20R0		( 0x1u )		/* I2C0RD Register I20R0 bit */
#define I2C0RD_I20R1		( 0x2u )		/* I2C0RD Register I20R1 bit */
#define I2C0RD_I20R2		( 0x4u )		/* I2C0RD Register I20R2 bit */
#define I2C0RD_I20R3		( 0x8u )		/* I2C0RD Register I20R3 bit */
#define I2C0RD_I20R4		( 0x10u )		/* I2C0RD Register I20R4 bit */
#define I2C0RD_I20R5		( 0x20u )		/* I2C0RD Register I20R5 bit */
#define I2C0RD_I20R6		( 0x40u )		/* I2C0RD Register I20R6 bit */
#define I2C0RD_I20R7		( 0x80u )		/* I2C0RD Register I20R7 bit */
/* I2C0SA */
#define I2C0SA_I20RW		( 0x1u )		/* I2C0SA Register I20RW bit */
#define I2C0RD_I20A0		( 0x2u )		/* I2C0SA Register I20A0 bit */
#define I2C0RD_I20A1		( 0x4u )		/* I2C0SA Register I20A1 bit */
#define I2C0RD_I20A2		( 0x8u )		/* I2C0SA Register I20A2 bit */
#define I2C0RD_I20A3		( 0x10u )		/* I2C0SA Register I20A3 bit */
#define I2C0RD_I20A4		( 0x20u )		/* I2C0SA Register I20A4 bit */
#define I2C0RD_I20A5		( 0x40u )		/* I2C0SA Register I20A5 bit */
#define I2C0RD_I20A6		( 0x80u )		/* I2C0SA Register I20A6 bit */
/* I2C0TD */
#define I2C0TD_I20T0		( 0x1u )		/* I2C0TD Register I20T0 bit */
#define I2C0TD_I20T1		( 0x2u )		/* I2C0TD Register I20T1 bit */
#define I2C0TD_I20T2		( 0x4u )		/* I2C0TD Register I20T2 bit */
#define I2C0TD_I20T3		( 0x8u )		/* I2C0TD Register I20T3 bit */
#define I2C0TD_I20T4		( 0x10u )		/* I2C0TD Register I20T4 bit */
#define I2C0TD_I20T5		( 0x20u )		/* I2C0TD Register I20T5 bit */
#define I2C0TD_I20T6		( 0x40u )		/* I2C0TD Register I20T6 bit */
#define I2C0TD_I20T7		( 0x80u )		/* I2C0TD Register I20T7 bit */
/* I2C0CON */
#define I2C0CON_I20ST		( 0x1u )		/* I2C0CON Register I20ST bit */
#define I2C0CON_I20SP		( 0x2u )		/* I2C0CON Register I20SP bit */
#define I2C0CON_I20RS		( 0x4u )		/* I2C0CON Register I20RS bit */
#define I2C0CON_I20ACT		( 0x80u )		/* I2C0CON Register I20ACT bit */
/* I2C0MOD */
#define I2C0MOD_I20EN		( 0x1u )		/* I2C0MOD Register I20EN bit */
#define I2C0MOD_I20MD		( 0x2u )		/* I2C0MOD Register I20MD bit */
#define I2C0MOD_I20DW0		( 0x4u )		/* I2C0MOD Register I20DW0 bit */
#define I2C0MOD_I20DW1		( 0x8u )		/* I2C0MOD Register I20DW1 bit */
#define I2C0MOD_I20SYN		( 0x10u )		/* I2C0MOD Register I20SYN bit */
/* I2C0STAT */
#define I2C0STAT_I20BB		( 0x1u )		/* I2C0STAT Register I20BB bit */
#define I2C0STAT_I20ACR		( 0x2u )		/* I2C0STAT Register I20ACR bit */
#define I2C0STAT_I20ER		( 0x4u )		/* I2C0STAT Register I20ER bit */
/* P4DIR */
#define P4DIR_P40DIR		( 0x01u )
#define P4DIR_P41DIR		( 0x02u )
/* P4CON0 */
#define P4CON0_P40C0		( 0x01u )
#define P4CON0_P41C0		( 0x02u )
/* P4CON1 */
#define P4CON1_P40C1		( 0x01u )
#define P4CON1_P41C1		( 0x02u )
/* P4MOD0 */
#define P4MOD0_P40MD0		( 0x01u )
#define P4MOD0_P41MD0		( 0x02u )
/* P4MOD1 */
#define P4MOD1_P40MD1		( 0x01u )
#define P4MOD1_P41MD1		( 0x02u )

/*--- mode select. ---*/
#define I2C_STD_CYC			( 80 )					/* standard mode 1cycle time coefficient	*/
#define I2C_FST_CYC			( 20 )					/* fast mode 1cycle time coefficient		*/
#define I2C_STD_KHZ			( 100 )					/* standard mode frequency					*/
#define I2C_FST_KHZ			( 400 )					/* fast mode frequency						*/
#define I2C_DW_0			( 0x0u )				/* not down		*/
#define I2C_DW_10			( 0x1u )				/* 10% down		*/
#define I2C_DW_20			( 0x2u )				/* 20% down		*/
#define I2C_DW_30			( 0x3u )				/* 30% down		*/

/*--- receive fase. ---*/
#define	I2C_TRANS_END			( 0 )				/* Transfer completion			*/
#define I2C_SEND_SLAVE_ADDRESS	( 1 )				/* slave address send mode		*/
#define I2C_SEND_ADDRESS		( 2 )				/* write/read address send mode	*/
#define I2C_SEND_DATA			( 3 )				/* data send mode				*/
#define	I2C_RECEIVE_DATA		( 4 )				/* data receive mode			*/

/*=== control parameter for I2C ===*/
typedef struct {
	unsigned char	mode;			/* transfer mode(0:send, 1:receive)	*/
	unsigned char*	addr;			/* pointer to area where the send/receive address is stored	*/
	unsigned int	addr_size;		/* size of send address										*/
	unsigned char*	data;			/* pointer to area where the send/receive data is stored	*/
	unsigned int	data_size;		/* size of send/receive data								*/
	unsigned int	cnt;			/* size of data which is sent/received						*/
	cbfI2c			callBack;		/* callback function										*/
	unsigned char	errStat;		/* error status												*/
	unsigned char	status;			/* send/receive status										*/
} tI2cCtrlParam;


/*############################################################################*/
/*#                                Variable                                  #*/
/*############################################################################*/
/*=== control parameter for I2C ===*/
static tI2cCtrlParam _gsCtrlParam = { 0, (void *)0, 0, (void *)0, 0, 0, (void *)0, 0, I2C_TRANS_END };

/*############################################################################*/
/*#                               Prototype                                  #*/
/*############################################################################*/


/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/

/*******************************************************************************
	Routine Name:	i2c_init
	Form:			int i2c_init( unsigned char mode, unsigned short kHz , unsigned char syn)
	Parameters:		unsigned char mode : choice of transmission rate mode
						I2C_MOD_STD(=0) : standard mode(100kHz)
						I2C_MOD_FST(=1) : fast mode(400kHz)
					unsigned short kHz : frequency of HSCLK (this parameter is referred only HSCLK is chosen as the clock oscillator)
					unsigned char syn : choice of handshake function use
	Return value:	int
						I2C_R_OK(=0)     : the I2C is initialized
						I2C_R_ERR_SYN(=-1)  : improper choice of the clock oscillator
						I2C_R_ERR_MODE(=-2)  : improper choice of baud rate
						I2C_R_ERR_FREQ(=-3)  : data length is out of range
	Description:	initialize I2C
******************************************************************************/
int i2c_init( unsigned char mode, unsigned short kHz , unsigned char syn )
{
	unsigned char setbit;
	unsigned char down;
	unsigned short rate_cyc;
	unsigned short rate_khz;

	/*=== parameter check. ===*/
	if( syn > (unsigned char)I2C_SYN_ON ){
		return( I2C_R_ERR_SYN );
	}

	if( mode == (unsigned char)I2C_MOD_STD ){
		rate_cyc = (unsigned short)I2C_STD_CYC;
		rate_khz = (unsigned short)I2C_STD_KHZ;
	}
	else if( mode == (unsigned char)I2C_MOD_FST ){
		rate_cyc = (unsigned short)I2C_FST_CYC;
		rate_khz = (unsigned short)I2C_FST_KHZ;
	}
	else{
		return( I2C_R_ERR_MODE );
	}

	if( ( kHz / rate_cyc ) <= rate_khz ){
		down = (unsigned char)I2C_DW_0;
	}
	else if( ( kHz / (unsigned short)( ( rate_cyc * 11 ) / 10 ) ) <= rate_khz ){
		down = (unsigned char)I2C_DW_10;
	}
	else if( ( kHz / (unsigned short)( ( rate_cyc * 12 ) / 10 ) ) <= rate_khz ){
		down = (unsigned char)I2C_DW_20;
	}
	else if( ( kHz / (unsigned short)( ( rate_cyc * 13 ) / 10 ) ) <= rate_khz ){
		down = (unsigned char)I2C_DW_30;
	}
	else{
		return( I2C_R_ERR_FREQ );
	}

	/*=== Variable setting. ===*/
	_gsCtrlParam.mode		= 0;
	_gsCtrlParam.addr		= (void *)0;
	_gsCtrlParam.addr_size	= 0;
	_gsCtrlParam.data		= (void *)0;
	_gsCtrlParam.data_size	= 0;
	_gsCtrlParam.cnt		= 0;
	_gsCtrlParam.callBack	= (void *)0;
	_gsCtrlParam.errStat	= 0;
	_gsCtrlParam.status		= 0;

	/*=== Register setting. ===*/
	/*--- i2c communication action stop ---*/
	I20EN = 0;
	/*---	Port setting.	---*/
	/* SCL */
	PB5DIR = 0;		/* Output */
	PB5C0 = 0;
	PB5C1 = 1;		/* Nch */
	PB5MD0 = 0;
	PB5MD1 = 1;		/* I2C SCL */
	/* SDA */
	PB6DIR = 0;		/* Output */
	PB6C0 = 0;
	PB6C1 = 1;		/* Nch */
	PB6MD0 = 0;
	PB6MD1 = 1;		/* I2C SD */

	/*---	Communication setting	---*/
	setbit = (unsigned char)( I2C0MOD_I20EN |
								(mode << 1) | 
								(down << 2) | 
								(syn  << 4) );
	I2C0MOD = setbit;

	return ( I2C_R_OK );
}

/*******************************************************************************
	Routine Name:	i2c_startSend
	Form:			int i2c_startSend( unsigned char *data,unsigned int size,unsigned char address,cbfI2c func)
	Parameters:		unsigned char *data : pointer to area where the send data is stored
					unsigned int size : size of data (unit is byte)
					unsigned char slave_adr : destination device address
					unsigned char ctrl : I2C control()
					cbfI2c func : callback function
	Return value:	int
						I2C_R_TRANS_START_OK(=0)	: transmission start
						I2C_R_BUS_BUSY(=-1)			: I2C bus is busy
	Description:	start to send the data
******************************************************************************/
int i2c_startSend(unsigned char slave_adr, unsigned char *addr, unsigned int addr_size, 
	unsigned char *data, unsigned int data_size, cbfI2c func )
{
	unsigned char errStat;

	/*=== Transmission of a message system order parameter setting. ===*/
	_gsCtrlParam.mode		= 0;	/* send */
	_gsCtrlParam.addr		= addr;
	_gsCtrlParam.addr_size	= addr_size;
	_gsCtrlParam.data		= data;
	_gsCtrlParam.data_size	= data_size;
	_gsCtrlParam.cnt		= 0;
	_gsCtrlParam.callBack	= func;
	_gsCtrlParam.errStat	= 0;
	_gsCtrlParam.status		= 0;

	if( (_gsCtrlParam.addr_size == 0) && (_gsCtrlParam.data_size == 0) ){
		return(I2C_R_TRANS_FIN);
	}
	/*=== I2C bus0 status check ===*/
	errStat = (unsigned char)( I2C0STAT & (unsigned char)I2C0STAT_I20BB  );
	if( errStat == (unsigned char)I2C0STAT_I20BB ){
		return ( I2C_R_BUS_BUSY );
	}

	/*=== transmit a adddress, and it is worked to start. ===*/
	_gsCtrlParam.status = I2C_SEND_SLAVE_ADDRESS;

	I2C0SA = (unsigned char)( slave_adr << 1 );	/* send mode */
	I2C0CON = (unsigned char)I2C0CON_I20ST;		/* Start condition */
	return ( I2C_R_TRANS_START_OK );
}

/*******************************************************************************
	Routine Name:	i2c_startReceive
	Form:			int i2c_startReceive( unsigned char *data,unsigned int size,unsigned char address,cbfI2c func)
	Parameters:		unsigned char *data : pointer to area where the receive data is stored
					unsigned int size : receive buffer size (the unit is byte)
					unsigned char slave_adr : destination device address
					cbfI2c func : callback function
	Return value:	int
						I2C_R_TRANS_START_OK(=0)	: transmission start
						I2C_R_BUS_BUSY(=-1)			: I2c bus is busy
	Description:	start to receive the data
******************************************************************************/
int i2c_startReceive(unsigned char slave_adr, unsigned char *addr, unsigned int addr_size, 
	unsigned char *data, unsigned int data_size, cbfI2c func )
{
	unsigned char errStat;

	/*===	Reception mode setting	===*/
	/*=== Transmission of a message system order parameter setting. ===*/
	_gsCtrlParam.mode		= 1;	/* receive */
	_gsCtrlParam.addr		= addr;
	_gsCtrlParam.addr_size	= addr_size;
	_gsCtrlParam.data		= data;
	_gsCtrlParam.data_size	= data_size;
	_gsCtrlParam.cnt		= 0;
	_gsCtrlParam.callBack	= func;
	_gsCtrlParam.errStat	= 0;
	_gsCtrlParam.status		= 0;

	if( (_gsCtrlParam.addr_size == 0) && (_gsCtrlParam.data_size == 0) ){
		return(I2C_R_TRANS_FIN);
	}
	/*=== I2C bus0 status check ===*/
	errStat = (unsigned char)( I2C0STAT & (unsigned char)I2C0STAT_I20BB  );
	if( errStat == (unsigned char)I2C0STAT_I20BB ){
		return ( I2C_R_BUS_BUSY );
	}
	/*=== I receive it, and it is worked to start. ===*/
	_gsCtrlParam.status = I2C_SEND_SLAVE_ADDRESS;
	if(_gsCtrlParam.addr_size == 0){
		I2C0SA = (unsigned char)( ( slave_adr << 1 ) | I2C0SA_I20RW );		/* Receive mode */
	}
	else{
		I2C0SA = (unsigned char)( ( slave_adr << 1 )/* | I2C0SA_I20RW*/ );	/* Send mode */
	}
		I2C0CON = (unsigned char)I2C0CON_I20ST;	/* Start condition */
	return ( I2C_R_TRANS_START_OK );
}

/*******************************************************************************
	Routine Name:	i2c_continue
	Form:			int i2c_continue( void )
	Parameters:		none
	Return value:	int
						I2C_R_TRANS_FIN(=1)      : send and receive is finished
						I2C_R_TRANS_CONT_OK(=0)  : send and receive is continued (success)
						I2C_R_TRANS_CONT_NG(=-1) : send and receive is continued (failure)
						I2C_R_TRANS_FIN_NG(=-2)  : send and receive is finished (failure)
	Description:	process to continue send and receive
******************************************************************************/
int i2c_continue( void )
{
	unsigned char i2c0stat;
	unsigned char setbit;
	cbfI2c callbackFunc;

	i2c0stat = I2C0STAT;
	switch(_gsCtrlParam.status){
		case I2C_SEND_SLAVE_ADDRESS:
			/* transmission error check */
			if((i2c0stat&I2C0STAT_I20ER) == I2C0STAT_I20ER){
				_gsCtrlParam.status = I2C_TRANS_END;
				_gsCtrlParam.errStat = I2C_ERR_SEND_ERR;
				I2C0CON = (unsigned char)0x00;	/* stop i2c */
				if( _gsCtrlParam.callBack != (void *)0 ){
					callbackFunc = _gsCtrlParam.callBack;
					_gsCtrlParam.callBack = (void *)0;
					callbackFunc( _gsCtrlParam.cnt, _gsCtrlParam.errStat );
				}
				return ( I2C_R_TRANS_FIN );
			}
			/* NACK reception check */
			else if((i2c0stat&I2C0STAT_I20ACR) == I2C0STAT_I20ACR){
				_gsCtrlParam.status = I2C_TRANS_END;
				_gsCtrlParam.errStat = I2C_ERR_ACR;
				I2C0CON = (unsigned char)I2C0CON_I20SP;	/* Stop condition */
			}
			/* Slave address transmission success */
			else{
				if(_gsCtrlParam.addr_size != 0){
					_gsCtrlParam.status = I2C_SEND_ADDRESS;
					I2C0TD = (unsigned char)*_gsCtrlParam.addr;
					_gsCtrlParam.addr++;
					_gsCtrlParam.addr_size--;
					I2C0CON = (unsigned char)I2C0CON_I20ST;	/* i2c start */
				}
				else{
					if(_gsCtrlParam.mode != 0 ){
						_gsCtrlParam.status = I2C_RECEIVE_DATA;
						setbit = I2C0CON_I20ST;
						if( ( _gsCtrlParam.data_size - 1) == _gsCtrlParam.cnt ){
							setbit |= (unsigned char)I2C0CON_I20ACT;
						}
						I2C0CON = setbit;
					}
					else{
						_gsCtrlParam.status = I2C_SEND_DATA;
						I2C0TD = (unsigned char)*_gsCtrlParam.data;
						_gsCtrlParam.data++;
						_gsCtrlParam.cnt++;
						I2C0CON = (unsigned char)I2C0CON_I20ST;
					}
				}
			}
			return(I2C_R_TRANS_CONT_OK);

		case I2C_SEND_ADDRESS:
			if((i2c0stat&I2C0STAT_I20ACR) == I2C0STAT_I20ACR){
				_gsCtrlParam.status = I2C_TRANS_END;
				_gsCtrlParam.errStat = I2C_ERR_ACR;
				I2C0CON = (unsigned char)I2C0CON_I20SP;	/* Stop condition */
			}
			else{
				if( _gsCtrlParam.addr_size != 0 ){
					I2C0TD = (unsigned char)*_gsCtrlParam.addr;
					_gsCtrlParam.addr++;
					_gsCtrlParam.addr_size--;
					I2C0CON = (unsigned char)I2C0CON_I20ST;	/* i2c start */
				}
				/* Address transmission success */
				else{
					if(_gsCtrlParam.data_size == 0){
						_gsCtrlParam.status = I2C_TRANS_END;
						I2C0CON = (unsigned char)I2C0CON_I20SP;	/* Stop condition */
					}
					else{
						if(_gsCtrlParam.mode != 0 ){/* receive mode */
							_gsCtrlParam.status = I2C_SEND_SLAVE_ADDRESS;
							I20RW = 1;		/* Receive mode */
							I20RS = 1;		/* Restart condition */
						}
						else{/* send mode */
							_gsCtrlParam.status = I2C_SEND_DATA;
							I2C0TD = (unsigned char)*_gsCtrlParam.data;
							_gsCtrlParam.data++;
							_gsCtrlParam.cnt++;
							I2C0CON = (unsigned char)I2C0CON_I20ST;
						}
					}
				}
			}
			return ( I2C_R_TRANS_CONT_OK );

		case I2C_SEND_DATA:
			if((i2c0stat&I2C0STAT_I20ACR) == I2C0STAT_I20ACR){
				_gsCtrlParam.status = I2C_TRANS_END;
				_gsCtrlParam.errStat = I2C_ERR_ACR;
				I2C0CON = (unsigned char)I2C0CON_I20SP;	/* Stop condition */
			}
			else if( _gsCtrlParam.data_size != _gsCtrlParam.cnt ){
				I2C0TD = (unsigned char)*_gsCtrlParam.data;
				_gsCtrlParam.data++;
				_gsCtrlParam.cnt++;
				I2C0CON = (unsigned char)I2C0CON_I20ST;
			}
			else{
				_gsCtrlParam.status = (unsigned char)I2C_TRANS_END;
				/*---	Stop condition send ?	---*/
				I2C0CON = (unsigned char)I2C0CON_I20SP;	/* Stop condition */
			}
			return ( I2C_R_TRANS_CONT_OK );

		case I2C_RECEIVE_DATA:
			*_gsCtrlParam.data = I2C0RD;
			_gsCtrlParam.data++;
			_gsCtrlParam.cnt++;
			if( _gsCtrlParam.data_size != _gsCtrlParam.cnt ){
				setbit = (unsigned char)I2C0CON_I20ST;
				if( ( _gsCtrlParam.data_size - 1) == _gsCtrlParam.cnt ){
					setbit |= (unsigned char)I2C0CON_I20ACT;
				}
				I2C0CON = setbit;
			}
			else{
				_gsCtrlParam.status = (unsigned char)I2C_TRANS_END;
				I2C0CON = (unsigned char)I2C0CON_I20SP;	/* Stop condition */
			}
			return(I2C_R_TRANS_CONT_OK);

		case I2C_TRANS_END:
		default:
			if( _gsCtrlParam.callBack != (void *)0 ){
				callbackFunc = _gsCtrlParam.callBack;
				_gsCtrlParam.callBack = (void *)0;
				callbackFunc( _gsCtrlParam.cnt, _gsCtrlParam.errStat );
			}
			break;
	}
	return ( I2C_R_TRANS_FIN );
}

/*******************************************************************************
	Routine Name:	i2c_stop
	Form:			void i2c_stop( void )
	Parameters:		none
	Return value:	void
	Description:	stop to send and receive
******************************************************************************/
void i2c_stop( void )
{
	I20ST = 0;
	_gsCtrlParam.mode		= 0;
	_gsCtrlParam.addr		= (void *)0;
	_gsCtrlParam.addr_size	= 0;
	_gsCtrlParam.data		= (void *)0;
	_gsCtrlParam.data_size	= 0;
	_gsCtrlParam.cnt		= 0;
	_gsCtrlParam.callBack	= (void *)0;
	_gsCtrlParam.errStat	= 0;
	_gsCtrlParam.status		= I2C_TRANS_END;
}

/*******************************************************************************
	Routine Name:	i2c_checkIRQ
	Form:			int i2c_checkIRQ( void )
	Parameters:		none
	Return value:	int
						I2C_R_IRQ(=1)     : interrupt request is set
						I2C_R_NON_IRQ(=0) : interrupt request is not set
	Description:	check interrupt request
******************************************************************************/
int i2c_checkIRQ( void )
{
	unsigned char qua0;
	int ret;
	
	qua0 = (unsigned char)( IRQ2 & (unsigned char)IRQ2_QI2C0 );
	if( qua0 == (unsigned char)IRQ2_QI2C0 ){
		ret = ( I2C_R_IRQ );
	}
	else{
		ret = ( I2C_R_NON_IRQ );
	}
	
	return ret;
}

/*******************************************************************************
	Routine Name:	i2c_clearIRQ
	Form:			void i2c_clearIRQ( void )
	Parameters:		none
	Return value:	void
	Description:	clear interrupt request
******************************************************************************/
void i2c_clearIRQ( void )
{
//#ifndef _ML610Q419 //rldp
	//QI2C0 = 0;
//#else
	QI2CM = 0;
//#endif
}

/*******************************************************************************
	Routine Name:	i2c_getTransSize
	Form:			unsigned int i2c_getTransSize( void )
	Parameters:		none
	Return value:	unsigned int
						size of data which is sent or received
	Description:	get size of data which is sent or received
******************************************************************************/
unsigned int i2c_getTransSize( void )
{
	return _gsCtrlParam.cnt;
}

/*############################################################################*/
/*#                              Subroutine                                  #*/
/*############################################################################*/
#endif

