/******************************************************************************
	volume.c

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
#include "mcu.h"
#include "volume.h"


/*############################################################################*/
/*#                                  API                                     #*/
/*############################################################################*/

void volInit( void )
{
	//P30DIR = 1; // input
	//P30C0 = 0;
	//P30C1 = 0; // hi-z
	////P30MD0 = x;
	////P30MD1 = x; 

	SARUN = 0; // stop

	//SALP = 0; 		// one time
	SADMOD0 = 0x0001;  // ch0 select
}

unsigned short volGetAdValue( void )
{
	unsigned short result;

	SARUN = 1; 			// start
	while( SARUN != 0 ) 	// wait finish
	{
		;
	}
	
	result = SADR0 >> 6; 
	return result;
}

