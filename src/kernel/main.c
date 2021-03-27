#include "print.h"

void kernel_main() {
	print_clear();
	print_set_colour(COLOUR_YELLOW, COLOUR_BLACK);
	print_str("64 bits o.o");
}
