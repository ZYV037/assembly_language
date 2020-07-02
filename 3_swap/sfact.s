	.file	"sfact.c"
	.text
	.p2align 4,,15
	.globl	s_helper
	.type	s_helper, @function
s_helper:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	cmpl	$1, %eax
	jle	.L1
	movl	(%ecx), %edx
	.p2align 4,,10
	.p2align 3
.L3:
	imull	%eax, %edx
	subl	$1, %eax
	cmpl	$1, %eax
	jne	.L3
	movl	%edx, (%ecx)
.L1:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	s_helper, .-s_helper
	.p2align 4,,15
	.globl	sfact
	.type	sfact, @function
sfact:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$1, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %edx
	cmpl	$1, %edx
	jle	.L8
	.p2align 4,,10
	.p2align 3
.L10:
	imull	%edx, %eax
	subl	$1, %edx
	cmpl	$1, %edx
	jne	.L10
.L8:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	sfact, .-sfact
	.ident	"GCC: (Uos 8.3.0.3-3+rebuild) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
