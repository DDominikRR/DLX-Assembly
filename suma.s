.data
tabA:	.word 1,2,3,4,5,6,7,8,9,10,11,12
sumA:	.word 0
.text
main:
  addi r1, r0, tabA
  addi r30, r0, 0
  p1:
	lw r2, 0(r1)
	add r30, r30, r2
	addi r1, r1, 4
	slti r20, r1, sumA
	bnez r20, p1
  sw sumA(r0), r30
trap 0