#ifndef EXCEPTIONS_H
#define EXCEPTIONS_H

#include "delay_interrupt.h"

// *** PROTOTYPES ***

// init
void init_all_handlers(void);
void init_usage_fault_handler(void);

// Exception handlers
void usage_fault_handler(int);

#endif // exceptions.h