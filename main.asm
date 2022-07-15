SECTION .text
GLOBAL start

start:

PUSH DWORD STARTMSGLENGTH
PUSH DWORD STARTMSG
PUSH DWORD 1
MOV EAX, 4
SUB ESP, 4
INT 0X0

MOV [counter], BYTE 1

next_number:
MOV A1, [counter]
XOR AH, AH
MOV B1, 3
DIV B1
CMP AH, 0
JHE NOT_FIZZ

MOV AL, [counter]

