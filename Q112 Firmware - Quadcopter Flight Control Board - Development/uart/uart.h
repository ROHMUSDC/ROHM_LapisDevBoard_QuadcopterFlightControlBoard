/*****************************************************************************
	uart.h

	Copyright (C) 2013 LAPIS Semiconductor Co., Ltd.
	All rights reserved.

	LAPIS SEMICONDUCTOR shall not be liable for any direct, indirect, 
	consequential or incidental damages arising from using or modifying this 
	program.

    History
    2008.08.20  ver.1.00
    2008.10.17  ver.1.20
    2008.11.20  ver.1.30
    2009.12.23  ver.1.40
    2013.04.22  ver.1.50 //Modified for Q100 Series
******************************************************************************/
#ifndef _UART_H_
#define _UART_H_

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*=== Parameter value. ===*/
#define UART_CS_LSCLK		( 0 )		/* the clock oscillator inputted into baud rate generator : LSCLK		*/
#define UART_CS_LSCLK2		( 1 )		/* the clock oscillator inputted into baud rate generator : LSCLK*2	*/
#define UART_CS_HSCLK		( 2 )		/* the clock oscillator inputted into baud rate generator : HSCLK		*/
#define UART_BR_2400BPS		( 2400 )	/* baud rate : 2400bps			*/
#define UART_BR_4800BPS		( 4800 )	/* baud rate : 4800bps 			*/
#define UART_BR_9600BPS		( 9600 )	/* baud rate : 9600bps			*/
#define UART_BR_19200BPS	( 19200 )	/* baud rate : 19200bps			*/
#define UART_BR_38400BPS	( 38400 )	/* baud rate : 38400bps			*/
#define UART_BR_57600BPS	( 57600 )	/* baud rate : 57600bps			*/
#define UART_BR_115200BPS	( 115200 )	/* baud rate : 115200bps		*/
#define UART_BR_230400BPS	( 230400 )	/* baud rate : 230400bps		*/
#define UART_BR_256000BPS	( 256000 )	/* baud rate : 256000bps		*/
#define UART_BR_512000BPS	( 512000 )	/* baud rate : 512000bps		*/
#define UART_LG_8BIT		( 0 )		/* data length : 8bit			*/
#define UART_LG_7BIT		( 1 )		/* data length : 7bit			*/
#define UART_LG_6BIT		( 2 )		/* data length : 6bit			*/
#define UART_LG_5BIT		( 3 )		/* data length : 5bit			*/
#define UART_PT_EVEN		( 0 )		/* parity bit  : even			*/
#define UART_PT_ODD		( 1 )		/* parity bit  : odd			*/
#define UART_PT_NON		( 2 )		/* parity bit  : none			*/
#define UART_STP_1BIT		( 0 )		/* stop bit    : 1bit			*/
#define UART_STP_2BIT		( 1 )		/* stop bit    : 2bit			*/
#define UART_NEG_POS		( 0 )		/* logical value : positive		*/
#define UART_NEG_NEG		( 1 )		/* logical value : negative		*/
#define UART_DIR_LSB		( 0 )		/* endian : LSB first			*/
#define UART_DIR_MSB		( 1 )		/* endian : MSB first			*/

/*=== Return value. ===*/
#define UART_R_OK				(  0 )	/* OK									*/
#define UART_R_ERR_CS			( -1 )	/* improper choice of the clock oscillator		*/
#define UART_R_ERR_BR			( -2 )	/* improper choice of baud rate				*/
#define UART_R_ERR_LG			( -3 )	/* data length is out of range				*/
#define UART_R_ERR_PT			( -4 )	/* parity setting is out of range				*/
#define UART_R_ERR_STP			( -5 )	/* stop bit length is out of range				*/
#define UART_R_ERR_NEG			( -6 )	/* improper setting (positive logic/negative logic)	*/
#define UART_R_ERR_DIR			( -7 )	/* improper setting of significant bit (LSB/MSB)	*/
#define UART_R_TRANS_FIN		(  1 )	/* send and receive is finished				*/
#define UART_R_TRANS_CONT_OK		(  0 )	/* send and receive is continued (success)		*/
#define UART_R_TRANS_CONT_NG		( -1 )	/* send and receive is continued (failure)		*/
#define UART_R_TRANS_FIN_NG		( -2 )	/* send and receive is finished (failure)			*/
#define UART_R_IRQ			(  1 )	/* interrupt request is set					*/
#define UART_R_NON_IRQ			(  0 )	/* interrupt request is not set				*/


/*=== setting parameter for UART ===*/
typedef struct {
	unsigned long	br;	/* baud rate						*/
	unsigned char	lg;	/* data length						*/
	unsigned char	pt;	/* parity bit setting (even/odd/none)		*/
	unsigned char	stp;	/* stop bit length					*/
	unsigned char	neg;	/* logical value setting (positive/negative)	*/
	unsigned char	dir;	/* endian setting (LSB first/MSB first)		*/
} tUartSetParam;

/*=== callback function ===*/
typedef void (*cbfUart)( unsigned int size, unsigned char errStat );


/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
int			uart_init( unsigned char cs, unsigned short kHz , const tUartSetParam *prm );
void			uart_startSend( unsigned char *data, unsigned int size, cbfUart func );
void			uart_startReceive( unsigned char *data,unsigned int size, cbfUart func );
int			uart_continue( void );
void			uart_stop( void );
int			uart_checkIRQ( void );
void			uart_clearIRQ( void );
unsigned int	uart_getTransSize( void );

void 			uart_ErrSet( unsigned char status );
unsigned char 	uart_ErrGet( void );
void 			uart_ErrClr( void );

void 			uart_PortSet( void );
void 			uart_PortClear( void );

void 			uartSendStr( char* str, unsigned char num );
void 			_send_byte(unsigned char c);

#endif /*_UART_H_*/

