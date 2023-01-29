.section .data

.equ A_OFFSET, 0
.equ B_OFFSET, 8
.equ X_OFFSET, 16
.equ Z_OFFSET, 20
.equ C_OFFSET, 22
.equ Y_OFFSET, 24
.equ E_OFFSET, 28

.section .text
.global fun3

fun3:

	pushq %rbp				 
	movq %rsp, %rbp
	
	addq $Z_OFFSET, %rdi
	movq %rdi, %rax
	
	movq %rbp, %rsp			 
	popq %rbp				 
	ret
