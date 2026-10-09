
#include <stdio.h>
#include <stdint.h>
#include "system.h"
#include "sys/alt_timestamp.h"
#include "altera_avalon_pio_regs.h"

#define RXADDRESS 0x08001060
#define TXADDRESS 0x08001064
#define STATUSADDRESS 0x08001068
#define CONTROLADDRESS 0x0800106C
#define DIVISORADDRESS 0x08001070
#define CLOCK_FREQ 50000000 //50 MHz
#define BAUD_RATE 115200
#define TXREADY_MASK  0b1000000
#define RXREADY_MASK  0b10000000
#define ROE_MASK  0b1000

#define PROJECT5

#ifdef PROJECT1

int main()
{
	volatile int* rxdata = (int *) RXADDRESS ;
	volatile int* txdata = (int *) TXADDRESS;
	volatile int* status = (int *) STATUSADDRESS;
	volatile int* control = (int *) CONTROLADDRESS;
	volatile int* divisor = (int *) DIVISORADDRESS;

	printf("RX value: %d\n", *rxdata);
	printf("TX value: %d\n", *txdata);
	printf("Status value: %d\n", *status);
	printf("Control value: %d\n", *control);
	printf("Divisor value: %d\n", *divisor);

  return 0;
}

#endif

#ifdef PROJECT2
int main()
{
	volatile int* rxdata = (int *) RXADDRESS ;
	volatile int* txdata = (int *) TXADDRESS;
	volatile int* status = (int *) STATUSADDRESS;
	volatile int* control = (int *) CONTROLADDRESS;
	volatile int* divisor = (int *) DIVISORADDRESS;

	int calculated_divosr = CLOCK_FREQ / BAUD_RATE - 1;

	printf("Real divisor: %d, calculated divisor: %d\n", *divisor, calculated_divosr);

	int baud_2400 = 2400;
	int divisor_2400 = CLOCK_FREQ / baud_2400 - 1;

	*divisor = divisor_2400;
	printf("Divisor for new baudrate: %d", *divisor);

  return 0;
}
#endif

#ifdef PROJECT3
int main()
{
	volatile int* rxdata = (int *) RXADDRESS ;
	volatile int* txdata = (int *) TXADDRESS;
	volatile int* status = (int *) STATUSADDRESS;
	volatile int* control = (int *) CONTROLADDRESS;
	volatile int* divisor = (int *) DIVISORADDRESS;

	int baud_2400 = 2400;
	int divisor_2400 = CLOCK_FREQ / baud_2400 - 1;
	*divisor = divisor_2400;

	printf("Divisor for new baud rate: %d\n", *divisor);

	printf("Status register value before: %d\n", *status);

	//Wait until the ready bit is one
	//TREADY MASK is used to check the tx ready bit in the status register
	char *string = "Characters\0";
	//int i = 0;
	while(1){
		if ((*status & TXREADY_MASK)>>6 == 0b1){
			//*txdata = 'C'; //;
			*txdata = *string;
			string++;
			if(*string == '\0') break;
			//*txdata = 0x67; break;
		}

	}


	printf("Status register value after: %d\n", *status);

  return 0;
}
#endif

#ifdef PROJECT4
int main()
{
	int* rxdata = (int *) RXADDRESS ;
	int* txdata = (int *) TXADDRESS;
	int* status = (int *) STATUSADDRESS;
	int* control = (int *) CONTROLADDRESS;
	int* divisor = (int *) DIVISORADDRESS;

	int baud_2400 = 2400;
	int divisor_2400 = CLOCK_FREQ / baud_2400 - 1;
	*divisor = divisor_2400;

	printf("Divisor for new baud rate: %d\n", *divisor);

	printf("Status register value before: %d\n", *status);

	//Wait until the ready bit is one
	//TREADY MASK is used to check the tx ready bit in the status register
	char *string = "My name is Pietro\0";

	while(1){
		if ((*status & TXREADY_MASK)>>6 == 0b1){
			*txdata = *string;
			string++;
			if(*string == '\0') break;
		}

	}


	printf("Status register value after: %d\n", *status);

  return 0;
}
#endif

#ifdef PROJECT5
int main()
{

    volatile int* rxdata = (int *) RXADDRESS;
    volatile int* txdata = (int *) TXADDRESS;
    volatile int* status = (int *) STATUSADDRESS;
    volatile int* control = (int *) CONTROLADDRESS;
    volatile int* divisor = (int *) DIVISORADDRESS;

    int baud_2400 = 2400;
    int divisor_2400 = CLOCK_FREQ / baud_2400 - 1;
    *divisor = divisor_2400;

    *control = 0;

    printf("Status register value before: %d\n", *status);

    char c[1000];
    int i = 0;

    while(1){
        int current_status = *status;

        if (current_status & ROE_MASK) {
            *status = 0;
        }

        if (current_status & RXREADY_MASK){
            char val = (char) (*rxdata & 0xFF);
            c[i] = val;
            if(val == '\0') break;
            i++;
            if (i >= 998) break;
        }
    }

    c[i+1] = '\0';

    printf("%s\n", c);
    printf("Status register value after: %d\n", *status);

    return 0;
}
#endif

#ifdef PROJECT5_2
int main()
{

    volatile int* rxdata = (int *) RXADDRESS;
    volatile int* txdata = (int *) TXADDRESS;
    volatile int* status = (int *) STATUSADDRESS;
    volatile int* control = (int *) CONTROLADDRESS;
    volatile int* divisor = (int *) DIVISORADDRESS;

    int baud_2400 = 2400;
    int divisor_2400 = CLOCK_FREQ / baud_2400 - 1;
    *divisor = divisor_2400;

    *control = 0;

    printf("Status register value before: %d\n", *status);

    char c[1000];
    int i = 0;

    while(1){
        int current_status = *status;

        if (current_status & ROE_MASK) {
            *status = 0;
        }


		char val = (char) (*rxdata & 0xFF);
		if(val != 0){
			c[i] = val;
			if (c[i] == '!') break;
			i++;
		}

		if(i== 998) break;

		//if(val == '\0') break;


    }

    c[i+1] = '\0';

    printf("%s\n", c);
    printf("Status register value after: %d\n", *status);

    return 0;
}
#endif
