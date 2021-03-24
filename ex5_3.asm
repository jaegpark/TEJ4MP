; Jae Park, TEM4MP, Mr Wong, 2021-03-23
; This program stores sequential values and conducts a linear search onto the values 

; Initialize loop and first memory directory
LXI H,0120
MVI B,0B ; count
MVI A,20

; Store values in loop
STORE:
MOV M,A
INR A
INX H
DCR B
JNZ STORE

; Sequential search
LXI H,0120
MVI B,0B ; count

LOOP:
MOV A,M
INX H
DCR B
JZ NOTFOUND

SUI 22
JNZ LOOP ; loop back around if 22 is not found

; if found, set values
MVI A,01
STA 1001
JMP END

NOTFOUND: 
MVI A,00
STA 1001
JMP END

END:
HLT