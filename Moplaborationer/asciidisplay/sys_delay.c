#include "sys_delay.h"

/// Delays the thread 250 ns.
///
/// NOTE: 		The routine is not exact but takes a MINIMUM of 
///				250 ns.
void delay_250ns( void )
{
	// ----------------------
	// = Återställ räknaren =
	// ----------------------
	// Nollställ register STK_CTRL.
	SYS_TICK->STK_CTRL = 0;
	
	// -------------------------
	// = Ladda in räknarvärdet =
	// -------------------------
	// 		168 ticks/µs 		* 1000
	// => 	168'000 ticks/ns 	/ 4
	// => 	42'000 ticks for a wait of 250 ns.
	SYS_TICK->STK_LOAD = 0x0000A410;
	
	// -----------------------------
	// = Nollställ räknarregistret =
	// -----------------------------
	// Nolställ register STK_VAL.
	SYS_TICK->STK_VAL = 0;
	
	// ---------------------
	// = Start om räknaren =
	// ---------------------
	// Ettställ bitar 2 och 0.
	// Nollställ bitar 31-3 och 1.
	SYS_TICK->STK_CTRL = 0x00000005;
	
	// -----------------------------------------
	// = Vänta tills räknaren har räknat klart =
	// -----------------------------------------
	// Väntar tills COUNTFLAG = 1.
	while(SYS_TICK->STK_CTRL & 0x00010000) { }
	
	// ----------------------
	// = Återställ räknaren =
	// ----------------------
	// Nollställ register STK_CTRL.
	SYS_TICK->STK_CTRL = 0;
}

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
void delay_mikro( unsigned int us )
{
#ifdef SIMULATOR
	us = us / 1000;
	us++;
#endif
	// Convert the given time to a number of 250 ns delays.
	unsigned int delays = us * 4;
	unsigned int i;
	for(i = 0; i < delays; i++)
	{
		delay_250ns();
	}
}

/// Dealys the thread a given amount of ms.
///
/// NOTE:		The routine is not exact but takes a MINIMUM of 
///				'us' µs.
///
/// NOTE (1):	This way of implementing the dealy using the 
///				'delay_250ns()' function is suboptimal as you reset
///				the 'STK_CTRL' register twice between every iteration
///				of the for loop.
/// 			
void delay_milli( unsigned int ms )
{
#ifdef SIMULATOR
	ms = ms / 1000;
	ms++;
#endif
	// Convert the given time to a number of 250 ns delays.
	unsigned int delays = ms * 4000;
	unsigned int i;
	for(i = 0; i < delays; i++)
	{
		delay_250ns();
	}
}