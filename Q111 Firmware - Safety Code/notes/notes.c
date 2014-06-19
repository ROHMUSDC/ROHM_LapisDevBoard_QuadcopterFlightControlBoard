//*****************************************************************************
// Program:	 LaPi Development Board NOTES
// Author:	 C. Schell 
//		 ROHM Semiconductor USA, LLC
//		 US Design Center
// Started:  April 6th, 2013
// Purpose:	 Demonstration Code for use with Lapis "LaPi" Development Board 
// Updated:	 APRIL 15th, 2013
//*****************************************************************************

//*****************************************************************************
// Microcontroller's connections on the LaPi Development Board to the 
//  Plug 'n Play, Raspberry Pi Compatable, Universal Connectors:
//
// ================================ ML610Q112 ================================= 
//
// Pin-01 => 3.3V Power				Pin-02 => 5.0V Power (VBUS)
// Pin-03 => I2C-SDA  (Q112 I/O B.6)	Pin-04 => no connection
// Pin-05 => I2C-SCL  (Q112 I/O B.5)*	Pin-06 => GROUND
// Pin-07 => GPIO #04 (Q112 I/O B.2)	Pin-08 => UART-TX  (Q112 I/O B.1)
// Pin-09 => no connection			Pin-10 => UART-RX  (Q112 I/O B.0) 
// Pin-11 => GPIO #17 (Q112 I/O C.0)	Pin-12 => GPIO #18 (Q112 I/O B.7)
// Pin-13 => GPIO #21 (Q112 I/O C.1)	Pin-14 => no connection
// Pin-15 => GPIO #22 (Q112 I/O C.2)	Pin-16 => GPIO #23 (Q112 I/O D.1)
// Pin-17 => no connection			Pin-18 => GPIO #24 (Q112 I/O D.2)
// Pin-19 => SPI-MOSI (Q112 I/O B.4)	Pin-20 => no connection
// Pin-21 => SPI-MISO (Q112 I/O B.3)	Pin-22 => GPIO #25 (Q112 I/O D.3)
// Pin-23 => SPI-SCLK (Q112 I/O B.5)*	Pin-24 => SPI-CS0  (Q112 I/O D.4)
// Pin-25 => no connection			Pin-26 => SPI-CS1  (Q112 I/O D.5)
//
//=============================================================================

// ================================ ML610Q111 ================================= 
//
// Pin-01 => 3.3V Power				Pin-02 => 5.0V Power (VBUS)
// Pin-03 => I2C-SDA  (Q111 I/O B.6)	Pin-04 => no connection
// Pin-05 => I2C-SCL  (Q111 I/O B.5)*	Pin-06 => GROUND
// Pin-07 => NONE!			*	Pin-08 => UART-TX  (Q111 I/O B.1)
// Pin-09 => no connection			Pin-10 => UART-RX  (Q111 I/O B.0) 
// Pin-11 => GPIO #17 (Q111 I/O A.0)	Pin-12 => GPIO #18 (Q111 I/O B.7)
// Pin-13 => GPIO #21 (Q111 I/O A.1)	Pin-14 => no connection
// Pin-15 => GPIO #22 (Q111 I/O A.2)	Pin-16 => GPIO #23 (Q111 I/O C.2)
// Pin-17 => no connection			Pin-18 => GPIO #24 (Q111 I/O C.3)
// Pin-19 => SPI-MOSI (Q111 I/O B.4)	Pin-20 => no connection
// Pin-21 => SPI-MISO (Q111 I/O B.3)	Pin-22 => GPIO #25 (Q111 I/O B.2)
// Pin-23 => SPI-SCLK (Q111 I/O B.5)*	Pin-24 => SPI-CS0  (Q111 I/O C.0)
// Pin-25 => no connection			Pin-26 => SPI-CS1  (Q111 I/O C.1)
//
//=============================================================================
//*****************************************************************************

//*****************************************************************************
// Q112 Microcontroller's I/O Pins at J4 on the LaPi Development Board to the
// LaPi Development Board 
//
// ================================ ML610Q112 ================================= 
//
// Pin-01 => A.0				Pin-02 => A.1
// Pin-03 => A.2				Pin-04 => B.0
// Pin-05 => B.1				Pin-06 => B.2
// Pin-07 => B.3				Pin-08 => B.4
// Pin-09 => B.5				Pin-10 => B.6 
// Pin-11 => B.7				Pin-12 => C.0
// Pin-13 => C.1				Pin-14 => C.2
// Pin-15 => C.3				Pin-16 => C.4
// Pin-17 => C.5				Pin-18 => C.6
// Pin-19 => C.7				Pin-20 => D.0
// Pin-21 => D.1				Pin-22 => D.2
// Pin-23 => D.3				Pin-24 => D.4
// Pin-25 => D.5				Pin-26 => GROUND
//
//=============================================================================

// Q111 Microcontroller's I/O Pins at J3 on the LaPi Development Board to the
// LaPi Development Board 
//
// ================================ ML610Q112 ================================= 
//
// Pin-01 => A.0				Pin-02 => A.1
// Pin-03 => A.2				Pin-04 => B.0
// Pin-05 => B.1				Pin-06 => B.2
// Pin-07 => B.3				Pin-08 => B.4
// Pin-09 => B.5				Pin-10 => B.6 
// Pin-11 => B.7				Pin-12 => C.0
// Pin-13 => C.1				Pin-14 => C.2
// Pin-15 => C.3				Pin-16 => GROUND
//
//=============================================================================
//*****************************************************************************



