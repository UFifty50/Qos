#pragma once

#include <stdint.h>
#include <stddef.h>

enum {
	COLOUR_BLACK = 0,
	COLOUR_BLUE = 1,
	COLOUR_GREEN = 2,
	COLOUR_CYAN = 3,
	COLOUR_RED = 4,
	COLOUR_MAGENTA = 5,
	COLOUR_BROWN = 6,
	COLOUR_LIGHT_GRAY = 7,
	COLOUR_DARK_GRAY = 8,
	COLOUR_LIGHT_BLUE = 9,
	COLOUR_LIGHT_GREEN = 10,
	COLOUR_LIGHT_CYAN = 11,
	COLOUR_LIGHT_RED = 12,
	COLOUR_PINK = 13,
	COLOUR_YELLOW = 14,
	COLOUR_WHITE = 15,
};

void print_clear();
void print_char(char character);
void print_str(char* string);
void print_set_colour(uint8_t foreground, uint8_t background);
