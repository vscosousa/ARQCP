.section .data


.section .text
.global count_odd

count_odd:

	movl %esi, %ecx
	movw $2, %r8w
	movq $0, %r9
	cmpl $0, %ecx
	je end
	
loop:

	movsbw (%rdi), %ax
	cwd
	idivw %r8w
	cmpw $0, %dx
	jne odd
	incq %rdi
	loop loop
	jmp end
	
odd: 
	
	incq %r9
	incq %rdi
	loop loop

end:

	movq %r9, %rax
	ret
	
	
	
	


