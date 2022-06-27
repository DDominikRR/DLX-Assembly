.data
dane: .word 120,20
.text

lw r6, dane(r0)
lw r11, dane+4(r0)


add r16, r6, r0
sub r17, r16, r11
and r18, r16, r6
or  r19, r16, r11
xor r20, r16, r11
mult r16, r11, r6
bnez r0, tam
sub r17, r16, r18
tam:
addi r11, r0, #100
beqz r0, tam2
sub r16, r6, r11
mult r17, r18, r19
tam2:
addi r11, r0, #100
trap 0
