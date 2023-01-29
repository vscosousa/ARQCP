.section .data

.section .text
.global add_byte

add_byte:
	
	pushq %rbp
	movq %rsp, %rbp
	movl (%rsi), %ecx
	movl %ecx, (%rdx)
	addq $4, %rsi
	addq $4, %rdx
	cmpl $0, %ecx
	je end
	
loop:
	
	movl (%rsi), %eax
	addb %dil, %al
	movl %eax, (%rdx)
	addq $4, %rsi
	addq $4, %rdx
	loop loop

end:		

	movq %rbp, %rsp
	popq %rbp
	ret
