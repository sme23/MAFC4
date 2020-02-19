.thumb
.include "mss_defs.s"

.equ SS_BloodText,PersonalInfoTable+4
.set HolyBloodNameGetter, SS_BloodText+4
.set SS_BiorhythmText, HolyBloodNameGetter+4
.set BiorhythmNameGetter, SS_BiorhythmText+4
.set HolyBloodVoracityGetter, BiorhythmNameGetter+4

page_start

draw_textID_at 13, 3, textID=0xd4c, width=16, colour=Blue

@ first like
mov    r0,r8
ldr    r1,[r0]               @load character pointer
ldrb   r1,[r1,#0x4]	         @load character number
adr    r0,PersonalInfoTable  @load first like
ldr    r0,[r0]
mov    r2,#12
mul    r1,r2
@add    r1,#2
ldrh   r0,[r0,r1]		@load textid
mov    r3, r7
mov r1, #12
ldrh r2,[r3] @current number
add r2,r1 @for the next one.
strb r1, [r3, #4] @store width
strb r2, [r3, #8] @assign the next one.
blh BufferText
mov    r2, #0x0
str    r2, [sp]
str    r0, [sp, #4]
mov    r2, #0 @colour
mov    r0, r7
ldr    r1, =(tile_origin+(0x20*2*3)+(2*17))
mov    r3, #0
blh    DrawText, r4
add    r7, #8

@ second like
mov    r0,r8
ldr    r1,[r0]               @load character pointer
ldrb   r1,[r1,#0x4]	         @load character number
adr    r0,PersonalInfoTable  @load first like
ldr    r0,[r0]
mov    r2,#12
mul    r1,r2
add    r1,#2
ldrh   r0,[r0,r1]		@load textid
mov    r3, r7
mov r1, #12
ldrh r2,[r3] @current number
add r2,r1 @for the next one.
strb r1, [r3, #4] @store width
strb r2, [r3, #8] @assign the next one.
blh BufferText
mov    r2, #0x0
str    r2, [sp]
str    r0, [sp, #4]
mov    r2, #0 @colour
mov    r0, r7
ldr    r1, =(tile_origin+(0x20*2*5)+(2*17))
mov    r3, #0
blh    DrawText, r4
add    r7, #8

draw_textID_at 13, 7, textID=0xd4d, width=16, colour=Blue

@ first dislike
mov    r0,r8
ldr    r1,[r0]               @load character pointer
ldrb   r1,[r1,#0x4]	         @load character number
adr    r0,PersonalInfoTable  @load first like
ldr    r0,[r0]
mov    r2,#12
mul    r1,r2
add    r1,#4
ldrh   r0,[r0,r1]		@load textid
mov    r3, r7
mov r1, #12
ldrh r2,[r3] @current number
add r2,r1 @for the next one.
strb r1, [r3, #4] @store width
strb r2, [r3, #8] @assign the next one.
blh BufferText
mov    r2, #0x0
str    r2, [sp]
str    r0, [sp, #4]
mov    r2, #0 @colour
mov    r0, r7
ldr    r1, =(tile_origin+(0x20*2*7)+(2*17))
mov    r3, #0
blh    DrawText, r4
add    r7, #8

@ second dislike
mov    r0,r8
ldr    r1,[r0]               @load character pointer
ldrb   r1,[r1,#0x4]	         @load character number
adr    r0,PersonalInfoTable  @load first like
ldr    r0,[r0]
mov    r2,#12
mul    r1,r2
add    r1,#6
ldrh   r0,[r0,r1]		@load textid
mov    r3, r7
mov r1, #12
ldrh r2,[r3] @current number
add r2,r1 @for the next one.
strb r1, [r3, #4] @store width
strb r2, [r3, #8] @assign the next one.
blh BufferText
mov    r2, #0x0
str    r2, [sp]
str    r0, [sp, #4]
mov    r2, #0 @colour
mov    r0, r7
ldr    r1, =(tile_origin+(0x20*2*9)+(2*17))
mov    r3, #0
blh    DrawText, r4
add    r7, #8

draw_textID_at 13, 11, textID=0xd4f, width=16, colour=Blue

@ age
mov    r0,r8
ldr    r1,[r0]               @load character pointer
ldrb   r1,[r1,#0x4]	         @load character number
adr    r0,PersonalInfoTable  @load first like
ldr    r0,[r0]
mov    r2,#12
mul    r1,r2
add    r1,#8
ldrh   r0,[r0,r1]		@load textid
mov    r3, r7
mov r1, #5
ldrh r2,[r3] @current number
add r2,r1 @for the next one.
strb r1, [r3, #4] @store width
strb r2, [r3, #8] @assign the next one.
blh BufferText
mov    r2, #0x0
str    r2, [sp]
str    r0, [sp, #4]
mov    r2, #0 @colour
mov    r0, r7
ldr    r1, =(tile_origin+(0x20*2*11)+(2*16))
mov    r3, #0
blh    DrawText, r4
add    r7, #8

draw_textID_at 21, 11, textID=0xd4e, width=16, colour=Blue

@ height
mov    r0,r8
ldr    r1,[r0]               @load character pointer
ldrb   r1,[r1,#0x4]	         @load character number
adr    r0,PersonalInfoTable  @load first like
ldr    r0,[r0]
mov    r2,#12
mul    r1,r2
add    r1,#10
ldrh   r0,[r0,r1]		@load textid
mov    r3, r7
mov r1, #5
ldrh r2,[r3] @current number
add r2,r1 @for the next one.
strb r1, [r3, #4] @store width
strb r2, [r3, #8] @assign the next one.
blh BufferText
mov    r2, #0x0
str    r2, [sp]
str    r0, [sp, #4]
mov    r2, #0 @colour
mov    r0, r7
ldr    r1, =(tile_origin+(0x20*2*11)+(2*25))
mov    r3, #0
blh    DrawText, r4
add    r7, #8

ldr r0, SS_BloodText
draw_textID_at 17, 14 @Blood label text

@pass in textid in r0
ldr r0, HolyBloodNameGetter
mov r14,r0
.short 0xF800
draw_textID_at 21, 14, colour=White, width=16

ldr r0, HolyBloodVoracityGetter
mov r14,r0
.short 0xF800
cmp r0,#0
beq NoIconDraw
draw_icon_at 15, 14, number=0xCB
NoIconDraw:

ldr r0, SS_BiorhythmText
draw_textID_at 17, 16 @Blood label text

@pass in textid in r0
ldr r0, BiorhythmNameGetter
mov r14,r0
.short 0xF800
draw_textID_at 21, 16, colour=White, width=16

@draw_textID_at 16, 18, textID=0xd4b, width=16, colour=Green

page_end

.align
.ltorg
PersonalInfoTable:
