	.file	"memory_layout.c"
	.text
	.comm	big_array,16777216,32
	.comm	huge_array,268435456,32
	.comm	beyond,4,4
	.comm	p1,8,8
	.comm	p2,8,8
	.comm	p3,8,8
	.comm	p4,8,8
	.globl	useless
	.type	useless, @function
useless:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	useless, .-useless
	.section	.rodata
.LC0:
	.string	"big_array: %p\n"
.LC1:
	.string	"huge_array: %p\n"
.LC2:
	.string	"p1: %p\n"
.LC3:
	.string	"p2: %p\n"
.LC4:
	.string	"p3: %p\n"
.LC5:
	.string	"p4: %p\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$268435456, %edi
	call	malloc
	movq	%rax, p1(%rip)
	movl	$256, %edi
	call	malloc
	movq	%rax, p2(%rip)
	movl	$268435456, %edi
	call	malloc
	movq	%rax, p3(%rip)
	movl	$256, %edi
	call	malloc
	movq	%rax, p4(%rip)
	movl	$big_array, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$huge_array, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movq	p1(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movq	p2(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movq	p3(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movq	p4(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Uos 8.3.0.3-3+rebuild) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
