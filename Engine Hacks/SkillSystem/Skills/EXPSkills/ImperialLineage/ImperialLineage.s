
.thumb
.align

.equ Thumb_Division_Func,0x080D18FC

.global ImperialLineage
.type ImperialLineage, %function
ImperialLineage:
@ This is called once per battle struct by the EXPCalcLoop.
@ r0 = current EXP, r1 = this battle struct, r2 = enemy battle struct. Return modified EXP.
push { r4, lr }
mov r4, r0
mov r0, r1
ldr r1, =ImperialLineageID
ldr r2, =SkillTester
mov lr, r2
.short 0xF800
cmp r0, #0x00
beq End
	
@EXP * 1.2
@r4 = EXP

@we gotta do integers ree
@can we power of 2 a common multiplier that creates integers?
@we cannot
@so, can we get a fraction of current exp and add it to itself enough times to get to 20% the initial value?
@nope
@fuck this, we'll do the one div func with 10
mov r0,r4
mov r1,#10
mul r0,r1
mov r1,#12
mul r0,r1
mov r1,#10
ldr r3,=Thumb_Division_Func
mov r14,r3
.short 0xF800
add r4,r0

cmp r4,#0
bne End
add r4,#1	

End:
mov r0, r4
pop { r4 }
pop { r1 }
bx r1

.ltorg
.align

