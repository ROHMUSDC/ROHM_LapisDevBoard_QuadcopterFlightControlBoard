/*============================================================================
-   muldivu8.h

-   Defines the function for multiplication/division accelerators.

    Last Edition  Oct 3, 2011
    Copyright (C) 2010-2011 LAPIS Semiconductor Co., Ltd.

============================================================================ */

#ifndef _MULDIVU8_H_
#define _MULDIVU8_H_

#ifdef __MS__
 #ifdef __NOROMWIN__
  #define __uilmul	__uilmulu8sn
  #define __silmul	__silmulu8sn
  #define __ullmul	__ullmulu8sn
  #define __sllmul	__sllmulu8sn
  #define __uilmac	__uilmacu8sn
  #define __silmac	__silmacu8sn
  #define __uilmacs	__uilmacsu8sn
  #define __silmacs	__silmacsu8sn
  unsigned long (__uilmulu8sn)(unsigned short uh1, unsigned short uh2);
  signed long (__silmulu8sn)(signed short sh1, signed short sh2);
  unsigned long (__ullmulu8sn)(unsigned long ul1, unsigned long ul2);
  signed long (__sllmulu8sn)(signed long sl1, signed long sl2);
  unsigned long (__uilmacu8sn)(unsigned short uh1, unsigned short uh2);
  signed long (__silmacu8sn)(signed short sh1, signed short sh2);
  unsigned long (__uilmacsu8sn)(unsigned short uh1, unsigned short uh2);
  signed long (__silmacsu8sn)(signed short sh1, signed short sh2);
 #else
  #define __uilmul	__uilmulu8sw
  #define __silmul	__silmulu8sw
  #define __ullmul	__ullmulu8sw
  #define __sllmul	__sllmulu8sw
  #define __uilmac	__uilmacu8sw
  #define __silmac	__silmacu8sw
  #define __uilmacs	__uilmacsu8sw
  #define __silmacs	__silmacsu8sw
  unsigned long (__uilmulu8sw)(unsigned short uh1, unsigned short uh2);
  signed long (__silmulu8sw)(signed short sh1, signed short sh2);
  unsigned long (__ullmulu8sw)(unsigned long ul1, unsigned long ul2);
  signed long (__sllmulu8sw)(signed long sl1, signed long sl2);
  unsigned long (__uilmacu8sw)(unsigned short uh1, unsigned short uh2);
  signed long (__silmacu8sw)(signed short sh1, signed short sh2);
  unsigned long (__uilmacsu8sw)(unsigned short uh1, unsigned short uh2);
  signed long (__silmacsu8sw)(signed short sh1, signed short sh2);
 #endif
#endif

#ifdef __ML__
 #ifdef __NOROMWIN__
  #define __uilmul	__uilmulu8ln
  #define __silmul	__silmulu8ln
  #define __ullmul	__ullmulu8ln
  #define __sllmul	__sllmulu8ln
  #define __uilmac	__uilmacu8ln
  #define __silmac	__silmacu8ln
  #define __uilmacs	__uilmacsu8ln
  #define __silmacs	__silmacsu8ln
  unsigned long (__uilmulu8ln)(unsigned short uh1, unsigned short uh2);
  signed long (__silmulu8ln)(signed short sh1, signed short sh2);
  unsigned long (__ullmulu8ln)(unsigned long ul1, unsigned long ul2);
  signed long (__sllmulu8ln)(signed long sl1, signed long sl2);
  unsigned long (__uilmacu8ln)(unsigned short uh1, unsigned short uh2);
  signed long (__silmacu8ln)(signed short sh1, signed short sh2);
  unsigned long (__uilmacsu8ln)(unsigned short uh1, unsigned short uh2);
  signed long (__silmacsu8ln)(signed short sh1, signed short sh2);
 #else
  #define __uilmul	__uilmulu8lw
  #define __silmul	__silmulu8lw
  #define __ullmul	__ullmulu8lw
  #define __sllmul	__sllmulu8lw
  #define __uilmac	__uilmacu8lw
  #define __silmac	__silmacu8lw
  #define __uilmacs	__uilmacsu8lw
  #define __silmacs	__silmacsu8lw
  unsigned long (__uilmulu8lw)(unsigned short uh1, unsigned short uh2);
  signed long (__silmulu8lw)(signed short sh1, signed short sh2);
  unsigned long (__ullmulu8lw)(unsigned long ul1, unsigned long ul2);
  signed long (__sllmulu8lw)(signed long sl1, signed long sl2);
  unsigned long (__uilmacu8lw)(unsigned short uh1, unsigned short uh2);
  signed long (__silmacu8lw)(signed short sh1, signed short sh2);
  unsigned long (__uilmacsu8lw)(unsigned short uh1, unsigned short uh2);
  signed long (__silmacsu8lw)(signed short sh1, signed short sh2);
 #endif
#endif

#endif
