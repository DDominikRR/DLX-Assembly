;dozwolone rejestry: nr=14: r0,r14,r19,r24,r25,r26,r27,r28
;przedzial 140-420
.data
dane: .word 280,140
.text
; przygotuj dane
lw r14, dane(r0)
lw r19, dane+4(r0)

add r24, r19, r0
sub r25, r14, r24
xor r26, r19, r14
and r27, r14, r14
or r28, r14, r19
bnez r0,tam
mult r24,r25,r14
tam:
beqz r0,tam2
mult r27,r28,r19
tam2:
trap 0