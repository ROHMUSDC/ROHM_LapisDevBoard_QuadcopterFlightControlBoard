/******************************************************************************
	pwm45.h

    Copyright (C) 2012 LAPIS Semiconductor Co., Ltd.
    All rights reserved.

    This software is provided "as is" and any expressed or implied
    warranties, including, but not limited to, the implied warranties of
    merchantability and fitness for a particular purpose are disclaimed.
    LAPIS Semiconductor shall not be liable for any direct, indirect,
    consequential or incidental damages arising from using or modifying
    this software.
    You (customer) can modify and use this software in whole or part on
    your own responsibility, only for the purpose of developing the software
    for use with microcontroller manufactured by LAPIS Semiconductor.

    History
    2012.10.12  ver.1.00
******************************************************************************/
#ifndef _PWM45_H_
#define _PWM45_H_

#include "mcu.h"

/*############################################################################*/
/*#                                  Macro                                   #*/
/*############################################################################*/
/*=== Parameter value. ===*/
#define	PWM45_CS_LSCLK			(0x00u)	/* ����N���b�N�Ƃ���LSCLK��I�� */
#define PWM45_CS_HTBCLK			(0x01u)	/* ����N���b�N�Ƃ���HTBCLK��I�� */
#define PWM45_CS_EXTCLK			(0x02u)	/* ����N���b�N�Ƃ��ĊO���N���b�N��I�� */
#define PWM45_IS_PERIOD			(0x00u)	/* ������v���Ɋ����ݔ��� */
#define PWM45_IS_DUTY			(0x01u)	/* �f���[�e�B��v���Ɋ����ݔ��� */
#define PWM45_IS_PERIOD_DUTY		(0x02u)	/* �����^�f���[�e�B��v���Ɋ����ݔ��� */
#define PWM45_NEG_POS			(0x00u)	/* �o�͘_��:���_�� */
#define PWM45_NEG_NEG			(0x01u)	/* �o�͘_��:���_�� */
#define PWM45_INI_HIGH			(0x00u)	/* �����l���x��:High */
#define PWM45_INI_LOW			(0x01u)	/* �����l���x��:Low */
#define PWM45_STPSEL_KEEP		(0x00u)	/* �ꎞ��~���o�̓��x��:�ێ� */
#define PWM45_STPSEL_INIT		(0x01u)	/* �ꎞ��~���o�̓��x��:������ */
#define PWM45_STM_SFT_STT		(0x00u)	/* �\�t�g�E�F�A�X�^�[�g */
#define PWM45_STM_SFT_EXT_STT		(0x01u)	/* �\�t�g�E�F�A�X�^�[�g�܂��͊O�����̓X�^�[�g */
#define PWM45_STM_EXT_STT		(0x02u)	/* �O�����̓X�^�[�g */
#define PWM45_STM_SFT_STT_EXT_CLR	(0x03u)	/* �\�t�g�E�F�A�X�^�[�g�܂��͊O�����̓N���A */
#define PWM45_TGE_NO_ACT		(0x00u)	/* �O�����͐��䖳�� */
#define PWM45_TGE_STT_RE_STP_CLR_FE	(0x01u)	/* �����オ��G�b�W�X�^�[�g�A����������G�b�W�X�g�b�v���N���A */
#define PWM45_TGE_STT_FE_STP_CLR_RE	(0x02u)	/* ����������G�b�W�X�^�[�g�A�����オ��G�b�W�X�g�b�v���N���A */
#define PWM45_TGE_CLR_BE		(0x03u)	/* ���G�b�W�N���A */
#define PWM45_TGSEL_EV0_EX_EV1_SD	(0x00u)	/* �O�����̓X�^�[�g/�O�����̓N���A�����PW45EV0�A�ً}��~�����PW45EV1���g�p */
#define PWM45_TGSEL_EV0_SD_EV1_EX	(0x01u)	/* �O�����̓X�^�[�g/�O�����̓N���A�����PW45EV1�A�ً}��~�����PW45EV0���g�p */
#define PWM45_OS_DIS			(0x00u)	/* �����V���b�g���[�h����(�J��Ԃ����[�h) */
#define PWM45_OS_ENA			(0x01u)	/* �����V���b�g���[�h�L��(�����V���b�g���[�h) */
#define PWM45_CPL_DIS			(0x00u)	/* PWM4�APWM5�P�ƃ��[�h */
#define PWM45_CPL_ENA_DT_DIS		(0x01u)	/* PWM4�APWM5�A�����[�h�E�f�b�h�^�C���Ȃ� */
#define PWM45_CPL_ENA_DT_ENA		(0x03u)	/* PWM4�APWM5�A�����[�h�E�f�b�h�^�C������ */
#define PWM45_SDE_DIS			(0x00u)	/* �ً}��~�s�g�p */
#define PWM45_SDE_ENA_RE		(0x01u)	/* �����オ��G�b�W�ŋً}��~ */
#define PWM45_SDE_ENA_FE		(0x02u)	/* ����������G�b�W�ŋً}��~ */
#define PWM45_SDE_ENA_BE		(0x03u)	/* ���G�b�W�ŋً}��~ */

/*=== Return value. ===*/
#define PWM45_FLG_L			(0x00u)	/* �o�̓t���O=�h0�h */
#define PWM45_FLG_H			(0x01u)	/* �o�̓t���O=�h1�h */
#define PWM45_STAT_STP			(0x00u)	/* �J�E���g��~�� */
#define PWM45_STAT_ACT			(0x01u)	/* �J�E���g���쒆 */
#define PWM45_SDST_NO_SD		(0x00u)	/* �ً}��~�����ݔ����Ȃ� */
#define PWM45_SDST_SDED			(0x01u)	/* �ً}��~�����ݔ������� */

/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/
/*=== API For PWM4 ===*/

#define pwm4_setPeriod(period)					\
	do {										\
		PW4P = (period);						\
	} while (0)

#define pwm4_setDuty(duty)						\
	do {										\
		PW4D = (duty);							\
	} while (0)

#define pwm4_getCount()		(PW4C)

#define pwm4_clearCount()						\
	do {										\
		PW4CL = 0;								\
	} while (0)

#define	pwm4_selectClock(clkSel)				\
	do {										\
		unsigned char tmpCs;					\
		tmpCs = (clkSel);						\
		P4CS0 =  tmpCs       & 1;				\
		P4CS1 = (tmpCs >> 1) & 1;				\
	} while (0)

#define	pwm4_selectInterrupt(intSel)			\
	do {										\
		unsigned char tmpIs = (intSel);			\
		P4IS0 =  tmpIs       & 1;				\
		P4IS1 = (tmpIs >> 1) & 1;				\
	} while (0)

#define	pwm4_selectOutputPolarity(outPol)		\
	do {										\
		P4NEG = outPol        & 1;				\
	} while (0)

#define	pwm4_selectInitializeLevel(level)		\
	do {										\
		P4INI = level        & 1;				\
	} while (0)

#define	pwm4_selectOutputAtStop(stpsel)			\
	do {										\
		P4STPSEL = stpsel        & 1;			\
	} while (0)

#define	pwm4_start()							\
	do {										\
		P4RUN = 1;								\
	} while (0)

#define	pwm4_stop()								\
	do {										\
		P4RUN = 0;								\
	} while (0)

#define	pwm4_getOutputFlag()	(P4FLG)

#define pwm4_getCountStatus()	(P4STAT)

#define	pwm4_setCountStartMode(startMode, extCtrl)	\
	do {											\
		unsigned char tmpStm = (startMode);			\
		unsigned char tmpTge = (extCtrl);			\
		P4STM0 =  tmpStm       & 1;					\
		P4STM1 = (tmpStm >> 1) & 1;					\
		P4TGE0 =  tmpTge         & 1;				\
		P4TGE1 = (tmpTge   >> 1) & 1;				\
	} while (0)

#define	pwm4_selectCtrlPin(pinSel)				\
	do {										\
		P4TGSEL = (pinSel) & 1;					\
	} while (0)

#define	pwm4_setOneShotMode(mode)				\
	do {										\
		P4MD = (mode) & 1;						\
	} while (0)

/*=== API For PWM5 ===*/
#define pwm5_setPeriod(period)					\
	do {										\
		PW5P = (period);						\
	} while (0)

#define pwm5_setDuty(duty)						\
	do {										\
		PW5D = (duty);							\
	} while (0)

#define pwm5_getCount()		(PW5C)

#define pwm5_clearCount()						\
	do {										\
		PW5CL = 0;								\
	} while (0)

#define	pwm5_selectClock(clkSel)				\
	do {										\
		unsigned char tmpCs = (clkSel);			\
		P5CS0 =  tmpCs       & 1;				\
		P5CS1 = (tmpCs >> 1) & 1;				\
	} while (0)

#define	pwm5_selectInterrupt(intSel)			\
	do {										\
		unsigned char tmpIs = (intSel);			\
		P5IS0 =  tmpIs       & 1;				\
		P5IS1 = (tmpIs >> 1) & 1;				\
	} while (0)

#define	pwm5_selectOutputPolarity(outPol)		\
	do {										\
		P5NEG = outPol        & 1;				\
	} while (0)

#define	pwm5_selectInitializeLevel(level)		\
	do {										\
		P5INI = level        & 1;				\
	} while (0)

#define	pwm5_selectOutputAtStop(stpsel)			\
	do {										\
		P5STPSEL = stpsel        & 1;			\
	} while (0)

#define	pwm5_start()							\
	do {										\
		P5RUN = 1;								\
	} while (0)

#define	pwm5_stop()								\
	do {										\
		P5RUN = 0;								\
	} while (0)

#define	pwm5_getOutputFlag()	(P5FLG)

#define pwm5_getCountStatus()	(P5STAT)

#define	pwm5_setCountStartMode(startMode, extCtrl)	\
	do {											\
		unsigned char tmpStm = (startMode);			\
		unsigned char tmpTge = (extCtrl);			\
		P5STM0 =  tmpStm       & 1;					\
		P5STM1 = (tmpStm >> 1) & 1;					\
		P5TGE0 =  tmpTge         & 1;				\
		P5TGE1 = (tmpTge   >> 1) & 1;				\
	} while (0)

#define	pwm5_selectCtrlPin(pinSel)				\
	do {										\
		P5TGSEL = (pinSel) & 1;					\
	} while (0)

#define	pwm5_setOneShotMode(mode)				\
	do {										\
		P5MD = (mode) & 1;						\
	} while (0)

/*=== API For PWM Coupling Mode ===*/
#define	pwm45_setCouplingMode(mode)				\
	do {										\
		unsigned char tmpMd = (mode);			\
		P45MD  =  tmpMd       & 1;				\
		P4DTMD = (tmpMd >> 1) & 1;				\
	} while (0)

#define	pwm45_setShutdownMode(mode)				\
	do {										\
		unsigned char tmpMd = (mode);			\
		P4SDE0 =  tmpMd       & 1;				\
		P4SDE1 = (tmpMd >> 1) & 1;				\
	} while (0)

#define	pwm45_getShutdownStatus()	(P4SDST)

#define pwm45_clearShutdownStatus()				\
	do {										\
		P4SDST = 1;								\
	} while (0)

#endif /* _PWM45_H_ */
