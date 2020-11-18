#include <stdint.h>

#define RCC_IOPENR  (unsigned long *)0x40021034

#define GPIOA_MODER (unsigned long *)0x50000000
#define GPIOA_ODR   (unsigned long *)0x50000014

#define GPIOC_MODER (unsigned long *)0x50000800
#define GPIOC_IDR   (unsigned long *)0x50000810

uint8_t num = 0x55;
uint8_t num2;

extern void _print_ch(char *ptr);  // somewhere there is a function called _print_ch that has a single parameter that is a pointer to a character

void print_ch(char ch)
{
    _print_ch(&ch);// passing in the address of where the character is located
}

void main()
{
/* enable register clocks for GPIOA and GPIOA */
    *RCC_IOPENR |= 0x00000005UL;

    /* configure PA5 as output pin */
    *GPIOA_MODER &= ~0x00000C00UL;
    *GPIOA_MODER |= 0x00000400UL;

    /* configure PC13 as an input pin */
    *GPIOC_MODER &= ~0x0C000000UL;

	while(1)
	{
	    /* check if user button to be pressed */
	    if((*GPIOC_IDR & 0x2000UL) == 0) {
            /* turn LED ON (PA5) */
            *GPIOA_ODR |= 0x20UL;
        } else {
            /* turn LED OFF (PA5) */
            *GPIOA_ODR &= ~0x20UL;
        }

//#ifndef NDEBUG
        print_ch('X');
//#endif
	}	
}	
