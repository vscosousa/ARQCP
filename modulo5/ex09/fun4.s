.section .data

.equ A_OFFSET, 0
.equ B_OFFSET, 8
.equ X_OFFSET, 16
.equ Z_OFFSET, 20
.equ C_OFFSET, 22
.equ Y_OFFSET, 24
.equ E_OFFSET, 28

.section .text
.global fun4

fun4:

	pushq %rbp				 
	movq %rsp, %rbp
	
	movq B_OFFSET(%rdi), %rdi
	movw 4(%rdi), %ax
	
	movq %rbp, %rsp			 
	popq %rbp				 
	ret
