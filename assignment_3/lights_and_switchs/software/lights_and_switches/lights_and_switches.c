
#include <stdio.h>
//#include "sys/alt_stdio.h"

#define switches (volatile char *) 0x0002000
#define leds (volatile char *) 0x0002010
void main()
{
	while (1){
		*leds = *switches;
	}

}
