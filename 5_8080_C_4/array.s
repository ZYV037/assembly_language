	.file	"array.c"
	.text
	.p2align 4,,15
	.globl	zincr
	.type	zincr, @function
zincr:
.LFB0:
	.cfi_startproc
	leaq	20(%rdi), %rax
.L2:
	addl	$1, (%rdi)
	addq	$4, %rdi
	cmpq	%rax, %rdi
	jne	.L2
	ret
	.cfi_endproc
.LFE0:
	.size	zincr, .-zincr
	.globl	ucb
	.data
	.align 16
	.type	ucb, @object
	.size	ucb, 20
ucb:
	.long	9
	.long	4
	.long	7
	.long	2
	.long	0
	.globl	mit
	.align 16
	.type	mit, @object
	.size	mit, 20
mit:
	.long	0
	.long	2
	.long	1
	.long	3
	.long	9
	.globl	cmu
	.align 16
	.type	cmu, @object
	.size	cmu, 20
cmu:
	.long	1
	.long	5
	.long	2
	.long	1
	.long	3
	.ident	"GCC: (Uos 8.3.0.3-3+rebuild) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
