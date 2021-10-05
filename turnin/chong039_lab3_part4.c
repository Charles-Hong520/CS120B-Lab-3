/*	Author: Charles Hong
 *  Partner(s) Name: N/A
 *	Lab Section: 022
 *	Assignment: Lab #3  Exercise #4
 *	Exercise Description: Challenge: adjust nibbles
 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif


int main(void) {
	DDRA = 0x00; PORTA = 0xFF; // Configure port A's 8 pins as inputs
	DDRB = 0xFF; PORTB = 0x00; // Configure port B's 8 pins as outputs
	DDRC = 0xFF; PORTC = 0x00; // Configure port C's 8 pins as outputs
	unsigned char tmpA = 0x00; 


	while(1) {
		// 1) Read input
		tmpA = PINA & 0xFF;
		unsigned char tmpB = 0x00; 
		unsigned char tmpC = 0x00; 
		// 2) Perform computation
		tmpB = (tmpA & 0xF0) >> 4;
		tmpC = (tmpA & 0x0F) << 4;
		// 3) Write output
		PORTB = tmpB;
		PORTC = tmpC;
	}
	return 0;
}