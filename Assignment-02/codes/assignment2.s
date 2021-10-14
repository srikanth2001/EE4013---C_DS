	.file	"assignment2.c"
	.text
	.section	.rodata
.LC0:
	.string	"Yes this points are collinear"
.LC1:
	.string	"No"
	.text
	.globl	collinear
	.type	collinear, @function
collinear:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	-32(%rbp), %eax
	subl	-40(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-40(%rbp), %eax
	subl	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	subl	-32(%rbp), %eax
	imull	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L2
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L4
.L2:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L4:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	collinear, .-collinear
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$3, -24(%rbp)
	movl	$-2, -20(%rbp)
	movl	$8, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$-2, -8(%rbp)
	movl	$2, -4(%rbp)
	movl	-4(%rbp), %r8d
	movl	-16(%rbp), %edi
	movl	-8(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-12(%rbp), %esi
	movl	-24(%rbp), %eax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %edi
	call	collinear
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
