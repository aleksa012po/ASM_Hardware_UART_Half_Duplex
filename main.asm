;
; HardverskiUART.asm
;
; Created: 17/09/2022 20:08:09
; Author : Aleksandar Bogdanovic
;

//Arduino Asembler, Hardverski UART. Upoznavanje, koriscenje, zamena u projektu softverskog za hardverski

.include "m328pdef.inc"

.cseg
.org 0x0000
rjmp init

/*
9600 baud rate
Asynchronous mode
Velicina karaktera: 8 bita
Bez parity bita
1 stop bit
Ukljucujemo RxB i TxB
Half duplex mode
*/

init:
	clr r22								
	sts UCSR0A, r22						// UART Control Status Register A
	sts UBRR0H, r22						// UART Baud Rate Register HIGH byte
	ldi r22, 103						// r22=103
	sts UBRR0L, r22						// LOW byte, setujemo Baud rate na 9600
	ldi r22, (1<<RXEN0) | (1<<TXEN0)	// r22 = 0x00011000
	sts UCSR0B, r22						// Ukljucujemo RxB i TxB
	ldi r22, (1<<UCSZ00) | (1<<UCSZ01)	// r22 = 0x00000110
	sts UCSR0C, r22						// asynch, 8 bit, no parity

check:
	lds r23, UCSR0A						// loop check char
	sbrs r23, RXC0
	rjmp check


citanje_pisanje:
	lds r18, UDR0						//citanje
	sts udr0, r18						//pisanje
	

delay:									//delay = 10ms
	ldi  r20, 208
    ldi  r21, 202
L1: dec  r21
    brne L1
    dec  r20
    brne L1
    nop
	rjmp init


