#include "exceptions.h"

// init
void init_all_handlers(void){
    init_usage_fault_handler();
}

void init_usage_fault_handler(void){
    *((void(**)(void))0x2001C018) = usage_fault_handler;
}

// Exception handlers
void usage_fault_handler(int num){
    while(1);
}
