.data
dane: .word 120,20
.text

lw r6, dane(r0)
lw r11, dane+4(r0)

add r16, 6, r0