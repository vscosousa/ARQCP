.section .data
.equ GRADES_OFFSET, 4

.section .text
.global update_grades

update_grades:

	pushq %rbp				 
	movq %rsp, %rbp
	movl $5, %ecx
		
	addq $GRADES_OFFSET, %rdi
	loop:
		
		movl (%rsi), %eax
		movl %eax, (%rdi)
		addq $4, %rdi
		addq $4, %rsi
		loop loop
		
	end:
	movq %rbp, %rsp			 
	popq %rbp				 
	ret
