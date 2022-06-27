.data
dd:	.double 0
.text
ld f0, dd(r0)
addi r2, r0,-10
sgei r3, r2, 0
bnez r3, et
sub r2, r0, r2
et:
movi2fp f10, r2
cvti2d f2,f10
subd f2, f0, f2
trap 0