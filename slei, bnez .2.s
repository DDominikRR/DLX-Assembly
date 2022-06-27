.data
tabA:	.word 1,2,3,4,5,6,7,8,9,10,11,12
tabB:	.space 48
sumTb:	.word 0
.text
addi r1,r0, tabA
addi r11, r0, tabB
addi r3, r3, 5
addi r4, r0, 0
addi r5, r0, 0
p1:
	lw r2, 0(r1)
	mult r4, r2, r3
	add r5, r4, r5
	sw 0(r11), r4
	addi r1, r1, 4
	addi r11, r11, 4
	slei r20, r1, tabB
	bnez r20, p1
sw sumTb(r0), r5
trap 0