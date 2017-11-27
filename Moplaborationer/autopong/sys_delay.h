#include <stdint.h>
#ifndef SYS_DELAY_H
#define SYS_DELAY_H

#define SYS_TICK ((volatile SysTick*) 0xE000E010)

typedef struct {
	uint32_t STK_CTRL;		// offset 0x00
	uint32_t STK_LOAD;		// offset 0x04
	uint32_t STK_VAL;		// offset 0x08
	uint32_t STK_CALIB;		// offest 0x0C
} SysTick;

/// Delays the thread 250 ns.
///
/// NOTE: 		The routine is not exact but takes a MINIMUM of 
///				250 ns.
void delay_250ns( void );

/// Dealys the thread 500 ns.
/// 
/// NOTE:		The routine is not exact but takes a MINIMUM of
///				500 ns.
void delay_500ns( void );

/// Delays the thread a given amount of µs.
///
/// NOTE:		The routine is not exact but takes a MINIMUM of 
///				'us' µs.
///
/// NOTE (1):	This way of implementing the dealy using the 
///				'delay_250ns()' function is suboptimal as you reset
///				the STK_CTRL register twice between every iteration
///				of the for loop.
/// 			
void delay_mikro( unsigned int us );

/// Dealys the thread a given amount of ms.
///
/// NOTE:		The routine is not exact but takes a MINIMUM of 
///				'us' µs.
///
/// NOTE (1):	This way of implementing the dealy using the 
///				'delay_250ns()' function is suboptimal as you reset
///				the STK_CTRL register twice between every iteration
///				of the for loop.
/// 			
void delay_milli( unsigned int ms );

#endif