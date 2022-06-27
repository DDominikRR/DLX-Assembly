.data
do5:	.double 5
dom5:	.double -5.25
.text
addi r2, r0, -5
sub r2, r0, r2
movi2fp f12, r2
cvti2d f2, f12
subd f2, f20, f2
ld f4, do5(r0)
ld f6, dom5(r0)
trap 0