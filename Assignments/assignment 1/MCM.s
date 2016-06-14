	.file	"MCM.c"
	.text
	.align	2
	.global	matrixChainMultiplication
	.type	matrixChainMultiplication, %function
matrixChainMultiplication:
	@ args = 0, pretend = 0, frame = 28
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	str	r0, [fp, #-40]
	mov	r3, #50
	str	r3, [fp, #-36]
	mov	r3, #1
	str	r3, [fp, #-28]
	b	.L2
.L3:
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-28]
	ldr	r0, .L17
	mov	r2, r3
	mov	r2, r2, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	add	r2, r3, r1
	mov	r3, #0
	str	r3, [r0, r2, asl #2]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L2:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	ble	.L3
	mov	r3, #2
	str	r3, [fp, #-20]
	b	.L5
.L6:
	mov	r3, #1
	str	r3, [fp, #-28]
	b	.L7
.L8:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	sub	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-32]
	ldr	r0, .L17
	mov	r2, r3
	mov	r2, r2, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	add	r2, r3, r1
	mvn	r3, #-2147483648
	str	r3, [r0, r2, asl #2]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-24]
	b	.L9
.L10:
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-24]
	ldr	r0, .L17
	mov	r2, r3
	mov	r2, r2, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	add	r3, r3, r1
	ldr	ip, [r0, r3, asl #2]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldr	r1, [fp, #-32]
	ldr	r0, .L17
	mov	r2, r3
	mov	r2, r2, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	add	r3, r3, r1
	ldr	r3, [r0, r3, asl #2]
	add	r0, ip, r3
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	sub	r3, r3, #4
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mul	r1, r3, r1
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mul	r3, r1, r3
	add	r3, r0, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-32]
	ldr	r0, .L17
	mov	r2, r3
	mov	r2, r2, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [r0, r3, asl #2]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	ble	.L11
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-32]
	ldr	r0, .L17
	mov	r2, r3
	mov	r2, r2, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	add	r2, r3, r1
	ldr	r3, [fp, #-16]
	str	r3, [r0, r2, asl #2]
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-32]
	ldr	r0, .L17+4
	mov	r2, r3
	mov	r2, r2, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	add	r2, r3, r1
	ldr	r3, [fp, #-24]
	str	r3, [r0, r2, asl #2]
.L11:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L9:
	ldr	r3, [fp, #-32]
	sub	r2, r3, #1
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bge	.L10
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L7:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-20]
	rsb	r3, r3, r2
	add	r2, r3, #1
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bge	.L8
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L5:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	ble	.L6
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L18:
	.align	2
.L17:
	.word	m
	.word	s
	.size	matrixChainMultiplication, .-matrixChainMultiplication
	.section	.rodata
	.align	2
.LC0:
	.ascii	"M%d\000"
	.text
	.align	2
	.global	print
	.type	print, %function
print:
	@ args = 0, pretend = 0, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L20
	ldr	r0, .L24
	ldr	r1, [fp, #-20]
	bl	printf
	b	.L23
.L20:
	mov	r0, #40
	bl	putchar
	ldr	r3, [fp, #-20]
	mov	r2, r3
	mov	r2, r2, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r2, r3, asl #2]
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	mov	r2, r3
	bl	print
	mov	r0, #120
	bl	putchar
	ldr	r3, [fp, #-20]
	mov	r2, r3
	mov	r2, r2, asl #3
	rsb	r2, r3, r2
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r2, r3, asl #2]
	add	r3, r3, #1
	ldr	r0, [fp, #-16]
	mov	r1, r3
	ldr	r2, [fp, #-24]
	bl	print
	mov	r0, #41
	bl	putchar
.L23:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L25:
	.align	2
.L24:
	.word	.LC0
	.size	print, .-print
	.section	.rodata
	.align	2
.LC1:
	.ascii	"matrix.txt\000"
	.align	2
.LC2:
	.ascii	"r\000"
	.align	2
.LC3:
	.ascii	"%d\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 220
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #220
	ldr	r0, .L33
	ldr	r1, .L33+4
	bl	fopen
	mov	r3, r0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #2
	mov	r2, r3
	sub	r3, fp, #232
	add	r3, r3, r2
	ldr	r0, [fp, #-28]
	ldr	r1, .L33+8
	mov	r2, r3
	bl	fscanf
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L27
.L28:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #2
	mov	r2, r3
	sub	r3, fp, #232
	add	r3, r3, r2
	ldr	r0, [fp, #-28]
	ldr	r1, .L33+8
	mov	r2, r3
	bl	fscanf
	ldr	r3, [fp, #-24]
	cmp	r3, #49
	beq	.L29
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #2
	mov	r2, r3
	sub	r3, fp, #232
	add	r3, r3, r2
	ldr	r0, [fp, #-28]
	ldr	r1, .L33+8
	mov	r2, r3
	bl	fscanf
.L29:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L27:
	ldr	r3, [fp, #-28]
	ldrh	r3, [r3, #12]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L28
	mov	r3, #50
	str	r3, [fp, #-20]
	sub	r3, fp, #232
	mov	r0, r3
	bl	matrixChainMultiplication
	ldr	r0, .L33+12
	mov	r1, #1
	mov	r2, #50
	bl	print
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L34:
	.align	2
.L33:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	s
	.size	main, .-main
	.comm	m,9604,4
	.comm	s,9604,4
	.ident	"GCC: (GNU) 4.1.1"
