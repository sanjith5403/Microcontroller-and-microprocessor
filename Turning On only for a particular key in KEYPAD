ORG 0000H
SETB P2.0; Configure P2.0
READ:MOV P0,#0XF0; Move data F0 to Port P0 with label READ
MOV A,P0; Move content of Port P0 to Accumulator
MOV R7,A; Move Accumulator content to rehister R7
MOV P0,#0X0F; Move data 0F to Port P0
MOV A,P0; Move content of Port P0 to Accumulator
ORL A,R7; Perform OR operation between Accumulator and R7 register
CJNE A,#0XD7,LED_OFF; Compare and jump label LED_OFF if Accumulator is not equal to data given
CLR P2.0; clear Port P2.0
SJMP READ; Jump back to label READ
LED_OFF:SETB P2.0; Set Port pin P2.0 with label LED_OFF
SJMP READ; Jump back to label READ
