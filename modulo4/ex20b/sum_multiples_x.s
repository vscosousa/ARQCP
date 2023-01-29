.section .data

.section .text
.global sum_multiples_x

sum_multiples_x:

	shrl $8,%esi
	movl $0,%ecx
	cmpb $0, %sil
	je end
	
loop:

	cmpb $0,(%rdi)
	je end
	
	movw (%rdi),%ax	
	cbw	
	idiv %sil
	
	cmpb $0,%ah
	jne next				
	addb (%rdi),%cl
next:
	incq %rdi
	jmp loop
	
end:
	movl %ecx,%eax
	ret
