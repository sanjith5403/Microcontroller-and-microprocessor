ORG 0000H
MAIN:SETB P0.2; Configuring P0.2 as input
MOV DPTR,#0100H; Move address 0100H to DPTR
MOV R7,#0AH; Store the total number of datas in 0100H
READ:CLR A; Clear the accumulator
MOVC A,@A+DPTR; Move 
MOV P3,A; Move Accumulator content to Port 3
INC DPTR; Increment the DPTR content
LOOP:JB P0.2,LOOP; Infinite loop to check if the switch is ON
LOOP1:JNB P0.2,LOOP1; Infinite loop to check if the switch is OFF
MOV A,P3; Move the Port 3 content to Accumulator
CPL A; Complement Accmulator
MOV P3,A; Move Accumulator content to Port 3
DJNZ R7,READ; Don't jump if data in R7 is non zero 
SJMP MAIN; Short jump to label MAIN

ORG 0100H
DB 0XC0,0XF9,0XA4,0XB0,0X99,0X92,0X82,0XD8,0X80,0X90; Defining the Bytes of data
