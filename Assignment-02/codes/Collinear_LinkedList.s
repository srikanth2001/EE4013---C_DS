	.file	"Collinear_LinkedList.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	createMat
	.type	createMat, @function
createMat:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -72(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-56(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$2, -52(%rbp)
	jmp	.L2
.L3:
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-56(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	addl	$1, -52(%rbp)
.L2:
	movl	-76(%rbp), %eax
	imull	-80(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L3
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L4
.L7:
	movl	$0, -44(%rbp)
	jmp	.L5
.L6:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	addl	$1, -44(%rbp)
.L5:
	movl	-44(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L6
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	addl	$1, -48(%rbp)
.L4:
	movl	-48(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L7
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L8
.L11:
	movl	$0, -36(%rbp)
	jmp	.L9
.L10:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	addl	$1, -36(%rbp)
.L9:
	movl	-80(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L10
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	addl	$1, -40(%rbp)
.L8:
	movl	-40(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L11
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	createMat, .-createMat
	.section	.rodata
.LC2:
	.string	"Points are not collinear "
.LC3:
	.string	"Points are Collinear "
	.text
	.globl	checkCollinear
	.type	checkCollinear, @function
checkCollinear:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L15
.L33:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L16
.L18:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	addl	$1, -36(%rbp)
.L16:
	movl	-36(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.L17
	pxor	%xmm0, %xmm0
	ucomiss	-44(%rbp), %xmm0
	jp	.L17
	pxor	%xmm0, %xmm0
	ucomiss	-44(%rbp), %xmm0
	je	.L18
.L17:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L20
.L22:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	addl	$1, -36(%rbp)
.L20:
	movl	-36(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.L21
	pxor	%xmm0, %xmm0
	ucomiss	-40(%rbp), %xmm0
	jp	.L21
	pxor	%xmm0, %xmm0
	ucomiss	-40(%rbp), %xmm0
	je	.L22
.L21:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-44(%rbp), %xmm0
	jp	.L34
	pxor	%xmm0, %xmm0
	ucomiss	-44(%rbp), %xmm0
	je	.L24
.L34:
	pxor	%xmm0, %xmm0
	ucomiss	-40(%rbp), %xmm0
	jp	.L35
	pxor	%xmm0, %xmm0
	ucomiss	-40(%rbp), %xmm0
	je	.L24
.L35:
	movss	-40(%rbp), %xmm0
	divss	-44(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L27
.L31:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-28(%rbp), %xmm0
	mulss	-44(%rbp), %xmm0
	ucomiss	-40(%rbp), %xmm0
	jp	.L36
	ucomiss	-40(%rbp), %xmm0
	je	.L37
.L36:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L14
.L37:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	addl	$1, -32(%rbp)
.L27:
	movl	-32(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L31
.L24:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L15:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L33
.L32:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	nop
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	checkCollinear, .-checkCollinear
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	createMat
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	checkCollinear
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
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
