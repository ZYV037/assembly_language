	.file	"swap_3.c"
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
	.globl	swap_ele_se
	.type	swap_ele_se, @function
swap_ele_se:
.LFB1:
	.cfi_startproc
	movslq	%esi, %rsi
	leaq	8(,%rsi,8), %rdx
	leaq	(%rdi,%rdx), %rax
	leaq	-8(%rdi,%rdx), %rdx
	movq	(%rdx), %rcx
	movq	(%rax), %rsi
	movq	%rsi, (%rdx)
	movq	%rcx, (%rax)
	addq	$1, scount(%rip)
	ret
	.cfi_endproc
.LFE1:
	.size	swap_ele_se, .-swap_ele_se
	.globl	scount
	.bss
	.align 8
	.type	scount, @object
	.size	scount, 8
scount:
	.zero	8
	.ident	"GCC: (Uos 8.3.0.3-3+rebuild) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
