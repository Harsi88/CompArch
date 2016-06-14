	.file	"SSA.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"input.txt\000"
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
	@ args = 0, pretend = 0, frame = 1240
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #1232
	sub	sp, sp, #8
	ldr	r0, .L45
	ldr	r1, .L45+4
	bl	fopen
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-40]
	mvn	r1, #0
	mov	r2, #2
	bl	fseek
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L2
.L3:
	ldr	r3, [fp, #-32]
	mvn	r2, #227
	mov	r3, r3, asl #2
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L2:
	ldr	r3, [fp, #-32]
	cmp	r3, #49
	ble	.L3
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L5
.L6:
	ldr	r2, [fp, #-32]
	mov	r3, #-1795162112
	mov	r3, r3, asr #22
	mov	r2, r2, asl #2
	sub	r1, fp, #12
	add	r2, r2, r1
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L5:
	ldr	r3, [fp, #-32]
	cmp	r3, #49
	ble	.L6
	mov	r3, #0
	str	r3, [fp, #-32]
.L8:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]
	sub	r2, r3, #1
	ldr	r3, [fp, #-40]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L9
	ldr	r0, [fp, #-40]
	bl	__srget
	mov	r3, r0
	and	r3, r3, #255
	str	r3, [fp, #-1252]
	b	.L11
.L9:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #0]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	str	r2, [fp, #-1252]
	add	r2, r3, #1
	ldr	r3, [fp, #-40]
	str	r2, [r3, #0]
.L11:
	ldr	lr, [fp, #-1252]
	mov	r3, lr
	strb	r3, [fp, #-21]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L12
	ldr	r1, [fp, #-32]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	sub	r0, r3, #48
	mvn	r2, #227
	mov	r3, r1, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	str	r0, [r3, #0]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-40]
	mvn	r1, #1
	mov	r2, #1
	bl	fseek
	b	.L8
.L12:
	mov	r3, #0
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-40]
	mvn	r1, #1
	mov	r2, #1
	bl	fseek
.L14:
	ldr	r0, [fp, #-40]
	bl	ftell
	mov	r3, r0
	cmp	r3, #0
	beq	.L15
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]
	sub	r2, r3, #1
	ldr	r3, [fp, #-40]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L17
	ldr	r0, [fp, #-40]
	bl	__srget
	mov	r3, r0
	and	r3, r3, #255
	str	r3, [fp, #-1248]
	b	.L19
.L17:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #0]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	str	r2, [fp, #-1248]
	add	r2, r3, #1
	ldr	r3, [fp, #-40]
	str	r2, [r3, #0]
.L19:
	ldr	lr, [fp, #-1248]
	mov	r3, lr
	strb	r3, [fp, #-21]
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
	b	.L14
.L15:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]
	sub	r2, r3, #1
	ldr	r3, [fp, #-40]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L20
	ldr	r0, [fp, #-40]
	bl	__srget
	mov	r3, r0
	and	r3, r3, #255
	str	r3, [fp, #-1244]
	b	.L22
.L20:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #0]
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	str	r1, [fp, #-1244]
	add	r2, r3, #1
	ldr	r3, [fp, #-40]
	str	r2, [r3, #0]
.L22:
	ldr	r2, [fp, #-1244]
	mov	r3, r2
	strb	r3, [fp, #-21]
	ldr	r2, [fp, #-32]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	sub	r1, r3, #48
	mov	r3, #-1795162112
	mov	r3, r3, asr #22
	mov	r2, r2, asl #2
	sub	lr, fp, #12
	add	r2, r2, lr
	add	r3, r2, r3
	str	r1, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L23
.L24:
	ldr	r2, [fp, #-32]
	mov	r3, #0
	sub	r3, r3, #828
	mov	r2, r2, asl #2
	sub	r0, fp, #12
	add	r2, r2, r0
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L23:
	ldr	r3, [fp, #-32]
	cmp	r3, #99
	ble	.L24
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L26
.L27:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L28
.L29:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r0, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r2, r2, r3
	mov	r3, #0
	sub	r3, r3, #828
	mov	r2, r2, asl #2
	sub	r1, fp, #12
	add	r2, r2, r1
	add	r3, r2, r3
	ldr	ip, [r3, #0]
	ldr	r3, [fp, #-32]
	mvn	r2, #227
	mov	r3, r3, asl #2
	sub	lr, fp, #12
	add	r3, r3, lr
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-28]
	mov	r3, #-1795162112
	mov	r3, r3, asr #22
	mov	r2, r2, asl #2
	sub	lr, fp, #12
	add	r2, r2, lr
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	mul	r3, r1, r3
	add	r1, ip, r3
	mov	r3, #0
	sub	r3, r3, #828
	mov	r2, r0, asl #2
	sub	r0, fp, #12
	add	r2, r2, r0
	add	r3, r2, r3
	str	r1, [r3, #0]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L28:
	ldr	r3, [fp, #-28]
	cmp	r3, #49
	ble	.L29
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L26:
	ldr	r3, [fp, #-32]
	cmp	r3, #49
	ble	.L27
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L32
.L33:
	ldr	r2, [fp, #-32]
	mvn	r3, #1216
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
.L32:
	ldr	r3, [fp, #-32]
	cmp	r3, #99
	ble	.L33
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #99
	str	r3, [fp, #-32]
	b	.L35
.L36:
	ldr	r3, [fp, #-32]
	rsb	r2, r3, #99
	mov	r3, #0
	sub	r3, r3, #828
	mov	r2, r2, asl #2
	sub	lr, fp, #12
	add	r2, r2, lr
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-16]
	ldr	r3, .L45+8
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r3, r3, r2
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-16]
	ldr	r3, .L45+8
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
	mvn	r3, #1216
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
.L35:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bge	.L36
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L38
.L39:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L38:
	ldr	r2, [fp, #-28]
	mvn	r3, #1216
	sub	r3, r3, #11
	mov	r2, r2, asl #2
	sub	r0, fp, #12
	add	r2, r2, r0
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L39
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-32]
	b	.L41
.L42:
	ldr	r2, [fp, #-32]
	mvn	r3, #1216
	sub	r3, r3, #11
	mov	r2, r2, asl #2
	sub	r1, fp, #12
	add	r2, r2, r1
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r0, .L45+12
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L41:
	ldr	r3, [fp, #-32]
	cmp	r3, #99
	ble	.L42
	mov	r0, #10
	bl	putchar
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L46:
	.align	2
.L45:
	.word	.LC0
	.word	.LC1
	.word	1717986919
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (GNU) 4.1.1"
