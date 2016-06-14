	.file	"mult.c"
	.text
	.align	2
	.global	multiply
	.type	multiply, %function
multiply:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L2
.L3:
	ldr	r4, [fp, #-32]
	add	r2, r4, r3, asl #2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L2:
	ldr	r3, [fp, #-36]
	mov	r4, r3, asl #1
	ldr	r3, [fp, #-20]
	cmp	r4, r3
	bgt	.L3
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L5
.L6:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L7
.L8:
	ldr	r5, [fp, #-20]
	add	r3, r2, r5
	mov	r7, r3, asl #2
	ldr	r6, [fp, #-32]
	add	r0, r7, r6
	add	r3, r5, r2
	mov	r7, r3, asl #2
	add	r3, r7, r6
	ldr	ip, [r3, #0]
	mov	r7, r5, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r7, r3
	ldr	r1, [r3, #0]
	mov	r7, r2, asl #2
	ldr	r3, [fp, #-28]
	add	r3, r7, r3
	ldr	r3, [r3, #0]
	mul	r3, r1, r3
	add	r3, ip, r3
	str	r3, [r0, #0]
	add	r3, r2, #1
	str	r3, [fp, #-16]
.L7:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L8
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L5:
	ldr	r2, [fp, #-36]
	cmp	r3, r2
	blt	.L6
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	multiply, .-multiply
	.align	2
	.global	karatsuba
	.type	karatsuba, %function
karatsuba:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #56
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	str	r2, [fp, #-64]
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-68]
	add	r3, r2, r2, lsr #31
	mov	r3, r3, asr #1
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-56]
	add	r3, r2, r3
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-68]
	add	r3, r2, r2, lsr #31
	mov	r3, r3, asr #1
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-60]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-68]
	add	r3, r2, r2,asl #2
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-68]
	add	r1, r2, r2, asl #2
	ldr	r2, [fp, #-68]
	add	r3, r2, r2, lsr #31
	add	r3, r1, r3, asr #1
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-68]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-68]
	mov	r2, r3, asl #3
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-68]
	cmp	r3, #4
	bgt	.L13
	ldr	r0, [fp, #-56]
	ldr	r1, [fp, #-60]
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-68]
	bl	multiply
	b	.L24
.L13:
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L16
.L17:
	ldr	r3, [fp, #-52]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r0, r2, r3
	ldr	r3, [fp, #-52]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-52]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-52]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-28]
	add	r0, r2, r3
	ldr	r3, [fp, #-52]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-52]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L16:
	ldr	r2, [fp, #-68]
	add	r3, r2, r2, lsr #31
	mov	r2, r3, asr #1
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bgt	.L17
	ldr	r2, [fp, #-68]
	add	r3, r2, r2, lsr #31
	mov	r3, r3, asr #1
	ldr	r0, [fp, #-48]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-24]
	bl	karatsuba
	ldr	r2, [fp, #-68]
	add	r3, r2, r2, lsr #31
	mov	r3, r3, asr #1
	ldr	r0, [fp, #-44]
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-20]
	bl	karatsuba
	ldr	r2, [fp, #-68]
	add	r3, r2, r2, lsr #31
	mov	r3, r3, asr #1
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-16]
	bl	karatsuba
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L19
.L20:
	ldr	r3, [fp, #-52]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-16]
	add	r0, r2, r3
	ldr	r3, [fp, #-52]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-52]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	rsb	r1, r3, r1
	ldr	r3, [fp, #-52]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	rsb	r3, r3, r1
	str	r3, [r0, #0]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L19:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	blt	.L20
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L22
.L23:
	ldr	r2, [fp, #-68]
	add	r3, r2, r2, lsr #31
	mov	r1, r3, asr #1
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-64]
	add	r0, r2, r3
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-52]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	add	r3, r1, r3
	str	r3, [r0, #0]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L22:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	blt	.L23
.L24:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	karatsuba, .-karatsuba
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Overflow %d\012\000"
	.text
	.align	2
	.global	doCarry
	.type	doCarry, %function
doCarry:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L26
.L27:
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r1, r2, r3
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [r1, #0]
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bge	.L28
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mvn	r1, r3
	ldr	r3, .L35
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r3, r3, r2
	mvn	r3, r3
	str	r3, [fp, #-20]
	b	.L30
.L28:
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, .L35
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r3, r3, r2
	str	r3, [fp, #-20]
.L30:
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r0, r2, r3
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-20]
	add	r3, r2, r2, asl #2
	sub	r3, r1, r3, asl #1
	str	r3, [r0, #0]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L26:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L27
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L34
	ldr	r3, .L35+4
	ldr	r3, [r3, #0]
	ldr	r0, [r3, #12]
	ldr	r1, .L35+8
	ldr	r2, [fp, #-20]
	bl	fprintf
.L34:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L36:
	.align	2
.L35:
	.word	1717986919
	.word	_impure_ptr
	.word	.LC0
	.size	doCarry, .-doCarry
	.section	.rodata
	.align	2
.LC1:
	.ascii	"%d\000"
	.text
	.align	2
	.global	printNum
	.type	printNum, %function
printNum:
	@ args = 0, pretend = 0, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	str	r0, [fp, #-20]
	str	r1, [fp, #-24]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	b	.L38
.L39:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L42
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
.L38:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bgt	.L39
	b	.L42
.L43:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, .L46
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
.L42:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L43
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L47:
	.align	2
.L46:
	.word	.LC1
	.size	printNum, .-printNum
	.section	.rodata
	.align	2
.LC2:
	.ascii	"errorrrrrrrrrrrr\000"
	.align	2
.LC3:
	.ascii	"r\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32804
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #32768
	sub	sp, sp, #36
	mvn	r3, #32768
	sub	r3, r3, #19
	sub	r2, fp, #12
	str	r0, [r2, r3]
	mvn	r3, #32768
	sub	r3, r3, #23
	sub	r0, fp, #12
	str	r1, [r0, r3]
	mvn	r3, #32768
	sub	r3, r3, #19
	sub	r1, fp, #12
	ldr	r3, [r1, r3]
	cmp	r3, #1
	bgt	.L49
	ldr	r0, .L70
	bl	puts
.L49:
	mvn	r3, #32768
	sub	r3, r3, #23
	sub	r2, fp, #12
	ldr	r3, [r2, r3]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L70+4
	bl	fopen
	mov	r3, r0
	str	r3, [fp, #-28]
	mov	r3, #1024
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L51
.L52:
	ldr	r2, [fp, #-20]
	mvn	r3, #4096
	sub	r3, r3, #15
	mov	r2, r2, asl #2
	sub	r0, fp, #12
	add	r2, r2, r0
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mvn	r3, #8192
	sub	r3, r3, #15
	mov	r2, r2, asl #2
	sub	r1, fp, #12
	add	r2, r2, r1
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L51:
	ldr	r2, [fp, #-20]
	mov	r3, #1020
	add	r3, r3, #3
	cmp	r2, r3
	ble	.L52
	ldr	r0, [fp, #-28]
	mvn	r1, #0
	mov	r2, #2
	bl	fseek
	mov	r3, #0
	str	r3, [fp, #-20]
.L54:
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	sub	r2, r3, #1
	ldr	r3, [fp, #-28]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L55
	ldr	r0, [fp, #-28]
	bl	__srget
	mov	r3, r0
	and	r0, r3, #255
	sub	r2, fp, #32768
	str	r0, [r2, #-48]
	b	.L57
.L55:
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	sub	r1, fp, #32768
	str	r2, [r1, #-48]
	add	r2, r3, #1
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
.L57:
	sub	r0, fp, #32768
	ldrb	r3, [r0, #-48]
	strb	r3, [fp, #-13]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L58
	ldr	r2, [fp, #-20]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	sub	r1, r3, #48
	mvn	r3, #4096
	sub	r3, r3, #15
	mov	r2, r2, asl #2
	sub	r0, fp, #12
	add	r2, r2, r0
	add	r3, r2, r3
	str	r1, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mvn	r1, #1
	mov	r2, #1
	bl	fseek
	b	.L54
.L58:
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mvn	r1, #1
	mov	r2, #1
	bl	fseek
.L60:
	ldr	r0, [fp, #-28]
	bl	ftell
	mov	r3, r0
	cmp	r3, #0
	beq	.L61
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	sub	r2, r3, #1
	ldr	r3, [fp, #-28]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L63
	ldr	r0, [fp, #-28]
	bl	__srget
	mov	r3, r0
	and	r2, r3, #255
	sub	r1, fp, #32768
	str	r2, [r1, #-44]
	b	.L65
.L63:
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	sub	r0, fp, #32768
	str	r1, [r0, #-44]
	add	r2, r3, #1
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
.L65:
	sub	r2, fp, #32768
	ldrb	r3, [r2, #-44]
	strb	r3, [fp, #-13]
	ldr	r2, [fp, #-20]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	sub	r1, r3, #48
	mvn	r3, #8192
	sub	r3, r3, #15
	mov	r2, r2, asl #2
	sub	r0, fp, #12
	add	r2, r2, r0
	add	r3, r2, r3
	str	r1, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-28]
	mvn	r1, #1
	mov	r2, #1
	bl	fseek
	b	.L60
.L61:
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	sub	r2, r3, #1
	ldr	r3, [fp, #-28]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L66
	ldr	r0, [fp, #-28]
	bl	__srget
	mov	r3, r0
	and	r2, r3, #255
	sub	r1, fp, #32768
	str	r2, [r1, #-40]
	b	.L68
.L66:
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	sub	r0, fp, #32768
	str	r1, [r0, #-40]
	add	r2, r3, #1
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
.L68:
	sub	r2, fp, #32768
	ldrb	r3, [r2, #-40]
	strb	r3, [fp, #-13]
	ldr	r2, [fp, #-20]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	sub	r1, r3, #48
	mvn	r3, #8192
	sub	r3, r3, #15
	mov	r2, r2, asl #2
	sub	r0, fp, #12
	add	r2, r2, r0
	add	r3, r2, r3
	str	r1, [r3, #0]
	ldr	r0, [fp, #-28]
	bl	fclose
	sub	r1, fp, #4096
	sub	r1, r1, #12
	sub	r1, r1, #16
	sub	r2, fp, #8192
	sub	r2, r2, #12
	sub	r2, r2, #16
	sub	r3, fp, #32768
	sub	r3, r3, #12
	sub	r3, r3, #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	bl	karatsuba
	ldr	r3, [fp, #-24]
	mov	r2, r3, asl #1
	sub	r3, fp, #32768
	sub	r3, r3, #12
	sub	r3, r3, #16
	mov	r0, r3
	mov	r1, r2
	bl	doCarry
	ldr	r3, [fp, #-24]
	mov	r2, r3, asl #1
	sub	r3, fp, #32768
	sub	r3, r3, #12
	sub	r3, r3, #16
	mov	r0, r3
	mov	r1, r2
	bl	printNum
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L71:
	.align	2
.L70:
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (GNU) 4.1.1"
