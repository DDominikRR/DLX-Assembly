;28->44 ( 23->7)
.data

licznik:    .word      17
; tablica1:  .word  50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1
tablica:    .word    23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7
suma:     .space     4
;14
.text

addi r24, r0, tablica

lw r25, licznik

addi r26, r0, 0

tu:

lw r14, 0(r24)

add r26, r26, r14

addi r24, r24, #4

subi r25, r25, #1

bnez r25, tu

sw suma, r26

trap 0