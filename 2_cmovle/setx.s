	.file	"setx.c"
	.text
	.p2align 4,,15
	.globl	gt
	.type	gt, @function
gt:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	cmpl	%eax, 8(%ebp)
	setg	%al
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	gt, .-gt
	.ident	"GCC: (Uos 8.3.0.3-3+rebuild) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
