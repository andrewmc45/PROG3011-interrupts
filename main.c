#include <stdint.h>

#define RCC_IOPENR (unsigned long *)0x40021034

#define GPIOA_MODER (unsigned long *)0x50000000
#define GPIOA_ODR (unsigned long *)0x50000014
#define GPIOC_MODER (unsigned long *)
#define GPIOC_ODR (unsigned long *)
uint8_t num = 0x55;
uint8_t num2;

void main()
{
/* enable register clocks for GPIOA and GPIOA */
    *RCC_IOPENR |= 0x00000005UL;

    /* configure PA5 as output pin */
    *GPIOA_MODER &= ~0x00000C00UL;
    *GPIOA_MODER |= 0x00000400UL;

    /* configure PC5 as output pin */
    *GPIOC_MODER &= ~0x00000C00UL;
    *GPIOC_MODER |= 0x00000400UL;

	while(1)
	{
/* turn LED ON (PA5) */
		*GPIOA_ODR |= 0x20UL;

        /* delay */
        for(int i=0; i<100000; i++);

        /* turn LED OFF (PA5) */
        *GPIOA_ODR &= ~0x20UL;

        /* delay */
        for(int i=0; i<100000; i++);
	}	
}	
