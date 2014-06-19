;; Compile Options : /TML610111 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Ipwm /Iuart /Ivolume /Iled /Ii2c /SS 256 /SD /Oa /Ot /W 1 /Ff /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : irq.c

	type (ML610111) 
	fastfloat
	model small, near
	$$NVARirq segment data 2h #0h
	$$_branchHdr$irq segment code 2h #0h
	$$_intAL0INT$irq segment code 2h #0h
	$$_intAL1INT$irq segment code 2h #0h
	$$_intI2C0INT$irq segment code 2h #0h
	$$_intMD0INT$irq segment code 2h #0h
	$$_intNMIINT$irq segment code 2h #0h
	$$_intNullHdr$irq segment code 2h #0h
	$$_intP00INT$irq segment code 2h #0h
	$$_intP01INT$irq segment code 2h #0h
	$$_intP02INT$irq segment code 2h #0h
	$$_intP03INT$irq segment code 2h #0h
	$$_intPW0INT$irq segment code 2h #0h
	$$_intRADINT$irq segment code 2h #0h
	$$_intRTCINT$irq segment code 2h #0h
	$$_intSADINT$irq segment code 2h #0h
	$$_intSIO0INT$irq segment code 2h #0h
	$$_intT128HINT$irq segment code 2h #0h
	$$_intT16HINT$irq segment code 2h #0h
	$$_intT1KINT$irq segment code 2h #0h
	$$_intT2HINT$irq segment code 2h #0h
	$$_intT32HINT$irq segment code 2h #0h
	$$_intTM0INT$irq segment code 2h #0h
	$$_intTM1INT$irq segment code 2h #0h
	$$_intTM2INT$irq segment code 2h #0h
	$$_intTM3INT$irq segment code 2h #0h
	$$_intTM8INT$irq segment code 2h #0h
	$$_intTM9INT$irq segment code 2h #0h
	$$_intUA0INT$irq segment code 2h #0h
	$$_intUndefHdr$irq segment code 2h #0h
	$$_intWDTINT$irq segment code 2h #0h
	$$irq_di$irq segment code 2h #0h
	$$irq_ei$irq segment code 2h #0h
	$$irq_init$irq segment code 2h #0h
	$$irq_setHdr$irq segment code 2h #0h
CVERSION 3.41.8
CSGLOBAL 03H 0000H "_intTM2INT" 08H 02H 16H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intT32HINT" 08H 02H 1BH 00H 91H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "irq_init" 08H 02H 00H 00H 80H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "_intTM3INT" 08H 02H 17H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intPW0INT" 08H 02H 18H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intTM8INT" 08H 02H 21H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intTM9INT" 08H 02H 22H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intT128HINT" 08H 02H 1AH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intAL0INT" 08H 02H 1FH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intP00INT" 08H 02H 0AH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intT2HINT" 08H 02H 1DH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intMD0INT" 08H 02H 14H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intAL1INT" 08H 02H 20H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intP01INT" 08H 02H 0BH 00H 91H 0aH 00H 00H 07H
CGLOBAL 01H 03H 0000H "irq_di" 08H 02H 02H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "irq_ei" 08H 02H 01H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intT1KINT" 08H 02H 19H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intWDTINT" 08H 02H 08H 00H 91H 0eH 00H 00H 07H
CGLOBAL 01H 03H 0000H "irq_setHdr" 08H 02H 04H 00H 80H 04H 00H 00H 01H
CSGLOBAL 03H 0000H "_intP02INT" 08H 02H 0CH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2C0INT" 08H 02H 10H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intRTCINT" 08H 02H 1EH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intP03INT" 08H 02H 0DH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intSIO0INT" 08H 02H 0EH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intSADINT" 08H 02H 0FH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_branchHdr" 08H 02H 2CH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intT16HINT" 08H 02H 1CH 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intNMIINT" 08H 02H 09H 00H 91H 0eH 00H 00H 07H
CSGLOBAL 03H 0000H "_intTM0INT" 08H 02H 11H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intUA0INT" 08H 02H 13H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intUndefHdr" 08H 02H 06H 00H 90H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intTM1INT" 08H 02H 12H 00H 91H 0aH 00H 00H 07H
CSGLOBAL 03H 0000H "_intRADINT" 08H 02H 15H 00H 91H 0aH 00H 00H 07H
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
CSGLOBAL 43H 0036H "_sIrqHdr" 0DH 01H 1BH 00H 03H 00H 02H 05H 00H 10H 00H 00H 00H 07H
CFILE 0001H 00000028H "main\\mcu.h"
CFILE 0002H 000007EEH "main\\ML610111.H"
CFILE 0003H 00000048H "irq\\irq.h"
CFILE 0000H 0000012BH "irq\\irq.c"

	rseg $$irq_init$irq
CFUNCTION 0

_irq_init	:
CBLOCK 0 1 146

;;{
CLINEA 0000H 0001H 0092H 0001H 0001H
	push	er4
CBLOCK 0 2 146
CLOCAL 47H 0002H 0026H 0002H "irqNo" 02H 00H 01H

;;	IE1 =  (unsigned char)0x00u;
CLINEA 0000H 0001H 0096H 0002H 001DH
	mov	r0,	#00h
	st	r0,	0f011h

;;	IE2 =  (unsigned char)0x00u;
CLINEA 0000H 0001H 0097H 0002H 001DH
	st	r0,	0f012h

;;	IE3 =  (unsigned char)0x00u;
CLINEA 0000H 0001H 0098H 0002H 001DH
	st	r0,	0f013h

;;	IE4 =  (unsigned char)0x00u;
CLINEA 0000H 0001H 0099H 0002H 001DH
	st	r0,	0f014h

;;	IE5 =  (unsigned char)0x00u;
CLINEA 0000H 0001H 009AH 0002H 001DH
	st	r0,	0f015h

;;	IE6 =  (unsigned char)0x00u;
CLINEA 0000H 0001H 009BH 0002H 001DH
	st	r0,	0f016h

;;	IE7 =  (unsigned char)0x00u;
CLINEA 0000H 0001H 009CH 0002H 001DH
	st	r0,	0f017h

;;	IRQ0 = (unsigned char)0x00u;
CLINEA 0000H 0001H 009DH 0002H 001DH
	st	r0,	0f018h

;;	IRQ1 = (unsigned char)0x00u;
CLINEA 0000H 0001H 009EH 0002H 001DH
	st	r0,	0f019h

;;	IRQ2 = (unsigned char)0x00u;
CLINEA 0000H 0001H 009FH 0002H 001DH
	st	r0,	0f01ah

;;	IRQ3 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A0H 0002H 001DH
	st	r0,	0f01bh

;;	IRQ4 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A1H 0002H 001DH
	st	r0,	0f01ch

;;	IRQ5 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A2H 0002H 001DH
	st	r0,	0f01dh

;;	IRQ6 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A3H 0002H 001DH
	st	r0,	0f01eh

;;	IRQ7 = (unsigned char)0x00u;
CLINEA 0000H 0001H 00A4H 0002H 001DH
	st	r0,	0f01fh

;;	for( irqNo = 0; irqNo < IRQ_SIZE; irqNo++ ) {
CLINEA 0000H 0001H 00A6H 0002H 002EH
	mov	er4,	#0 
_$L3 :
CBLOCK 0 3 166

;;		_sIrqHdr[irqNo] = _intNullHdr;
CLINEA 0000H 0001H 00A7H 0003H 0020H
	mov	er0,	er4
	add	er0,	er4
	mov	r2,	#BYTE1 OFFSET __intNullHdr
	mov	r3,	#BYTE2 OFFSET __intNullHdr
	st	er2,	NEAR __sIrqHdr[er0]
CBLOCKEND 0 3 168

;;	for( irqNo = 0; irqNo < IRQ_SIZE; irqNo++ ) {
CLINEA 0000H 0000H 00A6H 0002H 002EH
	add	er4,	#1 
	cmp	r4,	#01bh
	cmpc	r5,	#00h
	blts	_$L3
CBLOCKEND 0 2 169

;;}
CLINEA 0000H 0001H 00A9H 0001H 0001H
	pop	er4
	rt
CBLOCKEND 0 1 169
CFUNCTIONEND 0


	rseg $$irq_ei$irq
CFUNCTION 1

_irq_ei	:
CBLOCK 1 1 179

;;{
CLINEA 0000H 0001H 00B3H 0001H 0001H
CBLOCK 1 2 179

;;	__EI();
CLINEA 0000H 0001H 00B4H 0002H 0008H
	ei
CBLOCKEND 1 2 181

;;}
CLINEA 0000H 0001H 00B5H 0001H 0001H
	rt
CBLOCKEND 1 1 181
CFUNCTIONEND 1


	rseg $$irq_di$irq
CFUNCTION 2

_irq_di	:
CBLOCK 2 1 191

;;{
CLINEA 0000H 0001H 00BFH 0001H 0001H
CBLOCK 2 2 191

;;	__DI();
CLINEA 0000H 0001H 00C0H 0002H 0008H
	di
CBLOCKEND 2 2 193

;;}
CLINEA 0000H 0001H 00C1H 0001H 0001H
	rt
CBLOCKEND 2 1 193
CFUNCTIONEND 2


	rseg $$irq_setHdr$irq
CFUNCTION 4

_irq_setHdr	:
CBLOCK 4 1 209

;;{
CLINEA 0000H 0001H 00D1H 0001H 0001H
	push	xr8
	mov	r8,	r0
	mov	er10,	er2
CBLOCK 4 2 209
CARGUMENT 46H 0001H 001CH "intNo" 02H 00H 00H
CARGUMENT 47H 0002H 0029H "func" 0AH 03H 00H 02H 28H 00H 00H 00H 00H 00H 07H

;;	if( intNo >= (unsigned char)IRQ_SIZE ) {
CLINEA 0000H 0001H 00D4H 0002H 0029H
	cmp	r0,	#01bh
	blt	_$L10
CBLOCK 4 3 212

;;		return ( IRQ_R_ERR_INTNO );
CLINEA 0000H 0001H 00D5H 0003H 001DH
	mov	er0,	#-1
CBLOCKEND 4 3 214
CBLOCKEND 4 2 223

;;}
CLINEA 0000H 0001H 00DFH 0001H 0001H
_$L9 :
	pop	xr8
	rt

;;	}
CLINEA 0000H 0000H 00D6H 0002H 0002H
_$L10 :

;;	if( func != (void *)0 ) {
CLINEA 0000H 0001H 00D8H 0002H 001AH
	mov	er2,	er2
	beq	_$L12
CBLOCK 4 4 216

;;		_sIrqHdr[intNo] = func;
CLINEA 0000H 0001H 00D9H 0003H 0019H
	mov	r0,	r8
	mov	r1,	#00h
	add	er0,	er0
	st	er10,	NEAR __sIrqHdr[er0]
CBLOCKEND 4 4 218

;;	else {
CLINEA 0000H 0001H 00DBH 0002H 0007H
	bal	_$L14
_$L12 :
CBLOCK 4 5 219

;;		_sIrqHdr[intNo] = _intNullHdr;
CLINEA 0000H 0001H 00DCH 0003H 0020H
	mov	r0,	r8
	mov	r1,	#00h
	add	er0,	er0
	mov	r2,	#BYTE1 OFFSET __intNullHdr
	mov	r3,	#BYTE2 OFFSET __intNullHdr
	st	er2,	NEAR __sIrqHdr[er0]
CBLOCKEND 4 5 221

;;	}
CLINEA 0000H 0000H 00DDH 0002H 0002H
_$L14 :

;;	return ( IRQ_R_OK );
CLINEA 0000H 0001H 00DEH 0002H 0015H
	mov	er0,	#0 
	bal	_$L9
CBLOCKEND 4 1 223
CFUNCTIONEND 4


	rseg $$_intUndefHdr$irq
CFUNCTION 6

__intUndefHdr	:
CBLOCK 6 1 237

;;{
CLINEA 0000H 0001H 00EDH 0001H 0001H
CBLOCK 6 2 237
CBLOCKEND 6 2 239

;;}
CLINEA 0000H 0000H 00EFH 0001H 0001H
	rti
CBLOCKEND 6 1 239
CFUNCTIONEND 6


	rseg $$_intNullHdr$irq
CFUNCTION 7

__intNullHdr	:
CBLOCK 7 1 249

;;{
CLINEA 0000H 0001H 00F9H 0001H 0001H
CBLOCK 7 2 249
CBLOCKEND 7 2 251

;;}
CLINEA 0000H 0000H 00FBH 0001H 0001H
	rt
CBLOCKEND 7 1 251
CFUNCTIONEND 7


	rseg $$_branchHdr$irq
CFUNCTION 44

__branchHdr	:
CBLOCK 44 1 264

;;{
CLINEA 0000H 0001H 0108H 0001H 0001H
CBLOCK 44 2 264
CARGUMENT 46H 0001H 0014H "intNo" 02H 00H 00H

;;	_sIrqHdr[intNo]();
CLINEA 0000H 0001H 0109H 0002H 0013H
	mov	r1,	#00h
	add	er0,	er0
	l	er0,	NEAR __sIrqHdr[er0]
	b	er0
CBLOCKEND 44 2 266
CLINEA 0000H 0001H 010AH 0001H 0001H
CBLOCKEND 44 1 266
CFUNCTIONEND 44


	rseg $$_intWDTINT$irq
CFUNCTION 8

__intWDTINT	:
CBLOCK 8 1 272

;;static void _intWDTINT(void)	{	_branchHdr(IRQ_NO_WDTINT);		}
CLINEA 0000H 0001H 0110H 0001H 003CH
	push	elr, epsw, lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 8 2 272
CRET 000CH

;;static void _intWDTINT(void)	{	_branchHdr(IRQ_NO_WDTINT);		}
CLINEA 0000H 0000H 0110H 0001H 003CH
	mov	r0,	#00h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr, psw, pc
CBLOCKEND 8 1 272
CFUNCTIONEND 8


	rseg $$_intNMIINT$irq
CFUNCTION 9

__intNMIINT	:
CBLOCK 9 1 273

;;static void _intNMIINT(void)	{	_branchHdr(IRQ_NO_NMINT);		}
CLINEA 0000H 0001H 0111H 0001H 003BH
	push	elr, epsw, lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 9 2 273
CRET 000CH

;;static void _intNMIINT(void)	{	_branchHdr(IRQ_NO_NMINT);		}
CLINEA 0000H 0000H 0111H 0001H 003BH
	mov	r0,	#01h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr, psw, pc
CBLOCKEND 9 1 273
CFUNCTIONEND 9


	rseg $$_intP00INT$irq
CFUNCTION 10

__intP00INT	:
CBLOCK 10 1 274

;;static void _intP00INT(void)	{	_branchHdr(IRQ_NO_P00INT);		}
CLINEA 0000H 0001H 0112H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 10 2 274

;;static void _intP00INT(void)	{	_branchHdr(IRQ_NO_P00INT);		}
CLINEA 0000H 0000H 0112H 0001H 003CH
	mov	r0,	#02h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 10 1 274
CFUNCTIONEND 10


	rseg $$_intP01INT$irq
CFUNCTION 11

__intP01INT	:
CBLOCK 11 1 275

;;static void _intP01INT(void)	{	_branchHdr(IRQ_NO_P01INT);		}
CLINEA 0000H 0001H 0113H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 11 2 275

;;static void _intP01INT(void)	{	_branchHdr(IRQ_NO_P01INT);		}
CLINEA 0000H 0000H 0113H 0001H 003CH
	mov	r0,	#03h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 11 1 275
CFUNCTIONEND 11


	rseg $$_intP02INT$irq
CFUNCTION 12

__intP02INT	:
CBLOCK 12 1 276

;;static void _intP02INT(void)	{	_branchHdr(IRQ_NO_P02INT);		}
CLINEA 0000H 0001H 0114H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 12 2 276

;;static void _intP02INT(void)	{	_branchHdr(IRQ_NO_P02INT);		}
CLINEA 0000H 0000H 0114H 0001H 003CH
	mov	r0,	#04h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 12 1 276
CFUNCTIONEND 12


	rseg $$_intP03INT$irq
CFUNCTION 13

__intP03INT	:
CBLOCK 13 1 277

;;static void _intP03INT(void)	{	_branchHdr(IRQ_NO_P03INT);		}
CLINEA 0000H 0001H 0115H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 13 2 277

;;static void _intP03INT(void)	{	_branchHdr(IRQ_NO_P03INT);		}
CLINEA 0000H 0000H 0115H 0001H 003CH
	mov	r0,	#05h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 13 1 277
CFUNCTIONEND 13


	rseg $$_intSIO0INT$irq
CFUNCTION 14

__intSIO0INT	:
CBLOCK 14 1 278

;;static void _intSIO0INT(void)	{	_branchHdr(IRQ_NO_SIO0INT);		}
CLINEA 0000H 0001H 0116H 0001H 003EH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 14 2 278

;;static void _intSIO0INT(void)	{	_branchHdr(IRQ_NO_SIO0INT);		}
CLINEA 0000H 0000H 0116H 0001H 003EH
	mov	r0,	#06h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 14 1 278
CFUNCTIONEND 14


	rseg $$_intSADINT$irq
CFUNCTION 15

__intSADINT	:
CBLOCK 15 1 279

;;static void _intSADINT(void)	{	_branchHdr(IRQ_NO_SADINT);		}
CLINEA 0000H 0001H 0117H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 15 2 279

;;static void _intSADINT(void)	{	_branchHdr(IRQ_NO_SADINT);		}
CLINEA 0000H 0000H 0117H 0001H 003CH
	mov	r0,	#07h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 15 1 279
CFUNCTIONEND 15


	rseg $$_intI2C0INT$irq
CFUNCTION 16

__intI2C0INT	:
CBLOCK 16 1 280

;;static void _intI2C0INT(void)	{	_branchHdr(IRQ_NO_I2C0INT);		}
CLINEA 0000H 0001H 0118H 0001H 003EH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 16 2 280

;;static void _intI2C0INT(void)	{	_branchHdr(IRQ_NO_I2C0INT);		}
CLINEA 0000H 0000H 0118H 0001H 003EH
	mov	r0,	#08h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 16 1 280
CFUNCTIONEND 16


	rseg $$_intTM0INT$irq
CFUNCTION 17

__intTM0INT	:
CBLOCK 17 1 281

;;static void _intTM0INT(void)	{	_branchHdr(IRQ_NO_TM0INT);		}
CLINEA 0000H 0001H 0119H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 17 2 281

;;static void _intTM0INT(void)	{	_branchHdr(IRQ_NO_TM0INT);		}
CLINEA 0000H 0000H 0119H 0001H 003CH
	mov	r0,	#09h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 17 1 281
CFUNCTIONEND 17


	rseg $$_intTM1INT$irq
CFUNCTION 18

__intTM1INT	:
CBLOCK 18 1 282

;;static void _intTM1INT(void)	{	_branchHdr(IRQ_NO_TM1INT);		}
CLINEA 0000H 0001H 011AH 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 18 2 282

;;static void _intTM1INT(void)	{	_branchHdr(IRQ_NO_TM1INT);		}
CLINEA 0000H 0000H 011AH 0001H 003CH
	mov	r0,	#0ah
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 18 1 282
CFUNCTIONEND 18


	rseg $$_intUA0INT$irq
CFUNCTION 19

__intUA0INT	:
CBLOCK 19 1 283

;;static void _intUA0INT(void)	{	_branchHdr(IRQ_NO_UA0INT);		}
CLINEA 0000H 0001H 011BH 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 19 2 283

;;static void _intUA0INT(void)	{	_branchHdr(IRQ_NO_UA0INT);		}
CLINEA 0000H 0000H 011BH 0001H 003CH
	mov	r0,	#0bh
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 19 1 283
CFUNCTIONEND 19


	rseg $$_intMD0INT$irq
CFUNCTION 20

__intMD0INT	:
CBLOCK 20 1 284

;;static void _intMD0INT(void)	{	_branchHdr(IRQ_NO_MD0INT);		}
CLINEA 0000H 0001H 011CH 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 20 2 284

;;static void _intMD0INT(void)	{	_branchHdr(IRQ_NO_MD0INT);		}
CLINEA 0000H 0000H 011CH 0001H 003CH
	mov	r0,	#0ch
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 20 1 284
CFUNCTIONEND 20


	rseg $$_intRADINT$irq
CFUNCTION 21

__intRADINT	:
CBLOCK 21 1 285

;;static void _intRADINT(void)	{	_branchHdr(IRQ_NO_RADINT);		}
CLINEA 0000H 0001H 011DH 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 21 2 285

;;static void _intRADINT(void)	{	_branchHdr(IRQ_NO_RADINT);		}
CLINEA 0000H 0000H 011DH 0001H 003CH
	mov	r0,	#0dh
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 21 1 285
CFUNCTIONEND 21


	rseg $$_intTM2INT$irq
CFUNCTION 22

__intTM2INT	:
CBLOCK 22 1 286

;;static void _intTM2INT(void)	{	_branchHdr(IRQ_NO_TM2INT);		}
CLINEA 0000H 0001H 011EH 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 22 2 286

;;static void _intTM2INT(void)	{	_branchHdr(IRQ_NO_TM2INT);		}
CLINEA 0000H 0000H 011EH 0001H 003CH
	mov	r0,	#0eh
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 22 1 286
CFUNCTIONEND 22


	rseg $$_intTM3INT$irq
CFUNCTION 23

__intTM3INT	:
CBLOCK 23 1 287

;;static void _intTM3INT(void)	{	_branchHdr(IRQ_NO_TM3INT);		}
CLINEA 0000H 0001H 011FH 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 23 2 287

;;static void _intTM3INT(void)	{	_branchHdr(IRQ_NO_TM3INT);		}
CLINEA 0000H 0000H 011FH 0001H 003CH
	mov	r0,	#0fh
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 23 1 287
CFUNCTIONEND 23


	rseg $$_intPW0INT$irq
CFUNCTION 24

__intPW0INT	:
CBLOCK 24 1 288

;;static void _intPW0INT(void)	{	_branchHdr(IRQ_NO_PW0INT);		}
CLINEA 0000H 0001H 0120H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 24 2 288

;;static void _intPW0INT(void)	{	_branchHdr(IRQ_NO_PW0INT);		}
CLINEA 0000H 0000H 0120H 0001H 003CH
	mov	r0,	#010h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 24 1 288
CFUNCTIONEND 24


	rseg $$_intT1KINT$irq
CFUNCTION 25

__intT1KINT	:
CBLOCK 25 1 289

;;static void _intT1KINT(void)	{	_branchHdr(IRQ_NO_T1KINT);		}
CLINEA 0000H 0001H 0121H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 25 2 289

;;static void _intT1KINT(void)	{	_branchHdr(IRQ_NO_T1KINT);		}
CLINEA 0000H 0000H 0121H 0001H 003CH
	mov	r0,	#011h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 25 1 289
CFUNCTIONEND 25


	rseg $$_intT128HINT$irq
CFUNCTION 26

__intT128HINT	:
CBLOCK 26 1 290

;;static void _intT128HINT(void){	_branchHdr(IRQ_NO_T128HINT);		}
CLINEA 0000H 0001H 0122H 0001H 003FH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 26 2 290

;;static void _intT128HINT(void){	_branchHdr(IRQ_NO_T128HINT);		}
CLINEA 0000H 0000H 0122H 0001H 003FH
	mov	r0,	#012h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 26 1 290
CFUNCTIONEND 26


	rseg $$_intT32HINT$irq
CFUNCTION 27

__intT32HINT	:
CBLOCK 27 1 291

;;static void _intT32HINT(void)	{	_branchHdr(IRQ_NO_T32HINT);		}
CLINEA 0000H 0001H 0123H 0001H 003EH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 27 2 291

;;static void _intT32HINT(void)	{	_branchHdr(IRQ_NO_T32HINT);		}
CLINEA 0000H 0000H 0123H 0001H 003EH
	mov	r0,	#013h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 27 1 291
CFUNCTIONEND 27


	rseg $$_intT16HINT$irq
CFUNCTION 28

__intT16HINT	:
CBLOCK 28 1 292

;;static void _intT16HINT(void)	{	_branchHdr(IRQ_NO_T16HINT);		}
CLINEA 0000H 0001H 0124H 0001H 003EH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 28 2 292

;;static void _intT16HINT(void)	{	_branchHdr(IRQ_NO_T16HINT);		}
CLINEA 0000H 0000H 0124H 0001H 003EH
	mov	r0,	#014h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 28 1 292
CFUNCTIONEND 28


	rseg $$_intT2HINT$irq
CFUNCTION 29

__intT2HINT	:
CBLOCK 29 1 293

;;static void _intT2HINT(void)	{	_branchHdr(IRQ_NO_T2HINT);		}
CLINEA 0000H 0001H 0125H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 29 2 293

;;static void _intT2HINT(void)	{	_branchHdr(IRQ_NO_T2HINT);		}
CLINEA 0000H 0000H 0125H 0001H 003CH
	mov	r0,	#015h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 29 1 293
CFUNCTIONEND 29


	rseg $$_intRTCINT$irq
CFUNCTION 30

__intRTCINT	:
CBLOCK 30 1 294

;;static void _intRTCINT(void)	{	_branchHdr(IRQ_NO_RTCINT);		}
CLINEA 0000H 0001H 0126H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 30 2 294

;;static void _intRTCINT(void)	{	_branchHdr(IRQ_NO_RTCINT);		}
CLINEA 0000H 0000H 0126H 0001H 003CH
	mov	r0,	#016h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 30 1 294
CFUNCTIONEND 30


	rseg $$_intAL0INT$irq
CFUNCTION 31

__intAL0INT	:
CBLOCK 31 1 295

;;static void _intAL0INT(void)	{	_branchHdr(IRQ_NO_AL0INT);		}
CLINEA 0000H 0001H 0127H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 31 2 295

;;static void _intAL0INT(void)	{	_branchHdr(IRQ_NO_AL0INT);		}
CLINEA 0000H 0000H 0127H 0001H 003CH
	mov	r0,	#017h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 31 1 295
CFUNCTIONEND 31


	rseg $$_intAL1INT$irq
CFUNCTION 32

__intAL1INT	:
CBLOCK 32 1 296

;;static void _intAL1INT(void)	{	_branchHdr(IRQ_NO_AL1INT);		}
CLINEA 0000H 0001H 0128H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 32 2 296

;;static void _intAL1INT(void)	{	_branchHdr(IRQ_NO_AL1INT);		}
CLINEA 0000H 0000H 0128H 0001H 003CH
	mov	r0,	#018h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 32 1 296
CFUNCTIONEND 32


	rseg $$_intTM8INT$irq
CFUNCTION 33

__intTM8INT	:
CBLOCK 33 1 297

;;static void _intTM8INT(void)	{	_branchHdr(IRQ_NO_TM8INT);		}
CLINEA 0000H 0001H 0129H 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 33 2 297

;;static void _intTM8INT(void)	{	_branchHdr(IRQ_NO_TM8INT);		}
CLINEA 0000H 0000H 0129H 0001H 003CH
	mov	r0,	#019h
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 33 1 297
CFUNCTIONEND 33


	rseg $$_intTM9INT$irq
CFUNCTION 34

__intTM9INT	:
CBLOCK 34 1 298

;;static void _intTM9INT(void)	{	_branchHdr(IRQ_NO_TM9INT);		}
CLINEA 0000H 0001H 012AH 0001H 003CH
	push	lr, ea
	push	xr0
	l	r0,	DSR
	push	r0
CBLOCK 34 2 298

;;static void _intTM9INT(void)	{	_branchHdr(IRQ_NO_TM9INT);		}
CLINEA 0000H 0000H 012AH 0001H 003CH
	mov	r0,	#01ah
	bl	__branchHdr
	pop	r0
	st	r0,	DSR
	pop	xr0
	pop	ea, lr
	rti
CBLOCKEND 34 1 298
CFUNCTIONEND 34

	public _irq_init
	public _irq_di
	public _irq_ei
	public _irq_setHdr
	extrn code near : _main

	cseg #00h at 08h
	dw	__intWDTINT
	dw	__intNMIINT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intP00INT
	dw	__intP01INT
	dw	__intP02INT
	dw	__intP03INT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intSIO0INT
	dw	__intUndefHdr
	dw	__intSADINT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intI2C0INT
	dw	__intTM0INT
	dw	__intTM1INT
	dw	__intTM8INT
	dw	__intTM9INT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUA0INT
	dw	__intUndefHdr
	dw	__intMD0INT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intRADINT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intTM2INT
	dw	__intTM3INT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intPW0INT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intT1KINT
	dw	__intT128HINT
	dw	__intUndefHdr
	dw	__intT32HINT
	dw	__intT16HINT
	dw	__intUndefHdr
	dw	__intUndefHdr
	dw	__intT2HINT
	dw	__intUndefHdr
	dw	__intRTCINT
	dw	__intAL0INT
	dw	__intAL1INT

	rseg $$NVARirq
__sIrqHdr :
	ds	036h

	end
