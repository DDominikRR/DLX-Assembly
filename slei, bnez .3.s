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
	lw r12, 4(r1)
	lw r22, 8(r1)
	lw r13, 12(r1)
	addi r1, r1, 16
	mult r4, r2, r3
	mult r14, r12, r3
	mult r23, r22, r3
	mult r24, r13, r3
	
	addi r11, r11, 16
	add r5, r4, r5
	add r6, r14, r5
	add r7, r6, r23
	add r8, r7, 24
	sw -16(r11), r4
	sw -12(r11), r14
	sw -8(r11), r23
	slei r20, r1, tabB
	sw -4(r11), r24
	
	bnez r20, p1
sw sumTb(r0), r5
trap 0