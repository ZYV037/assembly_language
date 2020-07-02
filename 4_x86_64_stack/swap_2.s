	.file	"swap_2.c"
	.text
	.p2align 4,,15
	.globl	swap_a
	.type	swap_a, @function
swap_a:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	(%rdi), %rax
	movq	%rax, -16(%rbp)
	movq	(%rsi), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movq	%rax, (%rsi)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	swap_a, .-swap_a
	.ident	"GCC: (Uos 8.3.0.3-3+rebuild) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
