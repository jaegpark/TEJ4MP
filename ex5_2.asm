; Jae Park, TEJ4MP, Mr. Wong, 2021-03-23
; This program sorts 4 values in memory in descending order with bubble sort

; Initialize values
MVI A,03
STA 0250
MVI A,02
STA 0251
MVI A,06
STA 0252
MVI A,01
STA 0253

; Sort with bubble sort

MVI B,03

MAINLOOP:
LXI H,0250
MOV C,B

INNERLOOP:
MOV A,M
INX H
CMP M

; If current index > next index, no swap to have DECREASING order
JNC NOSWAP

; else swap the values
MOV D,M
MOV M,A
DCX H
MOV M,D
INX H

NOSWAP:
DCR C
; continue inner loop if C (inner loop counter) isn't 0
JNZ INNERLOOP

DCR B
; decrement outer loop count
JNZ MAINLOOP

HLT