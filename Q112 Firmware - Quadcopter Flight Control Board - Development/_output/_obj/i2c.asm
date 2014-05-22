;; Compile Options : /TML610112 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Iuart /Ii2c /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : i2c.c

	type (ML610112) 
	model small, near
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$i2c_checkIRQ$i2c segment code 2h #0h
	$$i2c_clearIRQ$i2c segment code 2h #0h
	$$i2c_continue$i2c segment code 2h #0h
	$$i2c_getTransSize$i2c segment code 2h #0h
	$$i2c_init$i2c segment code 2h #0h
	$$i2c_startReceive$i2c segment code 2h #0h
	$$i2c_startSend$i2c segment code 2h #0h
	$$i2c_stop$i2c segment code 2h #0h
CVERSION 3.41.8
CGLOBAL 01H 02H 0000H "i2c_getTransSize" 08H 02H 08H 00H 80H 00H 00H 00H 01H
CGLOBAL 01H 03H 0000H "i2c_stop" 08H 02H 05H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "i2c_startReceive" 08H 02H 03H 00H 82H 04H 00H 00H 01H
CGLOBAL 01H 03H 0000H "i2c_continue" 08H 02H 04H 00H 81H 06H 00H 00H 01H
CGLOBAL 01H 03H 0000H "i2c_startSend" 08H 02H 02H 00H 82H 04H 00H 00H 01H
CGLOBAL 01H 03H 0000H "i2c_init" 08H 02H 01H 00H 83H 0cH 00H 00H 01H
CGLOBAL 01H 03H 0000H "i2c_clearIRQ" 08H 02H 07H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "i2c_checkIRQ" 08H 02H 06H 00H 80H 00H 00H 00H 01H
CSTRUCTTAG 0000H 0000H 0001H 0009H 00000010H "_Notag"
CSTRUCTMEM 42H 00000001H 00000000H "mode" 02H 00H 00H
CSTRUCTMEM 42H 00000002H 00000002H "addr" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000004H "addr_size" 02H 00H 01H
CSTRUCTMEM 42H 00000002H 00000006H "data" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000008H "data_size" 02H 00H 01H
CSTRUCTMEM 42H 00000002H 0000000AH "cnt" 02H 00H 01H
CSTRUCTMEM 43H 00000002H 0000000CH "callBack" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H
CSTRUCTMEM 42H 00000001H 0000000EH "errStat" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 0000000FH "status" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "cbfI2c" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 43H "tI2cCtrlParam" 04H 00H 05H 01H 00H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CSGLOBAL 43H 0010H "_gsCtrlParam" 04H 00H 05H 01H 00H
CFILE 0001H 00000023H "main\\mcu.h"
CFILE 0002H 0000085AH "main\\ML610112.H"
CFILE 0003H 00000045H "i2c\\i2c.h"
CFILE 0000H 0000022BH "i2c\\i2c.c"

	rseg $$i2c_init$i2c
CFUNCTION 1

_i2c_init	:
CBLOCK 1 1 151

;;{
CLINEA 0000H 0001H 0097H 0001H 0001H
	push	lr
	push	fp
	mov	fp,	sp
	push	xr8
	push	xr4
	mov	r8,	r0
	mov	er10,	er2
CBLOCK 1 2 151
CRET 000AH
CARGUMENT 46H 0001H 001CH "mode" 02H 00H 00H
CARGUMENT 46H 0002H 0029H "kHz" 02H 00H 01H
CARGUMENT 42H 0001H 0004H "syn" 02H 00H 00H
CLOCAL 4AH 0001H 0000H 0002H "setbit" 02H 00H 00H
CLOCAL 46H 0001H 0016H 0002H "down" 02H 00H 00H
CLOCAL 46H 0002H 0026H 0002H "rate_cyc" 02H 00H 08H
CLOCAL 46H 0002H 0027H 0002H "rate_khz" 02H 00H 08H

;;	if( syn > (unsigned char)I2C_SYN_ON ){
CLINEA 0000H 0001H 009EH 0002H 0027H
	l	r0,	4[fp]
	cmp	r0,	#01h
	ble	_$L1
CBLOCK 1 3 158

;;		return( I2C_R_ERR_SYN );
CLINEA 0000H 0001H 009FH 0003H 001AH
	mov	er0,	#-1
CBLOCKEND 1 3 160
CBLOCKEND 1 2 226

;;}
CLINEA 0000H 0001H 00E2H 0001H 0001H
_$L0 :
	pop	xr4
	pop	xr8
	mov	sp,	fp
	pop	fp
	pop	pc

;;	}
CLINEA 0000H 0000H 00A0H 0002H 0002H
_$L1 :

;;	if( mode == (unsigned char)I2C_MOD_STD ){
CLINEA 0000H 0001H 00A2H 0002H 002AH
	cmp	r8,	#00h
	bne	_$L3
CBLOCK 1 4 162

;;		rate_cyc = (unsigned short)I2C_STD_CYC;
CLINEA 0000H 0001H 00A3H 0003H 0029H
	mov	r4,	#050h
	mov	r5,	#00h

;;		rate_khz = (unsigned short)I2C_STD_KHZ;
CLINEA 0000H 0001H 00A4H 0003H 0029H
	mov	r6,	#064h
	mov	r7,	#00h
CBLOCKEND 1 4 165

;;	else if( mode == (unsigned char)I2C_MOD_FST ){
CLINEA 0000H 0001H 00A6H 0002H 002FH
	bal	_$L5
_$L3 :
	cmp	r8,	#01h
	beq	_$M1
	b	_$L6
_$M1 :
CBLOCK 1 5 166

;;		rate_cyc = (unsigned short)I2C_FST_CYC;
CLINEA 0000H 0001H 00A7H 0003H 0029H
	mov	er4,	#20

;;		rate_khz = (unsigned short)I2C_FST_KHZ;
CLINEA 0000H 0001H 00A8H 0003H 0029H
	mov	r6,	#090h
	mov	r7,	#01h
CBLOCKEND 1 5 169

;;	}
CLINEA 0000H 0000H 00ACH 0002H 0002H
_$L5 :

;;	if( ( kHz / rate_cyc ) <= rate_khz ){
CLINEA 0000H 0001H 00AEH 0002H 0026H
	mov	er0,	er10
	mov	er2,	er4
	bl	__uidivu8sw
	cmp	er0,	er6
	bgt	_$L9
CBLOCK 1 7 174

;;		down = (unsigned char)I2C_DW_0;
CLINEA 0000H 0001H 00AFH 0003H 0021H
	mov	r0,	#00h

;;	else if( ( kHz / (unsigned short)( ( rate_cyc * 11 ) / 10 ) ) <= rate_khz ){
CLINEA 0000H 0001H 00B1H 0002H 004DH
	bal	_$L17
_$L9 :
	mov	er0,	er4
	sllc	r1,	#02h
	sll	r0,	#02h
	add	er0,	er4
	add	er0,	er0
	add	er0,	er4
	mov	r2,	#0ah
	div	er0,	r2
	mov	er2,	er0
	mov	er0,	er10
	bl	__uidivu8sw
	cmp	er0,	er6
	bgt	_$L12
CBLOCK 1 8 177

;;		down = (unsigned char)I2C_DW_10;
CLINEA 0000H 0001H 00B2H 0003H 0022H
	mov	r0,	#01h

;;	else if( ( kHz / (unsigned short)( ( rate_cyc * 12 ) / 10 ) ) <= rate_khz ){
CLINEA 0000H 0001H 00B4H 0002H 004DH
	bal	_$L17
_$L12 :
	mov	er0,	er4
	add	er0,	er4
	add	er0,	er4
	sllc	r1,	#02h
	sll	r0,	#02h
	mov	r2,	#0ah
	div	er0,	r2
	mov	er2,	er0
	mov	er0,	er10
	bl	__uidivu8sw
	cmp	er0,	er6
	bgt	_$L15
CBLOCK 1 9 180

;;		down = (unsigned char)I2C_DW_20;
CLINEA 0000H 0001H 00B5H 0003H 0022H
	mov	r0,	#02h
CBLOCKEND 1 9 182

;;	else if( ( kHz / (unsigned short)( ( rate_cyc * 13 ) / 10 ) ) <= rate_khz ){
CLINEA 0000H 0001H 00B7H 0002H 004DH
	bal	_$L17
_$L15 :
	mov	er0,	er4
	add	er0,	er4
	add	er0,	er4
	sllc	r1,	#02h
	sll	r0,	#02h
	add	er0,	er4
	mov	r2,	#0ah
	div	er0,	r2
	mov	er2,	er0
	mov	er0,	er10
	bl	__uidivu8sw
	cmp	er0,	er6
	bgt	_$L18
CBLOCK 1 10 183

;;		down = (unsigned char)I2C_DW_30;
CLINEA 0000H 0001H 00B8H 0003H 0022H
	mov	r0,	#03h
CBLOCKEND 1 10 185

;;	}
CLINEA 0000H 0000H 00BCH 0002H 0002H
_$L17 :
	mov	r2,	r0
CBLOCKEND 1 8 226

;;	_gsCtrlParam.mode		= 0;
CLINEA 0000H 0001H 00BFH 0002H 0018H
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam

;;	_gsCtrlParam.addr		= (void *)0;
CLINEA 0000H 0001H 00C0H 0002H 0020H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+02h

;;	_gsCtrlParam.addr_size	= 0;
CLINEA 0000H 0001H 00C1H 0002H 001CH
	st	er0,	NEAR __gsCtrlParam+04h

;;	_gsCtrlParam.data		= (void *)0;
CLINEA 0000H 0001H 00C2H 0002H 0020H
	st	er0,	NEAR __gsCtrlParam+06h

;;	_gsCtrlParam.data_size	= 0;
CLINEA 0000H 0001H 00C3H 0002H 001CH
	st	er0,	NEAR __gsCtrlParam+08h

;;	_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 00C4H 0002H 0017H
	st	er0,	NEAR __gsCtrlParam+0ah

;;	_gsCtrlParam.callBack	= (void *)0;
CLINEA 0000H 0001H 00C5H 0002H 0023H
	st	er0,	NEAR __gsCtrlParam+0ch

;;	_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 00C6H 0002H 001AH
	st	r0,	NEAR __gsCtrlParam+0eh

;;	_gsCtrlParam.status		= 0;
CLINEA 0000H 0001H 00C7H 0002H 001AH
	st	r0,	NEAR __gsCtrlParam+0fh

;;	I20EN = 0;
CLINEA 0000H 0001H 00CBH 0002H 000BH
	rb	0f2a4h.0

;;	PB5DIR = 0;		/* Output */
CLINEA 0000H 0001H 00CEH 0002H 001AH
	rb	0f259h.5

;;	PB5C0 = 0;
CLINEA 0000H 0001H 00CFH 0002H 000BH
	rb	0f25ah.5

;;	PB5C1 = 1;		/* Nch */
CLINEA 0000H 0001H 00D0H 0002H 0016H
	sb	0f25bh.5

;;	PB5MD0 = 0;
CLINEA 0000H 0001H 00D1H 0002H 000CH
	rb	0f25ch.5

;;	PB5MD1 = 1;		/* I2C SCL */
CLINEA 0000H 0001H 00D2H 0002H 001BH
	sb	0f25dh.5

;;	PB6DIR = 0;		/* Output */
CLINEA 0000H 0001H 00D4H 0002H 001AH
	rb	0f259h.6

;;	PB6C0 = 0;
CLINEA 0000H 0001H 00D5H 0002H 000BH
	rb	0f25ah.6

;;	PB6C1 = 1;		/* Nch */
CLINEA 0000H 0001H 00D6H 0002H 0016H
	sb	0f25bh.6

;;	PB6MD0 = 0;
CLINEA 0000H 0001H 00D7H 0002H 000CH
	rb	0f25ch.6

;;	PB6MD1 = 1;		/* I2C SD */
CLINEA 0000H 0001H 00D8H 0002H 001AH
	sb	0f25dh.6

;;	I2C0MOD = setbit;
CLINEA 0000H 0001H 00DFH 0002H 0012H
	mov	r0,	r8
	sll	r0,	#01h
	mov	r1,	r2
	sll	r1,	#02h
	or	r1,	r0
	l	r0,	4[fp]
	sll	r0,	#04h
	or	r0,	r1
	or	r0,	#01h
	st	r0,	0f2a4h

;;	return ( I2C_R_OK );
CLINEA 0000H 0001H 00E1H 0002H 0015H
	mov	er0,	#0 
	b	_$L0
CBLOCKEND 1 7 226

;;	else{
CLINEA 0000H 0000H 00AAH 0002H 0006H
_$L6 :
CBLOCK 1 6 170

;;		return( I2C_R_ERR_MODE );
CLINEA 0000H 0001H 00ABH 0003H 001BH
	mov	er0,	#-2
	b	_$L0
CBLOCKEND 1 6 172

;;	else{
CLINEA 0000H 0000H 00BAH 0002H 0006H
_$L18 :
CBLOCK 1 11 186

;;		return( I2C_R_ERR_FREQ );
CLINEA 0000H 0001H 00BBH 0003H 001BH
	mov	er0,	#-3
	b	_$L0
CBLOCKEND 1 11 188
CBLOCKEND 1 1 226
CFUNCTIONEND 1


	rseg $$i2c_startSend$i2c
CFUNCTION 2

_i2c_startSend	:
CBLOCK 2 1 243

;;{
CLINEA 0000H 0001H 00F3H 0001H 0001H
	push	fp
	mov	fp,	sp
	push	er8
	mov	r8,	r0
CBLOCK 2 2 243
CARGUMENT 46H 0001H 001CH "slave_adr" 02H 00H 00H
CARGUMENT 46H 0002H 0025H "addr" 04H 03H 00H 00H 00H
CARGUMENT 42H 0002H 0002H "addr_size" 02H 00H 01H
CARGUMENT 42H 0002H 0004H "data" 04H 03H 00H 00H 00H
CARGUMENT 42H 0002H 0006H "data_size" 02H 00H 01H
CARGUMENT 43H 0002H 0008H "func" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H
CLOCAL 46H 0001H 0014H 0002H "errStat" 02H 00H 00H

;;	_gsCtrlParam.mode		= 0;	/* send */
CLINEA 0000H 0001H 00F7H 0002H 0023H
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam

;;	_gsCtrlParam.addr		= addr;
CLINEA 0000H 0001H 00F8H 0002H 001BH
	st	er2,	NEAR __gsCtrlParam+02h

;;	_gsCtrlParam.addr_size	= addr_size;
CLINEA 0000H 0001H 00F9H 0002H 0024H
	l	er0,	2[fp]
	st	er0,	NEAR __gsCtrlParam+04h

;;	_gsCtrlParam.data		= data;
CLINEA 0000H 0001H 00FAH 0002H 001BH
	l	er0,	4[fp]
	st	er0,	NEAR __gsCtrlParam+06h

;;	_gsCtrlParam.data_size	= data_size;
CLINEA 0000H 0001H 00FBH 0002H 0024H
	l	er0,	6[fp]
	st	er0,	NEAR __gsCtrlParam+08h

;;	_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 00FCH 0002H 0017H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+0ah

;;	_gsCtrlParam.callBack	= func;
CLINEA 0000H 0001H 00FDH 0002H 001EH
	l	er0,	8[fp]
	st	er0,	NEAR __gsCtrlParam+0ch

;;	_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 00FEH 0002H 001AH
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+0eh

;;	_gsCtrlParam.status		= 0;
CLINEA 0000H 0001H 00FFH 0002H 001AH
	st	r0,	NEAR __gsCtrlParam+0fh

;;	if( (_gsCtrlParam.addr_size == 0) && (_gsCtrlParam.data_size == 0) ){
CLINEA 0000H 0001H 0101H 0002H 0046H
	l	er0,	NEAR __gsCtrlParam+04h
	bne	_$L22
	l	er0,	NEAR __gsCtrlParam+08h
	bne	_$L22
CBLOCK 2 3 257

;;		return(I2C_R_TRANS_FIN);
CLINEA 0000H 0001H 0102H 0003H 001AH
	mov	er0,	#1 
CBLOCKEND 2 3 259
CBLOCKEND 2 2 272

;;}
CLINEA 0000H 0001H 0110H 0001H 0001H
_$L21 :
	pop	er8
	mov	sp,	fp
	pop	fp
	rt

;;	}
CLINEA 0000H 0000H 0103H 0002H 0002H
_$L22 :

;;	errStat = (unsigned char)( I2C0STAT & (unsigned char)I2C0STAT_I20BB  );
CLINEA 0000H 0001H 0105H 0002H 0048H
	l	r0,	0f2a5h
	and	r0,	#01h

;;	if( errStat == (unsigned char)I2C0STAT_I20BB ){
CLINEA 0000H 0001H 0106H 0002H 0030H
	cmp	r0,	#01h
	bne	_$L29
CBLOCK 2 4 262

;;		return ( I2C_R_BUS_BUSY );
CLINEA 0000H 0001H 0107H 0003H 001CH
	mov	er0,	#-1
	bal	_$L21
CBLOCKEND 2 4 264

;;	}
CLINEA 0000H 0000H 0108H 0002H 0002H
_$L29 :

;;	_gsCtrlParam.status = I2C_SEND_SLAVE_ADDRESS;
CLINEA 0000H 0001H 010BH 0002H 002EH
	mov	r0,	#01h
	st	r0,	NEAR __gsCtrlParam+0fh

;;	I2C0SA = (unsigned char)( slave_adr << 1 );	/* send mode */
CLINEA 0000H 0001H 010DH 0002H 003CH
	mov	r0,	r8
	sll	r0,	#01h
	st	r0,	0f2a1h

;;	I2C0CON = (unsigned char)I2C0CON_I20ST;		/* Start condition */
CLINEA 0000H 0001H 010EH 0002H 003FH
	mov	r0,	#01h
	st	r0,	0f2a3h

;;	return ( I2C_R_TRANS_START_OK );
CLINEA 0000H 0001H 010FH 0002H 0021H
	mov	er0,	#0 
	bal	_$L21
CBLOCKEND 2 1 272
CFUNCTIONEND 2


	rseg $$i2c_startReceive$i2c
CFUNCTION 3

_i2c_startReceive	:
CBLOCK 3 1 288

;;{
CLINEA 0000H 0001H 0120H 0001H 0001H
	push	fp
	mov	fp,	sp
	push	er8
	mov	r8,	r0
CBLOCK 3 2 288
CARGUMENT 46H 0001H 001CH "slave_adr" 02H 00H 00H
CARGUMENT 46H 0002H 0025H "addr" 04H 03H 00H 00H 00H
CARGUMENT 42H 0002H 0002H "addr_size" 02H 00H 01H
CARGUMENT 42H 0002H 0004H "data" 04H 03H 00H 00H 00H
CARGUMENT 42H 0002H 0006H "data_size" 02H 00H 01H
CARGUMENT 43H 0002H 0008H "func" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H
CLOCAL 46H 0001H 0014H 0002H "errStat" 02H 00H 00H

;;	_gsCtrlParam.mode		= 1;	/* receive */
CLINEA 0000H 0001H 0125H 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __gsCtrlParam

;;	_gsCtrlParam.addr		= addr;
CLINEA 0000H 0001H 0126H 0002H 001BH
	st	er2,	NEAR __gsCtrlParam+02h

;;	_gsCtrlParam.addr_size	= addr_size;
CLINEA 0000H 0001H 0127H 0002H 0024H
	l	er0,	2[fp]
	st	er0,	NEAR __gsCtrlParam+04h

;;	_gsCtrlParam.data		= data;
CLINEA 0000H 0001H 0128H 0002H 001BH
	l	er0,	4[fp]
	st	er0,	NEAR __gsCtrlParam+06h

;;	_gsCtrlParam.data_size	= data_size;
CLINEA 0000H 0001H 0129H 0002H 0024H
	l	er0,	6[fp]
	st	er0,	NEAR __gsCtrlParam+08h

;;	_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 012AH 0002H 0017H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+0ah

;;	_gsCtrlParam.callBack	= func;
CLINEA 0000H 0001H 012BH 0002H 001EH
	l	er0,	8[fp]
	st	er0,	NEAR __gsCtrlParam+0ch

;;	_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 012CH 0002H 001AH
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+0eh

;;	_gsCtrlParam.status		= 0;
CLINEA 0000H 0001H 012DH 0002H 001AH
	st	r0,	NEAR __gsCtrlParam+0fh

;;	if( (_gsCtrlParam.addr_size == 0) && (_gsCtrlParam.data_size == 0) ){
CLINEA 0000H 0001H 012FH 0002H 0046H
	l	er0,	NEAR __gsCtrlParam+04h
	bne	_$L32
	l	er0,	NEAR __gsCtrlParam+08h
	bne	_$L32
CBLOCK 3 3 303

;;		return(I2C_R_TRANS_FIN);
CLINEA 0000H 0001H 0130H 0003H 001AH
	mov	er0,	#1 
CBLOCKEND 3 3 305
CBLOCKEND 3 2 321

;;}
CLINEA 0000H 0001H 0141H 0001H 0001H
_$L31 :
	pop	er8
	mov	sp,	fp
	pop	fp
	rt

;;	}
CLINEA 0000H 0000H 0131H 0002H 0002H
_$L32 :

;;	errStat = (unsigned char)( I2C0STAT & (unsigned char)I2C0STAT_I20BB  );
CLINEA 0000H 0001H 0133H 0002H 0048H
	l	r0,	0f2a5h
	and	r0,	#01h

;;	if( errStat == (unsigned char)I2C0STAT_I20BB ){
CLINEA 0000H 0001H 0134H 0002H 0030H
	cmp	r0,	#01h
	bne	_$L39
CBLOCK 3 4 308

;;		return ( I2C_R_BUS_BUSY );
CLINEA 0000H 0001H 0135H 0003H 001CH
	mov	er0,	#-1
	bal	_$L31
CBLOCKEND 3 4 310

;;	}
CLINEA 0000H 0000H 0136H 0002H 0002H
_$L39 :

;;	_gsCtrlParam.status = I2C_SEND_SLAVE_ADDRESS;
CLINEA 0000H 0001H 0138H 0002H 002EH
	mov	r0,	#01h
	st	r0,	NEAR __gsCtrlParam+0fh

;;	if(_gsCtrlParam.addr_size == 0){
CLINEA 0000H 0001H 0139H 0002H 0021H
	l	er0,	NEAR __gsCtrlParam+04h
	bne	_$L41
CBLOCK 3 5 313

;;		I2C0SA = (unsigned char)( ( slave_adr << 1 ) | I2C0SA_I20RW );		/* Receive mode */
CLINEA 0000H 0001H 013AH 0003H 0054H
	mov	r0,	r8
	sll	r0,	#01h
	or	r0,	#01h
CBLOCKEND 3 5 315

;;	else{
CLINEA 0000H 0001H 013CH 0002H 0006H
	bal	_$L43
_$L41 :
CBLOCK 3 6 316

;;		I2C0SA = (unsigned char)( ( slave_adr << 1 )/* | I2C0SA_I20RW*/ );	/* Send mode */
CLINEA 0000H 0001H 013DH 0003H 0054H
	mov	r0,	r8
	sll	r0,	#01h
CBLOCKEND 3 6 318

;;	}
CLINEA 0000H 0000H 013EH 0002H 0002H
_$L43 :
	st	r0,	0f2a1h

;;		I2C0CON = (unsigned char)I2C0CON_I20ST;	/* Start condition */
CLINEA 0000H 0001H 013FH 0003H 003FH
	mov	r0,	#01h
	st	r0,	0f2a3h

;;	return ( I2C_R_TRANS_START_OK );
CLINEA 0000H 0001H 0140H 0002H 0021H
	mov	er0,	#0 
	bal	_$L31
CBLOCKEND 3 1 321
CFUNCTIONEND 3


	rseg $$i2c_continue$i2c
CFUNCTION 4

_i2c_continue	:
CBLOCK 4 1 335

;;{
CLINEA 0000H 0001H 014FH 0001H 0001H
	push	lr
	push	bp
	push	er4
CBLOCK 4 2 335
CRET 0004H
CLOCAL 46H 0001H 0015H 0002H "i2c0stat" 02H 00H 00H
CLOCAL 46H 0001H 0018H 0002H "setbit" 02H 00H 00H
CLOCAL 47H 0002H 0026H 0002H "callbackFunc" 0AH 03H 00H 02H 00H 00H 00H 00H 00H 00H 07H

;;	i2c0stat = I2C0STAT;
CLINEA 0000H 0001H 0154H 0002H 0015H
	l	r0,	0f2a5h
	mov	r1,	r0

;;	switch(_gsCtrlParam.status){
CLINEA 0000H 0001H 0155H 0002H 001DH
	l	r0,	NEAR __gsCtrlParam+0fh
CBLOCK 4 3 341
	beq	_$L93

;;	switch(_gsCtrlParam.status){
CLINEA 0000H 0000H 0155H 0002H 001DH
	cmp	r0,	#01h
	beq	_$L50

;;	switch(_gsCtrlParam.status){
CLINEA 0000H 0000H 0155H 0002H 001DH
	cmp	r0,	#02h
	bne	_$M5
	b	_$L67
_$M5 :

;;	switch(_gsCtrlParam.status){
CLINEA 0000H 0000H 0155H 0002H 001DH
	cmp	r0,	#03h
	bne	_$M6
	b	_$L80
_$M6 :

;;	switch(_gsCtrlParam.status){
CLINEA 0000H 0000H 0155H 0002H 001DH
	cmp	r0,	#04h
	bne	_$M7
	b	_$L87
_$M7 :

;;		case I2C_TRANS_END:
CLINEA 0000H 0001H 01CFH 0003H 0015H
_$L93 :

;;			if( _gsCtrlParam.callBack != (void *)0 ){
CLINEA 0000H 0001H 01D1H 0004H 002CH
	l	er0,	NEAR __gsCtrlParam+0ch
	beq	_$L94
CBLOCK 4 27 465

;;				callbackFunc = _gsCtrlParam.callBack;
CLINEA 0000H 0001H 01D2H 0005H 0029H
	mov	er4,	er0

;;				_gsCtrlParam.callBack = (void *)0;
CLINEA 0000H 0001H 01D3H 0005H 0026H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+0ch

;;				callbackFunc( _gsCtrlParam.cnt, _gsCtrlParam.errStat );
CLINEA 0000H 0001H 01D4H 0005H 003BH
	l	r2,	NEAR __gsCtrlParam+0eh
	l	er0,	NEAR __gsCtrlParam+0ah
	bl	er4
CBLOCKEND 4 27 469

;;			}
CLINEA 0000H 0000H 01D5H 0004H 0004H
_$L94 :
CBLOCKEND 4 3 471

;;	return ( I2C_R_TRANS_FIN );
CLINEA 0000H 0001H 01D8H 0002H 001CH
	mov	er0,	#1 
CBLOCKEND 4 2 473

;;}
CLINEA 0000H 0001H 01D9H 0001H 0001H
_$L44 :
	pop	er4
	pop	bp
	pop	pc

;;		case I2C_SEND_SLAVE_ADDRESS:
CLINEA 0000H 0001H 0156H 0003H 001EH
_$L50 :

;;			if((i2c0stat&I2C0STAT_I20ER) == I2C0STAT_I20ER){
CLINEA 0000H 0001H 0158H 0004H 0033H
	mov	r0,	r1
	and	r0,	#04h
	cmp	r0,	#04h
	bne	_$L51
CBLOCK 4 4 344

;;				_gsCtrlParam.status = I2C_TRANS_END;
CLINEA 0000H 0001H 0159H 0005H 0028H
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+0fh

;;				_gsCtrlParam.errStat = I2C_ERR_SEND_ERR;
CLINEA 0000H 0001H 015AH 0005H 002CH
	mov	r0,	#02h
	st	r0,	NEAR __gsCtrlParam+0eh

;;				I2C0CON = (unsigned char)0x00;	/* stop i2c */
CLINEA 0000H 0001H 015BH 0005H 0031H
	mov	r0,	#00h
	st	r0,	0f2a3h

;;				if( _gsCtrlParam.callBack != (void *)0 ){
CLINEA 0000H 0001H 015CH 0005H 002DH
	l	er0,	NEAR __gsCtrlParam+0ch
	beq	_$L53
CBLOCK 4 5 348

;;					callbackFunc = _gsCtrlParam.callBack;
CLINEA 0000H 0001H 015DH 0006H 002AH
	mov	er4,	er0

;;					_gsCtrlParam.callBack = (void *)0;
CLINEA 0000H 0001H 015EH 0006H 0027H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+0ch

;;					callbackFunc( _gsCtrlParam.cnt, _gsCtrlParam.errStat );
CLINEA 0000H 0001H 015FH 0006H 003CH
	l	r2,	NEAR __gsCtrlParam+0eh
	l	er0,	NEAR __gsCtrlParam+0ah
	bl	er4
CBLOCKEND 4 5 352

;;				}
CLINEA 0000H 0000H 0160H 0005H 0005H
_$L53 :

;;				return ( I2C_R_TRANS_FIN );
CLINEA 0000H 0001H 0161H 0005H 001FH
	mov	er0,	#1 
	bal	_$L44
CBLOCKEND 4 4 354

;;			else if((i2c0stat&I2C0STAT_I20ACR) == I2C0STAT_I20ACR){
CLINEA 0000H 0000H 0164H 0004H 003AH
_$L51 :
	mov	r0,	r1
	and	r0,	#02h
	cmp	r0,	#02h
	bne	_$L56
CBLOCK 4 6 356

;;				_gsCtrlParam.status = I2C_TRANS_END;
CLINEA 0000H 0001H 0165H 0005H 0028H
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+0fh

;;				_gsCtrlParam.errStat = I2C_ERR_ACR;
CLINEA 0000H 0001H 0166H 0005H 0027H
	mov	r0,	#01h
	st	r0,	NEAR __gsCtrlParam+0eh

;;				I2C0CON = (unsigned char)I2C0CON_I20SP;	/* Stop condition */
CLINEA 0000H 0001H 0167H 0005H 0040H
	mov	r0,	#02h
	st	r0,	0f2a3h

;;			else{
CLINEA 0000H 0001H 016AH 0004H 0008H
	bal	_$L66
_$L56 :
CBLOCK 4 7 362

;;				if(_gsCtrlParam.addr_size != 0){
CLINEA 0000H 0001H 016BH 0005H 0024H
	l	er0,	NEAR __gsCtrlParam+04h
	beq	_$L59
CBLOCK 4 8 363

;;					_gsCtrlParam.status = I2C_SEND_ADDRESS;
CLINEA 0000H 0001H 016CH 0006H 002CH
	mov	r0,	#02h
	st	r0,	NEAR __gsCtrlParam+0fh

;;					I2C0TD = (unsigned char)*_gsCtrlParam.addr;
CLINEA 0000H 0001H 016DH 0006H 0030H
	l	bp,	NEAR __gsCtrlParam+02h
	l	r0,	[bp]
	st	r0,	0f2a2h

;;					_gsCtrlParam.addr++;
CLINEA 0000H 0000H 016EH 0006H 0019H
	mov	er0,	bp
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+02h

;;					_gsCtrlParam.addr_size--;
CLINEA 0000H 0000H 016FH 0006H 001EH
	l	er0,	NEAR __gsCtrlParam+04h
	add	er0,	#-1
	st	er0,	NEAR __gsCtrlParam+04h

;;					I2C0CON = (unsigned char)I2C0CON_I20ST;	/* i2c start */
CLINEA 0000H 0001H 0170H 0006H 003CH
	mov	r0,	#01h
	st	r0,	0f2a3h

;;				else{
CLINEA 0000H 0001H 0172H 0005H 0009H
	bal	_$L66
_$L59 :
CBLOCK 4 9 370

;;					if(_gsCtrlParam.mode != 0 ){
CLINEA 0000H 0001H 0173H 0006H 0021H
	l	r0,	NEAR __gsCtrlParam
	beq	_$L62
CBLOCK 4 10 371

;;						_gsCtrlParam.status = I2C_RECEIVE_DATA;
CLINEA 0000H 0001H 0174H 0007H 002DH
	mov	r0,	#04h
	st	r0,	NEAR __gsCtrlParam+0fh

;;						setbit = I2C0CON_I20ST;
CLINEA 0000H 0001H 0175H 0007H 001DH
	mov	r4,	#01h

;;						if( ( _gsCtrlParam.data_size - 1) == _gsCtrlParam.cnt ){
CLINEA 0000H 0001H 0176H 0007H 003EH
	l	er0,	NEAR __gsCtrlParam+08h
	add	er0,	#-1
	l	er2,	NEAR __gsCtrlParam+0ah
	cmp	er0,	er2
	bne	_$L64
CBLOCK 4 11 374

;;							setbit |= (unsigned char)I2C0CON_I20ACT;
CLINEA 0000H 0001H 0177H 0008H 002FH
	mov	r4,	#081h
CBLOCKEND 4 11 376

;;						}
CLINEA 0000H 0000H 0178H 0007H 0007H
_$L64 :

;;						I2C0CON = setbit;
CLINEA 0000H 0001H 0179H 0007H 0017H
	st	r4,	0f2a3h
CBLOCKEND 4 10 378

;;					else{
CLINEA 0000H 0001H 017BH 0006H 000AH
	bal	_$L66
_$L62 :
CBLOCK 4 12 379

;;						_gsCtrlParam.status = I2C_SEND_DATA;
CLINEA 0000H 0001H 017CH 0007H 002AH
	mov	r0,	#03h
	st	r0,	NEAR __gsCtrlParam+0fh

;;						I2C0TD = (unsigned char)*_gsCtrlParam.data;
CLINEA 0000H 0001H 017DH 0007H 0031H
	l	bp,	NEAR __gsCtrlParam+06h
	l	r0,	[bp]
	st	r0,	0f2a2h

;;						_gsCtrlParam.data++;
CLINEA 0000H 0000H 017EH 0007H 001AH
	mov	er0,	bp
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+06h

;;						_gsCtrlParam.cnt++;
CLINEA 0000H 0000H 017FH 0007H 0019H
	l	er0,	NEAR __gsCtrlParam+0ah
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+0ah

;;						I2C0CON = (unsigned char)I2C0CON_I20ST;
CLINEA 0000H 0001H 0180H 0007H 002DH
	mov	r0,	#01h
	st	r0,	0f2a3h
CBLOCKEND 4 12 385

;;					}
CLINEA 0000H 0000H 0181H 0006H 0006H
_$L66 :
CBLOCKEND 4 9 386
CBLOCKEND 4 7 387
CBLOCKEND 4 8 473
CBLOCKEND 4 6 473

;;			return(I2C_R_TRANS_CONT_OK);
CLINEA 0000H 0001H 0184H 0004H 001FH
	mov	er0,	#0 
	b	_$L44

;;		case I2C_SEND_ADDRESS:
CLINEA 0000H 0001H 0186H 0003H 0018H
_$L67 :

;;			if((i2c0stat&I2C0STAT_I20ACR) == I2C0STAT_I20ACR){
CLINEA 0000H 0001H 0187H 0004H 0035H
	mov	r0,	r1
	and	r0,	#02h
	cmp	r0,	#02h
	bne	_$L68
CBLOCK 4 13 391

;;				_gsCtrlParam.status = I2C_TRANS_END;
CLINEA 0000H 0001H 0188H 0005H 0028H
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+0fh

;;				_gsCtrlParam.errStat = I2C_ERR_ACR;
CLINEA 0000H 0001H 0189H 0005H 0027H
	mov	r0,	#01h
	st	r0,	NEAR __gsCtrlParam+0eh

;;				I2C0CON = (unsigned char)I2C0CON_I20SP;	/* Stop condition */
CLINEA 0000H 0001H 018AH 0005H 0040H
	mov	r0,	#02h
	st	r0,	0f2a3h

;;			else{
CLINEA 0000H 0001H 018CH 0004H 0008H
	b	_$L79
_$L68 :
CBLOCK 4 14 396

;;				if( _gsCtrlParam.addr_size != 0 ){
CLINEA 0000H 0001H 018DH 0005H 0026H
	l	er0,	NEAR __gsCtrlParam+04h
	beq	_$L71
CBLOCK 4 15 397

;;					I2C0TD = (unsigned char)*_gsCtrlParam.addr;
CLINEA 0000H 0001H 018EH 0006H 0030H
	l	bp,	NEAR __gsCtrlParam+02h
	l	r0,	[bp]
	st	r0,	0f2a2h

;;					_gsCtrlParam.addr++;
CLINEA 0000H 0000H 018FH 0006H 0019H
	mov	er0,	bp
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+02h

;;					_gsCtrlParam.addr_size--;
CLINEA 0000H 0000H 0190H 0006H 001EH
	l	er0,	NEAR __gsCtrlParam+04h
	add	er0,	#-1
	st	er0,	NEAR __gsCtrlParam+04h

;;					I2C0CON = (unsigned char)I2C0CON_I20ST;	/* i2c start */
CLINEA 0000H 0001H 0191H 0006H 003CH
	mov	r0,	#01h
	st	r0,	0f2a3h

;;				else{
CLINEA 0000H 0001H 0194H 0005H 0009H
	bal	_$L79
_$L71 :
CBLOCK 4 16 404

;;					if(_gsCtrlParam.data_size == 0){
CLINEA 0000H 0001H 0195H 0006H 0025H
	l	er0,	NEAR __gsCtrlParam+08h
	bne	_$L74
CBLOCK 4 17 405

;;						_gsCtrlParam.status = I2C_TRANS_END;
CLINEA 0000H 0001H 0196H 0007H 002AH
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+0fh

;;						I2C0CON = (unsigned char)I2C0CON_I20SP;	/* Stop condition */
CLINEA 0000H 0001H 0197H 0007H 0042H
	mov	r0,	#02h
	st	r0,	0f2a3h

;;					else{
CLINEA 0000H 0001H 0199H 0006H 000AH
	bal	_$L79
_$L74 :
CBLOCK 4 18 409

;;						if(_gsCtrlParam.mode != 0 ){/* receive mode */
CLINEA 0000H 0001H 019AH 0007H 0034H
	l	r0,	NEAR __gsCtrlParam
	beq	_$L77
CBLOCK 4 19 410

;;							_gsCtrlParam.status = I2C_SEND_SLAVE_ADDRESS;
CLINEA 0000H 0001H 019BH 0008H 0034H
	mov	r0,	#01h
	st	r0,	NEAR __gsCtrlParam+0fh

;;							I20RW = 1;		/* Receive mode */
CLINEA 0000H 0001H 019CH 0008H 0025H
	sb	0f2a1h.0

;;							I20RS = 1;		/* Restart condition */
CLINEA 0000H 0001H 019DH 0008H 002AH
	sb	0f2a3h.2
CBLOCKEND 4 19 414

;;						else{/* send mode */
CLINEA 0000H 0001H 019FH 0007H 001AH
	bal	_$L79
_$L77 :
CBLOCK 4 20 415

;;							_gsCtrlParam.status = I2C_SEND_DATA;
CLINEA 0000H 0001H 01A0H 0008H 002BH
	mov	r0,	#03h
	st	r0,	NEAR __gsCtrlParam+0fh

;;							I2C0TD = (unsigned char)*_gsCtrlParam.data;
CLINEA 0000H 0001H 01A1H 0008H 0032H
	l	bp,	NEAR __gsCtrlParam+06h
	l	r0,	[bp]
	st	r0,	0f2a2h

;;							_gsCtrlParam.data++;
CLINEA 0000H 0000H 01A2H 0008H 001BH
	mov	er0,	bp
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+06h

;;							_gsCtrlParam.cnt++;
CLINEA 0000H 0000H 01A3H 0008H 001AH
	l	er0,	NEAR __gsCtrlParam+0ah
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+0ah

;;							I2C0CON = (unsigned char)I2C0CON_I20ST;
CLINEA 0000H 0001H 01A4H 0008H 002EH
	mov	r0,	#01h
	st	r0,	0f2a3h
CBLOCKEND 4 20 421

;;						}
CLINEA 0000H 0000H 01A5H 0007H 0007H
_$L79 :
CBLOCKEND 4 18 422
CBLOCKEND 4 16 423
CBLOCKEND 4 17 473
CBLOCKEND 4 14 424
CBLOCKEND 4 15 473

;;			return ( I2C_R_TRANS_CONT_OK );
CLINEA 0000H 0001H 01A9H 0004H 0022H
	mov	er0,	#0 
	b	_$L44
CBLOCKEND 4 13 473

;;		case I2C_SEND_DATA:
CLINEA 0000H 0001H 01ABH 0003H 0015H
_$L80 :

;;			if((i2c0stat&I2C0STAT_I20ACR) == I2C0STAT_I20ACR){
CLINEA 0000H 0001H 01ACH 0004H 0035H
	mov	r0,	r1
	and	r0,	#02h
	cmp	r0,	#02h
	bne	_$L81
CBLOCK 4 21 428

;;				_gsCtrlParam.status = I2C_TRANS_END;
CLINEA 0000H 0001H 01ADH 0005H 0028H
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+0fh

;;				_gsCtrlParam.errStat = I2C_ERR_ACR;
CLINEA 0000H 0001H 01AEH 0005H 0027H
	mov	r0,	#01h
	st	r0,	NEAR __gsCtrlParam+0eh

;;				I2C0CON = (unsigned char)I2C0CON_I20SP;	/* Stop condition */
CLINEA 0000H 0001H 01AFH 0005H 0040H
	mov	r0,	#02h

;;			else if( _gsCtrlParam.data_size != _gsCtrlParam.cnt ){
CLINEA 0000H 0001H 01B1H 0004H 0039H
	bal	_$L86
_$L81 :
	l	er0,	NEAR __gsCtrlParam+08h
	l	er2,	NEAR __gsCtrlParam+0ah
	cmp	er0,	er2
	beq	_$L84
CBLOCK 4 22 433

;;				I2C0TD = (unsigned char)*_gsCtrlParam.data;
CLINEA 0000H 0001H 01B2H 0005H 002FH
	l	bp,	NEAR __gsCtrlParam+06h
	l	r0,	[bp]
	st	r0,	0f2a2h

;;				_gsCtrlParam.data++;
CLINEA 0000H 0000H 01B3H 0005H 0018H
	mov	er0,	bp
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+06h

;;				_gsCtrlParam.cnt++;
CLINEA 0000H 0000H 01B4H 0005H 0017H
	mov	er0,	er2
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+0ah

;;				I2C0CON = (unsigned char)I2C0CON_I20ST;
CLINEA 0000H 0001H 01B5H 0005H 002BH
	mov	r0,	#01h
CBLOCKEND 4 22 438

;;			else{
CLINEA 0000H 0001H 01B7H 0004H 0008H
	bal	_$L86
_$L84 :
CBLOCK 4 23 439

;;				_gsCtrlParam.status = (unsigned char)I2C_TRANS_END;
CLINEA 0000H 0001H 01B8H 0005H 0037H
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+0fh

;;				I2C0CON = (unsigned char)I2C0CON_I20SP;	/* Stop condition */
CLINEA 0000H 0001H 01BAH 0005H 0040H
	mov	r0,	#02h
CBLOCKEND 4 23 443

;;			}
CLINEA 0000H 0000H 01BBH 0004H 0004H
_$L86 :
	st	r0,	0f2a3h

;;			return ( I2C_R_TRANS_CONT_OK );
CLINEA 0000H 0001H 01BCH 0004H 0022H
	mov	er0,	#0 
	b	_$L44
CBLOCKEND 4 21 473

;;		case I2C_RECEIVE_DATA:
CLINEA 0000H 0001H 01BEH 0003H 0018H
_$L87 :

;;			*_gsCtrlParam.data = I2C0RD;
CLINEA 0000H 0001H 01BFH 0004H 001FH
	l	bp,	NEAR __gsCtrlParam+06h
	l	r0,	0f2a0h
	st	r0,	[bp]

;;			_gsCtrlParam.data++;
CLINEA 0000H 0000H 01C0H 0004H 0017H
	l	er0,	NEAR __gsCtrlParam+06h
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+06h

;;			_gsCtrlParam.cnt++;
CLINEA 0000H 0000H 01C1H 0004H 0016H
	l	er0,	NEAR __gsCtrlParam+0ah
	add	er0,	#1 
	st	er0,	NEAR __gsCtrlParam+0ah

;;			if( _gsCtrlParam.data_size != _gsCtrlParam.cnt ){
CLINEA 0000H 0001H 01C2H 0004H 0034H
	l	er0,	NEAR __gsCtrlParam+08h
	l	er2,	NEAR __gsCtrlParam+0ah
	cmp	er0,	er2
	beq	_$L88
CBLOCK 4 24 450

;;				setbit = (unsigned char)I2C0CON_I20ST;
CLINEA 0000H 0001H 01C3H 0005H 002AH
	mov	r4,	#01h

;;				if( ( _gsCtrlParam.data_size - 1) == _gsCtrlParam.cnt ){
CLINEA 0000H 0001H 01C4H 0005H 003CH
	add	er0,	#-1
	cmp	er0,	er2
	bne	_$L90
CBLOCK 4 25 452

;;					setbit |= (unsigned char)I2C0CON_I20ACT;
CLINEA 0000H 0001H 01C5H 0006H 002DH
	mov	r4,	#081h
CBLOCKEND 4 25 454

;;				}
CLINEA 0000H 0000H 01C6H 0005H 0005H
_$L90 :

;;				I2C0CON = setbit;
CLINEA 0000H 0001H 01C7H 0005H 0015H
	st	r4,	0f2a3h
CBLOCKEND 4 24 456

;;			else{
CLINEA 0000H 0001H 01C9H 0004H 0008H
	bal	_$L92
_$L88 :
CBLOCK 4 26 457

;;				_gsCtrlParam.status = (unsigned char)I2C_TRANS_END;
CLINEA 0000H 0001H 01CAH 0005H 0037H
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam+0fh

;;				I2C0CON = (unsigned char)I2C0CON_I20SP;	/* Stop condition */
CLINEA 0000H 0001H 01CBH 0005H 0040H
	mov	r0,	#02h
	st	r0,	0f2a3h
CBLOCKEND 4 26 460

;;			}
CLINEA 0000H 0000H 01CCH 0004H 0004H
_$L92 :

;;			return(I2C_R_TRANS_CONT_OK);
CLINEA 0000H 0001H 01CDH 0004H 001FH
	mov	er0,	#0 
	b	_$L44
CBLOCKEND 4 1 473
CFUNCTIONEND 4


	rseg $$i2c_stop$i2c
CFUNCTION 5

_i2c_stop	:
CBLOCK 5 1 483

;;{
CLINEA 0000H 0001H 01E3H 0001H 0001H
CBLOCK 5 2 483

;;	I20ST = 0;
CLINEA 0000H 0001H 01E4H 0002H 000BH
	rb	0f2a3h.0

;;	_gsCtrlParam.mode		= 0;
CLINEA 0000H 0001H 01E5H 0002H 0018H
	mov	r0,	#00h
	st	r0,	NEAR __gsCtrlParam

;;	_gsCtrlParam.addr		= (void *)0;
CLINEA 0000H 0001H 01E6H 0002H 0020H
	mov	er0,	#0 
	st	er0,	NEAR __gsCtrlParam+02h

;;	_gsCtrlParam.addr_size	= 0;
CLINEA 0000H 0001H 01E7H 0002H 001CH
	st	er0,	NEAR __gsCtrlParam+04h

;;	_gsCtrlParam.data		= (void *)0;
CLINEA 0000H 0001H 01E8H 0002H 0020H
	st	er0,	NEAR __gsCtrlParam+06h

;;	_gsCtrlParam.data_size	= 0;
CLINEA 0000H 0001H 01E9H 0002H 001CH
	st	er0,	NEAR __gsCtrlParam+08h

;;	_gsCtrlParam.cnt		= 0;
CLINEA 0000H 0001H 01EAH 0002H 0017H
	st	er0,	NEAR __gsCtrlParam+0ah

;;	_gsCtrlParam.callBack	= (void *)0;
CLINEA 0000H 0001H 01EBH 0002H 0023H
	st	er0,	NEAR __gsCtrlParam+0ch

;;	_gsCtrlParam.errStat	= 0;
CLINEA 0000H 0001H 01ECH 0002H 001AH
	st	r0,	NEAR __gsCtrlParam+0eh

;;	_gsCtrlParam.status		= I2C_TRANS_END;
CLINEA 0000H 0001H 01EDH 0002H 0026H
	st	r0,	NEAR __gsCtrlParam+0fh
CBLOCKEND 5 2 494

;;}
CLINEA 0000H 0001H 01EEH 0001H 0001H
	rt
CBLOCKEND 5 1 494
CFUNCTIONEND 5


	rseg $$i2c_checkIRQ$i2c
CFUNCTION 6

_i2c_checkIRQ	:
CBLOCK 6 1 506

;;{
CLINEA 0000H 0001H 01FAH 0001H 0001H
CBLOCK 6 2 506
CLOCAL 46H 0001H 0014H 0002H "qua0" 02H 00H 00H
CLOCAL 47H 0002H 0024H 0002H "ret" 02H 00H 01H

;;	qua0 = (unsigned char)( IRQ2 & (unsigned char)IRQ2_QI2C0 );
CLINEA 0000H 0001H 01FEH 0002H 003CH
	l	r0,	0f01ah
	and	r0,	#080h

;;	if( qua0 == (unsigned char)IRQ2_QI2C0 ){
CLINEA 0000H 0001H 01FFH 0002H 0029H
	cmp	r0,	#080h
	bne	_$L98
CBLOCK 6 3 511

;;		ret = ( I2C_R_IRQ );
CLINEA 0000H 0001H 0200H 0003H 0016H
	mov	er0,	#1 
CBLOCKEND 6 3 513

;;	else{
CLINEA 0000H 0001H 0202H 0002H 0006H
	rt
_$L98 :
CBLOCK 6 4 514

;;		ret = ( I2C_R_NON_IRQ );
CLINEA 0000H 0001H 0203H 0003H 001AH
	mov	er0,	#0 
CBLOCKEND 6 4 516

;;	return ret;
CLINEA 0000H 0001H 0206H 0002H 000CH
CBLOCKEND 6 2 519

;;}
CLINEA 0000H 0000H 0207H 0001H 0001H
	rt
CBLOCKEND 6 1 519
CFUNCTIONEND 6


	rseg $$i2c_clearIRQ$i2c
CFUNCTION 7

_i2c_clearIRQ	:
CBLOCK 7 1 529

;;{
CLINEA 0000H 0001H 0211H 0001H 0001H
CBLOCK 7 2 529

;;	QI2CM = 0;
CLINEA 0000H 0001H 0215H 0002H 000BH
	rb	0f01ah.7
CBLOCKEND 7 2 535

;;}
CLINEA 0000H 0001H 0217H 0001H 0001H
	rt
CBLOCKEND 7 1 535
CFUNCTIONEND 7


	rseg $$i2c_getTransSize$i2c
CFUNCTION 8

_i2c_getTransSize	:
CBLOCK 8 1 546

;;{
CLINEA 0000H 0001H 0222H 0001H 0001H
CBLOCK 8 2 546

;;	return _gsCtrlParam.cnt;
CLINEA 0000H 0001H 0223H 0002H 0019H
	l	er0,	NEAR __gsCtrlParam+0ah
CBLOCKEND 8 2 548

;;}
CLINEA 0000H 0000H 0224H 0001H 0001H
	rt
CBLOCKEND 8 1 548
CFUNCTIONEND 8

	public _i2c_getTransSize
	public _i2c_stop
	public _i2c_startReceive
	public _i2c_continue
	public _i2c_startSend
	public _i2c_init
	public _i2c_clearIRQ
	public _i2c_checkIRQ
	extrn code near : _main

	rseg $$NINITTAB
	db	00h
	align
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	dw	00h
	db	00h
	db	00h

	rseg $$NINITVAR
__gsCtrlParam :
	ds	010h
	extrn code : __uidivu8sw

	end
