	#include<p18F4550.inc>

			org 0x00
			goto start
			org 0x08
			retfie
			org 0x18
			retfie

onled1	bsf		PORTD,0,A
		return
onled2	bsf		PORTD,1,A
		return
	
nabilicious		CALL	onled1
				BRA		checki

nabilicious1	CALL	onled2
				BRA		checko
			
start		CLRF	TRISD, A
			SETF	TRISB, A
			CLRF	PORTD, A

checki		BTFSS	PORTB, 0, A
			BRA		nabilicious
			CLRF	PORTD, A
checko		BTFSS	PORTB, 1, A
			BRA		nabilicious1
			CLRF	PORTD, A
			BRA		checki
	
			NOP
			END