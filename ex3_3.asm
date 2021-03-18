; Jae Park, TEJ4MP, Mr. Wong, 2021-03-15
; This program adds two 16-bit numbers, stores the result in HL registers, and carry in D register

; Add last two digits together
ADI 56
ADI C5

; Move result into L Register
MOV L,A

; Reset accumulator
MVI A,00

; Add first two digits with carry from previous operation
ADC A
ADI 82
ADI 93

; More result into H Register
MOV H,A

; Reset accumulator
MVI A,00

; Get carry and store carry in D
ADC A
MOV D,A

HLT
