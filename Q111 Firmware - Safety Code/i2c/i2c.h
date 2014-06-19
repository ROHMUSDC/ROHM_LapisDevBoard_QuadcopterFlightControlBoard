/*****************************************************************************
	i2c.h

	Copyright (C) 2008 LAPIS Semiconductor Co., Ltd.
	All rights reserved.

	LAPIS Semiconductor shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.09.26  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
******************************************************************************/
#ifndef _NO_I2C_MODE
#ifndef _I2C_H_
#define _I2C_H_

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*=== Parameter value. ===*/
#define I2C_SYN_OFF			( 0 )		/* handshake function : don't use				*/
#define I2C_SYN_ON			( 1 )		/* handshake function : use			*/
#define I2C_MOD_STD			( 0 )		/* transmission rate : standard mode(100kHz)				*/
#define I2C_MOD_FST			( 1 )		/* transmission rate : fast mode(400kHz)				*/

/*=== Return value. ===*/
#define I2C_R_OK				(  0 )	/* OK												*/
#define I2C_R_ERR_SYN			( -1 )	/* improper choice of syn							*/
#define I2C_R_ERR_MODE			( -2 )	/* improper choice of transmission rate mode		*/
#define I2C_R_ERR_FREQ			( -3 )	/* improper choice of HCLOCK frequency				*/
#define I2C_R_TRANS_START_OK	(  0 )	/* send and receive is started (success)			*/
#define I2C_R_BUS_BUSY			( -1 )	/* I2c bus is busy									*/
#define I2C_R_TRANS_FIN			(  1 )	/* send and receive is finished						*/
#define I2C_R_TRANS_CONT_OK		(  0 )	/* send and receive is continued (success)			*/
#define I2C_R_TRANS_CONT_NG		( -1 )	/* send and receive is continued (failure)			*/
#define I2C_R_TRANS_FIN_NG		( -2 )	/* send and receive is finished (failure)			*/
#define I2C_R_IRQ				(  1 )	/* interrupt request is set							*/
#define I2C_R_NON_IRQ			(  0 )	/* interrupt request is not set						*/

/*=== Error value ===*/
#define I2C_ERR_ACR				(  1 )
#define I2C_ERR_SEND_ERR		(  2 )


/*=== callback function ===*/
typedef void (*cbfI2c)( unsigned int size, unsigned char errStat );


/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
int 			i2c_init( unsigned char mode, unsigned short kHz, unsigned char syn );
int				i2c_startSend(unsigned char slave_adr, unsigned char *addr, unsigned int addr_size, 
					unsigned char *data, unsigned int data_size, cbfI2c func );
int				i2c_startReceive(unsigned char slave_adr, unsigned char *addr, unsigned int addr_size, 
					unsigned char *data, unsigned int data_size, cbfI2c func );
int				i2c_continue( void );
void			i2c_stop( void );
int				i2c_checkIRQ( void );
void			i2c_clearIRQ( void );
unsigned int	i2c_getTransSize( void );


#endif /*_I2C_H_*/
#endif
