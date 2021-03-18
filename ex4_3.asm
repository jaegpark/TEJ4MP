; Jae Park, TEM4MP, Mr Wong, 2021-03-17
; This program implements an if else statement that compares the value of a variable called "amount"

; Load value of amount 
LDA 0100

; Compare amount to 30 base 10
CPI 1E
; Jump to else if the value is less than 30
JM ELSE

; If above or equal to 30, set value to 10 base 10 and close if
MVI A,0A
JMP END

ELSE: 
MVI A,14

END: 
STA 0100
HLT