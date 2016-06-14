	.file	"t.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 44
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #44
	mov	r3, #999424
	add	r3, r3, #576
	str	r3, [fp, #-16]
	b	.L2
.L3:
	ldr	r3, [fp, #-16]
	sub	r2, r3, #999424
	sub	r2, r2, #576
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-16]
	mul	r0, r3, r1
	mvn	r1, #43
	mov	r3, r2, asl #2
	sub	r2, fp, #12
	add	r3, r3, r2
	add	r3, r3, r1
	str	r0, [r3, #0]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r2, [fp, #-16]
	mov	r3, #999424
	add	r3, r3, #584
	add	r3, r3, #1
	cmp	r2, r3
	ble	.L3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 4.1.1"
