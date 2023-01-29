.section .data
.equ C_OFFSET, 0
.equ I_OFFSET, 4
.equ D_OFFSET, 8
.equ J_OFFSET, 12

.section .text
.global fill_s1

fill_s1:

	pushq %rbp				 
	movq %rsp, %rbp
	
	movb %dl,C_OFFSET(%rdi)
	movl %esi,I_OFFSET(%rdi)
	movb %r8b,D_OFFSET(%rdi)
	movl %ecx,J_OFFSET(%rdi)
		
	movq %rbp, %rsp			 
	popq %rbp				 
	ret
