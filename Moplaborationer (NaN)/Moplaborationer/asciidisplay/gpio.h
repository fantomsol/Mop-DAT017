#include <stdint.h>

// Define as pointers to registers as to pass
// by reference easier.
#define GPIO_D ((volatile GPIO*) 0x40020c00)
#define GPIO_E ((volatile GPIO*) 0x40021000)

// Define values specifying particular bits in
// the ASCII-Display control register.
#define B_E 0x40
#define B_SELECT 0x04
#define B_RW 0x02
#define B_RS 0x01


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

void setup_for_ascii_display(void);

void ascii_init(void);

/// Adressera ASCII-display och ettställ de bitar 
/// som är 1 i x.
void ascii_ctrl_bit_set(unsigned char x);

/// Adressera ASCII-display och nollställ de 
/// bitar som är 1 i x.
void ascii_ctrl_bit_clear(unsigned char x);

void ascii_write_cmd(unsigned char command);

void ascii_write_data(unsigned char data);

unsigned char ascii_read_status(void);

unsigned char ascii_read_data(void);

void ascii_write_controller(unsigned char byte);

unsigned char ascii_read_controller(void);

void ascii_gotoxy(int x, int y);

void ascii_write_char(unsigned char c);