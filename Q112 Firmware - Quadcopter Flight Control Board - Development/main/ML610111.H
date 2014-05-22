/**************************************************************

    ML610111.H - SFR define Header file for CCU8

    #CORE           "nX-U8/100"
    #TARGET         "ML610111"
    #VERSION        "1.01"
    Last Edition  Mar 18, 2013
    Copyright (C) 2013 LAPIS Semiconductor Co., Ltd.
**************************************************************/
#ifndef _ML610111_H_
#define _ML610111_H_

typedef struct{
  unsigned char b0  : 1 ;
  unsigned char b1  : 1 ;
  unsigned char b2  : 1 ;
  unsigned char b3  : 1 ;
  unsigned char b4  : 1 ;
  unsigned char b5  : 1 ;
  unsigned char b6  : 1 ;
  unsigned char b7  : 1 ;
} _BYTE_FIELD;

/*---------------------------------------------------
	CODE ADDRESS SYMBOLS
---------------------------------------------------*/
#define WDTINT	0x0008
#define VLSINT	0x000C
#define PA0INT	0x0010
#define PA1INT	0x0012
#define PA2INT	0x0014
#define PB0INT	0x0018
#define PB1INT	0x001A
#define PB2INT	0x001C
#define PB3INT	0x001E
#define SIO0INT	0x0020
#define SADINT	0x0024
#define I2CSINT	0x002C
#define I2CMINT	0x002E
#define TM8INT	0x0034
#define TM9INT	0x0036
#define UA0INT	0x0040
#define UA1INT	0x0042
#define CMP0INT	0x004C
#define CMP1INT	0x004E
#define TMEINT	0x0058
#define TMFINT	0x005A
#define TMAINT	0x005C
#define TMBINT	0x005E
#define PWCINT	0x0060
#define PWDINT	0x0062
#define PWEINT	0x0064
#define PWFINT	0x0066
#define T128HINT	0x006A
#define T32HINT	0x006E
#define T16HINT	0x0070
#define T2HINT	0x0076
/*---------------------------------------------------
	END OF CODE ADDRESS SYMBOLS
---------------------------------------------------*/

/*---------------------------------------------------
	DATA ADDRESS SYMBOLS
---------------------------------------------------*/
#define DSR (*(volatile unsigned char __near *)0xF000)
#define _B_DSR (*(volatile _BYTE_FIELD __near *)0xF000)

#define RSTAT (*(volatile unsigned char __near *)0xF001)
#define _B_RSTAT (*(volatile _BYTE_FIELD __near *)0xF001)

#define FCON (*(volatile unsigned int __near *)0xF002)

#define FCON0 (*(volatile unsigned char __near *)0xF002)
#define _B_FCON0 (*(volatile _BYTE_FIELD __near *)0xF002)

#define FCON1 (*(volatile unsigned char __near *)0xF003)
#define _B_FCON1 (*(volatile _BYTE_FIELD __near *)0xF003)

#define STPACP (*(volatile unsigned char __near *)0xF008)

#define SBYCON (*(volatile unsigned char __near *)0xF009)
#define _B_SBYCON (*(volatile _BYTE_FIELD __near *)0xF009)

#define LTBR (*(volatile unsigned char __near *)0xF00A)
#define _B_LTBR (*(volatile _BYTE_FIELD __near *)0xF00A)

#define HTBDR (*(volatile unsigned char __near *)0xF00B)
#define _B_HTBDR (*(volatile _BYTE_FIELD __near *)0xF00B)

#define WDTCON (*(volatile unsigned char __near *)0xF00E)
#define _B_WDTCON (*(volatile _BYTE_FIELD __near *)0xF00E)

#define WDTMOD (*(volatile unsigned char __near *)0xF00F)
#define _B_WDTMOD (*(volatile _BYTE_FIELD __near *)0xF00F)

#define IE0 (*(volatile unsigned char __near *)0xF010)
#define _B_IE0 (*(volatile _BYTE_FIELD __near *)0xF010)

#define IE1 (*(volatile unsigned char __near *)0xF011)
#define _B_IE1 (*(volatile _BYTE_FIELD __near *)0xF011)

#define IE2 (*(volatile unsigned char __near *)0xF012)
#define _B_IE2 (*(volatile _BYTE_FIELD __near *)0xF012)

#define IE3 (*(volatile unsigned char __near *)0xF013)
#define _B_IE3 (*(volatile _BYTE_FIELD __near *)0xF013)

#define IE4 (*(volatile unsigned char __near *)0xF014)
#define _B_IE4 (*(volatile _BYTE_FIELD __near *)0xF014)

#define IE5 (*(volatile unsigned char __near *)0xF015)
#define _B_IE5 (*(volatile _BYTE_FIELD __near *)0xF015)

#define IE6 (*(volatile unsigned char __near *)0xF016)
#define _B_IE6 (*(volatile _BYTE_FIELD __near *)0xF016)

#define IE7 (*(volatile unsigned char __near *)0xF017)
#define _B_IE7 (*(volatile _BYTE_FIELD __near *)0xF017)

#define IRQ0 (*(volatile unsigned char __near *)0xF018)
#define _B_IRQ0 (*(volatile _BYTE_FIELD __near *)0xF018)

#define IRQ1 (*(volatile unsigned char __near *)0xF019)
#define _B_IRQ1 (*(volatile _BYTE_FIELD __near *)0xF019)

#define IRQ2 (*(volatile unsigned char __near *)0xF01A)
#define _B_IRQ2 (*(volatile _BYTE_FIELD __near *)0xF01A)

#define IRQ3 (*(volatile unsigned char __near *)0xF01B)
#define _B_IRQ3 (*(volatile _BYTE_FIELD __near *)0xF01B)

#define IRQ4 (*(volatile unsigned char __near *)0xF01C)
#define _B_IRQ4 (*(volatile _BYTE_FIELD __near *)0xF01C)

#define IRQ5 (*(volatile unsigned char __near *)0xF01D)
#define _B_IRQ5 (*(volatile _BYTE_FIELD __near *)0xF01D)

#define IRQ6 (*(volatile unsigned char __near *)0xF01E)
#define _B_IRQ6 (*(volatile _BYTE_FIELD __near *)0xF01E)

#define IRQ7 (*(volatile unsigned char __near *)0xF01F)
#define _B_IRQ7 (*(volatile _BYTE_FIELD __near *)0xF01F)

#define PABICON0 (*(volatile unsigned char __near *)0xF024)
#define _B_PABICON0 (*(volatile _BYTE_FIELD __near *)0xF024)

#define PABICON1 (*(volatile unsigned char __near *)0xF025)
#define _B_PABICON1 (*(volatile _BYTE_FIELD __near *)0xF025)

#define PABICON2 (*(volatile unsigned char __near *)0xF026)
#define _B_PABICON2 (*(volatile _BYTE_FIELD __near *)0xF026)

#define BLKCON2 (*(volatile unsigned char __near *)0xF02A)
#define _B_BLKCON2 (*(volatile _BYTE_FIELD __near *)0xF02A)

#define BLKCON4 (*(volatile unsigned char __near *)0xF02C)
#define _B_BLKCON4 (*(volatile _BYTE_FIELD __near *)0xF02C)

#define BLKCON6 (*(volatile unsigned char __near *)0xF02E)
#define _B_BLKCON6 (*(volatile _BYTE_FIELD __near *)0xF02E)

#define BLKCON7 (*(volatile unsigned char __near *)0xF02F)
#define _B_BLKCON7 (*(volatile _BYTE_FIELD __near *)0xF02F)

#define VLSCON (*(volatile unsigned int __near *)0xF0D8)

#define VLSCON0 (*(volatile unsigned char __near *)0xF0D8)
#define _B_VLSCON0 (*(volatile _BYTE_FIELD __near *)0xF0D8)

#define VLSCON1 (*(volatile unsigned char __near *)0xF0D9)
#define _B_VLSCON1 (*(volatile _BYTE_FIELD __near *)0xF0D9)

#define VLSMOD (*(volatile unsigned char __near *)0xF0DA)
#define _B_VLSMOD (*(volatile _BYTE_FIELD __near *)0xF0DA)

#define FLASHA (*(volatile unsigned int __near *)0xF0E0)

#define FLASHAL (*(volatile unsigned char __near *)0xF0E0)
#define _B_FLASHAL (*(volatile _BYTE_FIELD __near *)0xF0E0)

#define FLASHAH (*(volatile unsigned char __near *)0xF0E1)
#define _B_FLASHAH (*(volatile _BYTE_FIELD __near *)0xF0E1)

#define FLASHD (*(volatile unsigned int __near *)0xF0E2)

#define FLASHDL (*(volatile unsigned char __near *)0xF0E2)
#define _B_FLASHDL (*(volatile _BYTE_FIELD __near *)0xF0E2)

#define FLASHDH (*(volatile unsigned char __near *)0xF0E3)
#define _B_FLASHDH (*(volatile _BYTE_FIELD __near *)0xF0E3)

#define FLASHCON (*(volatile unsigned char __near *)0xF0E4)
#define _B_FLASHCON (*(volatile _BYTE_FIELD __near *)0xF0E4)

#define FLASHACP (*(volatile unsigned char __near *)0xF0E5)

#define FLASHSEG (*(volatile unsigned char __near *)0xF0E6)
#define _B_FLASHSEG (*(volatile _BYTE_FIELD __near *)0xF0E6)

#define FLASHSLF (*(volatile unsigned char __near *)0xF0E7)
#define _B_FLASHSLF (*(volatile _BYTE_FIELD __near *)0xF0E7)

#define FLASHPRT (*(volatile unsigned char __near *)0xF0E8)
#define _B_FLASHPRT (*(volatile _BYTE_FIELD __near *)0xF0E8)

#define FLASHEAS (*(volatile unsigned char __near *)0xF0EE)
#define _B_FLASHEAS (*(volatile _BYTE_FIELD __near *)0xF0EE)

#define FLASHEST (*(volatile unsigned char __near *)0xF0EF)
#define _B_FLASHEST (*(volatile _BYTE_FIELD __near *)0xF0EF)

#define PAD (*(volatile unsigned char __near *)0xF250)
#define _B_PAD (*(volatile _BYTE_FIELD __near *)0xF250)

#define PADIR (*(volatile unsigned char __near *)0xF251)
#define _B_PADIR (*(volatile _BYTE_FIELD __near *)0xF251)

#define PACON (*(volatile unsigned int __near *)0xF252)

#define PACON0 (*(volatile unsigned char __near *)0xF252)
#define _B_PACON0 (*(volatile _BYTE_FIELD __near *)0xF252)

#define PACON1 (*(volatile unsigned char __near *)0xF253)
#define _B_PACON1 (*(volatile _BYTE_FIELD __near *)0xF253)

#define PAMOD (*(volatile unsigned int __near *)0xF254)

#define PAMOD0 (*(volatile unsigned char __near *)0xF254)
#define _B_PAMOD0 (*(volatile _BYTE_FIELD __near *)0xF254)

#define PAMOD1 (*(volatile unsigned char __near *)0xF255)
#define _B_PAMOD1 (*(volatile _BYTE_FIELD __near *)0xF255)

#define PBD (*(volatile unsigned char __near *)0xF258)
#define _B_PBD (*(volatile _BYTE_FIELD __near *)0xF258)

#define PBDIR (*(volatile unsigned char __near *)0xF259)
#define _B_PBDIR (*(volatile _BYTE_FIELD __near *)0xF259)

#define PBCON (*(volatile unsigned int __near *)0xF25A)

#define PBCON0 (*(volatile unsigned char __near *)0xF25A)
#define _B_PBCON0 (*(volatile _BYTE_FIELD __near *)0xF25A)

#define PBCON1 (*(volatile unsigned char __near *)0xF25B)
#define _B_PBCON1 (*(volatile _BYTE_FIELD __near *)0xF25B)

#define PBMOD (*(volatile unsigned int __near *)0xF25C)

#define PBMOD0 (*(volatile unsigned char __near *)0xF25C)
#define _B_PBMOD0 (*(volatile _BYTE_FIELD __near *)0xF25C)

#define PBMOD1 (*(volatile unsigned char __near *)0xF25D)
#define _B_PBMOD1 (*(volatile _BYTE_FIELD __near *)0xF25D)

#define PCD (*(volatile unsigned char __near *)0xF260)
#define _B_PCD (*(volatile _BYTE_FIELD __near *)0xF260)

#define PCDIR (*(volatile unsigned char __near *)0xF261)
#define _B_PCDIR (*(volatile _BYTE_FIELD __near *)0xF261)

#define PCCON (*(volatile unsigned int __near *)0xF262)

#define PCCON0 (*(volatile unsigned char __near *)0xF262)
#define _B_PCCON0 (*(volatile _BYTE_FIELD __near *)0xF262)

#define PCCON1 (*(volatile unsigned char __near *)0xF263)
#define _B_PCCON1 (*(volatile _BYTE_FIELD __near *)0xF263)

#define PCMOD (*(volatile unsigned int __near *)0xF264)

#define PCMOD0 (*(volatile unsigned char __near *)0xF264)
#define _B_PCMOD0 (*(volatile _BYTE_FIELD __near *)0xF264)

#define PCMOD1 (*(volatile unsigned char __near *)0xF265)
#define _B_PCMOD1 (*(volatile _BYTE_FIELD __near *)0xF265)

#define SIO0BUF (*(volatile unsigned int __near *)0xF280)

#define SIO0BUFL (*(volatile unsigned char __near *)0xF280)
#define _B_SIO0BUFL (*(volatile _BYTE_FIELD __near *)0xF280)

#define SIO0BUFH (*(volatile unsigned char __near *)0xF281)
#define _B_SIO0BUFH (*(volatile _BYTE_FIELD __near *)0xF281)

#define SIO0CON (*(volatile unsigned char __near *)0xF282)
#define _B_SIO0CON (*(volatile _BYTE_FIELD __near *)0xF282)

#define SIO0MOD (*(volatile unsigned int __near *)0xF284)

#define SIO0MOD0 (*(volatile unsigned char __near *)0xF284)
#define _B_SIO0MOD0 (*(volatile _BYTE_FIELD __near *)0xF284)

#define SIO0MOD1 (*(volatile unsigned char __near *)0xF285)
#define _B_SIO0MOD1 (*(volatile _BYTE_FIELD __near *)0xF285)

#define UA0BUF (*(volatile unsigned char __near *)0xF290)
#define _B_UA0BUF (*(volatile _BYTE_FIELD __near *)0xF290)

#define UA0CON (*(volatile unsigned char __near *)0xF291)
#define _B_UA0CON (*(volatile _BYTE_FIELD __near *)0xF291)

#define UA0MOD (*(volatile unsigned int __near *)0xF292)

#define UA0MOD0 (*(volatile unsigned char __near *)0xF292)
#define _B_UA0MOD0 (*(volatile _BYTE_FIELD __near *)0xF292)

#define UA0MOD1 (*(volatile unsigned char __near *)0xF293)
#define _B_UA0MOD1 (*(volatile _BYTE_FIELD __near *)0xF293)

#define UA0BRT (*(volatile unsigned int __near *)0xF294)

#define UA0BRTL (*(volatile unsigned char __near *)0xF294)
#define _B_UA0BRTL (*(volatile _BYTE_FIELD __near *)0xF294)

#define UA0BRTH (*(volatile unsigned char __near *)0xF295)
#define _B_UA0BRTH (*(volatile _BYTE_FIELD __near *)0xF295)

#define UA0STAT (*(volatile unsigned char __near *)0xF296)
#define _B_UA0STAT (*(volatile _BYTE_FIELD __near *)0xF296)

#define UA1BUF (*(volatile unsigned char __near *)0xF298)
#define _B_UA1BUF (*(volatile _BYTE_FIELD __near *)0xF298)

#define UA1CON (*(volatile unsigned char __near *)0xF299)
#define _B_UA1CON (*(volatile _BYTE_FIELD __near *)0xF299)

#define UA1MOD (*(volatile unsigned int __near *)0xF29A)

#define UA1MOD0 (*(volatile unsigned char __near *)0xF29A)
#define _B_UA1MOD0 (*(volatile _BYTE_FIELD __near *)0xF29A)

#define UA1MOD1 (*(volatile unsigned char __near *)0xF29B)
#define _B_UA1MOD1 (*(volatile _BYTE_FIELD __near *)0xF29B)

#define UA1BRT (*(volatile unsigned int __near *)0xF29C)

#define UA1BRTL (*(volatile unsigned char __near *)0xF29C)
#define _B_UA1BRTL (*(volatile _BYTE_FIELD __near *)0xF29C)

#define UA1BRTH (*(volatile unsigned char __near *)0xF29D)
#define _B_UA1BRTH (*(volatile _BYTE_FIELD __near *)0xF29D)

#define UA1STAT (*(volatile unsigned char __near *)0xF29E)
#define _B_UA1STAT (*(volatile _BYTE_FIELD __near *)0xF29E)

#define I2C0RD (*(volatile unsigned char __near *)0xF2A0)
#define _B_I2C0RD (*(volatile _BYTE_FIELD __near *)0xF2A0)

#define I2C0SA (*(volatile unsigned char __near *)0xF2A1)
#define _B_I2C0SA (*(volatile _BYTE_FIELD __near *)0xF2A1)

#define I2C0TD (*(volatile unsigned char __near *)0xF2A2)
#define _B_I2C0TD (*(volatile _BYTE_FIELD __near *)0xF2A2)

#define I2C0CON (*(volatile unsigned char __near *)0xF2A3)
#define _B_I2C0CON (*(volatile _BYTE_FIELD __near *)0xF2A3)

#define I2C0MOD (*(volatile unsigned char __near *)0xF2A4)
#define _B_I2C0MOD (*(volatile _BYTE_FIELD __near *)0xF2A4)

#define I2C0STAT (*(volatile unsigned char __near *)0xF2A5)
#define _B_I2C0STAT (*(volatile _BYTE_FIELD __near *)0xF2A5)

#define I2C1RD (*(volatile unsigned char __near *)0xF2A8)
#define _B_I2C1RD (*(volatile _BYTE_FIELD __near *)0xF2A8)

#define I2C1SA (*(volatile unsigned char __near *)0xF2A9)
#define _B_I2C1SA (*(volatile _BYTE_FIELD __near *)0xF2A9)

#define I2C1TD (*(volatile unsigned char __near *)0xF2AA)
#define _B_I2C1TD (*(volatile _BYTE_FIELD __near *)0xF2AA)

#define I2C1CON (*(volatile unsigned char __near *)0xF2AB)
#define _B_I2C1CON (*(volatile _BYTE_FIELD __near *)0xF2AB)

#define I2C1MOD (*(volatile unsigned char __near *)0xF2AC)
#define _B_I2C1MOD (*(volatile _BYTE_FIELD __near *)0xF2AC)

#define I2C1STAT (*(volatile unsigned char __near *)0xF2AD)
#define _B_I2C1STAT (*(volatile _BYTE_FIELD __near *)0xF2AD)

#define SADR0 (*(volatile unsigned int __near *)0xF2D0)

#define SADR0L (*(volatile unsigned char __near *)0xF2D0)
#define _B_SADR0L (*(volatile _BYTE_FIELD __near *)0xF2D0)

#define SADR0H (*(volatile unsigned char __near *)0xF2D1)
#define _B_SADR0H (*(volatile _BYTE_FIELD __near *)0xF2D1)

#define SADR1 (*(volatile unsigned int __near *)0xF2D2)

#define SADR1L (*(volatile unsigned char __near *)0xF2D2)
#define _B_SADR1L (*(volatile _BYTE_FIELD __near *)0xF2D2)

#define SADR1H (*(volatile unsigned char __near *)0xF2D3)
#define _B_SADR1H (*(volatile _BYTE_FIELD __near *)0xF2D3)

#define SADR2 (*(volatile unsigned int __near *)0xF2D4)

#define SADR2L (*(volatile unsigned char __near *)0xF2D4)
#define _B_SADR2L (*(volatile _BYTE_FIELD __near *)0xF2D4)

#define SADR2H (*(volatile unsigned char __near *)0xF2D5)
#define _B_SADR2H (*(volatile _BYTE_FIELD __near *)0xF2D5)

#define SADR3 (*(volatile unsigned int __near *)0xF2D6)

#define SADR3L (*(volatile unsigned char __near *)0xF2D6)
#define _B_SADR3L (*(volatile _BYTE_FIELD __near *)0xF2D6)

#define SADR3H (*(volatile unsigned char __near *)0xF2D7)
#define _B_SADR3H (*(volatile _BYTE_FIELD __near *)0xF2D7)

#define SADR4 (*(volatile unsigned int __near *)0xF2D8)

#define SADR4L (*(volatile unsigned char __near *)0xF2D8)
#define _B_SADR4L (*(volatile _BYTE_FIELD __near *)0xF2D8)

#define SADR4H (*(volatile unsigned char __near *)0xF2D9)
#define _B_SADR4H (*(volatile _BYTE_FIELD __near *)0xF2D9)

#define SADR5 (*(volatile unsigned int __near *)0xF2DA)

#define SADR5L (*(volatile unsigned char __near *)0xF2DA)
#define _B_SADR5L (*(volatile _BYTE_FIELD __near *)0xF2DA)

#define SADR5H (*(volatile unsigned char __near *)0xF2DB)
#define _B_SADR5H (*(volatile _BYTE_FIELD __near *)0xF2DB)

#define SADCON (*(volatile unsigned int __near *)0xF2F0)

#define SADCON0 (*(volatile unsigned char __near *)0xF2F0)
#define _B_SADCON0 (*(volatile _BYTE_FIELD __near *)0xF2F0)

#define SADCON1 (*(volatile unsigned char __near *)0xF2F1)
#define _B_SADCON1 (*(volatile _BYTE_FIELD __near *)0xF2F1)

#define SADMOD (*(volatile unsigned int __near *)0xF2F2)

#define SADMOD0 (*(volatile unsigned char __near *)0xF2F2)
#define _B_SADMOD0 (*(volatile _BYTE_FIELD __near *)0xF2F2)

#define TMEDC (*(volatile unsigned int __near *)0xF360)

#define TMED (*(volatile unsigned char __near *)0xF360)
#define _B_TMED (*(volatile _BYTE_FIELD __near *)0xF360)

#define TMEC (*(volatile unsigned char __near *)0xF361)
#define _B_TMEC (*(volatile _BYTE_FIELD __near *)0xF361)

#define TMECON (*(volatile unsigned int __near *)0xF362)

#define TMECON0 (*(volatile unsigned char __near *)0xF362)
#define _B_TMECON0 (*(volatile _BYTE_FIELD __near *)0xF362)

#define TMECON1 (*(volatile unsigned char __near *)0xF363)
#define _B_TMECON1 (*(volatile _BYTE_FIELD __near *)0xF363)

#define TMECON23 (*(volatile unsigned int __near *)0xF364)

#define TMECON2 (*(volatile unsigned char __near *)0xF364)
#define _B_TMECON2 (*(volatile _BYTE_FIELD __near *)0xF364)

#define TMECON3 (*(volatile unsigned char __near *)0xF365)
#define _B_TMECON3 (*(volatile _BYTE_FIELD __near *)0xF365)

#define TMFDC (*(volatile unsigned int __near *)0xF368)

#define TMFD (*(volatile unsigned char __near *)0xF368)
#define _B_TMFD (*(volatile _BYTE_FIELD __near *)0xF368)

#define TMFC (*(volatile unsigned char __near *)0xF369)
#define _B_TMFC (*(volatile _BYTE_FIELD __near *)0xF369)

#define TMFCON (*(volatile unsigned int __near *)0xF36A)

#define TMFCON0 (*(volatile unsigned char __near *)0xF36A)
#define _B_TMFCON0 (*(volatile _BYTE_FIELD __near *)0xF36A)

#define TMFCON1 (*(volatile unsigned char __near *)0xF36B)
#define _B_TMFCON1 (*(volatile _BYTE_FIELD __near *)0xF36B)

#define TMFCON23 (*(volatile unsigned int __near *)0xF36C)

#define TMFCON2 (*(volatile unsigned char __near *)0xF36C)
#define _B_TMFCON2 (*(volatile _BYTE_FIELD __near *)0xF36C)

#define TMFCON3 (*(volatile unsigned char __near *)0xF36D)
#define _B_TMFCON3 (*(volatile _BYTE_FIELD __near *)0xF36D)

#define TM8DC (*(volatile unsigned int __near *)0xF8E0)

#define TM8D (*(volatile unsigned char __near *)0xF8E0)
#define _B_TM8D (*(volatile _BYTE_FIELD __near *)0xF8E0)

#define TM8C (*(volatile unsigned char __near *)0xF8E1)
#define _B_TM8C (*(volatile _BYTE_FIELD __near *)0xF8E1)

#define TM8CON (*(volatile unsigned int __near *)0xF8E2)

#define TM8CON0 (*(volatile unsigned char __near *)0xF8E2)
#define _B_TM8CON0 (*(volatile _BYTE_FIELD __near *)0xF8E2)

#define TM8CON1 (*(volatile unsigned char __near *)0xF8E3)
#define _B_TM8CON1 (*(volatile _BYTE_FIELD __near *)0xF8E3)

#define TM9DC (*(volatile unsigned int __near *)0xF8E4)

#define TM9D (*(volatile unsigned char __near *)0xF8E4)
#define _B_TM9D (*(volatile _BYTE_FIELD __near *)0xF8E4)

#define TM9C (*(volatile unsigned char __near *)0xF8E5)
#define _B_TM9C (*(volatile _BYTE_FIELD __near *)0xF8E5)

#define TM9CON (*(volatile unsigned int __near *)0xF8E6)

#define TM9CON0 (*(volatile unsigned char __near *)0xF8E6)
#define _B_TM9CON0 (*(volatile _BYTE_FIELD __near *)0xF8E6)

#define TM9CON1 (*(volatile unsigned char __near *)0xF8E7)
#define _B_TM9CON1 (*(volatile _BYTE_FIELD __near *)0xF8E7)

#define TMADC (*(volatile unsigned int __near *)0xF8E8)

#define TMAD (*(volatile unsigned char __near *)0xF8E8)
#define _B_TMAD (*(volatile _BYTE_FIELD __near *)0xF8E8)

#define TMAC (*(volatile unsigned char __near *)0xF8E9)
#define _B_TMAC (*(volatile _BYTE_FIELD __near *)0xF8E9)

#define TMACON (*(volatile unsigned int __near *)0xF8EA)

#define TMACON0 (*(volatile unsigned char __near *)0xF8EA)
#define _B_TMACON0 (*(volatile _BYTE_FIELD __near *)0xF8EA)

#define TMACON1 (*(volatile unsigned char __near *)0xF8EB)
#define _B_TMACON1 (*(volatile _BYTE_FIELD __near *)0xF8EB)

#define TMBDC (*(volatile unsigned int __near *)0xF8EC)

#define TMBD (*(volatile unsigned char __near *)0xF8EC)
#define _B_TMBD (*(volatile _BYTE_FIELD __near *)0xF8EC)

#define TMBC (*(volatile unsigned char __near *)0xF8ED)
#define _B_TMBC (*(volatile _BYTE_FIELD __near *)0xF8ED)

#define TMBCON (*(volatile unsigned int __near *)0xF8EE)

#define TMBCON0 (*(volatile unsigned char __near *)0xF8EE)
#define _B_TMBCON0 (*(volatile _BYTE_FIELD __near *)0xF8EE)

#define TMBCON1 (*(volatile unsigned char __near *)0xF8EF)
#define _B_TMBCON1 (*(volatile _BYTE_FIELD __near *)0xF8EF)

#define PWCP (*(volatile unsigned int __near *)0xF910)

#define PWCPL (*(volatile unsigned char __near *)0xF910)
#define _B_PWCPL (*(volatile _BYTE_FIELD __near *)0xF910)

#define PWCPH (*(volatile unsigned char __near *)0xF911)
#define _B_PWCPH (*(volatile _BYTE_FIELD __near *)0xF911)

#define PWCD (*(volatile unsigned int __near *)0xF912)

#define PWCDL (*(volatile unsigned char __near *)0xF912)
#define _B_PWCDL (*(volatile _BYTE_FIELD __near *)0xF912)

#define PWCDH (*(volatile unsigned char __near *)0xF913)
#define _B_PWCDH (*(volatile _BYTE_FIELD __near *)0xF913)

#define PWCC (*(volatile unsigned int __near *)0xF914)

#define PWCCL (*(volatile unsigned char __near *)0xF914)
#define _B_PWCCL (*(volatile _BYTE_FIELD __near *)0xF914)

#define PWCCH (*(volatile unsigned char __near *)0xF915)
#define _B_PWCCH (*(volatile _BYTE_FIELD __near *)0xF915)

#define PWCCON (*(volatile unsigned int __near *)0xF916)

#define PWCCON0 (*(volatile unsigned char __near *)0xF916)
#define _B_PWCCON0 (*(volatile _BYTE_FIELD __near *)0xF916)

#define PWCCON1 (*(volatile unsigned char __near *)0xF917)
#define _B_PWCCON1 (*(volatile _BYTE_FIELD __near *)0xF917)

#define PWCCON23 (*(volatile unsigned int __near *)0xF918)

#define PWCCON2 (*(volatile unsigned char __near *)0xF918)
#define _B_PWCCON2 (*(volatile _BYTE_FIELD __near *)0xF918)

#define PWCCON3 (*(volatile unsigned char __near *)0xF919)
#define _B_PWCCON3 (*(volatile _BYTE_FIELD __near *)0xF919)

#define PWCWAIT (*(volatile unsigned char __near *)0xF91A)
#define _B_PWCWAIT (*(volatile _BYTE_FIELD __near *)0xF91A)

#define PWDP (*(volatile unsigned int __near *)0xF920)

#define PWDPL (*(volatile unsigned char __near *)0xF920)
#define _B_PWDPL (*(volatile _BYTE_FIELD __near *)0xF920)

#define PWDPH (*(volatile unsigned char __near *)0xF921)
#define _B_PWDPH (*(volatile _BYTE_FIELD __near *)0xF921)

#define PWDD (*(volatile unsigned int __near *)0xF922)

#define PWDDL (*(volatile unsigned char __near *)0xF922)
#define _B_PWDDL (*(volatile _BYTE_FIELD __near *)0xF922)

#define PWDDH (*(volatile unsigned char __near *)0xF923)
#define _B_PWDDH (*(volatile _BYTE_FIELD __near *)0xF923)

#define PWDC (*(volatile unsigned int __near *)0xF924)

#define PWDCL (*(volatile unsigned char __near *)0xF924)
#define _B_PWDCL (*(volatile _BYTE_FIELD __near *)0xF924)

#define PWDCH (*(volatile unsigned char __near *)0xF925)
#define _B_PWDCH (*(volatile _BYTE_FIELD __near *)0xF925)

#define PWDCON (*(volatile unsigned int __near *)0xF926)

#define PWDCON0 (*(volatile unsigned char __near *)0xF926)
#define _B_PWDCON0 (*(volatile _BYTE_FIELD __near *)0xF926)

#define PWDCON1 (*(volatile unsigned char __near *)0xF927)
#define _B_PWDCON1 (*(volatile _BYTE_FIELD __near *)0xF927)

#define PWDCON23 (*(volatile unsigned int __near *)0xF928)

#define PWDCON2 (*(volatile unsigned char __near *)0xF928)
#define _B_PWDCON2 (*(volatile _BYTE_FIELD __near *)0xF928)

#define PWDCON3 (*(volatile unsigned char __near *)0xF929)
#define _B_PWDCON3 (*(volatile _BYTE_FIELD __near *)0xF929)

#define PWDWAIT (*(volatile unsigned char __near *)0xF92A)
#define _B_PWDWAIT (*(volatile _BYTE_FIELD __near *)0xF92A)

#define PWEP (*(volatile unsigned int __near *)0xF930)

#define PWEPL (*(volatile unsigned char __near *)0xF930)
#define _B_PWEPL (*(volatile _BYTE_FIELD __near *)0xF930)

#define PWEPH (*(volatile unsigned char __near *)0xF931)
#define _B_PWEPH (*(volatile _BYTE_FIELD __near *)0xF931)

#define PWED (*(volatile unsigned int __near *)0xF932)

#define PWEDL (*(volatile unsigned char __near *)0xF932)
#define _B_PWEDL (*(volatile _BYTE_FIELD __near *)0xF932)

#define PWEDH (*(volatile unsigned char __near *)0xF933)
#define _B_PWEDH (*(volatile _BYTE_FIELD __near *)0xF933)

#define PWEC (*(volatile unsigned int __near *)0xF934)

#define PWECL (*(volatile unsigned char __near *)0xF934)
#define _B_PWECL (*(volatile _BYTE_FIELD __near *)0xF934)

#define PWECH (*(volatile unsigned char __near *)0xF935)
#define _B_PWECH (*(volatile _BYTE_FIELD __near *)0xF935)

#define PWECON (*(volatile unsigned int __near *)0xF936)

#define PWECON0 (*(volatile unsigned char __near *)0xF936)
#define _B_PWECON0 (*(volatile _BYTE_FIELD __near *)0xF936)

#define PWECON1 (*(volatile unsigned char __near *)0xF937)
#define _B_PWECON1 (*(volatile _BYTE_FIELD __near *)0xF937)

#define PWECON23 (*(volatile unsigned int __near *)0xF938)

#define PWECON2 (*(volatile unsigned char __near *)0xF938)
#define _B_PWECON2 (*(volatile _BYTE_FIELD __near *)0xF938)

#define PWECON3 (*(volatile unsigned char __near *)0xF939)
#define _B_PWECON3 (*(volatile _BYTE_FIELD __near *)0xF939)

#define PWEWAIT (*(volatile unsigned char __near *)0xF93A)
#define _B_PWEWAIT (*(volatile _BYTE_FIELD __near *)0xF93A)

#define CMP0CON0 (*(volatile unsigned char __near *)0xF950)
#define _B_CMP0CON0 (*(volatile _BYTE_FIELD __near *)0xF950)

#define CMP0CON1 (*(volatile unsigned char __near *)0xF951)
#define _B_CMP0CON1 (*(volatile _BYTE_FIELD __near *)0xF951)

#define CMP0CON2 (*(volatile unsigned char __near *)0xF952)
#define _B_CMP0CON2 (*(volatile _BYTE_FIELD __near *)0xF952)

#define CMP1CON0 (*(volatile unsigned char __near *)0xF954)
#define _B_CMP1CON0 (*(volatile _BYTE_FIELD __near *)0xF954)

#define CMP1CON1 (*(volatile unsigned char __near *)0xF955)
#define _B_CMP1CON1 (*(volatile _BYTE_FIELD __near *)0xF955)

#define CMP1CON2 (*(volatile unsigned char __near *)0xF956)
#define _B_CMP1CON2 (*(volatile _BYTE_FIELD __near *)0xF956)

#define PWFP (*(volatile unsigned int __near *)0xF960)

#define PWFPL (*(volatile unsigned char __near *)0xF960)
#define _B_PWFPL (*(volatile _BYTE_FIELD __near *)0xF960)

#define PWFPH (*(volatile unsigned char __near *)0xF961)
#define _B_PWFPH (*(volatile _BYTE_FIELD __near *)0xF961)

#define PWF0D (*(volatile unsigned int __near *)0xF962)

#define PWF0DL (*(volatile unsigned char __near *)0xF962)
#define _B_PWF0DL (*(volatile _BYTE_FIELD __near *)0xF962)

#define PWF0DH (*(volatile unsigned char __near *)0xF963)
#define _B_PWF0DH (*(volatile _BYTE_FIELD __near *)0xF963)

#define PWF1D (*(volatile unsigned int __near *)0xF964)

#define PWF1DL (*(volatile unsigned char __near *)0xF964)
#define _B_PWF1DL (*(volatile _BYTE_FIELD __near *)0xF964)

#define PWF1DH (*(volatile unsigned char __near *)0xF965)
#define _B_PWF1DH (*(volatile _BYTE_FIELD __near *)0xF965)

#define PWF2D (*(volatile unsigned int __near *)0xF966)

#define PWF2DL (*(volatile unsigned char __near *)0xF966)
#define _B_PWF2DL (*(volatile _BYTE_FIELD __near *)0xF966)

#define PWF2DH (*(volatile unsigned char __near *)0xF967)
#define _B_PWF2DH (*(volatile _BYTE_FIELD __near *)0xF967)

#define PWFC (*(volatile unsigned int __near *)0xF970)

#define PWFCL (*(volatile unsigned char __near *)0xF970)
#define _B_PWFCL (*(volatile _BYTE_FIELD __near *)0xF970)

#define PWFCH (*(volatile unsigned char __near *)0xF971)
#define _B_PWFCH (*(volatile _BYTE_FIELD __near *)0xF971)

#define PWFCON (*(volatile unsigned int __near *)0xF972)

#define PWFCON0 (*(volatile unsigned char __near *)0xF972)
#define _B_PWFCON0 (*(volatile _BYTE_FIELD __near *)0xF972)

#define PWFCON1 (*(volatile unsigned char __near *)0xF973)
#define _B_PWFCON1 (*(volatile _BYTE_FIELD __near *)0xF973)

#define PWFCON23 (*(volatile unsigned int __near *)0xF974)

#define PWFCON2 (*(volatile unsigned char __near *)0xF974)
#define _B_PWFCON2 (*(volatile _BYTE_FIELD __near *)0xF974)

#define PWFCON3 (*(volatile unsigned char __near *)0xF975)
#define _B_PWFCON3 (*(volatile _BYTE_FIELD __near *)0xF975)

#define PWFCON45 (*(volatile unsigned int __near *)0xF976)

#define PWFCON4 (*(volatile unsigned char __near *)0xF976)
#define _B_PWFCON4 (*(volatile _BYTE_FIELD __near *)0xF976)

#define PWFCON5 (*(volatile unsigned char __near *)0xF977)
#define _B_PWFCON5 (*(volatile _BYTE_FIELD __near *)0xF977)

#define PWFWAIT (*(volatile unsigned char __near *)0xF97F)
#define _B_PWFWAIT (*(volatile _BYTE_FIELD __near *)0xF97F)

/*---------------------------------------------------
	END OF DATA ADDRESS SYMBOLS
---------------------------------------------------*/

/*---------------------------------------------------
	BIT ADDRESS SYMBOLS
---------------------------------------------------*/

#define DSR0		(_B_DSR.b0)
#define DSR1		(_B_DSR.b1)
#define DSR2		(_B_DSR.b2)
#define DSR3		(_B_DSR.b3)

#define POR		(_B_RSTAT.b0)
#define WDTR		(_B_RSTAT.b2)
#define VLSR		(_B_RSTAT.b5)

#define SYSC0		(_B_FCON0.b0)
#define SYSC1		(_B_FCON0.b1)
#define OSCM0		(_B_FCON0.b2)
#define OSCM1		(_B_FCON0.b3)
#define OUTC0		(_B_FCON0.b4)
#define OUTC1		(_B_FCON0.b5)

#define SYSCLK		(_B_FCON1.b0)
#define ENOSC		(_B_FCON1.b1)
#define LPLL		(_B_FCON1.b7)

#define HLT		(_B_SBYCON.b0)
#define STP		(_B_SBYCON.b1)

#define T128HZ		(_B_LTBR.b0)
#define T64HZ		(_B_LTBR.b1)
#define T32HZ		(_B_LTBR.b2)
#define T16HZ		(_B_LTBR.b3)
#define T8HZ		(_B_LTBR.b4)
#define T4HZ		(_B_LTBR.b5)
#define T2HZ		(_B_LTBR.b6)
#define T1HZ		(_B_LTBR.b7)

#define HTD0		(_B_HTBDR.b0)
#define HTD1		(_B_HTBDR.b1)
#define HTD2		(_B_HTBDR.b2)
#define HTD3		(_B_HTBDR.b3)

#define WDP		(_B_WDTCON.b0)

#define WDT0		(_B_WDTMOD.b0)
#define WDT1		(_B_WDTMOD.b1)
#define WDT2		(_B_WDTMOD.b2)

#define EVLS		(_B_IE0.b6)

#define EPA0		(_B_IE1.b0)
#define EPA1		(_B_IE1.b1)
#define EPA2		(_B_IE1.b2)
#define EPB0		(_B_IE1.b4)
#define EPB1		(_B_IE1.b5)
#define EPB2		(_B_IE1.b6)
#define EPB3		(_B_IE1.b7)

#define ESIO0		(_B_IE2.b0)
#define ESAD		(_B_IE2.b2)
#define EI2CS		(_B_IE2.b6)
#define EI2CM		(_B_IE2.b7)

#define ETM8		(_B_IE3.b2)
#define ETM9		(_B_IE3.b3)

#define EUA0		(_B_IE4.b0)
#define EUA1		(_B_IE4.b1)
#define ECMP0		(_B_IE4.b6)
#define ECMP1		(_B_IE4.b7)

#define ETME		(_B_IE5.b4)
#define ETMF		(_B_IE5.b5)
#define ETMA		(_B_IE5.b6)
#define ETMB		(_B_IE5.b7)

#define EPWC		(_B_IE6.b0)
#define EPWD		(_B_IE6.b1)
#define EPWE		(_B_IE6.b2)
#define EPWF		(_B_IE6.b3)
#define E128H		(_B_IE6.b5)
#define E32H		(_B_IE6.b7)

#define E16H		(_B_IE7.b0)
#define E2H		(_B_IE7.b3)

#define QWDT		(_B_IRQ0.b0)
#define QVLS		(_B_IRQ0.b6)

#define QPA0		(_B_IRQ1.b0)
#define QPA1		(_B_IRQ1.b1)
#define QPA2		(_B_IRQ1.b2)
#define QPB0		(_B_IRQ1.b4)
#define QPB1		(_B_IRQ1.b5)
#define QPB2		(_B_IRQ1.b6)
#define QPB3		(_B_IRQ1.b7)

#define QSIO0		(_B_IRQ2.b0)
#define QSAD		(_B_IRQ2.b2)
#define QI2CS		(_B_IRQ2.b6)
#define QI2CM		(_B_IRQ2.b7)

#define QTM8		(_B_IRQ3.b2)
#define QTM9		(_B_IRQ3.b3)

#define QUA0		(_B_IRQ4.b0)
#define QUA1		(_B_IRQ4.b1)
#define QCMP0		(_B_IRQ4.b6)
#define QCMP1		(_B_IRQ4.b7)

#define QTME		(_B_IRQ5.b4)
#define QTMF		(_B_IRQ5.b5)
#define QTMA		(_B_IRQ5.b6)
#define QTMB		(_B_IRQ5.b7)

#define QPWC		(_B_IRQ6.b0)
#define QPWD		(_B_IRQ6.b1)
#define QPWE		(_B_IRQ6.b2)
#define QPWF		(_B_IRQ6.b3)
#define Q128H		(_B_IRQ6.b5)
#define Q32H		(_B_IRQ6.b7)

#define Q16H		(_B_IRQ7.b0)
#define Q2H		(_B_IRQ7.b3)

#define PA0E0		(_B_PABICON0.b0)
#define PA1E0		(_B_PABICON0.b1)
#define PA2E0		(_B_PABICON0.b2)
#define PB0E0		(_B_PABICON0.b4)
#define PB1E0		(_B_PABICON0.b5)
#define PB2E0		(_B_PABICON0.b6)
#define PB3E0		(_B_PABICON0.b7)

#define PA0E1		(_B_PABICON1.b0)
#define PA1E1		(_B_PABICON1.b1)
#define PA2E1		(_B_PABICON1.b2)
#define PB0E1		(_B_PABICON1.b4)
#define PB1E1		(_B_PABICON1.b5)
#define PB2E1		(_B_PABICON1.b6)
#define PB3E1		(_B_PABICON1.b7)

#define PA0SM		(_B_PABICON2.b0)
#define PA1SM		(_B_PABICON2.b1)
#define PA2SM		(_B_PABICON2.b2)
#define PB0SM		(_B_PABICON2.b4)
#define PB1SM		(_B_PABICON2.b5)
#define PB2SM		(_B_PABICON2.b6)
#define PB3SM		(_B_PABICON2.b7)

#define DSIO0		(_B_BLKCON2.b0)
#define DUA0		(_B_BLKCON2.b2)
#define DUA1		(_B_BLKCON2.b3)
#define DI2C1		(_B_BLKCON2.b6)
#define DI2C0		(_B_BLKCON2.b7)

#define DSAD		(_B_BLKCON4.b0)

#define DTM8		(_B_BLKCON6.b0)
#define DTM9		(_B_BLKCON6.b1)
#define DTMA		(_B_BLKCON6.b2)
#define DTMB		(_B_BLKCON6.b3)
#define DTME		(_B_BLKCON6.b6)
#define DTMF		(_B_BLKCON6.b7)

#define DPWC		(_B_BLKCON7.b0)
#define DPWD		(_B_BLKCON7.b1)
#define DPWE		(_B_BLKCON7.b2)
#define DPWF		(_B_BLKCON7.b3)

#define VLS1LV0		(_B_VLSCON0.b0)
#define VLS1LV1		(_B_VLSCON0.b1)
#define DVLSSP		(_B_VLSCON0.b5)

#define ENVLS0		(_B_VLSCON1.b0)
#define VLS0ST		(_B_VLSCON1.b1)
#define ENVLS1		(_B_VLSCON1.b4)
#define VLS1ST		(_B_VLSCON1.b5)

#define VLS0SEL0		(_B_VLSMOD.b0)
#define VLS1SEL1		(_B_VLSMOD.b5)

#define FA0		(_B_FLASHAL.b0)
#define FA1		(_B_FLASHAL.b1)
#define FA2		(_B_FLASHAL.b2)
#define FA3		(_B_FLASHAL.b3)
#define FA4		(_B_FLASHAL.b4)
#define FA5		(_B_FLASHAL.b5)
#define FA6		(_B_FLASHAL.b6)
#define FA7		(_B_FLASHAL.b7)

#define FA8		(_B_FLASHAH.b0)
#define FA9		(_B_FLASHAH.b1)
#define FA10		(_B_FLASHAH.b2)
#define FA11		(_B_FLASHAH.b3)
#define FA12		(_B_FLASHAH.b4)
#define FA13		(_B_FLASHAH.b5)
#define FA14		(_B_FLASHAH.b6)
#define FA15		(_B_FLASHAH.b7)

#define FD0		(_B_FLASHDL.b0)
#define FD1		(_B_FLASHDL.b1)
#define FD2		(_B_FLASHDL.b2)
#define FD3		(_B_FLASHDL.b3)
#define FD4		(_B_FLASHDL.b4)
#define FD5		(_B_FLASHDL.b5)
#define FD6		(_B_FLASHDL.b6)
#define FD7		(_B_FLASHDL.b7)

#define FD8		(_B_FLASHDH.b0)
#define FD9		(_B_FLASHDH.b1)
#define FD10		(_B_FLASHDH.b2)
#define FD11		(_B_FLASHDH.b3)
#define FD12		(_B_FLASHDH.b4)
#define FD13		(_B_FLASHDH.b5)
#define FD14		(_B_FLASHDH.b6)
#define FD15		(_B_FLASHDH.b7)

#define FERS		(_B_FLASHCON.b0)
#define FSERS		(_B_FLASHCON.b1)

#define FSEG0		(_B_FLASHSEG.b0)
#define FSEG1		(_B_FLASHSEG.b1)

#define FSELF		(_B_FLASHSLF.b0)

#define FPRT0		(_B_FLASHPRT.b0)
#define FPRT1		(_B_FLASHPRT.b1)
#define FPRT2		(_B_FLASHPRT.b2)
#define FPRT3		(_B_FLASHPRT.b3)

#define FEPA0S		(_B_FLASHEAS.b0)
#define FEPA1S		(_B_FLASHEAS.b1)
#define FEPA2S		(_B_FLASHEAS.b2)
#define FEPB0S		(_B_FLASHEAS.b4)
#define FEPB1S		(_B_FLASHEAS.b5)
#define FEPB2S		(_B_FLASHEAS.b6)
#define FEPB4S		(_B_FLASHEAS.b7)

#define ESTAT		(_B_FLASHEST.b7)

#define PA0D		(_B_PAD.b0)
#define PA1D		(_B_PAD.b1)
#define PA2D		(_B_PAD.b2)

#define PA0DIR		(_B_PADIR.b0)
#define PA1DIR		(_B_PADIR.b1)
#define PA2DIR		(_B_PADIR.b2)

#define PA0C0		(_B_PACON0.b0)
#define PA1C0		(_B_PACON0.b1)
#define PA2C0		(_B_PACON0.b2)

#define PA0C1		(_B_PACON1.b0)
#define PA1C1		(_B_PACON1.b1)
#define PA2C1		(_B_PACON1.b2)

#define PA0MD0		(_B_PAMOD0.b0)
#define PA1MD0		(_B_PAMOD0.b1)
#define PA2MD0		(_B_PAMOD0.b2)

#define PA0MD1		(_B_PAMOD1.b0)
#define PA1MD1		(_B_PAMOD1.b1)
#define PA2MD1		(_B_PAMOD1.b2)

#define PB0D		(_B_PBD.b0)
#define PB1D		(_B_PBD.b1)
#define PB2D		(_B_PBD.b2)
#define PB3D		(_B_PBD.b3)
#define PB4D		(_B_PBD.b4)
#define PB5D		(_B_PBD.b5)
#define PB6D		(_B_PBD.b6)
#define PB7D		(_B_PBD.b7)

#define PB0DIR		(_B_PBDIR.b0)
#define PB1DIR		(_B_PBDIR.b1)
#define PB2DIR		(_B_PBDIR.b2)
#define PB3DIR		(_B_PBDIR.b3)
#define PB4DIR		(_B_PBDIR.b4)
#define PB5DIR		(_B_PBDIR.b5)
#define PB6DIR		(_B_PBDIR.b6)
#define PB7DIR		(_B_PBDIR.b7)

#define PB0C0		(_B_PBCON0.b0)
#define PB1C0		(_B_PBCON0.b1)
#define PB2C0		(_B_PBCON0.b2)
#define PB3C0		(_B_PBCON0.b3)
#define PB4C0		(_B_PBCON0.b4)
#define PB5C0		(_B_PBCON0.b5)
#define PB6C0		(_B_PBCON0.b6)
#define PB7C0		(_B_PBCON0.b7)

#define PB0C1		(_B_PBCON1.b0)
#define PB1C1		(_B_PBCON1.b1)
#define PB2C1		(_B_PBCON1.b2)
#define PB3C1		(_B_PBCON1.b3)
#define PB4C1		(_B_PBCON1.b4)
#define PB5C1		(_B_PBCON1.b5)
#define PB6C1		(_B_PBCON1.b6)
#define PB7C1		(_B_PBCON1.b7)

#define PB0MD0		(_B_PBMOD0.b0)
#define PB1MD0		(_B_PBMOD0.b1)
#define PB2MD0		(_B_PBMOD0.b2)
#define PB3MD0		(_B_PBMOD0.b3)
#define PB4MD0		(_B_PBMOD0.b4)
#define PB5MD0		(_B_PBMOD0.b5)
#define PB6MD0		(_B_PBMOD0.b6)
#define PB7MD0		(_B_PBMOD0.b7)

#define PB0MD1		(_B_PBMOD1.b0)
#define PB1MD1		(_B_PBMOD1.b1)
#define PB2MD1		(_B_PBMOD1.b2)
#define PB3MD1		(_B_PBMOD1.b3)
#define PB4MD1		(_B_PBMOD1.b4)
#define PB5MD1		(_B_PBMOD1.b5)
#define PB6MD1		(_B_PBMOD1.b6)
#define PB7MD1		(_B_PBMOD1.b7)

#define PC0D		(_B_PCD.b0)
#define PC1D		(_B_PCD.b1)
#define PC2D		(_B_PCD.b2)
#define PC3D		(_B_PCD.b3)

#define PC0DIR		(_B_PCDIR.b0)
#define PC1DIR		(_B_PCDIR.b1)
#define PC2DIR		(_B_PCDIR.b2)
#define PC3DIR		(_B_PCDIR.b3)

#define PC0C0		(_B_PCCON0.b0)
#define PC1C0		(_B_PCCON0.b1)
#define PC2C0		(_B_PCCON0.b2)
#define PC3C0		(_B_PCCON0.b3)

#define PC0C1		(_B_PCCON1.b0)
#define PC1C1		(_B_PCCON1.b1)
#define PC2C1		(_B_PCCON1.b2)
#define PC3C1		(_B_PCCON1.b3)

#define PC0MD0		(_B_PCMOD0.b0)
#define PC1MD0		(_B_PCMOD0.b1)
#define PC2MD0		(_B_PCMOD0.b2)
#define PC3MD0		(_B_PCMOD0.b3)

#define PC0MD1		(_B_PCMOD1.b0)
#define PC1MD1		(_B_PCMOD1.b1)
#define PC2MD1		(_B_PCMOD1.b2)
#define PC3MD1		(_B_PCMOD1.b3)

#define S0B0		(_B_SIO0BUFL.b0)
#define S0B1		(_B_SIO0BUFL.b1)
#define S0B2		(_B_SIO0BUFL.b2)
#define S0B3		(_B_SIO0BUFL.b3)
#define S0B4		(_B_SIO0BUFL.b4)
#define S0B5		(_B_SIO0BUFL.b5)
#define S0B6		(_B_SIO0BUFL.b6)
#define S0B7		(_B_SIO0BUFL.b7)

#define S0B8		(_B_SIO0BUFH.b0)
#define S0B9		(_B_SIO0BUFH.b1)
#define S0B10		(_B_SIO0BUFH.b2)
#define S0B11		(_B_SIO0BUFH.b3)
#define S0B12		(_B_SIO0BUFH.b4)
#define S0B13		(_B_SIO0BUFH.b5)
#define S0B14		(_B_SIO0BUFH.b6)
#define S0B15		(_B_SIO0BUFH.b7)

#define S0EN		(_B_SIO0CON.b0)

#define S0DIR		(_B_SIO0MOD0.b0)
#define S0MD0		(_B_SIO0MOD0.b1)
#define S0MD1		(_B_SIO0MOD0.b2)
#define S0LG		(_B_SIO0MOD0.b3)

#define S0CK0		(_B_SIO0MOD1.b0)
#define S0CK1		(_B_SIO0MOD1.b1)
#define S0CK2		(_B_SIO0MOD1.b2)
#define S0CK3		(_B_SIO0MOD1.b3)
#define S0CKT		(_B_SIO0MOD1.b4)

#define U0B0		(_B_UA0BUF.b0)
#define U0B1		(_B_UA0BUF.b1)
#define U0B2		(_B_UA0BUF.b2)
#define U0B3		(_B_UA0BUF.b3)
#define U0B4		(_B_UA0BUF.b4)
#define U0B5		(_B_UA0BUF.b5)
#define U0B6		(_B_UA0BUF.b6)
#define U0B7		(_B_UA0BUF.b7)

#define U0EN		(_B_UA0CON.b0)

#define U0IO		(_B_UA0MOD0.b0)
#define U0CK0		(_B_UA0MOD0.b1)
#define U0CK1		(_B_UA0MOD0.b2)
#define U0RSEL		(_B_UA0MOD0.b4)
#define U0RSS		(_B_UA0MOD0.b5)

#define U0LG0		(_B_UA0MOD1.b0)
#define U0LG1		(_B_UA0MOD1.b1)
#define U0PT0		(_B_UA0MOD1.b2)
#define U0PT1		(_B_UA0MOD1.b3)
#define U0STP		(_B_UA0MOD1.b4)
#define U0NEG		(_B_UA0MOD1.b5)
#define U0DIR		(_B_UA0MOD1.b6)

#define U0BR0		(_B_UA0BRTL.b0)
#define U0BR1		(_B_UA0BRTL.b1)
#define U0BR2		(_B_UA0BRTL.b2)
#define U0BR3		(_B_UA0BRTL.b3)
#define U0BR4		(_B_UA0BRTL.b4)
#define U0BR5		(_B_UA0BRTL.b5)
#define U0BR6		(_B_UA0BRTL.b6)
#define U0BR7		(_B_UA0BRTL.b7)

#define U0BR8		(_B_UA0BRTH.b0)
#define U0BR9		(_B_UA0BRTH.b1)
#define U0BR10		(_B_UA0BRTH.b2)
#define U0BR11		(_B_UA0BRTH.b3)

#define U0FER		(_B_UA0STAT.b0)
#define U0OER		(_B_UA0STAT.b1)
#define U0PER		(_B_UA0STAT.b2)
#define U0FUL		(_B_UA0STAT.b3)

#define U1B0		(_B_UA1BUF.b0)
#define U1B1		(_B_UA1BUF.b1)
#define U1B2		(_B_UA1BUF.b2)
#define U1B3		(_B_UA1BUF.b3)
#define U1B4		(_B_UA1BUF.b4)
#define U1B5		(_B_UA1BUF.b5)
#define U1B6		(_B_UA1BUF.b6)
#define U1B7		(_B_UA1BUF.b7)

#define U1EN		(_B_UA1CON.b0)

#define U1IO		(_B_UA1MOD0.b0)
#define U1CK0		(_B_UA1MOD0.b1)
#define U1CK1		(_B_UA1MOD0.b2)
#define U1RSEL		(_B_UA1MOD0.b4)
#define U1RSS		(_B_UA1MOD0.b5)

#define U1LG0		(_B_UA1MOD1.b0)
#define U1LG1		(_B_UA1MOD1.b1)
#define U1PT0		(_B_UA1MOD1.b2)
#define U1PT1		(_B_UA1MOD1.b3)
#define U1STP		(_B_UA1MOD1.b4)
#define U1NEG		(_B_UA1MOD1.b5)
#define U1DIR		(_B_UA1MOD1.b6)

#define U1BR0		(_B_UA1BRTL.b0)
#define U1BR1		(_B_UA1BRTL.b1)
#define U1BR2		(_B_UA1BRTL.b2)
#define U1BR3		(_B_UA1BRTL.b3)
#define U1BR4		(_B_UA1BRTL.b4)
#define U1BR5		(_B_UA1BRTL.b5)
#define U1BR6		(_B_UA1BRTL.b6)
#define U1BR7		(_B_UA1BRTL.b7)

#define U1BR8		(_B_UA1BRTH.b0)
#define U1BR9		(_B_UA1BRTH.b1)
#define U1BR10		(_B_UA1BRTH.b2)
#define U1BR11		(_B_UA1BRTH.b3)

#define U1FER		(_B_UA1STAT.b0)
#define U1OER		(_B_UA1STAT.b1)
#define U1PER		(_B_UA1STAT.b2)
#define U1FUL		(_B_UA1STAT.b3)

#define I20R0		(_B_I2C0RD.b0)
#define I20R1		(_B_I2C0RD.b1)
#define I20R2		(_B_I2C0RD.b2)
#define I20R3		(_B_I2C0RD.b3)
#define I20R4		(_B_I2C0RD.b4)
#define I20R5		(_B_I2C0RD.b5)
#define I20R6		(_B_I2C0RD.b6)
#define I20R7		(_B_I2C0RD.b7)

#define I20RW		(_B_I2C0SA.b0)
#define I20A0		(_B_I2C0SA.b1)
#define I20A1		(_B_I2C0SA.b2)
#define I20A2		(_B_I2C0SA.b3)
#define I20A3		(_B_I2C0SA.b4)
#define I20A4		(_B_I2C0SA.b5)
#define I20A5		(_B_I2C0SA.b6)
#define I20A6		(_B_I2C0SA.b7)

#define I20T0		(_B_I2C0TD.b0)
#define I20T1		(_B_I2C0TD.b1)
#define I20T2		(_B_I2C0TD.b2)
#define I20T3		(_B_I2C0TD.b3)
#define I20T4		(_B_I2C0TD.b4)
#define I20T5		(_B_I2C0TD.b5)
#define I20T6		(_B_I2C0TD.b6)
#define I20T7		(_B_I2C0TD.b7)

#define I20ST		(_B_I2C0CON.b0)
#define I20SP		(_B_I2C0CON.b1)
#define I20RS		(_B_I2C0CON.b2)
#define I20ACT		(_B_I2C0CON.b7)

#define I20EN		(_B_I2C0MOD.b0)
#define I20MD		(_B_I2C0MOD.b1)
#define I20DW0		(_B_I2C0MOD.b2)
#define I20DW1		(_B_I2C0MOD.b3)
#define I20SYN		(_B_I2C0MOD.b4)

#define I20BB		(_B_I2C0STAT.b0)
#define I20ACR		(_B_I2C0STAT.b1)
#define I20ER		(_B_I2C0STAT.b2)

#define I21R0		(_B_I2C1RD.b0)
#define I21R1		(_B_I2C1RD.b1)
#define I21R2		(_B_I2C1RD.b2)
#define I21R3		(_B_I2C1RD.b3)
#define I21R4		(_B_I2C1RD.b4)
#define I21R5		(_B_I2C1RD.b5)
#define I21R6		(_B_I2C1RD.b6)
#define I21R7		(_B_I2C1RD.b7)

#define I21A0		(_B_I2C1SA.b1)
#define I21A1		(_B_I2C1SA.b2)
#define I21A2		(_B_I2C1SA.b3)
#define I21A3		(_B_I2C1SA.b4)
#define I21A4		(_B_I2C1SA.b5)
#define I21A5		(_B_I2C1SA.b6)
#define I21A6		(_B_I2C1SA.b7)

#define I21T0		(_B_I2C1TD.b0)
#define I21T1		(_B_I2C1TD.b1)
#define I21T2		(_B_I2C1TD.b2)
#define I21T3		(_B_I2C1TD.b3)
#define I21T4		(_B_I2C1TD.b4)
#define I21T5		(_B_I2C1TD.b5)
#define I21T6		(_B_I2C1TD.b6)
#define I21T7		(_B_I2C1TD.b7)

#define I21WT		(_B_I2C1CON.b5)
#define I21ACT		(_B_I2C1CON.b7)

#define I21EN		(_B_I2C1MOD.b0)
#define I21PIE		(_B_I2C1MOD.b5)
#define I21SIE		(_B_I2C1MOD.b6)

#define I21BB		(_B_I2C1STAT.b0)
#define I21ACR		(_B_I2C1STAT.b1)
#define I21ER		(_B_I2C1STAT.b2)
#define I21SAA		(_B_I2C1STAT.b3)
#define I21TR		(_B_I2C1STAT.b4)

#define SAR02		(_B_SADR0L.b6)
#define SAR03		(_B_SADR0L.b7)

#define SAR04		(_B_SADR0H.b0)
#define SAR05		(_B_SADR0H.b1)
#define SAR06		(_B_SADR0H.b2)
#define SAR07		(_B_SADR0H.b3)
#define SAR08		(_B_SADR0H.b4)
#define SAR09		(_B_SADR0H.b5)
#define SAR0A		(_B_SADR0H.b6)
#define SAR0B		(_B_SADR0H.b7)

#define SAR12		(_B_SADR1L.b6)
#define SAR13		(_B_SADR1L.b7)

#define SAR14		(_B_SADR1H.b0)
#define SAR15		(_B_SADR1H.b1)
#define SAR16		(_B_SADR1H.b2)
#define SAR17		(_B_SADR1H.b3)
#define SAR18		(_B_SADR1H.b4)
#define SAR19		(_B_SADR1H.b5)
#define SAR1A		(_B_SADR1H.b6)
#define SAR1B		(_B_SADR1H.b7)

#define SAR22		(_B_SADR2L.b6)
#define SAR23		(_B_SADR2L.b7)

#define SAR24		(_B_SADR2H.b0)
#define SAR25		(_B_SADR2H.b1)
#define SAR26		(_B_SADR2H.b2)
#define SAR27		(_B_SADR2H.b3)
#define SAR28		(_B_SADR2H.b4)
#define SAR29		(_B_SADR2H.b5)
#define SAR2A		(_B_SADR2H.b6)
#define SAR2B		(_B_SADR2H.b7)

#define SAR32		(_B_SADR3L.b6)
#define SAR33		(_B_SADR3L.b7)

#define SAR34		(_B_SADR3H.b0)
#define SAR35		(_B_SADR3H.b1)
#define SAR36		(_B_SADR3H.b2)
#define SAR37		(_B_SADR3H.b3)
#define SAR38		(_B_SADR3H.b4)
#define SAR39		(_B_SADR3H.b5)
#define SAR3A		(_B_SADR3H.b6)
#define SAR3B		(_B_SADR3H.b7)

#define SAR42		(_B_SADR4L.b6)
#define SAR43		(_B_SADR4L.b7)

#define SAR44		(_B_SADR4H.b0)
#define SAR45		(_B_SADR4H.b1)
#define SAR46		(_B_SADR4H.b2)
#define SAR47		(_B_SADR4H.b3)
#define SAR48		(_B_SADR4H.b4)
#define SAR49		(_B_SADR4H.b5)
#define SAR4A		(_B_SADR4H.b6)
#define SAR4B		(_B_SADR4H.b7)

#define SAR52		(_B_SADR5L.b6)
#define SAR53		(_B_SADR5L.b7)

#define SAR54		(_B_SADR5H.b0)
#define SAR55		(_B_SADR5H.b1)
#define SAR56		(_B_SADR5H.b2)
#define SAR57		(_B_SADR5H.b3)
#define SAR58		(_B_SADR5H.b4)
#define SAR59		(_B_SADR5H.b5)
#define SAR5A		(_B_SADR5H.b6)
#define SAR5B		(_B_SADR5H.b7)

#define SALP		(_B_SADCON0.b0)
#define SASRF		(_B_SADCON0.b7)

#define SARUN		(_B_SADCON1.b0)

#define SACH0		(_B_SADMOD0.b0)
#define SACH1		(_B_SADMOD0.b1)
#define SACH2		(_B_SADMOD0.b2)
#define SACH3		(_B_SADMOD0.b3)
#define SACH4		(_B_SADMOD0.b4)
#define SACH5		(_B_SADMOD0.b5)

#define TED0		(_B_TMED.b0)
#define TED1		(_B_TMED.b1)
#define TED2		(_B_TMED.b2)
#define TED3		(_B_TMED.b3)
#define TED4		(_B_TMED.b4)
#define TED5		(_B_TMED.b5)
#define TED6		(_B_TMED.b6)
#define TED7		(_B_TMED.b7)

#define TEC0		(_B_TMEC.b0)
#define TEC1		(_B_TMEC.b1)
#define TEC2		(_B_TMEC.b2)
#define TEC3		(_B_TMEC.b3)
#define TEC4		(_B_TMEC.b4)
#define TEC5		(_B_TMEC.b5)
#define TEC6		(_B_TMEC.b6)
#define TEC7		(_B_TMEC.b7)

#define TECS0		(_B_TMECON0.b0)
#define TECS1		(_B_TMECON0.b1)
#define TEFM16		(_B_TMECON0.b2)
#define TECS2		(_B_TMECON0.b3)

#define TERUN		(_B_TMECON1.b0)
#define TETGEN		(_B_TMECON1.b1)
#define TESTAT		(_B_TMECON1.b7)

#define TEST0		(_B_TMECON2.b0)
#define TEST1		(_B_TMECON2.b1)
#define TETRM0		(_B_TMECON2.b4)
#define TETRM1		(_B_TMECON2.b5)
#define TEOST		(_B_TMECON2.b7)

#define TESTS0		(_B_TMECON3.b0)
#define TESTS1		(_B_TMECON3.b1)
#define TESTS2		(_B_TMECON3.b2)
#define TESTSS		(_B_TMECON3.b3)

#define TFD0		(_B_TMFD.b0)
#define TFD1		(_B_TMFD.b1)
#define TFD2		(_B_TMFD.b2)
#define TFD3		(_B_TMFD.b3)
#define TFD4		(_B_TMFD.b4)
#define TFD5		(_B_TMFD.b5)
#define TFD6		(_B_TMFD.b6)
#define TFD7		(_B_TMFD.b7)

#define TFC0		(_B_TMFC.b0)
#define TFC1		(_B_TMFC.b1)
#define TFC2		(_B_TMFC.b2)
#define TFC3		(_B_TMFC.b3)
#define TFC4		(_B_TMFC.b4)
#define TFC5		(_B_TMFC.b5)
#define TFC6		(_B_TMFC.b6)
#define TFC7		(_B_TMFC.b7)

#define TFCS0		(_B_TMFCON0.b0)
#define TFCS1		(_B_TMFCON0.b1)
#define TFCS2		(_B_TMFCON0.b3)

#define TFRUN		(_B_TMFCON1.b0)
#define TFTGEN		(_B_TMFCON1.b1)
#define TFSTAT		(_B_TMFCON1.b7)

#define TFST0		(_B_TMFCON2.b0)
#define TFST1		(_B_TMFCON2.b1)
#define TFTRM0		(_B_TMFCON2.b4)
#define TFTRM1		(_B_TMFCON2.b5)
#define TFNEG		(_B_TMFCON2.b6)
#define TFOST		(_B_TMFCON2.b7)

#define TFSTS0		(_B_TMFCON3.b0)
#define TFSTS1		(_B_TMFCON3.b1)
#define TFSTS2		(_B_TMFCON3.b2)
#define TFSTSS		(_B_TMFCON3.b3)

#define T8D0		(_B_TM8D.b0)
#define T8D1		(_B_TM8D.b1)
#define T8D2		(_B_TM8D.b2)
#define T8D3		(_B_TM8D.b3)
#define T8D4		(_B_TM8D.b4)
#define T8D5		(_B_TM8D.b5)
#define T8D6		(_B_TM8D.b6)
#define T8D7		(_B_TM8D.b7)

#define T8C0		(_B_TM8C.b0)
#define T8C1		(_B_TM8C.b1)
#define T8C2		(_B_TM8C.b2)
#define T8C3		(_B_TM8C.b3)
#define T8C4		(_B_TM8C.b4)
#define T8C5		(_B_TM8C.b5)
#define T8C6		(_B_TM8C.b6)
#define T8C7		(_B_TM8C.b7)

#define T8CS0		(_B_TM8CON0.b0)
#define T8CS1		(_B_TM8CON0.b1)
#define T8CS2		(_B_TM8CON0.b2)
#define T89M16		(_B_TM8CON0.b5)
#define T8OST		(_B_TM8CON0.b7)

#define T8RUN		(_B_TM8CON1.b0)
#define T8STAT		(_B_TM8CON1.b7)

#define T9D0		(_B_TM9D.b0)
#define T9D1		(_B_TM9D.b1)
#define T9D2		(_B_TM9D.b2)
#define T9D3		(_B_TM9D.b3)
#define T9D4		(_B_TM9D.b4)
#define T9D5		(_B_TM9D.b5)
#define T9D6		(_B_TM9D.b6)
#define T9D7		(_B_TM9D.b7)

#define T9C0		(_B_TM9C.b0)
#define T9C1		(_B_TM9C.b1)
#define T9C2		(_B_TM9C.b2)
#define T9C3		(_B_TM9C.b3)
#define T9C4		(_B_TM9C.b4)
#define T9C5		(_B_TM9C.b5)
#define T9C6		(_B_TM9C.b6)
#define T9C7		(_B_TM9C.b7)

#define T9CS0		(_B_TM9CON0.b0)
#define T9CS1		(_B_TM9CON0.b1)
#define T9CS2		(_B_TM9CON0.b2)
#define T9NEG		(_B_TM9CON0.b6)
#define T9OST		(_B_TM9CON0.b7)

#define T9RUN		(_B_TM9CON1.b0)
#define T9STAT		(_B_TM9CON1.b7)

#define TAD0		(_B_TMAD.b0)
#define TAD1		(_B_TMAD.b1)
#define TAD2		(_B_TMAD.b2)
#define TAD3		(_B_TMAD.b3)
#define TAD4		(_B_TMAD.b4)
#define TAD5		(_B_TMAD.b5)
#define TAD6		(_B_TMAD.b6)
#define TAD7		(_B_TMAD.b7)

#define TAC0		(_B_TMAC.b0)
#define TAC1		(_B_TMAC.b1)
#define TAC2		(_B_TMAC.b2)
#define TAC3		(_B_TMAC.b3)
#define TAC4		(_B_TMAC.b4)
#define TAC5		(_B_TMAC.b5)
#define TAC6		(_B_TMAC.b6)
#define TAC7		(_B_TMAC.b7)

#define TACS0		(_B_TMACON0.b0)
#define TACS1		(_B_TMACON0.b1)
#define TACS2		(_B_TMACON0.b2)
#define TABM16		(_B_TMACON0.b5)
#define TAOST		(_B_TMACON0.b7)

#define TARUN		(_B_TMACON1.b0)
#define TASTAT		(_B_TMACON1.b7)

#define TBD0		(_B_TMBD.b0)
#define TBD1		(_B_TMBD.b1)
#define TBD2		(_B_TMBD.b2)
#define TBD3		(_B_TMBD.b3)
#define TBD4		(_B_TMBD.b4)
#define TBD5		(_B_TMBD.b5)
#define TBD6		(_B_TMBD.b6)
#define TBD7		(_B_TMBD.b7)

#define TBC0		(_B_TMBC.b0)
#define TBC1		(_B_TMBC.b1)
#define TBC2		(_B_TMBC.b2)
#define TBC3		(_B_TMBC.b3)
#define TBC4		(_B_TMBC.b4)
#define TBC5		(_B_TMBC.b5)
#define TBC6		(_B_TMBC.b6)
#define TBC7		(_B_TMBC.b7)

#define TBCS0		(_B_TMBCON0.b0)
#define TBCS1		(_B_TMBCON0.b1)
#define TBCS2		(_B_TMBCON0.b2)
#define TBOST		(_B_TMBCON0.b7)

#define TBRUN		(_B_TMBCON1.b0)
#define TBSTAT		(_B_TMBCON1.b7)

#define PCP0		(_B_PWCPL.b0)
#define PCP1		(_B_PWCPL.b1)
#define PCP2		(_B_PWCPL.b2)
#define PCP3		(_B_PWCPL.b3)
#define PCP4		(_B_PWCPL.b4)
#define PCP5		(_B_PWCPL.b5)
#define PCP6		(_B_PWCPL.b6)
#define PCP7		(_B_PWCPL.b7)

#define PCP8		(_B_PWCPH.b0)
#define PCP9		(_B_PWCPH.b1)
#define PCP10		(_B_PWCPH.b2)
#define PCP11		(_B_PWCPH.b3)
#define PCP12		(_B_PWCPH.b4)
#define PCP13		(_B_PWCPH.b5)
#define PCP14		(_B_PWCPH.b6)
#define PCP15		(_B_PWCPH.b7)

#define PCD0		(_B_PWCDL.b0)
#define PCD1		(_B_PWCDL.b1)
#define PCD2		(_B_PWCDL.b2)
#define PCD3		(_B_PWCDL.b3)
#define PCD4		(_B_PWCDL.b4)
#define PCD5		(_B_PWCDL.b5)
#define PCD6		(_B_PWCDL.b6)
#define PCD7		(_B_PWCDL.b7)

#define PCD8		(_B_PWCDH.b0)
#define PCD9		(_B_PWCDH.b1)
#define PCD10		(_B_PWCDH.b2)
#define PCD11		(_B_PWCDH.b3)
#define PCD12		(_B_PWCDH.b4)
#define PCD13		(_B_PWCDH.b5)
#define PCD14		(_B_PWCDH.b6)
#define PCD15		(_B_PWCDH.b7)

#define PCC0		(_B_PWCCL.b0)
#define PCC1		(_B_PWCCL.b1)
#define PCC2		(_B_PWCCL.b2)
#define PCC3		(_B_PWCCL.b3)
#define PCC4		(_B_PWCCL.b4)
#define PCC5		(_B_PWCCL.b5)
#define PCC6		(_B_PWCCL.b6)
#define PCC7		(_B_PWCCL.b7)

#define PCC8		(_B_PWCCH.b0)
#define PCC9		(_B_PWCCH.b1)
#define PCC10		(_B_PWCCH.b2)
#define PCC11		(_B_PWCCH.b3)
#define PCC12		(_B_PWCCH.b4)
#define PCC13		(_B_PWCCH.b5)
#define PCC14		(_B_PWCCH.b6)
#define PCC15		(_B_PWCCH.b7)

#define PCCS0		(_B_PWCCON0.b0)
#define PCCS1		(_B_PWCCON0.b1)
#define PCIS0		(_B_PWCCON0.b2)
#define PCIS1		(_B_PWCCON0.b3)
#define PCNEG		(_B_PWCCON0.b4)
#define PCSDN		(_B_PWCCON0.b5)

#define PCRUN		(_B_PWCCON1.b0)
#define PCTGEN		(_B_PWCCON1.b1)
#define PCSDST		(_B_PWCCON1.b5)
#define PCFLG		(_B_PWCCON1.b6)
#define PCSTAT		(_B_PWCCON1.b7)

#define PCST0		(_B_PWCCON2.b0)
#define PCST1		(_B_PWCCON2.b1)
#define PCEXCL		(_B_PWCCON2.b2)
#define PCTRM0		(_B_PWCCON2.b4)
#define PCTRM1		(_B_PWCCON2.b5)
#define PCOST		(_B_PWCCON2.b7)

#define PCSTS0		(_B_PWCCON3.b0)
#define PCSTS1		(_B_PWCCON3.b1)
#define PCSTS2		(_B_PWCCON3.b2)
#define PCSTSS		(_B_PWCCON3.b3)
#define PCSDE0		(_B_PWCCON3.b4)
#define PCSDE1		(_B_PWCCON3.b5)

#define PCW0		(_B_PWCWAIT.b0)
#define PCW1		(_B_PWCWAIT.b1)
#define PCW2		(_B_PWCWAIT.b2)
#define PCW3		(_B_PWCWAIT.b3)
#define PCW4		(_B_PWCWAIT.b4)
#define PCW5		(_B_PWCWAIT.b5)
#define PCW6		(_B_PWCWAIT.b6)
#define PCW7		(_B_PWCWAIT.b7)

#define PDP0		(_B_PWDPL.b0)
#define PDP1		(_B_PWDPL.b1)
#define PDP2		(_B_PWDPL.b2)
#define PDP3		(_B_PWDPL.b3)
#define PDP4		(_B_PWDPL.b4)
#define PDP5		(_B_PWDPL.b5)
#define PDP6		(_B_PWDPL.b6)
#define PDP7		(_B_PWDPL.b7)

#define PDP8		(_B_PWDPH.b0)
#define PDP9		(_B_PWDPH.b1)
#define PDP10		(_B_PWDPH.b2)
#define PDP11		(_B_PWDPH.b3)
#define PDP12		(_B_PWDPH.b4)
#define PDP13		(_B_PWDPH.b5)
#define PDP14		(_B_PWDPH.b6)
#define PDP15		(_B_PWDPH.b7)

#define PDD0		(_B_PWDDL.b0)
#define PDD1		(_B_PWDDL.b1)
#define PDD2		(_B_PWDDL.b2)
#define PDD3		(_B_PWDDL.b3)
#define PDD4		(_B_PWDDL.b4)
#define PDD5		(_B_PWDDL.b5)
#define PDD6		(_B_PWDDL.b6)
#define PDD7		(_B_PWDDL.b7)

#define PDD8		(_B_PWDDH.b0)
#define PDD9		(_B_PWDDH.b1)
#define PDD10		(_B_PWDDH.b2)
#define PDD11		(_B_PWDDH.b3)
#define PDD12		(_B_PWDDH.b4)
#define PDD13		(_B_PWDDH.b5)
#define PDD14		(_B_PWDDH.b6)
#define PDD15		(_B_PWDDH.b7)

#define PDC0		(_B_PWDCL.b0)
#define PDC1		(_B_PWDCL.b1)
#define PDC2		(_B_PWDCL.b2)
#define PDC3		(_B_PWDCL.b3)
#define PDC4		(_B_PWDCL.b4)
#define PDC5		(_B_PWDCL.b5)
#define PDC6		(_B_PWDCL.b6)
#define PDC7		(_B_PWDCL.b7)

#define PDC8		(_B_PWDCH.b0)
#define PDC9		(_B_PWDCH.b1)
#define PDC10		(_B_PWDCH.b2)
#define PDC11		(_B_PWDCH.b3)
#define PDC12		(_B_PWDCH.b4)
#define PDC13		(_B_PWDCH.b5)
#define PDC14		(_B_PWDCH.b6)
#define PDC15		(_B_PWDCH.b7)

#define PDCS0		(_B_PWDCON0.b0)
#define PDCS1		(_B_PWDCON0.b1)
#define PDIS0		(_B_PWDCON0.b2)
#define PDIS1		(_B_PWDCON0.b3)
#define PDNEG		(_B_PWDCON0.b4)
#define PDSDN		(_B_PWDCON0.b5)

#define PDRUN		(_B_PWDCON1.b0)
#define PDTGEN		(_B_PWDCON1.b1)
#define PDSDST		(_B_PWDCON1.b5)
#define PDFLG		(_B_PWDCON1.b6)
#define PDSTAT		(_B_PWDCON1.b7)

#define PDST0		(_B_PWDCON2.b0)
#define PDST1		(_B_PWDCON2.b1)
#define PDEXCL		(_B_PWDCON2.b2)
#define PDTRM0		(_B_PWDCON2.b4)
#define PDTRM1		(_B_PWDCON2.b5)
#define PDOST		(_B_PWDCON2.b7)

#define PDSTS0		(_B_PWDCON3.b0)
#define PDSTS1		(_B_PWDCON3.b1)
#define PDSTS2		(_B_PWDCON3.b2)
#define PDSTSS		(_B_PWDCON3.b3)
#define PDSDE0		(_B_PWDCON3.b4)
#define PDSDE1		(_B_PWDCON3.b5)

#define PDW0		(_B_PWDWAIT.b0)
#define PDW1		(_B_PWDWAIT.b1)
#define PDW2		(_B_PWDWAIT.b2)
#define PDW3		(_B_PWDWAIT.b3)
#define PDW4		(_B_PWDWAIT.b4)
#define PDW5		(_B_PWDWAIT.b5)
#define PDW6		(_B_PWDWAIT.b6)
#define PDW7		(_B_PWDWAIT.b7)

#define PEP0		(_B_PWEPL.b0)
#define PEP1		(_B_PWEPL.b1)
#define PEP2		(_B_PWEPL.b2)
#define PEP3		(_B_PWEPL.b3)
#define PEP4		(_B_PWEPL.b4)
#define PEP5		(_B_PWEPL.b5)
#define PEP6		(_B_PWEPL.b6)
#define PEP7		(_B_PWEPL.b7)

#define PEP8		(_B_PWEPH.b0)
#define PEP9		(_B_PWEPH.b1)
#define PEP10		(_B_PWEPH.b2)
#define PEP11		(_B_PWEPH.b3)
#define PEP12		(_B_PWEPH.b4)
#define PEP13		(_B_PWEPH.b5)
#define PEP14		(_B_PWEPH.b6)
#define PEP15		(_B_PWEPH.b7)

#define PED0		(_B_PWEDL.b0)
#define PED1		(_B_PWEDL.b1)
#define PED2		(_B_PWEDL.b2)
#define PED3		(_B_PWEDL.b3)
#define PED4		(_B_PWEDL.b4)
#define PED5		(_B_PWEDL.b5)
#define PED6		(_B_PWEDL.b6)
#define PED7		(_B_PWEDL.b7)

#define PED8		(_B_PWEDH.b0)
#define PED9		(_B_PWEDH.b1)
#define PED10		(_B_PWEDH.b2)
#define PED11		(_B_PWEDH.b3)
#define PED12		(_B_PWEDH.b4)
#define PED13		(_B_PWEDH.b5)
#define PED14		(_B_PWEDH.b6)
#define PED15		(_B_PWEDH.b7)

#define PEC0		(_B_PWECL.b0)
#define PEC1		(_B_PWECL.b1)
#define PEC2		(_B_PWECL.b2)
#define PEC3		(_B_PWECL.b3)
#define PEC4		(_B_PWECL.b4)
#define PEC5		(_B_PWECL.b5)
#define PEC6		(_B_PWECL.b6)
#define PEC7		(_B_PWECL.b7)

#define PEC8		(_B_PWECH.b0)
#define PEC9		(_B_PWECH.b1)
#define PEC10		(_B_PWECH.b2)
#define PEC11		(_B_PWECH.b3)
#define PEC12		(_B_PWECH.b4)
#define PEC13		(_B_PWECH.b5)
#define PEC14		(_B_PWECH.b6)
#define PEC15		(_B_PWECH.b7)

#define PECS0		(_B_PWECON0.b0)
#define PECS1		(_B_PWECON0.b1)
#define PEIS0		(_B_PWECON0.b2)
#define PEIS1		(_B_PWECON0.b3)
#define PENEG		(_B_PWECON0.b4)
#define PESDN		(_B_PWECON0.b5)

#define PERUN		(_B_PWECON1.b0)
#define PETGEN		(_B_PWECON1.b1)
#define PESDST		(_B_PWECON1.b5)
#define PEFLG		(_B_PWECON1.b6)
#define PESTAT		(_B_PWECON1.b7)

#define PEST0		(_B_PWECON2.b0)
#define PEST1		(_B_PWECON2.b1)
#define PEEXCL		(_B_PWECON2.b2)
#define PETRM0		(_B_PWECON2.b4)
#define PETRM1		(_B_PWECON2.b5)
#define PEOST		(_B_PWECON2.b7)

#define PESTS0		(_B_PWECON3.b0)
#define PESTS1		(_B_PWECON3.b1)
#define PESTS2		(_B_PWECON3.b2)
#define PESTSS		(_B_PWECON3.b3)
#define PESDE0		(_B_PWECON3.b4)
#define PESDE1		(_B_PWECON3.b5)

#define PEW0		(_B_PWEWAIT.b0)
#define PEW1		(_B_PWEWAIT.b1)
#define PEW2		(_B_PWEWAIT.b2)
#define PEW3		(_B_PWEWAIT.b3)
#define PEW4		(_B_PWEWAIT.b4)
#define PEW5		(_B_PWEWAIT.b5)
#define PEW6		(_B_PWEWAIT.b6)
#define PEW7		(_B_PWEWAIT.b7)

#define CMP0EN		(_B_CMP0CON0.b0)
#define CMP0D		(_B_CMP0CON0.b1)

#define CMP0E0		(_B_CMP0CON1.b0)
#define CMP0E1		(_B_CMP0CON1.b1)
#define CMP0SM0		(_B_CMP0CON1.b2)
#define CMP0SM1		(_B_CMP0CON1.b3)
#define CMP0RFS		(_B_CMP0CON1.b4)

#define CMP0RF0		(_B_CMP0CON2.b0)
#define CMP0RF1		(_B_CMP0CON2.b1)
#define CMP0RF2		(_B_CMP0CON2.b2)
#define CMP0RF3		(_B_CMP0CON2.b3)

#define CMP1EN		(_B_CMP1CON0.b0)
#define CMP1D		(_B_CMP1CON0.b1)

#define CMP1E0		(_B_CMP1CON1.b0)
#define CMP1E1		(_B_CMP1CON1.b1)
#define CMP1SM0		(_B_CMP1CON1.b2)
#define CMP1SM1		(_B_CMP1CON1.b3)

#define CMP1RF0		(_B_CMP1CON2.b0)
#define CMP1RF1		(_B_CMP1CON2.b1)
#define CMP1RF2		(_B_CMP1CON2.b2)
#define CMP1RF3		(_B_CMP1CON2.b3)

#define PFP0		(_B_PWFPL.b0)
#define PFP1		(_B_PWFPL.b1)
#define PFP2		(_B_PWFPL.b2)
#define PFP3		(_B_PWFPL.b3)
#define PFP4		(_B_PWFPL.b4)
#define PFP5		(_B_PWFPL.b5)
#define PFP6		(_B_PWFPL.b6)
#define PFP7		(_B_PWFPL.b7)

#define PFP8		(_B_PWFPH.b0)
#define PFP9		(_B_PWFPH.b1)
#define PFP10		(_B_PWFPH.b2)
#define PFP11		(_B_PWFPH.b3)
#define PFP12		(_B_PWFPH.b4)
#define PFP13		(_B_PWFPH.b5)
#define PFP14		(_B_PWFPH.b6)
#define PFP15		(_B_PWFPH.b7)

#define PF0D0		(_B_PWF0DL.b0)
#define PF0D1		(_B_PWF0DL.b1)
#define PF0D2		(_B_PWF0DL.b2)
#define PF0D3		(_B_PWF0DL.b3)
#define PF0D4		(_B_PWF0DL.b4)
#define PF0D5		(_B_PWF0DL.b5)
#define PF0D6		(_B_PWF0DL.b6)
#define PF0D7		(_B_PWF0DL.b7)

#define PF0D8		(_B_PWF0DH.b0)
#define PF0D9		(_B_PWF0DH.b1)
#define PF0D10		(_B_PWF0DH.b2)
#define PF0D11		(_B_PWF0DH.b3)
#define PF0D12		(_B_PWF0DH.b4)
#define PF0D13		(_B_PWF0DH.b5)
#define PF0D14		(_B_PWF0DH.b6)
#define PF0D15		(_B_PWF0DH.b7)

#define PF1D0		(_B_PWF1DL.b0)
#define PF1D1		(_B_PWF1DL.b1)
#define PF1D2		(_B_PWF1DL.b2)
#define PF1D3		(_B_PWF1DL.b3)
#define PF1D4		(_B_PWF1DL.b4)
#define PF1D5		(_B_PWF1DL.b5)
#define PF1D6		(_B_PWF1DL.b6)
#define PF1D7		(_B_PWF1DL.b7)

#define PF1D8		(_B_PWF1DH.b0)
#define PF1D9		(_B_PWF1DH.b1)
#define PF1D10		(_B_PWF1DH.b2)
#define PF1D11		(_B_PWF1DH.b3)
#define PF1D12		(_B_PWF1DH.b4)
#define PF1D13		(_B_PWF1DH.b5)
#define PF1D14		(_B_PWF1DH.b6)
#define PF1D15		(_B_PWF1DH.b7)

#define PF2D0		(_B_PWF2DL.b0)
#define PF2D1		(_B_PWF2DL.b1)
#define PF2D2		(_B_PWF2DL.b2)
#define PF2D3		(_B_PWF2DL.b3)
#define PF2D4		(_B_PWF2DL.b4)
#define PF2D5		(_B_PWF2DL.b5)
#define PF2D6		(_B_PWF2DL.b6)
#define PF2D7		(_B_PWF2DL.b7)

#define PF2D8		(_B_PWF2DH.b0)
#define PF2D9		(_B_PWF2DH.b1)
#define PF2D10		(_B_PWF2DH.b2)
#define PF2D11		(_B_PWF2DH.b3)
#define PF2D12		(_B_PWF2DH.b4)
#define PF2D13		(_B_PWF2DH.b5)
#define PF2D14		(_B_PWF2DH.b6)
#define PF2D15		(_B_PWF2DH.b7)

#define PFC0		(_B_PWFCL.b0)
#define PFC1		(_B_PWFCL.b1)
#define PFC2		(_B_PWFCL.b2)
#define PFC3		(_B_PWFCL.b3)
#define PFC4		(_B_PWFCL.b4)
#define PFC5		(_B_PWFCL.b5)
#define PFC6		(_B_PWFCL.b6)
#define PFC7		(_B_PWFCL.b7)

#define PFC8		(_B_PWFCH.b0)
#define PFC9		(_B_PWFCH.b1)
#define PFC10		(_B_PWFCH.b2)
#define PFC11		(_B_PWFCH.b3)
#define PFC12		(_B_PWFCH.b4)
#define PFC13		(_B_PWFCH.b5)
#define PFC14		(_B_PWFCH.b6)
#define PFC15		(_B_PWFCH.b7)

#define PFCS0		(_B_PWFCON0.b0)
#define PFCS1		(_B_PWFCON0.b1)
#define PFIS0		(_B_PWFCON0.b2)
#define PFIS1		(_B_PWFCON0.b3)
#define PFNEG		(_B_PWFCON0.b4)
#define PFSDN		(_B_PWFCON0.b5)

#define PFRUN		(_B_PWFCON1.b0)
#define PFTGEN		(_B_PWFCON1.b1)
#define PFSDST		(_B_PWFCON1.b5)
#define PFFLG		(_B_PWFCON1.b6)
#define PFSTAT		(_B_PWFCON1.b7)

#define PFST0		(_B_PWFCON2.b0)
#define PFST1		(_B_PWFCON2.b1)
#define PFEXCL		(_B_PWFCON2.b2)
#define PFTRM0		(_B_PWFCON2.b4)
#define PFTRM1		(_B_PWFCON2.b5)
#define PFOST		(_B_PWFCON2.b7)

#define PFSTS0		(_B_PWFCON3.b0)
#define PFSTS1		(_B_PWFCON3.b1)
#define PFSTS2		(_B_PWFCON3.b2)
#define PFSTSS		(_B_PWFCON3.b3)
#define PFSDE0		(_B_PWFCON3.b4)
#define PFSDE1		(_B_PWFCON3.b5)

#define PF0POL		(_B_PWFCON4.b0)
#define PF1POL		(_B_PWFCON4.b1)
#define PF2POL		(_B_PWFCON4.b2)
#define PF0EN		(_B_PWFCON4.b4)
#define PF1EN		(_B_PWFCON4.b5)
#define PF2EN		(_B_PWFCON4.b6)

#define PFUD		(_B_PWFCON5.b0)
#define PFDISL0		(_B_PWFCON5.b2)
#define PFDISL1		(_B_PWFCON5.b3)
#define PF0FLG		(_B_PWFCON5.b4)
#define PF1FLG		(_B_PWFCON5.b5)
#define PF2FLG		(_B_PWFCON5.b6)

#define PFW0		(_B_PWFWAIT.b0)
#define PFW1		(_B_PWFWAIT.b1)
#define PFW2		(_B_PWFWAIT.b2)
#define PFW3		(_B_PWFWAIT.b3)
#define PFW4		(_B_PWFWAIT.b4)
#define PFW5		(_B_PWFWAIT.b5)
#define PFW6		(_B_PWFWAIT.b6)
#define PFW7		(_B_PWFWAIT.b7)
/*---------------------------------------------------
	END OF BIT ADDRESS SYMBOLS
---------------------------------------------------*/

#endif
