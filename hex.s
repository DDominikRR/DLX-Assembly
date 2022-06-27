.data
et:	.word 0x1234
.text
lw r1, et(r0)
addi r2, r1, 20
trap 0