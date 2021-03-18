; Jae Park, TEJ4MP, Mr. Wong, 2021-03-15
; This program adds two 8 bit numbers (57 and D9) and stores the sum in register B and the carry in register C

; Add numbers immediate to accumulator
ADI 57
ADI D9

; Move result into register B
MOV B,A

; Reset A to 0
MVI A,00

; Add carry to A and move to C
ADC A
MOV C,A
HLT