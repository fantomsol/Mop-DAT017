#include <stdint.h>

// Define as pointers to registers as to pass
// by reference easier.
#define GPIO_D ((volatile GPIO*) 0x40020c00)
#define GPIO_E ((volatile GPIO*) 0x40021000)

/// Defines a GPIO on the MD407.
typedef struct {
	uint32_t moder;
	uint16_t otyper; // +0x4
	uint16_t otReserved;
	uint32_t ospeedr; // +0x8
	uint32_t pupdr; // +0xc
	uint8_t idrLow; // +0x10
	uint8_t idrHigh; // +0x11
	uint16_t idrReserved;
	uint8_t odrLow; // +0x14
	uint8_t odrHigh; // +0x15
	uint16_t odrReserved;
} GPIO;

/// Sets up the GPIO for the keypad.
/// (PD8-15)
void setup_for_keypad(GPIO* _gpio);

/// Sets up the GPIO for the 7-segment display.
///	(PD0-7)
void setup_for_seg_disp(GPIO* _gpio);

/// Reads any pressed keys on the keypad.
unsigned char keyb(void);

/// Writes a char to the bits 7-0 in the ODR.
void out7seg(GPIO* _gpio, unsigned char c);

/// Sends a signal to "activate" a specific row 
/// (0-indexed) of the keypad.
///
/// ex. activate_row( ... , 0);
///
/// The above example resets the activation on
/// all rows.
void activate_row(GPIO* _gpio, unsigned char c);

/// Deactivates all "active" rows (0-indexed).
void deactivate_rows(GPIO* _gpio);

///	Reads if any of the columns (0-indexed) are
/// activated which would indicate that a key 
/// in that column is pressed.
unsigned char read_col(GPIO* _gpio);