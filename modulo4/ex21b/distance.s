.section .data


.section .text
.global distance


distance:
	
movl $0, %eax

loop:

	movb (%rdi), %cl
	movb (%rsi), %dl
	cmpb $0, %cl
	je second_comparison
	
	cmpb %cl, %dl
	je equal
	incl %eax
	
equal:
	incq  %rdi			
	incq  %rsi			
	jmp loop			
	
second_comparison:
	
	cmpb $0, %dl
	je end
	movl $-1, %eax

end:
	ret
	
	
	
	


