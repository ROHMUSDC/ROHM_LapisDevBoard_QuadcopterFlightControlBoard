;; Compile Options : /TML610112 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Iuart /Ii2c /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : uart.c

	type (ML610112) 
	model small, near
	$$NVARuart segment data 2h #0h
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$uart_ErrClr$uart segment code 2h #0h
	$$uart_ErrGet$uart segment code 2h #0h
	$$uart_ErrSet$uart segment code 2h #0h
	$$uart_PortClear$uart segment code 2h #0h
	$$uart_PortSet$uart segment code 2h #0h
	$$uart_checkIRQ$uart segment code 2h #0h
	$$uart_clearIRQ$uart segment code 2h #0h
	$$uart_continue$uart segment code 2h #0h
	$$uart_getTransSize$uart segment code 2h #0h
	$$uart_init$uart segment code 2h #0h
	$$uart_startReceive$uart segment code 2h #0h
	$$uart_startSend$uart segment code 2h #0h
	$$uart_stop$uart segment code 2h #0h
CVERSION 3.41.8
CGLOBAL 01H 02H 0000H "uart_getTransSize" 08H 02H 08H 00H 80H 00H 00H 00H 01H
CGLOBAL 01H 03H 0000H "uart_PortSet" 08H 02H 0CH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_startReceive" 08H 02H 03H 00H 82H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_init" 08H 02H 01H 00H 83H 12H 00H 00H 01H
CGLOBAL 01H 03H 0000H "uart_checkIRQ" 08H 02H 06H 00H 80H 00H 00H 00H 01H
CGLOBAL 01H 03H 0000H "uart_clearIRQ" 08H 02H 07H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_ErrClr" 08H 02H 0BH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 02H 0000H "uart_ErrGet" 08H 02H 0AH 00H 80H 00H 00H 00H 00H
CGLOBAL 01H 03H 0000H "uart_ErrSet" 08H 02H 09H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_stop" 08H 02H 05H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_startSend" 08H 02H 02H 00H 82H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "uart_continue" 08H 02H 04H 00H 81H 04H 00H 00H 01H
CGLOBAL 01H 03H 0000H "uart_PortClear" 08H 02H 0DH 00H 80H 00H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0002H 0005H 0000000AH "_Notag"
CSTRUCTMEM 42H 00000002H 00000000H "data" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000002H "size" 02H 00H 01H
CSTRUCTMEM 42H 00000002H 00000004H "cnt" 02H 00H 01H
CSTRUCTMEM 43H 00000002H 00000006H "callBack" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H
CSTRUCTMEM 42H 00000001H 00000008H "errStat" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0001H 0006H 0000000AH "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "br" 02H 00H 02H
CSTRUCTMEM 42H 00000001H 00000004H "lg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000005H "pt" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000006H "stp" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000007H "neg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000008H "dir" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "tUartCtrlParam" 04H 00H 05H 02H 00H
CTYPEDEF 0000H 0000H 43H "tUartSetParam" 04H 00H 05H 01H 00H
CTYPEDEF 0000H 0000H 43H "cbfUart" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CSGLOBAL 42H 0001H "_Err_Status" 02H 00H 00H
CSGLOBAL 43H 000AH "_gsCtrlParam" 04H 00H 05H 02H 00H
CFILE 0001H 00000023H "main\\mcu.h"
CFILE 0002H 0000085AH "main\\ML610112.H"
CFILE 0003H 0000006BH "uart\\uart.h"
CFILE 0004H 00000027H "common\\common.h"
CFILE 0000H 0000027CH "uart\\uart.c"

	rseg $$uart_init$uart
CFUNCTION 1

_uart_init	:
CBLOCK 1 1 208

;;{
CLINEA 0000H 0001H 00D0H 0001H 0001H
	push	lr
	push	fp
	mov	fp,	sp
	push	bp
	push	er8
	push	er4
	mov	r8,	r0
CBLOCK 1 2 208
CRET 0008H
CARGUMENT 46H 0001H 001CH "cs" 02H 00H 00H
CARGUMENT 46H 0002H 0025H "kHz" 02H 00H 01H
CARGUMENT 41H 0002H 0004H "prm" 06H 03H 00H 00H 05H 01H 00H
CLOCAL 46H 0004H 2726H 0002H "br_clk" 02H 00H 02H
CLOCAL 46H 0004H 2726H 0002H "br_cnt" 02H 00H 02H
CLOCAL 46H 0001H 001DH 0002H "setbit" 02H 00H 00H

;;	switch( (int)cs ){		//BAUD RATE CLOCK SET HERE...
CLINEA 0000H 0001H 00D6H 0002H 0032H
CBLOCK 1 3 214
	cmp	r0,	#00h
	beq	_$L6

;;	switch( (int)cs ){		//BAUD RATE CLOCK SET HERE...
CLINEA 0000H 0000H 00D6H 0002H 0032H
	cmp	r0,	#01h
	bne	_$M1
	b	_$L7
_$M1 :

;;	switch( (int)cs ){		//BAUD RATE CLOCK SET HERE...
CLINEA 0000H 0000H 00D6H 0002H 0032H
	cmp	r0,	#02h
	bne	_$M2
	b	_$L8
_$M2 :

;;			return ( UART_R_ERR_CS );		  // else CS error
CLINEA 0000H 0001H 00E5H 0004H 0030H
	mov	er0,	#-1
CBLOCKEND 1 3 230
CBLOCKEND 1 2 319

;;}
CLINEA 0000H 0001H 013FH 0001H 0001H
_$L0 :
	pop	er4
	pop	er8
	pop	bp
	mov	sp,	fp
	pop	fp
	pop	pc

;;		case UART_CS_LSCLK:
CLINEA 0000H 0001H 00D8H 0003H 0015H
_$L6 :

;;			br_clk = (unsigned long)32768;	  // i.e.: 32.768 kHz
CLINEA 0000H 0001H 00D9H 0004H 0037H
	mov	r0,	#00h
	mov	r1,	#080h
	mov	er2,	#0 

;;	} 
CLINEA 0000H 0000H 00E6H 0002H 0003H
_$L4 :

;;	br_cnt = br_clk / prm->br;
CLINEA 0000H 0001H 00E7H 0002H 001BH
	l	bp,	4[fp]
	push	xr0
	l	er0,	[bp]
	l	er2,	2[bp]
	push	xr0
	bl	__uldivu8sw
	add	sp,	#4 
	pop	xr0

;;	if( br_cnt == 0UL ){			//If Baud Rate Count = zero...Return Baud Rate Error Flag
CLINEA 0000H 0001H 00E8H 0002H 0051H
	cmp	r0,	#00h
	cmpc	r1,	#00h
	cmpc	r2,	#00h
	cmpc	r3,	#00h
	bne	_$L9
CBLOCK 1 4 232

;;		return ( UART_R_ERR_BR );
CLINEA 0000H 0001H 00E9H 0003H 001BH
	mov	er0,	#-2
	bal	_$L0
CBLOCKEND 1 4 234

;;	}
CLINEA 0000H 0000H 00EAH 0002H 0002H
_$L9 :

;;	br_cnt -= 1UL;
CLINEA 0000H 0001H 00EBH 0002H 000FH
	add	er0,	#-1
	mov	er4,	er0

;;	if( prm->lg > (unsigned char)UART_LG_5BIT ){
CLINEA 0000H 0001H 00EEH 0002H 002DH
	l	r0,	4[bp]
	cmp	r0,	#03h
	ble	_$L11
CBLOCK 1 5 238

;;		return ( UART_R_ERR_LG );
CLINEA 0000H 0001H 00EFH 0003H 001BH
	mov	er0,	#-3
	bal	_$L0
CBLOCKEND 1 5 240

;;	}
CLINEA 0000H 0000H 00F0H 0002H 0002H
_$L11 :

;;	if( prm->pt > (unsigned char)UART_PT_NON ){
CLINEA 0000H 0001H 00F1H 0002H 002CH
	l	r0,	5[bp]
	cmp	r0,	#02h
	ble	_$L13
CBLOCK 1 6 241

;;		return ( UART_R_ERR_PT );
CLINEA 0000H 0001H 00F2H 0003H 001BH
	mov	er0,	#-4
	bal	_$L0
CBLOCKEND 1 6 243

;;	}
CLINEA 0000H 0000H 00F3H 0002H 0002H
_$L13 :

;;	if( prm->stp > (unsigned char)UART_STP_2BIT ){
CLINEA 0000H 0001H 00F4H 0002H 002FH
	l	r0,	6[bp]
	cmp	r0,	#01h
	ble	_$L15
CBLOCK 1 7 244

;;		return ( UART_R_ERR_STP );
CLINEA 0000H 0001H 00F5H 0003H 001CH
	mov	er0,	#-5
	bal	_$L0
CBLOCKEND 1 7 246

;;	}
CLINEA 0000H 0000H 00F6H 0002H 0002H
_$L15 :

;;	if( prm->neg > (unsigned char)UART_NEG_NEG ){
CLINEA 0000H 0001H 00F7H 0002H 002EH
	l	r0,	7[bp]
	cmp	r0,	#01h
	ble	_$L17
CBLOCK 1 8 247

;;		return ( UART_R_ERR_NEG );
CLINEA 0000H 0001H 00F8H 0003H 001CH
	mov	er0,	#-6
	bal	_$L0
CBLOCKEND 1 8 249

;;	}
CLINEA 0000H 0000H 00F9H 0002H 0002H
_$L17 :

;;	if( prm->dir > (unsigned char)UART_DIR_MSB ){
CLINEA 0000H 0001H 00FAH 0002H 002EH
	l	r0,	8[bp]
	cmp	r0,	#01h
	ble	_$L19
CBLOCK 1 9 250

;;		return ( UART_R_ERR_DIR );
CLINEA 0000H 0001H 00FBH 0003H 001CH
	mov	er0,	#-7
	bal	_$L0
CBLOCKEND 1 9 252

;;	}
CLINEA 0000H 0000H 00FCH 0002H 0002H
_$L19 :

;;		_gsCtrlParam.data		= (void *)0;
CLINEA 0000H 0001H 0100H 0003H 0021H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam

;;		_gsCtrlParam.size		= 0;
CLINEA 0000H 0001H 0101H 0003H 0019H
	st	er0,	NEAR __gsCtrlParam+02h

;;		_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 0102H 0003H 0018H
	st	er0,	NEAR __gsCtrlParam+04h

;;		_gsCtrlParam.callBack	= (void *)0;
CLINEA 0000H 0001H 0103H 0003H 0024H
	st	er0,	NEAR __gsCtrlParam+06h

;;		_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 0104H 0003H 001BH
	st	r0,	NEAR __gsCtrlParam+08h

;;		U0EN = 0;
CLINEA 0000H 0001H 0108H 0003H 000BH
	rb	0f291h.0

;;		uart_PortClear();
CLINEA 0000H 0001H 010BH 0003H 0013H
	bl	_uart_PortClear

;;		setbit = UA0MOD0;
CLINEA 0000H 0001H 010EH 0003H 0013H
	l	r0,	0f292h
	mov	r9,	r0

;;		setbit &= (unsigned char)( ~(UA0MOD0_U0CK0|UA0MOD0_U0CK1) );
CLINEA 0000H 0001H 010FH 0003H 003EH
	and	r0,	#0f9h
	mov	r9,	r0

;;		setbit |= (unsigned char)( cs << 1 );
CLINEA 0000H 0001H 0110H 0003H 0027H
	mov	r0,	r8
	sll	r0,	#01h
	mov	r1,	r9
	or	r1,	r0

;;		setbit |= (unsigned char)UA0MOD0_U0RSEL;
CLINEA 0000H 0001H 0111H 0003H 002AH
	mov	r0,	r1
	or	r0,	#010h

;;		UA0MOD0 = setbit;
CLINEA 0000H 0001H 0112H 0003H 0013H
	st	r0,	0f292h

;;		U0RSEL = 0;
CLINEA 0000H 0001H 0113H 0003H 000DH
	rb	0f292h.4

;;		setbit = UA0MOD1;
CLINEA 0000H 0001H 0116H 0003H 0013H
	l	r0,	0f293h
	mov	r9,	r0

;;		setbit &= (unsigned char)( ~(UA0MOD1_U0LG0|UA0MOD1_U0LG1|UA0MOD1_U0PT0|UA0MOD1_U0PT1|UA0MOD1_U0STP|UA0MOD1_U0NEG|UA0MOD1_U0DIR) );
CLINEA 0000H 0001H 0117H 0003H 0084H
	and	r0,	#080h
	mov	r9,	r0

;;			                   (prm->dir << 6) );
CLINEA 0000H 0001H 011CH 0017H 0028H
	l	bp,	4[fp]
	l	r0,	5[bp]
	sll	r0,	#02h
	l	r1,	4[bp]
	or	r1,	r0
	l	r0,	6[bp]
	sll	r0,	#04h
	or	r0,	r1
	l	r1,	7[bp]
	sll	r1,	#05h
	or	r1,	r0
	l	r0,	8[bp]
	sll	r0,	#06h
	or	r0,	r1
	mov	r1,	r9
	or	r1,	r0

;;		UA0MOD1 = setbit;
CLINEA 0000H 0001H 011DH 0003H 0013H
	st	r1,	0f293h

;;		UA0BRTL = (unsigned char)(br_cnt & 0x000000FF);
CLINEA 0000H 0001H 0120H 0003H 0031H
	st	r4,	0f294h

;;		setbit = UA0BRTH;
CLINEA 0000H 0001H 0123H 0003H 0013H
	l	r0,	0f295h
	mov	r9,	r0

;;		setbit &= (unsigned char)( ~(UA0BRTH_U0BR8|UA0BRTH_U0BR9|UA0BRTH_U0BR10|UA0BRTH_U0BR11) );
CLINEA 0000H 0001H 0124H 0003H 005CH
	and	r0,	#0f0h
	mov	r9,	r0

;;		setbit |= (unsigned char)( (br_cnt >> 8) & (UA0BRTH_U0BR8|UA0BRTH_U0BR9|UA0BRTH_U0BR10|UA0BRTH_U0BR11) );
CLINEA 0000H 0001H 0125H 0003H 006BH
	mov	r0,	r5
	and	r0,	#0fh
	mov	r1,	r9
	or	r1,	r0

;;		UA0BRTH = setbit;
CLINEA 0000H 0001H 0126H 0003H 0013H
	st	r1,	0f295h

;;		U0FER = 0;	// Clear Framing Error Flag to start...
CLINEA 0000H 0001H 0139H 0003H 0034H
	rb	0f296h.0

;;		U0OER = 0;	// Clear Overrun Error Flag to start...
CLINEA 0000H 0001H 013AH 0003H 0034H
	rb	0f296h.1

;;		U0PER = 0;	// Clear Parity Error Flag to start...
CLINEA 0000H 0001H 013BH 0003H 0033H
	rb	0f296h.2

;;		U0FUL = 0;	// Clear Buffer Full Flag to start...
CLINEA 0000H 0001H 013CH 0003H 0032H
	rb	0f296h.3

;;	return ( UART_R_OK );
CLINEA 0000H 0001H 013EH 0002H 0016H
	mov	er0,	#0 
	b	_$L0

;;		case UART_CS_LSCLK2:
CLINEA 0000H 0001H 00DCH 0003H 0016H
_$L7 :

;;			br_clk = (unsigned long)(32768 * 2);  // i.e.: 65.536 kHz
CLINEA 0000H 0001H 00DDH 0004H 003CH
	mov	er0,	#0 
	mov	er2,	#1 

;;			break;
CLINEA 0000H 0001H 00DEH 0004H 0009H
	b	_$L4

;;		case UART_CS_HSCLK:
CLINEA 0000H 0001H 00E0H 0003H 0015H
_$L8 :

;;			br_clk = (unsigned long)kHz * 1024UL; // i.e.: 8.192 MHz	
CLINEA 0000H 0001H 00E1H 0004H 003CH
	mov	er0,	er2
	mov	er2,	#0 
	sllc	r3,	#07h
	sllc	r2,	#07h
	sllc	r1,	#07h
	sll	r0,	#07h
	sllc	r3,	#03h
	sllc	r2,	#03h
	sllc	r1,	#03h
	sll	r0,	#03h

;;			break;
CLINEA 0000H 0001H 00E2H 0004H 0009H
	b	_$L4
CBLOCKEND 1 1 319
CFUNCTIONEND 1


	rseg $$uart_startSend$uart
CFUNCTION 2

_uart_startSend	:
CBLOCK 2 1 332

;;{
CLINEA 0000H 0001H 014CH 0001H 0001H
	push	fp
	mov	fp,	sp
	push	er8
	mov	er8,	er0
CBLOCK 2 2 332
CARGUMENT 46H 0002H 0028H "data" 04H 03H 00H 00H 00H
CARGUMENT 46H 0002H 0025H "size" 02H 00H 01H
CARGUMENT 43H 0002H 0002H "func" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H

;;		U0EN = 0;	// 0 = STOP communication...
CLINEA 0000H 0001H 014EH 0003H 0028H
	rb	0f291h.0

;;		U0IO = 0;	// The U0IO bit is used to select TX or RX Mode (0=TX Mode)
CLINEA 0000H 0001H 014FH 0003H 0047H
	rb	0f292h.0

;;		_gsCtrlParam.data		= data;	// pointer to area where the send/receive data is stored
CLINEA 0000H 0001H 0152H 0003H 0055H
	st	er0,	NEAR __gsCtrlParam

;;		_gsCtrlParam.size		= size;	// size of send/receive data
CLINEA 0000H 0001H 0153H 0003H 0039H
	st	er2,	NEAR __gsCtrlParam+02h

;;		_gsCtrlParam.cnt		= 0;		// size of data which is sent/received
CLINEA 0000H 0001H 0154H 0003H 0040H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+04h

;;		_gsCtrlParam.callBack	= func;	// callback function
CLINEA 0000H 0001H 0155H 0003H 0034H
	l	er0,	2[fp]
	st	er0,	NEAR __gsCtrlParam+06h

;;		_gsCtrlParam.errStat	= 0;		// error status
CLINEA 0000H 0001H 0156H 0003H 002CH
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+08h

;;	if( _gsCtrlParam.size > 0 ){	//If there is valid data to send...
CLINEA 0000H 0001H 0158H 0002H 0041H
	cmp	r2,	#00h
	cmpc	r3,	#00h
	ble	_$L22
CBLOCK 2 3 344

;;		UA0BUF = *data;		// Load the UART buffer with data to send
CLINEA 0000H 0001H 015AH 0003H 003CH
	l	r0,	[er8]
	st	r0,	0f290h

;;		_gsCtrlParam.data++;	// Increment pointer to area where the send/receive data is stored
CLINEA 0000H 0000H 015BH 0003H 0059H
	l	er0,	NEAR __gsCtrlParam
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam

;;		_gsCtrlParam.cnt++;	// Increment count for size of data which is sent/received 
CLINEA 0000H 0000H 015CH 0003H 0051H
	l	er0,	NEAR __gsCtrlParam+04h
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+04h

;;		U0EN = 1;			// 1 = Starts communication...
CLINEA 0000H 0001H 015DH 0003H 002CH
	sb	0f291h.0
CBLOCKEND 2 3 350

;;	} //EndIf
CLINEA 0000H 0000H 015EH 0002H 000AH
_$L22 :
CBLOCKEND 2 2 351

;;}
CLINEA 0000H 0001H 015FH 0001H 0001H
	pop	er8
	mov	sp,	fp
	pop	fp
	rt
CBLOCKEND 2 1 351
CFUNCTIONEND 2


	rseg $$uart_startReceive$uart
CFUNCTION 3

_uart_startReceive	:
CBLOCK 3 1 363

;;{
CLINEA 0000H 0001H 016BH 0001H 0001H
	push	fp
	mov	fp,	sp
CBLOCK 3 2 363
CARGUMENT 46H 0002H 0024H "data" 04H 03H 00H 00H 00H
CARGUMENT 46H 0002H 0025H "size" 02H 00H 01H
CARGUMENT 43H 0002H 0002H "func" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H

;;		U0EN = 0;	// 0 = STOP communication...
CLINEA 0000H 0001H 0170H 0003H 0028H
	rb	0f291h.0

;;		U0FER = 0;	// Clear Framing Error Flag to start...
CLINEA 0000H 0001H 0172H 0003H 0034H
	rb	0f296h.0

;;		U0OER = 0;	// Clear Overrun Error Flag to start...
CLINEA 0000H 0001H 0173H 0003H 0034H
	rb	0f296h.1

;;		U0PER = 0;	// Clear Parity Error Flag to start...
CLINEA 0000H 0001H 0174H 0003H 0033H
	rb	0f296h.2

;;		U0IO = 1;	// 1 = Receive mode
CLINEA 0000H 0001H 0175H 0003H 001FH
	sb	0f292h.0

;;		_gsCtrlParam.data		= data;	// pointer to area where the send/receive data is stored
CLINEA 0000H 0001H 0178H 0003H 0055H
	st	er0,	NEAR __gsCtrlParam

;;		_gsCtrlParam.size		= size;	// size of send/receive data
CLINEA 0000H 0001H 0179H 0003H 0039H
	st	er2,	NEAR __gsCtrlParam+02h

;;		_gsCtrlParam.cnt		= 0;		// size of data which is sent/received
CLINEA 0000H 0001H 017AH 0003H 0040H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+04h

;;		_gsCtrlParam.callBack	= func;	// callback function
CLINEA 0000H 0001H 017BH 0003H 0034H
	l	er0,	2[fp]
	st	er0,	NEAR __gsCtrlParam+06h

;;		_gsCtrlParam.errStat	= 0;		// error status
CLINEA 0000H 0001H 017CH 0003H 002CH
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+08h

;;	if( _gsCtrlParam.size > 0 ){
CLINEA 0000H 0001H 017EH 0002H 001DH
	cmp	r2,	#00h
	cmpc	r3,	#00h
	ble	_$L25
CBLOCK 3 3 382

;;		U0EN = 1;	// 1 = Starts communication...
CLINEA 0000H 0001H 0180H 0003H 002AH
	sb	0f291h.0
CBLOCKEND 3 3 385

;;	}
CLINEA 0000H 0000H 0181H 0002H 0002H
_$L25 :
CBLOCKEND 3 2 386

;;}
CLINEA 0000H 0001H 0182H 0001H 0001H
	mov	sp,	fp
	pop	fp
	rt
CBLOCKEND 3 1 386
CFUNCTIONEND 3


	rseg $$uart_continue$uart
CFUNCTION 4

_uart_continue	:
CBLOCK 4 1 400

;;{
CLINEA 0000H 0001H 0190H 0001H 0001H
	push	lr
	push	bp
CBLOCK 4 2 400
CRET 0002H
CLOCAL 46H 0001H 0014H 0002H "u0io" 02H 00H 00H
CLOCAL 46H 0001H 0014H 0002H "u0ful" 02H 00H 00H
CLOCAL 46H 0001H 0014H 0002H "u0en" 02H 00H 00H
CLOCAL 46H 0001H 0016H 0002H "errStat" 02H 00H 00H
CLOCAL 47H 0002H 002AH 0002H "cbfTmpRX" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H
CLOCAL 47H 0002H 002AH 0002H "cbfTmpTX" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H

;;	u0io = (unsigned char)( UA0MOD0 & (unsigned char)UA0MOD0_U0IO );	// Load the variable with the SFR value
CLINEA 0000H 0001H 0198H 0002H 0069H
	l	r0,	0f292h
	and	r0,	#01h

;;	if( u0io == 0 ){							// IS UART in TX MODE? (0=TX; 1=RX mode)
CLINEA 0000H 0001H 019BH 0002H 0040H
	cmp	r0,	#00h
	bne	_$L28
CBLOCK 4 3 411

;;		if( _gsCtrlParam.size != _gsCtrlParam.cnt ){	// IF not all data has been sent...
CLINEA 0000H 0001H 019EH 0003H 0052H
	l	er0,	NEAR __gsCtrlParam+02h
	l	er2,	NEAR __gsCtrlParam+04h
	cmp	er0,	er2
	beq	_$L30
CBLOCK 4 4 414

;;			u0ful = (unsigned char)( UA0STAT & (unsigned char)UA0STAT_U0FUL ); //Load variable with SFR for UART Buffer
CLINEA 0000H 0001H 01A0H 0004H 006EH
	l	r0,	0f296h
	and	r0,	#08h

;;			if( u0ful == 0 ){ 				// IF there is no data in the transmit/receive buffer...
CLINEA 0000H 0001H 01A3H 0004H 0051H
	cmp	r0,	#00h
	bne	_$L32
CBLOCK 4 5 419

;;				UA0BUF = *_gsCtrlParam.data;		  // Load buffer with next data byte
CLINEA 0000H 0001H 01A4H 0005H 0046H
	l	bp,	NEAR __gsCtrlParam
	l	r0,	[bp]
	st	r0,	0f290h

;;				_gsCtrlParam.data++;			  // Increment pointer to area where the send/receive data is stored 
CLINEA 0000H 0000H 01A5H 0005H 0060H
	mov	er0,	bp
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam

;;				_gsCtrlParam.cnt++;			  // Increment count for size of data which is sent/received 
CLINEA 0000H 0000H 01A6H 0005H 0057H
	mov	er0,	er2
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+04h

;;				U0EN = 1;					  // 1 = Starts communication...DATA IS SENT HERE!
CLINEA 0000H 0001H 01A7H 0005H 0044H
	sb	0f291h.0

;;				return ( UART_R_TRANS_CONT_OK );	  // SEND is CONTINUED (SUCCESS)
CLINEA 0000H 0001H 01A8H 0005H 0045H
	mov	er0,	#0 
CBLOCKEND 4 5 425
CBLOCKEND 4 2 483

;;}
CLINEA 0000H 0001H 01E3H 0001H 0001H
_$L27 :
	pop	bp
	pop	pc
CBLOCKEND 4 3 483
CBLOCKEND 4 4 483

;;			else{							// ELSE IF there still is data in the transmit/receive buffer...
CLINEA 0000H 0000H 01AAH 0004H 004FH
_$L32 :
CBLOCK 4 6 426

;;				return ( UART_R_TRANS_CONT_NG );	  // SEND is CONTINUED (FAILURE)
CLINEA 0000H 0001H 01ABH 0005H 0045H
	mov	er0,	#-1
	bal	_$L27
CBLOCKEND 4 6 428

;;		else{				//If all data has been sent...
CLINEA 0000H 0000H 01AEH 0003H 0029H
_$L30 :
CBLOCK 4 7 430

;;			u0en = (unsigned char)( UA0CON & (unsigned char)UA0CON_U0EN );	//Load the variable with the SFR value
CLINEA 0000H 0001H 01B0H 0004H 0068H
	l	r0,	0f291h
	and	r0,	#01h

;;			if( u0en == 0 ){				//In transmit mode, this bit is automatically set to 0 at termination of transmission
CLINEA 0000H 0001H 01B1H 0004H 006CH
	cmp	r0,	#00h
	bne	_$L36
CBLOCK 4 8 433

;;				if( _gsCtrlParam.callBack != (void *)0 ){
CLINEA 0000H 0001H 01B4H 0005H 002DH
	l	er0,	NEAR __gsCtrlParam+06h
	beq	_$L38
CBLOCK 4 9 436

;;					cbfTmpTX = _gsCtrlParam.callBack;				//NEW 5/15/2013 - K. Bahar 
CLINEA 0000H 0001H 01B6H 0006H 0045H
	mov	bp,	er0

;;					_gsCtrlParam.callBack = (void *)0;				//NEW 5/15/2013 - K. Bahar 
CLINEA 0000H 0001H 01B7H 0006H 0046H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+06h

;;					cbfTmpTX( _gsCtrlParam.size, _gsCtrlParam.errStat );	//NEW 5/15/2013 - K. Bahar 
CLINEA 0000H 0001H 01B8H 0006H 0055H
	l	r2,	NEAR __gsCtrlParam+08h
	l	er0,	NEAR __gsCtrlParam+02h
	bl	bp
CBLOCKEND 4 9 442

;;				}//EndIf
CLINEA 0000H 0000H 01BAH 0005H 000CH
_$L38 :

;;				return ( UART_R_TRANS_FIN );		//SEND is FINISHED (SUCCESS)
CLINEA 0000H 0001H 01BBH 0005H 003EH
	mov	er0,	#1 
	bal	_$L27
CBLOCKEND 4 8 444

;;			}//EndIf
CLINEA 0000H 0000H 01BCH 0004H 000BH
_$L36 :

;;			return ( UART_R_TRANS_FIN_NG );		//SEND is FINISHED (FAILURE)
CLINEA 0000H 0001H 01BDH 0004H 0040H
	mov	er0,	#-2
	bal	_$L27
CBLOCKEND 4 7 446

;;	else{									// IS UART in RX MODE? (0=TX; 1=RX mode)
CLINEA 0000H 0000H 01C4H 0002H 0037H
_$L28 :
CBLOCK 4 10 452

;;		if( _gsCtrlParam.size != _gsCtrlParam.cnt ){	// If not all data has been sent...
CLINEA 0000H 0001H 01C6H 0003H 0052H
	l	er0,	NEAR __gsCtrlParam+02h
	l	er2,	NEAR __gsCtrlParam+04h
	cmp	er0,	er2
	beq	_$L47
CBLOCK 4 11 454

;;			errStat = (unsigned char)( UA0STAT & (unsigned char)(UA0STAT_U0FER|UA0STAT_U0OER|UA0STAT_U0PER) ); //Load variable with SFR for UART Error Flags
CLINEA 0000H 0001H 01C7H 0004H 0093H
	l	r0,	0f296h
	and	r0,	#07h
	mov	r2,	r0

;;			_gsCtrlParam.errStat |= errStat;
CLINEA 0000H 0001H 01C8H 0004H 0023H
	l	r0,	NEAR __gsCtrlParam+08h
	or	r0,	r2
	st	r0,	NEAR __gsCtrlParam+08h

;;				U0FER = 0;	// Clear Framing Error Flag...
CLINEA 0000H 0001H 01C9H 0005H 002DH
	rb	0f296h.0

;;				U0OER = 0;	// Clear Overrun Error Flag...
CLINEA 0000H 0001H 01CAH 0005H 002DH
	rb	0f296h.1

;;				U0PER = 0;	// Clear Parity Error Flag...
CLINEA 0000H 0001H 01CBH 0005H 002CH
	rb	0f296h.2

;;			*_gsCtrlParam.data = UA0BUF;	// Point to Buffer Data
CLINEA 0000H 0001H 01CDH 0004H 0037H
	l	bp,	NEAR __gsCtrlParam
	l	r0,	0f290h
	st	r0,	[bp]

;;				_gsCtrlParam.data++;	// Increment pointer to area where the send/receive data is stored 
CLINEA 0000H 0000H 01CEH 0005H 005CH
	l	er0,	NEAR __gsCtrlParam
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam

;;				_gsCtrlParam.cnt++;	// Increment count for size of data which is sent/received
CLINEA 0000H 0000H 01CFH 0005H 0052H
	l	er0,	NEAR __gsCtrlParam+04h
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+04h

;;			if( ( errStat & ( unsigned char )( UA0STAT_U0FER ) ) == 0 ) { //If NO Framing Error...
CLINEA 0000H 0001H 01D1H 0004H 0059H
	tb	r2.0
	bne	_$L43
CBLOCK 4 12 465

;;				if( _gsCtrlParam.size != _gsCtrlParam.cnt ){	// If not all data has been received...
CLINEA 0000H 0001H 01D3H 0005H 0058H
	l	er0,	NEAR __gsCtrlParam+02h
	l	er2,	NEAR __gsCtrlParam+04h
	cmp	er0,	er2
	beq	_$L47
CBLOCK 4 13 467

;;					return ( UART_R_TRANS_CONT_OK );		// RECEIVE is CONTINUED (SUCCESS)
CLINEA 0000H 0001H 01D4H 0006H 0048H
	mov	er0,	#0 
	b	_$L27
CBLOCKEND 4 13 469

;;				}
CLINEA 0000H 0000H 01D5H 0005H 0005H
CBLOCKEND 4 12 470

;;			} else {								// If there is a Framing Error...
CLINEA 0000H 0000H 01D6H 0004H 0034H
_$L43 :
CBLOCK 4 14 470

;;				uart_ErrSet( UA0STAT_U0FER );
CLINEA 0000H 0001H 01D8H 0005H 0021H
	mov	r0,	#01h
	bl	_uart_ErrSet
CBLOCKEND 4 14 473

;;			}
CLINEA 0000H 0000H 01D9H 0004H 0004H
_$L47 :
CBLOCKEND 4 11 474

;;		if( _gsCtrlParam.callBack != (void *)0 ){				
CLINEA 0000H 0001H 01DCH 0003H 002FH
	l	er0,	NEAR __gsCtrlParam+06h
	beq	_$L48
CBLOCK 4 15 476

;;			cbfTmpRX = _gsCtrlParam.callBack;				//Modified 5/15/2013 - K. Bahar 
CLINEA 0000H 0001H 01DDH 0004H 0048H
	mov	bp,	er0

;;			_gsCtrlParam.callBack = (void *)0;
CLINEA 0000H 0001H 01DEH 0004H 0025H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+06h

;;			cbfTmpRX( _gsCtrlParam.size, _gsCtrlParam.errStat );	//Modified 5/15/2013 - K. Bahar 
CLINEA 0000H 0001H 01DFH 0004H 0058H
	l	r2,	NEAR __gsCtrlParam+08h
	l	er0,	NEAR __gsCtrlParam+02h
	bl	bp
CBLOCKEND 4 15 480

;;		}
CLINEA 0000H 0000H 01E0H 0003H 0003H
_$L48 :

;;		return ( UART_R_TRANS_FIN );					//RECEIVE is FINISHED (SUCCESS)
CLINEA 0000H 0001H 01E1H 0003H 0042H
	mov	er0,	#1 
	b	_$L27
CBLOCKEND 4 10 482
CBLOCKEND 4 1 483
CFUNCTIONEND 4


	rseg $$uart_stop$uart
CFUNCTION 5

_uart_stop	:
CBLOCK 5 1 493

;;{
CLINEA 0000H 0001H 01EDH 0001H 0001H
CBLOCK 5 2 493

;;	U0EN = 0;
CLINEA 0000H 0001H 01EEH 0002H 000AH
	rb	0f291h.0

;;	_gsCtrlParam.data		= (void *)0;
CLINEA 0000H 0001H 01EFH 0002H 0020H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam

;;	_gsCtrlParam.size		= 0;
CLINEA 0000H 0001H 01F0H 0002H 0018H
	st	er0,	NEAR __gsCtrlParam+02h

;;	_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 01F1H 0002H 0017H
	st	er0,	NEAR __gsCtrlParam+04h

;;	_gsCtrlParam.callBack	= (void *)0;
CLINEA 0000H 0001H 01F2H 0002H 0023H
	st	er0,	NEAR __gsCtrlParam+06h

;;	_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 01F3H 0002H 001AH
	st	r0,	NEAR __gsCtrlParam+08h
CBLOCKEND 5 2 500

;;}
CLINEA 0000H 0001H 01F4H 0001H 0001H
	rt
CBLOCKEND 5 1 500
CFUNCTIONEND 5


	rseg $$uart_checkIRQ$uart
CFUNCTION 6

_uart_checkIRQ	:
CBLOCK 6 1 512

;;{
CLINEA 0000H 0001H 0200H 0001H 0001H
CBLOCK 6 2 512
CLOCAL 46H 0001H 0014H 0002H "qua0" 02H 00H 00H
CLOCAL 47H 0002H 0024H 0002H "ret" 02H 00H 01H

;;	qua0 = (unsigned char)( IRQ4 & (unsigned char)IRQ4_QUA0 );
CLINEA 0000H 0001H 0204H 0002H 003BH
	l	r0,	0f01ch
	and	r0,	#01h

;;	if( qua0 == 1 ){
CLINEA 0000H 0001H 0205H 0002H 0011H
	cmp	r0,	#01h
	bne	_$L52
CBLOCK 6 3 517

;;		ret = ( UART_R_IRQ );
CLINEA 0000H 0001H 0206H 0003H 0017H
	mov	er0,	#1 
CBLOCKEND 6 3 519

;;	else{
CLINEA 0000H 0001H 0208H 0002H 0006H
	rt
_$L52 :
CBLOCK 6 4 520

;;		ret = ( UART_R_NON_IRQ );
CLINEA 0000H 0001H 0209H 0003H 001BH
	mov	er0,	#0 
CBLOCKEND 6 4 522

;;	return ret;
CLINEA 0000H 0001H 020CH 0002H 000CH
CBLOCKEND 6 2 525

;;}
CLINEA 0000H 0000H 020DH 0001H 0001H
	rt
CBLOCKEND 6 1 525
CFUNCTIONEND 6


	rseg $$uart_clearIRQ$uart
CFUNCTION 7

_uart_clearIRQ	:
CBLOCK 7 1 535

;;{
CLINEA 0000H 0001H 0217H 0001H 0001H
CBLOCK 7 2 535

;;	QUA0 = 0;
CLINEA 0000H 0001H 0218H 0002H 000AH
	rb	0f01ch.0
CBLOCKEND 7 2 537

;;}
CLINEA 0000H 0001H 0219H 0001H 0001H
	rt
CBLOCKEND 7 1 537
CFUNCTIONEND 7


	rseg $$uart_getTransSize$uart
CFUNCTION 8

_uart_getTransSize	:
CBLOCK 8 1 548

;;{
CLINEA 0000H 0001H 0224H 0001H 0001H
CBLOCK 8 2 548

;;	return _gsCtrlParam.cnt;
CLINEA 0000H 0001H 0225H 0002H 0019H
	l	er0,	NEAR __gsCtrlParam+04h
CBLOCKEND 8 2 550

;;}
CLINEA 0000H 0000H 0226H 0001H 0001H
	rt
CBLOCKEND 8 1 550
CFUNCTIONEND 8


	rseg $$uart_ErrSet$uart
CFUNCTION 9

_uart_ErrSet	:
CBLOCK 9 1 561

;;{
CLINEA 0000H 0001H 0231H 0001H 0001H
	mov	r2,	r0
CBLOCK 9 2 561
CARGUMENT 46H 0001H 0016H "status" 02H 00H 00H

;;	_Err_Status |= status;
CLINEA 0000H 0001H 0232H 0002H 0017H
	l	r0,	NEAR __Err_Status
	or	r0,	r2
	st	r0,	NEAR __Err_Status
CBLOCKEND 9 2 563

;;}
CLINEA 0000H 0001H 0233H 0001H 0001H
	rt
CBLOCKEND 9 1 563
CFUNCTIONEND 9


	rseg $$uart_ErrGet$uart
CFUNCTION 10

_uart_ErrGet	:
CBLOCK 10 1 573

;;{
CLINEA 0000H 0001H 023DH 0001H 0001H
CBLOCK 10 2 573

;;	return( _Err_Status );
CLINEA 0000H 0001H 023EH 0002H 0017H
	l	r0,	NEAR __Err_Status
CBLOCKEND 10 2 575

;;}
CLINEA 0000H 0000H 023FH 0001H 0001H
	rt
CBLOCKEND 10 1 575
CFUNCTIONEND 10


	rseg $$uart_ErrClr$uart
CFUNCTION 11

_uart_ErrClr	:
CBLOCK 11 1 585

;;{
CLINEA 0000H 0001H 0249H 0001H 0001H
CBLOCK 11 2 585

;;	_Err_Status = 0;
CLINEA 0000H 0001H 024AH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __Err_Status
CBLOCKEND 11 2 587

;;}
CLINEA 0000H 0001H 024BH 0001H 0001H
	rt
CBLOCKEND 11 1 587
CFUNCTIONEND 11


	rseg $$uart_PortSet$uart
CFUNCTION 12

_uart_PortSet	:
CBLOCK 12 1 597

;;{
CLINEA 0000H 0001H 0255H 0001H 0001H
CBLOCK 12 2 597

;;	PB1DIR = 0;		/* Output */
CLINEA 0000H 0001H 0258H 0002H 001AH
	rb	0f259h.1

;;	PB1C0 = 1;
CLINEA 0000H 0001H 0259H 0002H 000BH
	sb	0f25ah.1

;;	PB1C1 = 1;		/* CMOS */
CLINEA 0000H 0001H 025AH 0002H 0017H
	sb	0f25bh.1

;;	PB1MD0 = 0;
CLINEA 0000H 0001H 025BH 0002H 000CH
	rb	0f25ch.1

;;	PB1MD1 = 1;		/* UART TXD */
CLINEA 0000H 0001H 025CH 0002H 001CH
	sb	0f25dh.1

;;	PB0DIR = 1;		/* Input */
CLINEA 0000H 0001H 025EH 0002H 0019H
	sb	0f259h.0

;;	PB0C0 = 1;
CLINEA 0000H 0001H 025FH 0002H 000BH
	sb	0f25ah.0

;;	PB0C1 = 0;		/* Hi Impedance */
CLINEA 0000H 0001H 0260H 0002H 001FH
	rb	0f25bh.0

;;	PB0MD0 = 0;
CLINEA 0000H 0001H 0261H 0002H 000CH
	rb	0f25ch.0

;;	PB0MD1 = 0;		/* UART RXD */
CLINEA 0000H 0001H 0262H 0002H 001CH
	rb	0f25dh.0
CBLOCKEND 12 2 611

;;}
CLINEA 0000H 0001H 0263H 0001H 0001H
	rt
CBLOCKEND 12 1 611
CFUNCTIONEND 12


	rseg $$uart_PortClear$uart
CFUNCTION 13

_uart_PortClear	:
CBLOCK 13 1 621

;;{
CLINEA 0000H 0001H 026DH 0001H 0001H
CBLOCK 13 2 621

;;	PB1DIR = 0;		/* Output */
CLINEA 0000H 0001H 0270H 0002H 001AH
	rb	0f259h.1

;;	PB1C0 = 0;
CLINEA 0000H 0001H 0271H 0002H 000BH
	rb	0f25ah.1

;;	PB1C1 = 0;		/* Hi Impedance */
CLINEA 0000H 0001H 0272H 0002H 001FH
	rb	0f25bh.1

;;	PB1MD0 = 0;
CLINEA 0000H 0001H 0273H 0002H 000CH
	rb	0f25ch.1

;;	PB1MD1 = 0;	      /* General-purpose input/output mode */
CLINEA 0000H 0001H 0274H 0002H 003AH
	rb	0f25dh.1

;;	PB0DIR = 0;		/* Output */
CLINEA 0000H 0001H 0276H 0002H 001AH
	rb	0f259h.0

;;	PB0C0 = 0;
CLINEA 0000H 0001H 0277H 0002H 000BH
	rb	0f25ah.0

;;	PB0C1 = 0;		/* Hi Impedance */
CLINEA 0000H 0001H 0278H 0002H 001FH
	rb	0f25bh.0

;;	PB0MD0 = 0;
CLINEA 0000H 0001H 0279H 0002H 000CH
	rb	0f25ch.0

;;	PB0MD1 = 0;		/* General-purpose input/output mode */
CLINEA 0000H 0001H 027AH 0002H 0035H
	rb	0f25dh.0
CBLOCKEND 13 2 635

;;}
CLINEA 0000H 0001H 027BH 0001H 0001H
	rt
CBLOCKEND 13 1 635
CFUNCTIONEND 13

	public _uart_getTransSize
	public _uart_PortSet
	public _uart_startReceive
	public _uart_init
	public _uart_checkIRQ
	public _uart_clearIRQ
	public _uart_ErrClr
	public _uart_ErrGet
	public _uart_ErrSet
	public _uart_stop
	public _uart_startSend
	public _uart_continue
	public _uart_PortClear
	extrn code near : _main

	rseg $$NINITTAB
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	db	00h
	align

	rseg $$NINITVAR
__gsCtrlParam :
	ds	0ah

	rseg $$NVARuart
__Err_Status :
	ds	01h
	extrn code : __uldivu8sw

	end
