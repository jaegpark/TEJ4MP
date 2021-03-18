; Jae Park, TEJ4MP, Mr. Wong, 2021-03-11

; Store 3A and 1B into 0101 and 0102
MVI A,3A
STA 0101
MVI A,1B
STA 0102

; Load 0101 and 0102 into registers B and C
LDA 0101
MOV B,A
LDA 0102
MOV C,A

; Add B onto A, which already contains the value of C
ADD B

; Store into 0103
STA 0103

HLT
