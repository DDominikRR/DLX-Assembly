.data
l1:	.double -5.25

.text
addi r2, r0, -5
sub r2, r0, r2
movi2fp f0, r2
cvti2f f1, f0
cvti2d f2, f0
ld f4, l1(r0)
subf f1, f10, f1
subd f2, f10, f2
trap 0