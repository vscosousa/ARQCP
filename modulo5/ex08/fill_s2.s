.section .data
.equ C_OFFSET, 0
.equ W_OFFSET, 4
.equ J_OFFSET, 12

.section .text
.global fill_s2

fill_s2:

	pushq %rbp				 
	movq %rsp, %rbp
	
	movq $3, %r8
	movq %rdi, %r9
	
	loop1:
		
		cmpq $0, %r8
		je change_datatype
		movb (%rcx), %al
		movb %al, (%rdi)
		incq %rdi
		incq %rcx
		decq %r8
		jmp loop1
		
	change_datatype:
		
		movq %r9, %rdi
		addq $W_OFFSET, %rdi
		
	loop3:
	
		cmpq $3, %r8
		je end
		movw (%rsi), %ax
		movw %ax, (%rdi)
		addq $2,%rdi
		addq $2,%rsi
		incq %r8
		jmp loop3
		
		
	end:
	movq %r9, %rdi
	movl %edx, J_OFFSET(%rdi)
	movq %rbp, %rsp			 
	popq %rbp				 
	ret
