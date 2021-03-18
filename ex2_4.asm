;Jae Park, TEJ4MP, Mr. Wong, 2021-03-11
;This program subtracts 57 in base 10 from F2 in hex and stores the result in register B.

MVI A,F2
SUI 39
MOV B,A

HLT