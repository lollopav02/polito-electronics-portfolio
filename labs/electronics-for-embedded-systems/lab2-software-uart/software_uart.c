/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <string.h>
#include "system.h"
#include "sys/alt_timestamp.h"
#include "altera_avalon_pio_regs.h"
#define PROJECT4

#ifdef PROJECT1

int main()
{
  printf("Hello!\n");

  return 0;
}

#endif

#ifdef PROJECT2

int main()
{
	int val = 0x01;
	/* Write data to pins */
	IOWR_ALTERA_AVALON_PIO_DATA(NIOS_UARTTX_BASE, val);

	/* Write data to header connector pins */

	/* Wait n microseconds */


	int i = 0;

	while(0){
		val +=1;
		IOWR_ALTERA_AVALON_PIO_DATA(NIOS_HEADER_CONN_BASE, val);
		int ticksPerSec = alt_timestamp_freq();
		int n = 8;
		int nticks = (ticksPerSec / 1000000) * n;
		alt_timestamp_start();
		i++;
		while (alt_timestamp() < nticks) {}
		printf("%d \n", i);

	}

  return 0;
}

#endif

#ifdef PROJECT4

#define BAUD_RATE  4800

char receiveUart(int, int);
int sendUart(char c, int);
void delayBit(int);
void delayHalfBit();



int main()
{


	int ticksPerSec = alt_timestamp_freq();
	int nticks = ticksPerSec / BAUD_RATE;
	printf("Tick per sec : %d\n", ticksPerSec);
	printf("Nticks: %d\n", nticks);
	int nticks_half = ticksPerSec / (BAUD_RATE * 3);
	printf("Nticks half: %d\n", nticks_half);
	int i = 0;
	int val = 0x01;
	IOWR_ALTERA_AVALON_PIO_DATA(NIOS_UARTTX_BASE, val);
	char * s = "Hello world";

	while(*s != '\0'){
		sendUart(*s,nticks);
		s++;
	}
	char data[10000];
	while(1){
		//aspetta finchè il segnale è alto
		while(IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE) == 1);

		data[i] = receiveUart(nticks,nticks_half);

		//if(data[i] == '!' || i == 100) break;
		if(i == 5) break;
		i++;
	}
	data[i+1] = '\0';

	printf("%s", data);



  return 0;
}


char receiveUart(int nticks, int halfTicks){


	alt_timestamp_start();
		while (alt_timestamp() < halfTicks) {}

	unsigned char data = 0;
	/*for(int i = 0; i< 8; i++){
		int rx = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE);
		if(rx)
			data |= (1<<i); // data = data | 1 alla posizione i
		//else
			//data &= ~(1<<i); //~(1<<i) = tutto uno e zero alla posizione i, poi fa l'AND

		delayBit();
	}*/
	alt_timestamp_start();
		while (alt_timestamp() < nticks) {}

	if(IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE))
				data |= (1<<0); // data = data | 1 alla posizione i
	alt_timestamp_start();
		while (alt_timestamp() < nticks) {}

	int rx = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE);
			if(rx)
				data |= (1<<1); // data = data | 1 alla posizione i

			alt_timestamp_start();
				while (alt_timestamp() < nticks) {}
	rx = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE);
			if(rx)
				data |= (1<<2); // data = data | 1 alla posizione i

			alt_timestamp_start();
				while (alt_timestamp() < nticks) {}
	rx = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE);
			if(rx)
				data |= (1<<3); // data = data | 1 alla posizione i
			alt_timestamp_start();
				while (alt_timestamp() < nticks) {}
	rx = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE);
			if(rx)
				data |= (1<<4); // data = data | 1 alla posizione i
			alt_timestamp_start();
				while (alt_timestamp() < nticks) {}
	rx = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE);
			if(rx)
				data |= (1<<5); // data = data | 1 alla posizione i
			alt_timestamp_start();
				while (alt_timestamp() < nticks) {}
	rx = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE);
			if(rx)
				data |= (1<<6); // data = data | 1 alla posizione i
			alt_timestamp_start();
				while (alt_timestamp() < nticks) {}
	rx = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE);
			if(rx)
				data |= (1<<7); // data = data | 1 alla posizione i
			alt_timestamp_start();
				while (alt_timestamp() < nticks) {}
	return data;

}

int sendUart(char c, int nticks){


	int val = 0x00;
	IOWR_ALTERA_AVALON_PIO_DATA(NIOS_UARTTX_BASE, val); // start bit

	delayBit(nticks); //3333 = 1/ 300 dove 300 è il baud rate
	for(int i = 0; i < 8 ; i++){
		if (c & 0x01) //Check se il lsb è 1
			val = 0x01;
		else
			val = 0x00;

		IOWR_ALTERA_AVALON_PIO_DATA(NIOS_UARTTX_BASE, val); // data bit
		delayBit(nticks);
		c >>= 1; //shift a destra per il prossimo lsb
	}

	val = 0x01;
	IOWR_ALTERA_AVALON_PIO_DATA(NIOS_UARTTX_BASE, val); // End bit
	delayBit(nticks);
	return 1;

}

void delayBit( int nticks){

	//nticks +=1;
	alt_timestamp_start();
	while (alt_timestamp() < nticks) {}

}

void delayHalfBit(){

	return;
};


#endif
