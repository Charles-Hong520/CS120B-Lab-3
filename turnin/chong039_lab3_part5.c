/*	Author: Charles Hong
 *  Partner(s) Name: N/A
 *	Lab Section: 022
 *	Assignment: Lab #3  Exercise #5
 *	Exercise Description: Challenge: weight sensor
 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif


int main(void) {
	DDRD = 0x00; PORTD = 0xFF; // Configure port D's 8 pins as inputs
	DDRB = 0xFE; PORTB = 0x01; // B2B1 outputs, B0 input
	unsigned short tmpD = 0x00; 
	unsigned short tmpB = 0x00; 

	while(1) {
		// 1) Read input
		tmpD = (PIND & 0xFF)<<1;
		tmpB = (PINB & 0x01);
		// 2) Perform computation

		unsigned short us_weight = tmpD + tmpB;
		unsigned char out = 0x00;
		if(us_weight >= 70) out = 0x02;
		else if(us_weight>5 && us_weight < 70) out=0x04;
		
		// 3) Write output
		PORTB = out;
	}
	return 0;
}