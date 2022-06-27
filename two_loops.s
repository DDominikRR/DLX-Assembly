.data
TA: .space 560
TB: .space 520
suma: .double 0

.text

add r20,r0,#140
add r2,r0,#2205
add r1,r0,TA

loop1:  
	sw  0(r1),r2
	addi r1, r1,#4  
	add r2,r2,#1
	subi r20,r20,#1 
 
	bnez r20,loop1

add r20,r0,#130
add r2,r0,TB
add r3,r0,TA
add r10,r0,#6
loop2:
	lw r4,4(r3)
	lw r7,8(r3)
	lw r6,20(r3)
	addi r3,r3,#4
	add r8,r4,r7
	subi r20,r20,#1
	add r9,r8,r6
	mult r9,r9,r10 
        sw 0(r2),r9
	addi r2,r2,#4
	
	bnez r20,loop2

add r20,r0,#130
add r3,r0,TB
add r5,r0,0
loop3:
	lw r4,0(r3)
	add r5,r5,r4
	addi r3,r3,#4
	subi r20,r20,#1

	bnez r20,loop3

;sw suma,r5
movi2fp f5,r5
;cvti2f f5,f4
cvti2d f6,f5
sd suma(r0),f6
add r10,r0,suma
sd 0(r10), f6
trap 0;