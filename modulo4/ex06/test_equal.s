.section .data


.section .text
.global test_equal

test_equal:

	movq $1, %rax

loop:
	
	movb (%rdi), %cl
	movb (%rsi), %dl
	cmpb $0, %cl
	je second_comp
	cmpb %cl, %dl
	je igual
	
not_equal:

	decq %rax
	jmp end
	
igual:
	
	incq %rdi
	incq %rsi
	jmp loop
	
second_comp:

	cmpb $0, %dl
	jne not_equal

end:
	ret
	
	
	
	


