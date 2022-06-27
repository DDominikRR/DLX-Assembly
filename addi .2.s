.data
d:	.word 100
.text
lw r1, d(r0)
addi r2, r1, 10
trap 0