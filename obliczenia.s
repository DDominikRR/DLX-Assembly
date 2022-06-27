.data
dane: .word 2,3,4,5,6,7,8,9
.text
; przygotuj dane
lw r22, dane(r0)
lw r23, dane+4(r0)
lw r24, dane+8(r0)
lw r25, dane+12(r0)
; oblicz - r1 w każdym z 5 rozkazów
; w pierwszym to wynik, dalej tylko argument
add r1, r22, r0
sub r2, r1, r22
and r3, r1, r23
or r4, r1, r24
xor r5, r1, r25
trap 0
