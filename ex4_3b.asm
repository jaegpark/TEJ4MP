; Jae Park, TEJ4MP, Mr Wong, 2021-03-17
; This program implements a for statement that adds onto a sum variable while incrementing by 2

; store sum variable into C
MVI C,00

; initialize i = 11
MVI A,0B

; main for loop 
START:

; compare if A-22 is positive, if so, break loop and go to END
CPI 16
JP END

; else, continue for loop operation
MOV B,A
ADD C
MOV C,A
MOV A,B
ADI 02
JMP START

; store the contents of Register C into desired memory location
END: 
MOV A,C
STA 0200
HLT


