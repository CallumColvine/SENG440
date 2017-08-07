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
	.file	"dct2_0.c"
	.text
	.align	2
	.global	printArray
	.type	printArray, %function
printArray:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L6
	add	r5, r4, #256
.L2:
	ldr	r1, [r4, #0]
	ldr	r0, .L6+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #4]
	ldr	r0, .L6+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #8]
	ldr	r0, .L6+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #12]
	ldr	r0, .L6+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #16]
	ldr	r0, .L6+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #20]
	ldr	r0, .L6+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #24]
	ldr	r0, .L6+4
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #28]
	ldr	r0, .L6+4
	bl	printf
	mov	r0, #32
	add	r4, r4, r0
	bl	putchar
	mov	r0, #10
	bl	putchar
	cmp	r4, r5
	bne	.L2
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.word	.LC0
	.size	printArray, .-printArray
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_fmul
	.global	__aeabi_f2d
	.align	2
	.global	calcDCT
	.type	calcDCT, %function
calcDCT:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, .L12+8
	mov	fp, r1
	ldr	r3, [r2, fp, asl #2]	@ float
	sub	sp, sp, #52
	mov	r4, r1, asl #2
	ldr	r2, [r2, r0, asl #2]	@ float
	mov	r1, r1, asl #4
	str	r3, [sp, #36]	@ float
	mov	r3, fp, asl #1
	rsb	lr, r4, r1
	mov	ip, fp, asl #3
	add	r3, r3, fp
	str	r2, [sp, #32]	@ float
	str	r0, [sp, #40]
	add	r2, ip, fp
	str	r3, [sp, #28]
	rsb	r1, fp, r1
	add	r3, lr, fp
	mov	r0, r0, asl #1
	add	r4, r4, fp
	rsb	ip, fp, ip
	rsb	lr, fp, lr
	ldr	sl, .L12+12
	str	r2, [sp, #16]
	stmib	sp, {r1, r3}	@ phole stm
	str	r0, [sp, #44]
	str	r4, [sp, #24]
	str	ip, [sp, #20]
	str	lr, [sp, #12]
	mov	r8, #0
	mov	r9, #0
.L9:
	ldr	r0, [sp, #40]
	bl	__aeabi_i2d
	adr	r3, .L12
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r6, r0
	mov	r0, fp
	mov	r7, r1
	bl	__aeabi_i2d
	adr	r3, .L12
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #0]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #28]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L12
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #4]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #24]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L12
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #8]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #20]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L12
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #12]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #16]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L12
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #16]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #12]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L12
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #20]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #8]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L12
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #24]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #4]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L12
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #28]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dadd
	ldr	r2, .L12+16
	add	sl, sl, #32
	ldr	r3, [sp, #40]
	cmp	sl, r2
	ldr	r2, [sp, #44]
	add	r3, r3, r2
	mov	r8, r0
	mov	r9, r1
	str	r3, [sp, #40]
	bne	.L9
	b	.L13
.L14:
	.align	3
.L12:
	.word	1413754136
	.word	1074340347
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LANCHOR2+256
.L13:
	ldr	r0, [sp, #32]	@ float
	mov	r1, #1056964608
	bl	__aeabi_fmul
	mov	r1, #1056964608
	mov	r4, r0
	ldr	r0, [sp, #36]	@ float
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dmul
	bl	lround
	add	sp, sp, #52
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
	.size	calcDCT, .-calcDCT
	.global	__aeabi_ddiv
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r2, #0
	sub	sp, sp, #68
	str	r2, [sp, #16]
	bl	clock
	str	r0, [sp, #12]
.L16:
	ldr	r2, .L25+8
	ldr	r3, [sp, #16]
	mov	r1, #1056964608
	ldr	r0, [r2, r3, asl #2]	@ float
	mov	r3, #0
	str	r3, [sp, #20]
	bl	__aeabi_fmul
	ldr	r2, [sp, #16]
	mov	r3, r2, asl #5
	ldr	r2, .L25+28
	add	r3, r2, r3
	ldr	r2, [sp, #16]
	str	r3, [sp, #32]
	ldr	r3, [sp, #20]
	mov	r2, r2, asl #1
	str	r0, [sp, #28]	@ float
	str	r3, [sp, #36]
	str	r3, [sp, #40]
	str	r3, [sp, #44]
	str	r3, [sp, #48]
	str	r3, [sp, #52]
	str	r3, [sp, #56]
	str	r3, [sp, #60]
	str	r2, [sp, #8]
.L18:
	ldr	r3, [sp, #20]
	ldr	r2, .L25+8
	ldr	r3, [r2, r3, asl #2]	@ float
	ldr	sl, .L25+12
	str	r3, [sp, #24]	@ float
	ldr	fp, [sp, #16]
	mov	r8, #0
	mov	r9, #0
.L17:
	mov	r0, fp
	bl	__aeabi_i2d
	adr	r3, .L25
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r6, r0
	ldr	r0, [sp, #20]
	mov	r7, r1
	bl	__aeabi_i2d
	adr	r3, .L25
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #0]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #36]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L25
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #4]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #40]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L25
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #8]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #44]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L25
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #12]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #48]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L25
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #16]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #52]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L25
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #20]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #56]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L25
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #24]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd
	mov	r8, r0
	ldr	r0, [sp, #60]
	mov	r9, r1
	bl	__aeabi_i2d
	adr	r3, .L25
	ldmia	r3, {r2-r3}
	bl	__aeabi_dmul
	mov	r3, #1065353216
	mov	r2, #0
	add	r3, r3, #3145728
	bl	__aeabi_dmul
	bl	cos
	mov	r4, r0
	ldr	r0, [sl, #28]
	mov	r5, r1
	bl	__aeabi_i2d
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dadd
	ldr	r3, .L25+16
	add	sl, sl, #32
	ldr	r2, [sp, #8]
	cmp	sl, r3
	mov	r8, r0
	mov	r9, r1
	add	fp, fp, r2
	bne	.L17
	b	.L26
.L27:
	.align	3
.L25:
	.word	1413754136
	.word	1074340347
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LANCHOR2+256
	.word	.LC1
	.word	.LC2
	.word	.LANCHOR0
	.word	.LC0
.L26:
	ldr	r0, [sp, #24]	@ float
	mov	r1, #1056964608
	bl	__aeabi_fmul
	ldr	r1, [sp, #28]	@ float
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dmul
	bl	lround
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #32]
	add	r3, r3, #1
	str	r3, [sp, #20]
	cmp	r3, #8
	ldr	r3, [sp, #36]
	str	r0, [r2], #4
	add	r3, r3, #3
	str	r2, [sp, #32]
	str	r3, [sp, #36]
	add	r2, sp, #40
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #5
	add	r3, r3, #7
	str	r2, [sp, #40]
	str	r3, [sp, #44]
	add	r2, sp, #48
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #9
	add	r3, r3, #11
	str	r2, [sp, #48]
	str	r3, [sp, #52]
	add	r2, sp, #56
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r2, r2, #13
	add	r3, r3, #15
	str	r2, [sp, #56]
	str	r3, [sp, #60]
	bne	.L18
	ldr	r2, [sp, #16]
	add	r2, r2, #1
	cmp	r2, #8
	str	r2, [sp, #16]
	bne	.L16
	bl	clock
	ldr	r3, [sp, #12]
	rsb	r0, r3, r0
	bl	__aeabi_i2d
	mov	r3, #1090519040
	add	r3, r3, #3047424
	mov	r2, #0
	add	r3, r3, #1152
	bl	__aeabi_ddiv
	mov	ip, #115
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L25+20
	ldr	r1, .L25+24
	str	ip, [sp, #0]
	bl	printf
	ldr	r4, .L25+28
	add	r6, r4, #256
.L20:
	ldr	r1, [r4, #0]
	ldr	r0, .L25+32
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #4]
	ldr	r0, .L25+32
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #8]
	ldr	r0, .L25+32
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #12]
	ldr	r0, .L25+32
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #16]
	ldr	r0, .L25+32
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #20]
	ldr	r0, .L25+32
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #24]
	ldr	r0, .L25+32
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #28]
	ldr	r0, .L25+32
	bl	printf
	mov	r0, #32
	add	r4, r4, r0
	bl	putchar
	mov	r0, #10
	bl	putchar
	cmp	r4, r6
	bne	.L20
	mov	r0, #0
	add	sp, sp, #68
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
	.size	main, .-main
	.global	C
	.global	X
	.global	x
	.global	expectedOut
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	C, %object
	.size	C, 32
C:
	.word	1060439283
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.word	1065353216
	.data
	.align	2
.LANCHOR2 = . + 0
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
.LANCHOR0 = . + 0
	.type	X, %object
	.size	X, 256
X:
	.space	256
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
