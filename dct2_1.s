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
	.global	__aeabi_dadd
	.global	__aeabi_dsub
	.text
	.align	2
	.global	stage1R
	.type	stage1R, %function
stage1R:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r9, .L3
	mov	r8, r0, asl #6
	add	r8, r9, r8
	ldmia	r8, {r6-r7}
	add	r5, r8, #56
	ldmia	r5, {r4-r5}
	mov	sl, r0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	ldr	r3, .L3+4
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r3, sl, asl #6
	add	r3, r9, r3
	add	r7, r3, #8
	ldmia	r7, {r6-r7}
	add	r5, r8, #48
	ldmia	r5, {r4-r5}
	ldr	r3, .L3+8
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	ldr	r3, .L3+12
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r3, sl, asl #6
	add	r3, r9, r3
	add	r7, r3, #16
	ldmia	r7, {r6-r7}
	add	r5, r8, #40
	ldmia	r5, {r4-r5}
	ldr	r3, .L3+16
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	ldr	r3, .L3+20
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	sl, sl, asl #6
	add	r9, r9, sl
	add	r5, r9, #32
	ldmia	r5, {r4-r5}
	add	r7, r8, #24
	ldmia	r7, {r6-r7}
	ldr	r3, .L3+24
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	ldr	r3, .L3+28
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldr	r3, .L3+32
	stmia	r3, {r0-r1}
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
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
	.align	2
	.global	stage4R
	.type	stage4R, %function
stage4R:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, .L15+16
	ldr	fp, .L15+20
	ldmia	r3, {r6-r7}
	ldmia	fp, {r4-r5}
	ldr	ip, .L15+24
	sub	sp, sp, #36
	mov	sl, r0
	stmia	ip, {r4-r5}
	mov	r2, r6
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	mov	r0, r4
	mov	r1, r5
	add	r5, sp, #24
	ldmia	r5, {r4-r5}
	mov	r2, r6
	mov	r3, r7
	stmia	fp, {r4-r5}
	bl	__aeabi_dsub
	ldr	r5, .L15+28
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	adr	r9, .L15
	ldmia	r9, {r8-r9}
	ldmia	r5, {r0-r1}
	ldr	ip, .L15+16
	add	r5, sp, #16
	ldmia	r5, {r4-r5}
	mov	r2, r8
	stmia	ip, {r4-r5}
	mov	r3, r9
	bl	__aeabi_dmul
	ldr	r4, .L15+32
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	ldr	ip, .L15+28
	ldmia	r4, {r0-r1}
	add	r5, sp, #8
	ldmia	r5, {r4-r5}
	mov	r2, r8
	mov	r3, r9
	stmia	ip, {r4-r5}
	bl	__aeabi_dmul
	stmia	sp, {r0-r1}
	adr	r7, .L15+8
	ldmia	r7, {r6-r7}
	ldr	ip, .L15+32
	ldmia	sp, {r4-r5}
	ldr	r3, .L15+36
	stmia	ip, {r4-r5}
	ldmia	r3, {r0-r1}
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_ddiv
	ldr	r9, .L15+40
	mov	r8, sl, asl #6
	add	r8, r9, r8
	stmia	r8, {r0-r1}
	mov	r2, r6
	mov	r3, r7
	add	r1, sp, #24
	ldmia	r1, {r0-r1}
	bl	__aeabi_ddiv
	mov	r4, sl, asl #6
	ldr	r3, .L15+44
	add	r4, r4, #8
	add	r4, r9, r4
	stmia	r4, {r0-r1}
	mov	r2, r6
	ldmia	r3, {r0-r1}
	mov	r3, r7
	bl	__aeabi_ddiv
	mov	r5, sl, asl #6
	add	r5, r5, #16
	add	r5, r9, r5
	stmia	r5, {r0-r1}
	mov	r2, r6
	mov	r3, r7
	ldmia	sp, {r0-r1}
	bl	__aeabi_ddiv
	ldr	r3, .L15+48
	str	r0, [r8, #24]
	str	r1, [r8, #28]
	mov	r2, r6
	ldmia	r3, {r0-r1}
	mov	r3, r7
	bl	__aeabi_ddiv
	mov	sl, sl, asl #6
	add	sl, sl, #32
	add	r9, r9, sl
	stmia	r9, {r0-r1}
	mov	r2, r6
	mov	r3, r7
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__aeabi_ddiv
	ldr	r3, .L15+52
	str	r0, [r8, #40]
	str	r1, [r8, #44]
	mov	r2, r6
	ldmia	r3, {r0-r1}
	mov	r3, r7
	bl	__aeabi_ddiv
	mov	r2, r6
	str	r0, [r8, #48]
	str	r1, [r8, #52]
	mov	r3, r7
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	bl	__aeabi_ddiv
	str	r0, [r8, #56]
	str	r1, [r8, #60]
	add	sp, sp, #36
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	add	r2, r0, #56
	ldr	sl, .L19
	mov	r3, r0, asl #3
	mov	r2, r2, asl #3
	add	r3, sl, r3
	add	r2, sl, r2
	ldmia	r3, {r6-r7}
	ldmia	r2, {r4-r5}
	mov	r8, r0
	mov	r2, r4
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	ldr	r3, .L19+4
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	add	r3, r8, #8
	add	r2, r8, #48
	mov	r3, r3, asl #3
	mov	r2, r2, asl #3
	add	r3, sl, r3
	add	r2, sl, r2
	ldmia	r3, {r6-r7}
	ldmia	r2, {r4-r5}
	ldr	r3, .L19+8
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	ldr	r3, .L19+12
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	add	r3, r8, #16
	add	r2, r8, #40
	mov	r3, r3, asl #3
	mov	r2, r2, asl #3
	add	r3, sl, r3
	add	r2, sl, r2
	ldmia	r3, {r6-r7}
	ldmia	r2, {r4-r5}
	ldr	r3, .L19+16
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	ldr	r3, .L19+20
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	add	r2, r8, #32
	add	r8, r8, #24
	mov	r8, r8, asl #3
	mov	r2, r2, asl #3
	add	r2, sl, r2
	add	sl, sl, r8
	ldmia	sl, {r6-r7}
	ldmia	r2, {r4-r5}
	ldr	r3, .L19+24
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
	ldr	r3, .L19+28
	mov	r2, r4
	stmia	r3, {r0-r1}
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldr	r3, .L19+32
	stmia	r3, {r0-r1}
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
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
	.global	printArray
	.type	printArray, %function
printArray:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L34
	add	r5, r4, #256
.L30:
	ldr	r1, [r4, #0]
	ldr	r0, .L34+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #4]
	ldr	r0, .L34+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #8]
	ldr	r0, .L34+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #12]
	ldr	r0, .L34+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #16]
	ldr	r0, .L34+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #20]
	ldr	r0, .L34+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #24]
	ldr	r0, .L34+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #28]
	ldr	r0, .L34+4
	bl	printf
	mov	r0, #32
	add	r4, r4, r0
	bl	putchar
	mov	r0, #10
	bl	putchar
	cmp	r4, r5
	bne	.L30
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	.LANCHOR1
	.word	.LC0
	.size	printArray, .-printArray
	.align	2
	.global	stage4C
	.type	stage4C, %function
stage4C:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	sl, .L38+16
	ldr	fp, .L38+20
	ldmia	sl, {r4-r5}
	ldmia	fp, {r6-r7}
	ldr	ip, .L38+24
	mov	r8, r0
	mov	r2, r6
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	stmia	ip, {r4-r5}
	bl	__aeabi_dadd
	mov	r2, r6
	stmia	sl, {r0-r1}
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	adr	r5, .L38
	ldmia	r5, {r4-r5}
	ldr	r9, .L38+28
	mov	r2, r4
	mov	r3, r5
	stmia	fp, {r0-r1}
	ldmia	r9, {r0-r1}
	bl	__aeabi_dmul
	ldr	r7, .L38+32
	mov	r2, r4
	mov	r3, r5
	stmia	r9, {r0-r1}
	ldmia	r7, {r0-r1}
	bl	__aeabi_dmul
	adr	r5, .L38+8
	ldmia	r5, {r4-r5}
	ldr	r3, .L38+36
	mov	r2, r4
	stmia	r7, {r0-r1}
	ldmia	r3, {r0-r1}
	mov	r3, r5
	bl	__aeabi_ddiv
	bl	lround
	ldr	r6, .L38+40
	mov	r2, r4
	str	r0, [r6, r8, asl #2]
	mov	r3, r5
	ldmia	sl, {r0-r1}
	bl	__aeabi_ddiv
	bl	lround
	ldr	r2, .L38+44
	add	r3, r8, #8
	str	r0, [r6, r3, asl #2]
	ldmia	r2, {r0-r1}
	mov	r3, r5
	mov	r2, r4
	bl	__aeabi_ddiv
	bl	lround
	add	r3, r8, #16
	str	r0, [r6, r3, asl #2]
	mov	r2, r4
	mov	r3, r5
	ldmia	r7, {r0-r1}
	bl	__aeabi_ddiv
	bl	lround
	ldr	r2, .L38+48
	add	r3, r8, #24
	str	r0, [r6, r3, asl #2]
	ldmia	r2, {r0-r1}
	mov	r3, r5
	mov	r2, r4
	bl	__aeabi_ddiv
	bl	lround
	add	r3, r8, #32
	str	r0, [r6, r3, asl #2]
	mov	r2, r4
	mov	r3, r5
	ldmia	r9, {r0-r1}
	bl	__aeabi_ddiv
	bl	lround
	ldr	r2, .L38+52
	add	r3, r8, #40
	str	r0, [r6, r3, asl #2]
	ldmia	r2, {r0-r1}
	mov	r3, r5
	mov	r2, r4
	bl	__aeabi_ddiv
	bl	lround
	add	r3, r8, #48
	str	r0, [r6, r3, asl #2]
	mov	r2, r4
	mov	r3, r5
	ldmia	fp, {r0-r1}
	bl	__aeabi_ddiv
	bl	lround
	add	r8, r8, #56
	str	r0, [r6, r8, asl #2]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L39:
	.align	3
.L38:
	.word	1719614413
	.word	1073127582
	.word	1719614413
	.word	1074176158
	.word	x7
	.word	x4
	.word	temp
	.word	x6
	.word	x5
	.word	x0
	.word	.LANCHOR1
	.word	x2
	.word	x1
	.word	x3
	.size	stage4C, .-stage4C
	.global	__aeabi_i2d
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 232
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #244
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
	str	r0, [sp, #220]
	str	r4, [sp, #232]
	str	r4, [sp, #236]
	str	r5, [sp, #224]
.L41:
	ldr	ip, [sp, #236]
	ldmia	ip, {r4-r5}
	add	r7, ip, #56
	ldmia	r7, {r6-r7}
	mov	r0, r4
	mov	r2, r6
	mov	r3, r7
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	str	r0, [sp, #208]
	str	r1, [sp, #212]
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	ldr	r2, [sp, #236]
	add	r5, r2, #8
	ldmia	r5, {r4-r5}
	add	r7, r2, #48
	ldmia	r7, {r6-r7}
	str	r0, [sp, #200]
	str	r1, [sp, #204]
	mov	r2, r6
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	str	r0, [sp, #192]
	str	r1, [sp, #196]
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	ldr	r3, [sp, #236]
	add	r5, r3, #16
	ldmia	r5, {r4-r5}
	add	r7, r3, #40
	ldmia	r7, {r6-r7}
	str	r0, [sp, #184]
	str	r1, [sp, #188]
	mov	r2, r6
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r8, r0
	mov	r9, r1
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	ldr	ip, [sp, #236]
	add	r5, ip, #24
	ldmia	r5, {r4-r5}
	add	r7, ip, #32
	ldmia	r7, {r6-r7}
	str	r0, [sp, #176]
	str	r1, [sp, #180]
	mov	r2, r6
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	str	r0, [sp, #168]
	str	r1, [sp, #172]
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	add	r3, sp, #168
	ldmia	r3, {r2-r3}
	mov	sl, r0
	mov	fp, r1
	add	r1, sp, #208
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r8
	mov	r3, r9
	str	r0, [sp, #160]
	str	r1, [sp, #164]
	add	r1, sp, #192
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r8
	mov	r3, r9
	str	r0, [sp, #152]
	str	r1, [sp, #156]
	add	r1, sp, #192
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	ldr	r2, .L48+56
	ldr	r3, .L48+60
	ldmia	r2, {r6-r7}
	ldmia	r3, {r8-r9}
	str	r0, [sp, #144]
	str	r1, [sp, #148]
	mov	r2, r6
	mov	r3, r7
	mov	r0, sl
	mov	r1, fp
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
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r3, r7
	str	r0, [sp, #136]
	str	r1, [sp, #140]
	add	r1, sp, #200
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
	ldr	r4, .L48+64
	ldmia	r4, {r6-r7}
	mov	sl, r0
	mov	fp, r1
	mov	r2, r6
	mov	r3, r7
	add	r1, sp, #176
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	ldr	r5, .L48+68
	ldmia	r5, {r8-r9}
	mov	r4, r0
	mov	r5, r1
	mov	r2, r8
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
	str	r0, [sp, #128]
	str	r1, [sp, #132]
	add	r1, sp, #184
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	add	r1, sp, #176
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	add	r3, sp, #152
	ldmia	r3, {r2-r3}
	str	r0, [sp, #120]
	str	r1, [sp, #124]
	add	r1, sp, #160
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	ldr	ip, .L48+84
	add	r3, sp, #152
	ldmia	r3, {r2-r3}
	stmia	ip, {r0-r1}
	add	r1, sp, #160
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	ldr	r2, .L48+88
	stmia	r2, {r0-r1}
	add	r3, sp, #168
	ldmia	r3, {r2-r3}
	add	r1, sp, #208
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	adr	r3, .L48+48
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	ldr	r3, .L48+72
	ldr	r5, .L48+76
	ldmia	r3, {r8-r9}
	mov	r6, r0
	mov	r7, r1
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
.L49:
	adr	r3, .L51
	ldmia	r3, {r2-r3}
	add	r1, sp, #144
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
	ldr	ip, .L51+16
	mov	r2, r6
	stmia	ip, {r0-r1}
	mov	r3, r7
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dmul
	adr	r3, .L51+8
	ldmia	r3, {r2-r3}
	mov	r4, r0
	mov	r5, r1
	add	r1, sp, #144
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
	ldr	r2, .L51+20
	stmia	r2, {r0-r1}
	add	r3, sp, #120
	ldmia	r3, {r2-r3}
	add	r1, sp, #136
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	ldr	r3, .L51+24
	stmia	r3, {r0-r1}
	add	r3, sp, #120
	ldmia	r3, {r2-r3}
	add	r1, sp, #136
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	ldr	r4, .L51+28
	ldr	r5, .L51+32
	stmia	r4, {r0-r1}
	add	r3, sp, #128
	ldmia	r3, {r2-r3}
	stmia	r5, {sl-fp}
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	ldr	ip, .L51+36
	add	r3, sp, #128
	ldmia	r3, {r2-r3}
	stmia	ip, {r0-r1}
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	ldr	r2, .L51+40
	stmia	r2, {r0-r1}
	ldr	r0, [sp, #224]
	add	r3, r0, #1
	str	r3, [sp, #224]
	bl	stage4R
	ldr	r5, [sp, #236]
	ldr	r4, [sp, #224]
	add	r5, r5, #64
	cmp	r4, #8
	str	r5, [sp, #236]
	bne	.L41
	mov	ip, #0
	str	ip, [sp, #228]
.L42:
	ldr	r2, [sp, #232]
	ldmia	r2, {r4-r5}
	add	r7, r2, #448
	ldmia	r7, {r6-r7}
	mov	r0, r4
	mov	r2, r6
	mov	r3, r7
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	str	r0, [sp, #112]
	str	r1, [sp, #116]
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	ldr	r3, [sp, #232]
	add	r5, r3, #64
	ldmia	r5, {r4-r5}
	add	r7, r3, #384
	ldmia	r7, {r6-r7}
	str	r0, [sp, #104]
	str	r1, [sp, #108]
	mov	r2, r6
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	str	r0, [sp, #96]
	str	r1, [sp, #100]
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	ldr	ip, [sp, #232]
	add	r5, ip, #128
	ldmia	r5, {r4-r5}
	add	r7, ip, #320
	ldmia	r7, {r6-r7}
	str	r0, [sp, #88]
	str	r1, [sp, #92]
	mov	r2, r6
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	mov	r8, r0
	mov	r9, r1
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	ldr	r2, [sp, #232]
	add	r5, r2, #192
	ldmia	r5, {r4-r5}
	add	r7, r2, #256
	ldmia	r7, {r6-r7}
	str	r0, [sp, #80]
	str	r1, [sp, #84]
	mov	r2, r6
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r6
	str	r0, [sp, #72]
	str	r1, [sp, #76]
	mov	r3, r7
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	add	r3, sp, #72
	ldmia	r3, {r2-r3}
	mov	sl, r0
	mov	fp, r1
	add	r1, sp, #112
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r8
	mov	r3, r9
	str	r0, [sp, #64]
	str	r1, [sp, #68]
	add	r1, sp, #96
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r2, r8
	mov	r3, r9
	str	r0, [sp, #56]
	str	r1, [sp, #60]
	add	r1, sp, #96
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	ldr	r3, .L51+44
	ldmia	r3, {r6-r7}
	str	r0, [sp, #48]
	str	r1, [sp, #52]
	mov	r2, r6
	mov	r3, r7
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dmul
	ldr	r4, .L51+48
	ldmia	r4, {r8-r9}
	mov	r5, r1
	mov	r4, r0
	mov	r2, r8
	mov	r3, r9
	add	r1, sp, #104
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
	add	r1, sp, #104
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
	ldr	r5, .L51+52
	ldmia	r5, {r6-r7}
	ldr	ip, .L51+56
	mov	sl, r0
	mov	fp, r1
	mov	r2, r6
	mov	r3, r7
	add	r1, sp, #80
	ldmia	r1, {r0-r1}
	ldmia	ip, {r8-r9}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	b	.L52
.L53:
	.align	3
.L51:
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
	.word	cos3
	.word	sin3
	.word	cos1
	.word	sin1
	.word	x0
	.word	x1
.L52:
	mov	r5, r1
	mov	r3, r9
	add	r1, sp, #88
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
	add	r1, sp, #88
	ldmia	r1, {r0-r1}
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	add	r1, sp, #80
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
	ldr	r2, .L51+60
	stmia	r2, {r0-r1}
	add	r3, sp, #56
	ldmia	r3, {r2-r3}
	add	r1, sp, #64
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	ldr	r3, .L51+64
	stmia	r3, {r0-r1}
	add	r3, sp, #72
	ldmia	r3, {r2-r3}
	add	r1, sp, #112
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	adr	r3, .L54
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	ldr	r4, .L54+16
	ldr	r5, .L54+20
	ldmia	r4, {r8-r9}
	mov	r6, r0
	mov	r7, r1
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
	ldr	ip, .L54+24
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
	ldr	r2, .L54+28
	stmia	r2, {r0-r1}
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	ldr	r3, .L54+32
	stmia	r3, {r0-r1}
	add	r3, sp, #24
	ldmia	r3, {r2-r3}
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	ldr	r4, .L54+36
	ldr	r5, .L54+40
	stmia	r4, {r0-r1}
	add	r3, sp, #32
	ldmia	r3, {r2-r3}
	stmia	r5, {sl-fp}
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dadd
	ldr	ip, .L54+44
	add	r3, sp, #32
	ldmia	r3, {r2-r3}
	stmia	ip, {r0-r1}
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	ldr	r2, .L54+48
	stmia	r2, {r0-r1}
	ldr	r0, [sp, #228]
	add	r3, r0, #1
	str	r3, [sp, #228]
	bl	stage4C
	add	r4, sp, #228
	ldmia	r4, {r4, r5}	@ phole ldm
	add	r5, r5, #8
	cmp	r4, #8
	str	r5, [sp, #232]
	bne	.L42
	bl	clock
	ldr	ip, [sp, #220]
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
	ldr	r0, .L54+52
	ldr	r1, .L54+56
	str	ip, [sp, #0]
	bl	printf
	ldr	r4, .L54+60
	add	r6, r4, #256
.L43:
	ldr	r1, [r4, #0]
	ldr	r0, .L54+64
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #4]
	ldr	r0, .L54+64
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #8]
	ldr	r0, .L54+64
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #12]
	ldr	r0, .L54+64
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #16]
	ldr	r0, .L54+64
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #20]
	ldr	r0, .L54+64
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #24]
	ldr	r0, .L54+64
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #28]
	ldr	r0, .L54+64
	bl	printf
	mov	r0, #32
	add	r4, r4, r0
	bl	putchar
	mov	r0, #10
	bl	putchar
	cmp	r4, r6
	bne	.L43
	mov	r0, #0
	add	sp, sp, #244
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L55:
	.align	3
.L54:
	.word	1719614413
	.word	1073127582
	.word	1719614413
	.word	-1074356066
	.word	cos6
	.word	sin6
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
	.align	3
.LANCHOR0 = . + 0
	.type	x, %object
	.size	x, 512
x:
	.word	0
	.word	1079164928
	.word	0
	.word	1079181312
	.word	0
	.word	1079164928
	.word	0
	.word	1079164928
	.word	0
	.word	1079066624
	.word	0
	.word	1079017472
	.word	0
	.word	1079197696
	.word	0
	.word	1079099392
	.word	0
	.word	1079132160
	.word	0
	.word	1079148544
	.word	0
	.word	1079132160
	.word	0
	.word	1079148544
	.word	0
	.word	1078951936
	.word	0
	.word	1078984704
	.word	0
	.word	1079050240
	.word	0
	.word	1079066624
	.word	0
	.word	1079066624
	.word	0
	.word	1079050240
	.word	0
	.word	1079099392
	.word	0
	.word	1079115776
	.word	0
	.word	1079033856
	.word	0
	.word	1078788096
	.word	0
	.word	1078460416
	.word	0
	.word	1078231040
	.word	0
	.word	1078820864
	.word	0
	.word	1078689792
	.word	0
	.word	1078722560
	.word	0
	.word	1078591488
	.word	0
	.word	1078427648
	.word	0
	.word	1078198272
	.word	0
	.word	1077411840
	.word	0
	.word	1075970048
	.word	0
	.word	1078558720
	.word	0
	.word	1078525952
	.word	0
	.word	1078362112
	.word	0
	.word	1078231040
	.word	0
	.word	1077968896
	.word	0
	.word	1077280768
	.word	0
	.word	1075576832
	.word	0
	.word	-1072431104
	.word	0
	.word	1078296576
	.word	0
	.word	1078099968
	.word	0
	.word	1077936128
	.word	0
	.word	1077411840
	.word	0
	.word	1076756480
	.word	0
	.word	1075052544
	.word	0
	.word	-1072168960
	.word	0
	.word	-1070006272
	.word	0
	.word	1077739520
	.word	0
	.word	1077215232
	.word	0
	.word	1075970048
	.word	0
	.word	-1073741824
	.word	0
	.word	-1071382528
	.word	0
	.word	-1070268416
	.word	0
	.word	-1069154304
	.word	0
	.word	-1068417024
	.word	0
	.word	1075970048
	.word	0
	.word	-1072693248
	.word	0
	.word	-1070530560
	.word	0
	.word	-1069449216
	.word	0
	.word	-1068892160
	.word	0
	.word	-1068597248
	.word	0
	.word	-1068728320
	.word	0
	.word	-1069449216
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
