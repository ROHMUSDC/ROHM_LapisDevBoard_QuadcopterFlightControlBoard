;; Compile Options : /TML610112 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Iuart /Ii2c /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : clock.c

	type (ML610112) 
	model small, near
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$clk_disHsclk$clock segment code 2h #0h
	$$clk_enaHsclk$clock segment code 2h #0h
	$$clk_getHsclk$clock segment code 2h #0h
	$$clk_getSysclk$clock segment code 2h #0h
	$$clk_setHsclk$clock segment code 2h #0h
	$$clk_setSysclk$clock segment code 2h #0h
CVERSION 3.41.8
CGLOBAL 01H 03H 0000H "clk_disHsclk" 08H 02H 04H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "clk_enaHsclk" 08H 02H 03H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "clk_getSysclk" 08H 02H 01H 00H 80H 06H 00H 00H 07H
CGLOBAL 01H 03H 0000H "clk_setSysclk" 08H 02H 00H 00H 83H 0aH 00H 00H 01H
CGLOBAL 01H 03H 0000H "clk_setHsclk" 08H 02H 02H 00H 80H 04H 00H 00H 01H
CGLOBAL 01H 02H 0000H "clk_getHsclk" 08H 02H 05H 00H 80H 02H 00H 00H 02H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CSGLOBAL 42H 0002H "_gsHsclk" 02H 00H 08H
CFILE 0001H 00000023H "main\\mcu.h"
CFILE 0002H 0000085AH "main\\ML610112.H"
CFILE 0003H 00000043H "clock\\clock.h"
CFILE 0000H 00000173H "clock\\clock.c"

	rseg $$clk_setSysclk$clock
CFUNCTION 0

_clk_setSysclk	:
CBLOCK 0 1 90

;;{
CLINEA 0000H 0001H 005AH 0001H 0001H
	push	lr
	push	fp
	mov	fp,	sp
	push	xr8
	push	er4
	mov	er8,	er0
	mov	r10,	r2
CBLOCK 0 2 90
CRET 0008H
CARGUMENT 46H 0001H 001CH "sysclk" 02H 00H 00H
CARGUMENT 46H 0001H 001DH "sysc" 02H 00H 00H
CARGUMENT 46H 0001H 001EH "oscm" 02H 00H 00H
CARGUMENT 42H 0002H 0004H "kHz" 02H 00H 01H
CLOCAL 46H 0001H 0016H 0002H "reg" 02H 00H 00H
CLOCAL 46H 0001H 0018H 0002H "loop" 02H 00H 00H
CLOCAL 46H 0001H 0019H 0002H "loopCnt" 02H 00H 00H

;;	if( sysclk > (unsigned char)1 ){
CLINEA 0000H 0001H 005FH 0002H 0021H
	cmp	r0,	#01h
	ble	_$L1
CBLOCK 0 3 95

;;		return ( CLK_R_ERR_SCLK );
CLINEA 0000H 0001H 0060H 0003H 001CH
	mov	er0,	#-1
CBLOCKEND 0 3 97
CBLOCKEND 0 2 150

;;}
CLINEA 0000H 0001H 0096H 0001H 0001H
_$L0 :
	pop	er4
	pop	xr8
	mov	sp,	fp
	pop	fp
	pop	pc

;;	}
CLINEA 0000H 0000H 0061H 0002H 0002H
_$L1 :

;;	if( sysclk == (unsigned char)CLK_SYSCLK_HSCLK ){
CLINEA 0000H 0001H 0064H 0002H 0031H
	cmp	r0,	#01h
	bne	_$L7
CBLOCK 0 4 100

;;		if( sysc > (unsigned char)3 ){
CLINEA 0000H 0001H 0065H 0003H 0020H
	cmp	r9,	#03h
	ble	_$L5
CBLOCK 0 5 101

;;			return ( CLK_R_ERR_SYSC );
CLINEA 0000H 0001H 0066H 0004H 001DH
	mov	er0,	#-2
	bal	_$L0
CBLOCKEND 0 5 103

;;		}
CLINEA 0000H 0000H 0067H 0003H 0003H
_$L5 :

;;		if( oscm > (unsigned char)3 ){
CLINEA 0000H 0001H 0068H 0003H 0020H
	cmp	r10,	#03h
	ble	_$L7
CBLOCK 0 6 104

;;			return ( CLK_R_ERR_OSCM );
CLINEA 0000H 0001H 0069H 0004H 001DH
	mov	er0,	#-3
	bal	_$L0
CBLOCKEND 0 6 106

;;		}
CLINEA 0000H 0000H 006AH 0003H 0003H
_$L7 :
CBLOCKEND 0 4 107

;;	if( sysclk == (unsigned char)CLK_SYSCLK_LSCLK ){
CLINEA 0000H 0001H 006EH 0002H 0031H
	cmp	r8,	#00h
	bne	_$L9
CBLOCK 0 7 110

;;		SYSCLK = 0;
CLINEA 0000H 0001H 0070H 0003H 000DH
	rb	0f003h.0
CBLOCKEND 0 7 113

;;	}else{
CLINEA 0000H 0000H 0071H 0002H 0007H
	bal	_$L11
_$L9 :
CBLOCK 0 8 113

;;		SYSCLK = 0;
CLINEA 0000H 0001H 0073H 0003H 000DH
	rb	0f003h.0

;;		ENOSC = 0;
CLINEA 0000H 0001H 0074H 0003H 000CH
	rb	0f003h.1

;;		reg  = FCON0;
CLINEA 0000H 0001H 0075H 0003H 000FH
	l	r0,	0f002h
	mov	r2,	r0

;;		reg &= (unsigned char)( ~( FCON0_OSCM1 | FCON0_OSCM0 | FCON0_SYSC1 | FCON0_SYSC0 ) );
CLINEA 0000H 0001H 0076H 0003H 0057H
	and	r0,	#0f0h
	mov	r2,	r0

;;		reg |= ( sysc | (unsigned char)( oscm << 2 ) ) ;
CLINEA 0000H 0001H 0077H 0003H 0032H
	mov	r0,	r10
	sll	r0,	#02h
	or	r0,	r9
	mov	r1,	r2
	or	r1,	r0

;;		FCON0 = reg;
CLINEA 0000H 0001H 0078H 0003H 000EH
	st	r1,	0f002h

;;		ENOSC = 1;
CLINEA 0000H 0001H 0079H 0003H 000CH
	sb	0f003h.1

;;		switch( (int)oscm ){
CLINEA 0000H 0001H 007BH 0003H 0016H
CBLOCK 0 9 123
	cmp	r10,	#01h
	beq	_$L19

;;		switch( (int)oscm ){
CLINEA 0000H 0000H 007BH 0003H 0016H
	cmp	r10,	#02h
	beq	_$L18

;;		switch( (int)oscm ){
CLINEA 0000H 0000H 007BH 0003H 0016H
	cmp	r10,	#03h
	beq	_$L17

;;				loopCnt = 1;
CLINEA 0000H 0001H 008CH 0005H 0010H
	mov	r0,	#01h
CBLOCKEND 0 9 142

;;		}
CLINEA 0000H 0000H 008EH 0003H 0003H
_$L15 :
	mov	r5,	r0

;;		for( loop=0; loop<loopCnt; loop++ ){
CLINEA 0000H 0001H 008FH 0008H 000EH
	mov	r4,	#00h

;;		for( loop=0; loop<loopCnt; loop++ ){
CLINEA 0000H 0000H 008FH 0010H 001CH
	bal	_$L25

;;		for( loop=0; loop<loopCnt; loop++ ){
CLINEA 0000H 0000H 008FH 001EH 0024H
_$L22 :
CBLOCK 0 10 143

;;			clk_wait500us();
CLINEA 0000H 0001H 0090H 0004H 0013H
	bl	_clk_wait500us
CBLOCKEND 0 10 145

;;		for( loop=0; loop<loopCnt; loop++ ){
CLINEA 0000H 0000H 008FH 001EH 0024H
	add	r4,	#01h

;;		for( loop=0; loop<loopCnt; loop++ ){
CLINEA 0000H 0000H 008FH 0010H 001CH
_$L25 :
	cmp	r4,	r5
	blt	_$L22

;;		SYSCLK = 1;
CLINEA 0000H 0001H 0092H 0003H 000DH
	sb	0f003h.0
CBLOCKEND 0 8 147

;;	}
CLINEA 0000H 0000H 0093H 0002H 0002H
_$L11 :

;;	return ( CLK_R_OK );
CLINEA 0000H 0001H 0095H 0002H 0015H
	mov	er0,	#0 
	bal	_$L0

;;			case CLK_OSCM_EXTCLK:
CLINEA 0000H 0001H 007DH 0004H 0018H
_$L17 :

;;				_gsHsclk = kHz;
CLINEA 0000H 0001H 007EH 0005H 0013H
	l	er0,	4[fp]
	st	er0,	NEAR __gsHsclk

;;				loopCnt = 2;
CLINEA 0000H 0001H 007FH 0005H 0010H
	mov	r0,	#02h

;;				break;
CLINEA 0000H 0001H 0080H 0005H 000AH
	bal	_$L15

;;			case CLK_OSCM_PLL:
CLINEA 0000H 0001H 0082H 0004H 0015H
_$L18 :

;;				loopCnt = 20;
CLINEA 0000H 0001H 0083H 0005H 0011H
	mov	r0,	#014h

;;				break;
CLINEA 0000H 0001H 0084H 0005H 000AH
	bal	_$L15

;;			case CLK_OSCM_CRYSTAL:
CLINEA 0000H 0001H 0086H 0004H 0019H
_$L19 :

;;				loopCnt = 40;
CLINEA 0000H 0001H 0087H 0005H 0011H
	mov	r0,	#028h

;;				break;
CLINEA 0000H 0001H 0088H 0005H 000AH
	bal	_$L15
CBLOCKEND 0 1 150
CFUNCTIONEND 0


	rseg $$clk_getSysclk$clock
CFUNCTION 1

_clk_getSysclk	:
CBLOCK 1 1 168

;;{
CLINEA 0000H 0001H 00A8H 0001H 0001H
	push	xr8
	push	er4
	mov	er8,	er0
	mov	er10,	er2
CBLOCK 1 2 168
CARGUMENT 46H 0002H 0028H "mode" 04H 03H 00H 00H 00H
CARGUMENT 46H 0002H 0029H "kHz" 04H 03H 00H 00H 01H
CLOCAL 46H 0001H 0016H 0002H "sysclk" 02H 00H 00H
CLOCAL 46H 0001H 0018H 0002H "sysc" 02H 00H 00H
CLOCAL 46H 0001H 0014H 0002H "oscm" 02H 00H 00H

;;	sysclk = (unsigned char)( FCON1 & (unsigned char)FCON1_SYSCLK );
CLINEA 0000H 0001H 00ADH 0002H 0041H
	l	r0,	0f003h
	and	r0,	#01h

;;	*mode = sysclk;
CLINEA 0000H 0001H 00AEH 0002H 0010H
	st	r0,	[er8]

;;	if( sysclk == (unsigned char)CLK_SYSCLK_LSCLK ){
CLINEA 0000H 0001H 00B0H 0002H 0031H
	cmp	r0,	#00h
	bne	_$L27
CBLOCK 1 3 176

;;		*mode = (unsigned char)CLK_SYSCLK_LSCLK;
CLINEA 0000H 0001H 00B1H 0003H 002AH
	mov	r2,	#00h
	st	r2,	[er8]

;;		*kHz  = (unsigned short)32;
CLINEA 0000H 0001H 00B2H 0003H 001DH
	mov	er2,	#32
	st	er2,	[er10]
CBLOCKEND 1 3 179

;;	else{
CLINEA 0000H 0001H 00B4H 0002H 0006H
	bal	_$L29
_$L27 :
CBLOCK 1 4 180

;;		*mode = (unsigned char)CLK_SYSCLK_HSCLK;
CLINEA 0000H 0001H 00B5H 0003H 002AH
	mov	r2,	#01h
	st	r2,	[er8]

;;		sysc  = (unsigned char)( FCON0 & (FCON0_SYSC0|FCON0_SYSC1) );
CLINEA 0000H 0001H 00B6H 0003H 003FH
	l	r0,	0f002h
	and	r0,	#03h
	mov	r4,	r0

;;		oscm  = (unsigned char)( FCON0 & (FCON0_OSCM0|FCON0_OSCM1) );
CLINEA 0000H 0001H 00B7H 0003H 003FH
	l	r0,	0f002h
	and	r0,	#0ch

;;		switch( oscm >> 2 ){
CLINEA 0000H 0001H 00BAH 0003H 0016H
	mov	r1,	#00h
	srlc	r0,	#02h
	sra	r1,	#02h
	mov	er2,	er0
CBLOCK 1 5 186
	cmp	r1,	#00h
	bne	_$L34
	mov	r0,	r2
	beq	_$L35

;;		switch( oscm >> 2 ){
CLINEA 0000H 0000H 00BAH 0003H 0016H
	cmp	r2,	#01h
	beq	_$L39

;;		switch( oscm >> 2 ){
CLINEA 0000H 0000H 00BAH 0003H 0016H
	cmp	r2,	#02h
	beq	_$L36

;;		switch( oscm >> 2 ){
CLINEA 0000H 0000H 00BAH 0003H 0016H
	cmp	r2,	#03h
	beq	_$L40

;;			default:
CLINEA 0000H 0001H 00CFH 0004H 000BH
_$L34 :

;;				*kHz  = (unsigned short)0;
CLINEA 0000H 0001H 00D0H 0005H 001EH
	mov	er2,	#0 
	st	er2,	[er10]
CBLOCKEND 1 5 210

;;		}
CLINEA 0000H 0000H 00D2H 0003H 0003H
_$L33 :

;;		*kHz >>= sysc;
CLINEA 0000H 0001H 00D3H 0003H 0010H
	l	er0,	[er10]
	mov	r2,	r4
_$M3 :
	cmp	r2,	#07h
	ble	_$M2
	srlc	r0,	#07h
	srl	r1,	#07h
	add	r2,	#0f9h
	bne	_$M3
_$M2 :
	srlc	r0,	r2
	srl	r1,	r2
	st	er0,	[er10]
CBLOCKEND 1 4 212

;;	}
CLINEA 0000H 0000H 00D4H 0002H 0002H
_$L29 :
CBLOCKEND 1 2 213

;;}
CLINEA 0000H 0001H 00D5H 0001H 0001H
	pop	er4
	pop	xr8
	rt

;;			case CLK_OSCM_RC:
CLINEA 0000H 0001H 00BCH 0004H 0014H
_$L35 :

;;				*kHz  = (unsigned short)500;
CLINEA 0000H 0001H 00BDH 0005H 0020H
	mov	r2,	#0f4h
	mov	r3,	#01h
	st	er2,	[er10]

;;				break;
CLINEA 0000H 0001H 00BEH 0005H 000AH
	bal	_$L33

;;			case CLK_OSCM_PLL:
CLINEA 0000H 0001H 00C0H 0004H 0015H
_$L36 :

;;				*kHz  = (unsigned short)8192;
CLINEA 0000H 0001H 00C1H 0005H 0021H
	mov	r2,	#00h
	mov	r3,	#020h
	st	er2,	[er10]

;;				if( sysc == CLK_SYSC_OSCLK ){
CLINEA 0000H 0001H 00C2H 0005H 0021H
	cmp	r4,	#00h
	bne	_$L33
CBLOCK 1 6 194

;;					sysc = (unsigned char)CLK_SYSC_OSCLK_DIV2;
CLINEA 0000H 0001H 00C3H 0006H 002FH
	mov	r4,	#01h
CBLOCKEND 1 6 196

;;				break;
CLINEA 0000H 0001H 00C5H 0005H 000AH
	bal	_$L33

;;			case CLK_OSCM_CRYSTAL:
CLINEA 0000H 0001H 00C7H 0004H 0019H
_$L39 :

;;				*kHz = (unsigned short)4096;
CLINEA 0000H 0001H 00C8H 0005H 0020H
	mov	r2,	#00h
	mov	r3,	#010h
	st	er2,	[er10]

;;				break;
CLINEA 0000H 0001H 00C9H 0005H 000AH
	bal	_$L33

;;			case CLK_OSCM_EXTCLK:
CLINEA 0000H 0001H 00CBH 0004H 0018H
_$L40 :

;;				*kHz  = _gsHsclk;
CLINEA 0000H 0001H 00CCH 0005H 0015H
	l	er2,	NEAR __gsHsclk
	st	er2,	[er10]

;;				break;
CLINEA 0000H 0001H 00CDH 0005H 000AH
	bal	_$L33
CBLOCKEND 1 1 213
CFUNCTIONEND 1


	rseg $$clk_setHsclk$clock
CFUNCTION 2

_clk_setHsclk	:
CBLOCK 2 1 238

;;{
CLINEA 0000H 0001H 00EEH 0001H 0001H
	push	xr8
	mov	er8,	er0
	mov	er10,	er2
CBLOCK 2 2 238
CARGUMENT 46H 0001H 001CH "sysc" 02H 00H 00H
CARGUMENT 46H 0001H 001DH "oscm" 02H 00H 00H
CARGUMENT 46H 0002H 0029H "kHz" 02H 00H 01H
CLOCAL 46H 0001H 0014H 0002H "enosc" 02H 00H 00H
CLOCAL 46H 0001H 0016H 0002H "reg" 02H 00H 00H

;;	enosc = (unsigned char)( FCON1 & FCON1_ENOSC );
CLINEA 0000H 0001H 00F3H 0002H 0030H
	l	r0,	0f003h
	and	r0,	#02h

;;	if( enosc != (unsigned char)0 ){
CLINEA 0000H 0001H 00F4H 0002H 0021H
	cmp	r0,	#00h
	beq	_$L42
CBLOCK 2 3 244

;;		return ( CLK_R_ERR_ENOSC );
CLINEA 0000H 0001H 00F5H 0003H 001DH
	mov	er0,	#-4
CBLOCKEND 2 3 246
CBLOCKEND 2 2 264

;;}
CLINEA 0000H 0001H 0108H 0001H 0001H
_$L41 :
	pop	xr8
	rt

;;	}
CLINEA 0000H 0000H 00F6H 0002H 0002H
_$L42 :

;;	if( sysc > (unsigned char)3 ){
CLINEA 0000H 0001H 00F8H 0002H 001FH
	cmp	r8,	#03h
	ble	_$L44
CBLOCK 2 4 248

;;		return ( CLK_R_ERR_SYSC );
CLINEA 0000H 0001H 00F9H 0003H 001CH
	mov	er0,	#-2
	bal	_$L41
CBLOCKEND 2 4 250

;;	}
CLINEA 0000H 0000H 00FAH 0002H 0002H
_$L44 :

;;	if( oscm > (unsigned char)3 ){
CLINEA 0000H 0001H 00FBH 0002H 001FH
	cmp	r9,	#03h
	ble	_$L46
CBLOCK 2 5 251

;;		return ( CLK_R_ERR_OSCM );
CLINEA 0000H 0001H 00FCH 0003H 001CH
	mov	er0,	#-3
	bal	_$L41
CBLOCKEND 2 5 253

;;	}
CLINEA 0000H 0000H 00FDH 0002H 0002H
_$L46 :

;;	reg  = FCON0;
CLINEA 0000H 0001H 00FFH 0002H 000EH
	l	r0,	0f002h
	mov	r2,	r0

;;	reg &= (unsigned char)( ~( FCON0_OSCM1 | FCON0_OSCM0 | FCON0_SYSC1 | FCON0_SYSC0 ) );
CLINEA 0000H 0001H 0100H 0002H 0056H
	and	r0,	#0f0h
	mov	r2,	r0

;;	reg |= ( sysc | (unsigned char)( oscm << 2 ) );
CLINEA 0000H 0001H 0101H 0002H 0030H
	mov	r0,	r9
	sll	r0,	#02h
	or	r0,	r8
	mov	r1,	r2
	or	r1,	r0

;;	FCON0 = reg;
CLINEA 0000H 0001H 0102H 0002H 000DH
	st	r1,	0f002h

;;	if( oscm == CLK_OSCM_EXTCLK ) {
CLINEA 0000H 0001H 0103H 0002H 0020H
	cmp	r9,	#03h
	bne	_$L48
CBLOCK 2 6 259

;;		_gsHsclk = kHz;
CLINEA 0000H 0001H 0104H 0003H 0011H
	st	er10,	NEAR __gsHsclk
CBLOCKEND 2 6 261

;;	}
CLINEA 0000H 0000H 0105H 0002H 0002H
_$L48 :

;;	return CLK_R_OK;
CLINEA 0000H 0001H 0107H 0002H 0011H
	mov	er0,	#0 
	bal	_$L41
CBLOCKEND 2 1 264
CFUNCTIONEND 2


	rseg $$clk_enaHsclk$clock
CFUNCTION 3

_clk_enaHsclk	:
CBLOCK 3 1 275

;;{
CLINEA 0000H 0001H 0113H 0001H 0001H
CBLOCK 3 2 275

;;	ENOSC = 1;
CLINEA 0000H 0001H 0114H 0002H 000BH
	sb	0f003h.1
CBLOCKEND 3 2 277

;;}
CLINEA 0000H 0001H 0115H 0001H 0001H
	rt
CBLOCKEND 3 1 277
CFUNCTIONEND 3


	rseg $$clk_disHsclk$clock
CFUNCTION 4

_clk_disHsclk	:
CBLOCK 4 1 287

;;{
CLINEA 0000H 0001H 011FH 0001H 0001H
CBLOCK 4 2 287

;;	ENOSC = 0;
CLINEA 0000H 0001H 0120H 0002H 000BH
	rb	0f003h.1
CBLOCKEND 4 2 289

;;}
CLINEA 0000H 0001H 0121H 0001H 0001H
	rt
CBLOCKEND 4 1 289
CFUNCTIONEND 4


	rseg $$clk_getHsclk$clock
CFUNCTION 5

_clk_getHsclk	:
CBLOCK 5 1 301

;;{
CLINEA 0000H 0001H 012DH 0001H 0001H
	push	er4
CBLOCK 5 2 301
CLOCAL 46H 0001H 0016H 0002H "sysc" 02H 00H 00H
CLOCAL 46H 0001H 0014H 0002H "oscm" 02H 00H 00H
CLOCAL 46H 0002H 0026H 0002H "kHz" 02H 00H 08H

;;	if( ENOSC == 1 ){
CLINEA 0000H 0001H 0132H 0002H 0012H
	tb	0f003h.1
	beq	_$L53
CBLOCK 5 3 306

;;		sysc = (unsigned char)( FCON0 & (unsigned char)(FCON0_SYSC0|FCON0_SYSC1) );
CLINEA 0000H 0001H 0133H 0003H 004DH
	l	r0,	0f002h
	and	r0,	#03h
	mov	r2,	r0

;;		oscm = (unsigned char)( FCON0 & (unsigned char)(FCON0_OSCM0|FCON0_OSCM1) );
CLINEA 0000H 0001H 0134H 0003H 004DH
	l	r0,	0f002h
	and	r0,	#0ch

;;		switch( oscm >> 2 ){
CLINEA 0000H 0001H 0135H 0003H 0016H
	mov	r1,	#00h
	srlc	r0,	#02h
	sra	r1,	#02h
	mov	er4,	er0
CBLOCK 5 4 309
	cmp	r1,	#00h
	bne	_$L59
	mov	r0,	r4
	beq	_$L60

;;		switch( oscm >> 2 ){
CLINEA 0000H 0000H 0135H 0003H 0016H
	cmp	r4,	#01h
	beq	_$L64

;;		switch( oscm >> 2 ){
CLINEA 0000H 0000H 0135H 0003H 0016H
	cmp	r4,	#02h
	beq	_$L61

;;		switch( oscm >> 2 ){
CLINEA 0000H 0000H 0135H 0003H 0016H
	cmp	r4,	#03h
	beq	_$L65

;;			default:
CLINEA 0000H 0001H 014AH 0004H 000BH
_$L59 :

;;				kHz = (unsigned short)0;
CLINEA 0000H 0001H 014BH 0005H 001CH
	mov	er4,	#0 
CBLOCKEND 5 4 333

;;		}
CLINEA 0000H 0000H 014DH 0003H 0003H
_$L58 :

;;		kHz >>= sysc;
CLINEA 0000H 0001H 014EH 0003H 000FH
	mov	er0,	er4
_$M9 :
	cmp	r2,	#07h
	ble	_$M8
	srlc	r0,	#07h
	srl	r1,	#07h
	add	r2,	#0f9h
	bne	_$M9
_$M8 :
	srlc	r0,	r2
	srl	r1,	r2
CBLOCKEND 5 3 335

;;	else{
CLINEA 0000H 0001H 0150H 0002H 0006H
	bal	_$L66
_$L53 :
CBLOCK 5 6 336

;;		kHz = (unsigned short)0;
CLINEA 0000H 0001H 0151H 0003H 001AH
	mov	er0,	#0 
CBLOCKEND 5 6 338

;;	}
CLINEA 0000H 0000H 0152H 0002H 0002H
_$L66 :

;;	return kHz;
CLINEA 0000H 0001H 0154H 0002H 000CH
	mov	er2,	#0 
CBLOCKEND 5 2 341

;;}
CLINEA 0000H 0000H 0155H 0001H 0001H
	pop	er4
	rt

;;			case CLK_OSCM_RC:
CLINEA 0000H 0001H 0137H 0004H 0014H
_$L60 :

;;				kHz = (unsigned short)500;
CLINEA 0000H 0001H 0138H 0005H 001EH
	mov	r4,	#0f4h
	mov	r5,	#01h

;;				break;
CLINEA 0000H 0001H 0139H 0005H 000AH
	bal	_$L58

;;			case CLK_OSCM_PLL:
CLINEA 0000H 0001H 013BH 0004H 0015H
_$L61 :

;;				kHz = (unsigned short)8192;
CLINEA 0000H 0001H 013CH 0005H 001FH
	mov	r4,	#00h
	mov	r5,	#020h

;;				if( sysc == (unsigned char)CLK_SYSC_OSCLK ){
CLINEA 0000H 0001H 013DH 0005H 0030H
	cmp	r2,	#00h
	bne	_$L58
CBLOCK 5 5 317

;;					sysc = (unsigned char)CLK_SYSC_OSCLK_DIV2;
CLINEA 0000H 0001H 013EH 0006H 002FH
	mov	r2,	#01h
CBLOCKEND 5 5 319

;;				break;
CLINEA 0000H 0001H 0140H 0005H 000AH
	bal	_$L58

;;			case CLK_OSCM_CRYSTAL:
CLINEA 0000H 0001H 0142H 0004H 0019H
_$L64 :

;;				kHz = (unsigned short)4096;
CLINEA 0000H 0001H 0143H 0005H 001FH
	mov	r4,	#00h
	mov	r5,	#010h

;;				break;
CLINEA 0000H 0001H 0144H 0005H 000AH
	bal	_$L58

;;			case CLK_OSCM_EXTCLK:
CLINEA 0000H 0001H 0146H 0004H 0018H
_$L65 :

;;				kHz = _gsHsclk;
CLINEA 0000H 0001H 0147H 0005H 0013H
	l	er0,	NEAR __gsHsclk
	mov	er4,	er0

;;				break;
CLINEA 0000H 0001H 0148H 0005H 000AH
	bal	_$L58
CBLOCKEND 5 1 341
CFUNCTIONEND 5

	public _clk_disHsclk
	public _clk_enaHsclk
	public _clk_getSysclk
	public _clk_setSysclk
	public _clk_setHsclk
	public _clk_getHsclk
	extrn code near : _clk_wait500us
	extrn code near : _main

	rseg $$NINITTAB
	dw	01000h

	rseg $$NINITVAR
__gsHsclk :
	ds	02h

	end
