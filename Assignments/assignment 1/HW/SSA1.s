	.file	"SSA.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"enter source file....\000"
	.align	2
.LC1:
	.ascii	"r\000"
	.align	2
.LC2:
	.ascii	"%d\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 2448
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #2448
	str	r0, [fp, #-2444]
	str	r1, [fp, #-2448]
	cmp	r0, #1
	bgt	.L2
	ldr	r0, .L47
	bl	printf
.L2:
	ldr	r3, [fp, #-2448]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	ldr	r1, .L47+4
	bl	fopen
	mov	r3, r0
	str	r3, [fp, #-40]
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-40]
	mvn	r1, #0
	mov	r2, #2
	bl	fseek
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L4
.L5:
	ldr	r2, [fp, #-32]
	mov	r3, #-1795162112
	mov	r3, r3, asr #22
	mov	r2, r2, asl #2
	sub	r0, fp, #12
	add	r2, r2, r0
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L4:
	ldr	r3, [fp, #-32]
	cmp	r3, #99
	ble	.L5
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L7
.L8:
	ldr	r2, [fp, #-32]
	mov	r3, #0
	sub	r3, r3, #828
	mov	r2, r2, asl #2
	sub	r1, fp, #12
	add	r2, r2, r1
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L7:
	ldr	r3, [fp, #-32]
	cmp	r3, #99
	ble	.L8
	mov	r3, #0
	str	r3, [fp, #-32]
.L10:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]
	sub	r2, r3, #1
	ldr	r3, [fp, #-40]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L11
	ldr	r0, [fp, #-40]
	bl	__srget
	mov	r3, r0
	and	r3, r3, #255
	str	r3, [fp, #-2460]
	b	.L13
.L11:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #0]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	str	r2, [fp, #-2460]
	add	r2, r3, #1
	ldr	r3, [fp, #-40]
	str	r2, [r3, #0]
.L13:
	ldr	lr, [fp, #-2460]
	mov	r3, lr
	strb	r3, [fp, #-21]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L14
	ldr	r2, [fp, #-32]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	sub	r1, r3, #48
	mov	r3, #-1795162112
	mov	r3, r3, asr #22
	mov	r2, r2, asl #2
	sub	r0, fp, #12
	add	r2, r2, r0
	add	r3, r2, r3
	str	r1, [r3, #0]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-40]
	mvn	r1, #1
	mov	r2, #1
	bl	fseek
	b	.L10
.L14:
	mov	r3, #0
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-40]
	mvn	r1, #1
	mov	r2, #1
	bl	fseek
.L16:
	ldr	r0, [fp, #-40]
	bl	ftell
	mov	r3, r0
	cmp	r3, #0
	beq	.L17
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]
	sub	r2, r3, #1
	ldr	r3, [fp, #-40]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L19
	ldr	r0, [fp, #-40]
	bl	__srget
	mov	r3, r0
	and	r3, r3, #255
	str	r3, [fp, #-2456]
	b	.L21
.L19:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #0]
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	str	r1, [fp, #-2456]
	add	r2, r3, #1
	ldr	r3, [fp, #-40]
	str	r2, [r3, #0]
.L21:
	ldr	r2, [fp, #-2456]
	mov	r3, r2
	strb	r3, [fp, #-21]
	ldr	r2, [fp, #-32]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	sub	r1, r3, #48
	mov	r3, #0
	sub	r3, r3, #828
	mov	r2, r2, asl #2
	sub	lr, fp, #12
	add	r2, r2, lr
	add	r3, r2, r3
	str	r1, [r3, #0]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-40]
	mvn	r1, #1
	mov	r2, #1
	bl	fseek
	b	.L16
.L17:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]
	sub	r2, r3, #1
	ldr	r3, [fp, #-40]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L22
	ldr	r0, [fp, #-40]
	bl	__srget
	mov	r3, r0
	and	r3, r3, #255
	str	r3, [fp, #-2452]
	b	.L24
.L22:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #0]
	ldrb	r0, [r3, #0]	@ zero_extendqisi2
	str	r0, [fp, #-2452]
	add	r2, r3, #1
	ldr	r3, [fp, #-40]
	str	r2, [r3, #0]
.L24:
	ldr	r1, [fp, #-2452]
	mov	r3, r1
	strb	r3, [fp, #-21]
	ldr	r2, [fp, #-32]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	sub	r1, r3, #48
	mov	r3, #0
	sub	r3, r3, #828
	mov	r2, r2, asl #2
	sub	lr, fp, #12
	add	r2, r2, lr
	add	r3, r2, r3
	str	r1, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L25
.L26:
	ldr	r2, [fp, #-32]
	mvn	r3, #1616
	sub	r3, r3, #11
	mov	r2, r2, asl #2
	sub	r0, fp, #12
	add	r2, r2, r0
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L25:
	ldr	r3, [fp, #-32]
	cmp	r3, #199
	ble	.L26
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L28
.L29:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L30
.L31:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r0, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r2, r2, r3
	mvn	r3, #1616
	sub	r3, r3, #11
	mov	r2, r2, asl #2
	sub	r1, fp, #12
	add	r2, r2, r1
	add	r3, r2, r3
	ldr	ip, [r3, #0]
	ldr	r2, [fp, #-32]
	mov	r3, #-1795162112
	mov	r3, r3, asr #22
	mov	r2, r2, asl #2
	sub	lr, fp, #12
	add	r2, r2, lr
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	sub	r3, r3, #828
	mov	r2, r2, asl #2
	sub	lr, fp, #12
	add	r2, r2, lr
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mul	r3, r1, r3
	add	r1, ip, r3
	mvn	r3, #1616
	sub	r3, r3, #11
	mov	r2, r0, asl #2
	sub	r0, fp, #12
	add	r2, r2, r0
	add	r3, r2, r3
	str	r1, [r3, #0]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L30:
	ldr	r3, [fp, #-28]
	cmp	r3, #99
	ble	.L31
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L28:
	ldr	r3, [fp, #-32]
	cmp	r3, #99
	ble	.L29
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L34
.L35:
	ldr	r2, [fp, #-32]
	mvn	r3, #2416
	sub	r3, r3, #11
	mov	r2, r2, asl #2
	sub	r1, fp, #12
	add	r2, r2, r1
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L34:
	ldr	r3, [fp, #-32]
	cmp	r3, #199
	ble	.L35
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #199
	str	r3, [fp, #-32]
	b	.L37
.L38:
	ldr	r3, [fp, #-32]
	rsb	r2, r3, #199
	mvn	r3, #1616
	sub	r3, r3, #11
	mov	r2, r2, asl #2
	sub	lr, fp, #12
	add	r2, r2, lr
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-16]
	ldr	r3, .L47+8
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r3, r3, r2
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-16]
	ldr	r3, .L47+8
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-32]
	mvn	r3, #2416
	sub	r3, r3, #11
	mov	r2, r2, asl #2
	sub	lr, fp, #12
	add	r2, r2, lr
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	str	r3, [fp, #-32]
.L37:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bge	.L38
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L40
.L41:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L40:
	ldr	r2, [fp, #-28]
	mvn	r3, #2416
	sub	r3, r3, #11
	mov	r2, r2, asl #2
	sub	r0, fp, #12
	add	r2, r2, r0
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L41
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-32]
	b	.L43
.L44:
	ldr	r2, [fp, #-32]
	mvn	r3, #2416
	sub	r3, r3, #11
	mov	r2, r2, asl #2
	sub	r1, fp, #12
	add	r2, r2, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, .L47+12
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L43:
	ldr	r3, [fp, #-32]
	cmp	r3, #199
	ble	.L44
	mov	r0, #10
	bl	putchar
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L48:
	.align	2
.L47:
	.word	.LC0
	.word	.LC1
	.word	1717986919
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (GNU) 4.1.1"
