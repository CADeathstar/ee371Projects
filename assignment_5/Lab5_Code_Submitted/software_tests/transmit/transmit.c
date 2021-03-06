
#include "sys/alt_stdio.h"
#include "altera_avalon_pio_regs.h"
#include "unistd.h"
#include "fcntl.h"
//IOWR_ALTERA_AVALON_PIO_DATA(targetAddress, aValue);
//aValue = IOWR_ALTERA_AVALON_PIO_DATA(sourceAddress);
#define parallel_out (volatile unsigned char *) 0x0003050
#define parallel_in (volatile unsigned char *) 0x0003040
#define char_received (volatile unsigned char *) 0x0003030
#define char_sent (volatile unsigned char *) 0x0003020
#define transmit_enable (volatile unsigned char *) 0x0003010
#define load (volatile unsigned char *) 0x0003000

unsigned int setParity(unsigned int c);
unsigned int getParity(unsigned int c);
unsigned int getCharacter(unsigned int c);
unsigned int getBits(unsigned int c);

int main()
{ 
	alt_putstr("Hello from Nios II!\n");

	char msg[26] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	int j;
	for (j = 0; j < strlen(msg); j++) {
		*transmit_enable = 0x0;
		*load = 0x0;
		*parallel_out = setParity(msg[j]);
		usleep(1000);
		*load = 0x1;
		*transmit_enable = 0x1;
		usleep(50);
		*load = 0x0;
		while(!*char_sent);
		*transmit_enable = 0x0;
		usleep(25000);
	}
	return 0;
}

unsigned int setParity(unsigned int c) {
	int parity = c;
	parity ^= parity >> 4;
	parity ^= parity >> 2;
	parity ^= parity >> 1;

	//alt_putchar(c);
	int out = ((c  << 1));
	//out ^= (parity & 1) << 7;
	//out ^= 1 << (parity & 1);
	if (parity & 1) {
		out ^= 1 >> 7;
	}
	return out;
}

unsigned int getCharacter(unsigned int c) {
	return ((c >> 1));
}


