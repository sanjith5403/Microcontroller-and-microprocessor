ORG 0000H
SETB P2.0; Configure Port pin P2.0
MOV P0,#0X0F0; Move data F0 to Port P0
READ:MOV A,P0; Move Port P0 data to Acculumator
ORL A,#0X0F; Perform OR operation on Accumulaor with data 0F
CPL A; Complement Accumulator content
JNZ LED_ON; Jump to label LED_ON if data is non zero****INSTEAD OF THESE 3 LINES ALSO (CJNE A,#0XFO,LED_ON) CAN BE USED
SETB P2.0; Set port pin P2.0 (for led output)
SJMP READ; Jump back to label READ
LED_ON:CLR P2.0; clear port pin P2.0 with Label LED_ON 
SJMP READ; Jump back to label READ
