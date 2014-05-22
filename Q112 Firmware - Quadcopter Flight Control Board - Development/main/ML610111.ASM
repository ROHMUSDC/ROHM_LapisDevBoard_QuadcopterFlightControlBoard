;***************************************************************
;       ML610111 start up assembly source file
;       for CCU8 version 1.xx/2.xx/3.xx
;       SMALL CODE MODEL
;       ROMWINDOW  00000H-05FFFH
;       Version 1.01
;       Last Edition  Mar 18, 2013
;       Copyright (C) 2013 LAPIS Semiconductor Co., Ltd.
;***************************************************************

        type(ML610111)

        model   small
        romwindow       0, 05fffh

        extrn   code: _main
        extrn   data near: _$$SP
        public  $$start_up

        cseg    at 0:0h
        dw      offset _$$SP

        cseg    at 0:4h
        dw      $$brk_reset

$$NCODml610111sw segment code #0
        rseg    $$NCODml610111sw

$$start_up:

        bal     $begin

$$brk_reset:
        bal     $               ;endless loop

$begin:

;---------------------------------------------------------------
;       setting Memory Model
;---------------------------------------------------------------
; nothing (fixed as Small model)

;---------------------------------------------------------------
;       setting Rom Window range
;---------------------------------------------------------------
; nothing (fixed as range 0-05fffh)

;---------------------------------------------------------------
;       user SFR definition
;---------------------------------------------------------------
; nothing

;---------------------------------------------------------------
;       Data memory zero clear
;---------------------------------------------------------------
NEAR_RAM_START  equ     0e000h
NEAR_RAM_END    equ     0e7ffh

        mov     er0,    #0
        mov     er2,    #0
        mov     er4,    #0
        mov     er6,    #0

        mov     r8,     #BYTE1 NEAR_RAM_START
        mov     r9,     #BYTE2 NEAR_RAM_START
        lea     [er8]
__near_ram_loop:
        st      qr0,    [ea+]
        add     er8,    #8              ;er8 += 8
        cmp     r9,     #BYTE2 (NEAR_RAM_END+1)
        blt     __near_ram_loop
        cmp     r8,     #BYTE1 (NEAR_RAM_END+1)
        blt     __near_ram_loop

;---------------------------------------------------------------
;       WDT counter clear
;
;       !!NOTICE!!
;       After this process, you have to clear WDT counter within 
;       the time described in user's manual of LSI.
;
;       !!NOTICE!!
;       Please remove this routine when you use DTU8 simulation 
;       mode.
;---------------------------------------------------------------
        mov     r12,     #05ah
        mov     r13,     #0a5h
__wdtcounter_clear:
        st      r12,     WDTCON
        tb      WDP
        bz      __wdtcounter_clear
        st      r13,     WDTCON

;---------------------------------------------------------------
;       data variable initialization
;---------------------------------------------------------------
        mov     r10,    #SEG $$init_info
        lea     OFFSET $$init_info
__init_loop:
        ;---------------------------------------------
        ; get source offset address and set in ER0
        ;---------------------------------------------
        l       er0,    r10:[ea+]
        cmp     r0,     #0ffh
        bne     __skip
        cmp     r1,     #0ffh
        beq     __init_end              ;if er0==0ffffh then exit
__skip:
        ;---------------------------------------------
        ; get destination offset address and set in ER2
        ;---------------------------------------------
        l       er2,    r10:[ea+]

        ;---------------------------------------------
        ; get size of objects and set in ER4
        ;---------------------------------------------
        l       er4,    r10:[ea+]

        ;---------------------------------------------
        ; get source phy_seg address and set in R6
        ;---------------------------------------------
        l       r6,     r10:[ea+]

        ;---------------------------------------------
        ; get destination phy_seg address and set in R7
        ;---------------------------------------------
        l       r7,     r10:[ea+]

        ;---------------------------------------------
        ; copy
        ;---------------------------------------------
        add     er4,    #0
        bz      __init_loop             ;if er4==0000 then next

        tb      r2.0
        bnz     __loop_by_byte
        tb      r4.0
        bnz     __loop_by_byte

__init_loop2:
        l       er8,    r6:[er0]
        add     er0,    #2              ;er0 += 2
        st      er8,    r7:[er2]
        add     er2,    #2              ;er2 += 2

        add     er4,    #-2             ;er4 -= 2
        bnz     __init_loop2
        bal     __init_loop

__loop_by_byte:
        l       r8,     r6:[er0]
        add     er0,    #1              ;er0 += 1
        st      r8,     r7:[er2]
        add     er2,    #1              ;er2 += 1

        add     er4,    #-1             ;er4 -= 1
        bnz     __loop_by_byte
        bal     __init_loop

__init_end:

;---------------------------------------------------------------
;       call initializing routine
;---------------------------------------------------------------
        bl      $$content_of_init

;---------------------------------------------------------------
;       initialize DSR zero
;---------------------------------------------------------------
        mov     r0,     #0
        st      r0,     DSR

;---------------------------------------------------------------
;       far jump to main routine
;---------------------------------------------------------------
        b       _main

;---------------------------------------------------------------
;       segment definition for initializing routine
;---------------------------------------------------------------
$$content_of_init segment code
        rseg    $$content_of_init

$$end_of_init segment code
        rseg    $$end_of_init
        rt

;---------------------------------------------------------------
;       segment definition for data variable initialization
;---------------------------------------------------------------
$$init_info segment table 2
        rseg    $$init_info
        dw      $$NINITTAB
        dw      $$NINITVAR
        dw      size $$NINITTAB
        db      seg $$NINITTAB
        db      seg $$NINITVAR

$$init_info_end segment table
        rseg    $$init_info_end
        dw      0ffffh

$$NINITVAR segment data 2 #0
$$NINITTAB segment table 2

;---------------------------------------------------------------
;       Filling the Test area at code memory (for ML610111)
;---------------------------------------------------------------
        cseg #0 at 05fe0h
        dw  10h     DUP 0ffffh  ;

;---------------------------------------------------------------
;       Keeping the Mirror area (for ML610111)
;---------------------------------------------------------------
        tseg #08h at 00000h
        ds      06000h

        tseg #0ah at 00000h
        ds      01000h

;---------------------------------------------------------------
;       Keeping the Self-Programming area (for ML610111)
;---------------------------------------------------------------
        tseg #02h at 00000h
        ds      01000h


        end

