	.file	"stack_frame.c"
	.text
	.p2align 4,,15
	.globl	swap
	.type	swap, @function
swap:
.LFB0:
	.cfi_startproc
	movq	(%rdi), %rax
	movq	(%rsi), %rdx
	movq	%rdx, (%rdi)
	movq	%rax, (%rsi)
	ret
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.p2align 4,,15
	.globl	swap_ele_su
	.type	swap_ele_su, @function
swap_ele_su:
.LFB1:
	.cfi_startproc
	movslq	%esi, %rsi
	leaq	8(,%rsi,8), %rax
	leaq	-8(%rdi,%rax), %rcx
	leaq	(%rdi,%rax), %rdx
	movq	(%rcx), %rsi
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	%rsi, (%rdx)
	addq	%rax, sum(%rip)
	ret
	.cfi_endproc
.LFE1:
	.size	swap_ele_su, .-swap_ele_su
	.globl	sum
	.bss
	.align 8
	.type	sum, @object
	.size	sum, 8
sum:
	.zero	8
	.ident	"GCC: (Uos 8.3.0.3-3+rebuild) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
