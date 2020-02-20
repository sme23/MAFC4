.thumb
.align

.global Competitive
.type Competitive, %function
Competitive:
push {r4-r7,r14}
mov r4,r0 @attacker
mov r5,r1 @defender

ldr r0,=SkillTester
mov r14,r0
mov r0,r4
ldr r1,=CompetitiveIDLink
ldrb r1,[r1]
.short 0xF800
cmp r0,#0
beq GoBack

  @check for allies in range:
  ldr r0, =AuraSkillCheck
  mov lr, r0
  mov r0, r4 @unit
  mov r1, #0 @always true
  mov r2, #0 @same_team
  mov r3, #2 @range
  .short 0xf800
  cmp r0, #0
  beq GoBack

@Crit+10, Atk+3, and Def+1
mov r0,r4
add r0,#0x5A @atk
ldrh r1,[r0]
add r1,#3
strh r1,[r0]
add r0,#2 @def
ldrh r1,[r0]
add r1,#1
strh r1,[r0]
add r0,#10 @crit
ldrh r1,[r0]
add r1,#10
strh r1,[r0]

GoBack:
pop {r4-r7}
pop {r0}
bx r0

.ltorg
.align

