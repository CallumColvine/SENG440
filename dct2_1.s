	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"dct2_1.c"
	.global	__aeabi_i2d
	.text
	.align	2
	.global	stage1R
	.type	stage1R, %function
stage1R:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r8, .L3
	mov	r7, r0, asl #5
	add	r7, r8, r7
	ldr	r6, [r8, r0, asl #5]
	ldr	r5, [r7, #28]
	mov	r4, r0
	add	r0, r5, r6
	bl	__aeabi_i2d
	ldr	r3, .L3+4
	stmia	r3, {r0-r1}
	rsb	r0, r5, r6
	bl	__aeabi_i2d
	mov	r3, r4, asl #3
	add	r3, r3, #1
	ldr	r6, [r8, r3, asl #2]
	ldr	r5, [r7, #24]
	ldr	r3, .L3+8
	stmia	r3, {r0-r1}
	add	r0, r5, r6
	bl	__aeabi_i2d
	ldr	r3, .L3+12
	stmia	r3, {r0-r1}
	rsb	r0, r5, r6
	bl	__aeabi_i2d
	mov	r3, r4, asl #2
	add	r3, r3, #1
	ldr	r6, [r8, r3, asl #3]
	ldr	r5, [r7, #20]
	ldr	r3, .L3+16
	stmia	r3, {r0-r1}
	add	r0, r5, r6
	bl	__aeabi_i2d
	ldr	r3, .L3+20
	stmia	r3, {r0-r1}
	rsb	r0, r5, r6
	bl	__aeabi_i2d
	mov	r4, r4, asl #1
	add	r4, r4, #1
	ldr	r3, .L3+24
	ldr	r6, [r8, r4, asl #4]
	ldr	r5, [r7, #12]
	stmia	r3, {r0-r1}
	add	r0, r6, r5
	bl	__aeabi_i2d
	ldr	r3, .L3+28
	stmia	r3, {r0-r1}
	rsb	r0, r6, r5
	bl	__aeabi_i2d
	ldr	r3, .L3+32
	stmia	r3, {r0-r1}
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	x0
	.word	x7
	.word	x1
	.word	x6
	.word	x2
	.word	x5
	.word	x3
	.word	x4
	.size	stage1R, .-stage1R
	.global	__aeabi_dadd
	.global	__aeabi_dsub
	.global	__aeabi_dmul
	.align	2
	.global	stage2R
	.type	stage2R, %function
stage2R:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r8, .L7
	ldr	sl, .L7+4
	ldmia	r8, {r6-r7}
	ldmia	sl, {r4-r5}
	sub	sp, sp, #36
	mov	r2, r4
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r4
	stmia	r8, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldr	r8, .L7+8
	ldr	r9, .L7+12
	ldmia	r8, {r6-r7}
	ldmia	r9, {r4-r5}
	stmia	sl, {r0-r1}
	mov	r2, r4
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r4
	stmia	r8, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldr	sl, .L7+16
	ldr	r3, .L7+20
	ldmia	r3, {r4-r5}
	ldmia	sl, {r2-r3}
	stmia	sp, {r2-r3}
	ldr	r3, .L7+24
	stmia	r9, {r0-r1}
	ldmia	r3, {r8-r9}
	ldr	r3, .L7+28
	mov	r2, r4
	ldmia	r3, {r6-r7}
	ldmia	sp, {r0-r1}
	mov	r3, r5
	str	r4, [sp, #8]
	str	r5, [sp, #12]
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	stmia	sl, {r0-r1}
	mov	r3, r7
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	ldmia	sp, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	ldr	r3, .L7+32
	ldmia	r3, {r4-r5}
	ldr	sl, .L7+36
	str	r4, [sp, #16]
	str	r5, [sp, #20]
	ldr	r3, .L7+40
	ldr	r5, .L7+28
	ldmia	sl, {r6-r7}
	stmia	r5, {r0-r1}
	ldmia	r3, {r1-r2}
	ldr	ip, .L7+44
	str	r1, [sp, #24]
	str	r2, [sp, #28]
	mov	r0, r6
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r1, r7
	stmia	ip, {r6-r7}
	bl	__aeabi_dmul
	ldr	fp, .L7+48
	ldmia	fp, {r8-r9}
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r8
	stmia	sl, {r0-r1}
	mov	r3, r9
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	stmia	fp, {r0-r1}
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	x0
	.word	x3
	.word	x1
	.word	x2
	.word	x4
	.word	cos3
	.word	sin3
	.word	x7
	.word	cos1
	.word	x5
	.word	sin1
	.word	temp
	.word	x6
	.size	stage2R, .-stage2R
	.align	2
	.global	stage3R
	.type	stage3R, %function
stage3R:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r8, .L11+16
	ldr	sl, .L11+20
	ldmia	r8, {r6-r7}
	ldmia	sl, {r4-r5}
	sub	sp, sp, #12
	mov	r2, r4
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r4
	stmia	r8, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldr	r3, .L11+24
	ldmia	r3, {r2-r3}
	adr	r5, .L11
	ldmia	r5, {r4-r5}
	stmia	sp, {r2-r3}
	ldr	r2, .L11+28
	ldr	ip, .L11+32
	stmia	sl, {r0-r1}
	mov	r3, r5
	ldmia	r2, {r0-r1}
	mov	r2, r4
	ldmia	ip, {r8-r9}
	bl	__aeabi_dmul
	ldr	ip, .L11+36
	mov	r6, r0
	mov	r7, r1
	mov	r2, r4
	mov	r3, r5
	ldmia	sp, {r0-r1}
	ldmia	ip, {sl-fp}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dmul
	mov	r2, sl
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	mov	r3, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r3, .L11+24
	mov	r2, r6
	stmia	r3, {r0-r1}
	mov	r3, r7
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	adr	r3, .L11+8
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	ldmia	sp, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r8, .L11+40
	ldr	r9, .L11+44
	ldmia	r8, {r6-r7}
	ldmia	r9, {r4-r5}
	ldr	r2, .L11+28
	mov	r3, r5
	stmia	r2, {r0-r1}
	mov	r2, r4
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r4
	stmia	r8, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldr	r8, .L11+48
	ldr	sl, .L11+52
	ldmia	r8, {r4-r5}
	ldmia	sl, {r6-r7}
	ldr	ip, .L11+56
	stmia	r9, {r0-r1}
	mov	r2, r6
	mov	r3, r7
	stmia	ip, {r4-r5}
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	stmia	r8, {r0-r1}
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	stmia	sl, {r0-r1}
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L12:
	.align	3
.L11:
	.word	1719614413
	.word	1073127582
	.word	1719614413
	.word	-1074356066
	.word	x0
	.word	x1
	.word	x2
	.word	x3
	.word	cos6
	.word	sin6
	.word	x4
	.word	x6
	.word	x7
	.word	x5
	.word	temp
	.size	stage3R, .-stage3R
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	stage4R
	.type	stage4R, %function
stage4R:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, .L15+16
	ldr	fp, .L15+20
	ldmia	r3, {r6-r7}
	ldmia	fp, {r4-r5}
	ldr	ip, .L15+24
	sub	sp, sp, #28
	mov	r8, r0
	stmia	ip, {r4-r5}
	mov	r2, r6
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	mov	r0, r4
	mov	r1, r5
	add	r5, sp, #16
	ldmia	r5, {r4-r5}
	mov	r2, r6
	mov	r3, r7
	stmia	fp, {r4-r5}
	bl	__aeabi_dsub
	ldr	r5, .L15+28
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	adr	sl, .L15
	ldmia	sl, {r9-sl}
	ldmia	r5, {r0-r1}
	ldr	ip, .L15+16
	add	r5, sp, #8
	ldmia	r5, {r4-r5}
	mov	r2, r9
	stmia	ip, {r4-r5}
	mov	r3, sl
	bl	__aeabi_dmul
	ldr	r4, .L15+32
	stmia	sp, {r0-r1}
	ldr	ip, .L15+28
	ldmia	r4, {r0-r1}
	ldmia	sp, {r4-r5}
	mov	r2, r9
	stmia	ip, {r4-r5}
	mov	r3, sl
	bl	__aeabi_dmul
	adr	r6, .L15+8
	ldmia	r6, {r5-r6}
	ldr	r3, .L15+36
	ldr	r4, .L15+32
	mov	r9, r0
	mov	sl, r1
	mov	r2, r5
	ldmia	r3, {r0-r1}
	stmia	r4, {r9-sl}
	mov	r3, r6
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	ldr	r7, .L15+40
	mov	r2, r5
	str	r0, [r7, r8, asl #5]
	mov	r3, r6
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	mov	r4, r8, asl #3
	ldr	r3, .L15+44
	add	r4, r4, #1
	str	r0, [r7, r4, asl #2]
	mov	r2, r5
	ldmia	r3, {r0-r1}
	mov	r3, r6
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	mov	r4, r8, asl #2
	add	r4, r4, #1
	str	r0, [r7, r4, asl #3]
	mov	r2, r5
	mov	r3, r6
	mov	r0, r9
	mov	r1, sl
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	mov	r4, r8, asl #5
	ldr	r3, .L15+48
	add	r4, r7, r4
	mov	r2, r5
	str	r0, [r4, #12]
	ldmia	r3, {r0-r1}
	mov	r3, r6
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	mov	r8, r8, asl #1
	add	r8, r8, #1
	mov	r2, r5
	mov	r3, r6
	str	r0, [r7, r8, asl #4]
	ldmia	sp, {r0-r1}
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	ldr	r3, .L15+52
	mov	r2, r5
	str	r0, [r4, #20]
	ldmia	r3, {r0-r1}
	mov	r3, r6
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	mov	r2, r5
	str	r0, [r4, #24]
	mov	r3, r6
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	str	r0, [r4, #28]
	add	sp, sp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L16:
	.align	3
.L15:
	.word	1719614413
	.word	1073127582
	.word	1719614413
	.word	1074176158
	.word	x4
	.word	x7
	.word	temp
	.word	x6
	.word	x5
	.word	x0
	.word	.LANCHOR0
	.word	x2
	.word	x1
	.word	x3
	.size	stage4R, .-stage4R
	.align	2
	.global	stage1C
	.type	stage1C, %function
stage1C:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r5, .L19
	add	r3, r0, #56
	ldr	r7, [r5, r3, asl #2]
	ldr	r6, [r5, r0, asl #2]
	mov	r4, r0
	add	r0, r7, r6
	bl	__aeabi_i2d
	ldr	r3, .L19+4
	stmia	r3, {r0-r1}
	rsb	r0, r7, r6
	bl	__aeabi_i2d
	add	r2, r4, #48
	add	r3, r4, #8
	ldr	r6, [r5, r2, asl #2]
	ldr	r7, [r5, r3, asl #2]
	ldr	r3, .L19+8
	stmia	r3, {r0-r1}
	add	r0, r6, r7
	bl	__aeabi_i2d
	ldr	r3, .L19+12
	stmia	r3, {r0-r1}
	rsb	r0, r6, r7
	bl	__aeabi_i2d
	add	r2, r4, #40
	add	r3, r4, #16
	ldr	r6, [r5, r2, asl #2]
	ldr	r7, [r5, r3, asl #2]
	ldr	r3, .L19+16
	stmia	r3, {r0-r1}
	add	r0, r6, r7
	bl	__aeabi_i2d
	ldr	r3, .L19+20
	stmia	r3, {r0-r1}
	rsb	r0, r6, r7
	bl	__aeabi_i2d
	add	r3, r4, #32
	add	r4, r4, #24
	ldr	r7, [r5, r3, asl #2]
	ldr	r6, [r5, r4, asl #2]
	ldr	r3, .L19+24
	stmia	r3, {r0-r1}
	add	r0, r7, r6
	bl	__aeabi_i2d
	ldr	r3, .L19+28
	stmia	r3, {r0-r1}
	rsb	r0, r7, r6
	bl	__aeabi_i2d
	ldr	r3, .L19+32
	stmia	r3, {r0-r1}
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.word	x0
	.word	x7
	.word	x1
	.word	x6
	.word	x2
	.word	x5
	.word	x3
	.word	x4
	.size	stage1C, .-stage1C
	.align	2
	.global	stage2C
	.type	stage2C, %function
stage2C:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r8, .L23
	ldr	sl, .L23+4
	ldmia	r8, {r6-r7}
	ldmia	sl, {r4-r5}
	sub	sp, sp, #36
	mov	r2, r4
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r4
	stmia	r8, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldr	r8, .L23+8
	ldr	r9, .L23+12
	ldmia	r8, {r6-r7}
	ldmia	r9, {r4-r5}
	stmia	sl, {r0-r1}
	mov	r2, r4
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r4
	stmia	r8, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldr	sl, .L23+16
	ldr	r3, .L23+20
	ldmia	r3, {r4-r5}
	ldmia	sl, {r2-r3}
	stmia	sp, {r2-r3}
	ldr	r3, .L23+24
	stmia	r9, {r0-r1}
	ldmia	r3, {r8-r9}
	ldr	r3, .L23+28
	mov	r2, r4
	ldmia	r3, {r6-r7}
	ldmia	sp, {r0-r1}
	mov	r3, r5
	str	r4, [sp, #8]
	str	r5, [sp, #12]
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	stmia	sl, {r0-r1}
	mov	r3, r7
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	ldmia	sp, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	ldr	r3, .L23+32
	ldmia	r3, {r4-r5}
	ldr	sl, .L23+36
	str	r4, [sp, #16]
	str	r5, [sp, #20]
	ldr	r3, .L23+40
	ldr	r5, .L23+28
	ldmia	sl, {r6-r7}
	stmia	r5, {r0-r1}
	ldmia	r3, {r1-r2}
	ldr	ip, .L23+44
	str	r1, [sp, #24]
	str	r2, [sp, #28]
	mov	r0, r6
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r1, r7
	stmia	ip, {r6-r7}
	bl	__aeabi_dmul
	ldr	fp, .L23+48
	ldmia	fp, {r8-r9}
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r8
	stmia	sl, {r0-r1}
	mov	r3, r9
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	stmia	fp, {r0-r1}
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	x0
	.word	x3
	.word	x1
	.word	x2
	.word	x4
	.word	cos3
	.word	sin3
	.word	x7
	.word	cos1
	.word	x5
	.word	sin1
	.word	temp
	.word	x6
	.size	stage2C, .-stage2C
	.align	2
	.global	stage3C
	.type	stage3C, %function
stage3C:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r8, .L27+16
	ldr	sl, .L27+20
	ldmia	r8, {r6-r7}
	ldmia	sl, {r4-r5}
	sub	sp, sp, #12
	mov	r2, r4
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r4
	stmia	r8, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldr	r3, .L27+24
	ldmia	r3, {r2-r3}
	adr	r5, .L27
	ldmia	r5, {r4-r5}
	stmia	sp, {r2-r3}
	ldr	r2, .L27+28
	ldr	ip, .L27+32
	stmia	sl, {r0-r1}
	mov	r3, r5
	ldmia	r2, {r0-r1}
	mov	r2, r4
	ldmia	ip, {r8-r9}
	bl	__aeabi_dmul
	ldr	ip, .L27+36
	mov	r6, r0
	mov	r7, r1
	mov	r2, r4
	mov	r3, r5
	ldmia	sp, {r0-r1}
	ldmia	ip, {sl-fp}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dmul
	mov	r2, sl
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	mov	r3, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r3, .L27+24
	mov	r2, r6
	stmia	r3, {r0-r1}
	mov	r3, r7
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	adr	r3, .L27+8
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	ldmia	sp, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r8, .L27+40
	ldr	r9, .L27+44
	ldmia	r8, {r6-r7}
	ldmia	r9, {r4-r5}
	ldr	r2, .L27+28
	mov	r3, r5
	stmia	r2, {r0-r1}
	mov	r2, r4
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	mov	r2, r4
	stmia	r8, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldr	r8, .L27+48
	ldr	sl, .L27+52
	ldmia	r8, {r4-r5}
	ldmia	sl, {r6-r7}
	ldr	ip, .L27+56
	stmia	r9, {r0-r1}
	mov	r2, r6
	mov	r3, r7
	stmia	ip, {r4-r5}
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	stmia	r8, {r0-r1}
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	stmia	sl, {r0-r1}
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L28:
	.align	3
.L27:
	.word	1719614413
	.word	1073127582
	.word	1719614413
	.word	-1074356066
	.word	x0
	.word	x1
	.word	x2
	.word	x3
	.word	cos6
	.word	sin6
	.word	x4
	.word	x6
	.word	x7
	.word	x5
	.word	temp
	.size	stage3C, .-stage3C
	.align	2
	.global	stage4C
	.type	stage4C, %function
stage4C:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, .L31+16
	ldr	fp, .L31+20
	ldmia	r3, {r6-r7}
	ldmia	fp, {r4-r5}
	ldr	ip, .L31+24
	sub	sp, sp, #28
	mov	r8, r0
	stmia	ip, {r4-r5}
	mov	r2, r6
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	mov	r0, r4
	mov	r1, r5
	add	r5, sp, #16
	ldmia	r5, {r4-r5}
	mov	r2, r6
	stmia	fp, {r4-r5}
	mov	r3, r7
	bl	__aeabi_dsub
	ldr	r5, .L31+28
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	adr	sl, .L31
	ldmia	sl, {r9-sl}
	ldmia	r5, {r0-r1}
	ldr	ip, .L31+16
	add	r5, sp, #8
	ldmia	r5, {r4-r5}
	mov	r2, r9
	stmia	ip, {r4-r5}
	mov	r3, sl
	bl	__aeabi_dmul
	ldr	r4, .L31+32
	stmia	sp, {r0-r1}
	ldr	ip, .L31+28
	ldmia	r4, {r0-r1}
	ldmia	sp, {r4-r5}
	mov	r2, r9
	mov	r3, sl
	stmia	ip, {r4-r5}
	bl	__aeabi_dmul
	adr	r5, .L31+8
	ldmia	r5, {r4-r5}
	ldr	ip, .L31+32
	ldr	r3, .L31+36
	mov	r9, r0
	mov	sl, r1
	stmia	ip, {r9-sl}
	ldmia	r3, {r0-r1}
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	ldr	r6, .L31+40
	mov	r2, r4
	str	r0, [r6, r8, asl #2]
	mov	r3, r5
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	ldr	r2, .L31+44
	add	r3, r8, #8
	str	r0, [r6, r3, asl #2]
	ldmia	r2, {r0-r1}
	mov	r3, r5
	mov	r2, r4
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	add	r3, r8, #16
	str	r0, [r6, r3, asl #2]
	mov	r2, r4
	mov	r3, r5
	mov	r0, r9
	mov	r1, sl
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	ldr	r2, .L31+48
	add	r3, r8, #24
	str	r0, [r6, r3, asl #2]
	ldmia	r2, {r0-r1}
	mov	r3, r5
	mov	r2, r4
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	ldr	r2, .L31+52
	add	r3, r8, #32
	str	r0, [r6, r3, asl #2]
	ldmia	r2, {r0-r1}
	mov	r3, r5
	mov	r2, r4
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	add	r3, r8, #40
	str	r0, [r6, r3, asl #2]
	mov	r2, r4
	mov	r3, r5
	ldmia	sp, {r0-r1}
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	add	r3, r8, #48
	str	r0, [r6, r3, asl #2]
	mov	r2, r4
	mov	r3, r5
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__aeabi_ddiv
	bl	__aeabi_d2iz
	add	r8, r8, #56
	str	r0, [r6, r8, asl #2]
	add	sp, sp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L32:
	.align	3
.L31:
	.word	1719614413
	.word	1073127582
	.word	1719614413
	.word	1074176158
	.word	x4
	.word	x7
	.word	temp
	.word	x3
	.word	x5
	.word	x0
	.word	.LANCHOR1
	.word	x2
	.word	x1
	.word	x6
	.size	stage4C, .-stage4C
	.align	2
	.global	printArray
	.type	printArray, %function
printArray:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L38
	add	r5, r4, #256
.L34:
	ldr	r1, [r4, #0]
	ldr	r0, .L38+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #4]
	ldr	r0, .L38+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #8]
	ldr	r0, .L38+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #12]
	ldr	r0, .L38+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #16]
	ldr	r0, .L38+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #20]
	ldr	r0, .L38+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #24]
	ldr	r0, .L38+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #28]
	ldr	r0, .L38+4
	bl	printf
	mov	r0, #32
	add	r4, r4, r0
	bl	putchar
	mov	r0, #10
	bl	putchar
	cmp	r4, r5
	bne	.L34
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	.LANCHOR1
	.word	.LC0
	.size	printArray, .-printArray
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 216
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #228
	bl	clock
	adr	r4, .L48
	ldmia	r4, {r3-r4}
	ldr	r2, .L48+56
	stmia	r2, {r3-r4}
	adr	r2, .L48+8
	ldmia	r2, {r1-r2}
	ldr	r3, .L48+60
	ldr	r5, .L48+64
	stmia	r3, {r1-r2}
	ldr	ip, .L48+68
	adr	r2, .L48+16
	ldmia	r2, {r1-r2}
	adr	r4, .L48+24
	ldmia	r4, {r3-r4}
	stmia	ip, {r1-r2}
	stmia	r5, {r3-r4}
	ldr	r2, .L48+72
	adr	r4, .L48+32
	ldmia	r4, {r3-r4}
	stmia	r2, {r3-r4}
	adr	r2, .L48+40
	ldmia	r2, {r1-r2}
	ldr	r3, .L48+76
	ldr	r4, .L48+80
	mov	r5, #0
	stmia	r3, {r1-r2}
	str	r0, [sp, #124]
	str	r4, [sp, #216]
	str	r4, [sp, #220]
	str	r5, [sp, #128]
.L41:
	ldr	ip, [sp, #220]
	ldr	r5, [ip, #0]
	ldr	r4, [ip, #28]
	add	r0, r4, r5
	bl	__aeabi_i2d
	str	r0, [sp, #136]
	str	r1, [sp, #140]
	rsb	r0, r4, r5
	bl	__aeabi_i2d
	ldr	r2, [sp, #220]
	ldr	r5, [r2, #4]
	ldr	r4, [r2, #24]
	str	r0, [sp, #144]
	str	r1, [sp, #148]
	add	r0, r4, r5
	bl	__aeabi_i2d
	mov	r8, r0
	rsb	r0, r4, r5
	mov	r9, r1
	bl	__aeabi_i2d
	ldr	r3, [sp, #220]
	ldr	r5, [r3, #8]
	ldr	r4, [r3, #20]
	str	r0, [sp, #152]
	str	r1, [sp, #156]
	add	r0, r4, r5
	bl	__aeabi_i2d
	mov	r6, r0
	rsb	r0, r4, r5
	mov	r7, r1
	bl	__aeabi_i2d
	ldr	r4, [sp, #220]
	ldr	r5, [r4, #12]
	ldr	r4, [r4, #16]
	str	r0, [sp, #160]
	str	r1, [sp, #164]
	add	r0, r4, r5
	bl	__aeabi_i2d
	str	r0, [sp, #168]
	str	r1, [sp, #172]
	rsb	r0, r4, r5
	bl	__aeabi_i2d
	add	r3, sp, #168
	ldmia	r3, {r2-r3}
	mov	sl, r0
	mov	fp, r1
	add	r1, sp, #136
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r6
	str	r0, [sp, #112]
	str	r1, [sp, #116]
	mov	r3, r7
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r2, r6
	str	r0, [sp, #104]
	str	r1, [sp, #108]
	mov	r3, r7
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	ldr	r5, .L48+56
	ldmia	r5, {r6-r7}
	ldr	ip, .L48+60
	str	r0, [sp, #96]
	str	r1, [sp, #100]
	mov	r2, r6
	mov	r3, r7
	mov	r0, sl
	mov	r1, fp
	ldmia	ip, {r8-r9}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	add	r1, sp, #144
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	str	r0, [sp, #88]
	str	r1, [sp, #92]
	add	r1, sp, #144
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	ldr	r2, .L48+64
	ldr	r3, .L48+68
	ldmia	r2, {r6-r7}
	ldmia	r3, {r8-r9}
	mov	sl, r0
	mov	fp, r1
	mov	r2, r6
	mov	r3, r7
	add	r1, sp, #160
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	add	r1, sp, #152
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	str	r0, [sp, #80]
	str	r1, [sp, #84]
	add	r1, sp, #152
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	add	r1, sp, #160
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	add	r3, sp, #104
	ldmia	r3, {r2-r3}
	str	r0, [sp, #72]
	str	r1, [sp, #76]
	add	r1, sp, #112
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	ldr	r4, .L48+84
	add	r3, sp, #104
	ldmia	r3, {r2-r3}
	stmia	r4, {r0-r1}
	add	r1, sp, #112
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	ldr	r5, .L48+88
	add	r3, sp, #168
	ldmia	r3, {r2-r3}
	stmia	r5, {r0-r1}
	add	r1, sp, #136
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	adr	r3, .L48+48
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	ldr	ip, .L48+72
	ldr	r5, .L48+76
	ldmia	ip, {r8-r9}
	mov	r6, r0
	mov	r7, r1
	adr	r3, .L48+48
	ldmia	r3, {r2-r3}
	add	r1, sp, #96
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	ldmia	r5, {r4-r5}
	mov	r2, r8
	mov	r3, r9
	str	r4, [sp, #8]
	str	r5, [sp, #12]
	bl	__aeabi_dmul
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	ip, .L48+92
	mov	r2, r6
	stmia	ip, {r0-r1}
	mov	r3, r7
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	b	.L49
.L50:
	.align	3
.L48:
	.word	688824739
	.word	1072339814
	.word	967731400
	.word	1071761211
	.word	1013556746
	.word	1070135480
	.word	-805872464
	.word	1072652951
	.word	-1498502812
	.word	1071152610
	.word	-818770618
	.word	1072533611
	.word	1719614413
	.word	1073127582
	.word	cos3
	.word	sin3
	.word	cos1
	.word	sin1
	.word	cos6
	.word	sin6
	.word	.LANCHOR0
	.word	x0
	.word	x1
	.word	x2
.L49:
	adr	r3, .L51
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	add	r1, sp, #96
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .L51+16
	stmia	r2, {r0-r1}
	add	r3, sp, #72
	ldmia	r3, {r2-r3}
	add	r1, sp, #88
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	ldr	r3, .L51+20
	stmia	r3, {r0-r1}
	add	r3, sp, #72
	ldmia	r3, {r2-r3}
	add	r1, sp, #88
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	ldr	r4, .L51+24
	ldr	r5, .L51+28
	stmia	r4, {r0-r1}
	add	r3, sp, #80
	ldmia	r3, {r2-r3}
	stmia	r5, {sl-fp}
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	ldr	ip, .L51+32
	add	r3, sp, #80
	ldmia	r3, {r2-r3}
	stmia	ip, {r0-r1}
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	ldr	r2, .L51+36
	stmia	r2, {r0-r1}
	ldr	r0, [sp, #128]
	add	r3, r0, #1
	str	r3, [sp, #128]
	bl	stage4R
	ldr	r5, [sp, #220]
	ldr	r4, [sp, #128]
	add	r5, r5, #32
	cmp	r4, #8
	str	r5, [sp, #220]
	bne	.L41
	mov	ip, #0
	str	ip, [sp, #132]
.L42:
	ldr	r2, [sp, #216]
	ldr	r5, [r2, #0]
	ldr	r4, [r2, #224]
	add	r0, r4, r5
	bl	__aeabi_i2d
	str	r0, [sp, #176]
	str	r1, [sp, #180]
	rsb	r0, r4, r5
	bl	__aeabi_i2d
	ldr	r3, [sp, #216]
	ldr	r5, [r3, #32]
	ldr	r4, [r3, #192]
	str	r0, [sp, #184]
	str	r1, [sp, #188]
	add	r0, r4, r5
	bl	__aeabi_i2d
	mov	r8, r0
	rsb	r0, r4, r5
	mov	r9, r1
	bl	__aeabi_i2d
	ldr	r4, [sp, #216]
	ldr	r5, [r4, #64]
	ldr	r4, [r4, #160]
	str	r0, [sp, #192]
	str	r1, [sp, #196]
	add	r0, r4, r5
	bl	__aeabi_i2d
	mov	r6, r0
	rsb	r0, r4, r5
	mov	r7, r1
	bl	__aeabi_i2d
	ldr	ip, [sp, #216]
	ldr	r5, [ip, #96]
	ldr	r4, [ip, #128]
	str	r0, [sp, #200]
	str	r1, [sp, #204]
	add	r0, r4, r5
	bl	__aeabi_i2d
	str	r0, [sp, #208]
	str	r1, [sp, #212]
	rsb	r0, r4, r5
	bl	__aeabi_i2d
	add	r3, sp, #208
	ldmia	r3, {r2-r3}
	mov	sl, r0
	mov	fp, r1
	add	r1, sp, #176
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r6
	str	r0, [sp, #64]
	str	r1, [sp, #68]
	mov	r3, r7
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r2, r6
	str	r0, [sp, #56]
	str	r1, [sp, #60]
	mov	r3, r7
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	ldr	r2, .L51+40
	ldr	r3, .L51+44
	ldmia	r2, {r6-r7}
	ldmia	r3, {r8-r9}
	str	r0, [sp, #48]
	str	r1, [sp, #52]
	mov	r2, r6
	mov	r3, r7
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	add	r1, sp, #184
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	str	r0, [sp, #40]
	str	r1, [sp, #44]
	add	r1, sp, #184
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	ldr	r4, .L51+48
	ldmia	r4, {r6-r7}
	mov	sl, r0
	mov	fp, r1
	mov	r2, r6
	mov	r3, r7
	add	r1, sp, #200
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	ldr	r5, .L51+52
	ldmia	r5, {r8-r9}
	mov	r4, r0
	mov	r5, r1
	mov	r2, r8
	mov	r3, r9
	add	r1, sp, #192
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	str	r0, [sp, #32]
	str	r1, [sp, #36]
	add	r1, sp, #192
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	add	r1, sp, #200
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	add	r3, sp, #56
	ldmia	r3, {r2-r3}
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	add	r1, sp, #64
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	ldr	ip, .L51+56
	add	r3, sp, #56
	ldmia	r3, {r2-r3}
	stmia	ip, {r0-r1}
	add	r1, sp, #64
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	ldr	r2, .L51+60
	stmia	r2, {r0-r1}
	add	r3, sp, #208
	ldmia	r3, {r2-r3}
	add	r1, sp, #176
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	adr	r3, .L51+8
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	ldr	r3, .L51+64
	ldr	r5, .L51+68
	ldmia	r3, {r8-r9}
	mov	r6, r0
	mov	r7, r1
	b	.L52
.L53:
	.align	3
.L51:
	.word	1719614413
	.word	-1074356066
	.word	1719614413
	.word	1073127582
	.word	x3
	.word	x4
	.word	x6
	.word	temp
	.word	x7
	.word	x5
	.word	cos3
	.word	sin3
	.word	cos1
	.word	sin1
	.word	x0
	.word	x1
	.word	cos6
	.word	sin6
.L52:
	adr	r3, .L54
	ldmia	r3, {r2-r3}
	add	r1, sp, #48
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	ldmia	r5, {r4-r5}
	mov	r2, r8
	mov	r3, r9
	str	r4, [sp, #16]
	str	r5, [sp, #20]
	bl	__aeabi_dmul
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	ip, .L54+16
	mov	r2, r6
	stmia	ip, {r0-r1}
	mov	r3, r7
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	adr	r3, .L54+8
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	add	r1, sp, #48
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	ldr	r2, .L54+20
	stmia	r2, {r0-r1}
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	ldr	r3, .L54+24
	stmia	r3, {r0-r1}
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	ldr	r4, .L54+28
	ldr	r5, .L54+32
	stmia	r4, {r0-r1}
	add	r3, sp, #32
	ldmia	r3, {r2-r3}
	stmia	r5, {sl-fp}
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	ldr	ip, .L54+36
	add	r3, sp, #32
	ldmia	r3, {r2-r3}
	stmia	ip, {r0-r1}
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	ldr	r2, .L54+40
	stmia	r2, {r0-r1}
	ldr	r0, [sp, #132]
	add	r3, r0, #1
	str	r3, [sp, #132]
	bl	stage4C
	ldr	r5, [sp, #216]
	ldr	r4, [sp, #132]
	add	r5, r5, #4
	cmp	r4, #8
	str	r5, [sp, #216]
	bne	.L42
	bl	clock
	ldr	ip, [sp, #124]
	rsb	r0, ip, r0
	bl	__aeabi_i2d
	mov	r3, #1090519040
	add	r3, r3, #3047424
	mov	r2, #0
	add	r3, r3, #1152
	bl	__aeabi_ddiv
	mov	ip, #115
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L54+44
	ldr	r1, .L54+48
	str	ip, [sp, #0]
	bl	printf
	ldr	r4, .L54+52
	add	r5, r4, #256
.L43:
	ldr	r1, [r4, #0]
	ldr	r0, .L54+56
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #4]
	ldr	r0, .L54+56
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #8]
	ldr	r0, .L54+56
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #12]
	ldr	r0, .L54+56
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #16]
	ldr	r0, .L54+56
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #20]
	ldr	r0, .L54+56
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #24]
	ldr	r0, .L54+56
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #28]
	ldr	r0, .L54+56
	bl	printf
	mov	r0, #32
	add	r4, r4, r0
	bl	putchar
	mov	r0, #10
	bl	putchar
	cmp	r4, r5
	bne	.L43
	mov	r0, #0
	add	sp, sp, #228
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L55:
	.align	3
.L54:
	.word	1719614413
	.word	1073127582
	.word	1719614413
	.word	-1074356066
	.word	x2
	.word	x3
	.word	x4
	.word	x6
	.word	temp
	.word	x7
	.word	x5
	.word	.LC1
	.word	.LC2
	.word	.LANCHOR1
	.word	.LC0
	.size	main, .-main
	.global	X
	.global	x
	.global	expectedOut
	.comm	x0,8,8
	.comm	x1,8,8
	.comm	x2,8,8
	.comm	x3,8,8
	.comm	x4,8,8
	.comm	x5,8,8
	.comm	x6,8,8
	.comm	x7,8,8
	.comm	z1,8,8
	.comm	temp,8,8
	.comm	cos3,8,8
	.comm	sin3,8,8
	.comm	cos1,8,8
	.comm	sin1,8,8
	.comm	cos6,8,8
	.comm	sin6,8,8
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	x, %object
	.size	x, 256
x:
	.word	75
	.word	76
	.word	75
	.word	75
	.word	69
	.word	66
	.word	77
	.word	71
	.word	73
	.word	74
	.word	73
	.word	74
	.word	63
	.word	64
	.word	68
	.word	69
	.word	69
	.word	68
	.word	71
	.word	72
	.word	67
	.word	58
	.word	48
	.word	41
	.word	59
	.word	55
	.word	56
	.word	52
	.word	47
	.word	40
	.word	24
	.word	9
	.word	51
	.word	50
	.word	45
	.word	41
	.word	33
	.word	22
	.word	7
	.word	-5
	.word	43
	.word	37
	.word	32
	.word	24
	.word	15
	.word	5
	.word	-6
	.word	-25
	.word	29
	.word	21
	.word	9
	.word	-2
	.word	-10
	.word	-21
	.word	-44
	.word	-69
	.word	9
	.word	-4
	.word	-17
	.word	-35
	.word	-52
	.word	-61
	.word	-57
	.word	-35
	.type	expectedOut, %object
	.size	expectedOut, 256
expectedOut:
	.word	251
	.word	118
	.word	-13
	.word	6
	.word	-2
	.word	6
	.word	-1
	.word	0
	.word	279
	.word	-68
	.word	-8
	.word	-7
	.word	-1
	.word	4
	.word	-4
	.word	-1
	.word	-51
	.word	-14
	.word	34
	.word	-14
	.word	5
	.word	0
	.word	-1
	.word	0
	.word	27
	.word	5
	.word	-10
	.word	8
	.word	-7
	.word	4
	.word	-5
	.word	1
	.word	-22
	.word	-7
	.word	14
	.word	-9
	.word	4
	.word	-2
	.word	1
	.word	1
	.word	-3
	.word	15
	.word	-18
	.word	15
	.word	-6
	.word	2
	.word	-1
	.word	2
	.word	7
	.word	-9
	.word	6
	.word	-6
	.word	4
	.word	0
	.word	0
	.word	2
	.word	3
	.word	7
	.word	-9
	.word	3
	.word	0
	.word	-2
	.word	-1
	.word	0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%-4i\000"
	.space	3
.LC1:
	.ascii	"%s%f%c\012\000"
.LC2:
	.ascii	"Program runtime: \000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	X, %object
	.size	X, 256
X:
	.space	256
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
