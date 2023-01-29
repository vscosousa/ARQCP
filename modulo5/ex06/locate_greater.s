.section .data
.equ GRADES_OFFSET, 4

.section .text
.global locate_greater

locate_greater:

	pushq %rbp				 
	movq %rsp, %rbp
	movq $0, %rcx
	movl $0, %eax
		
	addq $GRADES_OFFSET, %rdi
	loop:
	
	cmpq $5, %rcx
	je end
	movl (%rdi ,%rcx, 4), %r8d
	cmpl %esi,%r8d
	jle next_element
	incq %rax
	movl %r8d, (%rdx)
	addq $4, %rdx

	next_element:
	
	incq %rcx
	jmp loop
	
	end:
	movq %rbp, %rsp			 
	popq %rbp				 
	ret
