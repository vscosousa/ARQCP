.section .data
.equ ADDRESS_OFFSET, 84

.section .text
.global update_address

update_address:

	pushq %rbp				 
	movq %rsp, %rbp
	
	addq $ADDRESS_OFFSET, %rdi
	loop:
		
		movb (%rsi), %al
		cmpb $0, %al
		je end
		movb %al, (%rdi)
		incq %rdi
		incq %rsi
		jmp loop
		
		
	end:
	movb $0, (%rdi)
	movq %rbp, %rsp			 
	popq %rbp				 
	ret
