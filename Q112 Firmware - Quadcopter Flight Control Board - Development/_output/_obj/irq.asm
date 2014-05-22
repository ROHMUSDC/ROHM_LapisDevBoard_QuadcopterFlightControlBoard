;; Compile Options : /TML610112 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Iuart /Ii2c /SS 256 /SD /Oa /Ot /W 3 /Wc /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : irq.c

	type (ML610112) 
	model small, near
	$$NVARirq segment data 2h #0h
	$$_branchHdr$irq segment code 2h #0h
	$$_intCMP0INT$irq segment code 2h #0h
	$$_intCMP1INT$irq segment code 2h #0h
	$$_intI2CMINT$irq segment code 2h #0h
	$$_intI2CSINT$irq segment code 2h #0h
	$$_intNullHdr$irq segment code 2h #0h
	$$_intPA0INT$irq segment code 2h #0h
	$$_intPA1INT$irq segment code 2h #0h
	$$_intPA2INT$irq segment code 2h #0h
	$$_intPB0INT$irq segment code 2h #0h
	$$_intPB1INT$irq segment code 2h #0h
	$$_intPB2INT$irq segment code 2h #0h
	$$_intPB3INT$irq segment code 2h #0h
	$$_intPWCINT$irq segment code 2h #0h
	$$_intPWDINT$irq segment code 2h #0h
	$$_intPWEINT$irq segment code 2h #0h
	$$_intPWFINT$irq segment code 2h #0h
	$$_intSADINT$irq segment code 2h #0h
	$$_intSIO0INT$irq segment code 2h #0h
	$$_intT128HINT$irq segment code 2h #0h
	$$_intT16HINT$irq segment code 2h #0h
	$$_intT2HINT$irq segment code 2h #0h
	$$_intT32HINT$irq segment code 2h #0h
	$$_intTM8INT$irq segment code 2h #0h
	$$_intTM9INT$irq segment code 2h #0h
	$$_intTMAINT$irq segment code 2h #0h
	$$_intTMBINT$irq segment code 2h #0h
	$$_intTMEINT$irq segment code 2h #0h
	$$_intTMFINT$irq segment code 2h #0h
	$$_intUA0INT$irq segment code 2h #0h
	$$_intUA1INT$irq segment code 2h #0h
	$$_intUndefHdr$irq segment code 2h #0h
	$$_intVLSINT$irq segment code 2h #0h
	$$_intWDTINT$irq segment code 2h #0h
	$$irq_di$irq segment code 2h #0h
	$$irq_ei$irq segment code 2h #0h
	$$irq_init$irq segment code 2h #0h
	$$irq_setHdr$irq segment code 2h #0h
CVERSION 3.41.8
CSGLOBAL 03H 0000H "_intCMP1INT" 08H 02H 1AH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intT32HINT" 08H 02H 24H 00H 91H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "irq_init" 08H 02H 00H 00H 80H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "_intCMP0INT" 08H 02H 19H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intTM8INT" 08H 02H 15H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intTM9INT" 08H 02H 16H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intT128HINT" 08H 02H 23H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intT2HINT" 08H 02H 26H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2CMINT" 08H 02H 14H 00H 91H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "irq_di" 08H 02H 02H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "irq_ei" 08H 02H 01H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intWDTINT" 08H 02H 08H 00H 91H 0eH 00H 00H 07H
CSGLOBAL 03H 0000H "_intPA0INT" 08H 02H 0AH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intTMAINT" 08H 02H 1DH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intPA1INT" 08H 02H 0BH 00H 91H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "irq_setHdr" 08H 02H 04H 00H 80H 04H 00H 00H 01H
CSGLOBAL 03H 0000H "_intSIO0INT" 08H 02H 11H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2CSINT" 08H 02H 13H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intSADINT" 08H 02H 12H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intPB0INT" 08H 02H 0DH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_branchHdr" 08H 02H 30H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intTMEINT" 08H 02H 1BH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intPB1INT" 08H 02H 0EH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intTMBINT" 08H 02H 1EH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intPA2INT" 08H 02H 0CH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intT16HINT" 08H 02H 25H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intTMFINT" 08H 02H 1CH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intPB2INT" 08H 02H 0FH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intPB3INT" 08H 02H 10H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intPWDINT" 08H 02H 20H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intPWEINT" 08H 02H 21H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intPWCINT" 08H 02H 1FH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intUA0INT" 08H 02H 17H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intUndefHdr" 08H 02H 06H 00H 90H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intUA1INT" 08H 02H 18H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intPWFINT" 08H 02H 22H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intVLSINT" 08H 02H 09H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intNullHdr" 08H 02H 07H 00H 80H 00H 00H 00H 07H
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
CSGLOBAL 43H 003EH "_sIrqHdr" 0DH 01H 1FH 00H 03H 00H 02H 05H 00H 10H 00H 00H 00H 07H
CFILE 0001H 00000023H "main\\mcu.h"
CFILE 0002H 0000085AH "main\\ML610112.H"
CFILE 0003H 00000057H "irq\\irq.h"
CFILE 0000H 00000141H "irq\\irq.c"

	rseg $$irq_init$irq
CFUNCTION 0

_irq_init	:
CBLOCK 0 1 151

;;{
CLINEA 0000H 0001H 0097H 0001H 0001H
	push	er4
CBLOCK 0 2 151
CLOCAL 47H 0002H 0026H 0002H "irqNo" 02H 00H 01H

;;	IE1 = (unsigned char)0x00u;
CLINEA 0000H 0001H 009BH 0002H 001CH
	mov	r0,	#00h
	st	r0,	0f011h

;;	IE2 = (unsigned char)0x00u;
CLINEA 0000H 0001H 009CH 0002H 001CH
	st	r0,	0f012h

;;	IE3 = (unsigned char)0x00u;
CLINEA 0000H 0001H 009DH 0002H 001CH
	st	r0,	0f013h

;;	IE4 = (unsigned char)0x00u;
CLINEA 0000H 0001H 009EH 0002H 001CH
	st	r0,	0f014h

;;	IE5 = (unsigned char)0x00u;
CLINEA 0000H 0001H 009FH 0002H 001CH
	st	r0,	0f015h

;;	IE6 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A0H 0002H 001CH
	st	r0,	0f016h

;;	IE7 =  (unsigned char)0x00u;
CLINEA 0000H 0001H 00A1H 0002H 001DH
	st	r0,	0f017h

;;	IRQ0 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A3H 0002H 001DH
	st	r0,	0f018h

;;	IRQ1 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A4H 0002H 001DH
	st	r0,	0f019h

;;	IRQ2 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A5H 0002H 001DH
	st	r0,	0f01ah

;;	IRQ3 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A6H 0002H 001DH
	st	r0,	0f01bh

;;	IRQ4 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A7H 0002H 001DH
	st	r0,	0f01ch

;;	IRQ5 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A8H 0002H 001DH
	st	r0,	0f01dh

;;	IRQ6 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A9H 0002H 001DH
	st	r0,	0f01eh

;;	IRQ7 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00AAH 0002H 001DH
	st	r0,	0f01fh

;;	for( irqNo = 0; irqNo < IRQ_SIZE; irqNo++ ) {
CLINEA 0000H 0001H 00ADH 0002H 002EH
	mov	er4,	#0 
_$L3 :
CBLOCK 0 3 173

;;		_sIrqHdr[irqNo] = _intNullHdr;
CLINEA 0000H 0001H 00AEH 0003H 0020H
	mov	er0,	er4
	add	er0,	er4
	mov	r2,	#BYTE1 OFFSET __intNullHdr
	mov	r3,	#BYTE2 OFFSET __intNullHdr
	st	er2,	NEAR __sIrqHdr[er0]
CBLOCKEND 0 3 175

;;	for( irqNo = 0; irqNo < IRQ_SIZE; irqNo++ ) {
CLINEA 0000H 0000H 00ADH 0002H 002EH
	add	er4,	#1 
	cmp	r4,	#01fh
	cmpc	r5,	#00h
	blts	_$L3
CBLOCKEND 0 2 176

;;}
CLINEA 0000H 0001H 00B0H 0001H 0001H
	pop	er4
	rt
CBLOCKEND 0 1 176
CFUNCTIONEND 0


	rseg $$irq_ei$irq
CFUNCTION 1

_irq_ei	:
CBLOCK 1 1 186

;;{
CLINEA 0000H 0001H 00BAH 0001H 0001H
CBLOCK 1 2 186

;;	__EI();
CLINEA 0000H 0001H 00BBH 0002H 0008H
	ei
CBLOCKEND 1 2 188

;;}
CLINEA 0000H 0001H 00BCH 0001H 0001H
	rt
CBLOCKEND 1 1 188
CFUNCTIONEND 1


	rseg $$irq_di$irq
CFUNCTION 2

_irq_di	:
CBLOCK 2 1 198

;;{
CLINEA 0000H 0001H 00C6H 0001H 0001H
CBLOCK 2 2 198

;;	__DI();
CLINEA 0000H 0001H 00C7H 0002H 0008H
	di
CBLOCKEND 2 2 200

;;}
CLINEA 0000H 0001H 00C8H 0001H 0001H
	rt
CBLOCKEND 2 1 200
CFUNCTIONEND 2


	rseg $$irq_setHdr$irq
CFUNCTION 4

_irq_setHdr	:
CBLOCK 4 1 216

;;{
CLINEA 0000H 0001H 00D8H 0001H 0001H
	push	xr8
	mov	r8,	r0
	mov	er10,	er2
CBLOCK 4 2 216
CARGUMENT 46H 0001H 001CH "intNo" 02H 00H 00H
CARGUMENT 47H 0002H 0029H "func" 0AH 03H 00H 02H 2CH 00H 00H 00H 00H 00H 07H

;;	if( intNo >= (unsigned char)IRQ_SIZE ) {
CLINEA 0000H 0001H 00DBH 0002H 0029H
	cmp	r0,	#01fh
	blt	_$L10
CBLOCK 4 3 219

;;		return ( IRQ_R_ERR_INTNO );
CLINEA 0000H 0001H 00DCH 0003H 001DH
	mov	er0,	#-1
CBLOCKEND 4 3 221
CBLOCKEND 4 2 230

;;}
CLINEA 0000H 0001H 00E6H 0001H 0001H
_$L9 :
	pop	xr8
	rt

;;	}
CLINEA 0000H 0000H 00DDH 0002H 0002H
_$L10 :

;;	if( func != (void *)0 ) {
CLINEA 0000H 0001H 00DFH 0002H 001AH
	mov	er2,	er2
	beq	_$L12
CBLOCK 4 4 223

;;		_sIrqHdr[intNo] = func;
CLINEA 0000H 0001H 00E0H 0003H 0019H
	mov	r0,	r8
	mov	r1,	#00h
	add	er0,	er0
	st	er10,	NEAR __sIrqHdr[er0]
CBLOCKEND 4 4 225

;;	else {
CLINEA 0000H 0001H 00E2H 0002H 0007H
	bal	_$L14
_$L12 :
CBLOCK 4 5 226

;;		_sIrqHdr[intNo] = _intNullHdr;
CLINEA 0000H 0001H 00E3H 0003H 0020H
	mov	r0,	r8
	mov	r1,	#00h
	add	er0,	er0
	mov	r2,	#BYTE1 OFFSET __intNullHdr
	mov	r3,	#BYTE2 OFFSET __intNullHdr
	st	er2,	NEAR __sIrqHdr[er0]
CBLOCKEND 4 5 228

;;	}
CLINEA 0000H 0000H 00E4H 0002H 0002H
_$L14 :

;;	return ( IRQ_R_OK );
CLINEA 0000H 0001H 00E5H 0002H 0015H
	mov	er0,	#0 
	bal	_$L9
CBLOCKEND 4 1 230
CFUNCTIONEND 4


	rseg $$_intUndefHdr$irq
CFUNCTION 6

__intUndefHdr	:
CBLOCK 6 1 244

;;{
CLINEA 0000H 0001H 00F4H 0001H 0001H
CBLOCK 6 2 244
CBLOCKEND 6 2 246

;;}
CLINEA 0000H 0000H 00F6H 0001H 0001H
	rti
CBLOCKEND 6 1 246
CFUNCTIONEND 6


	rseg $$_intNullHdr$irq
CFUNCTION 7

__intNullHdr	:
CBLOCK 7 1 256

;;{
CLINEA 0000H 0001H 0100H 0001H 0001H
CBLOCK 7 2 256
CBLOCKEND 7 2 258

;;}
CLINEA 0000H 0000H 0102H 0001H 0001H
	rt
CBLOCKEND 7 1 258
CFUNCTIONEND 7


	rseg $$_branchHdr$irq
CFUNCTION 48

__branchHdr	:
CBLOCK 48 1 271

;;{
CLINEA 0000H 0001H 010FH 0001H 0001H
CBLOCK 48 2 271
CARGUMENT 46H 0001H 0014H "intNo" 02H 00H 00H

;;	_sIrqHdr[intNo]();
CLINEA 0000H 0001H 0110H 0002H 0013H
	mov	r1,	#00h
	add	er0,	er0
	l	er0,	NEAR __sIrqHdr[er0]
	b	er0
CBLOCKEND 48 2 273
CLINEA 0000H 0001H 0111H 0001H 0001H
CBLOCKEND 48 1 273
CFUNCTIONEND 48


	rseg $$_intWDTINT$irq
CFUNCTION 8

__intWDTINT	:
CBLOCK 8 1 279

;;static void _intWDTINT(void)	{	_branchHdr(IRQ_NO_WDTINT);	}
CLINEA 0000H 0001H 0117H 0001H 003BH
	push	elr, epsw, lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 8 2 279
CRET 000CH

;;static void _intWDTINT(void)	{	_branchHdr(IRQ_NO_WDTINT);	}
CLINEA 0000H 0000H 0117H 0001H 003BH
	mov	r0,	#00h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr, psw, pc
CBLOCKEND 8 1 279
CFUNCTIONEND 8


	rseg $$_intVLSINT$irq
CFUNCTION 9

__intVLSINT	:
CBLOCK 9 1 280

;;static void _intVLSINT(void)	{	_branchHdr(IRQ_NO_VLSINT);	}
CLINEA 0000H 0001H 0118H 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 9 2 280

;;static void _intVLSINT(void)	{	_branchHdr(IRQ_NO_VLSINT);	}
CLINEA 0000H 0000H 0118H 0001H 003BH
	mov	r0,	#01h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 9 1 280
CFUNCTIONEND 9


	rseg $$_intPA0INT$irq
CFUNCTION 10

__intPA0INT	:
CBLOCK 10 1 282

;;static void _intPA0INT(void)	{	_branchHdr(IRQ_NO_PA0INT);	}
CLINEA 0000H 0001H 011AH 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 10 2 282

;;static void _intPA0INT(void)	{	_branchHdr(IRQ_NO_PA0INT);	}
CLINEA 0000H 0000H 011AH 0001H 003BH
	mov	r0,	#02h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 10 1 282
CFUNCTIONEND 10


	rseg $$_intPA1INT$irq
CFUNCTION 11

__intPA1INT	:
CBLOCK 11 1 283

;;static void _intPA1INT(void)	{	_branchHdr(IRQ_NO_PA1INT);	}
CLINEA 0000H 0001H 011BH 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 11 2 283

;;static void _intPA1INT(void)	{	_branchHdr(IRQ_NO_PA1INT);	}
CLINEA 0000H 0000H 011BH 0001H 003BH
	mov	r0,	#03h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 11 1 283
CFUNCTIONEND 11


	rseg $$_intPA2INT$irq
CFUNCTION 12

__intPA2INT	:
CBLOCK 12 1 284

;;static void _intPA2INT(void)	{	_branchHdr(IRQ_NO_PA2INT);	}
CLINEA 0000H 0001H 011CH 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 12 2 284

;;static void _intPA2INT(void)	{	_branchHdr(IRQ_NO_PA2INT);	}
CLINEA 0000H 0000H 011CH 0001H 003BH
	mov	r0,	#04h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 12 1 284
CFUNCTIONEND 12


	rseg $$_intPB0INT$irq
CFUNCTION 13

__intPB0INT	:
CBLOCK 13 1 286

;;static void _intPB0INT(void)	{	_branchHdr(IRQ_NO_PB0INT);	}
CLINEA 0000H 0001H 011EH 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 13 2 286

;;static void _intPB0INT(void)	{	_branchHdr(IRQ_NO_PB0INT);	}
CLINEA 0000H 0000H 011EH 0001H 003BH
	mov	r0,	#05h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 13 1 286
CFUNCTIONEND 13


	rseg $$_intPB1INT$irq
CFUNCTION 14

__intPB1INT	:
CBLOCK 14 1 287

;;static void _intPB1INT(void)	{	_branchHdr(IRQ_NO_PB1INT);	}
CLINEA 0000H 0001H 011FH 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 14 2 287

;;static void _intPB1INT(void)	{	_branchHdr(IRQ_NO_PB1INT);	}
CLINEA 0000H 0000H 011FH 0001H 003BH
	mov	r0,	#06h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 14 1 287
CFUNCTIONEND 14


	rseg $$_intPB2INT$irq
CFUNCTION 15

__intPB2INT	:
CBLOCK 15 1 288

;;static void _intPB2INT(void)	{	_branchHdr(IRQ_NO_PB2INT);	}
CLINEA 0000H 0001H 0120H 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 15 2 288

;;static void _intPB2INT(void)	{	_branchHdr(IRQ_NO_PB2INT);	}
CLINEA 0000H 0000H 0120H 0001H 003BH
	mov	r0,	#07h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 15 1 288
CFUNCTIONEND 15


	rseg $$_intPB3INT$irq
CFUNCTION 16

__intPB3INT	:
CBLOCK 16 1 289

;;static void _intPB3INT(void)	{	_branchHdr(IRQ_NO_PB3INT);	}
CLINEA 0000H 0001H 0121H 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 16 2 289

;;static void _intPB3INT(void)	{	_branchHdr(IRQ_NO_PB3INT);	}
CLINEA 0000H 0000H 0121H 0001H 003BH
	mov	r0,	#08h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 16 1 289
CFUNCTIONEND 16


	rseg $$_intSIO0INT$irq
CFUNCTION 17

__intSIO0INT	:
CBLOCK 17 1 291

;;static void _intSIO0INT(void)	{	_branchHdr(IRQ_NO_SIO0INT);	}
CLINEA 0000H 0001H 0123H 0001H 003DH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 17 2 291

;;static void _intSIO0INT(void)	{	_branchHdr(IRQ_NO_SIO0INT);	}
CLINEA 0000H 0000H 0123H 0001H 003DH
	mov	r0,	#09h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 17 1 291
CFUNCTIONEND 17


	rseg $$_intSADINT$irq
CFUNCTION 18

__intSADINT	:
CBLOCK 18 1 293

;;static void _intSADINT(void)	{	_branchHdr(IRQ_NO_SADINT);	}
CLINEA 0000H 0001H 0125H 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 18 2 293

;;static void _intSADINT(void)	{	_branchHdr(IRQ_NO_SADINT);	}
CLINEA 0000H 0000H 0125H 0001H 003BH
	mov	r0,	#0ah
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 18 1 293
CFUNCTIONEND 18


	rseg $$_intI2CSINT$irq
CFUNCTION 19

__intI2CSINT	:
CBLOCK 19 1 295

;;static void _intI2CSINT(void)	{	_branchHdr(IRQ_NO_I2CSINT);	}
CLINEA 0000H 0001H 0127H 0001H 003DH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 19 2 295

;;static void _intI2CSINT(void)	{	_branchHdr(IRQ_NO_I2CSINT);	}
CLINEA 0000H 0000H 0127H 0001H 003DH
	mov	r0,	#0bh
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 19 1 295
CFUNCTIONEND 19


	rseg $$_intI2CMINT$irq
CFUNCTION 20

__intI2CMINT	:
CBLOCK 20 1 296

;;static void _intI2CMINT(void)	{	_branchHdr(IRQ_NO_I2CMINT);	}
CLINEA 0000H 0001H 0128H 0001H 003DH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 20 2 296

;;static void _intI2CMINT(void)	{	_branchHdr(IRQ_NO_I2CMINT);	}
CLINEA 0000H 0000H 0128H 0001H 003DH
	mov	r0,	#0ch
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 20 1 296
CFUNCTIONEND 20


	rseg $$_intTM8INT$irq
CFUNCTION 21

__intTM8INT	:
CBLOCK 21 1 298

;;static void _intTM8INT(void)	{	_branchHdr(IRQ_NO_TM8INT);	}
CLINEA 0000H 0001H 012AH 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 21 2 298

;;static void _intTM8INT(void)	{	_branchHdr(IRQ_NO_TM8INT);	}
CLINEA 0000H 0000H 012AH 0001H 003BH
	mov	r0,	#0dh
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 21 1 298
CFUNCTIONEND 21


	rseg $$_intTM9INT$irq
CFUNCTION 22

__intTM9INT	:
CBLOCK 22 1 299

;;static void _intTM9INT(void)	{	_branchHdr(IRQ_NO_TM9INT);	}
CLINEA 0000H 0001H 012BH 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 22 2 299

;;static void _intTM9INT(void)	{	_branchHdr(IRQ_NO_TM9INT);	}
CLINEA 0000H 0000H 012BH 0001H 003BH
	mov	r0,	#0eh
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 22 1 299
CFUNCTIONEND 22


	rseg $$_intUA0INT$irq
CFUNCTION 23

__intUA0INT	:
CBLOCK 23 1 301

;;static void _intUA0INT(void)	{	_branchHdr(IRQ_NO_UA0INT);	}
CLINEA 0000H 0001H 012DH 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 23 2 301

;;static void _intUA0INT(void)	{	_branchHdr(IRQ_NO_UA0INT);	}
CLINEA 0000H 0000H 012DH 0001H 003BH
	mov	r0,	#0fh
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 23 1 301
CFUNCTIONEND 23


	rseg $$_intUA1INT$irq
CFUNCTION 24

__intUA1INT	:
CBLOCK 24 1 302

;;static void _intUA1INT(void)	{	_branchHdr(IRQ_NO_UA1INT);	}
CLINEA 0000H 0001H 012EH 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 24 2 302

;;static void _intUA1INT(void)	{	_branchHdr(IRQ_NO_UA1INT);	}
CLINEA 0000H 0000H 012EH 0001H 003BH
	mov	r0,	#010h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 24 1 302
CFUNCTIONEND 24


	rseg $$_intCMP0INT$irq
CFUNCTION 25

__intCMP0INT	:
CBLOCK 25 1 304

;;static void _intCMP0INT(void)	{	_branchHdr(IRQ_NO_CMP0INT);	}
CLINEA 0000H 0001H 0130H 0001H 003DH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 25 2 304

;;static void _intCMP0INT(void)	{	_branchHdr(IRQ_NO_CMP0INT);	}
CLINEA 0000H 0000H 0130H 0001H 003DH
	mov	r0,	#011h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 25 1 304
CFUNCTIONEND 25


	rseg $$_intCMP1INT$irq
CFUNCTION 26

__intCMP1INT	:
CBLOCK 26 1 305

;;static void _intCMP1INT(void)	{	_branchHdr(IRQ_NO_CMP1INT);	}
CLINEA 0000H 0001H 0131H 0001H 003DH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 26 2 305

;;static void _intCMP1INT(void)	{	_branchHdr(IRQ_NO_CMP1INT);	}
CLINEA 0000H 0000H 0131H 0001H 003DH
	mov	r0,	#012h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 26 1 305
CFUNCTIONEND 26


	rseg $$_intTMEINT$irq
CFUNCTION 27

__intTMEINT	:
CBLOCK 27 1 307

;;static void _intTMEINT(void)	{	_branchHdr(IRQ_NO_TMEINT);	}
CLINEA 0000H 0001H 0133H 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 27 2 307

;;static void _intTMEINT(void)	{	_branchHdr(IRQ_NO_TMEINT);	}
CLINEA 0000H 0000H 0133H 0001H 003BH
	mov	r0,	#013h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 27 1 307
CFUNCTIONEND 27


	rseg $$_intTMFINT$irq
CFUNCTION 28

__intTMFINT	:
CBLOCK 28 1 308

;;static void _intTMFINT(void)	{	_branchHdr(IRQ_NO_TMFINT);	}
CLINEA 0000H 0001H 0134H 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 28 2 308

;;static void _intTMFINT(void)	{	_branchHdr(IRQ_NO_TMFINT);	}
CLINEA 0000H 0000H 0134H 0001H 003BH
	mov	r0,	#014h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 28 1 308
CFUNCTIONEND 28


	rseg $$_intTMAINT$irq
CFUNCTION 29

__intTMAINT	:
CBLOCK 29 1 309

;;static void _intTMAINT(void)	{	_branchHdr(IRQ_NO_TMAINT);	}
CLINEA 0000H 0001H 0135H 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 29 2 309

;;static void _intTMAINT(void)	{	_branchHdr(IRQ_NO_TMAINT);	}
CLINEA 0000H 0000H 0135H 0001H 003BH
	mov	r0,	#015h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 29 1 309
CFUNCTIONEND 29


	rseg $$_intTMBINT$irq
CFUNCTION 30

__intTMBINT	:
CBLOCK 30 1 310

;;static void _intTMBINT(void)	{	_branchHdr(IRQ_NO_TMBINT);	}
CLINEA 0000H 0001H 0136H 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 30 2 310

;;static void _intTMBINT(void)	{	_branchHdr(IRQ_NO_TMBINT);	}
CLINEA 0000H 0000H 0136H 0001H 003BH
	mov	r0,	#016h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 30 1 310
CFUNCTIONEND 30


	rseg $$_intPWCINT$irq
CFUNCTION 31

__intPWCINT	:
CBLOCK 31 1 312

;;static void _intPWCINT(void)	{	_branchHdr(IRQ_NO_PWCINT);	}
CLINEA 0000H 0001H 0138H 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 31 2 312

;;static void _intPWCINT(void)	{	_branchHdr(IRQ_NO_PWCINT);	}
CLINEA 0000H 0000H 0138H 0001H 003BH
	mov	r0,	#017h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 31 1 312
CFUNCTIONEND 31


	rseg $$_intPWDINT$irq
CFUNCTION 32

__intPWDINT	:
CBLOCK 32 1 313

;;static void _intPWDINT(void)	{	_branchHdr(IRQ_NO_PWDINT);	}
CLINEA 0000H 0001H 0139H 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 32 2 313

;;static void _intPWDINT(void)	{	_branchHdr(IRQ_NO_PWDINT);	}
CLINEA 0000H 0000H 0139H 0001H 003BH
	mov	r0,	#018h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 32 1 313
CFUNCTIONEND 32


	rseg $$_intPWEINT$irq
CFUNCTION 33

__intPWEINT	:
CBLOCK 33 1 314

;;static void _intPWEINT(void)	{	_branchHdr(IRQ_NO_PWEINT);	}
CLINEA 0000H 0001H 013AH 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 33 2 314

;;static void _intPWEINT(void)	{	_branchHdr(IRQ_NO_PWEINT);	}
CLINEA 0000H 0000H 013AH 0001H 003BH
	mov	r0,	#019h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 33 1 314
CFUNCTIONEND 33


	rseg $$_intPWFINT$irq
CFUNCTION 34

__intPWFINT	:
CBLOCK 34 1 315

;;static void _intPWFINT(void)	{	_branchHdr(IRQ_NO_PWFINT);	}
CLINEA 0000H 0001H 013BH 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 34 2 315

;;static void _intPWFINT(void)	{	_branchHdr(IRQ_NO_PWFINT);	}
CLINEA 0000H 0000H 013BH 0001H 003BH
	mov	r0,	#01ah
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 34 1 315
CFUNCTIONEND 34


	rseg $$_intT128HINT$irq
CFUNCTION 35

__intT128HINT	:
CBLOCK 35 1 317

;;static void _intT128HINT(void){	_branchHdr(IRQ_NO_T128HINT);	}
CLINEA 0000H 0001H 013DH 0001H 003EH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 35 2 317

;;static void _intT128HINT(void){	_branchHdr(IRQ_NO_T128HINT);	}
CLINEA 0000H 0000H 013DH 0001H 003EH
	mov	r0,	#01bh
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 35 1 317
CFUNCTIONEND 35


	rseg $$_intT32HINT$irq
CFUNCTION 36

__intT32HINT	:
CBLOCK 36 1 318

;;static void _intT32HINT(void)	{	_branchHdr(IRQ_NO_T32HINT);	}
CLINEA 0000H 0001H 013EH 0001H 003DH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 36 2 318

;;static void _intT32HINT(void)	{	_branchHdr(IRQ_NO_T32HINT);	}
CLINEA 0000H 0000H 013EH 0001H 003DH
	mov	r0,	#01ch
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 36 1 318
CFUNCTIONEND 36


	rseg $$_intT16HINT$irq
CFUNCTION 37

__intT16HINT	:
CBLOCK 37 1 319

;;static void _intT16HINT(void)	{	_branchHdr(IRQ_NO_T16HINT);	}
CLINEA 0000H 0001H 013FH 0001H 003DH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 37 2 319

;;static void _intT16HINT(void)	{	_branchHdr(IRQ_NO_T16HINT);	}
CLINEA 0000H 0000H 013FH 0001H 003DH
	mov	r0,	#01dh
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 37 1 319
CFUNCTIONEND 37


	rseg $$_intT2HINT$irq
CFUNCTION 38

__intT2HINT	:
CBLOCK 38 1 320

;;static void _intT2HINT(void)	{	_branchHdr(IRQ_NO_T2HINT);	}
CLINEA 0000H 0001H 0140H 0001H 003BH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 38 2 320

;;static void _intT2HINT(void)	{	_branchHdr(IRQ_NO_T2HINT);	}
CLINEA 0000H 0000H 0140H 0001H 003BH
	mov	r0,	#01eh
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 38 1 320
CFUNCTIONEND 38

	public _irq_init
	public _irq_di
	public _irq_ei
	public _irq_setHdr
	extrn code near : _main

	cseg #00h at 08h
	dw	__intWDTINT

	cseg #00h at 0Ch
	dw	__intVLSINT
	dw	__intUndefHdr
	dw	__intPA0INT
	dw	__intPA1INT
	dw	__intPA2INT
	dw	__intUndefHdr
	dw	__intPB0INT
	dw	__intPB1INT
	dw	__intPB2INT
	dw	__intPB3INT
	dw	__intSIO0INT
	dw	__intUndefHdr
	dw	__intSADINT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intI2CSINT
	dw	__intI2CMINT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intTM8INT
	dw	__intTM9INT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUA0INT
	dw	__intUA1INT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intCMP0INT
	dw	__intCMP1INT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intTMEINT
	dw	__intTMFINT
	dw	__intTMAINT
	dw	__intTMBINT
	dw	__intPWCINT
	dw	__intPWDINT
	dw	__intPWEINT
	dw	__intPWFINT
	dw	__intUndefHdr
	dw	__intT128HINT
	dw	__intUndefHdr
	dw	__intT32HINT
	dw	__intT16HINT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intT2HINT

	rseg $$NVARirq
__sIrqHdr :
	ds	03eh

	end
