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
	.file	"dct2_2_alternate_3.c"
	.global	__aeabi_i2f
	.global	__aeabi_fadd
	.global	__aeabi_f2iz
	.text
	.align	2
	.global	dct
	.type	dct, %function
dct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #140
	str	r1, [sp, #40]
	mov	fp, r1
	add	r1, r1, #256
	str	r0, [sp, #44]
	str	r1, [sp, #12]
.L2:
	ldr	ip, [fp, #20]
	ldr	r3, [fp, #4]
	ldr	lr, [fp, #24]
	ldr	r9, [fp, #8]
	add	sl, lr, r3
	add	r3, ip, r9
	ldr	r1, [fp, #16]
	ldr	r2, [fp, #0]
	add	r4, r3, sl
	ldr	r7, [fp, #28]
	ldr	r6, [fp, #12]
	rsb	sl, r3, sl
	ldr	r3, [fp, #0]
	add	r8, r7, r2
	add	r2, r1, r6
	rsb	r7, r7, r3
	ldr	r3, [fp, #4]
	add	r5, r2, r8
	rsb	lr, lr, r3
	rsb	r8, r2, r8
	add	r0, r4, r5
	rsb	r9, ip, r9
	str	lr, [sp, #48]
	rsb	r6, r1, r6
	str	sl, [sp, #64]
	str	r7, [sp, #52]
	str	r8, [sp, #60]
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	str	r0, [fp, #0]
	rsb	r0, r4, r5
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	ldr	ip, [sp, #52]
	add	ip, r6, ip
	add	r1, sp, #48
	ldmia	r1, {r1, r2}	@ phole ldm
	mov	r3, ip, asl #3
	mov	r5, ip, asl #1
	add	r5, r5, r3
	mov	r3, r6, asl #6
	str	ip, [sp, #36]
	mov	r7, r2, asl #4
	str	r3, [sp, #32]
	mov	r8, r2, asl #2
	mov	ip, r1, asl #3
	mov	r2, r1, asl #5
	add	ip, ip, r2
	ldr	r2, [sp, #32]
	mov	r4, r6, asl #3
	add	r4, r4, r2
	rsb	r4, r6, r4
	add	r2, sp, #60
	ldmia	r2, {r2, r6}	@ phole ldm
	add	lr, r9, r1
	mov	r3, r9, asl #4
	mov	r1, r9, asl #2
	add	r1, r1, r3
	add	r6, r6, r2
	mov	r3, lr, asl #8
	str	r6, [sp, #28]
	sub	r3, r3, lr, asl #2
	add	r8, r8, r7
	mov	sl, r5, asl #2
	rsb	r3, lr, r3
	ldr	lr, [sp, #28]
	add	r5, r5, sl
	mov	r6, r8, asl #3
	mov	r2, r1, asl #4
	mov	r7, r5, asl #4
	rsb	r6, r8, r6
	rsb	r2, r1, r2
	mov	r8, lr, asl #6
	mov	r1, lr, asl #4
	ldr	lr, [sp, #36]
	add	r5, r5, r7
	add	r5, r5, lr
	ldr	lr, [sp, #52]
	mov	r7, r4, asl #2
	add	r6, r6, lr
	add	r4, r4, r7
	ldr	lr, [sp, #48]
	mov	sl, ip, asl #2
	sub	r4, r5, r4, asl #2
	add	ip, ip, sl
	sub	r5, r5, r6, asl #1
	ldr	r6, [sp, #28]
	add	ip, ip, lr
	add	r1, r1, r8
	mov	r3, r3, asl #2
	add	r2, r2, r9
	sub	r2, r3, r2, asl #2
	rsb	r1, r6, r1
	sub	r3, r3, ip, asl #2
	add	r8, r2, r5
	ldr	ip, [sp, #28]
	add	r7, r3, r4
	mov	r6, r1, asl #3
	str	r0, [fp, #16]
	rsb	r6, r1, r6
	add	r0, r7, r8
	add	r6, r6, ip
	rsb	r5, r2, r5
	rsb	r4, r3, r4
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	mov	r3, r4, asl #4
	sub	r3, r3, r4, asl #2
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	mov	r0, r0, asr #10
	str	r0, [fp, #4]
	add	r0, r2, r4
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	mov	r3, r5, asl #4
	sub	r3, r3, r5, asl #2
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	mov	r0, r0, asr #17
	str	r0, [fp, #12]
	add	r0, r2, r5
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	mov	r0, r0, asr #17
	str	r0, [fp, #20]
	rsb	r0, r8, r7
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	ldr	lr, [sp, #60]
	mov	r3, lr, asl #7
	sub	r3, r3, lr, asl #4
	mov	r2, r3, asl #3
	rsb	r2, r3, r2
	mov	r0, r0, asr #10
	str	r0, [fp, #28]
	add	r0, r6, r2
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	ldr	r1, [sp, #64]
	mov	r3, r1, asl #6
	sub	r3, r3, r1, asl #2
	rsb	r3, r1, r3
	mov	r3, r3, asl #3
	add	r3, r3, r1
	mov	r0, r0, asr #10
	str	r0, [fp, #8]
	sub	r0, r6, r3, asl #2
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	ldr	r2, [sp, #12]
	mov	r0, r0, asr #10
	str	r0, [fp, #24]
	add	fp, fp, #32
	cmp	fp, r2
	bne	.L2
	ldr	r3, [sp, #40]
	ldr	r6, [sp, #40]
	add	r3, r3, #224
	add	r6, r6, #32
	str	r3, [sp, #92]
	str	r6, [sp, #72]
	ldr	ip, [sp, #40]
	ldr	lr, [sp, #40]
	ldr	r1, [sp, #40]
	ldr	r2, [sp, #40]
	add	r3, sp, #40
	ldmia	r3, {r3, r6}	@ phole ldm
	add	ip, ip, #192
	add	lr, lr, #64
	add	r1, r1, #160
	add	r2, r2, #96
	add	r3, r3, #128
	add	r6, r6, #128
	str	ip, [sp, #56]
	str	lr, [sp, #132]
	str	r1, [sp, #84]
	str	r2, [sp, #104]
	str	r3, [sp, #120]
	str	r6, [sp, #116]
	ldr	ip, [sp, #44]
	ldr	lr, [sp, #44]
	ldr	r1, [sp, #44]
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #44]
	ldr	r6, [sp, #44]
	add	ip, ip, #32
	add	lr, lr, #96
	add	r1, r1, #160
	add	r2, r2, #224
	add	r3, r3, #64
	add	r6, r6, #192
	str	ip, [sp, #112]
	str	lr, [sp, #108]
	str	r1, [sp, #96]
	str	r2, [sp, #88]
	str	r3, [sp, #76]
	str	r6, [sp, #68]
	mov	fp, #0
.L3:
	ldr	r1, [sp, #72]
	ldr	ip, [sp, #40]
	ldr	r1, [r1, fp]
	ldr	lr, [sp, #92]
	ldr	r2, [sp, #56]
	ldr	ip, [ip, fp]
	ldr	r5, [lr, fp]
	str	r1, [sp, #8]
	ldr	lr, [r2, fp]
	ldr	r3, [sp, #132]
	ldr	r6, [sp, #84]
	ldr	r1, [sp, #104]
	ldr	r2, [sp, #120]
	str	ip, [sp, #4]
	ldr	r9, [r3, fp]
	ldr	ip, [r6, fp]
	ldr	r3, [sp, #4]
	ldr	r6, [r1, fp]
	ldr	r1, [r2, fp]
	ldr	r2, [sp, #8]
	add	r8, r5, r3
	add	sl, lr, r2
	add	r3, ip, r9
	add	r4, r3, sl
	rsb	sl, r3, sl
	ldr	r3, [sp, #4]
	add	r2, r1, r6
	rsb	r5, r5, r3
	ldr	r3, [sp, #8]
	add	r7, r2, r8
	rsb	lr, lr, r3
	rsb	r8, r2, r8
	add	r0, r4, r7
	rsb	r9, ip, r9
	str	lr, [sp, #100]
	rsb	r6, r1, r6
	str	sl, [sp, #128]
	str	r5, [sp, #80]
	str	r8, [sp, #124]
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	ldr	ip, [sp, #44]
	mov	r0, r0, asr #3
	str	r0, [ip, fp]
	rsb	r0, r4, r7
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	ldr	lr, [sp, #80]
	add	lr, r6, lr
	ldr	r2, [sp, #80]
	mov	r3, lr, asl #3
	ldr	r1, [sp, #100]
	ldr	ip, [sp, #100]
	mov	r5, lr, asl #1
	add	r5, r5, r3
	mov	r3, r6, asl #6
	mov	r7, r2, asl #4
	str	r3, [sp, #20]
	str	lr, [sp, #24]
	mov	r8, r2, asl #2
	add	lr, r9, r1
	mov	r2, ip, asl #5
	mov	r1, r1, asl #3
	add	r1, r1, r2
	ldr	r2, [sp, #20]
	mov	r4, r6, asl #3
	add	r4, r4, r2
	rsb	r4, r6, r4
	ldr	r2, [sp, #124]
	mov	r3, r9, asl #4
	ldr	r6, [sp, #128]
	mov	ip, r9, asl #2
	add	ip, ip, r3
	mov	r3, lr, asl #8
	add	r6, r6, r2
	sub	r3, r3, lr, asl #2
	str	r6, [sp, #16]
	add	r8, r8, r7
	mov	sl, r5, asl #2
	rsb	r3, lr, r3
	ldr	lr, [sp, #16]
	add	r5, r5, sl
	mov	r6, r8, asl #3
	mov	r2, ip, asl #4
	mov	r7, r5, asl #4
	rsb	r6, r8, r6
	rsb	r2, ip, r2
	mov	r8, lr, asl #6
	mov	ip, lr, asl #4
	ldr	lr, [sp, #24]
	add	r5, r5, r7
	add	r5, r5, lr
	ldr	lr, [sp, #80]
	mov	sl, r1, asl #2
	add	r6, r6, lr
	ldr	lr, [sp, #100]
	add	r1, r1, sl
	add	r1, r1, lr
	mov	r3, r3, asl #2
	add	r2, r2, r9
	sub	r2, r3, r2, asl #2
	mov	r7, r4, asl #2
	sub	r3, r3, r1, asl #2
	ldr	r1, [sp, #16]
	add	r4, r4, r7
	add	ip, ip, r8
	ldr	lr, [sp, #116]
	rsb	ip, r1, ip
	sub	r4, r5, r4, asl #2
	sub	r5, r5, r6, asl #1
	add	r8, r2, r5
	mov	r6, ip, asl #3
	add	r7, r3, r4
	mov	r0, r0, asr #3
	str	r0, [lr, fp]
	rsb	r6, ip, r6
	add	r0, r7, r8
	rsb	r5, r2, r5
	rsb	r4, r3, r4
	add	r6, r6, r1
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	mov	r3, r4, asl #4
	sub	r3, r3, r4, asl #2
	mov	r2, r3, asl #4
	ldr	r1, [sp, #112]
	rsb	r2, r3, r2
	mov	r0, r0, asr #13
	str	r0, [r1, fp]
	add	r0, r2, r4
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	mov	r3, r5, asl #4
	sub	r3, r3, r5, asl #2
	mov	r2, r3, asl #4
	rsb	r2, r3, r2
	ldr	r3, [sp, #108]
	mov	r0, r0, asr #20
	str	r0, [r3, fp]
	add	r0, r2, r5
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	ldr	ip, [sp, #96]
	mov	r0, r0, asr #20
	str	r0, [ip, fp]
	rsb	r0, r8, r7
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	ldr	lr, [sp, #124]
	mov	r3, lr, asl #7
	sub	r3, r3, lr, asl #4
	mov	r2, r3, asl #3
	ldr	r1, [sp, #88]
	rsb	r2, r3, r2
	mov	r0, r0, asr #13
	str	r0, [r1, fp]
	add	r0, r6, r2
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	ldr	r2, [sp, #128]
	mov	r3, r2, asl #6
	sub	r3, r3, r2, asl #2
	rsb	r3, r2, r3
	ldr	ip, [sp, #76]
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r0, r0, asr #13
	str	r0, [ip, fp]
	sub	r0, r6, r3, asl #2
	bl	__aeabi_i2f
	mov	r1, #1056964608
	bl	__aeabi_fadd
	bl	__aeabi_f2iz
	ldr	lr, [sp, #68]
	mov	r0, r0, asr #13
	str	r0, [lr, fp]
	add	fp, fp, #4
	cmp	fp, #32
	bne	.L3
	add	sp, sp, #140
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
	.size	dct, .-dct
	.align	2
	.global	cmpArray
	.type	cmpArray, %function
cmpArray:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	mov	r7, r1
	mov	lr, #0
	add	r8, r0, #256
.L25:
	ldr	r1, [r6, #0]
	ldr	r3, [r7, #0]
	ldr	ip, [r6, #4]
	ldr	r0, [r7, #4]
	cmp	r1, r3
	rsb	r2, r3, r1
	add	r2, r2, lr
	ldr	r1, [r7, #8]
	moveq	r2, lr
	rsb	r3, r0, ip
	ldr	lr, [r6, #8]
	add	r3, r3, r2
	cmp	ip, r0
	movne	r2, r3
	ldr	r4, [r6, #12]
	ldr	r0, [r7, #12]
	rsb	r3, r1, lr
	add	r3, r3, r2
	cmp	lr, r1
	movne	r2, r3
	ldr	ip, [r6, #16]
	ldr	r1, [r7, #16]
	rsb	r3, r0, r4
	add	r3, r3, r2
	cmp	r4, r0
	movne	r2, r3
	ldr	r0, [r7, #20]
	ldr	r5, [r6, #20]
	rsb	r3, r1, ip
	add	r3, r3, r2
	cmp	ip, r1
	movne	r2, r3
	ldr	r4, [r6, #24]
	ldr	ip, [r7, #24]
	rsb	r3, r0, r5
	add	r3, r3, r2
	cmp	r5, r0
	movne	r2, r3
	ldr	lr, [r6, #28]
	ldr	r0, [r7, #28]
	rsb	r3, ip, r4
	cmp	r4, ip
	add	r3, r3, r2
	movne	r2, r3
	rsb	r1, r0, lr
	cmp	lr, r0
	add	r1, r1, r2
	add	r6, r6, #32
	moveq	lr, r2
	movne	lr, r1
	cmp	r6, r8
	add	r7, r7, #32
	bne	.L25
	mov	r1, lr
	ldr	r0, .L28
	bl	printf
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	.LC0
	.size	cmpArray, .-cmpArray
	.align	2
	.global	printArray
	.type	printArray, %function
printArray:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	add	r5, r0, #256
.L31:
	ldr	r1, [r4, #0]
	ldr	r0, .L34
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #4]
	ldr	r0, .L34
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #8]
	ldr	r0, .L34
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #12]
	ldr	r0, .L34
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #16]
	ldr	r0, .L34
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #20]
	ldr	r0, .L34
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #24]
	ldr	r0, .L34
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #28]
	ldr	r0, .L34
	bl	printf
	mov	r0, #32
	add	r4, r4, r0
	bl	putchar
	mov	r0, #10
	bl	putchar
	cmp	r4, r5
	bne	.L31
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	.LC1
	.size	printArray, .-printArray
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 512
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #520
	add	r6, sp, #264
	add	r5, sp, #8
	ldr	r1, .L42
	mov	r2, #256
	mov	r0, r6
	bl	memcpy
	mov	r2, #256
	mov	r1, #0
	mov	r0, r5
	bl	memset
	bl	clock
	mov	r1, r6
	mov	r4, r0
	mov	r0, r5
	bl	dct
	bl	clock
	rsb	r0, r4, r0
	bl	__aeabi_i2d
	mov	r3, #1090519040
	add	r3, r3, #3047424
	mov	r2, #0
	add	r3, r3, #1152
	bl	__aeabi_ddiv
	mov	ip, #115
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L42+4
	ldr	r1, .L42+8
	str	ip, [sp, #0]
	bl	printf
.L37:
	ldr	r1, [r5, #0]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r5, #4]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r5, #8]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r5, #12]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r5, #16]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r5, #20]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r5, #24]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r5, #28]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	add	r5, r5, r0
	bl	putchar
	mov	r0, #10
	bl	putchar
	cmp	r5, r6
	bne	.L37
	mov	r0, #10
	bl	putchar
	ldr	r4, .L42+16
	add	r5, r4, #256
.L38:
	ldr	r1, [r4, #0]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #4]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #8]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #12]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #16]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #20]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #24]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	bl	putchar
	ldr	r1, [r4, #28]
	ldr	r0, .L42+12
	bl	printf
	mov	r0, #32
	add	r4, r4, r0
	bl	putchar
	mov	r0, #10
	bl	putchar
	cmp	r4, r5
	bne	.L38
	mov	r0, #0
	add	sp, sp, #520
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.word	.LC2
	.word	.LC3
	.word	.LC1
	.word	.LANCHOR1
	.size	main, .-main
	.global	expectedOut
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.17.2513, %object
	.size	C.17.2513, 256
C.17.2513:
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
	.data
	.align	2
.LANCHOR1 = . + 0
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
	.ascii	"DIFFERENCE = %i\012\000"
	.space	3
.LC1:
	.ascii	"%-4i\000"
	.space	3
.LC2:
	.ascii	"%s%f%c\012\000"
.LC3:
	.ascii	"Program runtime: \000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
