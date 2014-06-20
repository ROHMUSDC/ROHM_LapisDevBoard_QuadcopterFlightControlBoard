;; Compile Options : /TML610111 /MS /near /Icommon /Imain /Iirq /Itimer /Iclock /Itbc /Ipwm /Iuart /Ivolume /Iled /Ii2c /SS 256 /SD /Oa /Ot /W 1 /Ff /Fa_output\_obj\ 
;; Version Number  : Ver.3.41.8
;; File Name       : main.c

	type (ML610111) 
	fastfloat
	model small, near
	$$NINITVAR segment data 2h #0h
	$$NINITTAB segment table 2h any
	$$Initialization$main segment code 2h #0h
	$$NOP1000$main segment code 2h #0h
	$$PinB0_PWM$main segment code 2h #0h
	$$PortA_Digital_Inputs$main segment code 2h #0h
	$$PortA_Low$main segment code 2h #0h
	$$PortB_Low$main segment code 2h #0h
	$$PortC_Low$main segment code 2h #0h
	$$SetOSC$main segment code 2h #0h
	$$TAB_uartSetParam$main segment table 2h #0h
	$$_funcI2CFin$main segment code 2h #0h
	$$_funcUartFin$main segment code 2h #0h
	$$_intI2c$main segment code 2h #0h
	$$_intUart$main segment code 2h #0h
	$$analog_comparator$main segment code 2h #0h
	$$checkI2C$main segment code 2h #0h
	$$main$main segment code 2h #0h
	$$main_clrWDT$main segment code 2h #0h
	$$main_reqNotHalt$main segment code 2h #0h
	STACKSEG 0100h
CVERSION 3.41.8
CGLOBAL 01H 03H 0000H "checkI2C" 08H 02H 87H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_clrWDT" 08H 02H 7CH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcUartFin" 08H 02H 85H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main_reqNotHalt" 08H 02H 88H 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "Initialization" 08H 02H 7DH 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Digital_Inputs" 08H 02H 83H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "main" 08H 02H 8CH 00H 80H 02H 00H 00H 01H
CSGLOBAL 03H 0000H "_intUart" 08H 02H 89H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "NOP1000" 08H 02H 8BH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_intI2c" 08H 02H 8AH 00H 81H 02H 00H 00H 07H
CSGLOBAL 03H 0000H "SetOSC" 08H 02H 7EH 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortC_Low" 08H 02H 82H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortB_Low" 08H 02H 81H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PortA_Low" 08H 02H 80H 00H 80H 00H 00H 00H 07H
CGLOBAL 01H 03H 0000H "analog_comparator" 08H 02H 7FH 00H 80H 00H 00H 00H 07H
CSGLOBAL 03H 0000H "_funcI2CFin" 08H 02H 86H 00H 81H 02H 00H 00H 07H
CGLOBAL 01H 03H 0000H "PinB0_PWM" 08H 02H 84H 00H 80H 00H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0005H 0006H 0000000AH "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "br" 02H 00H 02H
CSTRUCTMEM 42H 00000001H 00000004H "lg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000005H "pt" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000006H "stp" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000007H "neg" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000008H "dir" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0004H 0002H 00000008H "_Notag"
CSTRUCTMEM 43H 00000004H 00000000H "quot" 02H 00H 02H
CSTRUCTMEM 43H 00000004H 00000004H "rem" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0003H 0002H 00000004H "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "quot" 02H 00H 01H
CSTRUCTMEM 43H 00000002H 00000002H "rem" 02H 00H 01H
CSTRUCTTAG 0000H 0000H 0002H 000CH 00000016H "_Notag"
CSTRUCTMEM 42H 00000002H 00000000H "_Mode" 02H 00H 08H
CSTRUCTMEM 43H 00000002H 00000002H "_Handle" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000004H "_Buf" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000006H "_Bend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000008H "_Next" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000AH "_Rend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000CH "_Rsave" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000EH "_Wend" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000010H "_Back" 05H 01H 02H 00H 00H 00H
CSTRUCTMEM 42H 00000001H 00000012H "_Cbuf" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000013H "_Nback" 02H 00H 00H
CSTRUCTMEM 43H 00000002H 00000014H "_Tmpnam" 04H 03H 00H 00H 00H
CSTRUCTTAG 0000H 0000H 0001H 0001H 00000004H "_Notag"
CSTRUCTMEM 42H 00000004H 00000000H "_Off" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "_Ptrdifft" 02H 00H 01H
CTYPEDEF 0000H 0000H 42H "_Sizet" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "tUartSetParam" 04H 00H 05H 05H 00H
CTYPEDEF 0000H 0000H 42H "size_t" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "cbfUart" 0AH 03H 00H 02H 5EH 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 43H "fpos_t" 04H 00H 05H 01H 00H
CTYPEDEF 0000H 0000H 43H "cbfI2c" 0AH 03H 00H 02H 73H 00H 00H 00H 00H 00H 07H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nf" 08H 02H 31H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nn" 08H 02H 30H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_ff" 08H 02H 33H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_fn" 08H 02H 32H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 43H "FILE" 04H 00H 05H 02H 00H
CTYPEDEF 0000H 0000H 43H "div_t" 04H 00H 05H 03H 00H
CTYPEDEF 0000H 0000H 43H "ldiv_t" 04H 00H 05H 04H 00H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CGLOBAL 00H 42H 0004H "RecWorld" 05H 01H 04H 00H 00H 00H
CGLOBAL 00H 42H 0001H "_flgUartFin" 02H 00H 00H
CSGLOBAL 01H 000AH "_uartSetParam" 04H 00H 05H 05H 00H
CGLOBAL 01H 42H 000FH "HelloWorld" 05H 01H 0FH 00H 00H 00H
CGLOBAL 00H 42H 0001H "_flgI2CFin" 02H 00H 00H
CGLOBAL 00H 42H 0001H "_reqNotHalt" 02H 00H 00H
CFILE 0001H 000007EEH "main\\ML610111.H"
CFILE 0002H 000000EEH "main\\stdio.h"
CFILE 0003H 0000007AH "main\\yvals.h"
CFILE 0004H 000000D8H "main\\stdlib.h"
CFILE 0005H 0000006FH "uart\\uart.h"
CFILE 0006H 00000027H "common\\common.h"
CFILE 0007H 00000028H "main\\mcu.h"
CFILE 0008H 00000048H "irq\\irq.h"
CFILE 0009H 00000045H "i2c\\i2c.h"
CFILE 0000H 00000350H "main\\main.c"

	rseg $$main$main
CFUNCTION 140

_main	:
CBLOCK 140 1 180

;;{
CLINEA 0000H 0001H 00B4H 0001H 0001H
CBLOCK 140 2 180
CLOCAL 47H 0002H 0024H 0002H "i" 02H 00H 01H

;;	Initialization();		//Ports, UART, Timers, Oscillator, Comparators, etc.
CLINEA 0000H 0001H 00B8H 0002H 0048H
	bl	_Initialization

;;	PA0D = 0;
CLINEA 0000H 0001H 00B9H 0002H 000AH
	rb	0f250h.0

;;Loop:
CLINEA 0000H 0001H 00BBH 0001H 0005H
CLABEL 0003H "Loop"
_$L3 :

;;		main_clrWDT();
CLINEA 0000H 0001H 00BCH 0003H 0010H
	bl	_main_clrWDT

;;		for (i=0;i<4;i++)
CLINEA 0000H 0001H 00BFH 0003H 0013H
	mov	er0,	#0 
_$L6 :
CBLOCK 140 3 192

;;			RecWorld[i] = 0;	
CLINEA 0000H 0001H 00C1H 0004H 0014H
	mov	r2,	#00h
	st	r2,	NEAR _RecWorld[er0]
CBLOCKEND 140 3 194

;;		for (i=0;i<4;i++)
CLINEA 0000H 0000H 00BFH 0003H 0013H
	add	er0,	#1 
	cmp	r0,	#04h
	cmpc	r1,	#00h
	blts	_$L6

;;		_flgUartFin = 0;
CLINEA 0000H 0001H 00C5H 0003H 0012H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;		uart_stop();
CLINEA 0000H 0001H 00C6H 0003H 000EH
	bl	_uart_stop

;;		uart_startReceive(RecWorld, 4, _funcUartFin);
CLINEA 0000H 0001H 00C7H 0003H 002FH
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#4 
	mov	r0,	#BYTE1 OFFSET _RecWorld
	mov	r1,	#BYTE2 OFFSET _RecWorld
	bl	_uart_startReceive
	add	sp,	#2 

;;		while(_flgUartFin != 1){ 
CLINEA 0000H 0000H 00C8H 0001H 000BH
	bal	_$L30

;;		while(_flgUartFin != 1){ 
CLINEA 0000H 0000H 00C8H 0003H 001BH
_$L12 :
CBLOCK 140 4 200

;;			main_clrWDT();
CLINEA 0000H 0001H 00C9H 0004H 0011H
	bl	_main_clrWDT
CBLOCKEND 140 4 202

;;		while(_flgUartFin != 1){ 
CLINEA 0000H 0000H 00C8H 0001H 000BH
_$L30 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L12

;;		if(RecWorld[0] == 0x53){			//if RECWORLD == "STOP"
CLINEA 0000H 0001H 00CFH 0003H 0034H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#053h
	bne	_$L20
CBLOCK 140 5 207

;;			if(RecWorld[1] == 0x54){
CLINEA 0000H 0001H 00D0H 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#054h
	bne	_$L20
CBLOCK 140 6 208

;;				if(RecWorld[2] == 0x4F){
CLINEA 0000H 0001H 00D1H 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#04fh
	bne	_$L20
CBLOCK 140 7 209

;;					if(RecWorld[3] == 0x50){
CLINEA 0000H 0001H 00D2H 0006H 001DH
	l	r0,	NEAR _RecWorld+03h
	cmp	r0,	#050h
	bne	_$L20
CBLOCK 140 8 210

;;						PA0D = 1;
CLINEA 0000H 0001H 00D3H 0007H 000FH
	sb	0f250h.0
CBLOCKEND 140 8 212

;;					}
CLINEA 0000H 0000H 00D4H 0006H 0006H
_$L20 :
CBLOCKEND 140 7 213
CBLOCKEND 140 6 214
CBLOCKEND 140 5 215

;;		if(RecWorld[0] == 0x50){			//if RECWORLD == "PLAY"
CLINEA 0000H 0001H 00D9H 0003H 0034H
	l	r0,	NEAR _RecWorld
	cmp	r0,	#050h
	bne	_$L3
CBLOCK 140 9 217

;;			if(RecWorld[1] == 0x4C){
CLINEA 0000H 0001H 00DAH 0004H 001BH
	l	r0,	NEAR _RecWorld+01h
	cmp	r0,	#04ch
	bne	_$L3
CBLOCK 140 10 218

;;				if(RecWorld[2] == 0x41){
CLINEA 0000H 0001H 00DBH 0005H 001CH
	l	r0,	NEAR _RecWorld+02h
	cmp	r0,	#041h
	bne	_$L3
CBLOCK 140 11 219

;;					if(RecWorld[3] == 0x59){
CLINEA 0000H 0001H 00DCH 0006H 001DH
	l	r0,	NEAR _RecWorld+03h
	cmp	r0,	#059h
	bne	_$L3
CBLOCK 140 12 220

;;						PA0D = 0;
CLINEA 0000H 0001H 00DDH 0007H 000FH
	rb	0f250h.0
CBLOCKEND 140 12 222

;;					}
CLINEA 0000H 0000H 00DEH 0006H 0006H
CBLOCKEND 140 11 223
CBLOCKEND 140 10 224
CBLOCKEND 140 9 225

;;goto Loop;
CLINEA 0000H 0001H 00E3H 0001H 000AH
	bal	_$L3
CBLOCKEND 140 2 229

;;}//end main
CLINEA 0000H 0001H 00E5H 0001H 000BH
CBLOCKEND 140 1 229
CFUNCTIONEND 140


	rseg $$main_clrWDT$main
CFUNCTION 124

_main_clrWDT	:
CBLOCK 124 1 255

;;{
CLINEA 0000H 0001H 00FFH 0001H 0001H
CBLOCK 124 2 255

;;	do {
CLINEA 0000H 0001H 0100H 0002H 0005H
_$L34 :
CBLOCK 124 3 256

;;		WDTCON = 0x5Au;
CLINEA 0000H 0001H 0101H 0003H 0011H
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 124 3 258

;;	} while (WDP != 1);
CLINEA 0000H 0000H 0102H 0002H 0014H
	tb	0f00eh.0
	beq	_$L34

;;	WDTCON = 0xA5u;
CLINEA 0000H 0001H 0103H 0002H 0010H
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 124 2 260

;;}
CLINEA 0000H 0001H 0104H 0001H 0001H
	rt
CBLOCKEND 124 1 260
CFUNCTIONEND 124


	rseg $$NOP1000$main
CFUNCTION 139

_NOP1000	:
CBLOCK 139 1 270

;;{
CLINEA 0000H 0001H 010EH 0001H 0001H
CBLOCK 139 2 270
CLOCAL 4AH 0002H 0000H 0002H "ONCNT" 02H 00H 01H
CBLOCKEND 139 2 277

;;}
CLINEA 0000H 0001H 0115H 0001H 0001H
	rt
CBLOCKEND 139 1 277
CFUNCTIONEND 139


	rseg $$Initialization$main
CFUNCTION 125

_Initialization	:
CBLOCK 125 1 284

;;{
CLINEA 0000H 0001H 011CH 0001H 0001H
	push	lr
CBLOCK 125 2 284
CRET 0000H

;;	DSIO0 = 1; // 0=> Enables Synchronous Serial Port 0 (initial value).
CLINEA 0000H 0001H 0120H 0002H 0045H
	sb	0f02ah.0

;;	DUA0	= 0; // 0=> Enables the operation of UART0 (initial value).
CLINEA 0000H 0001H 0121H 0002H 0041H
	rb	0f02ah.2

;;	DUA1  = 1; // 0=> Enables Uart1 (initial value). 
CLINEA 0000H 0001H 0122H 0002H 0032H
	sb	0f02ah.3

;;	DI2C1 = 1; // 0=> Enables I2C bus Interface (Slave) (initial value).
CLINEA 0000H 0001H 0123H 0002H 0045H
	sb	0f02ah.6

;;	DI2C0 = 0; // 0=> Enables I2C bus Interface (Master) (initial value).	
CLINEA 0000H 0001H 0124H 0002H 0047H
	rb	0f02ah.7

;;	BLKCON4 = 0x00; // 0=> Enables SA-ADC
CLINEA 0000H 0001H 0126H 0002H 0026H
	mov	r0,	#00h
	st	r0,	0f02ch

;;	BLKCON6 = 0x00; // (1=disables; 0=enables) the operation of Timers 8, 9, A, E, F.
CLINEA 0000H 0001H 0127H 0002H 0052H
	st	r0,	0f02eh

;;	BLKCON7 = 0x00; // (1=disables; 0=enables) the operation of PWM (PWMC, PWMD, PWME, PWMF
CLINEA 0000H 0001H 0128H 0002H 0058H
	st	r0,	0f02fh

;;	PortA_Low();	//Initialize all 3 Ports of Q111 Port A to GPIO-Low
CLINEA 0000H 0001H 012CH 0002H 0041H
	bl	_PortA_Low

;;	PortB_Low();	//Initialize all 8 Ports of Q111 Port B to GPIO-Low
CLINEA 0000H 0001H 012DH 0002H 0041H
	bl	_PortB_Low

;;	PortC_Low();	//Initialize all 4 Ports of Q111 Port C to GPIO-Low
CLINEA 0000H 0001H 012EH 0002H 0041H
	bl	_PortC_Low

;;	SetOSC(); //8MHz
CLINEA 0000H 0001H 0131H 0002H 0011H
	bl	_SetOSC

;;	irq_di(); 	//Disable Interrupts...
CLINEA 0000H 0001H 0158H 0002H 0023H
	bl	_irq_di

;;	irq_init();	//Initialize Interrupts (All Off and NO Requests)
CLINEA 0000H 0001H 0159H 0002H 003EH
	bl	_irq_init

;;	IE0 = IE1 = IE2 = IE3 = IE4 = IE5 = IE6 = IE7 = 0; // 0=DISABLED; 1=ENABLED
CLINEA 0000H 0001H 0164H 0002H 004CH
	mov	r0,	#00h
	st	r0,	0f017h
	st	r0,	0f016h
	st	r0,	0f015h
	st	r0,	0f014h
	st	r0,	0f013h
	st	r0,	0f012h
	st	r0,	0f011h
	st	r0,	0f010h

;;	IRQ0 = IRQ1 = IRQ2 = IRQ3 = IRQ4 = IRQ5 = IRQ6 = IRQ7 = 0;	//Clear all Requests...
CLINEA 0000H 0001H 016FH 0002H 0053H
	st	r0,	0f01fh
	st	r0,	0f01eh
	st	r0,	0f01dh
	st	r0,	0f01ch
	st	r0,	0f01bh
	st	r0,	0f01ah
	st	r0,	0f019h
	st	r0,	0f018h

;;	E2H = 0; 	// E2H is the Enable flag for 2Hz TBC Interrupt (1=ENABLED)
CLINEA 0000H 0001H 0170H 0002H 0046H
	rb	0f017h.3

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_UA0INT, _intUart );
CLINEA 0000H 0001H 0172H 0002H 003CH
	mov	r2,	#BYTE1 OFFSET __intUart
	mov	r3,	#BYTE2 OFFSET __intUart
	mov	r0,	#0bh
	bl	_irq_setHdr

;;	(void)irq_setHdr( (unsigned char)IRQ_NO_I2C0INT, _intI2c );
CLINEA 0000H 0001H 0173H 0002H 003CH
	mov	r2,	#BYTE1 OFFSET __intI2c
	mov	r3,	#BYTE2 OFFSET __intI2c
	mov	r0,	#08h
	bl	_irq_setHdr

;;	EI2CM = 1;
CLINEA 0000H 0001H 0175H 0002H 000BH
	sb	0f012h.7

;;	QI2CM = 1;
CLINEA 0000H 0001H 0176H 0002H 000BH
	sb	0f01ah.7

;;	EUA0 = 1; // EUA0 is the enable flag for the UART0 interrupt (1=ENABLED)
CLINEA 0000H 0001H 0177H 0002H 0049H
	sb	0f014h.0

;;	irq_ei();	// Enable Interrupts...
CLINEA 0000H 0001H 0179H 0002H 0022H
	bl	_irq_ei

;;	WDTMOD = 0x03; 	// 0x03=overflow 8sec...
CLINEA 0000H 0001H 017DH 0002H 0029H
	mov	r0,	#03h
	st	r0,	0f00fh

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 017EH 0002H 001DH
	bl	_main_clrWDT

;;	HelloWorld[13] 	= 0x0D;
CLINEA 0000H 0001H 0181H 0002H 0018H
	mov	r0,	#0dh
	st	r0,	NEAR _HelloWorld+0dh

;;	HelloWorld[14] 	= 0x0A;
CLINEA 0000H 0001H 0182H 0002H 0018H
	mov	r0,	#0ah
	st	r0,	NEAR _HelloWorld+0eh

;;	PA0DIR = 1;
CLINEA 0000H 0001H 0185H 0002H 000CH
	sb	0f251h.0

;;	PA0C0 = 1;
CLINEA 0000H 0001H 0186H 0002H 000BH
	sb	0f252h.0

;;	PA0C1 = 1;
CLINEA 0000H 0001H 0187H 0002H 000BH
	sb	0f253h.0

;;	PA0MD0 = 0;
CLINEA 0000H 0001H 0188H 0002H 000CH
	rb	0f254h.0

;;	PA0MD1 = 0;
CLINEA 0000H 0001H 0189H 0002H 000CH
	rb	0f255h.0

;;	(void)i2c_init(I2C_MOD_FST, (unsigned short)HSCLK_KHZ, I2C_SYN_OFF);
CLINEA 0000H 0001H 01A4H 0002H 0045H
	mov	r0,	#00h
	push	r0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#01h
	bl	_i2c_init
	add	sp,	#2 

;;			     &_uartSetParam );						/* Param... 	 */
CLINEA 0000H 0001H 01A9H 0009H 002FH
	mov	r0,	#BYTE1 OFFSET __uartSetParam
	mov	r1,	#BYTE2 OFFSET __uartSetParam
	push	er0
	mov	r2,	#040h
	mov	r3,	#01fh
	mov	r0,	#02h
	bl	_uart_init
	add	sp,	#2 

;;	uart_PortSet();
CLINEA 0000H 0001H 01AAH 0002H 0010H
	bl	_uart_PortSet

;;	_flgUartFin = 0;
CLINEA 0000H 0001H 01ABH 0002H 0011H
	mov	r0,	#00h
	st	r0,	NEAR __flgUartFin

;;	uart_stop();
CLINEA 0000H 0001H 01ACH 0002H 000DH
	bl	_uart_stop

;;	uart_startSend(HelloWorld, 15, _funcUartFin); // Send, "Hello World!"
CLINEA 0000H 0001H 01AEH 0002H 0046H
	mov	r0,	#BYTE1 OFFSET __funcUartFin
	mov	r1,	#BYTE2 OFFSET __funcUartFin
	push	er0
	mov	er2,	#15
	mov	r0,	#BYTE1 OFFSET _HelloWorld
	mov	r1,	#BYTE2 OFFSET _HelloWorld
	bl	_uart_startSend
	add	sp,	#2 

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 01AFH 0001H 0015H
	bal	_$L46

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 01AFH 0002H 0019H
_$L44 :
CBLOCK 125 3 431

;;		NOP1000();
CLINEA 0000H 0001H 01B0H 0003H 000CH
	bl	_NOP1000

;;		main_clrWDT();
CLINEA 0000H 0001H 01B1H 0003H 0010H
	bl	_main_clrWDT
CBLOCKEND 125 3 434

;;	while(_flgUartFin != 1){
CLINEA 0000H 0000H 01AFH 0001H 0015H
_$L46 :
	l	r0,	NEAR __flgUartFin
	cmp	r0,	#01h
	bne	_$L44
CBLOCKEND 125 2 435

;;}//End Initialization
CLINEA 0000H 0001H 01B3H 0001H 0015H
	pop	pc
CBLOCKEND 125 1 435
CFUNCTIONEND 125


	rseg $$_funcUartFin$main
CFUNCTION 133

__funcUartFin	:
CBLOCK 133 1 447

;;{
CLINEA 0000H 0001H 01BFH 0001H 0001H
	push	lr
CBLOCK 133 2 447
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	uart_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 01C0H 0002H 0054H
	bl	_uart_continue

;;	_flgUartFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 01C1H 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __flgUartFin

;;	main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 01C2H 0002H 002EH
	bl	_main_reqNotHalt
CBLOCKEND 133 2 451

;;}
CLINEA 0000H 0001H 01C3H 0001H 0001H
	pop	pc
CBLOCKEND 133 1 451
CFUNCTIONEND 133


	rseg $$_funcI2CFin$main
CFUNCTION 134

__funcI2CFin	:
CBLOCK 134 1 462

;;{
CLINEA 0000H 0001H 01CEH 0001H 0001H
	push	lr
CBLOCK 134 2 462
CRET 0000H
CARGUMENT 46H 0002H 0000H "size" 02H 00H 01H
CARGUMENT 46H 0001H 0000H "errStat" 02H 00H 00H

;;	i2c_continue();					// Function in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 01CFH 0002H 0053H
	bl	_i2c_continue

;;	_flgI2CFin = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 01D0H 0002H 0025H
	mov	r0,	#01h
	st	r0,	NEAR __flgI2CFin

;;	main_reqNotHalt();				// uncommented 5/2/2013
CLINEA 0000H 0001H 01D1H 0002H 002EH
	bl	_main_reqNotHalt
CBLOCKEND 134 2 466

;;}
CLINEA 0000H 0001H 01D2H 0001H 0001H
	pop	pc
CBLOCKEND 134 1 466
CFUNCTIONEND 134


	rseg $$_intI2c$main
CFUNCTION 138

__intI2c	:
CBLOCK 138 1 476

;;{
CLINEA 0000H 0001H 01DCH 0001H 0001H
	push	lr
CBLOCK 138 2 476
CRET 0000H

;;	(void)i2c_continue();
CLINEA 0000H 0001H 01DDH 0002H 0016H
	bl	_i2c_continue

;;	main_reqNotHalt();
CLINEA 0000H 0001H 01DEH 0002H 0013H
	bl	_main_reqNotHalt
CBLOCKEND 138 2 479

;;}
CLINEA 0000H 0001H 01DFH 0001H 0001H
	pop	pc
CBLOCKEND 138 1 479
CFUNCTIONEND 138


	rseg $$checkI2C$main
CFUNCTION 135

_checkI2C	:
CBLOCK 135 1 489

;;{
CLINEA 0000H 0001H 01E9H 0001H 0001H
	push	lr
CBLOCK 135 2 489
CRET 0000H
CLOCAL 47H 0002H 0024H 0002H "ret" 02H 00H 01H

;;	while (ret != 1) {
CLINEA 0000H 0000H 01EEH 0002H 0013H
_$L53 :
CBLOCK 135 3 494

;;		ret = i2c_continue();
CLINEA 0000H 0000H 01EFH 0003H 0017H
	bl	_i2c_continue
CBLOCK 135 4 496
CBLOCKEND 135 4 498
CBLOCKEND 135 3 499

;;	while (ret != 1) {
CLINEA 0000H 0000H 01EEH 0000H 0000H
	cmp	r0,	#01h
	cmpc	r1,	#00h
	bne	_$L53
CBLOCKEND 135 2 500

;;}
CLINEA 0000H 0001H 01F4H 0001H 0001H
	pop	pc
CBLOCKEND 135 1 500
CFUNCTIONEND 135


	rseg $$main_reqNotHalt$main
CFUNCTION 136

_main_reqNotHalt	:
CBLOCK 136 1 510

;;{
CLINEA 0000H 0001H 01FEH 0001H 0001H
CBLOCK 136 2 510

;;	_reqNotHalt = (unsigned char)FLG_SET;
CLINEA 0000H 0001H 01FFH 0002H 0026H
	mov	r0,	#01h
	st	r0,	NEAR __reqNotHalt
CBLOCKEND 136 2 512

;;}
CLINEA 0000H 0001H 0200H 0001H 0001H
	rt
CBLOCKEND 136 1 512
CFUNCTIONEND 136


	rseg $$_intUart$main
CFUNCTION 137

__intUart	:
CBLOCK 137 1 522

;;{
CLINEA 0000H 0001H 020AH 0001H 0001H
CBLOCK 137 2 522

;;		uart_continue(); //in UART.c: process to continue send and receive...
CLINEA 0000H 0001H 020BH 0003H 0047H
	b	_uart_continue
CBLOCKEND 137 2 524
CLINEA 0000H 0001H 020CH 0001H 0001H
CBLOCKEND 137 1 524
CFUNCTIONEND 137


	rseg $$SetOSC$main
CFUNCTION 126

_SetOSC	:
CBLOCK 126 1 529

;;static void SetOSC(void){
CLINEA 0000H 0001H 0211H 0001H 0019H
CBLOCK 126 2 529

;;	SYSC0 = 0;			// Used to select the frequency of the HSCLK => 00=8.192MHz.
CLINEA 0000H 0001H 021AH 0002H 004AH
	rb	0f002h.0

;;	SYSC1 = 0;
CLINEA 0000H 0001H 021BH 0002H 000BH
	rb	0f002h.1

;;	OSCM1 = 1;			// 10 => Built-in PLL oscillation mode
CLINEA 0000H 0001H 021DH 0002H 0034H
	sb	0f002h.3

;;	OSCM0 = 0;
CLINEA 0000H 0001H 021EH 0002H 000BH
	rb	0f002h.2

;;	ENOSC = 1;			//1=Enable High Speed Oscillator...
CLINEA 0000H 0001H 0220H 0002H 0031H
	sb	0f003h.1

;;	SYSCLK = 1;			//1=HSCLK; 0=LSCLK 
CLINEA 0000H 0001H 0221H 0002H 0022H
	sb	0f003h.0

;;	LPLL = 1;			//1=Enables the use of PLL oscillation - ADDED 4/30/2013
CLINEA 0000H 0001H 0223H 0002H 0045H
	sb	0f003h.7

;;	__EI();			//INT enable
CLINEA 0000H 0001H 0225H 0002H 0017H
	ei
CBLOCKEND 126 2 551

;;}
CLINEA 0000H 0001H 0227H 0001H 0001H
	rt
CBLOCKEND 126 1 551
CFUNCTIONEND 126


	rseg $$analog_comparator$main
CFUNCTION 127

_analog_comparator	:
CBLOCK 127 1 558

;;void analog_comparator(void){
CLINEA 0000H 0001H 022EH 0001H 001DH
CBLOCK 127 2 558

;;	CMP0EN  = 0x01; 	// Comparator ON...
CLINEA 0000H 0001H 0244H 0002H 0025H
	sb	0f950h.0

;;	CMP0E1  = 0x00; 	// No Interupt...
CLINEA 0000H 0001H 0245H 0002H 0023H
	rb	0f951h.1

;;	CMP0E0  = 0x00;
CLINEA 0000H 0001H 0246H 0002H 0010H
	rb	0f951h.0

;;	CMP0SM1 = 0x00; 	// Detect without Sampling... 
CLINEA 0000H 0001H 0247H 0002H 0030H
	rb	0f951h.3

;;	CMP0RFS = 0x01; 	// Differential Input on B5
CLINEA 0000H 0001H 0248H 0002H 002DH
	sb	0f951h.4

;;	CMP0EN  = 0x00;
CLINEA 0000H 0001H 024BH 0002H 0010H
	rb	0f950h.0
CBLOCKEND 127 2 590

;;}
CLINEA 0000H 0001H 024EH 0001H 0001H
	rt
CBLOCKEND 127 1 590
CFUNCTIONEND 127


	rseg $$PortA_Low$main
CFUNCTION 128

_PortA_Low	:
CBLOCK 128 1 598

;;void PortA_Low(void){
CLINEA 0000H 0001H 0256H 0001H 0015H
CBLOCK 128 2 598

;;	PA0DIR = 0;		// PortA Bit0 set to Output Mode...
CLINEA 0000H 0001H 0260H 0002H 0031H
	rb	0f251h.0

;;	PA1DIR = 0;		// PortA Bit1 set to Output Mode...
CLINEA 0000H 0001H 0261H 0002H 0031H
	rb	0f251h.1

;;	PA2DIR = 0;		// PortA Bit2 set to Output Mode...
CLINEA 0000H 0001H 0262H 0002H 0031H
	rb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0265H 0002H 0031H
	sb	0f253h.0

;;	PA0C0  = 1;		
CLINEA 0000H 0001H 0266H 0002H 000EH
	sb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0267H 0002H 0031H
	sb	0f253h.1

;;	PA1C0  = 1;	
CLINEA 0000H 0001H 0268H 0002H 000DH
	sb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0269H 0002H 0031H
	sb	0f253h.2

;;	PA2C0  = 1;	
CLINEA 0000H 0001H 026AH 0002H 000DH
	sb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 026DH 0002H 003CH
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 026EH 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 026FH 0002H 003CH
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 0270H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 0271H 0002H 003CH
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0272H 0002H 000EH
	rb	0f254h.2

;;	PA0D = 0;		// A.0 Output OFF....
CLINEA 0000H 0001H 0275H 0002H 0021H
	rb	0f250h.0

;;	PA1D = 0;		// A.1 Output OFF....
CLINEA 0000H 0001H 0276H 0002H 0021H
	rb	0f250h.1

;;	PA2D = 0;		// A.2 Output OFF....
CLINEA 0000H 0001H 0277H 0002H 0021H
	rb	0f250h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 0279H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 128 2 635
CLINEA 0000H 0001H 027BH 0001H 0001H
CBLOCKEND 128 1 635
CFUNCTIONEND 128


	rseg $$PortB_Low$main
CFUNCTION 129

_PortB_Low	:
CBLOCK 129 1 641

;;void PortB_Low(void){
CLINEA 0000H 0001H 0281H 0001H 0015H
CBLOCK 129 2 641

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 028BH 0002H 0031H
	rb	0f259h.0

;;	PB1DIR = 0;		// PortB Bit1 set to Output Mode...
CLINEA 0000H 0001H 028CH 0002H 0031H
	rb	0f259h.1

;;	PB2DIR = 0;		// PortB Bit2 set to Output Mode...
CLINEA 0000H 0001H 028DH 0002H 0031H
	rb	0f259h.2

;;	PB3DIR = 0;		// PortB Bit3 set to Output Mode...
CLINEA 0000H 0001H 028EH 0002H 0031H
	rb	0f259h.3

;;	PB4DIR = 0;		// PortB Bit4 set to Output Mode...
CLINEA 0000H 0001H 028FH 0002H 0031H
	rb	0f259h.4

;;	PB5DIR = 0;		// PortB Bit5 set to Output Mode...
CLINEA 0000H 0001H 0290H 0002H 0031H
	rb	0f259h.5

;;	PB6DIR = 0;		// PortB Bit6 set to Output Mode...
CLINEA 0000H 0001H 0291H 0002H 0031H
	rb	0f259h.6

;;	PB7DIR = 0;		// PortB Bit7 set to Output Mode...
CLINEA 0000H 0001H 0292H 0002H 0031H
	rb	0f259h.7

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0295H 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 0296H 0002H 000EH
	sb	0f25ah.0

;;	PB1C1  = 1;		// PortB Bit1 set to CMOS Output...
CLINEA 0000H 0001H 0297H 0002H 0031H
	sb	0f25bh.1

;;	PB1C0  = 1;	
CLINEA 0000H 0001H 0298H 0002H 000DH
	sb	0f25ah.1

;;	PB2C1  = 1;		// PortB Bit2 set to CMOS Output...
CLINEA 0000H 0001H 0299H 0002H 0031H
	sb	0f25bh.2

;;	PB2C0  = 1;	
CLINEA 0000H 0001H 029AH 0002H 000DH
	sb	0f25ah.2

;;	PB3C1  = 1;		// PortB Bit3 set to CMOS Output...
CLINEA 0000H 0001H 029BH 0002H 0031H
	sb	0f25bh.3

;;	PB3C0  = 1;		
CLINEA 0000H 0001H 029CH 0002H 000EH
	sb	0f25ah.3

;;	PB4C1  = 1;		// PortB Bit4 set to CMOS Output...
CLINEA 0000H 0001H 029DH 0002H 0031H
	sb	0f25bh.4

;;	PB4C0  = 1;	
CLINEA 0000H 0001H 029EH 0002H 000DH
	sb	0f25ah.4

;;	PB5C1  = 1;		// PortB Bit5 set to CMOS Output...
CLINEA 0000H 0001H 029FH 0002H 0031H
	sb	0f25bh.5

;;	PB5C0  = 1;	
CLINEA 0000H 0001H 02A0H 0002H 000DH
	sb	0f25ah.5

;;	PB6C1  = 1;		// PortB Bit6 set to CMOS Output...
CLINEA 0000H 0001H 02A1H 0002H 0031H
	sb	0f25bh.6

;;	PB6C0  = 1;	
CLINEA 0000H 0001H 02A2H 0002H 000DH
	sb	0f25ah.6

;;	PB7C1  = 1;		// PortB Bit7 set to CMOS Output...
CLINEA 0000H 0001H 02A3H 0002H 0031H
	sb	0f25bh.7

;;	PB7C0  = 1;	
CLINEA 0000H 0001H 02A4H 0002H 000DH
	sb	0f25ah.7

;;	PB0MD1  = 0;	// PortB Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 02A7H 0002H 003CH
	rb	0f25dh.0

;;	PB0MD0  = 0;	
CLINEA 0000H 0001H 02A8H 0002H 000EH
	rb	0f25ch.0

;;	PB1MD1  = 0;	// PortB Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 02A9H 0002H 003CH
	rb	0f25dh.1

;;	PB1MD0  = 0;	
CLINEA 0000H 0001H 02AAH 0002H 000EH
	rb	0f25ch.1

;;	PB2MD1  = 0;	// PortB Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 02ABH 0002H 003CH
	rb	0f25dh.2

;;	PB2MD0  = 0;	
CLINEA 0000H 0001H 02ACH 0002H 000EH
	rb	0f25ch.2

;;	PB3MD1  = 0;	// PortB Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 02ADH 0002H 003CH
	rb	0f25dh.3

;;	PB3MD0  = 0;	
CLINEA 0000H 0001H 02AEH 0002H 000EH
	rb	0f25ch.3

;;	PB4MD1  = 0;	// PortB Bit4 set to General Purpose Output...
CLINEA 0000H 0001H 02AFH 0002H 003CH
	rb	0f25dh.4

;;	PB4MD0  = 0;	
CLINEA 0000H 0001H 02B0H 0002H 000EH
	rb	0f25ch.4

;;	PB5MD1  = 0;	// PortB Bit5 set to General Purpose Output...
CLINEA 0000H 0001H 02B1H 0002H 003CH
	rb	0f25dh.5

;;	PB5MD0  = 0;
CLINEA 0000H 0001H 02B2H 0002H 000DH
	rb	0f25ch.5

;;	PB6MD1  = 0;	// PortB Bit6 set to General Purpose Output...
CLINEA 0000H 0001H 02B3H 0002H 003CH
	rb	0f25dh.6

;;	PB6MD0  = 0;	
CLINEA 0000H 0001H 02B4H 0002H 000EH
	rb	0f25ch.6

;;	PB7MD1  = 0;	// PortB Bit7 set to General Purpose Output...
CLINEA 0000H 0001H 02B5H 0002H 003CH
	rb	0f25dh.7

;;	PB7MD0  = 0;
CLINEA 0000H 0001H 02B6H 0002H 000DH
	rb	0f25ch.7

;;	PB0D = 0;		// B.0 Output OFF....
CLINEA 0000H 0001H 02B9H 0002H 0021H
	rb	0f258h.0

;;	PB1D = 0;		// B.1 Output OFF....
CLINEA 0000H 0001H 02BAH 0002H 0021H
	rb	0f258h.1

;;	PB2D = 0;		// B.2 Output OFF....
CLINEA 0000H 0001H 02BBH 0002H 0021H
	rb	0f258h.2

;;	PB3D = 0;		// B.3 Output OFF....
CLINEA 0000H 0001H 02BCH 0002H 0021H
	rb	0f258h.3

;;	PB4D = 0;		// B.4 Output OFF....
CLINEA 0000H 0001H 02BDH 0002H 0021H
	rb	0f258h.4

;;	PB5D = 0;		// B.5 Output OFF....
CLINEA 0000H 0001H 02BEH 0002H 0021H
	rb	0f258h.5

;;	PB6D = 0;		// B.6 Output OFF....
CLINEA 0000H 0001H 02BFH 0002H 0021H
	rb	0f258h.6

;;	PB7D = 0;		// B.7 Output OFF....
CLINEA 0000H 0001H 02C0H 0002H 0021H
	rb	0f258h.7

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 02C2H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 129 2 708
CLINEA 0000H 0001H 02C4H 0001H 0001H
CBLOCKEND 129 1 708
CFUNCTIONEND 129


	rseg $$PortC_Low$main
CFUNCTION 130

_PortC_Low	:
CBLOCK 130 1 714

;;void PortC_Low(void){
CLINEA 0000H 0001H 02CAH 0001H 0015H
CBLOCK 130 2 714

;;	PC0DIR = 0;		// PortC Bit0 set to Output Mode...
CLINEA 0000H 0001H 02D4H 0002H 0031H
	rb	0f261h.0

;;	PC1DIR = 0;		// PortC Bit1 set to Output Mode...
CLINEA 0000H 0001H 02D5H 0002H 0031H
	rb	0f261h.1

;;	PC2DIR = 0;		// PortC Bit2 set to Output Mode...
CLINEA 0000H 0001H 02D6H 0002H 0031H
	rb	0f261h.2

;;	PC3DIR = 0;		// PortC Bit3 set to Output Mode...
CLINEA 0000H 0001H 02D7H 0002H 0031H
	rb	0f261h.3

;;	PC0C1  = 1;		// PortC Bit0 set to CMOS Output...
CLINEA 0000H 0001H 02DBH 0002H 0031H
	sb	0f263h.0

;;	PC0C0  = 1;		
CLINEA 0000H 0001H 02DCH 0002H 000EH
	sb	0f262h.0

;;	PC1C1  = 1;		// PortC Bit1 set to CMOS Output...
CLINEA 0000H 0001H 02DDH 0002H 0031H
	sb	0f263h.1

;;	PC1C0  = 1;	
CLINEA 0000H 0001H 02DEH 0002H 000DH
	sb	0f262h.1

;;	PC2C1  = 1;		// PortC Bit2 set to CMOS Output...
CLINEA 0000H 0001H 02DFH 0002H 0031H
	sb	0f263h.2

;;	PC2C0  = 1;	
CLINEA 0000H 0001H 02E0H 0002H 000DH
	sb	0f262h.2

;;	PC3C1  = 1;		// PortC Bit3 set to CMOS Output...
CLINEA 0000H 0001H 02E1H 0002H 0031H
	sb	0f263h.3

;;	PC3C0  = 1;		
CLINEA 0000H 0001H 02E2H 0002H 000EH
	sb	0f262h.3

;;	PC0MD1  = 0;	// PortC Bit0 set to General Purpose Output...
CLINEA 0000H 0001H 02E5H 0002H 003CH
	rb	0f265h.0

;;	PC0MD0  = 0;	
CLINEA 0000H 0001H 02E6H 0002H 000EH
	rb	0f264h.0

;;	PC1MD1  = 0;	// PortC Bit1 set to General Purpose Output...
CLINEA 0000H 0001H 02E7H 0002H 003CH
	rb	0f265h.1

;;	PC1MD0  = 0;	
CLINEA 0000H 0001H 02E8H 0002H 000EH
	rb	0f264h.1

;;	PC2MD1  = 0;	// PortC Bit2 set to General Purpose Output...
CLINEA 0000H 0001H 02E9H 0002H 003CH
	rb	0f265h.2

;;	PC2MD0  = 0;	
CLINEA 0000H 0001H 02EAH 0002H 000EH
	rb	0f264h.2

;;	PC3MD1  = 0;	// PortC Bit3 set to General Purpose Output...
CLINEA 0000H 0001H 02EBH 0002H 003CH
	rb	0f265h.3

;;	PC3MD0  = 0;	
CLINEA 0000H 0001H 02ECH 0002H 000EH
	rb	0f264h.3

;;	PC0D = 0;		// C.0 Output OFF....
CLINEA 0000H 0001H 02EFH 0002H 0021H
	rb	0f260h.0

;;	PC1D = 0;		// C.1 Output OFF....
CLINEA 0000H 0001H 02F0H 0002H 0021H
	rb	0f260h.1

;;	PC2D = 0;		// C.2 Output OFF....
CLINEA 0000H 0001H 02F1H 0002H 0021H
	rb	0f260h.2

;;	PC3D = 0;		// C.3 Output OFF....
CLINEA 0000H 0001H 02F2H 0002H 0021H
	rb	0f260h.3

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 02F4H 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 130 2 758
CLINEA 0000H 0001H 02F6H 0001H 0001H
CBLOCKEND 130 1 758
CFUNCTIONEND 130


	rseg $$PortA_Digital_Inputs$main
CFUNCTION 131

_PortA_Digital_Inputs	:
CBLOCK 131 1 764

;;void PortA_Digital_Inputs(void){
CLINEA 0000H 0001H 02FCH 0001H 0020H
CBLOCK 131 2 764

;;	PA0DIR = 1;		// PortA Bit0 set to Input Mode...
CLINEA 0000H 0001H 0306H 0002H 0030H
	sb	0f251h.0

;;	PA1DIR = 1;		// PortA Bit1 set to Input Mode...
CLINEA 0000H 0001H 0307H 0002H 0030H
	sb	0f251h.1

;;	PA2DIR = 1;		// PortA Bit2 set to Input Mode...
CLINEA 0000H 0001H 0308H 0002H 0030H
	sb	0f251h.2

;;	PA0C1  = 1;		// PortA Bit0 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 030CH 0002H 0041H
	sb	0f253h.0

;;	PA0C0  = 0;		
CLINEA 0000H 0001H 030DH 0002H 000EH
	rb	0f252h.0

;;	PA1C1  = 1;		// PortA Bit1 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 030EH 0002H 0041H
	sb	0f253h.1

;;	PA1C0  = 0;	
CLINEA 0000H 0001H 030FH 0002H 000DH
	rb	0f252h.1

;;	PA2C1  = 1;		// PortA Bit2 set to Input with Pull-Up Resistor...
CLINEA 0000H 0001H 0310H 0002H 0041H
	sb	0f253h.2

;;	PA2C0  = 0;	
CLINEA 0000H 0001H 0311H 0002H 000DH
	rb	0f252h.2

;;	PA0MD1  = 0;	// PortA Bit0 set to General Purpose I/O...
CLINEA 0000H 0001H 0314H 0002H 0039H
	rb	0f255h.0

;;	PA0MD0  = 0;	
CLINEA 0000H 0001H 0315H 0002H 000EH
	rb	0f254h.0

;;	PA1MD1  = 0;	// PortA Bit1 set to General Purpose I/O...
CLINEA 0000H 0001H 0316H 0002H 0039H
	rb	0f255h.1

;;	PA1MD0  = 0;	
CLINEA 0000H 0001H 0317H 0002H 000EH
	rb	0f254h.1

;;	PA2MD1  = 0;	// PortA Bit2 set to General Purpose I/O...
CLINEA 0000H 0001H 0318H 0002H 0039H
	rb	0f255h.2

;;	PA2MD0  = 0;	
CLINEA 0000H 0001H 0319H 0002H 000EH
	rb	0f254h.2

;;	main_clrWDT(); 	// Clear WDT
CLINEA 0000H 0001H 031BH 0002H 001DH
	b	_main_clrWDT
CBLOCKEND 131 2 797
CLINEA 0000H 0001H 031DH 0001H 0001H
CBLOCKEND 131 1 797
CFUNCTIONEND 131


	rseg $$PinB0_PWM$main
CFUNCTION 132

_PinB0_PWM	:
CBLOCK 132 1 805

;;void PinB0_PWM(void){
CLINEA 0000H 0001H 0325H 0001H 0015H
CBLOCK 132 2 805

;;	PB0DIR = 0;		// PortB Bit0 set to Output Mode...
CLINEA 0000H 0001H 0331H 0002H 0031H
	rb	0f259h.0

;;	PB0C1  = 1;		// PortB Bit0 set to CMOS Output...
CLINEA 0000H 0001H 0334H 0002H 0031H
	sb	0f25bh.0

;;	PB0C0  = 1;		
CLINEA 0000H 0001H 0335H 0002H 000EH
	sb	0f25ah.0

;;	PB0MD1  = 0;	// PortB Bit0 set to PWM Output (0,1)...
CLINEA 0000H 0001H 0338H 0002H 0036H
	rb	0f25dh.0

;;	PB0MD0  = 1;	
CLINEA 0000H 0001H 0339H 0002H 000EH
	sb	0f25ch.0

;;	PCCS1 = 0;	//00= LS; 01=HS; 10=PLL
CLINEA 0000H 0001H 033DH 0002H 0023H
	rb	0f916h.1

;;	PCCS0 = 1;
CLINEA 0000H 0001H 033EH 0002H 000BH
	sb	0f916h.0

;;	PWCP = 4250;		// Init Period to (1=255kHz; 10=46kHz; 50=10kHz; 200=2.5kH; ; 3185 = 160Hz; 3400=150Hz; 4250=120Hz; 5000=102Hz)
CLINEA 0000H 0001H 0341H 0002H 007EH
	mov	r0,	#09ah
	mov	r1,	#010h
	st	er0,	0f910h

;;	PWCD =    12;		//12    ~  0.25% duty cycle @ 160Hz
CLINEA 0000H 0001H 034BH 0002H 0033H
	mov	er0,	#12
	st	er0,	0f912h

;;	PCRUN = 0;		// OFF to start
CLINEA 0000H 0001H 034DH 0002H 001CH
	rb	0f917h.0
CBLOCKEND 132 2 847

;;}
CLINEA 0000H 0001H 034FH 0001H 0001H
	rt
CBLOCKEND 132 1 847
CFUNCTIONEND 132

	public _checkI2C
	public _main_clrWDT
	public _main_reqNotHalt
	public _PortA_Digital_Inputs
	public _main
	public _NOP1000
	public _PortC_Low
	public _HelloWorld
	public _PortB_Low
	public _PortA_Low
	public _analog_comparator
	public _PinB0_PWM
	_RecWorld comm data 04h #00h
	__flgUartFin comm data 01h #00h
	__flgI2CFin comm data 01h #00h
	__reqNotHalt comm data 01h #00h
	extrn code near : _irq_init
	extrn code near : _uart_PortSet
	extrn code near : _uart_startReceive
	extrn code near : _uart_init
	extrn code near : _i2c_continue
	extrn code near : _irq_di
	extrn code near : _irq_ei
	extrn code near : _irq_setHdr
	extrn code near : _uart_stop
	extrn code near : _uart_startSend
	extrn code near : _uart_continue
	extrn code near : _i2c_init
	extrn code : $$start_up

	cseg #00h at 02h
	dw	$$start_up

	rseg $$NINITTAB
	DB	"Safety Active ", 00H

	rseg $$TAB_uartSetParam$main
__uartSetParam :
	dw	0e100h
	dw	00h
	db	00h
	db	02h
	db	00h
	db	00h
	db	00h
	align

	rseg $$NINITVAR
_HelloWorld :
	ds	0fh

	rseg $$NINITTAB
	align

	rseg $$NINITVAR
	align

	end
