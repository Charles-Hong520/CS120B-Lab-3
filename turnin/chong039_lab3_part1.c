/*	Author: Charles Hong
 *  Partner(s) Name: N/A
 *	Lab Section: 022
 *	Assignment: Lab #3  Exercise #1
 *	Exercise Description: Count pins on A and B
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
	DDRB = 0x00; PORTB = 0xFF; // Configure port B's 8 pins as inputs
	DDRC = 0xFF; PORTC = 0x00; // Configure port C's 8 pins as outputs
	unsigned char tmpA = 0x00; 
	unsigned char tmpB = 0x00; 

	while(1) {
		// 1) Read input
		tmpA = PINA & 0xFF;
		tmpB = PINB & 0xFF;
		unsigned char tmpC = 0x00; 

		// 2) Perform computation
		for(int i = 0; i < 8; i++) {
			tmpC += (tmpA>>i) & 0x01;
			tmpC += (tmpB>>i) & 0x01;
		}
		
		// 3) Write output
		PORTC = tmpC;
	}
	return 0;
}
